SELECT last_name "Name",
       salary * 12 "Annual Salary"
FROM   employees;       

SELECT last_name || job_id As "Employees"
FROM   employees;

SELECT first_name || last_name || job_id As "Employees"
FROM   employees;

SELECT last_name || ' is a ' || job_id As  "employees Details"
FROM   employees;

SELECT last_name ||
       ' is a ' ||
       job_id || 3
       As "employees Details"
FROM   employees;

SELECT department_id
FROM   employees;

SELECT DISTINCT department_id
FROM   employees;

SELECT DISTINCT department_id, job_id
FROM   employees;

SELECT *
FROM   departments;

SELECT *
FROM   employees;
2. EMPLOYEES ���̺���
  ��� ��ȣ�� ���� �տ� ���� �̾ �� ����� �̸�(last_name), ���� �ڵ�(job_id), �Ի���(hire_date)�� ������ ���Ǹ� �ۼ��Ͻÿ�. HIRE_DATE ���� STARTDATE��� ��Ī�� �����Ͻÿ�. 
SELECT employee_id,
       last_name,
       job_id,
       hire_date
FROM   employees;

--2. EMPLOYEES ���̺���
  --��� ��ȣ�� ���� �տ� ���� �̾ �� ����� �̸�(last_name), ���� �ڵ�(job_id), 
  --�Ի���(hire_date)�� ������ ���Ǹ� �ۼ��Ͻÿ�. HIRE_DATE ���� STARTDATE��� ��Ī�� �����Ͻÿ�. 
SELECT job_id,
       last_name,
       job_id,
       hire_date "STARTDATE"
FROM   employees;
--3. EMPLOYEES ���̺��� ���� �ڵ�(job_id)�� �ߺ����� �ʰ� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT DISTINCT job_id
FROM   employees;

--4. 2���� ��ɹ��� �����Ͻÿ�. �Ӹ����� ���� Emp #, Employee, 
--Job �� Hire Date�� ����� ���� ���Ǹ� �ٽ� �����Ͻÿ�.
SELECT job_id "Emp #",
       last_name "Employee",
       job_id "Job",
       hire_date "Hire Date"
FROM   employees;

--5. ���� ID(job_id)�� �̸�(last_name)�� ������ ���� ��ǥ �� �������� �����Ͽ� ǥ���ϰ�
--�� �̸��� Employee and Title�� �����Ͻÿ�.
SELECT job_id || 
       ',' ||
       last_name "Employee and Title"
FROM   employees;
       
SELECT employee_id,
       last_name,
       job_id,
       department_id
FROM   employees
WHERE  department_id = 90;

SELECT employee_id,
       last_name,
       job_id,
       department_id
FROM   employees
WHERE  department_id = 110;

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'Whalen'; 

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'whalen';

SELECT last_name
FROM   employees
WHERE  hire_date = '06/01/03';

SELECT hire_date
FROM   employees
WHERE  last_name = 'Hunold';

SELECT last_name,
       salary
FROM   employees
WHERE  salary <= 3000;

SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

-- ���� ����
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 3500 AND 2500;

SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'King' AND 'Smith';

SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'A' AND 'Zzzzzz';

SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE  manager_id IN (100, 101, 201);

SELECT employee_id,
       manager_id,
       department_id
FROM   employees
WHERE  last_name In ('Hartstein', 'Vargas');

SELECT first_name
FROM   employees
WHERE  first_name LIKE 'S%';

SELECT first_name
FROM   employees
WHERE  first_name LIKE '%s%';

SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';

SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE 'SA_%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE 'SA\_%' ESCAPE '\';


--null �� �ƴ°͵� ���
SELECT last_name,
       manager_id
FROM   employees
WHERE  manager_id IS NOT NULL;

SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
  AND  job_id LIKE '%MAN%';
  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
   OR  job_id LIKE '%MAN%';
   
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  job_id = 'SA_REP'
   OR  job_id = 'AD_PRES'
  AND  salary > 15000;
  
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  (job_id = 'SA_REP'
   OR  job_id = 'AD_PRES')
  AND  salary > 15000;

--1. �޿��� 12,000�� �Ѵ� ����� �̸��� �޿��� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;
2. ��� ��ȣ�� 176�� ����� �̸��� �μ� ��ȣ�� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT *
FROM   employees;

SELECT last_name,
       department_id,
FROM   employees
WHERE  employee_id IN 176;

3. �޿��� 5,000���� 12,000 ���̿� ���Ե��� �ʴ� 
   ��� ����� �̸��� �޿��� ǥ���ϵ��� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000;
4. last name�� Matos�� Taylor�� ����� last_name, ���� ID, �׸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       job_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos', 'Taylor');
6. �޿��� 5,000�� 12,000 �����̰� �μ� ��ȣ�� 20 �Ǵ� 50�� ����� �̸��� �޿��� �����ϵ��� ���Ǹ� �ۼ��Ͻÿ�. 
   �� ���̺��� Employee�� Monthly Salary�� ���� �����Ͻÿ�.
SELECT last_name,
       salary,
       department_id
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN (20, 50);
7. 2004�⿡ �Ի��� ��� ����� �̸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';
8. �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
--11. �̸��� a�� e�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%a%')
  AND  last_name LIKE ('%e%');
--12. ������ ���� ���(SA_REP) �Ǵ� �繫��(ST_CLERK)�̸鼭 
    --�޿��� 2,500, 3,500, 7,000�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.
SELECT salary,
       job_id,
       last_name
FROM   employees
WHERE  (job_id LIKE '%SA_REP'
   OR  job_id LIKE '%ST_CLERK')
  AND  salary IN (2500, 3500, 7000);
--13. Ŀ�̼� ����(commission_pct)�� 20%�� ��� ����� �̸�, �޿� �� Ŀ�̼��� ǥ���ϵ��� 
    --��ɹ��� �ۼ��Ͽ� �����Ͻÿ�.
SELECT *
FROM   employees;

SELECT last_name,
       salary,
       commission_pct
FROM   employees
WHERE  commission_pct IN 0.2;
       