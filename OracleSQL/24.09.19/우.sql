commit;

SELECT *
FROM   departments;

SELECT *
FROM copy_emp;

SELECT *
FROM copy_emp
WHERE  employee_id= 176;

UPDATE copy_emp
SET    salary = 8888
WHERE  employee_id= 176;

create table aa (
   a number(3) );