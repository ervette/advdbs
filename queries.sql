/* 1 */
SELECT e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name
FROM employees e
WHERE e.name.first_name LIKE '%st%'
AND e.address.city = ‘London’;

/* 2 */
SELECT b.street || ', ' || b.city || ', ' || b.postcode AS branch_address,
       COUNT(*) AS num_savings_accounts
FROM branches b
JOIN accounts a ON b.branch_id = DEREF(a.branch_id).branch_id
WHERE a.acc_type = 'Savings'
GROUP BY b.street, b.city, b.postcode;

/* 3 */
SELECT 
    b.branch_id,
    c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
    MIN(a.balance) AS min_savings_balance
FROM 
    branches b
JOIN 
    accounts a ON DEREF(a.branch_id).branch_id = b.branch_id
JOIN 
    customer_account ca ON DEREF(ca.acc_number).acc_number = a.acc_number
JOIN 
    customers c ON DEREF(ca.customer_id).customer_id = c.customer_id
WHERE 
    a.acc_type = 'Savings'
GROUP BY 
    b.branch_id, c.name.title, c.name.first_name, c.name.last_name;



/* 4 */
SELECT e.address.street || ', ' || e.address.city || ', ' || e.address.postcode AS employee_branch_address,
       b.street || ', ' || b.city || ', ' || b.postcode AS account_branch_address
FROM employees e
JOIN accounts a ON DEREF(a.branch_id).branch_id = DEREF(e.branch_id).branch_id
JOIN branches b ON DEREF(a.branch_id).branch_id = b.branch_id
WHERE e.supervisor_id IS NOT NULL;

/* 5 */
SELECT b.branch_id,
       c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
       MAX(a.limit_of_free_od) AS max_free_overdraft_limit
FROM branches b
JOIN accounts a ON DEREF(a.branch_id).branch_id = b.branch_id
JOIN customer_account ca ON DEREF(ca.acc_number).acc_number = a.acc_number
JOIN customers c ON DEREF(ca.customer_id).customer_id = DEREF(c).customer_id
WHERE a.acc_type = 'Current'
AND a.limit_of_free_od > 0
AND a.acc_number IN (
    SELECT a2.acc_number
    FROM accounts a2
    WHERE a2.acc_type = 'Current'
    GROUP BY a2.acc_number
    HAVING COUNT(*) > 1
)
GROUP BY b.branch_id, c.name.title, c.name.first_name, c.name.last_name
ORDER BY b.branch_id;

/* 6 */
SELECT c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
       phone.phone_number AS mobile_number
FROM customers c
JOIN TABLE(c.phone) phone
ON phone.device_type = 'Mobile'
WHERE (
    SELECT COUNT(*) 
    FROM TABLE(c.phone) 
    WHERE device_type = 'Mobile'
) > 1
AND EXISTS (
    SELECT 1 
    FROM TABLE(c.phone) 
    WHERE device_type = 'Mobile' 
    AND phone_number LIKE '0750%'
);

SELECT c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
       p.device_type,
       p.phone_number
FROM customers c
JOIN TABLE(c.phone) p
ON c.customer_id = p.customer_id
WHERE c.customer_id IN (
    SELECT customer_id
    FROM (
        SELECT customer_id,
               COUNT(*) AS num_mobiles,
               SUM(CASE WHEN SUBSTR(phone_number, 1, 4) = '0750' THEN 1 ELSE 0 END) AS num_starting_0750
        FROM TABLE(c.phone)
        GROUP BY customer_id
        HAVING COUNT(*) > 1 AND SUM(CASE WHEN SUBSTR(phone_number, 1, 4) = '0750' THEN 1 ELSE 0 END) >= 1
    )
);


/* 7 */
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
            WHERE DEREF(supervisor_id).name.last_name = 'Barclay'
            AND DEREF(supervisor_id).name.title = 'Mr'
        )
        AND DEREF(supervisor_id).name.last_name = 'Smith'
        AND DEREF(supervisor_id).name.title = 'Mrs'
    )
);

/* 8 */
SELECT 
    e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name,
    e.award_stars() AS stars_awarded
FROM 
    employees e;