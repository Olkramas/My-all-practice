SELECT   last_name ||
         ' earns ' ||
         salary ||
         ' monthly but wants ' ||
         salary * 3 "Dream Salaries"
FROM     employees;

--4. 모든 사원의 급여 최고액, 최저액, 총액 및 평균액을 표시하시오. 
--열 레이블을 각각 Maximum, Minimum, Sum 및 Average로 지정하고 결과를 정수로 반올림하도록 작성하시오.
SELECT   ROUND(MAX(salary))Maximum,
         ROUND(MIN(salary))Minimum,
         ROUND(SUM(salary))Sum,
         ROUND(AVG(salary))Average
FROM     employees;

--5. 위의 질의를 수정하여 각 업무 유형(job_id)별로 급여 최고액, 최저액, 총액 및 평균액을 표시하시오. 
SELECT   job_id,
         ROUND(MAX(salary))Maximum,
         ROUND(MIN(salary))Minimum,
         ROUND(SUM(salary))Sum,
         ROUND(AVG(salary))Average
FROM     employees
GROUP BY job_id;

--6. 업무별 사원 수를 표시하는 질의를 작성하시오.
SELECT   job_id,
         COUNT(employee_id)
FROM     employees
GROUP BY job_id;

--7. 관리자 수를 확인하시오. 열 레이블은 Number of Managers로 지정하시오. 
--(힌트: MANAGER_ID 열을 사용)
SELECT   COUNT(manager_id) "Number of Managers"
FROM     employees;

--8. 최고 급여와 최저 급여의 차액을 표시하는 질의를 작성하고 열 레이블을 DIFFERENCE로 지정하시오.
SELECT   MAX(salary) - MIN (salary) DIFFERENCE
FROM     employees;

--9. 관리자 번호 및 해당 관리자에 속한 사원의 최저 급여를 표시하시오. 
--관리자를 알 수 없는 사원 및 최저 급여가 6,000 미만인 그룹은 제외시키고 
--결과를 급여에 대한 내림차순으로 정렬하시오.
SELECT   m.manager_id,
         MIN(s.salary)
FROM     employees m, employees s
WHERE    m.manager_id = s.employee_id
AND      s.salary > 6000
AND      m.manager_id IS NOT NULL
GROUP BY m.manager_id
ORDER BY 2;

--1. LOCATIONS 및 COUNTRIES 테이블을 사용하여 모든 부서의 주소를 생성하는 query를 작성하시오. 
--출력에 위치ID(location_id), 주소(street_address), 구/군(city), 
--시/도(state_province) 및 국가(country_name)를 표시하시오.
SELECT   l.location_id,
         l.street_address,
         l.city,
         l.state_province,
         c.country_name
FROM     locations l JOIN countries c
                       ON (l.country_id = c.country_id);
                       


2. 모든 사원의 이름, 소속 부서번호 및 부서 이름을 표시하는 query를 작성하시오.
SELECT   e.last_name,
         e.job_id,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
ORDER BY e.last_name;                       

