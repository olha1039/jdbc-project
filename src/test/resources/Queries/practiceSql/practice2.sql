--SELECT MAX(salary) FROM employees
SELECT MAX(SALARY) FROM EMAPLOYEES;
-- WHO IS THE PERSON GETTING THIS SALARY
SELECT FIRST_NAME FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY FROM EMAPLOYEES);
--2d max salary
SELECT MAX(SALARY) FROM (select distinct salary from employees order by salary desc)
where rownum < 3;
-- 3d max salary
select max(salary) from (select distinct salary from employees order by salary desc)
where rownum < 4;
-- find first last salary find lowest salaries
select first_name, last_name, salary from employees
where salary = (select min(salary) from employees);

--employees whos salaries are below the average

-- find names of employee start with 'A'

-- maximum salaries in each department

-- duplicate names in employees

-- select unique records from a table
