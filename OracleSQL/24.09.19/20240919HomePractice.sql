--employee ���̺��� job_id�� employee_id�� 141�� job_id�� ����, employee_id��
--141�� �ƴ� ����� �̸���, job_id�� ����϶�.
SELECT   last_name,
         job_Id
FROM     employees
WHERE    job_id = (SELECT   job_id
                   FROM     employees
                   WHERE    employee_id = 141)
AND      employee_id != 141;                   

SELECT   last_name,
         job_id,
         employee_id
FROM     employees
WHERE    employee_id = 141;

--������ �����ڶ� ����� �ȵ�. talyor�̸��� �θ��̶� �ȵǴ� ��.
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    job_id = (SELECT   job_id
                   FROM     employees
                   WHERE    last_name = 'Taylor')
AND      salary > (SELECT   salary
                   FROM     employees
                   WHERE    last_name = 'Taylor');

SELECT   employee_id,
         last_name
FROM     employees
WHERE    last_name = 'Taylor';

--������ �����ڸ� ����� �� �ְ� �ٲ�
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    job_id = (SELECT   job_id
                   FROM     employees
                   WHERE    employee_id = 141)
AND      salary > (SELECT   salary
                   FROM     employees
                   WHERE    employee_id = 141);
                   
--employees���̺� �ּҰ��� �޿��� ���� ������ last_name, job_id, salary�� ���
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    salary = (SELECT   MIN(salary)
                   FROM     employees);
                   
--employees���̺� department_id�� ���� �͵��� �޿��� �ּڰ��� ���.
SELECT   department_id,
         MIN(salary)
FROM     employees
GROUP BY department_id
ORDER BY department_id;

--employees���̺� �޿��� employees���̺��� department_id ���������� �޿��� �ּڰ��� ����
--������ �̸��� �޿�, �μ�id�� ����϶�.
SELECT   last_name,
         salary,
         department_id
FROM     employees
WHERE    salary IN (SELECT   MIN(salary)
                    FROM     employees
                    GROUP BY department_id);
                    
SELECT   department_id,
         salary
FROM     employees
WHERE    department_id = 90;

SELECT   salary
FROM     employees
WHERE    job_id = 'IT_PROG';

--ANY ���� ������


--1. > ANY
--employees���̺��� �޿��� employees���̺��� �μ� id�� 50�� ����� �޿��� �ϳ��� ū(�ּڰ����� ū)
--�������� ����id, �޿��� ���
SELECT   employee_id,
         salary,
         department_id
FROM     employees
WHERE    salary > ANY (SELECT   salary
                       FROM     employees
                       WHERE    department_id = 50);
                       
--2. < ANY
--department_id�� 90�� ����� �߿��� �޿��� ��ͺ��� ����(�ִ�) �޿��� ������ ~~���
--24000���� �޿��� ���� ����� ��� ���
SELECT   employee_id,
         salary,
         department_id
FROM     employees
WHERE    salary < ANY (SELECT   salary
                       FROM     employees
                       WHERE    department_id = 90);

SELECT   department_id,
         salary
FROM     employees
WHERE    department_id = 90;

--ALL ������������ �־��� ��� ������ <(�۴�) / >(ũ��)
-- < ALL�� �ּڰ����� �۴� / > ALL�� �ִ񰪺��� ũ��

--������ IT_PROG�� ������� �޿��� ��� ������ ���� �޿���(�޿��� �ּҰ�) ���� ���̵�, �̸�
--������, �޿� ����ϱ�
SELECT   employee_id,
         last_name,
         job_id,
         salary
FROM     employees
WHERE    salary < ALL (SELECT   salary
                       FROM     employees
                       WHERE    job_id = 'IT_PROG');

-- empl_demo ����.          
select *
FROM   empl_demo;


--manager_id�� department_id�� �̸��� John�� ����� �Ͱ� ����, �̸��� 'John'�� �ƴ�
--�������� select���
SELECT   employee_id,
         manager_id,
         first_name,
         department_id
FROM     empl_demo
WHERE    (manager_id, department_id) IN (SELECT   manager_id,
                                                  department_id
                                         FROM     empl_demo
                                         WHERE    first_name = 'John')
AND       first_name != 'John';

SELECT   first_name,
         manager_id,
         department_id
FROM     empl_demo
WHERE    first_name = 'John';

--manager_id�� �̸��� ���� ����� �Ͱ� ����, department_id�� �̸��� ���� ����� �Ͱ� ����,
--�̸��� ���� �ƴѻ������ select���� ���.
--IN�� ����ϴ� ������ �̸��� john�� ����� �����̳� �ֱ� ������ ������ �����ڸ� ����� �� ����.
SELECT   employee_id,
         manager_id,
         department_id
FROM     empl_demo
WHERE    manager_id    IN (SELECT   manager_id
                           FROM     empl_demo
                           WHERE    first_name = 'John')
AND      department_id IN (SELECT   department_id
                           FROM     empl_demo
                           WHERE    first_name = 'John')
AND      first_name != 'John';                           

--1. Zlotkey�� ������ �μ��� ���� ��� ����� �̸��� �Ի����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
--Zlotkey�� ������� �����Ͻÿ�.
SELECT   last_name,
         hire_date
FROM     employees
WHERE    department_id = (SELECT   department_id
                          FROM     employees
                          WHERE    last_name = 'Zlotkey')
  AND    last_name != 'Zlotkey';                          

--2. �޿��� ��� �޿����� ���� ��� ����� ��� ��ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� 
--����� �޿��� ���� ������������ �����Ͻÿ�.
SELECT   employee_id,
         last_name
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees)
ORDER BY salary;                   
--avg�� where�� ����� �� ����

--3. �̸��� u�� ���Ե� ����� ���� �μ����� ���ϴ� ��� ����� ��� ��ȣ�� �̸��� 
--ǥ���ϴ� ���Ǹ� �ۼ��ϰ� ���Ǹ� �����Ͻÿ�.
SELECT employee_id,
       last_name
FROM   employees
WHERE  department_id IN (SELECT department_id
                         FROM   employees
                         WHERE  last_name LIKE ('%u%'));

--4. �μ� ��ġ ID(location_id)�� 1700�� ��� ����� �̸�, �μ� ��ȣ �� ���� ID�� ǥ���Ͻÿ�.
SELECT   last_name,
         department_id,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     departments
                           WHERE    location_id = 1700);
                           
--5. King���� �����ϴ�(manager�� King) ��� ����� �̸��� �޿��� ǥ���Ͻÿ�.
SELECT   last_name,
         salary
FROM     employees
WHERE    manager_id IN (SELECT   employee_id
                        FROM     employees
                        WHERE    last_name = 'King');
                        
--6. Executive �μ��� ��� ����� ���� �μ� ��ȣ, �̸� �� ���� ID�� ǥ���Ͻÿ�.
SELECT   department_id,
         last_name,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     departments
                           WHERE    department_name = 'Executive');
                           
--7. ��� �޿����� ���� �޿��� �ް� 
--�̸��� u�� ���Ե� ����� ���� �μ����� �ٹ��ϴ� ��� ����� ��� ��ȣ, �̸� �� �޿��� ǥ���Ͻÿ�.
SELECT   employee_id,
         last_name,
         salary
FROM     employees
WHERE    salary        >  (SELECT   AVG(salary)
                           FROM     employees)
  AND    department_id IN (SELECT   department_id
                           FROM     employees
                           WHERE    last_name LIKE ('%u%'));
                           
SELECT *
FROM   employees;

SELECT   *
FROM     job_history;

--������
SELECT   employee_id,
         job_id
FROM     employees
UNION
SELECT   employee_id,
         job_id
FROM     job_history;

--�ߺ��� �������� union all
SELECT   employee_id,
         job_id
FROM     employees
UNION ALL
SELECT   employee_id,
         job_id
FROM     job_history;

--������
SELECT   employee_id,
         job_id
FROM     employees
MINUS
SELECT   employee_id,
         job_id
FROM     job_history;

--�������� ���Ʒ� ����Ʈ�� ��ġ �ٲ�� ���� ������ �޶���.

--������
SELECT   employee_id,
         job_id
FROM     employees
INTERSECT
SELECT   employee_id,
         job_id
FROM     job_history;

--employee 20���� ���� 20�� �����
SELECT *
FROM   employees;

SELECT *
FROM   departments;

INSERT INTO departments(department_id,
                        department_name,
                        manager_id,
                        location_id)
VALUES                  (70,
                        'Public Relations',
                        100,
                        1700);
                        
INSERT INTO departments
VALUES      (71,
             'public Relations',
             100,
             1700);
             
INSERT INTO departments(department_id,
                       department_name)
VALUES                (31,
                       'Purchasing');
                       
INSERT INTO departments
VALUES                (101,
                       'Finance',
                       NULL,
                       '');
                       
SELECT *
FROM   employees
WHERE  employee_id = 113;

INSERT INTO employees
VALUES                (113,
                       'Louis',
                       'Popp',
                       'LPOPP',
                       '515.124.4567',
                       SYSDATE,
                       'AC_ACCOUNT',
                       6900,
                       NULL,
                       205,
                       110);
                       
INSERT INTO employees
VALUES                (115,
                       'Den',
                       'Raphealy',
                       'DRAPHEAL',
                       '515.127.4561',
                       TO_DATE('02 03, 1999', 'MM DD, YYYY'),
                       'SA_REP',
                       11000,
                       0.2,
                       100,
                       60);
--sales_reps �߰�
SELECT *
FROM   sales_reps;

INSERT INTO sales_repS(id,
                      name,
                      salary,
                      commission_pct)
SELECT   employee_id,
         last_name,
         salary,
         commission_pct
FROM     employees
WHERE    job_id LIKE '%REP%';
--INSERT INTO���� ���������� ���� ���� ��ȣ�� ����.
--�� ������ ������ ������ ���ƾ� �Ѵ�.

--employee_id�� 113�� ������ department_id�� 50���� ����
UPDATE   employees
SET      department_id = 50
WHERE    employee_id = 113;

SELECT   *
FROM     employees
WHERE    employee_id = 113;

INSERT INTO copy_emp
SELECT *
FROM   employees;

SELECT *
FROM   copy_emp;

--where�� ������ �ش� Į���� ��� ���� 110���� �����.
UPDATE copy_emp
SET    department_id = 110;

--���� ���̵� 113�� ����� job_id�� employee_id�� 205�� ����� job_id��,
--�޿��� employee_id�� 205�� ����� �޿��� employees���̺��� ������Ʈ�ض�.
UPDATE employees
SET    job_id = (SELECT job_id
                 FROM   employees
                 WHERE  employee_id = 205),
       salary = (SELECT salary
                 FROM   employees
                 WHERE  employee_id = 205)
WHERE  employee_id = 113;                 

SELECT *
FROM   employees
WHERE  employee_id = 113;

SELECT *
FROM   employees
WHERE  employee_id = 205;

SELECT *
FROM   departments;

DELETE FROM departments
WHERE  department_id = 101;

COMMIT;

SELECT *
FROM   copy_emp
WHERE  employee_id = 176;

CREATE table aa(a number(3));

SELECT *
FROM   aa;

--1. ������ ���� �ǽ��� ����� MY_EMPLOYEE ���̺��� �����Ͻÿ�.
CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));
   
SELECT *
FROM   my_employee;

--3. ���� ���� �����͸� MY_EMPLOYEE ���̺� �߰��Ͻÿ�.(INSERT)
--ID	LAST_NAME 	FIRST_NAME 	USERID 	SALARY
--------- --------------- --------------- ------- ------
--      1	Patel 		Ralph 		Rpatel 	   895
--      2	Dancs 		Betty 		Bdancs 	   860
--      3	Biri 		Ben 		Bbiri 	  1100

INSERT INTO my_employee
VALUES                  (1,
                         'Patel',
                         'Ralph',
                         'Rpatel',
                         895);
INSERT INTO my_employee
VALUES                  (2,
                         'Dancs',
                         'Betty',
                         'Bdancs',
                         860);
INSERT INTO my_employee
VALUES                  (3,
                         'Biri',
                         'Ben',
                         'Bbiri',
                         1100);

--4. ���̺� �߰��� �׸��� Ȯ���Ͻÿ�.(SELECT)
SELECT *
FROM   my_employee;

--6. ��� 3�� ���� Drexler�� �����Ͻÿ�.(UPDATE)
UPDATE my_employee
SET    last_name = 'Drexler';

--7. �޿��� 900 �̸��� ��� ����� �޿��� 1000���� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

--8. MY_EMPLOYEE ���̺��� ��� 3�� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(DELETE)
DELETE FROM my_employee
WHERE  id = 3;

--11. ���̺��� ������ ��� �����ϰ� ���̺� ������ ��� �ִ��� Ȯ���Ͻÿ�.(DELETE)
DELETE FROM my_employee;

SELECT *
FROM   my_employee;

--�����ͺ��̽����� ������� ��ü ������ ��ȸ�ϴµ� ����.
SELECT   table_name
FROM     user_tables;

SELECT   DISTINCT object_type
FROM     user_objects;

SELECT   *
FROM     user_catalog;