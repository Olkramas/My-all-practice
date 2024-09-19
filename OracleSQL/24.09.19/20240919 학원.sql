--서브 쿼리는 db접근 횟수를 줄여줄 수 있어서 효과적이다.

--싱글행 서브쿼리
--141번 사원번호를 가진
SELECT   last_name,
         job_id,
         employee_id
FROM     employees
--테일러와 직종이 같고
WHERE    job_id = (SELECT   job_id
                   FROM     employees
                   WHERE    employee_id = 141)
AND      employee_id != 141;          --141번 제외 출력
--테일러보다 급여가 높은 사람--테일러가 두명이라서 출력이 안됨 아래 확인하기.

--결과가 하나라서 싱글행
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

--급여가 가장작은 사람의 이름, 업무, 급여 출력.
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    salary = (SELECT   MIN(salary)
                   FROM     employees);


--다중행 서브쿼리

SELECT   last_name,
         salary,
         department_id
FROM     employees;


--부서마다 급여가 제일 적은 사람들 출력. 제일 적은것과 같은 사람들 같이 출력됨.         
SELECT   last_name,
         salary,
         department_id
FROM     employees
WHERE    salary IN (SELECT MIN(salary)
                    from   employees
                    group by department_id);    

--it_prog직무의 사람들의 급여중 급여가 최댓값보다 작은 사람들
SELECT   employee_id,
         last_name,
         job_id,
         salary
FROM     employees
WHERE    salary < ANY (SELECT   salary
                       FROM     employees
                       WHERE    job_id = 'IT_PROG');
                       
-- it_prog직무의 사람들의 급여중 급여가 최솟값보다 작은 사람들
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

--문제
--1. Zlotkey와 동일한 부서에 속한 모든 사원의 이름과 입사일을 표시하는 질의를 작성하시오. 
--Zlotkey는 결과에서 제외하시오.
SELECT   last_name,
         hire_date
FROM     employees
WHERE    department_id = (SELECT   department_id
                          FROM     employees
                          WHERE    last_name = 'Zlotkey')
AND      last_name <> 'Zlotkey';                          

--2. 급여가 평균 급여보다 많은 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하고 
--결과를 급여에 대해 오름차순으로 정렬하시오.
SELECT   employee_id,
         last_name
FROM     employees
WHERE    salary > (SELECT AVG(salary)
                   FROM   employees)
ORDER BY salary;

--3. 이름에 u가 포함된 사원과 같은 부서에서 일하는 모든 사원의 
--사원 번호와 이름을 표시하는 질의를 작성하고 질의를 실행하시오.
--결과가 하나가 아니라서 IN을사용해야 함
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

--4. 부서 위치 ID(location_id)가 1700인 
--모든 사원의 이름, 부서 번호 및 업무 ID를 표시하시오.
SELECT   last_name,
         department_id,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     locations
                           WHERE    location_id = 1700);
                         

--5. King에게 보고하는(manager가 King) 모든 사원의 이름과 급여를 표시하시오.
SELECT   last_name,
         salary
FROM     employees
WHERE    manager_id IN (SELECT   employee_id
                        FROM     employees
                        WHERE    LOWER(last_name) IN 'king');
                        
SELECT   last_name
FROM     employees
WHERE    manager_id = 100;
--6. Executive 부서의 모든 사원에 대한 부서 번호, 이름 및 업무 ID를 표시하시오.
SELECT   department_id,
         last_name,
         job_id
FROM     employees
WHERE    department_id IN (SELECT department_id
                           FROM   departments
                           WHERE  department_name = 'Executive');

--7. 평균 급여보다 많은 급여를 받고(and) 이름에 u가 포함된 사원과 같은 부서에서 
--근무하는 모든 사원의 사원 번호, 이름 및 급여를 표시하시오.
SELECT   employee_id,
         last_name,
         salary
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees
                   WHERE    last_name LIKE ('%u%'));
                  --last_name에 u가 포함된 사원들의 평균하나
       
       --수정
SELECT   employee_id,
         last_name,
         salary
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees)    
AND      department_id IN (SELECT   department_id
                           FROM     employees
                           WHERE    last_name LIKE ('%u%'));

--집합 연산자                   
SELECT *
FROM   employees;

SELECT *
FROM   job_history;

--예전 부서 하다가 옮겨서 중복값이 생기게 됨.
--합집합이라서 중복값은 빼고 115개가 출력됨.
SELECT   employee_id,
         job_id
FROM     employees
UNION
SELECT   employee_id,
         job_id
FROM     job_history;         

--중복값도 다 나오는 UNION ALL, 117개 출력됨.
SELECT   employee_id,
         job_id
FROM     employees
UNION ALL
SELECT   employee_id,
         job_id
FROM     job_history;  
--위아래 컬럼 수, 데이터 타입이 같아야 함. order by 는 항상 제일 마지막에

--차집합.
SELECT   employee_id,
         job_id
FROM     employees
MINUS
SELECT   employee_id,
         job_id
FROM     job_history;

--FROM의 위치가바뀌면서 값이 달라지는 모습
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

--교집합
SELECT   employee_id,
         job_id
FROM     employees
INTERSECT
SELECT   employee_id,
         job_id
FROM     job_history;

--20개
SELECT   *
FROM     employees;

--8개
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

--모든 칼럼에 내용을 넣을때는 컬럼명을 다 안적어줘도 됨.
--배우는 동안 모두 다 나열하기.
--컬럼 개수와 값의 개수를 착각해서 오류나는 경우가 많음. 실수를 최소화하기 위해서 하나씩 작성하기.
INSERT INTO departments
VALUES                 (71, 
                       'public Relations', 
                       100, 
                       1700);
                   
--암시적으로null값을 넣어줬음                       
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
       ''); --''안에 공백 없음
       
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

--특정 날짜 입력할 때 TO_DATE함수 사용권장.
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

--sales_reps 스크립트 실행하기
SELECT *
FROM   sales_reps;


--서브쿼리에 있는 내용을 insert한다는 내용.
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

--employee_id가 113인 사원들을
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

--where절이 없어서 해당 칼럼에 모든 값이 하나로 바뀌게 됨.
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

--where절 빼고 실행됨. 전부 다 사라지는 모습
DELETE FROM copy_emp;

SELECT *
FROM   copy_emp;

--삭제 복구
ROLLBACK;

--롤백으로도 안돌아옴. TRUNCATE는 복구 불가능하다. 
TRUNCATE TABLE copy_emp;

CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));
/*
3. 다음 예제 데이터를 MY_EMPLOYEE 테이블에 추가하시오.(INSERT)
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
        
--4. 테이블에 추가한 항목을 확인하시오.(SELECT)        
SELECT *
FROM   my_employee;

--6. 사원 3의 성을 Drexler로 변경하시오.(UPDATE)
UPDATE my_employee
SET    last_name = 'Drexler'
WHERE  id = 3;

--7. 급여가 900 미만인 모든 사원의 급여를 1000으로 변경하고 테이블의 변경 내용을 확인하시오.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

--8. MY_EMPLOYEE 테이블에서 사원 3을 삭제하고 테이블의 변경 내용을 확인하시오.(DELETE)
DELETE FROM my_employee
WHERE  id = 3;

--11. 테이블의 내용을 모두 삭제하고 테이블 내용이 비어 있는지 확인하시오.(DELETE)
DELETE FROM my_employee;
--여기서 롤백하면 트렌잭션이 일어나지 않았기때문에 3번이 생성되기 전까지 사라짐.


--딕셔너리 질의
--사용자가 소유한 테이블의 이름질의
SELECT table_name
FROM   user_tables;

--사용자가 소유한 개별 객체 유형질의
SELECT DISTINCT object_type
FROM   user_objects;

--사용자가 소유한 테이블, 뷰, 동의어 및 시퀀스 질의
SELECT *
FROM   user_catalog;
