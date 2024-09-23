--��ü������ ���� ��ɾ� ddl

--sample�̶�� ���̺� ����
CREATE TABLE sample
       (sam1   NUMBER(4),
        sam2   VARCHAR2(10),
        sam3   VARCHAR2(20));
SELECT *
FROM   sample;

--hire_dates ���̺� ����
CREATE TABLE hire_dates
       (id        NUMBER(8),
        hire_date DATE DEFAULT SYSDATE);

SELECT *
FROM   hire_dates;

INSERT INTO hire_dates
VALUES (45,
        NULL);

--default�� �������� �� �ƹ��͵� �Է� ���ϸ� ���糯¥
INSERT INTO hire_dates(id)
VALUES (35);

--dept ���̺� ����
CREATE TABLE dept
       (deptno   NUMBER(2),
        dname    VARCHAR2(14),
        loc      VARCHAR2(13),
        create_date DATE DEFAULT SYSDATE);

SELECT *
FROM   dept;

--���̺�� ��ü ����� ����. developer�� ������� ������ ����ϸ� ��.
SELECT table_name
FROM   user_tables;

CREATE TABLE dept80
AS
  SELECT employee_id,
         last_name,
         salary*12 ANNSAL, --���������� �÷����� �������µ�, ������� ����� �÷� �˷��ƽ��� �� �־�� ��.
         hire_date
  FROM   employees
  WHERE  department_id = 80;
   
SELECT *
FROM   dept80;

CREATE TABLE dept80
AS
  SELECT employee_id,
         last_name,
         salary*12, -- �÷� �˷��ƽ��� ���� ��� ������ ����.
         hire_date
  FROM   employees
  WHERE  department_id = 80;

CREATE TABLE dept81 (empno, -- ���⿡ �÷����� �ۼ��ϰų�
                     name,
                     sal,
                     cdate)
AS
  SELECT employee_id,       -- ���⿡ �÷� �˷��ƽ��� �ϳ��� �����ָ� ��.
         last_name,
         salary*12,
         hire_date
  FROM   employees
  WHERE  department_id = 80;

--�� ���̺� ����� ������ ���, ����� ���̺��̶�� �̷��� �ϸ��, ������ Ÿ���� �Ƚᵵ �ż� ����.
CREATE TABLE dept82
AS
  SELECT employee_id,
         last_name,
         salary*12 ANNSAL,
         hire_date
  FROM   employees
  WHERE  department_id = 0;
  
SELECT *
FROM   dept82;

--ADD�� �÷� �߰�, NULL�� ���� ���
ALTER TABLE dept80
ADD         (job_id VARCHAR2(9));

SELECT *
FROM   dept80;

--Add�� DEFAULT���� �����ϸ� ó���� NULL���� �ƴ� �ʱⰪ�� ������ �� ����.
ALTER TABLE dept80
ADD         (sal NUMBER(5) DEFAULT 10000);

--���ڱ��̸� �ø��ų� ���� �� ����.
ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(30));

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(10));

--������ �ִ� �����ͱ��̺��� �� �۰��ϸ� �Ʒ����� ������ �߻���.
ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(4));

--default���� �����ϰ� �Ǹ� ������ �����Ͱ��� ������ �ȹ���.���ķ� �ԷµǴ� �����ʹ� 9999�� �����.
ALTER TABLE dept80
MODIFY      (sal NUMBER(5) DEFAULT 9999);

SELECT *
FROM   dept80;

--�÷� ������ �� ����ϴ� �ɼ�
--drop, �����Ͱ� �ֵ� ���� �� ����. ������ �� ����. �ɻ�����ؼ� �����ϱ�
ALTER TABLE dept80
DROP  (sal);

--�����Ҷ� ���� �ɼ��ε�, �ٷ� ���� �����ϴ°��� �ƴ�. ����ε�ȰŶ�� �����ϱ�  
ALTER TABLE dept80
SET   UNUSED (last_name);

--�� ��ɾ �ľ� Ȯ���ϰ� ����.
ALTER TABLE dept80
DROP  UNUSED COLUMNS;

SELECT *
FROM   dept80;

--����
DROP TABLE dept80;

--������
SELECT object_name, 
       original_name, 
       type
FROM   user_recyclebin;

--�����뿡�� �ҷ�����, ���̺� ������ �� ������� �ǵ��� �� ����.(�÷� ������ �� ���ƿ�)
FLASHBACK TABLE dept80 TO BEFORE DROP;

--PURGE�� ���̸� ���������� �Ȱ��� ������ ������. �������� �� �� ����.
DROP TABLE dept81 PURGE;

PURGE RECYCLEBIN; -- ������ ����

SELECT *
FROM   recyclebin;

--���̺� �̸��� �ٲ�
RENAME sample TO sam;

desc sam;

--����Ŭ���� �⺻������ �������� ���̺��� �ּ��� �޷�����. �Ʒ����� Ȯ���ϱ�
SELECT *
FROM   user_tab_comments;

--truncate �����, drop �� ���̺� ����

DELETE departments
WHERE  department_id = 60;

--��������
desc employees;

CREATE TABLE emp_test (
                       empid     NUMBER(5),
                       empname   VARCHAR2(10) NOT NULL,
                       duty      VARCHAR2(9),
                       sal       NUMBER(7, 2),
                       bonus     NUMBER(7, 2),
                       mgr       NUMBER(5),
                       hire_date DATE,
                       deptid    NUMBER(2));
desc emp_test;

INSERT INTO emp_test (empid,
                      empname)
VALUES (111, 
        'SKJ');

--������������ ���� NULL���� �� �� ����.
INSERT INTO emp_test (empid,
                      empname)
VALUES (222, 
        NULL);                      

CREATE TABLE AAA (
 AA NUMBER(3),
 BB NUMBER(3),
 unique(aa, bb) );
 
INSERT INTO aaa
VALUES(1, 
       1);
INSERT INTO aaa
VALUES(1, 
       2);

--�̰� �� �ȵ�.
INSERT INTO aaa
VALUES(1,
       NULL);
INSERT INTO aaa
VALUES(1, 
       NULL);

--null null�� �ߺ���.
INSERT INTO aaa
VALUES(NULL, NULL);
INSERT INTO aaa
VALUES(NULL, NULL);

SELECT *
FROM   aaa;

--����Ű = ���ϼ��� ���������� �ּҼ��� �������� �ʴ� Ű
CREATE TABLE dept_test (
       deptid   NUMBER(2) primary key, --�⺻Ű�� ��, �ߺ��Ǹ� �ȵ�.
       dname    VARCHAR2(14) unique,
       loc      VARCHAR2(13) );
       
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1, 
       'YD01');        

INSERT INTO dept_test (deptid,
                       dname)
VALUES (NULL, 'YD02');         --PRIMARY �������ǿ� �ɸ�
INSERT INTO dept_test (deptid,
                       dname)
VALUES (2, 'YD01');            --UNIQUE ��������
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1, NULL);              --PRIMARY ��������

CREATE TABLE emp1 (
   empid   NUMBER(2),
   deptid  NUMBER(2) references dept_test(deptid) );
--dept_test�� �ִ� deptid�� ���� ��ġ�ϰų� null�� �ƴϸ� ���� ���� �� ����.
INSERT INTO emp1
VALUES (11, 1);

INSERT INTO emp1
VALUES (22, NULL);

--�ȵž���.
INSERT INTO emp1
VALUES (33, 2);

SELECT *
FROM   dept_test;

DROP TABLE emp1;

CREATE TABLE emp1 (
   empid   NUMBER(2),
   deptid  NUMBER(2) references dept_test(deptid) 
                                        ON DELETE SET NULL);
                            --���� ��������. �ٵ� �� �ɼ����� ���� 
INSERT INTO emp1
VALUES (11, 
        1);

DELETE dept_test
WHERE  deptid = 1;

SELECT *
FROM   emp1;

SELECT *
FROM   emp_test;
--modify�� not null�� ����
ALTER TABLE emp_test
ADD primary key(empid);

ALTER TABLE emp_test
ADD FOREIGN KEY(mgr) REFERENCES emp_test(empid);

--������ �����Ͱ� �־ �������� ������ ���� ����־ �������ǿ� �ɷ��� NOT NULL�� ���� �� ������
DELETE emp_test
WHERE  empid = 111;

ALTER TABLE emp_test
MODIFY (duty NOT NULL);

desc emp_test;

--emp_test���̺��� �������� Ȯ��
SELECT *
FROM   user_constraints
WHERE  table_name = 'EMP_TEST';

--?
ALTER TABLE dept_test
DROP  PRIMARY KEY CASCADE;

--�÷��̸�, ���������� ���̳���
SELECT constraint_name,
       column_name
FROM   user_cons_columns;       

--�� �����
CREATE VIEW empvu80
AS   SELECT employee_id,
            last_name,
            salary
     FROM   employees
     WHERE  department_id = 80;
     
SELECT *
FROM   empvu80;
--�� �����ϱ�
CREATE OR REPLACE VIEW salvu50
                  (ID_NUMBER,
                   NAME,
                   ANN_SALARY)
AS SELECT  employee_id,
           last_name,
           salary*12
   FROM    employees
   WHERE   department_id = 50;
   
SELECT *
FROM   salvu50;

SELECT *
FROM   user_objects;

--�䵵 ��ü�� drop
DROP VIEW salvu50;

SELECT rownum,
       last_name
FROM   employees;       
   
CREATE SEQUENCE dept_deptid_seq
                INCREMENT BY 10
                START WITH 120
                MAXVALUE 9999
                NOCACHE
                NOCYCLE;

--
INSERT INTO departments(department_id,
                        department_name,
                        location_id)
VALUES (dept_deptid_seq.NEXTVAL,
        'Support',
        2500);

SELECT *
FROM   departments;

--sequence�� drop���� ��������
DROP SEQUENCE dept_deptid_seq;

--synonym - ���Ǿ� ����
CREATE SYNONYM d_sum
FOR    departments;

SELECT *
FROM   d_sum;

--���Ǿ� ����
DROP SYNONYM d_sum;

