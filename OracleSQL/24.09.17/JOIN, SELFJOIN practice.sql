--1. LOCATIONS �� COUNTRIES ���̺��� ����Ͽ� ��� �μ��� �ּҸ� �����ϴ� query�� �ۼ��Ͻÿ�. 
--��¿� ��ġID(location_id), �ּ�(street_address), ��/��(city), ��/��(state_province) �� ����(country_name)�� ǥ���Ͻÿ�.
SELECT   l.location_id,
         l.street_address,
         l.city,
         l.state_province,
         c.country_name
FROM     countries c JOIN locations l
                       ON (c.country_id = l.country_id);


--2. ��� ����� �̸�, �Ҽ� �μ���ȣ �� �μ� �̸��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT   m.last_name,
         m.department_id,
         s.department_name
FROM     employees m JOIN departments s
                       ON (m.department_id = s.department_id);

--3. Toronto�� �ٹ��ϴ� ����� ���� ������ �ʿ�� �մϴ�. 
--toronto���� �ٹ��ϴ� ��� ����� �̸�, ����, �μ���ȣ �� �μ� �̸��� ǥ���Ͻÿ�.
SELECT   m.last_name,
         m.job_id,
         s.department_id
FROM     employees m JOIN departments s
                       ON (m.department_id = s.department_id)
                     JOIN locations t
                       ON (LOWER(t.city) = 'toronto');

--4. ����� �̸� �� ��� ��ȣ�� �ش� �������� �̸� �� ������ ��ȣ�� �Բ� ǥ���ϴ� ������ �ۼ��ϴµ�, 
--�� ���̺��� ���� Employee, Emp#, Manager �� Mgr#���� �����Ͻÿ�.
SELECT   m.last_name Employee,
         m.employee_id Emp#,
         s.last_name Manager,
         s.employee_id Mgr#
FROM     employees m JOIN employees s
                       ON (m.manager_id = s.employee_id)
ORDER BY 2;
                       

SELECT *
FROM   employees;

5. King�� ���� �ش� �����ڰ� �������� ���� ����� ǥ���ϵ��� 4�� ������ �����մϴ�. ��� ��ȣ������ ����� �����Ͻÿ�. 
SELECT   m.last_name Employee,
         m.employee_id Emp#,
         s.last_name Manager,
         s.employee_id Mgr#
FROM     employees m LEFT OUTER JOIN employees s
                       ON (m.manager_id = s.employee_id)
ORDER BY 2;

SELECT *
FROM   job_grades;
--6. ���� ��� �� �޿��� ���� ������ �ʿ�� �մϴ�. ��� ����� �̸�, ����, �μ� �̸�, �޿� �� ����� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
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