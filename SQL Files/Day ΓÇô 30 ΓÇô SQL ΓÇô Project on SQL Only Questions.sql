-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database
\c OnlineBookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'D:\Course Updates\30 Day Series\SQL\CSV\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'D:\Course Updates\30 Day Series\SQL\CSV\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'D:\Course Updates\30 Day Series\SQL\CSV\Orders.csv' 
CSV HEADER;


-- 1) Retrieve all books in the "Fiction" genre:



-- 2) Find books published after the year 1950:


-- 3) List all customers from the Canada:


-- 4) Show orders placed in November 2023:


-- 5) Retrieve the total stock of books available:


-- 6) Find the details of the most expensive book:


-- 7) Show all customers who ordered more than 1 quantity of a book:


-- 8) Retrieve all orders where the total amount exceeds $20:


-- 9) List all genres available in the Books table:


-- 10) Find the book with the lowest stock:


-- 11) Calculate the total revenue generated from all orders:

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:



-- 2) Find the average price of books in the "Fantasy" genre:



-- 3) List customers who have placed at least 2 orders:


-- 4) Find the most frequently ordered book:


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :



-- 6) Retrieve the total quantity of books sold by each author:


-- 7) List the cities where customers who spent over $30 are located:


-- 8) Find the customer who spent the most on orders:


--9) Calculate the stock remaining after fulfilling all orders:








