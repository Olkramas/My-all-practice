--1.
SELECT   employee_id,
         last_name,
         salary,
         department_id
FROM     employees
WHERE    salary BETWEEN 7000 AND 12000
  AND    last_name LIKE ('H%');

--2.
SELECT   employee_id,
         last_name,
         job_id,
         salary,
         department_id
FROM     employees
WHERE    department_id IN (50, 60)
  AND    salary > 5000;

--3.
SELECT   last_name,
         (CASE WHEN salary < 5000 THEN salary * 1.2
               WHEN salary < 10000 THEN salary * 1.15
               WHEN salary < 15000 THEN salary * 1.1
                                   ELSE salary
          END)              
FROM     employees
WHERE    department_id = &num;

--4.
SELECT   d.department_id,
         d.department_name,
         l.city
FROM     departments d JOIN locations l
                         ON (d.location_id = l.location_id);
                         
--5.
SELECT   employee_id,
         last_name,
         job_id
FROM     employees
WHERE    department_id IN (SELECT   department_id
                           FROM     employees
                           WHERE    job_id = 'IT');
                         
                         
--6.
SELECT   employee_id,
         first_name,
         last_name,
         email,
         phone_number,
         hire_date,
         job_id
FROM     employees
WHERE    hire_date < 05;

                    