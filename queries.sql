/* 1 + note: There is no London branch therefore just any branch */ 
SELECT e.name.title || '. ' || e.name.first_name || ' ' || e.name.last_name AS full_name
FROM employees e
WHERE e.name.first_name LIKE '%mi%'
AND e.address.city = ‘Madrid’;

/* 2 + */
SELECT b.street || ', ' || b.city || ', ' || b.postcode AS branch_address,
       COUNT(*) AS num_savings_accounts
FROM branches b
JOIN accounts a ON b.branch_id = DEREF(a.branch_id).branch_id
WHERE a.acc_type = 'Savings'
GROUP BY b.street, b.city, b.postcode;

/* 3 */
SELECT 
    branch_id AS "Branch-ID", 
    (SELECT c.name.first_name || ' ' || c.name.last_name
     FROM customers c 
     JOIN customer_account ca ON ca.customer_id = REF(c)
     WHERE ca.acc_number = REF(a) AND ROWNUM = 1) AS "Customer Full Name",
    MIN(a.balance) AS "Lowest Balance"
FROM accounts a
WHERE a.acc_type = 'Savings'
GROUP BY branch_id, a.acc_number
ORDER BY "Lowest Balance" ASC
FETCH FIRST 1 ROW WITH TIES;

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
       ph.device_type,
       ph.phone_number
FROM customers c,
     TABLE(c.customer_phone_collection) ph
WHERE c.customer_id IN (
    SELECT c.customer_id
    FROM customers c,
         TABLE(c.customer_phone_collection) ph
    GROUP BY c.customer_id
    HAVING COUNT(*) > 1
       AND SUM(CASE WHEN SUBSTR(ph.phone_number, 1, 4) = '0750' THEN 1 ELSE 0 END) >= 1
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
