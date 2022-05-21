# Pewlett-Hackard-Analysis
SQL, Postgress, pgAdmin

## Project Overview

The purpose of this project is to help a company prepare for the upcoming loss of employees due to retirement. This project analyzes the company employee's database and determines how many current employees will soon reach retirement age. The following tables were created from the database after the analysis:

  1. Employee Information: A list of employees that are eligible for retirement, based on their birth date, containing their unique employee number, their last name, first name, gender, and salary.
  2. Management: A list of managers for each department, including the department number, name, and the manager's employee number, last name, first name, and the starting and ending employment dates.
  3. Department Retirees: A list that includes everything in the employee information list, but also the employee's departments.
    
## Resources

PgAdmin, quick DBD, Postgress.
Skills learned for this project are:
   - Design an ERD using quick DBD.
   - Create and use a SQL database.
   - Import and export large CSV datasets into pgAdmin.
   - Practice using different joins to create new tables in pgAdmin.
   - Write basic- to intermediate-level SQL statements.


## Challenge Overview

To get more insight to the situation two more tasks were requested.  Determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Results:

The following tables were created from the above analysis:

   1. Retirement Titles table: A list of employees that are eligible for retirement, based on birth date.
   2. Unique Titles table: A list of retirement-age employees by most recent job title.
   3. Retiring Titles table:  A list with number of employees by their most recent job title who are about to retire.
   4. Mentorship Eligibility table: A list of employees who are eligible to participate in a mentorship program.

## Summary:
 
   1. The Retiring Titles table gave us an answer to how many people will be needed to fill a particular position.  As a result, we will need 25916 senior engineer, 24926 senior Staff, 9285 engineer, 7636 staff, 3603 techinique leader, 1090 assistant engineer, 2 managers.
    
   2. The Mentorship Eligibility table gave the list of current employees who are eligible to participate in a mentorship program. This allow us to approach these employees early and to start the training for the new position.
    
