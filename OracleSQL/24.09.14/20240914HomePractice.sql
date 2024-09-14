SELECT   last_name ||
         ' earns ' ||
         salary ||
         ' monthly but wants ' ||
         salary * 3 "Dream Salaries"
FROM     employees;

--4. ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. 
--�� ���̺��� ���� Maximum, Minimum, Sum �� Average�� �����ϰ� ����� ������ �ݿø��ϵ��� �ۼ��Ͻÿ�.
SELECT   ROUND(MAX(salary))Maximum,
         ROUND(MIN(salary))Minimum,
         ROUND(SUM(salary))Sum,
         ROUND(AVG(salary))Average
FROM     employees;

--5. ���� ���Ǹ� �����Ͽ� �� ���� ����(job_id)���� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ǥ���Ͻÿ�. 
SELECT   job_id,
         ROUND(MAX(salary))Maximum,
         ROUND(MIN(salary))Minimum,
         ROUND(SUM(salary))Sum,
         ROUND(AVG(salary))Average
FROM     employees
GROUP BY job_id;

--6. ������ ��� ���� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�.
SELECT   job_id,
         COUNT(employee_id)
FROM     employees
GROUP BY job_id;

--7. ������ ���� Ȯ���Ͻÿ�. �� ���̺��� Number of Managers�� �����Ͻÿ�. 
--(��Ʈ: MANAGER_ID ���� ���)
SELECT   COUNT(manager_id) "Number of Managers"
FROM     employees;

--8. �ְ� �޿��� ���� �޿��� ������ ǥ���ϴ� ���Ǹ� �ۼ��ϰ� �� ���̺��� DIFFERENCE�� �����Ͻÿ�.
SELECT   MAX(salary) - MIN (salary) DIFFERENCE
FROM     employees;

--9. ������ ��ȣ �� �ش� �����ڿ� ���� ����� ���� �޿��� ǥ���Ͻÿ�. 
--�����ڸ� �� �� ���� ��� �� ���� �޿��� 6,000 �̸��� �׷��� ���ܽ�Ű�� 
--����� �޿��� ���� ������������ �����Ͻÿ�.
SELECT   m.manager_id,
         MIN(s.salary)
FROM     employees m, employees s
WHERE    m.manager_id = s.employee_id
AND      s.salary > 6000
AND      m.manager_id IS NOT NULL
GROUP BY m.manager_id
ORDER BY 2;

--1. LOCATIONS �� COUNTRIES ���̺��� ����Ͽ� ��� �μ��� �ּҸ� �����ϴ� query�� �ۼ��Ͻÿ�. 
--��¿� ��ġID(location_id), �ּ�(street_address), ��/��(city), 
--��/��(state_province) �� ����(country_name)�� ǥ���Ͻÿ�.
SELECT   l.location_id,
         l.street_address,
         l.city,
         l.state_province,
         c.country_name
FROM     locations l JOIN countries c
                       ON (l.country_id = c.country_id);
                       


2. ��� ����� �̸�, �Ҽ� �μ���ȣ �� �μ� �̸��� ǥ���ϴ� query�� �ۼ��Ͻÿ�.
SELECT   e.last_name,
         e.job_id,
         d.department_name
FROM     employees e JOIN departments d
                       ON (e.department_id = d.department_id)
ORDER BY e.last_name;                       

