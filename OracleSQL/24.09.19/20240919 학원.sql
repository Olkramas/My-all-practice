--���� ������ db���� Ƚ���� �ٿ��� �� �־ ȿ�����̴�.

--�̱��� ��������
--141�� �����ȣ�� ����
SELECT   last_name,
         job_id,
         employee_id
FROM     employees
--���Ϸ��� ������ ����
WHERE    job_id = (SELECT   job_id
                   FROM     employees
                   WHERE    employee_id = 141)
AND      employee_id != 141;          --141�� ���� ���
--���Ϸ����� �޿��� ���� ���--���Ϸ��� �θ��̶� ����� �ȵ� �Ʒ� Ȯ���ϱ�.

--����� �ϳ��� �̱���
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

--�޿��� �������� ����� �̸�, ����, �޿� ���.
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    salary = (SELECT   MIN(salary)
                   FROM     employees);


--������ ��������

SELECT   last_name,
         salary,
         department_id
FROM     employees;


--�μ����� �޿��� ���� ���� ����� ���. ���� �����Ͱ� ���� ����� ���� ��µ�.         
SELECT   last_name,
         salary,
         department_id
FROM     employees
WHERE    salary IN (SELECT MIN(salary)
                    from   employees
                    group by department_id);    

--it_prog������ ������� �޿��� �޿��� �ִ񰪺��� ���� �����
SELECT   employee_id,
         last_name,
         job_id,
         salary
FROM     employees
WHERE    salary < ANY (SELECT   salary
                       FROM     employees
                       WHERE    job_id = 'IT_PROG');
                       
-- it_prog������ ������� �޿��� �޿��� �ּڰ����� ���� �����
SELECT   employee_id,
         last_name,
         job_id,
         salary
FROM     employees
WHERE    salary < ALL (SELECT   salary
                       FROM     employees
                       WHERE    job_id = 'IT_PROG');              

select   *
FROM     empl_demo;

SELECT   employee_id, 
         manager_id, 
         department_id
FROM     empl_demo
WHERE    (manager_id, department_id) IN 
                       (SELECT manager_id,
                               department_id
                        FROM   empl_demo
                        WHERE  first_name = 'John')
AND      first_name <> 'John';          

SELECT   employee_id, 
         manager_id, 
         department_id,
         first_name
FROM     empl_demo
WHERE    manager_id IN    (SELECT manager_id
                           FROM   empl_demo
                           WHERE  first_name = 'John')      
AND      department_id IN (SELECT department_id
                           FROM   empl_demo
                           WHERE  first_name = 'John')                        
AND      first_name <> 'John';  

--����
--1. Zlotkey�� ������ �μ��� ���� ��� ����� �̸��� �Ի����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�. 
--Zlotkey�� ������� �����Ͻÿ�.
SELECT   last_name,
         hire_date
FROM     employees
WHERE    department_id = (SELECT   department_id
                          FROM     employees
                          WHERE    last_name = 'Zlotkey')
AND      last_name <> 'Zlotkey';                          

--2. �޿��� ��� �޿����� ���� ��� ����� ��� ��ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� 
--����� �޿��� ���� ������������ �����Ͻÿ�.
SELECT   employee_id,
         last_name
FROM     employees
WHERE    salary > (SELECT AVG(salary)
                   FROM   employees)
ORDER BY salary;

--3. �̸��� u�� ���Ե� ����� ���� �μ����� ���ϴ� ��� ����� 
--��� ��ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��ϰ� ���Ǹ� �����Ͻÿ�.
--����� �ϳ��� �ƴ϶� IN������ؾ� ��
SELECT   employee_id, 
         last_name
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     employees
                           WHERE    last_name LIKE '%u%');

SELECT   department_id,
         last_name
FROM     employees
WHERE    last_name LIKE '%u%';

--4. �μ� ��ġ ID(location_id)�� 1700�� 
--��� ����� �̸�, �μ� ��ȣ �� ���� ID�� ǥ���Ͻÿ�.
SELECT   last_name,
         department_id,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     locations
                           WHERE    location_id = 1700);
                         

--5. King���� �����ϴ�(manager�� King) ��� ����� �̸��� �޿��� ǥ���Ͻÿ�.
SELECT   last_name,
         salary
FROM     employees
WHERE    manager_id IN (SELECT   employee_id
                        FROM     employees
                        WHERE    LOWER(last_name) IN 'king');
                        
SELECT   last_name
FROM     employees
WHERE    manager_id = 100;
--6. Executive �μ��� ��� ����� ���� �μ� ��ȣ, �̸� �� ���� ID�� ǥ���Ͻÿ�.
SELECT   department_id,
         last_name,
         job_id
FROM     employees
WHERE    department_id IN (SELECT department_id
                           FROM   departments
                           WHERE  department_name = 'Executive');

--7. ��� �޿����� ���� �޿��� �ް�(and) �̸��� u�� ���Ե� ����� ���� �μ����� 
--�ٹ��ϴ� ��� ����� ��� ��ȣ, �̸� �� �޿��� ǥ���Ͻÿ�.
SELECT   employee_id,
         last_name,
         salary
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees
                   WHERE    last_name LIKE ('%u%'));
                  --last_name�� u�� ���Ե� ������� ����ϳ�
       
       --����
SELECT   employee_id,
         last_name,
         salary
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees)    
AND      department_id IN (SELECT   department_id
                           FROM     employees
                           WHERE    last_name LIKE ('%u%'));

--���� ������                   
SELECT *
FROM   employees;

SELECT *
FROM   job_history;

--���� �μ� �ϴٰ� �Űܼ� �ߺ����� ����� ��.
--�������̶� �ߺ����� ���� 115���� ��µ�.
SELECT   employee_id,
         job_id
FROM     employees
UNION
SELECT   employee_id,
         job_id
FROM     job_history;         

--�ߺ����� �� ������ UNION ALL, 117�� ��µ�.
SELECT   employee_id,
         job_id
FROM     employees
UNION ALL
SELECT   employee_id,
         job_id
FROM     job_history;  
--���Ʒ� �÷� ��, ������ Ÿ���� ���ƾ� ��. order by �� �׻� ���� ��������

--������.
SELECT   employee_id,
         job_id
FROM     employees
MINUS
SELECT   employee_id,
         job_id
FROM     job_history;

--FROM�� ��ġ���ٲ�鼭 ���� �޶����� ���
SELECT   employee_id,
         job_id
FROM     job_history
MINUS
SELECT   employee_id,
         job_id
FROM     employees;

select employee_id,
       job_id
FROM   job_history;

--������
SELECT   employee_id,
         job_id
FROM     employees
INTERSECT
SELECT   employee_id,
         job_id
FROM     job_history;

--20��
SELECT   *
FROM     employees;

--8��
SELECT   *
FROM     departments;

INSERT INTO departments(department_id,
            department_name,
            manager_id,
            location_id)
VALUES      (70, 
            'public Relations', 
            100, 
            1700);

SELECT *
FROM   departments;

--��� Į���� ������ �������� �÷����� �� �������൵ ��.
--���� ���� ��� �� �����ϱ�.
--�÷� ������ ���� ������ �����ؼ� �������� ��찡 ����. �Ǽ��� �ּ�ȭ�ϱ� ���ؼ� �ϳ��� �ۼ��ϱ�.
INSERT INTO departments
VALUES                 (71, 
                       'public Relations', 
                       100, 
                       1700);
                   
--�Ͻ�������null���� �־�����                       
INSERT INTO departments
                     (department_id,
                      department_name)
VALUES      (30, 
            'Purchasing');

SELECT *
FROM   departments;
            
INSERT INTO departments
VALUES (100,
       'Finance',
       NULL,
       ''); --''�ȿ� ���� ����
       
SELECT *
FROM   departments;

INSERT INTO employees
VALUES      (113,
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
SELECT *
FROM   employees;

--Ư�� ��¥ �Է��� �� TO_DATE�Լ� ������.
INSERT INTO employees
VALUES      (114,
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

SELECT *
FROM   employees;

--sales_reps ��ũ��Ʈ �����ϱ�
SELECT *
FROM   sales_reps;


--���������� �ִ� ������ insert�Ѵٴ� ����.
INSERT INTO sales_reps
                      (id,
                      name,
                      salary,
                      commission_pct)
SELECT   employee_id,
         last_name,
         salary,
         commission_pct
FROM     employees
WHERE    job_id LIKE '%REP%';

SELECT *
FROM   sales_reps;

--employee_id�� 113�� �������
UPDATE   employees
SET      department_id = 50
WHERE    employee_id = 113;

SELECT department_id,
       employee_id
FROM   employees
WHERE  employee_id = 113;

INSERT INTO copy_emp
SELECT *
FROM   employees;

SELECT *
FROM   copy_emp;

--where���� ��� �ش� Į���� ��� ���� �ϳ��� �ٲ�� ��.
UPDATE copy_emp
SET    department_id = 110;

SELECT *
FROM   copy_emp;

UPDATE   employees
SET      job_id = (SELECT job_id
                   FROM   employees
                   WHERE  employee_id = 205),
         salary = (SELECT salary
                   FROM   employees
                   WHERE  employee_id = 205)
WHERE    employee_id = 113;                   

SELECT employee_id,
       job_id,
       salary
FROM   employees
WHERE  employee_id IN (113, 205);

SELECT *
FROM   departments;

DELETE FROM departments
WHERE  department_name = 'Finance';

--where�� ���� �����. ���� �� ������� ���
DELETE FROM copy_emp;

SELECT *
FROM   copy_emp;

--���� ����
ROLLBACK;

--�ѹ����ε� �ȵ��ƿ�. TRUNCATE�� ���� �Ұ����ϴ�. 
TRUNCATE TABLE copy_emp;

CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));
/*
3. ���� ���� �����͸� MY_EMPLOYEE ���̺� �߰��Ͻÿ�.(INSERT)
ID	LAST_NAME 	FIRST_NAME 	USERID 	SALARY
------- --------------- --------------- ------- ------
      1	Patel 		Ralph 		Rpatel 	   895
      2	Dancs 		Betty 		Bdancs 	   860
      3	Biri 		Ben 		Bbiri 	  1100
*/
SELECT *
FROM   my_employee;

INSERT INTO my_employee
                    (id,
                    last_name,
                    first_name,
                    userid,
                    salary)
VALUES (1,
       'Patel',
       'Ralph',
       'Rpatel',
       895);

INSERT INTO my_employee
                    (id,
                    last_name,
                    first_name,
                    userid,
                    salary)
VALUES (2,
        'Dancs',
        'Betty',
        'Bdancs',
        860);
        
INSERT INTO my_employee
                    (id,
                    last_name,
                    first_name,
                    userid,
                    salary)
VALUES (3,
        'Biri',
        'Ben',
        'Bbiri',
        '1100');                    
        
--4. ���̺� �߰��� �׸��� Ȯ���Ͻÿ�.(SELECT)        
SELECT *
FROM   my_employee;

--6. ��� 3�� ���� Drexler�� �����Ͻÿ�.(UPDATE)
UPDATE my_employee
SET    last_name = 'Drexler'
WHERE  id = 3;

--7. �޿��� 900 �̸��� ��� ����� �޿��� 1000���� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

--8. MY_EMPLOYEE ���̺��� ��� 3�� �����ϰ� ���̺��� ���� ������ Ȯ���Ͻÿ�.(DELETE)
DELETE FROM my_employee
WHERE  id = 3;

--11. ���̺��� ������ ��� �����ϰ� ���̺� ������ ��� �ִ��� Ȯ���Ͻÿ�.(DELETE)
DELETE FROM my_employee;
--���⼭ �ѹ��ϸ� Ʈ������� �Ͼ�� �ʾұ⶧���� 3���� �����Ǳ� ������ �����.


--��ųʸ� ����
--����ڰ� ������ ���̺��� �̸�����
SELECT table_name
FROM   user_tables;

--����ڰ� ������ ���� ��ü ��������
SELECT DISTINCT object_type
FROM   user_objects;

--����ڰ� ������ ���̺�, ��, ���Ǿ� �� ������ ����
SELECT *
FROM   user_catalog;
