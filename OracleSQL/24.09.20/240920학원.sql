--객체관리를 위한 명령어 ddl

--sample이라는 테이블 생성
CREATE TABLE sample
       (sam1   NUMBER(4),
        sam2   VARCHAR2(10),
        sam3   VARCHAR2(20));
SELECT *
FROM   sample;

--hire_dates 테이블 생성
CREATE TABLE hire_dates
       (id        NUMBER(8),
        hire_date DATE DEFAULT SYSDATE);

SELECT *
FROM   hire_dates;

INSERT INTO hire_dates
VALUES (45,
        NULL);

--default로 지정했을 때 아무것도 입력 안하면 현재날짜
INSERT INTO hire_dates(id)
VALUES (35);

--dept 테이블 생성
CREATE TABLE dept
       (deptno   NUMBER(2),
        dname    VARCHAR2(14),
        loc      VARCHAR2(13),
        create_date DATE DEFAULT SYSDATE);

SELECT *
FROM   dept;

--테이블들 전체 목록이 나옴. developer를 사용하지 않을때 사용하면 됨.
SELECT table_name
FROM   user_tables;

CREATE TABLE dept80
AS
  SELECT employee_id,
         last_name,
         salary*12 ANNSAL, --서브쿼리로 컬럼명을 가져오는데, 연산식이 들어갈경우 컬럼 알레아스가 꼭 있어야 함.
         hire_date
  FROM   employees
  WHERE  department_id = 80;
   
SELECT *
FROM   dept80;

CREATE TABLE dept80
AS
  SELECT employee_id,
         last_name,
         salary*12, -- 컬럼 알레아스가 없는 경우 오류가 나옴.
         hire_date
  FROM   employees
  WHERE  department_id = 80;

CREATE TABLE dept81 (empno, -- 여기에 컬럼명을 작성하거나
                     name,
                     sal,
                     cdate)
AS
  SELECT employee_id,       -- 여기에 컬럼 알레아스를 하나씩 적어주면 됨.
         last_name,
         salary*12,
         hire_date
  FROM   employees
  WHERE  department_id = 80;

--빈 테이블 만드는 유용한 방법, 비슷한 테이블이라면 이렇게 하면됨, 데이터 타입을 안써도 돼서 편함.
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

--ADD로 컬럼 추가, NULL이 들어가는 모습
ALTER TABLE dept80
ADD         (job_id VARCHAR2(9));

SELECT *
FROM   dept80;

--Add에 DEFAULT값을 설정하면 처음에 NULL값이 아닌 초기값을 설정할 수 있음.
ALTER TABLE dept80
ADD         (sal NUMBER(5) DEFAULT 10000);

--글자길이를 늘리거나 줄일 수 있음.
ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(30));

ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(10));

--기존에 있는 데이터길이보다 더 작게하면 아래같은 오류가 발생함.
ALTER TABLE dept80
MODIFY      (last_name VARCHAR2(4));

--default값을 변경하게 되면 기존의 데이터값은 영향을 안받음.이후로 입력되는 데이터는 9999가 적용됨.
ALTER TABLE dept80
MODIFY      (sal NUMBER(5) DEFAULT 9999);

SELECT *
FROM   dept80;

--컬럼 삭제할 때 사용하는 옵션
--drop, 데이터가 있든 없든 다 날라감. 복구할 수 없음. 심사숙고해서 삭제하기
ALTER TABLE dept80
DROP  (sal);

--삭제할때 쓰는 옵션인데, 바로 당장 삭제하는것이 아님. 블라인드된거라고 생각하기  
ALTER TABLE dept80
SET   UNUSED (last_name);

--이 명령어를 쳐야 확실하게 삭제.
ALTER TABLE dept80
DROP  UNUSED COLUMNS;

SELECT *
FROM   dept80;

--삭제
DROP TABLE dept80;

--휴지통
SELECT object_name, 
       original_name, 
       type
FROM   user_recyclebin;

--휴지통에서 불러오기, 테이블 삭제만 이 기능으로 되돌릴 수 있음.(컬럼 삭제는 안 돌아옴)
FLASHBACK TABLE dept80 TO BEFORE DROP;

--PURGE를 붙이면 휴지통으로 안가고 완전히 삭제함. 현업에서 할 일 없음.
DROP TABLE dept81 PURGE;

PURGE RECYCLEBIN; -- 휴지통 비우기

SELECT *
FROM   recyclebin;

--테이블 이름을 바꿈
RENAME sample TO sam;

desc sam;

--오라클에서 기본적으로 만들어놓은 테이블에는 주석이 달려있음. 아래에서 확인하기
SELECT *
FROM   user_tab_comments;

--truncate 행삭제, drop 은 테이블 삭제

DELETE departments
WHERE  department_id = 60;

--제약조건
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

--제약조건으로 인해 NULL값이 들어갈 수 없음.
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

--이건 다 안들어감.
INSERT INTO aaa
VALUES(1,
       NULL);
INSERT INTO aaa
VALUES(1, 
       NULL);

--null null은 중복됨.
INSERT INTO aaa
VALUES(NULL, NULL);
INSERT INTO aaa
VALUES(NULL, NULL);

SELECT *
FROM   aaa;

--슈퍼키 = 유일성은 만족하지만 최소성은 만족하지 않는 키
CREATE TABLE dept_test (
       deptid   NUMBER(2) primary key, --기본키는 널, 중복되면 안됨.
       dname    VARCHAR2(14) unique,
       loc      VARCHAR2(13) );
       
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1, 
       'YD01');        

INSERT INTO dept_test (deptid,
                       dname)
VALUES (NULL, 'YD02');         --PRIMARY 제약조건에 걸림
INSERT INTO dept_test (deptid,
                       dname)
VALUES (2, 'YD01');            --UNIQUE 제약조건
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1, NULL);              --PRIMARY 제약조건

CREATE TABLE emp1 (
   empid   NUMBER(2),
   deptid  NUMBER(2) references dept_test(deptid) );
--dept_test에 있는 deptid의 값이 일치하거나 null이 아니면 값을 넣을 수 없다.
INSERT INTO emp1
VALUES (11, 1);

INSERT INTO emp1
VALUES (22, NULL);

--안돼야함.
INSERT INTO emp1
VALUES (33, 2);

SELECT *
FROM   dept_test;

DROP TABLE emp1;

CREATE TABLE emp1 (
   empid   NUMBER(2),
   deptid  NUMBER(2) references dept_test(deptid) 
                                        ON DELETE SET NULL);
                            --원래 삭제못함. 근데 이 옵션으로 가능 
INSERT INTO emp1
VALUES (11, 
        1);

DELETE dept_test
WHERE  deptid = 1;

SELECT *
FROM   emp1;

SELECT *
FROM   emp_test;
--modify는 not null만 넣음
ALTER TABLE emp_test
ADD primary key(empid);

ALTER TABLE emp_test
ADD FOREIGN KEY(mgr) REFERENCES emp_test(empid);

--기존에 데이터가 있어서 삭제했음 기존에 널이 들어있어서 제약조건에 걸려서 NOT NULL을 넣을 수 없었음
DELETE emp_test
WHERE  empid = 111;

ALTER TABLE emp_test
MODIFY (duty NOT NULL);

desc emp_test;

--emp_test테이블의 제약조건 확인
SELECT *
FROM   user_constraints
WHERE  table_name = 'EMP_TEST';

--?
ALTER TABLE dept_test
DROP  PRIMARY KEY CASCADE;

--컬럼이름, 제약조건이 같이나옴
SELECT constraint_name,
       column_name
FROM   user_cons_columns;       

--뷰 만들기
CREATE VIEW empvu80
AS   SELECT employee_id,
            last_name,
            salary
     FROM   employees
     WHERE  department_id = 80;
     
SELECT *
FROM   empvu80;
--뷰 수정하기
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

--뷰도 객체라서 drop
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

--sequence도 drop으로 삭제가능
DROP SEQUENCE dept_deptid_seq;

--synonym - 동의어 생성
CREATE SYNONYM d_sum
FOR    departments;

SELECT *
FROM   d_sum;

--동의어 삭제
DROP SYNONYM d_sum;

