select * from employees;

create view EmployeesInfo as
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) || '.' as name_intials,
FIRST_NAME || ' makes $' || SALARY as employee_salary from EMPLOYEES;

select * from EmployeesInfo;
select name_intials from EmployeesInfo;

