-- Deliverable 1
-- Join Employees table and Titles table

SELECT 
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles As t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Remove dupicate entries keep only the most recent title
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Retrieve the number of employees by their most recent job title 
-- who are about to retire
SELECT COUNT(title) AS count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY count DESC;

-- Deliverable 2
-- The Employees Eligible for the Mentorship Program
SELECT DISTINCT on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS d
ON e.emp_no = d.emp_no
INNER JOIN titles AS t
ON d.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01' 
	AND (e.birth_date BETWEEN '1965-01-01' and '1965-12-31')
ORDER BY e.emp_no;
