SELECT *
FROM employees;

--order by�� select �����ͼ� ������
    
SELECT    last_name,
          job_id,
          department_id,
          hire_date
FROM      employees
ORDER BY  hire_date DESC;

SELECT   employee_Id,
         last_name,
         salary * 12 annsal
FROM     employees
ORDER BY annsal;

SELECT   last_name As "annsal"
FROM     employees;

SELECT   last_name,
         job_id,
         department_id,
         hire_date
FROM     employees
OrDER BY  3;
--department_id �������� ���ĵ�.

SELECT   last_name,
         department_id,
         salary
FROM     employees
ORDER BY department_id, salary DESC;

SELECT   employee_id,
         last_name,
         salary,
         department_id
FROM     employees
WHERE    employee_id = &employee_num;

SELECT   employee_id,
         last_name,
         salary,
         department_id,
         salary
FROM     employees
WHERE    salary = &salary
ORDER BY employee_id DESC;

SELECT   last_name,
         department_id,
         salary * 12,
         job_id
FROM     employees
WHERE    job_id = '&job_title';
--���ڴ� ''�ȿ� ���ߵ�.
--ġȯ������ ��𿡵� �� �� �ִ�. �׷��� �׷��Դ� �� �Ⱦ�.WHERE�� ���°� ����

SELECT   employee_id,
         last_name,
         job_id,
         &&c_id
FROM     employees
ORDER BY &c_Id;
--department_id �ֱ�

SELECT   &c_id
FROM     employees;
--&&�� �޸𸮿� ��� ������. ���� �����ϰ� ���°���.
--&�� �ӽ�

UNDEFINE c_id;



SELECT   *
FROM     employees;

--4. last name�� Matos�� Taylor�� ����� last_name, ���� ID, �׸��� �Ի����� ǥ���Ͻÿ�. 
   --����� �Ի����� �������� �������� �����Ͻÿ�.
SELECT   last_name,
         job_id,
         hire_date
FROM     employees
WHERE    last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;

--5. �μ� 20 �� 50�� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� �̸��� �������� �����ڼ����� ǥ���Ͻÿ�.
SELECT   last_name,
         department_id
FROM     employees
WHERE    department_id IN (20, 50)
ORDER BY last_name;

--9. Ŀ�̼��� �޴� ��� ����� �̸�, �޿� �� Ŀ�̼��� �޿� �� Ŀ�̼��� �������� ������������ �����Ͽ� ǥ���Ͻÿ�.
SELECT   last_name,
         salary,
         commission_pct
FROM     employees
WHERE    commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

SELECT   last_name,
         salary,
         commission_pct
FROM     employees
ORDER BY commission_pct DESC;

--������ �Լ�

DESC dual;

SELECT *
FROM   dual;

SELECT SYSDATE
FROM   dual;

SELECT SYSDATE
FROM   employees;

SELECT 'the job id for ' ||
       UPPER(last_name) ||
       ' is ' ||
       LOWER(job_id)
              AS "EMPLOYEE DETAILS"
FROM   employees;       

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  last_name = 'higgins';

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT employee_id,
       CONCAT(first_name, last_name) NAME,
       job_id,
       LENGTH(last_name),
       INSTR(last_name, 'a') "Contains 'a'?"
FROM   employees
WHERE  SUBSTR(job_id, 4) = 'REP';

SELECT last_name,
       SUBSTR(last_name, 2),
       SUBSTR(last_name, 2, 3),
       SUBSTR(last_name, -2),
       SUBSTR(last_name, -4, 2)
FROM   employees;  

SELECT SUBSTR(hire_date, 1, 2)
FROM   employees;

SELECT 20 || SUBSTR(hire_date, 1, 2)
FROM   employees;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
--WHERE  UPPER(last_name) LIKE 'J%' like�ȿ� ��� ������.
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT *
FROM   employees;

SELECT UPPER(last_name) lname,
       employee_id
FROM   employees
WHERE  SUBSTR(UPPER(employee_id), 1, 1) IN (1)
ORDER BY last_name;

SELECT first_name,
       LPAD(salary, 15, '$') salary
FROM   employees;

SELECT first_name,
       LPAD(salary ,15, '$') salary
FROM   employees;

SELECT LPAD(first_name, 10, '$') name10
FROM   employees;
--�����Լ�
SELECT *
FROM   DUAL;

--ROUND�� �ݿø� ,�ڴ� �Ҽ��� ��°�ڸ����� �Ұ��� ����
SELECT ROUND(45.923),
       ROUND(45.923, 2), 
       ROUND(45.923,0),
       ROUND(45.923,-1)
FROM   DUAL;

--TRUNC ����
SELECT TRUNC(45.923),
       TRUNC(45.923, 2), 
       TRUNC(45.923,0),
       TRUNC(45.923,-1)
FROM   DUAL;

--���� ������ ������ ���� �����
SELECT last_name,
       salary,
       MOD(salary, 5000)
FROM   employees;

SELECT SYSDATE
FROM   dual;
--���� �Է¹��� ���� ���ڸ��� �޾ƾ� �������� ���� ����
SELECT TO_CHAR(SYSDATE, 'YYYY,MM,DD, HH24:MI:SS')
FROM   dual;

SELECT last_name,
       (SYSDATE - hire_date) / 7 AS WEEKS
FROM   employees
WHERE  department_id = 90;

SELECT *
FROM   employees;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "New Salary"
FROM   employees;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "New Salary",
       TRUNC(salary * 1.15 - salary) "Increase"
FROM   employees;

SELECT employee_id,
       hire_date,
       MONTHS_BETWEEN(SYSDATE, hire_date) TENURE,
       ADD_MONTHS(hire_date, 6) REVIEW,
       NEXT_DAY(hire_date, '��'), /*������*/
       LAST_DAY(hire_date)  /**/
FROM   employees;

SELECT NEXT_DAY(SYSDATE, '��'),
       LAST_DAY(SYSDATE)
FROM   dual;



SELECT ROUND(SYSDATE, 'YEAR'), /*7�� 1�� 00�� ����*/
       ROUND(SYSDATE, 'MONTH'),
       ROUND(SYSDATE, 'DAY'), /*������ �� 12�� ����*/
       ROUND(SYSDATE, 'DD')   /*�� 12�� ����*/
FROM   dual;

SELECT TRUNC(SYSDATE, 'YEAR'),
       TRUNC(SYSDATE, 'MONTH'),
       TRUNC(SYSDATE, 'DAY'),
       TRUNC(SYSDATE, 'DD')
FROM   dual;

SELECT *
FROM   employees;

SELECT last_name,
       ROUND(MONTHS_BETWEEN(SYSDATE,hire_date)) "MONTHS_WORKED"
FROM   employees;

SELECT last_name,
       ROUND((SYSDATE - hire_date) / 7) "TENURE",
       department_id 
FROM   employees
WHERE  department_id IN 90;

--���������� ���ڸ� ����־ ���¸� �ٲ���. ����Ŭ�� ���ִµ� �ٸ��� �ȵɼ�����.
SELECT *
FROM   employees
WHERE  department_id = '90';

SELECT employee_id,
       TO_CHAR(hire_date, 'MM/YY') Month_hired
FROM   employees;

ALTER SESSION SET
NLS_DATE_LANGUAGE = AMERICAN;

--��¥�� ���ڷ� �ٲ�

SELECT last_name,
       TO_CHAR(hire_date, 'DD Month YYYY') 
       AS HIREDATE
FROM   employees;
       
SELECT last_name,
       TO_CHAR(hire_date, 'DD month YYYY') 
       AS HIREDATE
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'fmDD Month YYYY') 
       AS HIREDATE
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'Ddspth "of" Month YYYY HH:MI:SS AM')
                                                  AS HIREDATE
FROM   employees;          

SELECT TO_CHAR(salary, '$99,990.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

--����ȭ�� ���� 'L'
SELECT TO_CHAR(salary, 'L99,990.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_CHAR(salary, 'L,11,110.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_NUMBER('$3,400', '$99,999')
FROM   dual;

--��, ���� ���ڶ� ""�ȿ� �� ����.
SELECT TO_DATE('2010��, 02��', 'YYYY"��",MM"��"')
FROM   dual;

--2006�� ������ �Ի��� ��� ������� �̸�, �Ի����� ����Ͻÿ�
SELECT last_name,
       hire_date
FROM   employees
--WHERE  TO_CHAR(hire_date, 'YYYY') < '2006';
WHERE  hire_date < TO_DATE('2006', 'YYYY');

ALTER SESSION SET
NLS_DATE_LANGUAGE = KOREAN;

SELECT last_name ||
       ' earns ' ||
       TO_CHAR(salary, '$999,999.00') ||
       ' monthly but wants '||
       TO_CHAR(salary * 3, '$999,999.00') || 
       '.' "DREAM SALARIES"
FROM   employees;


SELECT last_name,
       hire_date,
       TO_CHAR(
         NEXT_DAY(
           ADD_MONTHS(hire_date, 6), '��'),
             'YYYY.MM.DD DAY') REVIEW
FROM   employees;


--�Ϲ��Լ�
SELECT last_name,
       salary,
       NVL(commission_pct, 0),
       (salary*12) + (salary*12*NVL(commission_pct, 0)) AN_SAL,
       (salary*12) + (salary*12*commission_pct) AN_SAL2
FROM   employees;

--NVL�� �տ� �ٲ� ������ ��İ� �ڿ� ����� ���ƾߵ�. �׷��� �ٲ� �� ����.
SELECT commission_pct,
       NVL(TO_CHAR(commission_pct), 'Ŀ�̼� ����')
FROM   employees;

--NVL2 1���� ���� �ƴҶ� 2, 1���� ���̸� 3�� ���� �� 2,3�� ������ Ÿ���� ���ƾߵ�. 1�� ����
SELECT last_name,
       salary,
       commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') income
FROM   employees
WHERE  department_id IN (50, 80);

--���� ����. NULLIF�� 1,2�� ������ NULL, 1,2�� ���� ������ 1�� ��µ�.
SELECT LENGTH(first_name) "expr1",
       LENGTH(last_name) "expr1",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) AS result
FROM   employees;

--WHEN ???�̸� THAN???���
SELECT last_name,
       job_id,
       salary,
       (CASE job_id WHEN 'IT_PROG'   THEN 1.10*salary
                    WHEN 'ST_CLERK'  THEN 1.15*salary
                    WHEN 'SA_REP'    THEN 1.20*salary
                                     ELSE salary
        END) "REVISED_SALARY"
FROM employees;

SELECT last_name,
       job_id,
       salary,
       (CASE WHEN job_id = 'IT_PROG'  THEN 1.10*salary
             WHEN job_id = 'ST_CLERK' THEN 1.15*salary
             WHEN job_id = 'SA_REP'   THEN 1.20*salary
                                      ELSE salary
        END) "REVISED_SALARY"
FROM employees;

-- ?���� �۴ٴ� ����������, ?���� ũ�ٴ� ū ������ ������ߵ�.
SELECT last_name,
       salary,
       (CASE WHEN salary < 5000  THEN 'Low'
             WHEN salary < 10000 THEN 'Medium'
             WHEN salary < 20000 THEN 'Good'
                                 ELSE 'Excellent'
        END) qualified_salary
FROM    employees;