/* Drop functions */
DROP FUNCTION get_branch_address;
DROP FUNCTION get_person_address;
DROP FUNCTION get_person_name;
DROP FUNCTION award_stars;

/* Drop tables */
DROP TABLE customer_account FORCE;
DROP TABLE accounts FORCE;
DROP TABLE customers FORCE;
DROP TABLE employees FORCE;
DROP TABLE employees_data FORCE;
DROP TABLE branches FORCE;

/* Drop types */
DROP TYPE customer_sub FORCE;
DROP TYPE employee_sub FORCE;
DROP TYPE account FORCE;
DROP TYPE branch_sub FORCE;
DROP TYPE person FORCE;
DROP TYPE phones_collection FORCE;
DROP TYPE phone_type FORCE;
DROP TYPE address_type FORCE;
DROP TYPE full_name FORCE;
DROP TYPE employee_data FORCE;

/* Types initialization */

CREATE TYPE phone_type AS OBJECT (
    device_type VARCHAR2(20), 
    phone_number VARCHAR2(20))
    FINAL; 
/

CREATE TYPE phones_collection AS TABLE OF phone_type;
/

CREATE TYPE full_name AS OBJECT (
    title VARCHAR2(5), 
    first_name VARCHAR2(20), 
    last_name VARCHAR2(20))
    FINAL; 
/

CREATE TYPE address_type AS OBJECT (
    street VARCHAR2(20), 
    city VARCHAR2(20), 
    postcode VARCHAR2(10))
    NOT FINAL; 
/

/* Branch subtype initialization to allow reference to account type */
CREATE TYPE branch_sub UNDER address_type (
    branch_id VARCHAR2(5), 
    phone phones_collection)
    FINAL; 
/

CREATE TYPE person AS OBJECT(
    name full_name,
    address address_type,
    phone phones_collection, 
    ni_num VARCHAR2(10))
    NOT FINAL; 
/

CREATE TYPE account AS OBJECT (
    acc_number INT, 
    acc_type VARCHAR2(10), 
    balance INT,
    interest_rate VARCHAR2(5), 
    limit_of_free_od INT, 
    open_date DATE, 
    branch_id REF branch_sub)
    FINAL; 
/

CREATE TYPE employee_data AS OBJECT(
    employee_data_id VARCHAR2(5), 
    position VARCHAR2(20), 
    salary INTEGER)
    FINAL; 
/

/* Subtypes initialization */ 
CREATE TYPE employee_sub UNDER person (
    emp_id VARCHAR2(5),
    branch_id REF branch_sub, 
    emp_position REF employee_data,
    supervisor_id REF employee_sub,
    join_date DATE)
    FINAL;
/

CREATE TYPE customer_sub UNDER person (
    customer_id VARCHAR2(5))
    FINAL;
/

/* Tables initialization */
CREATE TABLE branches OF branch_sub (
    CONSTRAINT branch_id_pk PRIMARY KEY(branch_id), 
    CONSTRAINT branches_city_not_null CHECK(city IS NOT NULL),  
    CONSTRAINT branches_street_not_null CHECK(street IS NOT NULL), 
    CONSTRAINT branches_postcode_not_null CHECK(postcode IS NOT NULL),
    CONSTRAINT branches_phone_not_null CHECK(phone IS NOT NULL))
    NESTED TABLE phone STORE AS branch_collection_table; 

CREATE TABLE employees_data OF employee_data(
    CONSTRAINT employee_data_id_pk PRIMARY KEY (employee_data_id), 
    CONSTRAINT emp_data_position_not_null CHECK (position IS NOT NULL),
    CONSTRAINT emp_data_salary_not_null CHECK (salary IS NOT NULL)); 

CREATE TABLE employees OF employee_sub (
    CONSTRAINT emp_id_pk PRIMARY KEY (emp_id),
    CONSTRAINT emp_position_not_null CHECK (emp_position IS NOT NULL),
    CONSTRAINT emp_first_name_not_null CHECK (name.first_name IS NOT NULL), /* name */
    CONSTRAINT emp_last_name_not_null CHECK (name.last_name IS NOT NULL), /* name */
    CONSTRAINT emp_city_not_null CHECK(address.city IS NOT NULL), /* address */
    CONSTRAINT emp_street_not_null CHECK(address.street IS NOT NULL), /* address */
    CONSTRAINT emp_postcode_not_null CHECK(address.postcode IS NOT NULL), /* address */
    CONSTRAINT emp_phone_not_null CHECK (phone IS NOT NULL), 
    CONSTRAINT emp_join_date_not_null CHECK (join_date IS NOT NULL),
    CONSTRAINT emp_branch_id_not_null CHECK(branch_id IS NOT NULL), 
    CONSTRAINT emp_ni_num_unique UNIQUE (ni_num))
    NESTED TABLE phone STORE AS emp_phone_collection; 

CREATE TABLE customers OF customer_sub (
    CONSTRAINT cus_id_pk PRIMARY KEY(customer_id), 
    CONSTRAINT cus_first_name_not_null CHECK (name.first_name IS NOT NULL), /* name */
    CONSTRAINT cus_last_name_not_null CHECK (name.last_name IS NOT NULL), /* name */
    CONSTRAINT cus_city_not_null CHECK(address.city IS NOT NULL), /* address */
    CONSTRAINT cus_street_not_null CHECK(address.street IS NOT NULL), /* address */
    CONSTRAINT cus_postcode_not_null CHECK(address.postcode IS NOT NULL), /* address */
    CONSTRAINT cus_ni_num_unique UNIQUE (ni_num),
    CONSTRAINT cus_ni_num_not_null CHECK(ni_num IS NOT NULL))
    NESTED TABLE phone STORE AS cus_phone_collection; 

CREATE TABLE accounts OF account (
    CONSTRAINT acc_number_pk PRIMARY KEY(acc_number), 
    CONSTRAINT acc_type_not_null CHECK(acc_type IS NOT NULL), 
    CONSTRAINT acc_branch_id_not_null CHECK (branch_id IS NOT NULL), 
    CONSTRAINT acc_open_date_not_null CHECK (open_date IS NOT NULL));

CREATE TABLE customer_account (
    customer_id REF customer_sub SCOPE IS customers, 
    acc_number REF account SCOPE IS accounts); 

/* Functions initialization */
ALTER TYPE employee_sub
ADD MEMBER FUNCTION award_stars RETURN VARCHAR2 CASCADE;

CREATE OR REPLACE TYPE BODY employee_sub AS 
  MEMBER FUNCTION award_stars RETURN VARCHAR2 IS 
    medal VARCHAR2(20);  
    years NUMBER;
    employees_stars NUMBER;
  BEGIN
    SELECT COUNT(*)
    INTO employees_stars
    FROM employees e
    WHERE DEREF(e.supervisor_ID).emp_ID = self.emp_ID;
    
    years := TRUNC(MONTHS_BETWEEN(SYSDATE, self.join_Date)) / 12;
    
    IF years > 10 AND employees_stars > 10 THEN
      medal := 'Gold Medal';
    ELSIF years > 8 AND employees_stars > 6 THEN
      medal := 'Silver Medal';
    ELSIF years > 4 THEN
      medal := 'Bronze Medal';
    ELSE
      medal := 'No Medal Awarded';
    END IF;        
    RETURN medal;
  END award_stars;
END;
/

ALTER TYPE person
ADD MEMBER FUNCTION get_person_name RETURN VARCHAR2,
ADD MEMBER FUNCTION get_person_address RETURN VARCHAR2 CASCADE; 

CREATE OR REPLACE TYPE BODY person AS 
  MEMBER FUNCTION get_person_name RETURN VARCHAR2 IS 
  BEGIN
    RETURN name.title || '. ' || name.first_name || ' ' || name.last_name;
  END get_person_name; 

  MEMBER FUNCTION get_person_address RETURN VARCHAR2 IS 
  BEGIN
    RETURN address.street || ', ' || address.city || ', ' || address.postcode;
  END get_person_address; 
END;
/


ALTER TYPE branch_sub
ADD MEMBER FUNCTION get_branch_address RETURN VARCHAR2 CASCADE; 

CREATE OR REPLACE TYPE BODY branch_sub AS
  MEMBER FUNCTION get_branch_address RETURN VARCHAR2 IS
  BEGIN
      RETURN self.street || ', ' || self.city || ', ' || self.postcode;
  END get_branch_address;
END;
/
