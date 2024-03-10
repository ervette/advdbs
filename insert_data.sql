/* ----------------- */
/* populate branches */
/* ----------------- */
INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Rose St.', 'Paris', '75001', 'P753', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Portobello Rd.', 'Madrid', '28001', 'M822', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Rue de Rivoli', 'Paris', '75004', 'P129', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Gran Via', 'Madrid', '28013', 'M475', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Alcala', 'Madrid', '28009', 'M636', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via del Corso', 'Rome', '00186', 'R901', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Viale dei Trastevere', 'Rome', '00153', 'R732', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via Nazionale', 'Rome', '00184', 'R500', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via Condotti', 'Rome', '00187', 'R211', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Goya', 'Madrid', '28001', 'M333', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de la Princesa', 'Madrid', '28008', 'M808', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Fuencarral', 'Madrid', '28004', 'M200', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Carrer de Balmes', 'Barcelona', '08007', 'B555', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Carrer de Ferran', 'Barcelona', '08002', 'B123', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Passeig de Gracia', 'Barcelona', '08008', 'B789', phones_collection (phone_type ('Mobile', '07081234567')));

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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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
    );

INSERT INTO
    accounts (acc_number, acc_type, balance, branch_id, interest_rate, limit_of_free_od, open_date)
VALUES
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

/* populating employees */
INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        name_type ('Dr', 'Michael', 'Brown'),
        address_type ('Brown St.', 'Paris', '75001'),
        'AB123',
        phones_collections (phone_type ('Mobile', '07701234566'), phone_type ('Home', '0131 496 0355')),
        10001,
        '21-Feb-2004',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P753'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Director'
        ),
        null
    );

INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        name_type ('Mrs', 'Emily', 'Johnson'),
        address_type ('Johnson Ave.', 'Madrid', '28001'),
        'CD234',
        phones_collections (phone_type ('Mobile', '07701234567'), phone_type ('Home', '0131 496 0356')),
        10002,
        '15-Mar-2006',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M822'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'David', 'Taylor'),
        address_type ('Taylor Rd.', 'Paris', '75004'),
        'EF345',
        phones_collections (phone_type ('Mobile', '07701234568'), phone_type ('Home', '0131 496 0357')),
        10003,
        '10-Jul-2008',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P129'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10002
        )
);
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Sophia', 'Clark'),
        address_type ('Clark Lane', 'Madrid', '28013'),
        'GH456',
        phones_collections (phone_type ('Mobile', '07701234569'), phone_type ('Home', '0131 496 0358')),
        10004,
        '05-Sep-2010',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M475'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10002
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Daniel', 'Wilson'),
        address_type ('Wilson Street', 'Madrid', '28009'),
        'IJ567',
        phones_collections (phone_type ('Mobile', '07701234570'), phone_type ('Home', '0131 496 0359')),
        10005,
        '20-Nov-2012',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M636'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10002
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Olivia', 'Anderson'),
        address_type ('Anderson Rd.', 'Rome', '00186'),
        'KL678',
        phones_collections (phone_type ('Mobile', '07701234571'), phone_type ('Home', '0131 496 0360')),
        10006,
        '14-Feb-2014',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R901'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Matthew', 'Thomas'),
        address_type ('Thomas Street', 'Rome', '00153'),
        'MN789',
        phones_collections (phone_type ('Mobile', '07701234572'), phone_type ('Home', '0131 496 0361')),
        10007,
        '03-Apr-2016',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R732'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10006
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Isabella', 'Martinez'),
        address_type ('Martinez Lane', 'Rome', '00184'),
        'OP890',
        phones_collections (phone_type ('Mobile', '07701234573'), phone_type ('Home', '0131 496 0362')),
        10008,
        '29-Jun-2018',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R500'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10006
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Dr', 'Elizabeth', 'Garcia'),
        address_type ('Garcia St.', 'Madrid', '28001'),
        'QR901',
        phones_collections (phone_type ('Mobile', '07701234574'), phone_type ('Home', '0131 496 0363')),
        10009,
        '12-Sep-2020',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M333'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Mia', 'Rodriguez'),
        address_type ('Rodriguez Rd.', 'Madrid', '28008'),
        'ST012',
        phones_collections (phone_type ('Mobile', '07701234575'), phone_type ('Home', '0131 496 0364')),
        10010,
        '08-Nov-2005',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M808'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10009
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'James', 'Hernandez'),
        address_type ('Hernandez Lane', 'Madrid', '28004'),
        'UV123',
        phones_collections (phone_type ('Mobile', '07701234576'), phone_type ('Home', '0131 496 0365')),
        10011,
        '17-Mar-2007',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B555'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10009
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Charlotte', 'Lopez'),
        address_type ('Lopez St.', 'Barcelona', '08007'),
        'WX234',
        phones_collections (phone_type ('Mobile', '07701234577'), phone_type ('Home', '0131 496 0366')),
        10012,
        '30-Apr-2009',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B123'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10010
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Henry', 'Gomez'),
        address_type ('Gomez Rd.', 'Barcelona', '08002'),
        'YZ345',
        phones_collections (phone_type ('Mobile', '07701234578'), phone_type ('Home', '0131 496 0367')),
        10013,
        '25-Jul-2011',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B789'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10010
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Amelia', 'Sanchez'),
        address_type ('Sanchez St.', 'Barcelona', '08008'),
        'ZA456',
        phones_collections (phone_type ('Mobile', '07701234579'), phone_type ('Home', '0131 496 0368')),
        10014,
        '19-Sep-2013',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P753'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Victoria', 'Perez'),
        address_type ('Perez Lane', 'Barcelona', '08009'),
        'AB567',
        phones_collections (phone_type ('Mobile', '07701234580'), phone_type ('Home', '0131 496 0369')),
        10015,
        '07-Nov-2015',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M822'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10014
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Joseph', 'Gonzalez'),
        address_type ('Gonzalez St.', 'Barcelona', '08010'),
        'CD678',
        phones_collections (phone_type ('Mobile', '07701234581'), phone_type ('Home', '0131 496 0370')),
        10016,
        '02-Jan-2017',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P129'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10014
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Grace', 'Diaz'),
        address_type ('Diaz Rd.', 'Cambridge', 'CB2 3AX'),
        'EF789',
        phones_collections (phone_type ('Mobile', '07701234582'), phone_type ('Home', '0131 496 0371')),
        10017,
        '21-Mar-2019',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M475'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Jack', 'Torres'),
        address_type ('Torres Lane', 'Bedford', 'MK40 1PR'),
        'GH890',
        phones_collections (phone_type ('Mobile', '07701234583'), phone_type ('Home', '0131 496 0372')),
        10018,
        '15-May-2020',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M636'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10017
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Chloe', 'Fernandez'),
        address_type ('Fernandez Rd.', 'Northampton', 'NN1 2BH'),
        'IJ901',
        phones_collections (phone_type ('Mobile', '07701234584'), phone_type ('Home', '0131 496 0373')),
        10019,
        '10-Aug-2008',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R901'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10017
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Benjamin', 'Ramirez'),
        address_type ('Ramirez St.', 'Hitchin', 'SG5 1LP'),
        'KL012',
        phones_collections (phone_type ('Mobile', '07701234585'), phone_type ('Home', '0131 496 0374')),
        10020,
        '05-Nov-2010',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R732'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Emma', 'Wood'),
        address_type ('Wood Rd.', 'Stevenage', 'SG1 1DH'),
        'MN234',
        phones_collections (phone_type ('Mobile', '07701234586'), phone_type ('Home', '0131 496 0375')),
        10021,
        '29-Jan-2012',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R500'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10020
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Lily', 'Russell'),
        address_type ('Russell Rd.', 'Ware', 'SG12 9BD'),
        'OP345',
        phones_collections (phone_type ('Mobile', '07701234587'), phone_type ('Home', '0131 496 0376')),
        10022,
        '14-Mar-2014',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M333'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10020
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Dr', 'William', 'Baker'),
        address_type ('Baker St.', 'Barcelona', '08007'),
        'QR567',
        phones_collections (phone_type ('Mobile', '07701234588'), phone_type ('Home', '0131 496 0377')),
        10023,
        '02-Jun-2016',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B555'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Zoe', 'Hughes'),
        address_type '30-Apr-2009',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B123'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Benjamin', 'Gonzalez'),
        address_type ('Gonzalez Lane', 'Barcelona', '08002'),
        'YZ345',
        phones_collections (phone_type ('Mobile', '07701234578'), phone_type ('Home', '0131 496 0367')),
        10013,
        '22-Jun-2011',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'B789'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10012
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Amelia', 'Perez'),
        address_type ('Perez St.', 'Barcelona', '08008'),
        'AB456',
        phones_collections (phone_type ('Mobile', '07701234579'), phone_type ('Home', '0131 496 0368')),
        10014,
        '19-Sep-2013',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P753'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10012
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Ethan', 'Sanchez'),
        address_type ('Sanchez Rd.', 'Barcelona', '08008'),
        'CD567',
        phones_collections (phone_type ('Mobile', '07701234580'), phone_type ('Home', '0131 496 0369')),
        10015,
        '14-Nov-2015',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M822'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10012
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Chloe', 'Ramirez'),
        address_type ('Ramirez Lane', 'Barcelona', '08007'),
        'EF678',
        phones_collections (phone_type ('Mobile', '07701234581'), phone_type ('Home', '0131 496 0370')),
        10016,
        '05-Jan-2017',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M475'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Dr', 'Ava', 'Torres'),
        address_type ('Torres St.', 'Barcelona', '08002'),
        'GH890',
        phones_collections (phone_type ('Mobile', '07701234582'), phone_type ('Home', '0131 496 0371')),
        10017,
        '28-Mar-2019',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M636'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10016
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Aria', 'Vazquez'),
        address_type ('Vazquez Rd.', 'Barcelona', '08008'),
        'IJ012',
        phones_collections (phone_type ('Mobile', '07701234583'), phone_type ('Home', '0131 496 0372')),
        10018,
        '10-Jun-2005',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R901'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10016
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Leo', 'Gomez'),
        address_type ('Gomez Lane', 'Paris', '75001'),
        'KL234',
        phones_collections (phone_type ('Mobile', '07701234584'), phone_type ('Home', '0131 496 0373')),
        10019,
        '17-Aug-2007',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R732'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10006
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Scarlett', 'Fernandez'),
        address_type ('Fernandez St.', 'Paris', '75004'),
        'MN456',
        phones_collections (phone_type ('Mobile', '07701234585'), phone_type ('Home', '0131 496 0374')),
        10020,
        '03-Oct-2009',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R500'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Jack', 'Lopez'),
        address_type ('Lopez Lane', 'Paris', '75001'),
        'OP678',
        phones_collections (phone_type ('Mobile', '07701234586'), phone_type ('Home', '0131 496 0375')),
        10021,
        '26-Dec-2011',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M333'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10020
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Nora', 'Hernandez'),
        address_type ('Hernandez St.', 'Paris', '75001'),
        'QR890',
        phones_collections (phone_type ('Mobile', '07701234587'), phone_type ('Home', '0131 496 0376')),
        10022,
        '19-Mar-2014',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M808'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10020
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Logan', 'Martinez'),
        address_type ('Martinez Rd.', 'Madrid', '28001'),
        'ST234',
        phones_collections (phone_type ('Mobile', '07701234588'), phone_type ('Home', '0131 496 0377')),
        10023,
        '02-Feb-2016',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M822'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10022
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Lily', 'Gomez'),
        address_type ('Gomez St.', 'Madrid', '28013'),
        'UV456',
        phones_collections (phone_type ('Mobile', '07701234589'), phone_type ('Home', '0131 496 0378')),
        10024,
        '14-Apr-2018',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M475'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Dr', 'Avery', 'Sanchez'),
        address_type ('Sanchez Lane', 'Madrid', '28009'),
        'WX678',
        phones_collections (phone_type ('Mobile', '07701234590'), phone_type ('Home', '0131 496 0379')),
        10025,
        '09-Jul-2020',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M636'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10024
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Zoe', 'Perez'),
        address_type ('Perez St.', 'Madrid', '28001'),
        'YZ890',
        phones_collections (phone_type ('Mobile', '07701234591'), phone_type ('Home', '0131 496 0380')),
        10026,
        '23-Sep-2005',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R901'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10024
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Sebastian', 'Garcia'),
        address_type ('Garcia Lane', 'Madrid', '28008'),
        'AB123',
        phones_collections (phone_type ('Mobile', '07701234592'), phone_type ('Home', '0131 496 0381')),
        10027,
        '18-Aug-2007',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'P753'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10026
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Ms', 'Aurora', 'Rodriguez'),
        address_type ('Rodriguez Rd.', 'Madrid', '28004'),
        'CD234',
        phones_collections (phone_type ('Mobile', '07701234593'), phone_type ('Home', '0131 496 0382')),
        10028,
        '12-Oct-2009',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R732'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Supervisor'
        ),
        null
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mr', 'Elijah', 'Lopez'),
        address_type ('Lopez St.', 'Madrid', '28013'),
        'EF345',
        phones_collections (phone_type ('Mobile', '07701234594'), phone_type ('Home', '0131 496 0383')),
        10029,
        '05-Dec-2011',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'R500'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10028
        )
    );
    INSERT INTO
    employee_table (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES(
        name_type ('Mrs', 'Stella', 'Hernandez'),
        address_type ('Hernandez Rd.', 'Madrid', '28009'),
        'GH456',
        phones_collections (phone_type ('Mobile', '07701234595'), phone_type ('Home', '0131 496 0384')),
        10030,
        '29-Jan-2014',
        (
            SELECT
                REF (b)
            FROM
                branches b
            WHERE
                b.branch_id = 'M333'
        ),
        (
            SELECT
                ref (j)
            FROM
                job_table j
            WHERE
                j.job_title = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employee_table e
            WHERE
                e.emp_id = 10028
        )
    );

/* populating customers */
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