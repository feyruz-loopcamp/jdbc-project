select * from employees;

/*
    LETS create two simple tables
 */

 CREATE table Developers (
     id_num INTEGER PRIMARY KEY,
     names varchar(30),
     salary integer
 );


CREATE TABLE Testers (
    id_num INTEGER PRIMARY KEY,
    names varchar (30),
    salary integer
);



insert into Developers values (1, 'Mike', 155000);
insert into Developers values (2, 'John', 142000);
insert into Developers values (3, 'Steven', 85000);
insert into Developers values (4, 'Maria', 120000);


insert into TESTERS values (1, 'Natalia', 1300000);
insert into TESTERS values (2, 'Gunel', 1300000);
insert into TESTERS values (3, 'Frank', 1300000);


select * from DEVELOPERS;
select * from TESTERS;

-- what was the query to save our works.
commit;


/*
 UNION ALL - Combines two table together without removing duplicates.
 */
select * from DEVELOPERS
union all
select * from TESTERS;

select names from DEVELOPERS
union all
select names from TESTERS;


-- As long as it is same DATA TYPE and SAME DATA TYPE ORDER, the column name does not have to match
select id_num from DEVELOPERS
union all
select salary from TESTERS;


-- Updating name to have duplicates.
UPDATE TESTERS
SET NAMES = 'Steven'
where id_num = 2;

select * from TESTERS;




/*
 MINUS - FROM FIRST TABLE, IT WILL REMOVE THE MATCHING PART THAT IS IN SECOND TABLE
 */
 SELECT NAMES FROM DEVELOPERS -- Mike, John, Stevan, Maria - Natalia, Steven, Maria
 MINUS
 SELECT NAMES FROM TESTERS;   -- Natalia, Steven, Maria

 /*
    5, 4, 7, 8

    MINUS --  5, 4, 7, 8 - 4, 7, 8, 9 ===> 5

    4, 7, 8
  */

UPDATE TESTERS
SET NAMES = 'Maria'
WHERE ID_NUM = 3;


/*
 INTERSECT -  it will retur the result which is in both table column
 */

SELECT NAMES FROM DEVELOPERS
INTERSECT
SELECT NAMES FROM TESTERS;


UPDATE TESTERS
SET NAMES = 'Shelby'
where id_num = 2;

select * from TESTERS;
commit;
