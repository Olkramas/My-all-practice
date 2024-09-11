SELECT last_name "Name",
       salary * 12 "Annual Salary"
FROM   employees;       

SELECT last_name || job_id As "Employees"
FROM   employees;

SELECT first_name || last_name || job_id As "Employees"
FROM   employees;

SELECT last_name || ' is a ' || job_id As  "employees Details"
FROM   employees;

SELECT last_name ||
       ' is a ' ||
       job_id || 3
       As "employees Details"
FROM   employees;

SELECT department_id
FROM   employees;

SELECT DISTINCT department_id
FROM   employees;

SELECT DISTINCT department_id, job_id
FROM   employees;

SELECT *
FROM   departments;

SELECT *
FROM   employees;
2. EMPLOYEES 테이블에서
  사원 번호가 가장 앞에 오고 이어서 각 사원의 이름(last_name), 업무 코드(job_id), 입사일(hire_date)이 오도록 질의를 작성하시오. HIRE_DATE 열에 STARTDATE라는 별칭을 지정하시오. 
SELECT employee_id,
       last_name,
       job_id,
       hire_date
FROM   employees;

--2. EMPLOYEES 테이블에서
  --사원 번호가 가장 앞에 오고 이어서 각 사원의 이름(last_name), 업무 코드(job_id), 
  --입사일(hire_date)이 오도록 질의를 작성하시오. HIRE_DATE 열에 STARTDATE라는 별칭을 지정하시오. 
SELECT job_id,
       last_name,
       job_id,
       hire_date "STARTDATE"
FROM   employees;
--3. EMPLOYEES 테이블의 업무 코드(job_id)를 중복되지 않게 표시하는 질의를 작성하시오.
SELECT DISTINCT job_id
FROM   employees;

--4. 2번의 명령문을 복사하시오. 머리글을 각각 Emp #, Employee, 
--Job 및 Hire Date로 명명한 다음 질의를 다시 실행하시오.
SELECT job_id "Emp #",
       last_name "Employee",
       job_id "Job",
       hire_date "Hire Date"
FROM   employees;

--5. 업무 ID(job_id)와 이름(last_name)을 연결한 다음 쉼표 및 공백으로 구분하여 표시하고
--열 이름을 Employee and Title로 지정하시오.
SELECT job_id || 
       ',' ||
       last_name "Employee and Title"
FROM   employees;
       
SELECT employee_id,
       last_name,
       job_id,
       department_id
FROM   employees
WHERE  department_id = 90;

SELECT employee_id,
       last_name,
       job_id,
       department_id
FROM   employees
WHERE  department_id = 110;

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'Whalen'; 

SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'whalen';

SELECT last_name
FROM   employees
WHERE  hire_date = '06/01/03';

SELECT hire_date
FROM   employees
WHERE  last_name = 'Hunold';

SELECT last_name,
       salary
FROM   employees
WHERE  salary <= 3000;

SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

-- 논리적 오류
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 3500 AND 2500;

SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'King' AND 'Smith';

SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'A' AND 'Zzzzzz';

SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE  manager_id IN (100, 101, 201);

SELECT employee_id,
       manager_id,
       department_id
FROM   employees
WHERE  last_name In ('Hartstein', 'Vargas');

SELECT first_name
FROM   employees
WHERE  first_name LIKE 'S%';

SELECT first_name
FROM   employees
WHERE  first_name LIKE '%s%';

SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';

SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE 'SA_%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE 'SA\_%' ESCAPE '\';


--null 이 아는것들 출력
SELECT last_name,
       manager_id
FROM   employees
WHERE  manager_id IS NOT NULL;

SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
  AND  job_id LIKE '%MAN%';
  
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
   OR  job_id LIKE '%MAN%';
   
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  job_id = 'SA_REP'
   OR  job_id = 'AD_PRES'
  AND  salary > 15000;
  
SELECT last_name,
       job_id,
       salary
FROM   employees
WHERE  (job_id = 'SA_REP'
   OR  job_id = 'AD_PRES')
  AND  salary > 15000;

--1. 급여가 12,000를 넘는 사원의 이름과 급여를 표시하는 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;
2. 사원 번호가 176인 사원의 이름과 부서 번호를 표시하는 질의를 실행하시오.
SELECT *
FROM   employees;

SELECT last_name,
       department_id,
FROM   employees
WHERE  employee_id IN 176;

3. 급여가 5,000에서 12,000 사이에 포함되지 않는 
   모든 사원의 이름과 급여를 표시하도록 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000;
4. last name이 Matos와 Taylor인 사원의 last_name, 업무 ID, 그리고 입사일을 표시하시오.
SELECT last_name,
       job_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos', 'Taylor');
6. 급여가 5,000와 12,000 사이이고 부서 번호가 20 또는 50인 사원의 이름과 급여를 나열하도록 질의를 작성하시오. 
   열 레이블은 Employee와 Monthly Salary로 각각 지정하시오.
SELECT last_name,
       salary,
       department_id
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN (20, 50);
7. 2004년에 입사한 모든 사원의 이름과 입사일을 표시하시오.
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';
8. 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.
--11. 이름에 a와 e가 있는 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%a%')
  AND  last_name LIKE ('%e%');
--12. 업무가 영업 사원(SA_REP) 또는 사무원(ST_CLERK)이면서 
    --급여가 2,500, 3,500, 7,000이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.
SELECT salary,
       job_id,
       last_name
FROM   employees
WHERE  (job_id LIKE '%SA_REP'
   OR  job_id LIKE '%ST_CLERK')
  AND  salary IN (2500, 3500, 7000);
--13. 커미션 비율(commission_pct)이 20%인 모든 사원의 이름, 급여 및 커미션을 표시하도록 
    --명령문을 작성하여 실행하시오.
SELECT *
FROM   employees;

SELECT last_name,
       salary,
       commission_pct
FROM   employees
WHERE  commission_pct IN 0.2;
       