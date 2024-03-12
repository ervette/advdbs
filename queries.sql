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
        SELECT MIN(ac.balance) 
        FROM accounts ac 
        WHERE ac.acc_type = 'Savings'
        AND DEREF(ac.branch_id).branch_id = DEREF(a.branch_id).branch_id
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
    DEREF(c.customer_ref).full_name AS full_name, 
    a.limit_of_free_od AS max_free_overdraft_limit
FROM 
    accounts a, 
    branches b, 
    customers c
WHERE 
    a.acc_type = 'Current'
    AND a.branch_id = REF(b)
    AND a.customer_id = REF(c)
GROUP BY 
    b.branch_id, c.customer_id
HAVING 
    a.limit_of_free_od = MAX(a.limit_of_free_od) OVER (PARTITION BY b.branch_id);




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
       AND SUM(CASE WHEN SUBSTR(ph.phone_number, 1, 4) = '0770' THEN 1 ELSE 0 END) >= 1
);

/* 7 + */

SELECT COUNT(*) AS answer
FROM employees e, employees es
WHERE DEREF(e.supervisor_id).name.title = 'Mrs' 
AND DEREF(e.supervisor_id).name.last_name = 'Johnson'
AND DEREF(es.supervisor_id).name.title = 'Dr' 
AND DEREF(es.supervisor_id).name.last_name = 'Brown';

/* 8 + */
SELECT 
    e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name,
    e.award_stars() AS stars_awarded
FROM 
    employees e;
