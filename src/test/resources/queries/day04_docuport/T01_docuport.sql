SELECT  * from document.users order by first_name;

--Go to beta.docuport UI and sign in with advisor role and see it from there and come back to DB and search
SELECT * FROM DOCUMENT.users
WHERE email_address = 'Aksdjkdj@gmail.com';


SELECT * FROM DOCUMENT.users
WHERE supervisor_user_id IS NOT NULL;

SELECT * FROM DOCUMENT.users
WHERE users.department_id IS NOT NULL;

--Go to beta.docuport UI and sign in with advisor role and add a client and come back to DB and search
SELECT * FROM document.clients
WHERE first_name = 'SQL';


SELECT  COUNT(*) from document.users where role_name = 'advisor';
SELECT  * from document.users where role_name IS NULL;
SELECT  * from document.clients order by first_name;
SELECT  * from identity.users;
SELECT  COUNT(*) from document.users;
SELECT  * from document.leads;


SELECT  * from document.clients where social_security_number = '657-85-4215';


select * from identity.departments;