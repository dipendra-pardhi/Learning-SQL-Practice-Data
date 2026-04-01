SELECT * FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES ('Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
			('Priya Desai','Software Engineer', 'IT', '2021-09-20',75000.00),
			('Rajesh Kumar', 'HR Manager', 'Human Resources', '2019-03-10', 82000.00),
			('Sneha Patel', 'Marketing Specialist', 'Marketing', '2020-11-25', 58000.00),
			('Vikram Singh', 'Sales Executive', 'Sales', '2023-02-12', 62000.00);


ALTER TABLE employee
RENAME COLUMN postiion TO position;

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;