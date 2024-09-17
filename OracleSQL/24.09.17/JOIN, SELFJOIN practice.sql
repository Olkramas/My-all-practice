--1. LOCATIONS 및 COUNTRIES 테이블을 사용하여 모든 부서의 주소를 생성하는 query를 작성하시오. 
--출력에 위치ID(location_id), 주소(street_address), 구/군(city), 시/도(state_province) 및 국가(country_name)를 표시하시오.
SELECT   l.location_id,
         l.street_address,
         l.city,
         l.state_province,
         c.country_name
FROM     countries c JOIN locations l
                       ON (c.country_id = l.country_id);


--2. 모든 사원의 이름, 소속 부서번호 및 부서 이름을 표시하는 query를 작성하시오.
SELECT   m.last_name,
         m.department_id,
         s.department_name
FROM     employees m JOIN departments s
                       ON (m.department_id = s.department_id);

--3. Toronto에 근무하는 사원에 대한 보고서를 필요로 합니다. 
--toronto에서 근무하는 모든 사원의 이름, 직무, 부서번호 및 부서 이름을 표시하시오.
SELECT   m.last_name,
         m.job_id,
         s.department_id
FROM     employees m JOIN departments s
                       ON (m.department_id = s.department_id)
                     JOIN locations t
                       ON (LOWER(t.city) = 'toronto');

--4. 사원의 이름 및 사원 번호를 해당 관리자의 이름 및 관리자 번호와 함께 표시하는 보고서를 작성하는데, 
--열 레이블을 각각 Employee, Emp#, Manager 및 Mgr#으로 지정하시오.
SELECT   m.last_name Employee,
         m.employee_id Emp#,
         s.last_name Manager,
         s.employee_id Mgr#
FROM     employees m JOIN employees s
                       ON (m.manager_id = s.employee_id)
ORDER BY 2;
                       

SELECT *
FROM   employees;

5. King과 같이 해당 관리자가 지정되지 않은 사원도 표시하도록 4번 문장을 수정합니다. 사원 번호순으로 결과를 정렬하시오. 
SELECT   m.last_name Employee,
         m.employee_id Emp#,
         s.last_name Manager,
         s.employee_id Mgr#
FROM     employees m LEFT OUTER JOIN employees s
                       ON (m.manager_id = s.employee_id)
ORDER BY 2;

SELECT *
FROM   job_grades;
--6. 직무 등급 및 급여에 대한 보고서를 필요로 합니다. 모든 사원의 이름, 직무, 부서 이름, 급여 및 등급을 표시하는 query를 작성하시오.
SELECT   m.last_name,
         m.job_id,
         s.department_name,
         m.salary,
         t.grade_level
FROM     employees m JOIN departments s
                       ON (m.department_id = s.department_id)
                     JOIN job_grades t
                       ON (m.salary BETWEEN t.lowest_sal AND t.highest_sal);
                       
SELECT   m.last_name,
         m.job_id,
         s.department_name,
         m.salary,
         t.grade_level
FROM     employees m, departments s, job_grades t
WHERE    m.department_id = s.department_id
AND      m.salary BETWEEN t.lowest_sal AND t.highest_sal;                       