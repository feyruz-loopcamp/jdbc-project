select * from employees;

/*
 Lets create our own customer table and address table
 */


 CREATE TABLE address (
    address_id INTEGER PRIMARY KEY ,
    address varchar(50) NOT NULL ,
    phone INTEGER not null
 );
INSERT INTO address (address_id, address, phone) VALUES (5, '1111 Haney Way', 1234567890);
INSERT INTO address (address_id, address, phone) VALUES (7, '1111 Bony Way', 2340982354);
INSERT INTO address (address_id, address, phone) VALUES (8, '1111 Tommy Way', 23454675622);
INSERT INTO address (address_id, address, phone) VALUES (10, '1111 Holly Way', 2346532235);
INSERT INTO address (address_id, address, phone) VALUES (11, '1111 Molly Way', 2345226866);

select *
from address;


 CREATE TABLE customer (
     customer_id INTEGER PRIMARY KEY ,
     first_name varchar(30) not null,
     last_name varchar(40) not null,
     address_id INTEGER REFERENCES address(address_id)   -- This line show that this column is the FK that references in the table address PK
 );

INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES  (1, 'Mary', 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES  (2, 'Patricia', 'Johnson', NULL);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES  (3, 'Linda', 'Williams', 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES  (4, 'Barbara', 'Johns', 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES  (5, 'Elizabeth', 'Brown', NULl);

select *
from customer;


/*
 INNER JOINS
    -Only matching portion of BOTH tables.
    -NOTE: On the query we can write either JOIN or INNER JOIN. THey both do the same thing.
    -Inner Join eliminates if there is no MATCHING PARTS
 */

SELECT FIrst_NAME, last_name, address, phone
FROM CUSTOMER INNER JOIN ADDRESS
    ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


-- How about if I want to see the address id as well
SELECT FIrst_NAME, last_name, address, phone, customer.address_id, address.address_id
FROM CUSTOMER INNER JOIN ADDRESS
                         ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;



/*
    LEFT OUTER JOINS

    MATCHING part + only UNIQUE ones to the LEFT Table
    -NOTE: On the query we can write either LEFT OUTER JOIN  or LEFT JOIN. THey both do the same thing.


 */

SELECT  first_name, last_name, address, phone
 FROM CUSTOMER LEFT OUTER JOIN ADDRESS
     ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


/*
    LEFT OUTER JOIN with WHERE condition
    -This way we can find which data from left table has no values in right table by doing WHERE condition IS NULL
 */

-- This will give the same result as INNER JOIN but here it is left outer join with where condition
SELECT  first_name, last_name, address, phone
FROM CUSTOMER LEFT OUTER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
WHERE address.address_id IS NOT NULL ;


--This way we can find which data from left table has no values in right table by doing WHERE condition IS NULL
SELECT  first_name, last_name, address, phone
FROM CUSTOMER LEFT OUTER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
WHERE address.address_id IS NULL ;




/*
    RIGHT OUTER JOINS

    MATCHING part + only UNIQUE ones to the RIGHT Table
    -NOTE: On the query we can write either RIGHT OUTER JOIN  or RIGHT JOIN. THey both do the same thing.

 */


SELECT  first_name, last_name, address, phone
FROM CUSTOMER RIGHT OUTER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- The query below is same as above but we used abbreviation for each table.
SELECT  first_name, last_name, address, phone
FROM CUSTOMER C RIGHT OUTER JOIN ADDRESS A
    ON C.ADDRESS_ID = A.ADDRESS_ID;


SELECT  first_name, last_name, address, phone, C.address_id, A.address_id
FROM CUSTOMER C RIGHT OUTER JOIN ADDRESS A
ON C.ADDRESS_ID = A.ADDRESS_ID;



/*
    RIGHT OUTER JOIN with WHERE condition
    -This way we can find which data from right table has no values in left table by doing WHERE condition IS NULL
 */

-- This will give the same result as INNER JOIN but here it is left outer join with where condition
SELECT  first_name, last_name, address, phone
FROM CUSTOMER RIGHT OUTER JOIN ADDRESS
                              ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
WHERE customer.address_id IS NOT NULL ;


--This way we can find which data from left table has no values in right table by doing WHERE condition IS NULL
SELECT  first_name, last_name, address, phone
FROM CUSTOMER RIGHT OUTER JOIN ADDRESS
                              ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
WHERE customer.address_id IS NULL ;



/*
 SAMPLE INTERVIEW QUESTION
    FInd the me the customer with their address and show me whose last name ends with 's'
 */

SELECT FIrst_NAME, last_name, address, phone
FROM CUSTOMER INNER JOIN ADDRESS
                         ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where last_name LIKE '%s';




/*
 FULL OUTER JOIN

 IT will will had all data that is matching with both tables.
 Also, the one from left side + the one from right side assign NULL values if they do NOT related data in another table.
 */

 SELECT customer_id, FIrst_NAME, last_name, address, phone
 FROM CUSTOMER FULL OUTER JOIN ADDRESS
     ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;



/*
 FULL OUTER JOIN WITH WHERE
 */
-- How t show data with EXCLUDING THE MATCHING PART
select *
FROM CUSTOMER FULL OUTER JOIN ADDRESS ON
        customer.address_id = address.address_id
where customer.address_id is NULL
OR address.address_id is NULL;


select customer_id, first_name, last_name, address, phone
FROM CUSTOMER FULL OUTER JOIN ADDRESS ON
        customer.address_id = address.address_id
where customer.address_id is NULL
   OR address.address_id is NULL;