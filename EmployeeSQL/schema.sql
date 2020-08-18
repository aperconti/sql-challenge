CREATE TABLE titles (
    title_id VARCHAR(7),
    title VARCHAR(40),
    PRIMARY KEY(title_id)
);

CREATE TABLE employees (
    emp_no INT, 
    emp_title_id VARCHAR(6),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no),
    CONSTRAINT fk_emp_title
      FOREIGN KEY(emp_title_id) 
      REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    PRIMARY KEY(emp_no),
    CONSTRAINT fk_emp
      FOREIGN KEY(emp_no) 
      REFERENCES employees(emp_no)
);

CREATE TABLE departments (
    dept_no VARCHAR(5),
    dept_name VARCHAR(35),
    PRIMARY KEY (dept_no)
);

CREATE TABLE department_emp (
    emp_no INTEGER,
    dept_no VARCHAR(5),
    PRIMARY KEY(emp_no, dept_no),
    CONSTRAINT fk_department_emp
      FOREIGN KEY(emp_no) 
      REFERENCES employees(emp_no),
    CONSTRAINT fk_departments
      FOREIGN KEY(dept_no) 
      REFERENCES departments(dept_no)
);

CREATE TABLE department_manager (
    dept_no VARCHAR(5),
    emp_no INTEGER,
    PRIMARY KEY(emp_no, dept_no),
    CONSTRAINT fk_manager_emp
      FOREIGN KEY(emp_no) 
      REFERENCES employees(emp_no),
    CONSTRAINT fk_departments
      FOREIGN KEY(dept_no) 
      REFERENCES departments(dept_no)
);
