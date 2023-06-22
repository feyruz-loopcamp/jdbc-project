select * from employees;
/*
 Creating a table
    table name
    columnName dataType constrains
    ....
    ....
 */

/*
  Creat a table that has a name loopcamp
     columnName: STUDENT_ID | data type: Number | Character length: 30 | PK
     columnName: FIRS_NAME  | data type: String | Character length: 30 | can not be null
     columnName: LAST_NAME  | data type: String | Character length: 30 | can not be null
     columnName: BATCH_NO   | data type: NUmber | can be null and duplicate
*/

CREATE TABLE loopcamp
(
    STUDENT_ID INTEGER PRIMARY KEY,
    FIRS_NAME  varchar(30) not null,
    LAST_NAME  varchar(30) not null,
    BATCH_NO   INteger
);

select * from loopcamp;


-- Insert some data into table
INSERT INTO loopcamp (STUDENT_ID, FIRS_NAME, LAST_NAME, BATCH_NO)
   VALUES (1, 'Nazakat', 'Hanifayeva', 001);

select * from loopcamp;


INSERT INTO loopcamp (STUDENT_ID, FIRS_NAME, LAST_NAME, BATCH_NO)
VALUES (2, 'Ruslan', 'Heybatov', 002);

select * from loopcamp;

INSERT INTO loopcamp (STUDENT_ID, FIRS_NAME, LAST_NAME, BATCH_NO)
VALUES (3, 'Natalia', 'Liubchenko', 003);

select * from loopcamp;


-- How to update the values for all rows for specific column
UPDATE loopcamp
SET BATCH_NO = 1;

-- RUn the query to see all info from loopcamp table. You can go up and find that query and run or you can write the same query again.


--How to delete specific row from table. Ex: if student_id is 1
-- NOTE: Deleting the row, will not push everything to the beginning starting from 1 for STUDENT_ID
DELETE from loopcamp
where STUDENT_ID = 1;

select * from loopcamp;


-- How to add a new column?
ALTER table loopcamp ADD GENDER varchar(20);


UPDATE loopcamp
SET GENDER = 'Male'
WHERE FIRS_NAME = 'Ruslan';

select * from loopcamp
where FIRS_NAME = 'Ruslan';

select * from loopcamp;


UPDATE loopcamp
SET GENDER = 'Female'
WHERE FIRS_NAME = 'Natalia';


Alter table loopcamp add salary INTEGER;

UPDATE loopcamp
set salary = 140000;

-- Increase salary by 10K for all
UPDATE loopcamp
set salary = salary+10000;

select * from loopcamp;


-- How to update the COLUMN_NAME in the table
-- UPDATE COLUMN: SALARY to be ANNUAL_SALARY
ALTER TABLE LOOPCAMP
    RENAME COLUMN  SALARY TO ANNUAL_SALARY;

ALTER TABLE loopcamp
    RENAME COLUMN student_id TO id;


-- HOW TO DELETE ALL VALUE FROM COLUMN
UPDATE loopcamp
SET ANNUAL_SALARY = null;

UPDATE loopcamp
set ANNUAL_SALARY = 140000;

select * from loopcamp;

-- How to Drop or ERASE the ENTIRE COLUMN including column name
ALTER TABLE loopcamp
drop column ANNUAL_SALARY;


-- HOw to rename TABlE NAME
ALTER TABLE loopcamp
RENAME TO loopacademy;

select * from loopcamp;
select * from loopacademy;


-- How to delete entire table data
TRUNCATE TABLE loopacademy;


-- How to delete the table completely including its structure
DROP TABLE loopacademy;








