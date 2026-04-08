-- Customers
INSERT INTO customers VALUES
(1, 'Asha', 'Hyderabad'),
(2, 'Rahul', 'Mumbai'),
(3, 'Sneha', 'Delhi'),
(4, 'Kiran', 'Chennai'),
(5, 'Meena', 'Bangalore');

-- Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Phone', 'Electronics', 20000),
(103, 'Shoes', 'Fashion', 3000),
(104, 'Watch', 'Accessories', 2500),
(105, 'Bag', 'Fashion', 1500);

-- Orders
INSERT INTO orders VALUES
(1001, 1, '2026-01-15'),
(1002, 2, '2026-02-10'),
(1003, 1, '2026-02-20'),
(1004, 3, '2026-03-05');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1001, 101, 1),
(1001, 103, 2),
(1002, 102, 1),
(1003, 104, 3),
(1004, 101, 1);