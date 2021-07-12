-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- To create these tables I used QuickDBD and exported the results. 
-- I have also included a "drop table" line and therefore if a table is created with the same name, it will remove that table before creating the new table.
-- Character limits have been applied to columns that require a specific number of characters.
-- Not null is applied to all columns as each column requires an entry.
-- To ensure code runs correctly, ensure the csv files are uploaded in the correct order (e.g. the Titles csv file needs to be uploaded before the employees csv file.)

DROP TABLE IF EXISTS Employees CASCADE;
CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date VARCHAR(10)   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date VARCHAR(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

DROP TABLE IF EXISTS Departments CASCADE;
CREATE TABLE Departments (
    dept_no VARCHAR(4)   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

DROP TABLE IF EXISTS Dept_emp CASCADE;
CREATE TABLE Dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
    CONSTRAINT pk_Dept_emp PRIMARY KEY (
        emp_no,dept_no
     )
);

DROP TABLE IF EXISTS Dept_manager CASCADE;
CREATE TABLE Dept_manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no INT   NOT NULL,
    CONSTRAINT pk_Dept_manager PRIMARY KEY (
        dept_no,emp_no
     )
);

DROP TABLE IF EXISTS Salaries CASCADE;
CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

DROP TABLE IF EXISTS Titles CASCADE;
CREATE TABLE Titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);
