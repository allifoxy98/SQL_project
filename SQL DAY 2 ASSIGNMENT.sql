--QUESTION 1--
SELECT first_name, last_name 
FROM employees 
WHERE salary > (SELECT salary  
				FROM employees 
                WHERE employee_id=163);
                
SELECT first_name, last_name, salary, department_id, job_id 
FROM employees 
WHERE job_id =  (SELECT job_id  
				FROM employees  
				WHERE employee_id=169);

SELECT first_name, last_name, salary, department_id  
FROM employees  
WHERE salary IN  (SELECT MIN(salary)  
					FROM employees  
					GROUP BY department_id);
                    
SELECT employee_id, first_name,last_name  
FROM employees  
WHERE salary > (SELECT AVG(salary)  
				FROM employees);
                
SELECT first_name, last_name, employee_id, salary  
FROM employees  
WHERE manager_id = (SELECT employee_id  
					FROM employees  
					WHERE first_name = 'Payam');