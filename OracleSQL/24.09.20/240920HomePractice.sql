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
