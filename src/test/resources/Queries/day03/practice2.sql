select * from employees;

-- 1. display full addresses from locations table in a single column
select STREET_ADDRESS|| ' ' || POSTAL_CODE || ' ' || CITY || ' ' ||
       STATE_PROVINCE || ' ' || COUNTRY_ID as "ADDRESS" from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary  in employees table
select * from EMPLOYEES
where SALARY = (select min(SALARY) from Employees);

-- 3. display the second minimum salary from the employees
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
where ROWNUM < 3;

-- 4. display all information of the employee who has the second minimum  salary
select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY)
                where ROWNUM < 3);

select * from employees
where salary = ( select min(salary) from employees
                 where salary > (select
                                     min(salary) from employees) );
-- 5. list all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES);

-- 6. list all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY < (select avg(SALARY) from EMPLOYEES);

-- 7. display manager name of 'Neena'
select FIRST_NAME,LAST_NAME from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES where FIRST_NAME = 'Neena');

-- 8. find the 3rd maximum salary from the employees table (do not include  duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 4;

-- 9. find the 5th maximum salary from the employees table (do not include  duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 6;


-- 10. find the 7th maximum salary from the employees table (do not  include duplicates)
select min(salary) from (select distinct salary from employees
                         order by salary desc)
where rownum < 8;

-- 11. find the 10th maximum salary from the employees table (do not  include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 11;

-- 12. find the 3rd minimum salary from the employees table (do not  include duplicates)
select max(salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM < 4;

-- 13. find the 5th minimum salary from the employees table (do not  include duplicates)
select max(salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM < 6;

-- 14. find the 7th maximum salary from the employees table (do not  include duplicates)
select max(salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM < 8;

-- 15. find the 10th maximum salary from the employees table (do not  include duplicates)
select max(salary) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM < 11;





