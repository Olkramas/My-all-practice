--테이블 생성
CREATE TABLE sample
(sam1 NUMBER(4),
 sam2 VARCHAR2(10),
 sam3 VARCHAR2(20));
 
SELECT *
FROM   sample;

--자세하게 보기
describe sample;

CREATE TABLE hire_dates
(id        NUMBER(8),
 hire_date DATE DEFAULT SYSDATE);

INSERT INTO hire_dates
VALUES (45, NULL);

-- hire_dates의 id값에만 35를 넣었음. hire_date에는 default로 오늘날짜를 넣어서 그렇게 들어간 모습.
INSERT INTO hire_dates(id)
VALUES (35);

SELECT *
FROM   hire_dates;

CREATE TABLE dept
       (deptno NUMBER(2),
        dname VARCHAR(14),
        loc   VARCHAR(13),
        create_date DATE DEFAULT SYSDATE);

--테이블 확인
desc dept;

--테이블 이름 모두 검색, 나열
SELECT table_name
FROM   user_tables;

--서브쿼리를 이용해서 테이블 생성
CREATE TABLE dept80
AS                              --서브쿼리를 사용할때는  AS를 꼭 써야함.
  SELECT employee_id,   
         last_name,
         salary*12 "ANNSAL",    --표현식을 사용할 때는 무조건 별칭이 필요함.
         hire_date
  FROM   employees
  WHERE  department_id = 80; 
  
desc dept80;

CREATE TABLE dept81
AS
  SELECT employee_id,
         last_name,
         salary * 12,           --컬럼 알레아스 안쓰면 바로 오류남.
         hire_date
  FROM   employees
  WHERE  department_id = 80;
  
CREATE TABLE dept81
AS
  SELECT employee_id "empno",   --여기처럼 컬럼 옆에 이름 정해줘도 됨.
         last_name "name",
         salary*12 "sal",
         hire_date "cdate"
  FROM   employees
  WHERE  department_id = 80;
  
CREATE TABLE dept81 (empno,     --이렇게 해도 똑같음.
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

--빈 테이블 서브쿼리를 이용해서 간단하게 만들기
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


--job_id 칼럼추가. 어떤 테이터 타입인지도 모두 확인 가능함.
ALTER TABLE dept80
ADD (job_id VARCHAR2(9));

desc dept80;

ALTER TABLE dept80
ADD (sal NUMBER(5) DEFAULT 10000);

--칼럼 수정
--칼럼의 데이터 타입, 크기 변경가능, 칼럼 이름은 변경못함.

--데이터 최대 크기 수정
ALTER TABLE dept80
MODIFY (last_name VARCHAR2(30));

desc dept80;

--데이터  최대 크기 수정
ALTER TABLE dept80
modify (last_name VARCHAR2(10));

--수정하려고 하는 데이터 사이즈의 안에 들어있는 데이터가 수정하려는 수치보다 적으면 오류남.
ALTER TABLE dept80
MODIFY (last_name VARCHAR2(3));

SELECT *
FROM   dept80;

--DEFAULT값 변경. 원래 있는 데이터는 영향 받지 않음. 지금부터 생기는 데이터들의 기본값이 바뀌게 됨.
ALTER TABLE dept80
MODIFY (sal NUMBER(5) DEFAULT 9999);

--칼럼 삭제 -- 칼럼이 하나라도 남아있어야 됨. 다 없애면 테이블 없애는거랑 같은말인것.
--삭제하는 열은 복구 불가.
ALTER TABLE dept80
DROP (sal);

desc dept80;

--테이블 삭제전에 열을 잠시 사용안함으로 변경함. 비활성화 느낌.
--나중에 사용할 수 있게 바꿀수는 없음
ALTER TABLE dept80
SET UNUSED (last_name);

desc dept80;

--숨김처리한 컬럼들 전부 삭제
ALTER TABLE dept80
DROP UNUSED COLUMNS;

DROP table dept80;

SELECT *
FROM   user_recyclebin;

DROP TABLE dept81 purge;

purge RECYCLEBIN;

--recyclebin비우기 전에는 아래 명령어로 되돌리기 가능.
flashback table dept80 to before drop;

--테이블 이름 변경
RENAME sample to sam;

desc sam;

select *
from   sam;

--테이블의 모든 행의 데이터 삭제
--전체 행 자체 삭제, 인덱스도 삭제됨.
truncate table sam;

--테이블 주석확인
select *
from   all_tab_comments;

--제약조건
/*
NOT NULL - NULL 값을 허용하지 않음.
UNIQUE 해당 컬럼의 값이 테이블 내에서 유일해야 함. 동일한 값이 중복될 수 없음.
PRIMARY KEY 테이블 내에서 각 행을 고유하게 식별하는 컬럼 또는 컬럼의 조합입니다. PRIMARY KEY는 자동으로 NOT NULL과 UNIQUE 제약조건을 포함합니다.
FOREIGN KEY 다른 테이블의 PRIMARY KEY를 참조하는 컬럼입니다. 데이터의 무결성을 유지하기 위해 사용되며, 참조하는 테이블에 존재하는 값만 입력될 수 있습니다.
CHECK 특정 조건을 만족하는 값만 입력될 수 있도록 제한합니다.
*/

CREATE TABLE emp_test(empid NUMBER(5),
                      empname VARCHAR2(10) NOT NULL,
                      duty VARCHAR2(9),
                      sal NUMBER(7, 2),
                      bonus NUMBER(7,2), -- 소수점 2번째까지 저장함.
                      mgr NUMBER(5),
                      hire_date DATE,
                      deptid NUMBER(2));
                      
INSERT INTO emp_test(empid,
                     empname)
VALUES (111,
        'skj');

--empname은 not null이라서 널값을 넣으려고 하면 오류가 남.
INSERT INTO emp_test(empid,
                     empname)
VALUES (222,
        '');        
        
--unique제약조건

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

--UNIQUE 제약조건으로 동일 데이터가 있어서 들어갈 수 없음
INSERT INTO AAA
VALUES (1,
        NULL); 
        
INSERT INTO AAA
VALUES (NULL,
        1);

--둘다 널값이면 상관없음. 계속 쭉~쭉 들어감.
INSERT INTO AAA
VALUES (NULL,
        NULL);
        
--primary key
--유일성만 만족하면 슈퍼키, 유일성과 최소성을 만족하는걸 후보키라고 말함.

CREATE TABLE dept_test(deptid NUMBER(2) PRIMARY KEY,
                       dname VARCHAR2(14) UNIQUE,
                       loc VARCHAR2(13));
                       
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1,
        'YD01');

--기본키의 특성은 NOT NULL이기때문에 행을 추가할 수 없음.
INSERT INTO dept_test (deptid,
                       dname)
VALUES (NULL,
        'YD01');        
        
-- UNIQUE제약조건에 걸림. 중복될 수 없는 값을 넣어서 오류.        
INSERT INTO dept_test (deptid,
                       dname)
VALUES (2,
        'YD01');     

--기본키도 유일한 값이어야함. 중복될 수 없음.
INSERT INTO dept_test (deptid,
                       dname)
VALUES (1,
        NULL);
        
SELECT *
FROM   dept_test;

--foreign key 생성
--컬럼레벨에서 외래키 설정
CREATE TABLE emp1(empid NUMBER(2),
                  deptid NUMBER(2) REFERENCES dept_test(deptid));
                  
--테이블 레벨에서 외래키 설정
--constraint 뒤에는 무조건 제약조건 이름이 와야함.
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

--부모의 deptid에서 2라는 값이 없어서 들어갈 수 없는 모습.
INSERT INTO emp1(empid,
                 deptid)
VALUES (33,
        2);
        
--테이블 삭제
DROP TABLE emp1;

--on delete set null 부모의 프라이머리 키의 값이 삭제되면 자식의 외래키 값이 모두 NULL로 바뀜.
CREATE TABLE emp1(
   empid NUMBER(2),
   deptid NUMBER(2) 
      REFERENCES dept_test(deptid) ON DELETE SET NULL);
      --컬럼 레벨에서 생성
      
CREATE TABLE emp1(
   empid NUMBER(2),
   deptid NUMBER(2) 
      CONSTRAINT dept_fk REFERENCES dept_test(deptid)
         ON DELETE SET NULL);
         --테이블 레벨에서 생성

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
    
--check 컬럼 제약조건
--테이블 레벨, 컬럼 레벨 어디적든 동일하게 선언하면 된다.

desc emp_test;

--emp_test의 empid를 부모키 설정
ALTER TABLE emp_test
ADD PRIMARY KEY(empid);

--mgr을 empid의 외래키로 설정.
ALTER TABLE emp_test
ADD FOREIGN KEY(mgr)
    REFERENCES emp_test(empid);

desc emp_test;

--현재 duty에는 null이 있어서 not null로 설정을 못함.
ALTER TABLE emp_test
MODIFY (duty not null);
--확인해보기
SELECT 
    duty
FROM   
    emp_test;
--null데이터 삭제
DELETE 
    emp_test
WHERE
    empid = 111;
    
--이제 not null설정할 수 있음
ALTER TABLE emp_test
MODIFY (duty not null);

--제약조건 이름을 모를때 찾기
SELECT *
FROM 
    user_constraints
WHERE
    table_name = 'EMP_TEST'; -- 대소문자 상관있음.
--제약조건을 설정할 때 이름을 넣었다면 아래처럼 출력됨.
SELECT *
FROM 
    user_constraints
WHERE
    table_name = 'EMP1';

--CASCADE는 제약조건이 연결된 외래키도 날아감.
--원래 기본키가 삭제되면 외래키는 사용할수는 없음.
ALTER TABLE    dept_test
DROP PRIMARY KEY CASCADE;

DESC dept_test;

SELECT   constraint_name,
         column_name
FROM     user_cons_columns;        

--뷰객체

--뷰생성
--서브쿼리 사용하기
CREATE VIEW empvu80
AS SELECT employee_id,
          last_name,
          salary
   FROM   employees
   WHERE  department_id = 80;
   
--뷰 보기
SELECT *
FROM   empvu80;

--뷰 수정은 alter로 하는게 아님. 그냥 새로 생성해서 덮어쓰는 방법밖에 없음.
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

--시퀀스 두개로 만들어봤음
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

--동의어 생성 for 뒤에 오는 테이블 이름 대신 사용할 수 있음.
CREATE SYNONYM d_sum
FOR    departments;

SELECT *
FROM   d_sum;

DROP SYNONYM d_sum;