/*4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
   Ŀ�̼��� ���� �ʴ� ����� ��� ��No Commission���� ǥ���Ͻÿ�. (NVL �Լ�)
   �� ���̺��� COMM���� �����Ͻÿ�.*/
   
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') "COMM"
FROM   employees;
-- NVL�� ����ϱ� ���ؼ� ������ ���� ���Ͻ��Ѿ� ��.

SELECT *
FROM   employees;
/*5. CASE ������ ����Ͽ� 
   ���� �����Ϳ� ���� JOB_ID ���� ���� �������� 
   ��� ����� ����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
   ����         ���
    AD_PRES     A
    ST_MAN      B
    IT_PROG     C
    SA_REP      D
    ST_CLERK    E
    �׿�         0
   */
SELECT job_id,
       (CASE WHEN job_id = 'AD_PRES' THEN 'A'
             WHEN job_id = 'ST_MAN'  THEN 'B'
             WHEN job_id = 'IT_PROG' THEN 'C'
             WHEN job_id = 'SA_REP'  THEN 'D'
             WHEN job_id = 'ST_CLECK'THEN 'E'
                                     ELSE '0'
        END)
FROM   employees;

--����̸�, �޿�, Ŀ�̼� ���� ���� ����Ͻÿ�.
-- ��, Ŀ�̼� ���� ������ Ŀ�̼��� ������ YES, 
-- ���� ������ NO�� ��µǵ��� �Ͻÿ�.
-- Ŀ�̼� ���� ���� �� ��Ī�� commission���� �Ͻÿ�

SELECT last_name,
       salary,
       NVL2(commission_pct, 'YES', 'NO') "commission"
FROM   employees;

--���� DB�� ����Ŭ�� �ƴ϶��?
SELECT last_name, 
       salary,
       commission_pct,
       (CASE WHEN commission_pct > 0  THEN 'YES'
                                      ELSE 'NO'
        END)
FROM    employees;
       


/*�޿��� 20000�����̸� 20% �λ�� �޿�,
  �޿��� 30000�����̸� 15% �λ�� �޿�
  �޿��� 50000�����̸� 10% �λ�� �޿�
  �޿��� 50000�̻��̸� �޿� �״��
  ��. ����̸� �����޿� �λ�� �޿� ������ ��µǰ��ϱ�
  */
  
SELECT last_name,
       salary,
       (CASE WHEN salary <= 20000 THEN salary * 1.20
             WHEN salary <= 30000 THEN salary * 1.15
             WHEN salary <= 50000 THEN salary * 1.1
                                  ELSE salary
        END)
FROM   employees;

--�׷��Լ�, �⺻ �����Լ�
--COUNT(*)���� ��� NULL�� ������.
SELECT AVG(salary), /*���ڵ����͸� ��밡��*/
       MAX(salary), /*��� ������ ��밡��*/
       MIN(salary), /*��� ������ OK*/
       SUM(salary)
FROM   employees
WHERE  job_id LIKE '%REP%';

SELECT MIN(hire_date), /*��¥ �ּҰ�*/
       MAX(hire_date)
FROM   employees;

--���� �����Ϳ��� ��밡���� min, max
SELECT MIN(last_name),
       MAX(last_name)
FROM   employees;

SELECT MIN(job_id),
       job_id
FROM   employees;
/*count(*)�� null���� �����ؼ� ����
  count(Ư���Լ�) null�� ����*/
  
--�μ��� �Ҽӵ� ����� ����ΰ�
SELECT COUNT(department_id)
FROM   employees;

--����� �ִ� �μ��� ��ΰ�?
--�μ� �ߺ��� ���� �� COUNT
SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(*)
FROM   employees;

--�μ� id�� 50�� ����� ��
SELECT COUNT(*)
FROM   employees
WHERE  department_id = 50;

--Ŀ�̼��� �޴� ����� �μ� id�� 80�� ����� ��
SELECT COUNT(commission_pct)
FROM   employees
WHERE  department_id = 80;

SELECT AVG(commission_pct)
FROM   employees;

--AVG�� ���� �����ϱ� ������ NVL�� NULL�� 0���� �ٲ��� ���
SELECT AVG(NVL(commission_pct, 0))
FROM   employees;

--SELECT���� �׷� �Լ��� ������� �� �⺻ �÷��� ������ GROUP BY�� �⺻ �÷��� ����� ��.
SELECT department_id,
       AVG(NVL(salary, 0)) /*salary�� �� �ϼ��� �־ NVL���*/
FROM   employees
GROUP BY department_id;


SELECT AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id;

SELECT department_id,
       AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id
ORDER BY 2;

SELECT department_id, 
       job_id,
       SUM(salary)
FROM   employees
GROUP BY department_id, job_id
ORDER BY job_id;
--�μ��� ���� ����, ������ �״������� �׷���. job_id�� �������� ����

SELECT department_id, 
       job_id,
       SUM(salary)
FROM   employees
WHERE  department_id > 40
GROUP BY department_id, job_id
ORDER BY job_id;

SELECT department_id, AVG(salary)
FROM   employees                    /*1�� ����*/
WHERE  AVG(salary) > 8000            /*2�� ���� �׷��� ���� avg�� ����ؼ� �׷�/ ���� ������..*/
GROUP BY department_id;

SELECT   department_id,
         AVG(salary)
FROM     employees
--where
GROUP BY department_id
HAVING   AVG(salary) > 8000;
--order by

SELECT   department_id, 
         MAX(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;

-- FROM WHERE - GROUP BY

SELECT   department_id, 
         AVG(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;
--������ �ִ�
-- HAVING���� SELECT���� �ִ� �׷��Լ��� �����ϴ°� �ƴ�, ��� �׷��Լ��� ������ �� ����.

--**********************************
SELECT   job_id,
         SUM(salary) PAYROLL
FROM     employees
WHERE    job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING   SUM(salary) > 13000
ORDER BY SUM(salary);

SELECT   MAX(AVG(salary))
FROM     employees
GROUP BY department_id;

--SELECT���� ���� �׷��Լ��� ������� ���, ��.��.�� �Ϲ� Į������ ���� �� ����.
SELECT   department_id;
         MAX(AVG(salary))
FROM     employees
GROUP BY department_id;

--���̺� n������ ������ ������ �� join�� n-1����.

--����
SELECT last_name,
       department_name
FROM   employees CROSS JOIN departments;

SELECT COUNT(*)
FROM   employees; --107��

SELECT COUNT(*)
FROM   departments; --27��

--����Ŭ where�� ������
SELECT last_name,
       departments.department_id,
       department_name
FROM   employees, departments;
--WHERE employees.department_id = departments.department_id;

--���� ���ϱ�
SELECT last_name,
       departments.department_id,
       department_name
FROM   employees, departments
WHERE  employees.department_id = departments.department_id;
--���� ��쿡 ����Ʈ ���


SELECT department_id
FROM   departments;

SELECT department_name
FROM   departments;

--����
SELECT department_id,
       department_name,
       location_id,
       city
FROM   departments NATURAL JOIN locations;

--����Ŭ


SELECT d.department_id,
       d.department_name,
       location_id,
       l.city
FROM   departments d, NATURAL JOIN locations l;
--���߷� ������ ���̺� �˷��ƽ��� ����� �� ����
--���̺� �˷��ƽ��� ��Ȯ�� ���� ������ ������ �����.
--���߷� ���� - ������ �÷����� �־�� ����� �� �ִ�.


SELECT e.employee_id,
       e.last_name,
       d.location_id,
       department_id
FROM   employees e JOIN departments d
                   USING (department_id);

--����***************
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
       ON (e.department_id = d.department_id);
--department_id e, d�� ���� ������ select�� ������� �����.

--����Ŭ
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e, departments d
WHERE  (e.department_id = d.department_id);

--����̸�(last_name)�� �ش� ��� �Ҽӵ� �μ��̸�(department_name)
--�� ����Ͻÿ�
SELECT department_id
FROM   departments;

SELECT department_id
FROM   employees;

SELECT e.last_name,
       d.department_name
FROM   departments d JOIN employees e
                 ON (d.department_id = e.department_id);
                 
SELECT e.last_name,
       d.department_name
FROM   departments d, employees e
WHERE  d.department_id = e.department_id;

--����̸�(last_name)�� �ش� ��� �Ҽӵ� �μ��̸�(department_name)
--�μ��� �ִ� ���ø�(CITY)�� ����Ͻÿ�
--�����ȣ, �μ� ���� ��ġ, �μ��̸� ������ ���
SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id);
                     
SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e, departments d, locations l
WHERE  (d.department_id = e.department_id)
AND    (d.location_id = l.location_id);

--�����ȣ, �μ� ���� ��ġ, �μ��̸� ������ ���
--�� �����ȣ�� 149���� ��������

--������
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id)
                    AND e.manager_id = 149;
--WHERE�� �����;ߵ�.     
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id)
WHERE  e.manager_id = 149;

--����Ŭ�� ������ AND
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e, departments d, locations l
WHERE  d.department_id = e.department_id
  AND  (d.location_id = l.location_id)
  AND  e.manager_id = 149;
  
--��� �̸� ��������
--�������̺�ȿ��� ����� �� ��������
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w JOIN employees m
                     ON (w.manager_id = m.employee_id);
                     
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w, employees m
WHERE  (w.manager_id = m.employee_id);

SELECT *
FROM   employees;

--�ϳ��� �����Ű�� (���̺��� ����)
CREATE TABLE job_grades (
  grade_level VARCHAR2(3),
  lowest_sal  NUMBER(10),
  highest_sal NUMBER(10));
  
INSERT INTO job_grades
VALUES ('A', 1000, 2999);

INSERT INTO job_grades
VALUES ('B', 3000, 5999);

INSERT INTO job_grades
VALUES ('C', 6000, 9999);

INSERT INTO job_grades
VALUES ('D', 10000, 14999);

INSERT INTO job_grades
VALUES ('E', 15000, 24999);

INSERT INTO job_grades
VALUES ('F', 25000, 40000);

SELECT *
FROM   job_grades;

--�񵿵� ����, =�ƴ� �ٸ��� �� �񵿵���. �׷��� AND���.
SELECT e.last_name,
       e.salary,
       j.grade_level
FROM   employees e JOIN job_grades j
ON     e.salary
       BETWEEN j.lowest_sal AND j.highest_sal;

--LEFT OUTER ���� ���� �͵� ���ڴٶ�� �ǹ� 107�� �׶�Ʈ �� Ȯ���ϱ�
--�׶�Ʈ���� �μ� ���̵�� �μ����� ����
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e LEFT OUTER JOIN departments d
             ON (e.department_id = d.department_id);

--����Ŭ   
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e, departments d
WHERE  e.department_id = d.department_id(+); --LEFT OUTER


--����Ŭ�� outer�����ؼ� ����ص� ��. ������ outer��ߵ�.

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e RIGHT OUTER JOIN departments d
--���̺� ��ġ������ LEFT RIGHT�ٲ� �� ����
             ON (e.department_id = d.department_id);

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e, departments d
WHERE  e.department_id(+) = d.department_id; -- RIGHT OUTER

--����
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL OUTER JOIN departments d
             ON (e.department_id = d.department_id);
--����Ŭ�� FULL OUTER�� ����

--JOIN ���� ����
--1. LOCATIONS �� COUNTRIES ���̺��� ����Ͽ� ��� �μ��� �ּҸ� �����ϴ� query�� �ۼ��Ͻÿ�. 
--��¿� ��ġID(location_id), �ּ�(street_address), ��/��(city), 
--��/��(state_province) �� ����(country_name)�� ǥ���Ͻÿ�.
SELECT l.location_id,
       l.street_address,
       l.city,
       l.state_province,
       c.country_name,
       l.country_id
FROM   locations l JOIN countries c 
                     ON (l.country_id = c.country_id);

SELECT *
FROM   countries;

SELECT phone_number
FROM   employees;

--2. ��� ����� �̸�, �Ҽ� �μ���ȣ �� �μ� �̸��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT e.last_name,
       e.phone_number,
       d.department_name
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id);

--3. Toronto�� �ٹ��ϴ� ����� ���� ������ �ʿ�� �մϴ�.
--toronto���� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ �� �μ� �̸��� ǥ���Ͻÿ�.
SELECT e.last_name,
       e.job_id,
       e.phone_number,
       d.department_name,
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id)
                   JOIN locations l
                     ON (l.city = 'Toronto');

--4. ����� �̸� �� ��� ��ȣ�� �ش� �������� �̸� �� ������ ��ȣ�� �Բ� ǥ���ϴ� ������ �ۼ��ϴµ�, 
--�� ���̺��� ���� Employee, Emp#, Manager �� Mgr#���� �����Ͻÿ�.
SELECT e.last_name Employee,
       e.employee_id Emp#,
       w.last_name Manager,
       w.employee_id Mgr#
FROM   employees w JOIN employees e
                     ON (e.manager_id = w.employee_id);
       
SELECT *
FROM   employees;

--5. King�� ���� �ش� �����ڰ� �������� ���� ����� ǥ���ϵ��� 4�� ������ �����մϴ�. 
--��� ��ȣ������ ����� �����Ͻÿ�. 
SELECT e.last_name Employee,
       e.employee_id Emp#,
       w.last_name Manager,
       w.employee_id Mgr#
FROM   employees w LEFT OUTER JOIN employees e
                     ON (e.manager_id = w.employee_id);
                     
--������ ǥ���ϰ� ���� �� (�������� null�϶�) left outer ����Ŭ�� e �ڿ� (+)
--�������� ǥ���ϰ� ���� �� (������ null�϶�) right outer ����Ŭ�� w �ڿ� (+)


--6. ���� ��� �� �޿��� ���� ������ �ʿ�� �մϴ�. 
--��� ����� �̸�, ����, �μ� �̸�, �޿� �� ����� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT m.last_name,
       m.job_id,
       s.department_name,
       m.salary
       ss.job