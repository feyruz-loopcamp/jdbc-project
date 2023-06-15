select * from employees;
/*
    CREATE TABLE tableName (
        colName1 dataType constrains,
        colName2 dataType constrains,
        colName3 dataType constrains,
        colName4 dataType constrains
        .....
    );

 */

 CREATE TABLE loopteam (
     empId INTEGER PRIMARY KEY,         -- this can NOT be null and HAS TO BE Unique
     firstname varchar(30) not null,    -- CAN NOT BE null
     jobtitle varchar(20) not null,     -- CAN NOT BE NULL
     age INTEGER,                       -- There is no CONSTRAINS - meaning it can be NULL
     salary INTEGER                     -- There is no CONSTRAINS - meaning it can be NULL
 );

select * from loopteam;



/*
    INSERT INTO tableName (column1, column2, .......)
    VALUES (value1, value2, ......... );
 */

 INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
 VALUES (1, 'Tom', 'SDET', 50, 125000);

INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
VALUES (2, 'Jame', 'PO', 30, 120000);

-- How to save our changes.
commit;
-- commit work; -- this is doing the same thing as above


-- You can use this query to add multiple lines of data at the same time.
/*
    INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
    VALUES ((1, 'Tom', 'SDET', 30, 125000),
            (2, 'Jame', 'PO', 30, 120000));

 */

INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
VALUES (3, 'John', 'SM', 40, 110000);


INSERT INTO loopteam (empId, firstname, jobtitle, age, salary)
VALUES (4, 'Henry', 'DEV', 40, 140000);



/*
    UPDATE table_name
	SET column1 = newValue1,
	    column2 = newValue2 ,
	    ...
	WHERE condition;
 */

 UPDATE loopteam
 SET salary = 155000
 where firstname = 'John';

select * from loopteam;

-- increase ALL employees salary
UPDATE loopteam
SET salary = salary + 5000;

-- increase the salary for those who has job title as SDET by 10000
UPDATE loopteam
set salary = salary+10000
where jobtitle = 'SDET';


/*
    DELETE FROM table_name
	WHERE condition;
 */

 DELETE from loopteam
 where empId = 1;

select * from loopteam;



/*
    ALTER TABLE table_name action;
 */

-- Here I added a new column which had data type as varchar (String) which can have null values as well
 ALTER TABLE loopteam ADD gender varchar(20);

select * from loopteam;


-- If we do not have any WHERE contiond in the query, it will update entire column
UPDATE loopteam
SET gender = 'Male';

UPDATE loopteam
SET gender = 'Female'
WHERE firstname = 'Jame';



--UPDATE the salary column name
ALTER TABLE loopteam
RENAME COLUMN salary TO ANNUAL_SALARY;

select * from loopteam;


-- UPDATE gender column name -- > sex
ALTER table loopteam
rename column gender to sex;



-- How to DROP / DELETE the column
ALTER TABLE loopteam
DROP COLUMN sex;

select * from loopteam;



-- HOW To RENAME Table
ALTER TABLE loopteam
RENAME TO agileteam;

select * from loopteam; -- This will not work because there is no table with that name anymore
select * from agileteam;


-- TRUNCATE

/*
 TRUNCATE table_name;
 */

TRUNCATE TABLE agileteam;
select * from agileteam;


-- DELETE whole table with its structure
/*
 DROP TABLE table_name;
 */

DROP TABLE agileteam;
select *
from agileteam;



/*

    Q:  What is the difference between TRUNCATE and DROP?
    A:
        Truncate:   will delete all the table content/data but table will still be there
        Drop:       will delete table itself with data. No table available after this.
 */





