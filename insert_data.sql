/* ----------------- */
/* populate branches */
/* ----------------- */
INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Rose St.', 'London', '75001', 'P753', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Portobello Rd.', 'London', '28001', 'M822', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Rue de Rivoli', 'London', '75004', 'P129', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Gran Via', 'London', '28013', 'M475', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Alcala', 'London', '28009', 'M636', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via del Corso', 'Edinburgh', '00186', 'R901', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Viale dei Trastevere', 'Edinburgh', '00153', 'R732', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via Nazionale', 'Edinburgh', '00184', 'R500', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Via Condotti', 'Edinburgh', '00187', 'R211', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Goya', 'London', '28001', 'M333', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de la Princesa', 'London', '28008', 'M808', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Calle de Fuencarral', 'London', '28004', 'M200', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Carrer de Balmes', 'Cardiff', '08007', 'B555', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Carrer de Ferran', 'Cardiff', '08002', 'B123', phones_collection (phone_type ('Mobile', '07081234567')));

INSERT INTO
    branches (street, city, postcode, branch_id, phone)
VALUES
    ('Passeig de Gracia', 'Cardiff', '08008', 'B789', phones_collection (phone_type ('Mobile', '07081234567')));

/* ----------------- */
/* populate customers */
/* ----------------- */
INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1001',
        full_name ('Mr', 'Kevin', 'Rivera'),
        address_Type ('KevinStreet', 'London', 'WC2E 8JF'),
        'DC001',
        phones_collection (phone_type ('Mobile', '07700900314'), phone_type ('Home', '020 7946 0648'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1002',
        full_name ('Mrs', 'Emily', 'Johnson'),
        address_Type ('Johnson Ave.', 'London', '28001'),
        'DC002',
        phones_collection (phone_type ('Mobile', '07700 112233'), phone_type ('Home', '020 7946 0655'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1003',
        full_name ('Ms', 'Sophia', 'Clark'),
        address_Type ('Clark Lane', 'London', '28013'),
        'DC003',
        phones_collection (phone_type ('Mobile', '07700 224466'), phone_type ('Home', '020 7946 0666'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1004',
        full_name ('Mr', 'Daniel', 'Wilson'),
        address_Type ('Wilson Street', 'London', '28009'),
        'DC004',
        phones_collection (phone_type ('Mobile', '07700 336699'), phone_type ('Home', '020 7946 0677'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1005',
        full_name ('Mrs', 'Olivia', 'Anderson'),
        address_Type ('Anderson Rd.', 'Edinburgh', '00186'),
        'DC005',
        phones_collection (phone_type ('Mobile', '07700 448822'), phone_type ('Home', '020 7946 0688'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1006',
        full_name ('Mr', 'Matthew', 'Thomas'),
        address_Type ('Thomas Street', 'Edinburgh', '00153'),
        'DC006',
        phones_collection (phone_type ('Mobile', '07700 551144'), phone_type ('Home', '020 7946 0699'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1007',
        full_name ('Ms', 'Isabella', 'Martinez'),
        address_Type ('Martinez Lane', 'Edinburgh', '00184'),
        'DC007',
        phones_collection (phone_type ('Mobile', '07700 663322'), phone_type ('Home', '020 7946 0700'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1008',
        full_name ('Dr', 'Elizabeth', 'Garcia'),
        address_Type ('Garcia St.', 'London', '28001'),
        'DC008',
        phones_collection (phone_type ('Mobile', '07700 775533'), phone_type ('Home', '020 7946 0711'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1009',
        full_name ('Mrs', 'Mia', 'Rodriguez'),
        address_Type ('Rodriguez Rd.', 'London', '28008'),
        'DC009',
        phones_collection (phone_type ('Mobile', '07700 887744'), phone_type ('Home', '020 7946 0722'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1010',
        full_name ('Mr', 'James', 'Hernandez'),
        address_Type ('Hernandez Lane', 'London', '28004'),
        'DC010',
        phones_collection (phone_type ('Mobile', '07700 990011'), phone_type ('Home', '020 7946 0733'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1011',
        full_name ('Ms', 'Charlotte', 'Lopez'),
        address_Type ('Lopez St.', 'Cardiff', '08007'),
        'DC011',
        phones_collection (phone_type ('Mobile', '07700 112233'), phone_type ('Home', '020 7946 0744'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1012',
        full_name ('Mr', 'Benjamin', 'Gonzalez'),
        address_Type ('Gonzalez Lane', 'Cardiff', '08002'),
        'DC012',
        phones_collection (phone_type ('Mobile', '07700 224466'), phone_type ('Home', '020 7946 0755'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1013',
        full_name ('Mrs', 'Amelia', 'Perez'),
        address_Type ('Perez St.', 'Cardiff', '08008'),
        'DC013',
        phones_collection (phone_type ('Mobile', '07700 336699'), phone_type ('Home', '020 7946 0766'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1014',
        full_name ('Mr', 'Ethan', 'Sanchez'),
        address_Type ('Sanchez Rd.', 'Cardiff', '08008'),
        'DC014',
        phones_collection (phone_type ('Mobile', '07700 448822'), phone_type ('Home', '020 7946 0777'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1015',
        full_name ('Ms', 'Chloe', 'Ramirez'),
        address_Type ('Ramirez Lane', 'Cardiff', '08007'),
        'DC015',
        phones_collection (phone_type ('Mobile', '07700 551144'), phone_type ('Home', '020 7946 0788'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1016',
        full_name ('Dr', 'Ava', 'Torres'),
        address_Type ('Torres St.', 'Cardiff', '08002'),
        'DC016',
        phones_collection (phone_type ('Mobile', '07700 663322'), phone_type ('Home', '020 7946 0799'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1017',
        full_name ('Mrs', 'Aria', 'Vazquez'),
        address_Type ('Vazquez Rd.', 'Cardiff', '08008'),
        'DC017',
        phones_collection (phone_type ('Mobile', '07700 775533'), phone_type ('Home', '020 7946 0800'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1018',
        full_name ('Mr', 'Leo', 'Gomez'),
        address_Type ('Gomez Lane', 'London', '75001'),
        'DC018',
        phones_collection (phone_type ('Mobile', '07700 887744'), phone_type ('Home', '020 7946 0811'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1019',
        full_name ('Ms', 'Scarlett', 'Fernandez'),
        address_Type ('Fernandez St.', 'London', '75004'),
        'DC019',
        phones_collection (phone_type ('Mobile', '07700 990011'), phone_type ('Home', '020 7946 0822'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1020',
        full_name ('Mr', 'Jack', 'Lopez'),
        address_Type ('Lopez Lane', 'London', '75001'),
        'DC020',
        phones_collection (phone_type ('Mobile', '07700 112233'), phone_type ('Home', '020 7946 0833'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1021',
        full_name ('Mrs', 'Nora', 'Hernandez'),
        address_Type ('Hernandez St.', 'London', '75001'),
        'DC021',
        phones_collection (phone_type ('Mobile', '07700 224466'), phone_type ('Home', '020 7946 0844'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1022',
        full_name ('Mr', 'Logan', 'Martinez'),
        address_Type ('Martinez Rd.', 'London', '28001'),
        'DC022',
        phones_collection (phone_type ('Mobile', '07700 336699'), phone_type ('Home', '020 7946 0855'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1023',
        full_name ('Ms', 'Lily', 'Gomez'),
        address_Type ('Gomez St.', 'London', '28001'),
        'DC023',
        phones_collection (phone_type ('Mobile', '07700 448822'), phone_type ('Home', '020 7946 0866'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1024',
        full_name ('Mr', 'William', 'Torres'),
        address_Type ('Torres Lane', 'London', 'WC1H 0LQ'),
        'DC024',
        phones_collection (phone_type ('Mobile', '07700 551144'), phone_type ('Home', '020 7946 0877'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1025',
        full_name ('Mrs', 'Evelyn', 'Martinez'),
        address_Type ('Martinez Rd.', 'London', 'W1B 4HX'),
        'DC025',
        phones_collection (phone_type ('Mobile', '07700 663322'), phone_type ('Home', '020 7946 0888'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1026',
        full_name ('Mr', 'Oliver', 'Torres'),
        address_Type ('Torres Lane', 'London', 'W1U 6AX'),
        'DC026',
        phones_collection (phone_type ('Mobile', '07700 775533'), phone_type ('Home', '020 7946 0899'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1027',
        full_name ('Ms', 'Ava', 'Gomez'),
        address_Type ('Gomez St.', 'London', 'WC1H 0LQ'),
        'DC027',
        phones_collection (phone_type ('Mobile', '07700 887744'), phone_type ('Home', '020 7946 0900'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1028',
        full_name ('Mr', 'Henry', 'Lopez'),
        address_Type ('Lopez Lane', 'Edinburgh', 'EH1 5AB'),
        'DC028',
        phones_collection (phone_type ('Mobile', '07700 990011'), phone_type ('Home', '020 7946 0911'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1029',
        full_name ('Mrs', 'Madison', 'Torres'),
        address_Type ('Torres St.', 'Edinburgh', 'EH3 9BN'),
        'DC029',
        phones_collection (phone_type ('Mobile', '07700 112233'), phone_type ('Home', '020 7946 0922'))
    );

INSERT INTO
    customers (customer_id, name, address, ni_num, phone)
VALUES
    (
        'C1030',
        full_name ('Ms', 'Harper', 'Martinez'),
        address_Type ('Martinez Rd.', 'Edinburgh', 'EH2 1EL'),
        'DC030',
        phones_collection (phone_type ('Mobile', '07700 224466'), phone_type ('Home', '020 7946 0933'))
    );



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


/* ----------------- */
/* populate employees data */
/* ----------------- */
INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10001, 'Director', 500000000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10002, 'Supervisor', 55000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10003, 'Worker', 60000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10004, 'Intern', 70000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10005, 'Worker', 100000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10006, 'Supervisor', 200000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10007, 'Worker', 500000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10008, 'Intern', 55000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10009, 'Supervisor', 60000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10010, 'Worker', 70000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10011, 'Intern', 100000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10012, 'Supervisor', 200000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10013, 'Worker', 500000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10014, 'Intern', 55000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10015, 'Supervisor', 60000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10016, 'Supervisor', 70000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10017, 'Intern', 100000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10018, 'Supervisor', 200000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10019, 'Worker', 500000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10020, 'Supervisor', 55000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10021, 'Worker', 60000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10022, 'Intern', 70000);

INSERT INTO
    employees_data (employee_data_id, position, salary)
VALUES
    (10023, 'Supervisor', 100000);

/* ----------------- */
/* populate employees */
/* ----------------- */
INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Dr', 'Michael', 'Brown'),
        address_type ('Brown St.', 'London', '75001'),
        'AB123',
        phones_collection (phone_type ('Mobile', '07701234566'), phone_type ('Home', '0131 496 0355')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10001
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Emily', 'Johnson'),
        address_type ('Johnson Ave.', 'London', '28001'),
        'CD234',
        phones_collection (phone_type ('Mobile', '07701234567'), phone_type ('Home', '0131 496 0356')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10002
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10001
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'David', 'Taylor'),
        address_type ('Taylor Rd.', 'London', '75004'),
        'EF345',
        phones_collection (phone_type ('Mobile', '07701234568'), phone_type ('Home', '0131 496 0357')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10003
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10001
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Sophia', 'Clark'),
        address_type ('Clark Lane', 'London', '28013'),
        'GH456',
        phones_collection (phone_type ('Mobile', '07701234569'), phone_type ('Home', '0131 496 0358')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10004
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10002
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Daniel', 'Wilson'),
        address_type ('Wilson Street', 'London', '28009'),
        'IJ567',
        phones_collection (phone_type ('Mobile', '07701234570'), phone_type ('Home', '0131 496 0359')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10005
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10002
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Olivia', 'Anderson'),
        address_type ('Anderson Rd.', 'Edinburgh', '00186'),
        'KL678',
        phones_collection (phone_type ('Mobile', '07701234571'), phone_type ('Home', '0131 496 0360')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10006
        ),
        (
            SELECT
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10002
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Matthew', 'Thomas'),
        address_type ('Thomas Street', 'Edinburgh', '00153'),
        'MN789',
        phones_collection (phone_type ('Mobile', '07701234572'), phone_type ('Home', '0131 496 0361')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10007
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10006
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Isabella', 'Martinez'),
        address_type ('Martinez Lane', 'Edinburgh', '00184'),
        'OP890',
        phones_collection (phone_type ('Mobile', '07701234573'), phone_type ('Home', '0131 496 0362')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10008
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10006
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Dr', 'Elizabeth', 'Garcia'),
        address_type ('Garcia St.', 'London', '28001'),
        'QR901',
        phones_collection (phone_type ('Mobile', '07701234574'), phone_type ('Home', '0131 496 0363')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10009
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Mia', 'Rodriguez'),
        address_type ('Rodriguez Rd.', 'London', '28008'),
        'ST012',
        phones_collection (phone_type ('Mobile', '07701234575'), phone_type ('Home', '0131 496 0364')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10010
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10009
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'James', 'Hernandez'),
        address_type ('Hernandez Lane', 'London', '28004'),
        'UV123',
        phones_collection (phone_type ('Mobile', '07701234576'), phone_type ('Home', '0131 496 0365')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10011
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10009
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Charlotte', 'Lopez'),
        address_type ('Lopez St.', 'Cardiff', '08007'),
        'WX234',
        phones_collection (phone_type ('Mobile', '07701234577'), phone_type ('Home', '0131 496 0366')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10012
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10010
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Henry', 'Gomez'),
        address_type ('Gomez Rd.', 'Cardiff', '08002'),
        'YZ345',
        phones_collection (phone_type ('Mobile', '07701234578'), phone_type ('Home', '0131 496 0367')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10013
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10010
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Amelia', 'Sanchez'),
        address_type ('Sanchez St.', 'Cardiff', '08008'),
        'ZA456',
        phones_collection (phone_type ('Mobile', '07701234579'), phone_type ('Home', '0131 496 0368')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10014
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Victoria', 'Perez'),
        address_type ('Perez Lane', 'Cardiff', '08009'),
        'AB567',
        phones_collection (phone_type ('Mobile', '07701234580'), phone_type ('Home', '0131 496 0369')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10015
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10014
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Joseph', 'Gonzalez'),
        address_type ('Gonzalez St.', 'Cardiff', '08010'),
        'CD678',
        phones_collection (phone_type ('Mobile', '07701234581'), phone_type ('Home', '0131 496 0370')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10016
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10014
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Grace', 'Diaz'),
        address_type ('Diaz Rd.', 'Cambridge', 'CB2 3AX'),
        'EF789',
        phones_collection (phone_type ('Mobile', '07701234582'), phone_type ('Home', '0131 496 0371')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10017
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Jack', 'Torres'),
        address_type ('Torres Lane', 'Bedford', 'MK40 1PR'),
        'GH890',
        phones_collection (phone_type ('Mobile', '07701234583'), phone_type ('Home', '0131 496 0372')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10018
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10017
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Chloe', 'Fernandez'),
        address_type ('Fernandez Rd.', 'Northampton', 'NN1 2BH'),
        'IJ901',
        phones_collection (phone_type ('Mobile', '07701234584'), phone_type ('Home', '0131 496 0373')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10019
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10017
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Benjamin', 'Ramirez'),
        address_type ('Ramirez St.', 'Hitchin', 'SG5 1LP'),
        'KL012',
        phones_collection (phone_type ('Mobile', '07701234585'), phone_type ('Home', '0131 496 0374')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10020
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Emma', 'Wood'),
        address_type ('Wood Rd.', 'Stevenage', 'SG1 1DH'),
        'MN234',
        phones_collection (phone_type ('Mobile', '07701234586'), phone_type ('Home', '0131 496 0375')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10021
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10020
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Lily', 'Russell'),
        address_type ('Russell Rd.', 'Ware', 'SG12 9BD'),
        'OP345',
        phones_collection (phone_type ('Mobile', '07701234587'), phone_type ('Home', '0131 496 0376')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10022
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10020
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Dr', 'William', 'Baker'),
        address_type ('Baker St.', 'Cardiff', '08007'),
        'QR567',
        phones_collection (phone_type ('Mobile', '07701234588'), phone_type ('Home', '0131 496 0377')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10023
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Benjamin', 'Gonzalez'),
        address_type ('Gonzalez Lane', 'Cardiff', '08002'),
        'YZ345',
        phones_collection (phone_type ('Mobile', '07701234578'), phone_type ('Home', '0131 496 0367')),
        10024,
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10024
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10012
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Amelia', 'Perez'),
        address_type ('Perez St.', 'Cardiff', '08008'),
        'AB456',
        phones_collection (phone_type ('Mobile', '07701234579'), phone_type ('Home', '0131 496 0368')),
        10025,
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10025
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10012
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Ethan', 'Sanchez'),
        address_type ('Sanchez Rd.', 'Cardiff', '08008'),
        'CD567',
        phones_collection (phone_type ('Mobile', '07701234580'), phone_type ('Home', '0131 496 0369')),
        10026,
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10026
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10012
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Chloe', 'Ramirez'),
        address_type ('Ramirez Lane', 'Cardiff', '08007'),
        'EF678',
        phones_collection (phone_type ('Mobile', '07701234581'), phone_type ('Home', '0131 496 0370')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Supervisor'
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Dr', 'Ava', 'Torres'),
        address_type ('Torres St.', 'Cardiff', '08002'),
        'GH890',
        phones_collection (phone_type ('Mobile', '07701234582'), phone_type ('Home', '0131 496 0371')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10016
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Aria', 'Vazquez'),
        address_type ('Vazquez Rd.', 'Cardiff', '08008'),
        'IJ012',
        phones_collection (phone_type ('Mobile', '07701234583'), phone_type ('Home', '0131 496 0372')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10018
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10016
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Leo', 'Gomez'),
        address_type ('Gomez Lane', 'London', '75001'),
        'KL234',
        phones_collection (phone_type ('Mobile', '07701234584'), phone_type ('Home', '0131 496 0373')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10006
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Ms', 'Scarlett', 'Fernandez'),
        address_type ('Fernandez St.', 'London', '75004'),
        'MN456',
        phones_collection (phone_type ('Mobile', '07701234585'), phone_type ('Home', '0131 496 0374')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Supervisor'
        ),
        null
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Jack', 'Lopez'),
        address_type ('Lopez Lane', 'London', '75001'),
        'OP678',
        phones_collection (phone_type ('Mobile', '07701234586'), phone_type ('Home', '0131 496 0375')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Worker'
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10020
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mrs', 'Nora', 'Hernandez'),
        address_type ('Hernandez St.', 'London', '75001'),
        'QR890',
        phones_collection (phone_type ('Mobile', '07701234587'), phone_type ('Home', '0131 496 0376')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 'Intern'
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10020
        )
    );

INSERT INTO
    employees (name, address, ni_num, phone, emp_id, join_date, branch_id, emp_position, supervisor_id)
VALUES
    (
        full_name ('Mr', 'Logan', 'Martinez'),
        address_type ('Martinez Rd.', 'London', '28001'),
        'ST234',
        phones_collection (phone_type ('Mobile', '07701234588'), phone_type ('Home', '0131 496 0377')),
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
                ref (e)
            FROM
                employees_data e
            WHERE
                e.employee_data_id = 10023
        ),
        (
            SELECT
                REF (e)
            FROM
                employees e
            WHERE
                e.emp_id = 10022
        )
    );

/* ----------------- */
/* populate customer_account */
/* ----------------- */
INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1001'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 12345678
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1002'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 23456789
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1003'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 34567890
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1004'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 45678901
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1005'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 56789012
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1006'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 67890123
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1007'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 78901234
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1008'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 89012345
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1009'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 90123456
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1010'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 10234567
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1011'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 21345678
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1012'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 32456789
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1013'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 43567890
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1014'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 54678901
        )
    );

INSERT INTO
    customer_account (customer_id, acc_number)
VALUES
    (
        (
            SELECT
                REF (c)
            FROM
                customers c
            WHERE
                customer_id = 'C1015'
        ),
        (
            SELECT
                REF (a)
            FROM
                accounts a
            WHERE
                acc_number = 65789012
        )
    );

SHOW ERROR;