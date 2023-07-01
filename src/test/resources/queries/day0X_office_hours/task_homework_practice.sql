select * from employees;


--1.Display all first_name and related department_name
SELECT FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--2. Display all first_name and department_name including the  department without employee

SELECT  FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- This will give the same result as well
SELECT  FIRST_NAME, DEPARTMENT_NAME
FROM DEPARTMENTS d left join EMPLOYEES e
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--3.Display all first_name and department_name including the  employee without department (Kimberly)
-- The following is saying get me matching Department_Id and all the Employee which do NOT have Department Name
SELECT  FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID


SELECT FIRST_NAME,DEPARTMENT_NAME
from DEPARTMENTS Right join EMPLOYEES
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;


--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments

SELECT FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES e full join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID



--5.Display All cities and related country names
SELECT CITY, COUNTRY_NAME
FROM LOCATIONS l join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city
SELECT CITY, COUNTRY_NAME
FROM LOCATIONS l right join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;


SELECT CITY, COUNTRY_NAME
FROM COUNTRIES c left join LOCATIONS l
on l.COUNTRY_ID = c.COUNTRY_ID;


--7.Display all department(Department) name and street address(Location)
SELECT DEPARTMENT_NAME, STREET_ADDRESS
FROM DEPARTMENTS d join LOCATIONS l
on l.LOCATION_ID = d.LOCATION_ID;



--8.Display first_name,last_name and department_name,city for all
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
FROM EMPLOYEES e inner join DEPARTMENTS d
    ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l
    ON d.LOCATION_ID = l.LOCATION_ID;



SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
FROM EMPLOYEES e left join DEPARTMENTS d
                            ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 left join LOCATIONS l
                            ON d.LOCATION_ID = l.LOCATION_ID;



--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME ,CITY,COUNTRY_NAME
FROM EMPLOYEES e JOIN DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                JOIN LOCATIONS l
    on d.LOCATION_ID = l.LOCATION_ID
                JOIN COUNTRIES c
    on l.COUNTRY_ID = c.COUNTRY_ID;



--10.Display first_name,last_name and department_name,city who is living in United Kingdom

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME ,CITY, COUNTRY_NAME
FROM EMPLOYEES e JOIN DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 JOIN LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 JOIN COUNTRIES c
                      on l.COUNTRY_ID = c.COUNTRY_ID
WHERE COUNTRY_NAME = 'United Kingdom';


--11.Display how many employee we have for each country name
select COUNTRY_NAME, count(*)
FROM EMPLOYEES e JOIN DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 JOIN LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 JOIN COUNTRIES c
                      on l.COUNTRY_ID = c.COUNTRY_ID
GROUP BY COUNTRY_NAME
order by COUNT(*);

