--we will use WHERE keyword to filter requested result

--display firstname, lastname, salary from employees table where first name is David

select * from employees
where FIRST_NAME = 'David' and LAST_NAME = 'Lee';

select first_name, LAST_NAME, SALARY
from employees
where FIRST_NAME = 'David'
  and LAST_NAME = 'Lee';
--whatever you put in ' ' single quote it is Case Sensitive

--display all info from employees who is making salary more then 6k
select * from EMPLOYEES
where SALARY > 6000;

--display email info from employees who is making salary less then and equal 6000
select EMAIL from EMPLOYEES
where SALARY <= 6000;

--display first name,salary from employees who is making more then 6000 and department id=80
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY > 6000 and DEPARTMENT_ID = 80;

--display firstname, salary from employees who is making more than and equal 3000 and less than or equal 6000
--BETWEEN lower and upper, boundries are included
-- it wil give all matching result within range
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY >= 3000 AND SALARY <= 6000;


--display all info from employees who is working as IT_PROG and SA_REP
-- IN clauses: it uses or logic
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

select * from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

select * from EMPLOYEES
where JOB_ID not in ('IT_PROG','SA_REP','FI_MGR');

-- get all info from locations table where city is Rome, Tokio
select * from LOCATIONS
where CITY in ('Tokyo', 'Roma');

-- dispay all information from employees where id is equal 113,145,124,122
select  * from EMPLOYEES
where EMPLOYEE_ID in (113,145,124,122);

--NULL and not NUll
select * from EMPLOYEES
where DEPARTMENT_ID is NULL;

select  * from EMPLOYEES
where DEPARTMENT_ID is not NULL;





