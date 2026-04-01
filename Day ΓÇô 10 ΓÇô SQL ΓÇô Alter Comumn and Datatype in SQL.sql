-- Drop the table if it already exists
DROP TABLE IF EXISTS users;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50)
);


SELECT * FROM users;

-- Insert 5 sample users into the users table

INSERT INTO USERS (USERNAME,EMAIL, AGE,CITY)
VALUES ('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
				('Priya', 'priya@yahoo.com', 30, 'Delhi'),
				('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),
				('Sneha', 'sneha@hotmail.com', 35, 'Pune'),
				('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');


SELECT USERNAME,
	CITY
FROM USERS;

UPDATE users 
SET age=28
WHERE username='Rajesh';

SELECT * FROM users;


SELECT *
FROM USERS
ORDER BY USER_ID ASC;




UPDATE users
SET city='Chennai'
WHERE age>=30;



UPDATE users
SET age=31, city='kolkat1a'
WHERE username='Priya';

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';


DELETE FROM users WHERE user_id=6;


-- To Rename the username column to Full_Name

ALTER TABLE users
RENAME COLUMN username TO full_name;

SELECT * FROM USERS ORDER BY USER_ID ASC;

--To change the age column's data type from INT to SMALLINT

ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;


-- TO add a NOT NULL CONSTRAINT to city column

ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

-- Adding CHECK constraint to age column


ALTER TABLE users
DROP CONSTRAINT age;


ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

-- inserting data to check constraint of age
INSERT INTO USERS (FULL_NAME,EMAIL, AGE,CITY)
VALUES ('Vinod', 'rajesh@gmail.com',19, 'Mumbai');


-- change the table name
ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers ORDER BY USER_ID ASC;
