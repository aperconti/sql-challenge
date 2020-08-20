

---Listing employee number, last name, first name, sex, and salary, for each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;


----Listing first name, last name, and hire date for employees who were hired in 1986.
SELECT last_name,first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


---Listing manager of each department with: department 	number, department name, the manager's employee number, last name, first name.

SELECT department_manager.dept_no, dept_name,department_manager.emp_no, employees.last_name, employees.first_name 
FROM department_manager, employees, departments
WHERE
	department_manager.emp_no = employees.emp_no
AND
	department_manager.dept_no = departments.dept_no;


-----Listing employees with: employee number, last name, first name, and department name.
SELECT department_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments, employees, department_emp
WHERE
	employees.emp_no = department_emp.emp_no
AND
	department_emp.dept_no = departments.dept_no
;



----List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name IN ('Hercules')
AND last_name like 'B%'



----Listing employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, first_name, last_name, dept_name
FROM employees, department_emp, departments
WHERE
	employees.emp_no = department_emp.emp_no
AND
	department_emp.dept_no = departments.dept_no
AND  dept_name IN ('Sales'); 



----List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, first_name, last_name, dept_name
FROM employees, department_emp, departments
WHERE
	employees.emp_no = department_emp.emp_no
AND
	department_emp.dept_no = departments.dept_no
AND  dept_name IN ('Sales','Development'); 




----Listing frequency count of employee last names, i.e., how many employees share each last name in decending order.
SELECT first_name, COUNT(first_name) AS "name count"
FROM employees
GROUP BY first_name
ORDER BY "name count" DESC;
