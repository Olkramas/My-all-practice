SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM   employees
ORDER BY hire_date DESC;

/*4. ����� �̸��� Ŀ�̼��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
   Ŀ�̼��� ���� �ʴ� ����� ��� ��No Commission���� ǥ���Ͻÿ�. (NVL �Լ�)
   �� ���̺��� COMM���� �����Ͻÿ�.*/
   
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No commission') "COMM"
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
SELECT (CASE WHEN job_id = 'AD_PRES' THEN 'A'
             WHEN job_id = 'ST_MAN'  THEN 'B'
             WHEN job_id = 'IT_PROG' THEN 'C'
             WHEN job_id = 'SA_REP'  THEN 'D'
             WHEN job_id = 'ST_CLERK'THEN 'E'
                                     ELSE '0'
        END) GRADE
FROM   employees;                                     

--����̸�, �޿�, Ŀ�̼� ���� ���� ����Ͻÿ�.
-- ��, Ŀ�̼� ���� ������ Ŀ�̼��� ������ YES, 
-- ���� ������ NO�� ��µǵ��� �Ͻÿ�.
-- Ŀ�̼� ���� ���� �� ��Ī�� commission���� �Ͻÿ�

SELECT last_name,
       salary,
       commission_pct,
       (CASE WHEN commission_pct > 0 THEN 'YES'
                                     ELSE 'NO'
        END) COMMISSION
FROM   employees;

/*�޿��� 20000�����̸� 20% �λ�� �޿�,
  �޿��� 30000�����̸� 15% �λ�� �޿�
  �޿��� 50000�����̸� 10% �λ�� �޿�
  �޿��� 50000�̻��̸� �޿� �״��
  ��. ����̸� �����޿� �λ�� �޿� ������ ��µǰ��ϱ�
  */
  
SELECT last_name,
       salary,
       (CASE WHEN salary <= 20000 THEN salary * 1.2
             WHEN salary <= 30000 THEN salary * 1.15
             WHEN salary <= 50000 THEN salary * 1.1
                                  ELSE salary
        END) comm
FROM   employees;

SELECT AVG(salary),
       MAX(salary),
       MIN(salary),
       SUM(salary),
       job_id
FROM   employees
WHERE  job_id LIKE '%REP%'
GROUP BY job_id;

SELECT MIN(hire_date),
       MAX(hire_date)
FROM   employees;

SELECT MIN(last_name),
       MAX(last_name)
FROM   employees;

--�μ��� �Ҽӵ� ����� ����ΰ�
SELECT COUNT(last_name)
FROM   employees;

--����� �ִ� �μ��� ��ΰ�?
--�μ� �ߺ��� ���� �� COUNT
SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(*)
FROM   employees;

--�μ� id�� 50�� ����� ��
SELECT COUNT(*)
FROM   employees
WHERE  department_id IN 50;

--Ŀ�̼��� �޴� ����� �μ� id�� 80�� �����
SELECT COUNT(*)
FROM   employees
WHERE  department_id IN 80;

SELECT AVG(commission_pct)
FROM   employees;

SELECT AVG(NVL(commission_pct, 0))
FROM   employees;

SELECT department_id,
       AVG(NVL(commission_pct, 0))
FROM   employees
GROUP BY department_id
ORDER BY department_id;

SELECT department_id,
       commission_pct
FROM   employees
ORDER BY department_id;

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
ORDER BY department_id;

SELECT department_id,
       job_id,
       SUM(salary)
FROM   employees
WHERE  department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;


--�׷��Լ���  WHERE ���� ���Ұ�..
SELECT department_id, 
       AVG(salary)
FROM   employees
WHERE  AVG(salary) > 8000
GROUP BY department_id;

SELECT department_id,
       AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id
HAVING AVG(salary) > 8000
ORDER BY department_id;

SELECT   department_id,
         MAX(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000
ORDER BY department_id;

SELECT   department_id,
         AVG(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;

SELECT   job_id,
         SUM(salary) PAYROLL
FROM     employees
WHERE    job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING   SUM(NVL(salary, 0)) > 13000
ORDER BY SUM(NVL(salary, 0));

SELECT   MAX(AVG(NVL(salary, 0)))
FROM     employees
GROUP BY department_id;

SELECT   AVG(NVL(salary, 0))
FROM     employees
GROUP BY department_id;

SELECT   department_id,
         MAX(AVG(salay))
FROM     employees
GROUP BY department_id;
--����ó�� �ܿ��. �׷��Լ��� ��ø���� ����ϸ� �׷���̷� ���� �� ����.

SELECT   last_name,
         department_name
FROM     employees CROSS JOIN departments;   

--employees e�� departments d���� e.department_id�� d.department_id�� ����
--e.last_name, e.department_id, d.deaprtment_name�� ������.

--�Ƚ� ���
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
--����Ŭ ���
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e, departments d
WHERE    e.department_id = d.department_id;

SELECT   departments.department_id,
         department_name,
         location_id,
         city
FROM     departments NATURAL JOIN locations;

SELECT   e.employee_id,
         e.last_name,
         e.department_id,
         d.department_id,
         d.location_id
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
                       
                       
                       
SELECT   e.employee_id,
         e.last_name,
         e.department_id,
         d.department_id,
         d.location_id
FROM     employees e, departments d
WHERE    e.department_id = d.department_id;

--����̸�(last_name)�� �ش� ��� �Ҽӵ� �μ��̸�(department_name)
--�� ����Ͻÿ�

SELECT   e.last_name,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
                       
--����̸�(last_name)�� �ش� ��� �Ҽӵ� �μ��̸�(department_name)
--�μ��� �ִ� ���ø�(CITY)�� ����Ͻÿ�
--�����ȣ, �μ� ���� ��ġ, �μ��̸� ������ ���    
SELECT   e.last_name,
         l.city,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
                     JOIN locations l
                       ON (d.location_id = l.location_id);
                       
SELECT   e.last_name,
         l.city,
         d.department_name
FROM     employees e, departments d, locations l
WHERE    (e.department_id = d.department_id)
AND      (d.location_id = l.location_id);

--�����ȣ, �μ� ���� ��ġ, �μ��̸� ������ ���
--�� �����ȣ�� 149���� ��������

SELECT   e.employee_id,
         l.city,
         d.department_name
FROM     employees e, departments d, locations l
WHERE    (e.department_id = d.department_id)
AND      (d.location_id = l.location_id)
AND      e.employee_id = 149;

SELECT   e.employee_id,
         l.city,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
                     JOIN locations l
                       ON (d.location_id = l.location_id)
                      AND e.employee_id = 149;

--��� �̸� ��������
--�������̺�ȿ��� ����� �� ��������
SELECT   m.last_name emp,
         m.employee_id,
         s.last_name mgr,
         s.employee_id
FROM     employees m RIGHT OUTER JOIN employees s
                       ON (m.manager_id = s.employee_id);
                       
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

SELECT   e.last_name,
         e.salary,
         j.grade_level
FROM     employees e JOIN job_grades j
                       ON salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT   e.last_name,
         e.salary,
         j.grade_level
FROM     employees e, job_grades j
WHERE    salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT   department_id,
         last_name
FROM     employees
ORDER BY department_id;
        
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e LEFT OUTER JOIN departments d
                                  ON (e.department_id = d.department_id)
ORDER BY department_id DESC;

--6. ���� ��� �� �޿��� ���� ������ �ʿ�� �մϴ�. 
--��� ����� �̸�, ����, �μ� �̸�, �޿� �� ����� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT *
FROM   job_grades;

SELECT e.last_name,
       e.job_id,
       d.department_name,
       e.salary,
       j.grade_level
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id)
                   JOIN job_grades j
                     ON salary BETWEEN lowest_sal AND highest_sal;
       