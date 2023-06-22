select * from employees;

-- Let's say we ant to print out employee full name with their manager's name
--Examine on your own but do not spent a  lot of time on this.
SELECT e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.LAST_NAME
FROM EMPLOYEES E1  JOIN  EMPLOYEES E2
    ON e1.manager_id = e2.employee_id;


select * from EMPLOYEES
where LAST_NAME = 'Cambrault';

select * from EMPLOYEES
where EMPLOYEE_ID = 145;



-- ----------------------------------------------

-- FOCUS ON THIS SECTION.
select * from employees;

SELECT worker.first_name,  manager.FIRST_NAME
   FROM EMPLOYEES worker inner join EMPLOYEES manager
    ON worker.manager_id = manager.employee_id;









