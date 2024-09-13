/*4. 사원의 이름과 커미션을 표시하는 질의를 작성하시오.
   커미션을 받지 않는 사원일 경우 “No Commission”을 표시하시오. (NVL 함수)
   열 레이블은 COMM으로 지정하시오.*/
   
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No Commission') "COMM"
FROM   employees;
-- NVL은 사용하기 위해서 데이터 값을 통일시켜야 됨.

SELECT *
FROM   employees;
/*5. CASE 구문을 사용하여 
   다음 데이터에 따라 JOB_ID 열의 값을 기준으로 
   모든 사원의 등급을 표시하는 질의를 작성하시오.
   업무         등급
    AD_PRES     A
    ST_MAN      B
    IT_PROG     C
    SA_REP      D
    ST_CLERK    E
    그외         0
   */
SELECT job_id,
       (CASE WHEN job_id = 'AD_PRES' THEN 'A'
             WHEN job_id = 'ST_MAN'  THEN 'B'
             WHEN job_id = 'IT_PROG' THEN 'C'
             WHEN job_id = 'SA_REP'  THEN 'D'
             WHEN job_id = 'ST_CLECK'THEN 'E'
                                     ELSE '0'
        END)
FROM   employees;

--사원이름, 급여, 커미션 수령 유무 출력하시오.
-- 단, 커미션 수령 유무는 커미션을 받으면 YES, 
-- 받지 않으면 NO가 출력되도록 하시오.
-- 커미션 수령 유무 열 별칭은 commission으로 하시오

SELECT last_name,
       salary,
       NVL2(commission_pct, 'YES', 'NO') "commission"
FROM   employees;

--만약 DB가 오라클이 아니라면?
SELECT last_name, 
       salary,
       commission_pct,
       (CASE WHEN commission_pct > 0  THEN 'YES'
                                      ELSE 'NO'
        END)
FROM    employees;
       


/*급여가 20000이하이면 20% 인상된 급여,
  급여가 30000이하이면 15% 인상된 급여
  급여가 50000이하이면 10% 인상된 급여
  급여가 50000이상이면 급여 그대로
  단. 사원이름 원래급여 인상된 급여 순으로 출력되게하기
  */
  
SELECT last_name,
       salary,
       (CASE WHEN salary <= 20000 THEN salary * 1.20
             WHEN salary <= 30000 THEN salary * 1.15
             WHEN salary <= 50000 THEN salary * 1.1
                                  ELSE salary
        END)
FROM   employees;

--그룹함수, 기본 집계함수
--COUNT(*)제외 모든 NULL을 무시함.
SELECT AVG(salary), /*숫자데이터만 사용가능*/
       MAX(salary), /*모든 데이터 사용가능*/
       MIN(salary), /*모든 데이터 OK*/
       SUM(salary)
FROM   employees
WHERE  job_id LIKE '%REP%';

SELECT MIN(hire_date), /*날짜 최소값*/
       MAX(hire_date)
FROM   employees;

--문자 데이터에도 사용가능한 min, max
SELECT MIN(last_name),
       MAX(last_name)
FROM   employees;

SELECT MIN(job_id),
       job_id
FROM   employees;
/*count(*)은 null값을 포함해서 나옴
  count(특정함수) null값 무시*/
  
--부서에 소속된 사원은 몇명인가
SELECT COUNT(department_id)
FROM   employees;

--사원이 있는 부서는 몇개인가?
--부서 중복값 제거 후 COUNT
SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(*)
FROM   employees;

--부서 id가 50인 사람들 수
SELECT COUNT(*)
FROM   employees
WHERE  department_id = 50;

--커미션을 받는 사람들 부서 id가 80인 사람들 중
SELECT COUNT(commission_pct)
FROM   employees
WHERE  department_id = 80;

SELECT AVG(commission_pct)
FROM   employees;

--AVG는 널을 무시하기 때문에 NVL로 NULL을 0으로 바꿔준 모습
SELECT AVG(NVL(commission_pct, 0))
FROM   employees;

--SELECT절에 그룹 함수를 사용했을 때 기본 컬럼이 들어오면 GROUP BY에 기본 컬럼을 써줘야 됨.
SELECT department_id,
       AVG(NVL(salary, 0)) /*salary가 널 일수도 있어서 NVL사용*/
FROM   employees
GROUP BY department_id;


SELECT AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id;

SELECT department_id,
       AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id
ORDER BY 2;

SELECT department_id, 
       job_id,
       SUM(salary)
FROM   employees
GROUP BY department_id, job_id
ORDER BY job_id;
--부서를 먼저 묶음, 직무를 그다음으로 그룹핑. job_id로 오름차순 정렬

SELECT department_id, 
       job_id,
       SUM(salary)
FROM   employees
WHERE  department_id > 40
GROUP BY department_id, job_id
ORDER BY job_id;

SELECT department_id, AVG(salary)
FROM   employees                    /*1번 수행*/
WHERE  AVG(salary) > 8000            /*2번 수행 그룹핑 전에 avg를 사용해서 그럼/ 이해 부족함..*/
GROUP BY department_id;

SELECT   department_id,
         AVG(salary)
FROM     employees
--where
GROUP BY department_id
HAVING   AVG(salary) > 8000;
--order by

SELECT   department_id, 
         MAX(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;

-- FROM WHERE - GROUP BY

SELECT   department_id, 
         AVG(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;
--샐러리 최댓값
-- HAVING절은 SELECT문에 있는 그룹함수만 제어하는게 아닌, 모든 그룹함수를 제어할 수 있음.

--**********************************
SELECT   job_id,
         SUM(salary) PAYROLL
FROM     employees
WHERE    job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING   SUM(salary) > 13000
ORDER BY SUM(salary);

SELECT   MAX(AVG(salary))
FROM     employees
GROUP BY department_id;

--SELECT문에 중접 그룹함수를 사용했을 경우, 절.대.로 일반 칼럼들이 들어올 수 없음.
SELECT   department_id;
         MAX(AVG(salary))
FROM     employees
GROUP BY department_id;

--테이블 n개에서 정보를 가져올 때 join은 n-1개임.

--공용
SELECT last_name,
       department_name
FROM   employees CROSS JOIN departments;

SELECT COUNT(*)
FROM   employees; --107개

SELECT COUNT(*)
FROM   departments; --27개

--오라클 where이 생략됨
SELECT last_name,
       departments.department_id,
       department_name
FROM   employees, departments;
--WHERE employees.department_id = departments.department_id;

--차이 비교하기
SELECT last_name,
       departments.department_id,
       department_name
FROM   employees, departments
WHERE  employees.department_id = departments.department_id;
--같은 경우에 셀렉트 출력


SELECT department_id
FROM   departments;

SELECT department_name
FROM   departments;

--공통
SELECT department_id,
       department_name,
       location_id,
       city
FROM   departments NATURAL JOIN locations;

--오라클


SELECT d.department_id,
       d.department_name,
       location_id,
       l.city
FROM   departments d, NATURAL JOIN locations l;
--네추럴 조인은 테이블 알레아스는 사용할 수 없음
--테이블 알레아스는 명확한 조인 구문이 있으면 사용함.
--네추럴 조인 - 동일한 컬럼명이 있어야 사용할 수 있다.


SELECT e.employee_id,
       e.last_name,
       d.location_id,
       department_id
FROM   employees e JOIN departments d
                   USING (department_id);

--공동***************
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e JOIN departments d
       ON (e.department_id = d.department_id);
--department_id e, d가 서로 같을때 select의 내용들을 출력함.

--오라클
SELECT e.employee_id,
       e.last_name,
       e.department_id,
       d.department_id,
       d.location_id
FROM   employees e, departments d
WHERE  (e.department_id = d.department_id);

--사원이름(last_name)과 해당 사원 소속된 부서이름(department_name)
--을 출력하시오
SELECT department_id
FROM   departments;

SELECT department_id
FROM   employees;

SELECT e.last_name,
       d.department_name
FROM   departments d JOIN employees e
                 ON (d.department_id = e.department_id);
                 
SELECT e.last_name,
       d.department_name
FROM   departments d, employees e
WHERE  d.department_id = e.department_id;

--사원이름(last_name)과 해당 사원 소속된 부서이름(department_name)
--부서가 있는 도시명(CITY)을 출력하시오
--사원번호, 부서 도시 위치, 부서이름 순서로 출력
SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id);
                     
SELECT e.employee_id,
       l.city,
       d.department_name
FROM   employees e, departments d, locations l
WHERE  (d.department_id = e.department_id)
AND    (d.location_id = l.location_id);

--사원번호, 부서 도시 위치, 부서이름 순서로 출력
--단 사원번호가 149번만 가져오기

--공용방식
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id)
                    AND e.manager_id = 149;
--WHERE로 가져와야됨.     
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e JOIN departments d
                     ON (d.department_id = e.department_id)
                   JOIN locations l
                     ON (d.location_id = l.location_id)
WHERE  e.manager_id = 149;

--오라클은 무조건 AND
SELECT e.last_name,
       l.city,
       d.department_name
FROM   employees e, departments d, locations l
WHERE  d.department_id = e.department_id
  AND  (d.location_id = l.location_id)
  AND  e.manager_id = 149;
  
--상사 이름 가져오기
--같은테이블안에서 사용할 때 셀프조인
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w JOIN employees m
                     ON (w.manager_id = m.employee_id);
                     
SELECT w.last_name emp,
       m.last_name mgr
FROM   employees w, employees m
WHERE  (w.manager_id = m.employee_id);

SELECT *
FROM   employees;

--하나씩 실행시키기 (테이블을 만듦)
CREATE TABLE job_grades (
  grade_level VARCHAR2(3),
  lowest_sal  NUMBER(10),
  highest_sal NUMBER(10));
  
INSERT INTO job_grades
VALUES ('A', 1000, 2999);

INSERT INTO job_grades
VALUES ('B', 3000, 5999);

INSERT INTO job_grades
VALUES ('C', 6000, 9999);

INSERT INTO job_grades
VALUES ('D', 10000, 14999);

INSERT INTO job_grades
VALUES ('E', 15000, 24999);

INSERT INTO job_grades
VALUES ('F', 25000, 40000);

SELECT *
FROM   job_grades;

--비동등 조인, =아닌 다른거 다 비동등임. 그래서 AND사용.
SELECT e.last_name,
       e.salary,
       j.grade_level
FROM   employees e JOIN job_grades j
ON     e.salary
       BETWEEN j.lowest_sal AND j.highest_sal;

--LEFT OUTER 같지 않은 것도 보겠다라는 의미 107번 그란트 씨 확인하기
--그란트씨는 부서 아이디랑 부서명이 없음
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e LEFT OUTER JOIN departments d
             ON (e.department_id = d.department_id);

--오라클   
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e, departments d
WHERE  e.department_id = d.department_id(+); --LEFT OUTER


--오라클은 outer생략해서 사용해도 됨. 공식은 outer써야됨.

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e RIGHT OUTER JOIN departments d
--테이블 위치에따라 LEFT RIGHT바뀔 수 있음
             ON (e.department_id = d.department_id);

SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e, departments d
WHERE  e.department_id(+) = d.department_id; -- RIGHT OUTER

--공용
SELECT e.last_name,
       e.department_id,
       d.department_name
FROM   employees e FULL OUTER JOIN departments d
             ON (e.department_id = d.department_id);
--오라클은 FULL OUTER가 없음

--JOIN 문제 모음
--1. LOCATIONS 및 COUNTRIES 테이블을 사용하여 모든 부서의 주소를 생성하는 query를 작성하시오. 
--출력에 위치ID(location_id), 주소(street_address), 구/군(city), 
--시/도(state_province) 및 국가(country_name)를 표시하시오.
SELECT l.location_id,
       l.street_address,
       l.city,
       l.state_province,
       c.country_name,
       l.country_id
FROM   locations l JOIN countries c 
                     ON (l.country_id = c.country_id);

SELECT *
FROM   countries;

SELECT phone_number
FROM   employees;

--2. 모든 사원의 이름, 소속 부서번호 및 부서 이름을 표시하는 query를 작성하시오.
SELECT e.last_name,
       e.phone_number,
       d.department_name
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id);

--3. Toronto에 근무하는 사원에 대한 보고서를 필요로 합니다.
--toronto에서 근무하는 모든 사원의 이름, 직무, 부서번호 및 부서 이름을 표시하시오.
SELECT e.last_name,
       e.job_id,
       e.phone_number,
       d.department_name,
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id)
                   JOIN locations l
                     ON (l.city = 'Toronto');

--4. 사원의 이름 및 사원 번호를 해당 관리자의 이름 및 관리자 번호와 함께 표시하는 보고서를 작성하는데, 
--열 레이블을 각각 Employee, Emp#, Manager 및 Mgr#으로 지정하시오.
SELECT e.last_name Employee,
       e.employee_id Emp#,
       w.last_name Manager,
       w.employee_id Mgr#
FROM   employees w JOIN employees e
                     ON (e.manager_id = w.employee_id);
       
SELECT *
FROM   employees;

--5. King과 같이 해당 관리자가 지정되지 않은 사원도 표시하도록 4번 문장을 수정합니다. 
--사원 번호순으로 결과를 정렬하시오. 
SELECT e.last_name Employee,
       e.employee_id Emp#,
       w.last_name Manager,
       w.employee_id Mgr#
FROM   employees w LEFT OUTER JOIN employees e
                     ON (e.manager_id = w.employee_id);
                     
--왼쪽을 표현하고 싶을 때 (오른쪽이 null일때) left outer 오라클은 e 뒤에 (+)
--오른쪽을 표현하고 싶을 때 (왼쪽이 null일때) right outer 오라클은 w 뒤에 (+)


--6. 직무 등급 및 급여에 대한 보고서를 필요로 합니다. 
--모든 사원의 이름, 직무, 부서 이름, 급여 및 등급을 표시하는 query를 작성하시오.
SELECT m.last_name,
       m.job_id,
       s.department_name,
       m.salary
       ss.job