select * from employees;

/*
 rownum
 it limits the data that you want into result as a row
 it works with < and <=
 */

 -- display only 10 rows from employee
select * from employees
where ROWNUM < 11;

-- display first 5 highest salary
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

--display all info from employees who is getting 5th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

----display all info from employees who is getting 15th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 16;

----display all info from employees who is getting 213th highest salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 214;

--display all info from employees who is getting 5th highest salary
select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 6);