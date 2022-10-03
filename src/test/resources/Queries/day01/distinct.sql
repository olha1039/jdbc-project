-- distinct - removes duplicate from requested result. original is still in  a database

--display only firstname from employees table
select FIRST_NAME from EMPLOYEES;

--get me all unique firstname from employees
select distinct FIRST_NAME from EMPLOYEES;

--get unique job ids from employees
select distinct JOB_ID from EMPLOYEES;

--get unique country ids from locations
select distinct COUNTRY_ID from LOCATIONS;

