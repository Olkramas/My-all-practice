commit;

INSERT INTO copy_emp
  SELECT *
  FROM   employees;
  
SELECT *
FROM copy_emp;
--Ŀ���̳� �ѹ��� �ϱ����� �������ڴ� ��밡�� 
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