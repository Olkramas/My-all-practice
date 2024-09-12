SELECT *
FROM employees;

--order by는 select 가져와서 정렬함
    
SELECT    last_name,
          job_id,
          department_id,
          hire_date
FROM      employees
ORDER BY  hire_date DESC;

SELECT   employee_Id,
         last_name,
         salary * 12 annsal
FROM     employees
ORDER BY annsal;

SELECT   last_name As "annsal"
FROM     employees;

SELECT   last_name,
         job_id,
         department_id,
         hire_date
FROM     employees
OrDER BY  3;
--department_id 기준으로 정렬됨.

SELECT   last_name,
         department_id,
         salary
FROM     employees
ORDER BY department_id, salary DESC;

SELECT   employee_id,
         last_name,
         salary,
         department_id
FROM     employees
WHERE    employee_id = &employee_num;

SELECT   employee_id,
         last_name,
         salary,
         department_id,
         salary
FROM     employees
WHERE    salary = &salary
ORDER BY employee_id DESC;

SELECT   last_name,
         department_id,
         salary * 12,
         job_id
FROM     employees
WHERE    job_id = '&job_title';
--문자는 ''안에 들어가야됨.
--치환변수는 어디에든 들어갈 수 있다. 그런데 그렇게는 잘 안씀.WHERE에 쓰는게 보통

SELECT   employee_id,
         last_name,
         job_id,
         &&c_id
FROM     employees
ORDER BY &c_Id;
--department_id 넣기

SELECT   &c_id
FROM     employees;
--&&는 메모리에 계속 상주함. 변수 선언하고 쓰는거임.
--&는 임시

UNDEFINE c_id;



SELECT   *
FROM     employees;

--4. last name이 Matos와 Taylor인 사원의 last_name, 업무 ID, 그리고 입사일을 표시하시오. 
   --결과는 입사일을 기준으로 오름차순 정렬하시오.
SELECT   last_name,
         job_id,
         hire_date
FROM     employees
WHERE    last_name IN ('Matos', 'Taylor')
ORDER BY hire_date;

--5. 부서 20 및 50에 속하는 모든 사원의 이름과 부서 번호를 이름을 기준으로 영문자순으로 표시하시오.
SELECT   last_name,
         department_id
FROM     employees
WHERE    department_id IN (20, 50)
ORDER BY last_name;

--9. 커미션을 받는 모든 사원의 이름, 급여 및 커미션을 급여 및 커미션을 기준으로 내림차순으로 정렬하여 표시하시오.
SELECT   last_name,
         salary,
         commission_pct
FROM     employees
WHERE    commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

SELECT   last_name,
         salary,
         commission_pct
FROM     employees
ORDER BY commission_pct DESC;

--단일행 함수

DESC dual;

SELECT *
FROM   dual;

SELECT SYSDATE
FROM   dual;

SELECT SYSDATE
FROM   employees;

SELECT 'the job id for ' ||
       UPPER(last_name) ||
       ' is ' ||
       LOWER(job_id)
              AS "EMPLOYEE DETAILS"
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
       SUBSTR(last_name, 2),
       SUBSTR(last_name, 2, 3),
       SUBSTR(last_name, -2),
       SUBSTR(last_name, -4, 2)
FROM   employees;  

SELECT SUBSTR(hire_date, 1, 2)
FROM   employees;

SELECT 20 || SUBSTR(hire_date, 1, 2)
FROM   employees;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
--WHERE  UPPER(last_name) LIKE 'J%' like안에 몇개씩 못넣음.
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT UPPER(last_name) lname,
       LENGTH(last_name) leng
FROM   employees
WHERE  UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY last_name;

SELECT *
FROM   employees;

SELECT UPPER(last_name) lname,
       employee_id
FROM   employees
WHERE  SUBSTR(UPPER(employee_id), 1, 1) IN (1)
ORDER BY last_name;

SELECT first_name,
       LPAD(salary, 15, '$') salary
FROM   employees;

SELECT first_name,
       LPAD(salary ,15, '$') salary
FROM   employees;

SELECT LPAD(first_name, 10, '$') name10
FROM   employees;
--숫자함수
SELECT *
FROM   DUAL;

--ROUND는 반올림 ,뒤는 소수점 몇째자리까지 할건지 결정
SELECT ROUND(45.923),
       ROUND(45.923, 2), 
       ROUND(45.923,0),
       ROUND(45.923,-1)
FROM   DUAL;

--TRUNC 내림
SELECT TRUNC(45.923),
       TRUNC(45.923, 2), 
       TRUNC(45.923,0),
       TRUNC(45.923,-1)
FROM   DUAL;

--수를 나누고 나머지 값을 출력함
SELECT last_name,
       salary,
       MOD(salary, 5000)
FROM   employees;

SELECT SYSDATE
FROM   dual;
--연도 입력받을 때는 네자리로 받아야 문제생길 일이 적음
SELECT TO_CHAR(SYSDATE, 'YYYY,MM,DD, HH24:MI:SS')
FROM   dual;

SELECT last_name,
       (SYSDATE - hire_date) / 7 AS WEEKS
FROM   employees
WHERE  department_id = 90;

SELECT *
FROM   employees;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "New Salary"
FROM   employees;

SELECT employee_id,
       last_name,
       salary,
       TRUNC(salary * 1.15) "New Salary",
       TRUNC(salary * 1.15 - salary) "Increase"
FROM   employees;

SELECT employee_id,
       hire_date,
       MONTHS_BETWEEN(SYSDATE, hire_date) TENURE,
       ADD_MONTHS(hire_date, 6) REVIEW,
       NEXT_DAY(hire_date, '금'), /*월급일*/
       LAST_DAY(hire_date)  /**/
FROM   employees;

SELECT NEXT_DAY(SYSDATE, '월'),
       LAST_DAY(SYSDATE)
FROM   dual;



SELECT ROUND(SYSDATE, 'YEAR'), /*7월 1일 00시 기준*/
       ROUND(SYSDATE, 'MONTH'),
       ROUND(SYSDATE, 'DAY'), /*수요일 낮 12시 기준*/
       ROUND(SYSDATE, 'DD')   /*낮 12시 기준*/
FROM   dual;

SELECT TRUNC(SYSDATE, 'YEAR'),
       TRUNC(SYSDATE, 'MONTH'),
       TRUNC(SYSDATE, 'DAY'),
       TRUNC(SYSDATE, 'DD')
FROM   dual;

SELECT *
FROM   employees;

SELECT last_name,
       ROUND(MONTHS_BETWEEN(SYSDATE,hire_date)) "MONTHS_WORKED"
FROM   employees;

SELECT last_name,
       ROUND((SYSDATE - hire_date) / 7) "TENURE",
       department_id 
FROM   employees
WHERE  department_id IN 90;

--문자이지만 숫자만 들어있어서 형태를 바꿔줌. 오라클은 해주는데 다른건 안될수있음.
SELECT *
FROM   employees
WHERE  department_id = '90';

SELECT employee_id,
       TO_CHAR(hire_date, 'MM/YY') Month_hired
FROM   employees;

ALTER SESSION SET
NLS_DATE_LANGUAGE = AMERICAN;

--날짜를 문자로 바꿈

SELECT last_name,
       TO_CHAR(hire_date, 'DD Month YYYY') 
       AS HIREDATE
FROM   employees;
       
SELECT last_name,
       TO_CHAR(hire_date, 'DD month YYYY') 
       AS HIREDATE
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'fmDD Month YYYY') 
       AS HIREDATE
FROM   employees;

SELECT last_name,
       TO_CHAR(hire_date, 'Ddspth "of" Month YYYY HH:MI:SS AM')
                                                  AS HIREDATE
FROM   employees;          

SELECT TO_CHAR(salary, '$99,990.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

--지역화폐 나옴 'L'
SELECT TO_CHAR(salary, 'L99,990.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_CHAR(salary, 'L,11,110.00') SALARY,
       salary
FROM   employees
WHERE  last_name = 'Ernst';

SELECT TO_NUMBER('$3,400', '$99,999')
FROM   dual;

--년, 월은 문자라서 ""안에 들어가 있음.
SELECT TO_DATE('2010년, 02월', 'YYYY"년",MM"월"')
FROM   dual;

--2006년 이전에 입사한 모든 사원들의 이름, 입사일을 출력하시오
SELECT last_name,
       hire_date
FROM   employees
--WHERE  TO_CHAR(hire_date, 'YYYY') < '2006';
WHERE  hire_date < TO_DATE('2006', 'YYYY');

ALTER SESSION SET
NLS_DATE_LANGUAGE = KOREAN;

SELECT last_name ||
       ' earns ' ||
       TO_CHAR(salary, '$999,999.00') ||
       ' monthly but wants '||
       TO_CHAR(salary * 3, '$999,999.00') || 
       '.' "DREAM SALARIES"
FROM   employees;


SELECT last_name,
       hire_date,
       TO_CHAR(
         NEXT_DAY(
           ADD_MONTHS(hire_date, 6), '월'),
             'YYYY.MM.DD DAY') REVIEW
FROM   employees;


--일반함수
SELECT last_name,
       salary,
       NVL(commission_pct, 0),
       (salary*12) + (salary*12*NVL(commission_pct, 0)) AN_SAL,
       (salary*12) + (salary*12*commission_pct) AN_SAL2
FROM   employees;

--NVL은 앞에 바꿀 데이터 방식과 뒤에 방식이 같아야됨. 그래야 바꿀 수 있음.
SELECT commission_pct,
       NVL(TO_CHAR(commission_pct), '커미션 없음')
FROM   employees;

--NVL2 1번이 널이 아닐때 2, 1번이 널이면 3번 내용 들어감 2,3은 데이터 타입이 같아야됨. 1은 노상관
SELECT last_name,
       salary,
       commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') income
FROM   employees
WHERE  department_id IN (50, 80);

--사용빈도 낮음. NULLIF는 1,2가 같으면 NULL, 1,2가 같지 않으면 1이 출력됨.
SELECT LENGTH(first_name) "expr1",
       LENGTH(last_name) "expr1",
       NULLIF(LENGTH(first_name), LENGTH(last_name)) AS result
FROM   employees;

--WHEN ???이면 THAN???출력
SELECT last_name,
       job_id,
       salary,
       (CASE job_id WHEN 'IT_PROG'   THEN 1.10*salary
                    WHEN 'ST_CLERK'  THEN 1.15*salary
                    WHEN 'SA_REP'    THEN 1.20*salary
                                     ELSE salary
        END) "REVISED_SALARY"
FROM employees;

SELECT last_name,
       job_id,
       salary,
       (CASE WHEN job_id = 'IT_PROG'  THEN 1.10*salary
             WHEN job_id = 'ST_CLERK' THEN 1.15*salary
             WHEN job_id = 'SA_REP'   THEN 1.20*salary
                                      ELSE salary
        END) "REVISED_SALARY"
FROM employees;

-- ?보다 작다는 작은값부터, ?보다 크다는 큰 값부터 적어줘야됨.
SELECT last_name,
       salary,
       (CASE WHEN salary < 5000  THEN 'Low'
             WHEN salary < 10000 THEN 'Medium'
             WHEN salary < 20000 THEN 'Good'
                                 ELSE 'Excellent'
        END) qualified_salary
FROM    employees;