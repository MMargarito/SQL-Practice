-- Create tables
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    region VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price DECIMAL(10,2)
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO customers (customer_name, email, region) VALUES
('Alice Johnson', 'alice@email.com', 'North'),
('Bob Smith', 'bob@email.com', 'South'),
('Carol White', 'carol@email.com', 'North'),
('David Brown', 'david@email.com', 'East'),
('Eve Davis', 'eve@email.com', 'South'),
('Frank Miller', 'frank@email.com', 'West'),
('Grace Wilson', 'grace@email.com', 'North'),
('Henry Moore', 'henry@email.com', 'East');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 999.99),
('Mouse', 'Electronics', 29.99),
('Desk Chair', 'Furniture', 249.99),
('Monitor', 'Electronics', 399.99),
('Keyboard', 'Electronics', 79.99),
('Standing Desk', 'Furniture', 599.99),
('Webcam', 'Electronics', 89.99),
('Headphones', 'Electronics', 149.99);

INSERT INTO orders (customer_id, product_id, quantity, order_date, amount) VALUES
(1, 1, 1, '2024-01-15', 999.99),
(1, 2, 2, '2024-01-20', 59.98),
(2, 3, 1, '2024-02-01', 249.99),
(3, 4, 1, '2024-02-14', 399.99),
(3, 5, 1, '2024-02-14', 79.99),
(4, 1, 1, '2024-03-01', 999.99),
(4, 6, 1, '2024-03-15', 599.99),
(5, 7, 2, '2024-03-20', 179.98),
(6, 8, 1, '2024-04-01', 149.99),
(7, 2, 3, '2024-04-10', 89.97),
(8, 4, 2, '2024-04-15', 799.98),
(1, 8, 1, '2024-05-01', 149.99),
(2, 1, 1, '2024-05-10', 999.99),
(3, 6, 1, '2024-05-20', 599.99),
(5, 3, 1, '2024-06-01', 249.99);

