SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM   employees
ORDER BY hire_date DESC;

/*4. 사원의 이름과 커미션을 표시하는 질의를 작성하시오.
   커미션을 받지 않는 사원일 경우 “No Commission”을 표시하시오. (NVL 함수)
   열 레이블은 COMM으로 지정하시오.*/
   
SELECT last_name,
       NVL(TO_CHAR(commission_pct), 'No commission') "COMM"
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
SELECT (CASE WHEN job_id = 'AD_PRES' THEN 'A'
             WHEN job_id = 'ST_MAN'  THEN 'B'
             WHEN job_id = 'IT_PROG' THEN 'C'
             WHEN job_id = 'SA_REP'  THEN 'D'
             WHEN job_id = 'ST_CLERK'THEN 'E'
                                     ELSE '0'
        END) GRADE
FROM   employees;                                     

--사원이름, 급여, 커미션 수령 유무 출력하시오.
-- 단, 커미션 수령 유무는 커미션을 받으면 YES, 
-- 받지 않으면 NO가 출력되도록 하시오.
-- 커미션 수령 유무 열 별칭은 commission으로 하시오

SELECT last_name,
       salary,
       commission_pct,
       (CASE WHEN commission_pct > 0 THEN 'YES'
                                     ELSE 'NO'
        END) COMMISSION
FROM   employees;

/*급여가 20000이하이면 20% 인상된 급여,
  급여가 30000이하이면 15% 인상된 급여
  급여가 50000이하이면 10% 인상된 급여
  급여가 50000이상이면 급여 그대로
  단. 사원이름 원래급여 인상된 급여 순으로 출력되게하기
  */
  
SELECT last_name,
       salary,
       (CASE WHEN salary <= 20000 THEN salary * 1.2
             WHEN salary <= 30000 THEN salary * 1.15
             WHEN salary <= 50000 THEN salary * 1.1
                                  ELSE salary
        END) comm
FROM   employees;

SELECT AVG(salary),
       MAX(salary),
       MIN(salary),
       SUM(salary),
       job_id
FROM   employees
WHERE  job_id LIKE '%REP%'
GROUP BY job_id;

SELECT MIN(hire_date),
       MAX(hire_date)
FROM   employees;

SELECT MIN(last_name),
       MAX(last_name)
FROM   employees;

--부서에 소속된 사원은 몇명인가
SELECT COUNT(last_name)
FROM   employees;

--사원이 있는 부서는 몇개인가?
--부서 중복값 제거 후 COUNT
SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(DISTINCT department_id)
FROM   employees;

SELECT COUNT(*)
FROM   employees;

--부서 id가 50인 사람들 수
SELECT COUNT(*)
FROM   employees
WHERE  department_id IN 50;

--커미션을 받는 사람들 부서 id가 80인 사람들
SELECT COUNT(*)
FROM   employees
WHERE  department_id IN 80;

SELECT AVG(commission_pct)
FROM   employees;

SELECT AVG(NVL(commission_pct, 0))
FROM   employees;

SELECT department_id,
       AVG(NVL(commission_pct, 0))
FROM   employees
GROUP BY department_id
ORDER BY department_id;

SELECT department_id,
       commission_pct
FROM   employees
ORDER BY department_id;

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
ORDER BY department_id;

SELECT department_id,
       job_id,
       SUM(salary)
FROM   employees
WHERE  department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;


--그룹함수는  WHERE 에서 사용불가..
SELECT department_id, 
       AVG(salary)
FROM   employees
WHERE  AVG(salary) > 8000
GROUP BY department_id;

SELECT department_id,
       AVG(NVL(salary, 0))
FROM   employees
GROUP BY department_id
HAVING AVG(salary) > 8000
ORDER BY department_id;

SELECT   department_id,
         MAX(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000
ORDER BY department_id;

SELECT   department_id,
         AVG(salary)
FROM     employees
GROUP BY department_id
HAVING   MAX(salary) > 10000;

SELECT   job_id,
         SUM(salary) PAYROLL
FROM     employees
WHERE    job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING   SUM(NVL(salary, 0)) > 13000
ORDER BY SUM(NVL(salary, 0));

SELECT   MAX(AVG(NVL(salary, 0)))
FROM     employees
GROUP BY department_id;

SELECT   AVG(NVL(salary, 0))
FROM     employees
GROUP BY department_id;

SELECT   department_id,
         MAX(AVG(salay))
FROM     employees
GROUP BY department_id;
--공식처럼 외우기. 그룹함수를 중첩으로 사용하면 그룹바이로 묶을 수 없음.

SELECT   last_name,
         department_name
FROM     employees CROSS JOIN departments;   

--employees e와 departments d에서 e.department_id와 d.department_id가 같은
--e.last_name, e.department_id, d.deaprtment_name을 가져와.

--안시 방식
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
--오라클 방식
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e, departments d
WHERE    e.department_id = d.department_id;

SELECT   departments.department_id,
         department_name,
         location_id,
         city
FROM     departments NATURAL JOIN locations;

SELECT   e.employee_id,
         e.last_name,
         e.department_id,
         d.department_id,
         d.location_id
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
                       
                       
                       
SELECT   e.employee_id,
         e.last_name,
         e.department_id,
         d.department_id,
         d.location_id
FROM     employees e, departments d
WHERE    e.department_id = d.department_id;

--사원이름(last_name)과 해당 사원 소속된 부서이름(department_name)
--을 출력하시오

SELECT   e.last_name,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id);
                       
--사원이름(last_name)과 해당 사원 소속된 부서이름(department_name)
--부서가 있는 도시명(CITY)을 출력하시오
--사원번호, 부서 도시 위치, 부서이름 순서로 출력    
SELECT   e.last_name,
         l.city,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
                     JOIN locations l
                       ON (d.location_id = l.location_id);
                       
SELECT   e.last_name,
         l.city,
         d.department_name
FROM     employees e, departments d, locations l
WHERE    (e.department_id = d.department_id)
AND      (d.location_id = l.location_id);

--사원번호, 부서 도시 위치, 부서이름 순서로 출력
--단 사원번호가 149번만 가져오기

SELECT   e.employee_id,
         l.city,
         d.department_name
FROM     employees e, departments d, locations l
WHERE    (e.department_id = d.department_id)
AND      (d.location_id = l.location_id)
AND      e.employee_id = 149;

SELECT   e.employee_id,
         l.city,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
                     JOIN locations l
                       ON (d.location_id = l.location_id)
                      AND e.employee_id = 149;

--상사 이름 가져오기
--같은테이블안에서 사용할 때 셀프조인
SELECT   m.last_name emp,
         m.employee_id,
         s.last_name mgr,
         s.employee_id
FROM     employees m RIGHT OUTER JOIN employees s
                       ON (m.manager_id = s.employee_id);
                       
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

SELECT   e.last_name,
         e.salary,
         j.grade_level
FROM     employees e JOIN job_grades j
                       ON salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT   e.last_name,
         e.salary,
         j.grade_level
FROM     employees e, job_grades j
WHERE    salary BETWEEN j.lowest_sal AND j.highest_sal;

SELECT   department_id,
         last_name
FROM     employees
ORDER BY department_id;
        
SELECT   e.last_name,
         e.department_id,
         d.department_name
FROM     employees e LEFT OUTER JOIN departments d
                                  ON (e.department_id = d.department_id)
ORDER BY department_id DESC;

--6. 직무 등급 및 급여에 대한 보고서를 필요로 합니다. 
--모든 사원의 이름, 직무, 부서 이름, 급여 및 등급을 표시하는 query를 작성하시오.
SELECT *
FROM   job_grades;

SELECT e.last_name,
       e.job_id,
       d.department_name,
       e.salary,
       j.grade_level
FROM   employees e JOIN departments d
                     ON (e.department_id = d.department_id)
                   JOIN job_grades j
                     ON salary BETWEEN lowest_sal AND highest_sal;
       