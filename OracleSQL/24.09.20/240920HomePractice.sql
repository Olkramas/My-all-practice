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
