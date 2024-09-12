SELECT *
FROM employees;

SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM   employees
ORDER BY hire_date DESC;

SELECT employee_id,
       last_name,
       salary * 12 annsal
FROM   employees
ORDER BY annsal;

SELECT last_name "annsal"
FROM   employees;

SELECT last_name,
       job_id,
       department_id,
       hire_date
FROM   employees
ORDER BY 3 DESC;

SELECT last_name,
       department_id,
       salary
FROM   employees
ORDER BY department_id, salary DESC;
--department_id는 오름차순으로 정렬, 정렬된 오름차순에서 salary만 내림차순

SELECT last_name,
       department_id,
       salary
FROM   employees
ORDER BY department_id DESC, salary;

SELECT employee_id,
       last_name,
       salary,
       department_id
FROM   employees
WHERE  employee_id = &a; /*변수이름은 맘대로 가능*/

SELECT employee_id,
       last_name,
       salary,
       department_id,
       salary
FROM   employees
WHERE  salary = &salary
ORDER BY employee_id DESC;

SELECT *
FROM   employees;
-- IT_PROG
SELECT last_name,
       department_id,
       salary * 12,
       111
FROM   employees
WHERE  job_id = '&111';

SELECT employee_id,
       last_name,
       job_id,
       &&c_id
FROM   employees
ORDER BY &C_id;

SELECT &c_id
FROM   employees;

UNDEFINE c_id;

--4. last name이 Matos와 Taylor인 사원의 last_name, 업무 ID, 그리고 입사일을 표시하시오. 
   --결과는 입사일을 기준으로 오름차순 정렬하시오.
SELECT last_name,
       job_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos', 'Taylor')
ORDER BY hire_date DESC;

--5. 부서 20 및 50에 속하는 모든 사원의 이름과 부서 번호를 이름을 기준으로 영문자순으로 표시하시오.
SELECT last_name,
       department_id
FROM   employees
WHERE  department_id IN (20, 50)
ORDER BY last_name;

--9. 커미션을 받는 모든 사원의 이름, 급여 및 커미션을 
--급여 및 커미션을 기준으로 내림차순으로 정렬하여 표시하시오.

SELECT last_name,
       salary,
       commission_pct
FROM   employees
WHERE  commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

DESC dual;

SELECT SYSDATE
FROM dual;

SELECT SYSDATE
FROM   employees;

SELECT 'the job id for ' ||
       UPPER(last_name) ||
       ' is ' ||
       LOWER(job_id) 
       "EMPLOYEE DETAILS"
FROM   employees;

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  last_name = 'higgins';

SELECT employee_id,
       last_name,
       department_id
FROM   employees
WHERE  LOWER(last_name) = 'higgins';

SELECT employee_id,
       CONCAT(first_name, last_name) NAME,
       job_id,
       LENGTH(last_name),
       INSTR(last_name, 'a') "Contains 'a'?"
FROM   employees
WHERE  SUBSTR(job_id, 4) = 'REP';

SELECT last_name,
       INSTR(last_name, 'a')
FROM   employees;

SELECT last_name,
       SUBSTR(last_name, 2, 3)
FROM   employees;

SELECT last_name,
       SUBSTR(last_name, 2),
       SUBSTR(last_name, 2, 3),
       SUBSTR(last_name, -2),
       SUBSTR(last_name, -4, 2)
FROM   employees;

SELECT last_name,
       SUBSTR(last_name, 2)
FROM   employees;

SELECT SUBSTR(hire_date, 1, 2),
       hire_date,
       SUBSTR(hire_date, 3, 4),
       SUBSTR(hire_date, 5, 6)
FROM   employees;

SELECT 20 ||
       SUBSTR(hire_date, 1, 2)
FROM   employees;

SELECT SYSDATE "DATE"
FROM   employees;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M');

SELECT first_name,
       LPAD(salary, 10, ' ') salary
FROM   employees;

SELECT first_name,
       LPAD(salary, 10, '$') salary
FROM   employees;

SELECT first_name,
       RPAD(salary, 10, '$') salary
FROM   employees;

SELECT SYSDATE
FROM   dual;

SELECT ROUND(45.923),
       ROUND(45.923, 2),
       ROUND(45.923, 0),
       ROUND(45.923, -1)
FROM   dual;

SELECT TRUNC(45.923),
       TRUNC(45.923, 2),
       TRUNC(45.923, 0),
       TRUNC(45.923, -1)
FROM   dual;

SELECT last_name,
       salary,
       MOD(salary, 5000) "Mod Result"
FROM   employees;
-- 5000으로 나누고 남은 너머지 값 출력

SELECT SYSDATE
FROM   dual;

SELECT TO_CHAR(SYSDATE, 'YYYY,MM,DD, HH24:MI:SS')
FROM   dual;

SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD')
FROM   dual;

SELECT last_name,
       (SYSDATE - hire_date) / 7 "WEEKS"
FROM   employees
WHERE  department_id = 90;

SELECT last_name,
       MONTHS_BETWEEN(SYSDATE, hire_date) "Working-Month"
FROM   employees;

SELECT last_name,
       hire_date,
       ADD_MONTHS(hire_date, 5)
FROM   employees;

SELECT last_name,
       hire_date,
       NEXT_DAY(hire_date, '월')
FROM   employees;

SELECT SYSDATE,
       NEXT_DAY(SYSDATE, '월')
FROM   employees;

SELECT LAST_DAY(SYSDATE)
FROM   dual;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "NEW Salary"
FROM   employees;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "New Salary",
       TRUNC(salary * 1.15) "Increase"
FROM   employees;

SELECT employee_id,
       hire_date,
       MONTHS_BETWEEN(SYSDATE, hire_date) "TENURE",
       ADD_MONTHS(hire_date, 5) "REVIEW",
       NEXT_DAY(hire_date, '금') "월급일",
       LAST_DAY(hire_date) "마지막 날"
FROM   employees;

SELECT NEXT_DAY(SYSDATE, '월'),
       LAST_DAY(SYSDATE)
FROM   dual;

SELECT ROUND(SYSDATE, 'YEAR'),
       ROUND(SYSDATE, 'MONTH'),
       ROUND(SYSDATE, 'DAY'),
       ROUND(SYSDATE, 'DD')
FROM   dual;

SELECT TRUNC(SYSDATE, 'YEAR'),
       TRUNC(SYSDATE, 'MONTH'),
       TRUNC(SYSDATE, 'DAY'),
       TRUNC(SYSDATE, 'DD')
FROM   dual;

SELECT last_name,
       ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) "MONTHS_WORKED"
FROM   employees;

SELECT last_name,
       ROUND((SYSDATE - hire_date) / 7) "TENURE",
       department_id
FROM   employees
WHERE  department_id IN 90;

SELECT department_id
FROM   employees
WHERE  department_id = '90';

SELECT employee_id,
       TO_CHAR(hire_date, 'MM/YY') MONTH_HIRED
FROM   employees;

ALTER SESSION SET
NLS_DATE_LANGUAGE = AMERICAN;

ALTER SESSION SET
NLS_DATE_LANGUAGE = KOREAN;

ALTER SESSION SET
NLS_DATE_LANGUAGE = AMERICAN;

SELECT last_name,
       TO_CHAR(hire_date, 'DD Month YYYY')
       "HIREDATE"
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'fmDD Month YYYY')
       "HIREDATE"
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'Ddspth Month YYYY HH:MI:SS AM')
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'YYYY "of" MM DD')
FROM   employees;

SELECT TO_CHAR(salary, '$99,999.00') SALARY,
       salary,
       last_name
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_CHAR(salary, 'L999,999.00'),
       salary
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_NUMBER('$3,400', '$99,999.99')
FROM   dual;

SELECT TO_DATE('2010년, 02월', 'yyyy"년",MM"월"')
FROM   dual;

--2006년 이전에 입사한 모든 사원들의 이름, 입사일을 출력하시오
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date < TO_DATE('2006', 'YYYY');

SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date < TO_DATE('2006', 'YYYY');

SELECT last_name ||
       ' earns ' ||
       TO_CHAR(salary, '$999,999.00') ||
       ' monthly but wants ' ||
       TO_CHAR(salary * 3, '$999,999.00') || '.'
                                     "DREAM SALARY"
FROM   employees;

SELECT TO_NUMBER('$1200', '$9999')
FROM   dual;

SELECT last_name,
       hire_date,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), '월'), 'YYYY.MM.DD DAY')
FROM   employees;

SELECT last_name,
       salary,
       NVL(commission_pct, 0),
       (salary * 12) + (salary * 12 * NVL(commission_pct, 0)) AN_SAL,
       salary * NVL(commission_pct, 0) *12
FROM   employees;

SELECT commission_pct,
       NVL(TO_CHAR(commission_pct), '커미션 없음')
FROM   employees;

SELECT last_name,
       salary,
       commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') INCOME
FROM   employees
WHERE  department_id IN (50, 80);

SELECT LENGTH(first_name) "expr1",
       LENGTH(last_name) "expr1",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) result
FROM   employees;

SELECT last_name,
       job_id,
       salary,
       (CASE WHEN job_id = 'IT_PROG'  THEN 1.10 * salary
             WHEN job_id = 'ST_CLERK' THEN 1.15 * salary
             WHEN job_id = 'SA_REP'   THEN 1.29 * salary
                                      ELSE salary
        END) REVISED_SALARY
FROM employees;

SELECT last_name,
       salary,
       (CASE WHEN salary < 5000 THEN 'LOW'
             WHEN salary < 10000 THEN 'MEDIUM'
             WHEN salary < 20000 THEN 'GOOD'
                                 ELSE 'EXCELLENT'
        END) qualified_salary
FROM    employees;