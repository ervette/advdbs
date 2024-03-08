/* types initialisation */

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


CREATE TYPE phone_type AS OBJECT (
    phone_type VARCHAR2(20), 
    phone_number VARCHAR2(20))
    FINAL; 
/

CREATE TYPE phones_collection AS TABLE OF phone_type;
/

CREATE TYPE person AS OBJECT(
    name full_name,
    address address_type,
    phone phones_collection, 
    ni_num VARCHAR2(10))
    NOT FINAL; 
/   

/* --------------------------------------- */
/* branch subtype initialisation to allow reference to account type */

CREATE TYPE branch_sub UNDER address_type (
    branch_id VARCHAR2(5), 
    phone phones_collection)
    FINAL; 
/ 

/* --------------------------------------- */

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

/* subtypes initialisation */ 

CREATE TYPE employee_sub UNDER person (
    emp_id VARCHAR2(5),
    branch_id REF branch_sub, 
    emp_position REF employee_data,
    supervisor_id REF employee_sub,
    join_date DATE)
    FINAL;
/    

CREATE TYPE customer_sub UNDER person (
    customer_id VARCHAR2(6))
    FINAL;
/

/* tables initialisation */

CREATE TABLE branches OF branch_sub (
    CONSTRAINT branch_id_pk PRIMARY KEY(branch_id), 
    CONSTRAINT city_not_null CHECK(city IS NOT NULL),  
    CONSTRAINT street_not_null CHECK(street IS NOT NULL), 
    CONSTRAINT postcode_not_null CHECK(postcode IS NOT NULL),
    CONSTRAINT phone_not_null CHECK(phone IS NOT NULL))
    NESTED TABLE phone STORE AS branch_collection_table; 

CREATE TABLE employees OF employee_sub (
    CONSTRAINT emp_id_pk PRIMARY KEY (emp_id),
    CONSTRAINT position_not_null CHECK (emp_position IS NOT NULL),
    CONSTRAINT first_name_not_null CHECK (name.first_name IS NOT NULL), /* name */
    CONSTRAINT last_name_not_null CHECK (name.last_name IS NOT NULL), /* name */
    CONSTRAINT city_not_null CHECK(city IS NOT NULL), /* address */
    CONSTRAINT street_not_null CHECK(street IS NOT NULL), /* address */
    CONSTRAINT postcode_not_null CHECK(postcode IS NOT NULL), /* address */
    CONSTRAINT phone_not_null CHECK (phone IS NOT NULL), 
    CONSTRAINT join_date_not_null CHECK (join_date IS NOT NULL),
    CONSTRAINT branch_id_not_null CHECK(branch_id IS NOT NULL), 
    CONSTRAINT ni_num_unique UNIQUE (ni_num))
    NESTED TABLE phone STORE AS emp_phone_collection; 

CREATE TABLE customers OF customer_sub (
    CONSTRAINT customer_id_pk PRIMARY KEY(customer_id), 
    CONSTRAINT first_name_not_null CHECK (name.first_name IS NOT NULL), /* name */
    CONSTRAINT last_name_not_null CHECK (name.last_name IS NOT NULL), /* name */
    CONSTRAINT city_not_null CHECK(city IS NOT NULL), /* address */
    CONSTRAINT street_not_null CHECK(street IS NOT NULL), /* address */
    CONSTRAINT postcode_not_null CHECK(postcode IS NOT NULL), /* address */
    CONSTRAINT ni_num_unique UNIQUE (ni_num),
    CONSTRAINT ni_num_not_null CHECK(ni_num IS NOT NULL))
    NESTED TABLE phone STORE AS customer_phone_collection; 

CREATE TABLE accounts OF account (
    CONSTRAINT acc_number_pk PRIMARY KEY(acc_number), 
    CONSTRAINT acc_type_not_null CHECK(acc_type IS NOT NULL), 
    CONSTRAINT branch_id_not_null CHECK (branch_id IS NOT NULL), 
    CONSTRAINT open_date_not_null CHECK (open_date IS NOT NULL));

CREATE TABLE employees_data OF employee_data(
    CONSTRAINT employee_data_id_pk PRIMARY KEY (employee_data_id), 
    CONSTRAINT job_title_const CHECK (job_title IS NOT NULL),
    CONSTRAINT salary_const CHECK (salary IS NOT NULL)); 

CREATE TABLE customer_account (
    customer_id REF customer_sub SCOPE IS customers, 
    acc_number REF account SCOPE IS accounts); 
    
    
SHOW ERROR;

/* functions initialisation*/

ALTER TYPE employee_sub
ADD MEMBER FUNCTION award_stars RETURN VARCHAR2;

CREATE OR REPLACE TYPE BODY employee_sub AS 
member function award_stars return varchar2 is 
    medal varchar2(20);  
    years number;
    employees_stars number;
begin
    select count(*)
    into   employees_stars
    from   employees e
    where  Deref(e.supervisor_ID).emp_ID = self.emp_ID;
    
    years := trunc(months_between(sysDate,self.join_Date))/12;
    
    if years > 10 AND employees_stars > 10 then
        medal := 'Gold Medal';
    elsif years > 8 AND employees_stars > 6 then
        medal := 'Silver Medal';
    elsif years > 4 then
        medal := 'Bronze Medal';
    else
        medal := 'No Medal Awarded';
    end if;        
    return medal;
end award_stars;
end;
/

ALTER TYPE person
ADD MEMBER FUNCTION get_name RETURN STRING,
ADD MEMBER FUNCTION get_address RETURN STRING CASCADE; 
/

CREATE OR REPLACE TYPE BODY person AS 
MEMBER FUNCTION get_name RETURN STRING IS 
    BEGIN
        RETURN name.title || '. ' || name.firstname || ' ' || name.surname;
    END get_name; 

MEMBER FUNCTION get_address RETURN STRING IS 
    BEGIN
        RETURN address.street || ', ' || address.city || ', ' || address.postcode;
    END get_address; 
END; 
/ 

ALTER TYPE branch_sub
ADD MEMBER FUNCTION get_address RETURN STRING CASCADE; 
/

CREATE OR REPLACE TYPE BODY branch_sub AS
MEMBER FUNCTION get_address RETURN STRING IS 
    BEGIN
        RETURN self.street || ', ' || self.city || ', ' || self.postcode;
    END get_address; 
END; 
/ 

SHOW ERROR;

   