select *
from tab;

select *
from employees;

select *
from departments;

SELECT *
FROM departments;

SELECT department_id,
       department_name,
       manager_id,
       location_id
FROM   departments;

SELECT department_id,
       location_id
FROM   departments;

SELECT location_id,
       department_id
FROM   departments;    

SELECT location_id,
       location_id
FROM   departments;    

SELECT last_name,
       salary,
       salary+300
FROM   employees;

SELECT last_name,
       salary,
       12 * salary + 100
FROM   employees;

SELECT last_name,
       salary,
       12 * (salary + 100)
FROM   employees;       

SELECT last_name,
       job_id,
       salary,
       commission_pct
FROM   employees;
/*�ּ��ּ�*/
SELECT last_name,
       commission_pct,
       12 * salary * commission_pct
FROM   employees;
--��� ǥ���Ŀ� null�� ���� null
SELECT last_name,
       commission_pct,
       12 * salary * NVL(commission_pct,0)
FROM   employees;

--As�� �÷��� �̸��� �ٲ��� �� ����
SELECT last_name AS name,
       commission_pct comm
FROM   employees;
--����ǥ�ε� �ٲ��� �� ����
SELECT last_name "Name",
       salary*12 "Annual Salary"
FROM   employees;     
-- ||���� ������ �����ְ�(���Ῥ���� ���) �̸��� �ٲ��� ���
SELECT last_name || job_id As "Employees"
FROM   employees;
-- ||���� ��� �ٿ��� �������
SELECT first_name || last_name || job_id As "Employees"
FROM   employees;
--ū����ǥ�� �÷� �˷��ƽ� �ڿ��� ���� �� ����� ū����ǥ ���� �� ����
--��¥, ���� �����ʹ� ''�� �ѷ��Ѵ�.
SELECT last_name || ' is a ' || job_id As "employees Details"
FROM   employees;

--���ڴ� �Ƚε� ��.
SELECT last_name ||
       ' is a ' || 
       job_id || 3
       As "employees Details"
FROM   employees;
--�ߺ����� ����
SELECT department_id
FROM   employees;
--�ߺ��� �Ⱥ��̰� �ϱ�
SELECT DISTINCT department_id
FROM   employees;
--DISTINCT����� ���� �ٳ����� ����
SELECT DISTINCT department_id, job_id
FROM   employees;

desc employees;



--1. DEPARTMENTS ���̺��� ��� �����͸� ��ȸ�Ͻÿ�.
SELECT *
FROM employees;
2. EMPLOYEES ���̺���
  ��� ��ȣ�� ���� �տ� ���� �̾ �� ����� �̸�(last_name), ���� �ڵ�(job_id), �Ի���(hire_date)�� ������ ���Ǹ� �ۼ��Ͻÿ�. HIRE_DATE ���� STARTDATE��� ��Ī�� �����Ͻÿ�. 
SELECT last_name,
       job_id,
       hire_date As "STARTDATE"
FROM   employees;
3. EMPLOYEES ���̺��� ���� �ڵ�(job_id)�� �ߺ����� �ʰ� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT DISTINCT job_id
FROM   employees;

4. 2���� ��ɹ��� �����Ͻÿ�. �Ӹ����� ���� Emp #, Employee, Job �� Hire Date�� ����� ���� ���Ǹ� �ٽ� �����Ͻÿ�.
SELECT last_name As "Emp",
       job_id As "Employee",
       hire_date As "job �� Hire Date"
FROM   employees;

SELECT last_name As "Emp",
       job_id As "Employee",
       hire_date As "job �� Hire Date"
FROM   employees;
5. ���� ID(job_id)�� �̸�(last_name)�� ������ ���� ��ǥ �� �������� �����Ͽ� ǥ���ϰ� �� �̸��� Employee and Title�� �����Ͻÿ�.
SELECT job_id ||
       ', ' ||
       last_name As "Employee and Title"
FROM   employees;

--department_Id�� 90�� ������� ������ȣ �̸� 
SELECT employee_id,
       last_name,
       job_Id,
       department_id
FROM   employees
WHERE  department_id = 90;

SELECT employee_id,
       last_name,
       job_Id,
       department_id
FROM   employees
WHERE  department_id = 110;

--Whalen ��ҹ��� �����ؼ� �Ẹ��, �����ʹ� ��ҹ��� ������
SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'Whalen';

SELECT last_name
FROM   employees
WHERE  hire_date = '06/01/03';

--employees���� salary�� 3000���� �۰ų� ���� ����� �̸��� �������� ����.
SELECT last_name,
       salary
FROM   employees
WHERE  salary <= 3000;
-- BETWWEN ������ AND �������Է�
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 3500 AND 2500;
--���ĺ� ������ 
SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'King' AND 'Smith';
--a and b �ϸ� b������ ��µ�. b�ȳ���. bzzzzz�̷��� ���� ok

--�ŴϾ��̵� 100, 101, 201�� ������ �ִ� ����� �������� ������
SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE manager_id IN (100, 101, 201);

SELECT employee_id,
       manager_id,
       department_id
FROM   employees
WHERE  last_name IN ('Hartstein', 'Vargas');

--first name���� �빮�� S�� �����ϴ� �͵� ��������
SELECT first_name
FROM   employees
WHERE  first_name LIKE 'S%';

--������ ã��. �츮���� ���� ǥ������� ��ߵ�.
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';

--last name �� �ι�° ���ڰ� o�� ����� ����.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE '_%'; /*����ٸ� �νĸ���*/

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE '%SA\_%' ESCAPE '\'; /*_�� �ν��Ϸ��� �̷��� �ϸ��.*/

SELECT last_name, manager_id
FROM   employees
WHERE  manager_id IS NULL;

--is null �� �߰��� not��
SELECT last_name, manager_id
FROM   employees
WHERE  manager_id IS NOT NULL;

--�������� 10000���� ũ�ų� ���� job_id�� %MAN%�ΰ͵� ��ȸ
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
  AND  job_id LIKE '%MAN%';

--
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
  OR   job_id = 'AD_PRES'
  AND  salary > 15000;
--and�� or���� �켱������ ���������, ��ȣ�Ⱥ��� ���۵�
SELECT last_name, 
       job_id,
       salary
FROM   employees
WHERE  (job_id = 'SA_REP'
  OR   job_id = 'AD_PRES')
  AND  salary > 15000;
  
SELECT *
FROM employees;
--1. �޿��� 12,000�� �Ѵ� ����� �̸��� �޿��� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;
--!2. ��� ��ȣ�� 176�� ����� �̸��� �μ� ��ȣ�� ǥ���ϴ� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       department_id
FROM   employees
WHERE  employee_id IN (176);
       
--3. �޿��� 5,000���� 12,000 ���̿� ���Ե��� �ʴ� ��� ����� �̸��� �޿��� ǥ���ϵ��� ���Ǹ� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000;

4. last name�� Matos�� Taylor�� ����� last_name, ���� ID, �׸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       manager_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos','Taylor');

SELECT *
FROM employees;

6. �޿��� 5,000�� 12,000 �����̰� �μ� ��ȣ�� 20 �Ǵ� 50�� ����� �̸��� �޿��� �����ϵ��� ���Ǹ� �ۼ��Ͻÿ�. 
   �� ���̺��� Employee�� Monthly Salary�� ���� �����Ͻÿ�.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN (20, 50);
7. 2004�⿡ �Ի��� ��� ����� �̸��� �Ի����� ǥ���Ͻÿ�.
SELECT last_name,
       hire_date
FROM   employees
where  hire_date LIKE ('04%');

SELECT *
FROM employees;
8. �����ڰ� ���� ��� ����� �̸��� ������ ǥ���Ͻÿ�.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NOT NULL;

10. �̸��� ����° ���ڰ� a�� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%__a');
11. �̸��� a�� e�� �ִ� ��� ����� �̸��� ǥ���Ͻÿ�.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%a')
  AND  ('%e');
12. ������ ���� ���(SA_REP) �Ǵ� �繫��(ST_CLERK)�̸鼭 
    �޿��� 2,500, 3,500, 7,000�� �ƴ� ��� ����� �̸�, ���� �� �޿��� ǥ���Ͻÿ�.

13. Ŀ�̼� ����(commission_pct)�� 20%�� ��� ����� �̸�, �޿� �� Ŀ�̼��� ǥ���ϵ��� 
    ��ɹ��� �ۼ��Ͽ� �����Ͻÿ�.
  
  