SELECT * FROM employee2;


--USING AND OPERATORS
SELECT * FROM employee2
WHERE age>=60 AND salary >=90000;


--USING OR OPERTORS
SELECT * FROM employee2
WHERE age>=60 OR salary >=100000;

--USING NOT
SELECT * FROM employee2
WHERE NOT (department='IT');

