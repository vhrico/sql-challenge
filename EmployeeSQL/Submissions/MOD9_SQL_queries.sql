-- MOD 9 SQL Challenge Analysis

-- # 1 List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM 
	employees e
JOIN 
	salaries s ON e.emp_no = s.emp_no


-- # 2 List the first name, last name, and hire date for the employees who were hired in 1986

SELECT
	e.first_name,
	e.last_name,
	e.hire_date
FROM
	employees e
WHERE
	EXTRACT(year from e.hire_date) = 1986
ORDER BY
	e.hire_date ASC, e.last_name ASC, e.first_name ASC;


-- # 3 List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.

SELECT 
	d.dept_no, 
	d.dept_name, 
	e.emp_no, 
	e.last_name,
	e.first_name
	
FROM departments d

JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;
 

-- # 4 List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name.

SELECT 
	de.dept_no, 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees e
	
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
ORDER BY e.emp_no;


-- # 5 List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B.

SELECT 
	e.first_name,
	e.last_name

FROM
	employees e

WHERE
	e.first_name = 'Hercules' and last_name like 'B%'

-- # 6 List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name
FROM 
	employees e
	
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no

WHERE 
	d.dept_name = 'Sales';


-- # 7 List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name 
FROM 
	employees e 
	
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
WHERE 
	d.dept_name 
IN ('Sales', 'Development');

-- # 8 List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).

SELECT 
	e.last_name,

COUNT(e.emp_no) AS num_last_name
FROM 
	employees e
	
GROUP BY 
	e.last_name 
ORDER BY num_last_name DESC;
