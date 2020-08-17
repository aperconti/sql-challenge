CREATE TABLE "Departments" (
    "dept_no" VARCHAR(5)   NOT NULL,
    "dept_name" VARCHAR(35)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "department_Employees" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(5)   NOT NULL,
    CONSTRAINT "pk_department_Employees" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Manager" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(5)   NOT NULL,
    CONSTRAINT "pk_Manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Employees_data" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(6) UNIQUE  NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees_data" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries_data" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_Salaries_data" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR(7)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "department_Employees" ADD CONSTRAINT "fk_department_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees_data" ("emp_no");

ALTER TABLE "department_Employees" ADD CONSTRAINT "fk_department_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees_data" ("emp_no");

ALTER TABLE "Manager" ADD CONSTRAINT "fk_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Salaries_data" ADD CONSTRAINT "fk_Salaries_data_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees_data" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees_data" ("emp_title_id");

