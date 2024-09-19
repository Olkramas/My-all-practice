--employee 테이블에서 job_id가 employee_id가 141인 job_id와 같고, employee_id가
--141이 아닌 사원의 이름과, job_id를 출력하라.
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

--단일행 연산자라서 출력이 안됨. talyor이름이 두명이라서 안되는 것.
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

--단일행 연산자를 사용할 수 있게 바꿈
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
                   
--employees테이블에 최소값의 급여를 가진 직원의 last_name, job_id, salary를 출력
SELECT   last_name,
         job_id,
         salary
FROM     employees
WHERE    salary = (SELECT   MIN(salary)
                   FROM     employees);
                   
--employees테이블에 department_id가 같은 것들의 급여의 최솟값을 출력.
SELECT   department_id,
         MIN(salary)
FROM     employees
GROUP BY department_id
ORDER BY department_id;

--employees테이블에 급여가 employees테이블의 department_id 종류별로의 급여의 최솟값과 같은
--직원의 이름과 급여, 부서id를 출력하라.
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

--ANY 사용법 익히기


--1. > ANY
--employees테이블에서 급여가 employees테이블의 부서 id가 50인 사람의 급여와 하나라도 큰(최솟값보다 큰)
--직원들의 직원id, 급여를 출력
SELECT   employee_id,
         salary,
         department_id
FROM     employees
WHERE    salary > ANY (SELECT   salary
                       FROM     employees
                       WHERE    department_id = 50);
                       
--2. < ANY
--department_id가 90인 사람들 중에서 급여가 어떤것보다 작은(최댓값) 급여인 직원의 ~~출력
--24000보다 급여가 작은 사람들 모두 출력
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

--ALL 서브쿼리에서 주어진 모든 값보다 <(작다) / >(크다)
-- < ALL은 최솟값보다 작다 / > ALL은 최댓값보다 크다

--직무가 IT_PROG인 사람들의 급여의 모든 값보다 작은 급여의(급여의 최소값) 직원 아이디, 이름
--직무명, 급여 출력하기
SELECT   employee_id,
         last_name,
         job_id,
         salary
FROM     employees
WHERE    salary < ALL (SELECT   salary
                       FROM     employees
                       WHERE    job_id = 'IT_PROG');

-- empl_demo 삽입.          
select *
FROM   empl_demo;


--manager_id와 department_id가 이름이 John인 사원의 것과 같고, 이름이 'John'이 아닌
--직원들의 select출력
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

--manager_id가 이름이 존인 사람의 것과 같고, department_id가 이름의 존인 사람의 것과 같고,
--이름이 존이 아닌사람들의 select들을 출력.
--IN을 사용하는 이유는 이름이 john인 사람이 세명이나 있기 때문에 단일행 연산자를 사용할 수 없음.
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

--1. Zlotkey와 동일한 부서에 속한 모든 사원의 이름과 입사일을 표시하는 질의를 작성하시오.
--Zlotkey는 결과에서 제외하시오.
SELECT   last_name,
         hire_date
FROM     employees
WHERE    department_id = (SELECT   department_id
                          FROM     employees
                          WHERE    last_name = 'Zlotkey')
  AND    last_name != 'Zlotkey';                          

--2. 급여가 평균 급여보다 많은 모든 사원의 사원 번호와 이름을 표시하는 질의를 작성하고 
--결과를 급여에 대해 오름차순으로 정렬하시오.
SELECT   employee_id,
         last_name
FROM     employees
WHERE    salary > (SELECT   AVG(salary)
                   FROM     employees)
ORDER BY salary;                   
--avg는 where에 사용할 수 없음

--3. 이름에 u가 포함된 사원과 같은 부서에서 일하는 모든 사원의 사원 번호와 이름을 
--표시하는 질의를 작성하고 질의를 실행하시오.
SELECT employee_id,
       last_name
FROM   employees
WHERE  department_id IN (SELECT department_id
                         FROM   employees
                         WHERE  last_name LIKE ('%u%'));

--4. 부서 위치 ID(location_id)가 1700인 모든 사원의 이름, 부서 번호 및 업무 ID를 표시하시오.
SELECT   last_name,
         department_id,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     departments
                           WHERE    location_id = 1700);
                           
--5. King에게 보고하는(manager가 King) 모든 사원의 이름과 급여를 표시하시오.
SELECT   last_name,
         salary
FROM     employees
WHERE    manager_id IN (SELECT   employee_id
                        FROM     employees
                        WHERE    last_name = 'King');
                        
--6. Executive 부서의 모든 사원에 대한 부서 번호, 이름 및 업무 ID를 표시하시오.
SELECT   department_id,
         last_name,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     departments
                           WHERE    department_name = 'Executive');
                           
--7. 평균 급여보다 많은 급여를 받고 
--이름에 u가 포함된 사원과 같은 부서에서 근무하는 모든 사원의 사원 번호, 이름 및 급여를 표시하시오.
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

--합집합
SELECT   employee_id,
         job_id
FROM     employees
UNION
SELECT   employee_id,
         job_id
FROM     job_history;

--중복값 넣으려면 union all
SELECT   employee_id,
         job_id
FROM     employees
UNION ALL
SELECT   employee_id,
         job_id
FROM     job_history;

--차집합
SELECT   employee_id,
         job_id
FROM     employees
MINUS
SELECT   employee_id,
         job_id
FROM     job_history;

--차집합은 위아래 셀렉트문 위치 바뀌면 값이 완전히 달라짐.

--교집합
SELECT   employee_id,
         job_id
FROM     employees
INTERSECT
SELECT   employee_id,
         job_id
FROM     job_history;

--employee 20으로 개수 20개 만들기
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
--sales_reps 추가
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
--INSERT INTO에서 서브쿼리를 넣을 때는 괄호를 안함.
--열 개수와 데이터 형식은 같아야 한다.

--employee_id가 113인 직원의 department_id를 50으로 변경
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

--where절 없으면 해당 칼럼의 모든 값이 110으로 변경됨.
UPDATE copy_emp
SET    department_id = 110;

--직원 아이디가 113인 사원의 job_id는 employee_id가 205인 사원의 job_id로,
--급여도 employee_id가 205인 사원의 급여로 employees테이블을 업데이트해라.
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

--1. 다음과 같이 실습에 사용할 MY_EMPLOYEE 테이블을 생성하시오.
CREATE TABLE my_employee
  (id         NUMBER(4) NOT NULL,
   last_name  VARCHAR2(25),
   first_name VARCHAR2(25),
   userid     VARCHAR2(8),
   salary     NUMBER(9,2));
   
SELECT *
FROM   my_employee;

--3. 다음 예제 데이터를 MY_EMPLOYEE 테이블에 추가하시오.(INSERT)
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

--4. 테이블에 추가한 항목을 확인하시오.(SELECT)
SELECT *
FROM   my_employee;

--6. 사원 3의 성을 Drexler로 변경하시오.(UPDATE)
UPDATE my_employee
SET    last_name = 'Drexler';

--7. 급여가 900 미만인 모든 사원의 급여를 1000으로 변경하고 테이블의 변경 내용을 확인하시오.(UPDATE)
UPDATE my_employee
SET    salary = 1000
WHERE  salary < 900;

--8. MY_EMPLOYEE 테이블에서 사원 3을 삭제하고 테이블의 변경 내용을 확인하시오.(DELETE)
DELETE FROM my_employee
WHERE  id = 3;

--11. 테이블의 내용을 모두 삭제하고 테이블 내용이 비어 있는지 확인하시오.(DELETE)
DELETE FROM my_employee;

SELECT *
FROM   my_employee;

--데이터베이스에서 사용자의 객체 정보를 조회하는데 사용됨.
SELECT   table_name
FROM     user_tables;

SELECT   DISTINCT object_type
FROM     user_objects;

SELECT   *
FROM     user_catalog;