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
SELECT b.branch_id,
       c.name.title || '. ' || c.name.first_name || ' ' || c.name.last_name AS full_name,
       a.balance AS min_savings_balance
FROM branches b
JOIN accounts a ON DEREF(a.branch_id).branch_id = b.branch_id
JOIN customers c ON DEREF(c).customer_id = DEREF(a.customer_id).customer_id
WHERE a.acc_type = 'Savings'
AND a.balance = (
    SELECT MIN(balance)
    FROM accounts a2
    WHERE a2.acc_type = 'Savings'
    AND DEREF(a2.branch_id).branch_id = b.branch_id
)
ORDER BY b.branch_id;

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
