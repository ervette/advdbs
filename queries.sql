/* 1 + */ 
SELECT e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name
FROM employees e
WHERE e.name.first_name LIKE '%mi%'
AND e.address.city = 'London';

/* 2 + */
SELECT b.street || ', ' || b.city || ', ' || b.postcode AS branch_address,
       COUNT(*) AS num_savings_accounts
FROM branches b
JOIN accounts a ON b.branch_id = DEREF(a.branch_id).branch_id
WHERE a.acc_type = 'Savings'
GROUP BY b.street, b.city, b.postcode;

/* 3 + */
SELECT 
    DEREF(a.branch_id).branch_id AS "Branch-ID", 
    c.name.first_name || ' ' || c.name.last_name AS "Customer Full Name",
    a.balance AS "Lowest Balance"
FROM 
    accounts a
JOIN 
    customer_account ca ON ca.acc_number = REF(a)
JOIN 
    customers c ON ca.customer_id = REF(c)
WHERE 
    a.acc_type = 'Savings'
    AND a.balance = (
        SELECT MIN(a2.balance) 
        FROM accounts a2 
        WHERE a2.acc_type = 'Savings'
        AND DEREF(a2.branch_id).branch_id = DEREF(a.branch_id).branch_id
    );


/* 4 + */
SELECT e.address.street || ', ' || e.address.city || ', ' || e.address.postcode AS employee_branch_address,
       b.street || ', ' || b.city || ', ' || b.postcode AS account_branch_address
FROM employees e
JOIN accounts a ON DEREF(a.branch_id).branch_id = DEREF(e.branch_id).branch_id
JOIN branches b ON DEREF(a.branch_id).branch_id = b.branch_id
WHERE e.supervisor_id IS NOT NULL;

/* 5 */
SELECT 
    b.branch_id,
    c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
    MAX(a.limit_of_free_od) AS max_free_overdraft_limit
FROM 
    branches b
JOIN 
    accounts a ON DEREF(a.branch_id).branch_id = b.branch_id
JOIN 
    customer_account ca ON DEREF(ca.acc_number).acc_number = a.acc_number
JOIN 
    customers c ON ca.customer_id = REF(c)
WHERE 
    a.acc_type = 'Current'
    AND a.limit_of_free_od > 0
    AND a.acc_number IN (
        SELECT a2.acc_number
        FROM accounts a2
        WHERE a2.acc_type = 'Current'
        GROUP BY a2.acc_number
        HAVING COUNT(*) > 1
    )
GROUP BY 
    b.branch_id, c.name.title, c.name.first_name, c.name.last_name
ORDER BY 
    b.branch_id;


/* 6 +- most of the numbers are pretty much the same
therefore all of the employees are included */
SELECT c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
       ph.device_type,
       ph.phone_number
FROM customers c,
     TABLE(c.phone) ph
WHERE c.customer_id IN (
    SELECT c.customer_id
    FROM customers c,
         TABLE(c.phone) ph
    GROUP BY c.customer_id
    HAVING COUNT(*) > 1
       AND SUM(CASE WHEN SUBSTR(ph.phone_number, 1, 5) = '07701' THEN 1 ELSE 0 END) >= 1
);

/* 7 + */

SELECT COUNT(*) AS answer
FROM employees e
JOIN employees supervisor ON e.supervisor_id = supervisor.emp_id
JOIN employees grand_supervisor ON supervisor.supervisor_id = grand_supervisor.emp_id
WHERE supervisor.name.title = 'Mrs' AND supervisor.name.last_name = 'Johnson'
WHERE grand_supervisor.name.title = 'Mrs' AND grand_supervisor.name.last_name = 'Anderson';

/* Note there is no mr Barclay nor mrs Smith */

SELECT COUNT(*) AS num_employees
FROM employees e
WHERE DEREF(e.supervisor_id).emp_id IN (
    SELECT emp_id
    FROM employees
    WHERE DEREF(supervisor_id).emp_id = (
        SELECT emp_id
        FROM employees
        WHERE DEREF(supervisor_id).emp_id = (
            SELECT emp_id
            FROM employees
            WHERE DEREF(supervisor_id).name.last_name = 'Johnson'
            AND DEREF(supervisor_id).name.title = 'Mrs'
        )
        AND DEREF(supervisor_id).name.last_name = 'Anderson'
        AND DEREF(supervisor_id).name.title = 'Mrs'
    )
);

/* 8 + */
SELECT 
    e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name,
    e.award_stars() AS stars_awarded
FROM 
    employees e;
