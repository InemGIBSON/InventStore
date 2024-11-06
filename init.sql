-- Create database
CREATE DATABASE IF NOT EXISTS inventorydb;

-- Use the database
USE inventorydb;

-- Create the items table
CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    quantity INT NOT NULL DEFAULT 0,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert some sample data
INSERT INTO items (name, description, quantity, price)
VALUES
    ('Laptop', 'A high-performance laptop', 10, 1200.00),
    ('Phone', 'A smartphone with 128GB storage', 50, 800.00),
    ('Tablet', 'A 10-inch display tablet', 30, 300.00),
    ('Monitor', '27-inch monitor with 4K resolution', 15, 450.00);

-- Confirm data has been inserted
SELECT * FROM items;
