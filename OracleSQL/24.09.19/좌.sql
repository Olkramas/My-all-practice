commit;

INSERT INTO copy_emp
  SELECT *
  FROM   employees;
  
SELECT *
FROM copy_emp;
--커밋이나 롤백을 하기전엔 현재사용자는 사용가능 
commit;

UPDATE COPY_EMP
SET    salary = 9999
WHERE  employee_id = 176;

SELECT *
FROM   copy_emp
where  employee_id = 176;

rollback;

SELECT *
FROM copy_emp
WHERE  employee_id= 176;