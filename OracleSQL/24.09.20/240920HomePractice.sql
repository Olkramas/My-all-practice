--���̺� ����
CREATE TABLE sample
(sam1 NUMBER(4),
 sam2 VARCHAR2(10),
 sam3 VARCHAR2(20));
 
SELECT *
FROM   sample;

--�ڼ��ϰ� ����
describe sample;

CREATE TABLE hire_dates
(id        NUMBER(8),
 hire_date DATE DEFAULT SYSDATE);

INSERT INTO hire_dates
VALUES (45, NULL);

-- hire_dates�� id������ 35�� �־���. hire_date���� default�� ���ó�¥�� �־ �׷��� �� ���.
INSERT INTO hire_dates(id)
VALUES (35);

SELECT *
FROM   hire_dates;

CREATE TABLE dept
       (deptno NUMBER(2),
        dname VARCHAR(14),
        loc   VARCHAR(13),
        create_date DATE DEFAULT SYSDATE);

--���̺� Ȯ��
desc dept;

--���̺� �̸� ��� �˻�, ����
SELECT table_name
FROM   user_tables;

--���������� �̿��ؼ� ���̺� ����
CREATE TABLE dept80
AS                              --���������� ����Ҷ���  AS�� �� �����.
  SELECT employee_id,   
         last_name,
         salary*12 "ANNSAL",    --ǥ������ ����� ���� ������ ��Ī�� �ʿ���.
         hire_date
  FROM   employees
  WHERE  department_id = 80; 
  
desc dept80;

CREATE TABLE dept81
AS
  SELECT employee_id,
         last_name,
         salary * 12,           --�÷� �˷��ƽ� �Ⱦ��� �ٷ� ������.
         hire_date
  FROM   employees
  WHERE  department_id = 80;
  
CREATE TABLE dept81
AS
  SELECT employee_id "empno",   --����ó�� �÷� ���� �̸� �����൵ ��.
         last_name "name",
         salary*12 "sal",
         hire_date "cdate"
  FROM   employees
  WHERE  department_id = 80;
  
CREATE TABLE dept81 (empno,     --�̷��� �ص� �Ȱ���.
                     name,
                     sal,
                     cdate)
AS
  SELECT employee_id,
         last_name,
         salary*12,
         hire_date
  FROM   employees
  WHERE  department_id = 80;

--�� ���̺� ���������� �̿��ؼ� �����ϰ� �����
CREATE TABLE dept82(empno,
                    name,
                    sal,
                    cdate)
AS
  SELECT employee_id,
         last_name,
         salary*12,
         hire_date
  FROM   employees
  WHERE  department_id = 0;

SELECT *
FROM   dept82;


--job_id Į���߰�. � ������ Ÿ�������� ��� Ȯ�� ������.
ALTER TABLE dept80
ADD (job_id VARCHAR2(9));

desc dept80;

ALTER TABLE dept80
ADD (sal NUMBER(5) DEFAULT 10000);

--Į�� ����
--Į���� ������ Ÿ��, ũ�� ���氡��, Į�� �̸��� �������.

--������ �ִ� ũ�� ����
ALTER TABLE dept80
MODIFY (last_name VARCHAR2(30));

desc dept80;

--������  �ִ� ũ�� ����
ALTER TABLE dept80
modify (last_name VARCHAR2(10));

--�����Ϸ��� �ϴ� ������ �������� �ȿ� ����ִ� �����Ͱ� �����Ϸ��� ��ġ���� ������ ������.
ALTER TABLE dept80
MODIFY (last_name VARCHAR2(3));

SELECT *
FROM   dept80;

--DEFAULT�� ����. ���� �ִ� �����ʹ� ���� ���� ����. ���ݺ��� ����� �����͵��� �⺻���� �ٲ�� ��.
ALTER TABLE dept80
MODIFY (sal NUMBER(5) DEFAULT 9999);

--Į�� ���� -- Į���� �ϳ��� �����־�� ��. �� ���ָ� ���̺� ���ִ°Ŷ� �������ΰ�.
--�����ϴ� ���� ���� �Ұ�.
ALTER TABLE dept80
DROP (sal);

desc dept80;

--���̺� �������� ���� ��� ���������� ������. ��Ȱ��ȭ ����.
--���߿� ����� �� �ְ� �ٲܼ��� ����
ALTER TABLE dept80
SET UNUSED (last_name);

desc dept80;

--����ó���� �÷��� ���� ����
ALTER TABLE dept80
DROP UNUSED COLUMNS;

DROP table dept80;

SELECT *
FROM   user_recyclebin;

DROP TABLE dept81 purge;

purge RECYCLEBIN;

--recyclebin���� ������ �Ʒ� ��ɾ�� �ǵ����� ����.
flashback table dept80 to before drop;

--���̺� �̸� ����
RENAME sample to sam;

desc sam;

select *
from   sam;

--���̺��� ��� ���� ������ ����
--��ü �� ��ü ����, �ε����� ������.
truncate table sam;

--���̺� �ּ�Ȯ��
select *
from   all_tab_comments;

--��������
/*
NOT NULL - NULL ���� ������� ����.
UNIQUE �ش� �÷��� ���� ���̺� ������ �����ؾ� ��. ������ ���� �ߺ��� �� ����.
PRIMARY KEY ���̺� ������ �� ���� �����ϰ� �ĺ��ϴ� �÷� �Ǵ� �÷��� �����Դϴ�. PRIMARY KEY�� �ڵ����� NOT NULL�� UNIQUE ���������� �����մϴ�.
FOREIGN KEY �ٸ� ���̺��� PRIMARY KEY�� �����ϴ� �÷��Դϴ�. �������� ���Ἲ�� �����ϱ� ���� ���Ǹ�, �����ϴ� ���̺� �����ϴ� ���� �Էµ� �� �ֽ��ϴ�.
CHECK Ư�� ������ �����ϴ� ���� �Էµ� �� �ֵ��� �����մϴ�.
*/

CREATE TABLE emp_test(empid NUMBER(5),
                      empname VARCHAR2(10) NOT NULL,
                      duty VARCHAR2(9),
                      sal NUMBER(7, 2),
                      bonus NUMBER(7,2), -- �Ҽ��� 2��°���� ������.
                      mgr NUMBER(5),
                      hire_date DATE,
                      deptid NUMBER(2));
                      
INSERT INTO emp_test(empid,
                     empname)
VALUES (111,
        'skj');

--empname�� not null�̶� �ΰ��� �������� �ϸ� ������ ��.
INSERT INTO emp_test(empid,
                     empname)
VALUES (222,
        '');        
        
--unique��������

CREATE TABLE AAA(aa NUMBER(3),
                 BB NUMBER(3),
                 UNIQUE(aa, bb));

INSERT INTO AAA
VALUES (1,
        1);
INSERT INTO AAA
VALUES (1,
        2);
INSERT INTO AAA
VALUES (1,
        NULL);     
SELECT *
FROM   AAA;

--UNIQUE ������������ ���� �����Ͱ� �־ �� �� ����
INSERT INTO AAA
VALUES (1,
        NULL); 
        
INSERT INTO AAA
VALUES (NULL,
        1);

--�Ѵ� �ΰ��̸� �������. ��� ��~�� ��.
INSERT INTO AAA
VALUES (NULL,
        NULL);
        
--primary key
--���ϼ��� �����ϸ� ����Ű, ���ϼ��� �ּҼ��� �����ϴ°� �ĺ�Ű��� ����.

CREATE TABLE dept_test(deptid NUMBER(2) PRIMARY KEY,
                       dname VARCHAR2(14) UNIQUE,
                       loc VARCHAR2(13));
                       
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1,
        'YD01');

--�⺻Ű�� Ư���� NOT NULL�̱⶧���� ���� �߰��� �� ����.
INSERT INTO dept_test (deptid,
                       dname)
VALUES (NULL,
        'YD01');        
        
-- UNIQUE�������ǿ� �ɸ�. �ߺ��� �� ���� ���� �־ ����.        
INSERT INTO dept_test (deptid,
                       dname)
VALUES (2,
        'YD01');     

--�⺻Ű�� ������ ���̾����. �ߺ��� �� ����.
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1,
        NULL);
        
SELECT *
FROM   dept_test;

--foreign key ����
--�÷��������� �ܷ�Ű ����
CREATE TABLE emp1(empid NUMBER(2),
                  deptid NUMBER(2) REFERENCES dept_test(deptid));
                  
--���̺� �������� �ܷ�Ű ����
--constraint �ڿ��� ������ �������� �̸��� �;���.
CREATE TABLE emp1(empid NUMBER(2),
                  deptid NUMBER(2),
                  CONSTRAINT fk_dept FOREIGN KEY (deptid) REFERENCES dept_test(deptid));            

INSERT INTO emp1(empid,
                 deptid)
VALUES (11,
        1);
INSERT INTO emp1(empid,
                 deptid)
VALUES (22,
        NULL);        

--�θ��� deptid���� 2��� ���� ��� �� �� ���� ���.
INSERT INTO emp1(empid,
                 deptid)
VALUES (33,
        2);
        
--���̺� ����
DROP TABLE emp1;

--on delete set null �θ��� �����̸Ӹ� Ű�� ���� �����Ǹ� �ڽ��� �ܷ�Ű ���� ��� NULL�� �ٲ�.
CREATE TABLE emp1(
   empid NUMBER(2),
   deptid NUMBER(2) 
      REFERENCES dept_test(deptid) ON DELETE SET NULL);
      --�÷� �������� ����
      
CREATE TABLE emp1(
   empid NUMBER(2),
   deptid NUMBER(2) 
      CONSTRAINT dept_fk REFERENCES dept_test(deptid)
         ON DELETE SET NULL);
         --���̺� �������� ����

INSERT INTO emp1(
   empid,
   deptid
) VALUES (
   11,
   1
);

DELETE
    dept_test
WHERE
    deptid = 1;

SELECT
    *
FROM
    emp1;
    
--check �÷� ��������
--���̺� ����, �÷� ���� ������� �����ϰ� �����ϸ� �ȴ�.

desc emp_test;

--emp_test�� empid�� �θ�Ű ����
ALTER TABLE emp_test
ADD PRIMARY KEY(empid);

--mgr�� empid�� �ܷ�Ű�� ����.
ALTER TABLE emp_test
ADD FOREIGN KEY(mgr)
    REFERENCES emp_test(empid);

desc emp_test;

--���� duty���� null�� �־ not null�� ������ ����.
ALTER TABLE emp_test
MODIFY (duty not null);
--Ȯ���غ���
SELECT 
    duty
FROM   
    emp_test;
--null������ ����
DELETE 
    emp_test
WHERE
    empid = 111;
    
--���� not null������ �� ����
ALTER TABLE emp_test
MODIFY (duty not null);

--�������� �̸��� �𸦶� ã��
SELECT *
FROM 
    user_constraints
WHERE
    table_name = 'EMP_TEST'; -- ��ҹ��� �������.
--���������� ������ �� �̸��� �־��ٸ� �Ʒ�ó�� ��µ�.
SELECT *
FROM 
    user_constraints
WHERE
    table_name = 'EMP1';

--CASCADE�� ���������� ����� �ܷ�Ű�� ���ư�.
--���� �⺻Ű�� �����Ǹ� �ܷ�Ű�� ����Ҽ��� ����.
ALTER TABLE    dept_test
DROP PRIMARY KEY CASCADE;

DESC dept_test;

SELECT   constraint_name,
         column_name
FROM     user_cons_columns;        

--�䰴ü

--�����
--�������� ����ϱ�
CREATE VIEW empvu80
AS SELECT employee_id,
          last_name,
          salary
   FROM   employees
   WHERE  department_id = 80;
   
--�� ����
SELECT *
FROM   empvu80;

--�� ������ alter�� �ϴ°� �ƴ�. �׳� ���� �����ؼ� ����� ����ۿ� ����.
CREATE OR REPLACE VIEW salvu50
                              (IN_NUMBER,
                               NAME,
                               ANN_SALARY)
AS SELECT employee_id,
          last_name,
          salary*12
FROM      employees
WHERE     department_id = 50;

CREATE OR REPLACE VIEW empvu80
                              (IN_NUMBER,
                               NAME,
                               ANN_SALARY)
AS SELECT employee_id,
          last_name,
          salary*12
FROM      employees
WHERE     department_id = 50;
SELECT *
FROM   empvu80;

SELECT *
FROM   user_objects order by timestamp desc;

DROP VIEW salvu50;

SELECT rownum,
       last_name
FROM   employees;      

CREATE sequence dept_deptid_seq
                increment by 10
                start with 120
                maxvalue 9999
                nocache
                nocycle;
CREATE sequence dept_mrgid_seq
                increment by 1
                start with 201
                maxvalue 9999
                nocache
                nocycle;

INSERT INTO departments (department_id,
                         department_name,
                         location_id)
VALUES (dept_deptid_seq.NEXTVAL,                         
        'Supptor',
        2500);

--������ �ΰ��� ��������
INSERT INTO departments (department_id,
                         department_name,
                         manager_id,
                         location_id)
VALUES (dept_deptid_seq.NEXTVAL,                         
        'Supptor',
        dept_mrgid_seq.NEXTVAL,
        2500);
        
        
SELECT *
FROM user_sequences;
--WHERE   sequence_name = dept_deptid_seq;

SELECT   *
FROM     departments
ORDER BY department_id;


DROP SEQUENCE dept_deptid_seq;
DROP SEQUENCE dept_mrgid_seq;

--���Ǿ� ���� for �ڿ� ���� ���̺� �̸� ��� ����� �� ����.
CREATE SYNONYM d_sum
FOR    departments;

SELECT *
FROM   d_sum;

DROP SYNONYM d_sum;