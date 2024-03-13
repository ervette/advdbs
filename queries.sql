/* 1 + */ 
SELECT e.get_person_name() AS name
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

SELECT b.get_branch_address() AS branch_address,
       COUNT(*) AS num_savings_accounts
FROM branches b
JOIN accounts a ON b.branch_id = DEREF(a.branch_id).branch_id
WHERE a.acc_type = 'Savings'
GROUP BY b.get_branch_address();

/* 3 + */
SELECT 
    DEREF(a.branch_id).branch_id AS branch_id, 
    c.get_person_name() as name,
    a.balance AS lowest_balance
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
SELECT e.get_person_address() AS employee_branch_address,
       b.get_branch_address() AS account_branch_address
FROM employees e
JOIN accounts a ON DEREF(a.branch_id).branch_id = DEREF(e.branch_id).branch_id
JOIN branches b ON DEREF(a.branch_id).branch_id = b.branch_id
WHERE e.supervisor_id IS NOT NULL;

/* 5 + */
SELECT
DEREF(a.branch_id).branch_id AS branch_id,
c.get_person_name() AS name,
a.limit_of_free_od AS Max_OD
FROM
accounts a
JOIN
customer_account ca ON ca.acc_number = REF(a)
JOIN
customers c ON ca.customer_id = REF(c)
WHERE
a.acc_type = 'Current'
AND a.limit_of_free_od = (
SELECT MAX(ac.limit_of_free_od)
FROM accounts ac
WHERE ac.branch_id = a.branch_id
AND ac.acc_type = 'Current'
)
ORDER BY a.branch_id;


/* 6 +- most of the numbers are pretty much the same
therefore all of the employees are included */
SELECT c.get_person_name() AS name,
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
    e.get_person_name() AS name,
    e.award_stars() AS star
FROM 
    employees e;
