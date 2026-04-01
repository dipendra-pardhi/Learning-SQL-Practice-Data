SELECT * FROM employee2;


-- matches age 30
SELECT * FROM employee2
WHERE age=30;


--matches all except 30
SELECT first_name, age FROM employee2
WHERE age!=30;


-- salary greather than 50000
SELECT first_name, salary FROM employee2
WHERE salary<50000;
