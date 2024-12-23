# sql-challenge

# Module 9 Challenge SQL

## Description
Module 9 SQL challenge. Project required import of CSV files into a SQL data base. Create an ERD of the DB tables schema and perform 8 queries.

## Table of Contents
1. [Queries](#Queries)
2. [Prerequisites](#Prerequisites)
3. [Notes](#Notes)
4. [License](GNU General Public License v3.0)
5. [Authors](Victor R.)
6. [Contact Information](vhrincon@gmail.com)

## Queries
1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

### Prerequisites
Postgres SQL v. 17.2 or above
PGadmin v. 4

## Notes
### Importing Data
 When importing the csv tables ensure tables are imported with the 
 least dependencies first. Remove 'last updated' from column selection in import box in SQL DB dialog box.

