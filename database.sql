-- Membuat database terlebih dahulu
CREATE DATABASE ecommerce_db;
-- Membuat table transaksi
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    customer_id INT,
    product_id INT,
    product_category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    order_status VARCHAR(20)
);
