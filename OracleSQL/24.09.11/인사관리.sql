select *
from tab;

select *
from employees;

select *
from departments;

SELECT *
FROM departments;

SELECT department_id,
       department_name,
       manager_id,
       location_id
FROM   departments;

SELECT department_id,
       location_id
FROM   departments;

SELECT location_id,
       department_id
FROM   departments;    

SELECT location_id,
       location_id
FROM   departments;    

SELECT last_name,
       salary,
       salary+300
FROM   employees;

SELECT last_name,
       salary,
       12 * salary + 100
FROM   employees;

SELECT last_name,
       salary,
       12 * (salary + 100)
FROM   employees;       

SELECT last_name,
       job_id,
       salary,
       commission_pct
FROM   employees;
/*주석주석*/
SELECT last_name,
       commission_pct,
       12 * salary * commission_pct
FROM   employees;
--산술 표현식에 null이 들어가면 null
SELECT last_name,
       commission_pct,
       12 * salary * NVL(commission_pct,0)
FROM   employees;

--As로 컬럼의 이름을 바꿔줄 수 있음
SELECT last_name AS name,
       commission_pct comm
FROM   employees;
--따옴표로도 바꿔줄 수 있음
SELECT last_name "Name",
       salary*12 "Annual Salary"
FROM   employees;     
-- ||으로 내용을 합쳐주고(연결연산자 사용) 이름을 바꿔준 모습
SELECT last_name || job_id As "Employees"
FROM   employees;
-- ||으로 몇개를 붙여도 상관없음
SELECT first_name || last_name || job_id As "Employees"
FROM   employees;
--큰따옴표는 컬럼 알레아스 뒤에서 배우는 뭐 빼고는 큰따옴표 쓰는 일 없음
--날짜, 문자 데이터는 ''로 둘러싼다.
SELECT last_name || ' is a ' || job_id As "employees Details"
FROM   employees;

--숫자는 안싸도 됨.
SELECT last_name ||
       ' is a ' || 
       job_id || 3
       As "employees Details"
FROM   employees;
--중복값이 많음
SELECT department_id
FROM   employees;
--중복값 안보이게 하기
SELECT DISTINCT department_id
FROM   employees;
--DISTINCT사용할 때는 줄나누지 말기
SELECT DISTINCT department_id, job_id
FROM   employees;

desc employees;



--1. DEPARTMENTS 테이블의 모든 데이터를 조회하시오.
SELECT *
FROM employees;
2. EMPLOYEES 테이블에서
  사원 번호가 가장 앞에 오고 이어서 각 사원의 이름(last_name), 업무 코드(job_id), 입사일(hire_date)이 오도록 질의를 작성하시오. HIRE_DATE 열에 STARTDATE라는 별칭을 지정하시오. 
SELECT last_name,
       job_id,
       hire_date As "STARTDATE"
FROM   employees;
3. EMPLOYEES 테이블의 업무 코드(job_id)를 중복되지 않게 표시하는 질의를 작성하시오.
SELECT DISTINCT job_id
FROM   employees;

4. 2번의 명령문을 복사하시오. 머리글을 각각 Emp #, Employee, Job 및 Hire Date로 명명한 다음 질의를 다시 실행하시오.
SELECT last_name As "Emp",
       job_id As "Employee",
       hire_date As "job 및 Hire Date"
FROM   employees;

SELECT last_name As "Emp",
       job_id As "Employee",
       hire_date As "job 및 Hire Date"
FROM   employees;
5. 업무 ID(job_id)와 이름(last_name)을 연결한 다음 쉼표 및 공백으로 구분하여 표시하고 열 이름을 Employee and Title로 지정하시오.
SELECT job_id ||
       ', ' ||
       last_name As "Employee and Title"
FROM   employees;

--department_Id가 90인 사원들의 직원번호 이름 
SELECT employee_id,
       last_name,
       job_Id,
       department_id
FROM   employees
WHERE  department_id = 90;

SELECT employee_id,
       last_name,
       job_Id,
       department_id
FROM   employees
WHERE  department_id = 110;

--Whalen 대소문자 구분해서 써보기, 데이터는 대소문자 구분함
SELECT last_name,
       job_id,
       department_id
FROM   employees
WHERE  last_name = 'Whalen';

SELECT last_name
FROM   employees
WHERE  hire_date = '06/01/03';

--employees에서 salary가 3000보다 작거나 같은 사람의 이름과 샐러리가 나옴.
SELECT last_name,
       salary
FROM   employees
WHERE  salary <= 3000;
-- BETWWEN 낮은값 AND 높은값입력
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 2500 AND 3500;

SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 3500 AND 2500;
--알파벳 순서로 
SELECT last_name
FROM   employees
WHERE  last_name BETWEEN 'King' AND 'Smith';
--a and b 하면 b전까지 출력됨. b안나옴. bzzzzz이렇게 쓰면 ok

--매니아이디가 100, 101, 201을 가지고 있는 사람의 정보들을 보여줌
SELECT employee_id,
       last_name,
       salary,
       manager_id
FROM   employees
WHERE manager_id IN (100, 101, 201);

SELECT employee_id,
       manager_id,
       department_id
FROM   employees
WHERE  last_name IN ('Hartstein', 'Vargas');

--first name에서 대문자 S로 시작하는 것들 가져오기
SELECT first_name
FROM   employees
WHERE  first_name LIKE 'S%';

--연도로 찾음. 우리나라 연도 표기법으로 써야됨.
SELECT last_name,
       hire_date
FROM   employees
WHERE  hire_date LIKE '06%';

--last name 에 두번째 글자가 o인 사람을 구함.
SELECT last_name
FROM   employees
WHERE  last_name LIKE '_o%';

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE '_%'; /*언더바를 인식못함*/

SELECT last_name,
       job_id
FROM   employees
WHERE  job_id LIKE '%SA\_%' ESCAPE '\'; /*_를 인식하려면 이렇게 하면됨.*/

SELECT last_name, manager_id
FROM   employees
WHERE  manager_id IS NULL;

--is null 만 중감에 not들어감
SELECT last_name, manager_id
FROM   employees
WHERE  manager_id IS NOT NULL;

--샐러리가 10000보다 크거나 같고 job_id가 %MAN%인것들 조회
SELECT employee_id,
       last_name,
       job_id,
       salary
FROM   employees
WHERE  salary >= 10000
  AND  job_id LIKE '%MAN%';

--
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
  OR   job_id = 'AD_PRES'
  AND  salary > 15000;
--and가 or보다 우선순위로 연산되지만, 괄호안부터 시작됨
SELECT last_name, 
       job_id,
       salary
FROM   employees
WHERE  (job_id = 'SA_REP'
  OR   job_id = 'AD_PRES')
  AND  salary > 15000;
  
SELECT *
FROM employees;
--1. 급여가 12,000를 넘는 사원의 이름과 급여를 표시하는 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary > 12000;
--!2. 사원 번호가 176인 사원의 이름과 부서 번호를 표시하는 질의를 실행하시오.
SELECT last_name,
       department_id
FROM   employees
WHERE  employee_id IN (176);
       
--3. 급여가 5,000에서 12,000 사이에 포함되지 않는 모든 사원의 이름과 급여를 표시하도록 질의를 실행하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000;

4. last name이 Matos와 Taylor인 사원의 last_name, 업무 ID, 그리고 입사일을 표시하시오.
SELECT last_name,
       manager_id,
       hire_date
FROM   employees
WHERE  last_name IN ('Matos','Taylor');

SELECT *
FROM employees;

6. 급여가 5,000와 12,000 사이이고 부서 번호가 20 또는 50인 사원의 이름과 급여를 나열하도록 질의를 작성하시오. 
   열 레이블은 Employee와 Monthly Salary로 각각 지정하시오.
SELECT last_name,
       salary
FROM   employees
WHERE  salary BETWEEN 5000 AND 12000
  AND  department_id IN (20, 50);
7. 2004년에 입사한 모든 사원의 이름과 입사일을 표시하시오.
SELECT last_name,
       hire_date
FROM   employees
where  hire_date LIKE ('04%');

SELECT *
FROM employees;
8. 관리자가 없는 모든 사원의 이름과 업무를 표시하시오.
SELECT last_name,
       job_id
FROM   employees
WHERE  manager_id IS NOT NULL;

10. 이름의 세번째 문자가 a인 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%__a');
11. 이름에 a와 e가 있는 모든 사원의 이름을 표시하시오.
SELECT last_name
FROM   employees
WHERE  last_name LIKE ('%a')
  AND  ('%e');
12. 업무가 영업 사원(SA_REP) 또는 사무원(ST_CLERK)이면서 
    급여가 2,500, 3,500, 7,000이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.

13. 커미션 비율(commission_pct)이 20%인 모든 사원의 이름, 급여 및 커미션을 표시하도록 
    명령문을 작성하여 실행하시오.
  
  