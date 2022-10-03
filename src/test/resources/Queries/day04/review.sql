select * from employees;

--find the 3rd maximum salary from the employees table (do not  include duplicates)

select min(salary) from (select distinct salary from EMPLOYEES order by Salary desc)
where ROWNUM < 4;

--show information about employee
select * from EMPLOYEES
where SALARY = (select min(salary) from (select distinct salary from EMPLOYEES order by Salary desc)
                where ROWNUM < 4);

--find the 3th maximum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM < 4;

select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
                where ROWNUM < 4);


