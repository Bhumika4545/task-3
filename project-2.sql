-- ==================================================
-- STEP 1: CREATE DATABASE
-- ==================================================
CREATE DATABASE Customer;
USE Customer;

-- ==================================================
-- STEP 2: CREATE TABLES
-- ==================================================

-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,   -- Unique ID for each customer
    name VARCHAR(100) NOT NULL,                   -- Customer name (cannot be NULL)
    email VARCHAR(100) UNIQUE NOT NULL,           -- Unique email (cannot repeat)
    phone VARCHAR(15),                            -- Phone number (optional)
    city VARCHAR(50),                             -- City where customer lives
    address TEXT                                  -- Full address
);

-- Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,    -- Unique ID for each product
    name VARCHAR(100) NOT NULL,                   -- Product name
    price DECIMAL(10,2) NOT NULL,                 -- Price with 2 decimals
    stock INT NOT NULL,                           -- Available stock
    category VARCHAR(50)                          -- Category like Electronics/Clothing
);

-- ==================================================
-- STEP 3: INSERT SAMPLE DATA
-- ==================================================

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

-- ==================================================
-- STEP 4: BASIC SELECT QUERIES (INTERNSHIP TASK)
-- ==================================================

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
SELECT name FROM Customers
ORDER BY name;   -- same as ORDER BY name ASC
SELECT name FROM Customers
ORDER BY name DESC;   -- Z → A

