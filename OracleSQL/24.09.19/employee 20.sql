DELETE FROM employees
WHERE manager_id IN (108, 114, 120, 121, 122, 123, 145, 146, 147, 148);

DELETE FROM employees
WHERE employee_id IN (114, 120, 121, 122, 123, 145, 146, 147, 148, 
                      196, 197, 198, 199, 105, 106, 108, 175, 177, 
                      179, 203, 204);

DELETE FROM locations
WHERE location_id NOT IN 
  (SELECT DISTINCT location_id
   FROM departments);

DELETE FROM countries
WHERE country_id NOT IN
  (SELECT country_id
   FROM locations);

DELETE FROM jobs
WHERE job_id NOT IN
  (SELECT job_id
   FROM employees);

DELETE FROM departments
WHERE department_id NOT IN 
  (SELECT DISTINCT department_id
   FROM employees
   WHERE department_id IS NOT NULL);
   