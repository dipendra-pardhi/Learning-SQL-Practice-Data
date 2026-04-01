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
