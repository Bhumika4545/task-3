Customer Database Project
📌 Overview

This project creates a simple Customer Database with two tables:

Customers → stores customer details

Products → stores product details

It also demonstrates basic SQL queries such as SELECT, WHERE, ORDER BY, LIMIT, DISTINCT, and ALIASING.
This project was built as part of an SQL Developer Internship task.

🗄️ Database Structure
Database: Customer
Table: Customers
Column	Type	Description
customer_id	INT (PK)	Unique ID (Auto Increment)
name	VARCHAR(100)	Customer’s full name
email	VARCHAR(100)	Unique email address
phone	VARCHAR(15)	Phone number (nullable)
city	VARCHAR(50)	City of residence
address	TEXT	Full address
Table: Products
Column	Type	Description
product_id	INT (PK)	Unique ID (Auto Increment)
name	VARCHAR(100)	Product name
price	DECIMAL(10,2)	Price with 2 decimals
stock	INT	Available stock
category	VARCHAR(50)	Product category (e.g. Clothing)
📝 SQL Script

The main SQL file performs the following steps:

Step 1: Create Database
CREATE DATABASE Customer;
USE Customer;

Step 2: Create Tables
-- Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    city VARCHAR(50),
    address TEXT
);

-- Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    category VARCHAR(50)
);

Step 3: Insert Sample Data
-- Insert Customers
INSERT INTO Customers (name, email, phone, city, address) VALUES
('Riya Sharma', 'riya@email.com', '9876543210', 'Delhi', '123 Street'),
('Aman Verma', 'aman@email.com', NULL, 'Mumbai', '456 Avenue'),
('Sneha Gupta', 'sneha@email.com', '9123456789', 'Delhi', '789 Road'),
('Arjun Mehta', 'arjun@email.com', '9876501234', 'Bangalore', 'MG Road'),
('Priya Singh', 'priya@email.com', '9876512345', 'Chennai', 'Anna Nagar');

-- Insert Products
INSERT INTO Products (name, price, stock, category) VALUES
('Laptop', 55000, 10, 'Electronics'),
('Smartphone', 20000, 25, 'Electronics'),
('Headphones', 1500, 50, 'Electronics'),
('T-shirt', 800, 100, 'Clothing'),
('Shoes', 2500, 40, 'Clothing');

Step 4: Internship Task Queries
-- 1. Select all customers
SELECT * FROM Customers;

-- 2. Select only name and email of customers
SELECT name, email FROM Customers;

-- 3. Filtering rows (customers from Delhi or Mumbai)
SELECT * FROM Customers
WHERE city = 'Delhi' OR city = 'Mumbai';

-- 4. Range condition (products with price between 1000 and 5000)
SELECT * FROM Products
WHERE price BETWEEN 1000 AND 5000;

-- 5. Pattern matching (customers whose name starts with 'A')
SELECT * FROM Customers
WHERE name LIKE 'A%';

-- 6. Sorting products in descending order of price
SELECT * FROM Products
ORDER BY price DESC;

-- 7. Limit results (only first 3 customers)
SELECT * FROM Customers
LIMIT 3;

-- 8. Distinct (list unique cities of customers)
SELECT DISTINCT city FROM Customers;

-- 9. Aliasing (rename column names in output)
SELECT name AS customer_name, email AS contact_email
FROM Customers;

-- 10. Sorting customers (default ascending)
SELECT name FROM Customers
ORDER BY name;

-- 11. Sorting customers (descending order)
SELECT name FROM Customers
ORDER BY name DESC;

📚 Key Learnings

Creating databases and tables

Inserting sample data

Using SELECT * vs. specific columns

Filtering with WHERE, AND, OR

Pattern matching with LIKE

Applying BETWEEN for ranges

Sorting with ORDER BY ASC/DESC

Limiting results with LIMIT

Removing duplicates with DISTINCT

Aliasing columns with AS

🚀 Tools Used

MySQL Workbench

DB Browser for SQLite (alternative)

✅ Outcome

This project demonstrates how to design a simple database, insert data, and write basic SQL queries commonly asked in internship interviews.
