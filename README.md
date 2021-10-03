# SQL Challenge
## Employee Database: A Mystery in Two Parts

---
### Task

In this scenario we have just been hired as a data engineer at Pewlett Hackard and have been asked to complete a research project on employees of the corporation from the 1980s and 1990s. We have been given 6 csv files to complete this task (found in the data folder in this repository).

See below for details regarding this assignment:
* The analysis will be completing in SQL.
* An ERD of the tables needs to be created.
* Primary and foreign keys need to be assigned along with data types and other constraints.
* The csv data needs to be imported into each table created.

We then need to answer the below questions:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.
 
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

There is also a bonus section where we try to determine whether the dataset is real or fake by importing the SQL database into Pandas and then:
* Creating a histogram to visualise the most common salary range for employees.
* Creating a bar chart of the average salary by job title. 

---
### Method

In order to complete this task I started by sketching out the ERD in http://www.quickdatabasediagrams.com , I then exported the data to postgreSQL and imported the data into each table. The order of importing the csv files was important. I had to ensure that if I was assigning a foreign key(FK) to a table, the data attached to that FK was imported first.

The below is an image of the ERD:
![ERD](https://user-images.githubusercontent.com/82348616/125225128-110e5300-e312-11eb-9ac1-495d651a9e69.png)

Once all data was imported, I inspected each table to check that all data was imported correctly and I determined how many rows of data were in each table.
I then proceeded to run the queries as set out in the question. 
To complete the queries I used:
* "INNER JOIN" to combine tables and get all data required.
* "WHERE" to filter out data from the tables.
* "LIKE" to further filter out the data and get a more specific result.
* "AND" to apply more than 1 criteria/filter to the data query.
* "GROUP BY" to group the data and apply a count to the query.
* "ORDER BY" to make the data appear in descending order.

To complete the bonus section I used a number of different methods including:
* pd.read_sql to read in the SQL database
* pd.merge to merge the tables in pandas
* .fillna to replace any null values with 0
* .min() to find the minimum salary
* .max() to find the maximum salary
* sort_values to sort the data from lowest to highest salary

I also used bins and labels to create the salary ranges and then pd.cut to create a new column displaying salary ranges.

I then used matplotlib to plot the histogram and bar chart.


---
### Results

During the analysis we created the below graphs.

A histogram showing that the majority of employees earn less that $50,000
![Histogram](https://user-images.githubusercontent.com/82348616/125224973-d4daf280-e311-11eb-86a7-5018e6932c90.PNG)

A Bar graph that shows a Senior Engineer earns slightly less than an Assistant Engineer.

![Bar graph](https://user-images.githubusercontent.com/82348616/125224974-d60c1f80-e311-11eb-85fd-7c83fb39eb3c.PNG)

Once presenting this data to the boss, he told us to search our ID number... 
![Aprilfoolsday](https://user-images.githubusercontent.com/82348616/125225283-5fbbed00-e312-11eb-9d2e-aa12733ed1ef.PNG)

It was all an April Fools joke!


---
### Files

In the main branch of this repo there are 2 folders - "EmployeeSQL" & "Data"

The EmployeeSQL folder contains the below:
* A saved image of the code used to create the ERD titled "ERD creation image"
* A saved image of the ERD image titled "ERD"
* A file titled queries.sql - this contains the code used to answer the questions.
* A file titled table_schemata.sql - this is the code used to create the tables in PostgreSQL.
* A file titled bonus_analysis.ipynb - this is the code used for the bonus question. Please run this in Pandas/Jupyter notebook.
* A Graphs folder containing images of the graphs generated in the bonus section.

The Data folder contains the csv files that need to be imported.

Note: to run the salary_analysis code you will need to create a login_info.py file inside the EmployeeSQL folder that contains your username, password and database from SQL. Details as per below:
![sql info](https://user-images.githubusercontent.com/82348616/125222551-8f1c2b00-e30d-11eb-9e93-e8b92a3667d6.PNG)




