/* ----------------- */
/* populate branches */
/* ----------------- */
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Rose St.', 
    'Paris', 
    '75001', 
    'P753', 
    phones_collection(phone_type('Mobile','07081234567')));
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Portobello Rd.', 
    'Madrid', 
    '28001', 
    'M822', 
    phones_collection(phone_type('Mobile','07081234567')));   
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Rue de Rivoli', 
    'Paris', 
    '75004', 
    'P129', 
    phones_collection(phone_type('Mobile','07081234567'))); 
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Gran Via', 
    'Madrid', 
    '28013', 
    'M475', 
    phones_collection(phone_type('Mobile','07081234567')));     
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Calle de Alcala', 
    'Madrid', 
    '28009', 
    'M636', 
    phones_collection(phone_type('Mobile','07081234567')));   
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Via del Corso', 
    'Rome', 
    '00186', 
    'R901', 
    phones_collection(phone_type('Mobile','07081234567')));      
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Viale dei Trastevere', 
    'Rome', 
    '00153', 
    'R732', 
    phones_collection(phone_type('Mobile','07081234567'))); 
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Via Nazionale', 
    'Rome', 
    '00184', 
    'R500', 
    phones_collection(phone_type('Mobile','07081234567')));      
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Via Condotti', 
    'Rome', 
    '00187', 
    'R211', 
    phones_collection(phone_type('Mobile','07081234567')));         
    
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Calle de Goya', 
    'Madrid', 
    '28001', 
    'M333', 
    phones_collection(phone_type('Mobile','07081234567')));  
	
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Calle de la Princesa', 
    'Madrid', 
    '28008', 
    'M808', 
    phones_collection(phone_type('Mobile','07081234567')));  
	
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Calle de Fuencarral', 
    'Madrid', 
    '28004', 
    'M200', 
    phones_collection(phone_type('Mobile','07081234567')));  
	
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Carrer de Balmes', 
    'Barcelona', 
    '08007', 
    'B555', 
    phones_collection(phone_type('Mobile','07081234567')));  
	
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Carrer de Ferran', 
    'Barcelona', 
    '08002', 
    'B123', 
    phones_collection(phone_type('Mobile','07081234567')));  
	
INSERT INTO branches (street, city, postcode, branch_id, phone) VALUES( 
    'Passeig de Gracia', 
    'Barcelona', 
    '08008', 
    'B789', 
    phones_collection(phone_type('Mobile','07081234567')));  


/* ----------------- */
/* populate accounts */
/* ----------------- */
INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
    (
        12345678,
        'Current',
        450.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P753'
        ),
        '0.08',
        2000,
        '12-MAY-2018'
    ),
    (
        23456789,
        'Savings',
        700.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M822'
        ),
        '0.11',
        500,
        '25-JUN-2017'
    ),
    (
        34567890,
        'Current',
        1200.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P129'
        ),
        '0.05',
        1000,
        '03-APR-2016'
    ),
    (
        45678901,
        'Savings',
        850.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M475'
        ),
        '0.13',
        2000,
        '19-JUL-2019'
    ),
    (
        56789012,
        'Current',
        1600.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M636'
        ),
        '0.04',
        100,
        '08-SEP-2018'
    ),
    (
        67890123,
        'Savings',
        420.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R901'
        ),
        '0.15',
        500,
        '30-DEC-2017'
    ),
    (
        78901234,
        'Current',
        950.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R732'
        ),
        '0.09',
        2000,
        '14-MAR-2020'
    ),
    (
        89012345,
        'Savings',
        550.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R500'
        ),
        '0.03',
        1000,
        '22-NOV-2023'
    ),
    (
        90123456,
        'Current',
        2000.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M333'
        ),
        '0.07',
        500,
        '10-OCT-2016'
    ),
    (
        10234567,
        'Savings',
        870.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M808'
        ),
        '0.12',
        2000,
        '01-JAN-2019'
    ),
    (
        21345678,
        'Current',
        330.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M200'
        ),
        '0.06',
        100,
        '18-AUG-2017'
    ),
    (
        32456789,
        'Savings',
        1100.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B555'
        ),
        '0.14',
        1000,
        '07-MAY-2018'
    ),
    (
        43567890,
        'Current',
        640.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B123'
        ),
        '0.10',
        500,
        '29-JUN-2019'
    ),
    (
        54678901,
        'Savings',
        1800.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B789'
        ),
        '0.01',
        2000,
        '11-DEC-2016'
    ),
    (
        65789012,
        'Current',
        920.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P753'
        ),
        '0.08',
        100,
        '03-FEB-2020'
    ),
    (
        76890123,
        'Savings',
        770.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M822'
        ),
        '0.11',
        2000,
        '09-APR-2017'
    ),
    (
        87901234,
        'Current',
        1500.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P129'
        ),
        '0.05',
        500,
        '17-JUL-2018'
    ),
    (
        99012345,
        'Savings',
        630.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M475'
        ),
        '0.13',
        1000,
        '23-SEP-2019'
    ),
    (
        10123456,
        'Current',
        1750.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M636'
        ),
        '0.04',
        2000,
        '05-NOV-2021'
    ),
    (
        11234567,
        'Savings',
        820.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R901'
        ),
        '0.15',
        100,
        '13-MAR-2016'
    ),
    (
        22345678,
        'Current',
        390.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R732'
        ),
        '0.09',
        2000,
        '28-AUG-2019'
    ),
    (
        33456789,
        'Savings',
        1050.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R500'
        ),
        '0.03',
        500,
        '02-JUN-2017'
    ),
    (
        44567890,
        'Current',
        590.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M333'
        ),
        '0.07',
        1000,
        '16-OCT-2018'
    ),
    (
        55678901,
        'Savings',
        1950.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M808'
        ),
        '0.12',
        2000,
        '20-DEC-2016'
    ),
    (
        66789012,
        'Current',
        870.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M200'
        ),
        '0.06',
        100,
        '04-FEB-2023'
    ),
    (
        77890123,
        'Savings',
        710.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B555'
        ),
        '0.14',
        500,
        '15-SEP-2020'
    ),
    (
        88901234,
        'Current',
        1300.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B123'
        ),
        '0.10',
        2000,
        '26-JUL-2019'
    ),
    (
        90012345,
        'Savings',
        590.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B789'
        ),
        '0.01',
        1000,
        '09-MAY-2018'
    ),
    (
        12345670,
        'Current',
        2100.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P753'
        ),
        '0.08',
        2000,
        '18-AUG-2017'
    ),
    (
        23456701,
        'Savings',
        730.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M822'
        ),
        '0.11',
        100,
        '27-NOV-2016'
    ),
    (
        34567012,
        'Current',
        1150.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'P129'
        ),
        '0.05',
        1000,
        '14-JAN-2019'
    ),
    (
        45670123,
        'Savings',
        840.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M475'
        ),
        '0.13',
        500,
        '20-MAR-2018'
    ),
    (
        56701234,
        'Current',
        1650.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M636'
        ),
        '0.04',
        2000,
        '08-MAY-2020'
    ),
    (
        67012345,
        'Savings',
        430.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R901'
        ),
        '0.15',
        1000,
        '02-JUL-2017'
    ),
    (
        78012345,
        'Current',
        970.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R732'
        ),
        '0.09',
        2000,
        '11-SEP-2019'
    ),
    (
        89012340,
        'Savings',
        560.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'R500'
        ),
        '0.03',
        500,
        '29-APR-2016'
    ),
    (
        90123450,
        'Current',
        1980.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M333'
        ),
        '0.07',
        1000,
        '10-OCT-2018'
    ),
    (
        12345680,
        'Savings',
        880.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M808'
        ),
        '0.12',
        2000,
        '15-DEC-2021'
    ),
    (
        23456710,
        'Current',
        320.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'M200'
        ),
        '0.06',
        100,
        '07-FEB-2020'
    ),
    (
        34567801,
        'Savings',
        1150.00,
        (
            select
                ref (b)
            from
                branches b
            where
                b.branch_id = 'B555'
        ),
        '0.14',
        500,
        '23-MAY-2017'
    );

/*

 ****
INSERT INTO EMPLOYEE_TABLE
 ****

 */
INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'John', 'Smith'),
        address_type ('JohnStreet', 'JohnCity', 'Post'),
        'N1001',
        phones_collections (phone_type ('Mobile', '07701234566'), phone_type ('Home', '0131 496 0355')),
        1,
        '21-Feb-04',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E4'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Max', 'Mustermann'),
        address_type ('MaxStreet', 'MaxCity', 'Post'),
        'N1002',
        phones_collections (phone_type ('Mobile', '07700900553'), phone_type ('Home', '0131 496 0274')),
        2,
        '21-Aug-08',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E4'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Candace', 'Gibbon'),
        address_type ('CandaceStreet', 'CandaceCity', 'Post'),
        'N1003',
        phones_collections (phone_type ('Mobile', '07700900938'), phone_type ('Home', '0131 496 0101')),
        3,
        '21-Aug-09',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E4'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 2
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Esther', 'Moure'),
        address_type ('EstherStreet', 'EstherCity', 'Post'),
        'N1004',
        phones_collections (phone_type ('Mobile', '07700900864'), phone_type ('Home', '0131 496 0275')),
        4,
        '21-Aug-08',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E4'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 2
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Jedidiah  ', 'Cammelli'),
        address_type ('Jedidiah Street', 'Jedidiah City', 'Post'),
        'N1005',
        phones_collections (phone_type ('Mobile', '07700900325'), phone_type ('Home', '0131 496 0286')),
        5,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E4'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 4
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Laurel', 'Withington'),
        address_type ('LaurelStreet', 'LaurelCity', 'Post'),
        'N1006',
        phones_collections (phone_type ('Mobile', '07700900263'), phone_type ('Home', '0131 496 0855')),
        6,
        '21-Feb-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L5'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Bernice', 'Kurkjian'),
        address_type ('BerniceStreet', 'BerniceCity', 'Post'),
        'N1007',
        phones_collections (phone_type ('Mobile', '07700900535'), phone_type ('Home', '0121 496 0196')),
        7,
        '21-Aug-13',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L5'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 6
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Susanna', 'Gibbon'),
        address_type ('SusannaStreet', 'SusannaCity', 'Post'),
        'N1008',
        phones_collections (phone_type ('Mobile', '07700900848'), phone_type ('Home', '0121 496 0368')),
        8,
        '21-Aug-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L5'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 7
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Priscilla', 'Moure'),
        address_type ('PriscillaStreet', 'PriscillaCity', 'Post'),
        'N1009',
        phones_collections (phone_type ('Mobile', '07700900041'), phone_type ('Home', '0121 496 0403')),
        9,
        '21-Aug-16',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L5'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 7
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Essie', 'Cammelli'),
        address_type ('EssieStreet', 'EssieCity', 'Post'),
        'N1010',
        phones_collections (phone_type ('Mobile', '07700900160'), phone_type ('Home', '0121 496 0766')),
        10,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L5'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 3
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Honour', 'Tosteson'),
        address_type ('3 Dinmont Dr.', 'Edinburgh', 'EH16 5RF'),
        'N1011',
        phones_collections (phone_type ('Mobile', '07700900410'), phone_type ('Home', '0121 496 0937')),
        11,
        '21-Feb-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Bonnie', 'Davis'),
        address_type ('21 Durward Grove', 'Edinburgh', 'EH16 5RS'),
        'N1012',
        phones_collections (phone_type ('Mobile', '07700900095'), phone_type ('Home', '0121 496 0410')),
        12,
        '21-Aug-13',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 11
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Betty', 'Walker'),
        address_type ('BettyStreet', 'BettyCity', 'Post'),
        'N1013',
        phones_collections (phone_type ('Mobile', '07700900815'), phone_type ('Home', '029 2018 0579')),
        13,
        '21-Aug-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 12
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Lois', 'Adams'),
        address_type ('LoisStreet', 'LoisCity', 'Post'),
        'N1014',
        phones_collections (phone_type ('Mobile', '07700900012'), phone_type ('Home', '029 2018 0911')),
        14,
        '21-Aug-16',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 12
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Frances', 'Evans'),
        address_type ('FrancesStreet', 'FrancesCity', 'Post'),
        'N1015',
        phones_collections (phone_type ('Mobile', '07700900845'), phone_type ('Home', '029 2018 0765')),
        15,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 2
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Michelle', 'Ramirez'),
        address_type ('MichelleStreet', 'MichelleCity', 'Post'),
        'N1016',
        phones_collections (phone_type ('Mobile', '07700900427'), phone_type ('Home', '029 2018 0897')),
        16,
        '21-Feb-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E2'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Janet', 'Brooks'),
        address_type ('JanetStreet', 'JanetCity', 'Post'),
        'N1017',
        phones_collections (phone_type ('Mobile', '07700900946'), phone_type ('Home', '029 2018 0570')),
        17,
        '21-Aug-13',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E2'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 16
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Tammy', 'Russell'),
        address_type ('TammyStreet', 'TammyCity', 'Post'),
        'N1018',
        phones_collections (phone_type ('Mobile', '07700900196'), phone_type ('Home', '029 2018 0062')),
        18,
        '21-Aug-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E2'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 17
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Kathryn', 'Rogers'),
        address_type ('KathrynStreet', 'KathrynCity', 'Post'),
        'N1019',
        phones_collections (phone_type ('Mobile', '07700900327'), phone_type ('Home', '0191 498 0472')),
        19,
        '21-Aug-16',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E2'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 17
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Heather', 'Wood'),
        address_type ('HeatherStreet', 'HeatherCity', 'Post'),
        'N1020',
        phones_collections (phone_type ('Mobile', '07700900705'), phone_type ('Home', '0191 498 0674')),
        20,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E2'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 3
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Rachel', 'Gray'),
        address_type ('RachelStreet', 'RachelCity', 'Post'),
        'N1021',
        phones_collections (phone_type ('Mobile', '07700900633'), phone_type ('Home', '0191 498 0932')),
        21,
        '21-Feb-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E3'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Deborah', 'Lee'),
        address_type ('DeborahStreet', 'DeborahCity', 'Post'),
        'N1022',
        phones_collections (phone_type ('Mobile', '07700900682'), phone_type ('Home', '0191 498 0754')),
        22,
        '21-Aug-13',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E3'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 21
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Lori', 'Russell'),
        address_type ('LoriStreet', 'LoriCity', 'Post'),
        'N1023',
        phones_collections (phone_type ('Mobile', '07700900663'), phone_type ('Home', '0191 498 0265')),
        23,
        '21-Aug-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E3'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 22
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Jessica', 'Young'),
        address_type ('JessicaStreet', 'JessicaCity', 'Post'),
        'N1024',
        phones_collections (phone_type ('Mobile', '07700900041'), phone_type ('Home', '0191 498 0236')),
        24,
        '21-Aug-16',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E3'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 22
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Ms', 'Marilyn', 'Hernandez'),
        address_type ('MarilynStreet', 'MarilynCity', 'Post'),
        'N1025',
        phones_collections (phone_type ('Mobile', '07700900760'), phone_type ('Home', '0141 496 0039')),
        25,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'E3'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 2
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Stephen', 'Gray'),
        address_type ('StephenStreet', 'StephenCity', 'Post'),
        'N1026',
        phones_collections (phone_type ('Mobile', '07700900219'), phone_type ('Home', '0141 496 0948')),
        26,
        '21-Feb-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Head'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 1
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Albert', 'Perry'),
        address_type ('DeborahStreet', 'DeborahCity', 'Post'),
        'N1027',
        phones_collections (phone_type ('Mobile', '07700900694'), phone_type ('Home', '0141 496 0000')),
        27,
        '21-Aug-14',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Manager'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 26
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Gregory', 'Simmons'),
        address_type ('GregoryStreet', 'GregoryCity', 'Post'),
        'N1028',
        phones_collections (phone_type ('Mobile', '07700900450'), phone_type ('Home', '0141 496 0207')),
        28,
        '21-Aug-15',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Project Leader'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 27
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Christopher', 'Young'),
        address_type ('ChristopherStreet', 'ChristopherCity', 'Post'),
        'N1029',
        phones_collections (phone_type ('Mobile', '07700900314'), phone_type ('Home', '0141 496 0251')),
        29,
        '21-Aug-16',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Accountant'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 3
        )
    );

INSERT INTO
    employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id)
VALUES
    (
        name_type ('Mr', 'Bruce', 'Barnes'),
        address_type ('BruceStreet', 'BruceCity', 'Post'),
        'N1030',
        phones_collections (phone_type ('Mobile', '07700900272'), phone_type ('Home', '0141 496 0051')),
        30,
        '21-Aug-17',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'L1'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Cashier'
        ),
        (
            select
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 29
        )
    );

/*

 ****
INSERT INTO CUSTOMER_TABLE
 ****

 */
INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Kevin', 'Rivera'),
        address_Type ('KevinStreet', 'KevinCity', 'Post'),
        'N2001',
        phones_collections (phone_type ('Mobile', '07700 900314'), phone_type ('Home', '020 7946 0648')),
        'C1001'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Harold', 'Jackson'),
        address_Type ('HaroldStreet', 'HaroldCity', 'Post'),
        'N2002',
        phones_collections (phone_type ('Mobile', '07700 900272'), phone_type ('Home', '020 7946 0889')),
        'C1002'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Arthur', 'Cook'),
        address_Type ('CookStreet', 'CookCity', 'Post'),
        'N2003',
        phones_collections (phone_type ('Mobile', '07800900791'), phone_type ('Mobile', '07700 900518'), phone_type ('Home', '020 7946 0325')),
        'C1003'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Patrick', 'Kelly'),
        address_Type ('PatrickStreet', 'PatrickCity', 'Post'),
        'N2004',
        phones_collections (phone_type ('Mobile', '07700 900105'), phone_type ('Home', '020 7946 0097')),
        'C1004'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Fred', 'Johnson'),
        address_Type ('FredStreet', 'FredCity', 'Post'),
        'N2005',
        phones_collections (phone_type ('Mobile', '07700 900955'), phone_type ('Home', '020 7946 0996')),
        'C1005'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Earl', 'Gray'),
        address_Type ('EarlStreet', 'EarlCity', 'Post'),
        'N2006',
        phones_collections (phone_type ('Mobile', '07700 900719'), phone_type ('Home', '020 7946 0571')),
        'C1006'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Frank', 'Long'),
        address_Type ('FrankStreet', 'FrankCity', 'Post'),
        'N2007',
        phones_collections (phone_type ('Mobile', '07600900791'), phone_type ('Mobile', '07700 900125'), phone_type ('Home', '0141 496 0039')),
        'C1007'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Ralph', 'James'),
        address_Type ('RalphStreet', 'RalphCity', 'Post'),
        'N2008',
        phones_collections (phone_type ('Mobile', '07700 900475'), phone_type ('Home', '0141 496 0039')),
        'C1008'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Ernest', 'Cevic'),
        address_Type ('ErnestStreet', 'ErnestCity', 'Post'),
        'N2009',
        phones_collections (phone_type ('Mobile', '07700 900485'), phone_type ('Home', '0141 496 0948')),
        'C1009'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Eric', 'Perez'),
        address_Type ('EricStreet', 'EricCity', 'Post'),
        'N2010',
        phones_collections (phone_type ('Mobile', '07700 900758'), phone_type ('Home', '0141 496 0000')),
        'C1010'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Victor', 'Evans'),
        address_Type ('VictorStreet', 'VictorCity', 'Post'),
        'N2011',
        phones_collections (phone_type ('Mobile', '07700 900899'), phone_type ('Home', '0141 496 0207')),
        'C1011'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Dennis', 'Henderson'),
        address_Type ('DennisStreet', 'DennisCity', 'Post'),
        'N2012',
        phones_collections (phone_type ('Mobile', '07700 900721'), phone_type ('Home', '0141 496 0251')),
        'C1012'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Brandon', 'Smith'),
        address_Type ('BrandonStreet', 'BrandonCity', 'Post'),
        'N2013',
        phones_collections (phone_type ('Mobile', '07500900791'), phone_type ('Mobile', '07700 900286'), phone_type ('Home', '029 2018 0579')),
        'C1013'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Clarence', 'Diaz'),
        address_Type ('ClarenceStreet', 'ClarenceCity', 'Post'),
        'N2014',
        phones_collections (phone_type ('Mobile', '07700 900384'), phone_type ('Home', '029 2018 0579')),
        'C1014'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Edward', 'Scott'),
        address_Type ('ScottStreet', 'ScottCity', 'Post'),
        'N2015',
        phones_collections (phone_type ('Mobile', '07700 900847'), phone_type ('Home', '029 2018 0911')),
        'C1015'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Kevin', 'Collins'),
        address_Type ('CollinsStreet', 'CollinsCity', 'Post'),
        'N2016',
        phones_collections (phone_type ('Mobile', '07700 900225'), phone_type ('Home', '029 2018 0765')),
        'C1016'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Gary', 'Sanchez'),
        address_Type ('GaryStreet', 'GaryCity', 'Post'),
        'N2017',
        phones_collections (phone_type ('Mobile', '07700 900324'), phone_type ('Home', '029 2018 0897')),
        'C1017'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Russell', 'Wright'),
        address_Type ('WrightStreet', 'WrightCity', 'Post'),
        'N2018',
        phones_collections (phone_type ('Mobile', '07700 900591'), phone_type ('Home', '29 2018 0570')),
        'C1018'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Joshua', 'Rogers'),
        address_Type ('JoshuaStreet', 'JoshuaCity', 'Post'),
        'N2019',
        phones_collections (phone_type ('Mobile', '07400900791'), phone_type ('Mobile', '07700 900890'), phone_type ('Home', '029 2018 0062')),
        'C1019'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Michael', 'Walker'),
        address_Type ('MichaelStreet', 'MichaelCity', 'Post'),
        'N2020',
        phones_collections (phone_type ('Mobile', '07700 900514'), phone_type ('Home', '0191 498 0472')),
        'C1020'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Sandra', 'Richardson'),
        address_Type ('SandraStreet', 'SandraCity', 'Post'),
        'N2021',
        phones_collections (phone_type ('Mobile', '07700 900671'), phone_type ('Home', '0191 498 0674')),
        'C1021'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Sarah', 'King'),
        address_Type ('SarahStreet', 'SarahCity', 'Post'),
        'N2022',
        phones_collections (phone_type ('Mobile', '07700 900045'), phone_type ('Home', '0191 498 0932')),
        'C1022'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Doris', 'Gonzales'),
        address_Type ('DorisStreet', 'DorisCity', 'Post'),
        'N2023',
        phones_collections (phone_type ('Mobile', '07700 900861'), phone_type ('Home', '0191 498 0754')),
        'C1023'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Bruce', 'Barnes'),
        address_Type ('BruceStreet', 'BruceCity', 'Post'),
        'N2024',
        phones_collections (phone_type ('Mobile', '07700 900024'), phone_type ('Home', '0191 498 0265')),
        'C1024'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Katherine', 'Jones'),
        address_Type ('KatherineStreet', 'KatherineCity', 'Post'),
        'N2025',
        phones_collections (phone_type ('Mobile', '07700 900001'), phone_type ('Home', '0191 498 0236')),
        'C1025'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Kathryn', 'Rogers'),
        address_Type ('KathrynStreet', 'KathrynCity', 'Post'),
        'N2026',
        phones_collections (phone_type ('Mobile', '07300900791'), phone_type ('Mobile', '07700 900694'), phone_type ('Home', '0113 496 0953')),
        'C1026'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Karen', 'Martinez'),
        address_Type ('DorisStreet', 'DorisCity', 'Post'),
        'N2027',
        phones_collections (phone_type ('Mobile', '07700 900267'), phone_type ('Home', '0113 496 0895')),
        'C1027'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Judy', 'Taylor'),
        address_Type ('JudyStreet', 'JudyCity', 'Post'),
        'N2028',
        phones_collections (phone_type ('Mobile', '07700 900843'), phone_type ('Home', '0113 496 0052')),
        'C1028'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Priscilla', 'Moure'),
        address_Type ('AnnStreet', 'AnnCity', 'Post'),
        'N2029',
        phones_collections (phone_type ('Mobile', '07700 900549'), phone_type ('Home', '0113 496 0566')),
        'C1029'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Esther', 'Moure'),
        address_Type ('EstherStreet', 'EstherCity', 'Post'),
        'N2030',
        phones_collections (phone_type ('Mobile', '07700 900571'), phone_type ('Home', '0113 496 0070')),
        'C1030'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Christine', 'Bennett'),
        address_Type ('ChristineStreet', 'ChristineCity', 'Post'),
        'N2031',
        phones_collections (phone_type ('Mobile', '07700 900381'), phone_type ('Home', '0113 496 0981')),
        'C1031'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Lois', 'Adams'),
        address_Type ('LoisStreet', 'LoisCity', 'Post'),
        'N2032',
        phones_collections (phone_type ('Mobile', '07700 900203'), phone_type ('Home', '0116 496 0515')),
        'C1032'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Jessica', 'Young'),
        address_Type ('JessicaStreet', 'JessicaCity', 'Post'),
        'N2033',
        phones_collections (phone_type ('Mobile', '07700 900791'), phone_type ('Mobile', '07700 900219'), phone_type ('Home', '0116 496 0549')),
        'C1033'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Amanda', 'Parker'),
        address_Type ('AmandaStreet', 'AmandaCity', 'Post'),
        'N2034',
        phones_collections (phone_type ('Mobile', '07700 900525'), phone_type ('Home', '0116 496 0738')),
        'C1034'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Angela', 'Jackson'),
        address_Type ('AngelaStreet', 'AngelaCity', 'Post'),
        'N2035',
        phones_collections (phone_type ('Mobile', '07700 900867'), phone_type ('Home', '0116 496 0805')),
        'C1035'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Denise', 'Edwards'),
        address_Type ('ChristineStreet', 'ChristineCity', 'Post'),
        'N2036',
        phones_collections (phone_type ('Mobile', '07700 900003'), phone_type ('Home', '0116 496 0841')),
        'C1036'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Helen', 'Russel'),
        address_Type ('HelenWStreet', 'HelenWCity', 'Post'),
        'N2037',
        phones_collections (phone_type ('Mobile', '07700 900640'), phone_type ('Home', '0116 496 0160')),
        'C1037'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Laura', 'Young'),
        address_Type ('LauraStreet', 'LauraCity', 'Post'),
        'N2038',
        phones_collections (phone_type ('Mobile', '07200900791'), phone_type ('Mobile', '07700 900041'), phone_type ('Home', '0161 496 0590')),
        'C1038'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Marie', 'Robinson'),
        address_Type ('MarieStreet', 'MarieCity', 'Post'),
        'N2039',
        phones_collections (phone_type ('Mobile', '07700 900731'), phone_type ('Home', '0161 496 0190')),
        'C1039'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Ms', 'Louise', 'Williams'),
        address_Type ('LouiseStreet', 'LouiseCity', 'Post'),
        'N2040',
        phones_collections (phone_type ('Mobile', '07700 900599'), phone_type ('Home', '0161 496 0495')),
        'C1040'
    );

INSERT INTO
    customer_table (name, address, ni_num, phone, cust_id)
VALUES
    (
        name_Type ('Mr', 'Jonathan', 'Saxo'),
        address_Type ('JonathanStreet', 'JonathanCity', 'Post'),
        'N2041',
        phones_collections (phone_type ('Mobile', '07100900791'), phone_type ('Mobile', '07700 900833'), phone_type ('Home', '0161 496 0667')),
        'C1041'
    );

/*

 ****
INSERT INTO CUSTOMER_ACCOUNT
 ****

 */
INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1001'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '45645654'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1002'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '64758904'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1002'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '85967485'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1003'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '34528754'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1004'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '76895465'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1005'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '6057342'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1006'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '92157579'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1006'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '74853652'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1007'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '36428802'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1008'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '30360522'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1009'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '45947960'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1010'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '61759251'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1011'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '47935252'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1012'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '91908038'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1013'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '48566965'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1014'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '26502506'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1015'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '3621280'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1015'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '85963258'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1016'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '32116769'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1017'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '99481068'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1018'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '55163952'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1019'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '58489233'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1020'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '82516698'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1020'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '14786952'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1021'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '58411184'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1022'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '69732823'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1023'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '80129532'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1024'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '04834745'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1024'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '85479652'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1025'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '16095573'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1026'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '35953164'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1027'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '52965833'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1028'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '40130365'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1029'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '47016078'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1030'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '31866334'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1031'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '83672918'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1032'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '12667691'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1033'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '5545073'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1034'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '64793745'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1035'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '88736868'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1036'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '3608694'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1037'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '32722516'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1038'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '65004171'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1039'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '95646311'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1039'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '14785963'
        )
    );

INSERT INTO
    customer_account (cust_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customer_table c
            WHERE
                cust_id = 'C1040'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = '59641812'
        )
    );

SHOW ERROR;