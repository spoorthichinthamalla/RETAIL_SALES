 Online Retail Sales Analysis using SQLite

 Project Description

The **Online Retail Sales Analysis** project is designed to demonstrate how structured databases and SQL queries can be used to extract meaningful insights from retail data. This project simulates a simplified e-commerce system where customers purchase products, and each transaction is recorded and analyzed.

A relational database is created using SQLite to store information about customers, products, orders, and order items. The data is organized in a normalized format to ensure efficiency, reduce redundancy, and maintain data integrity through the use of primary and foreign keys.

The main objective of this project is to analyze sales performance and customer behavior using SQL queries. By applying operations such as joins, aggregations, grouping, and filtering, the project generates useful business insights such as identifying top-selling products, calculating monthly revenue, analyzing category-wise sales, and detecting inactive customers.

This project highlights the practical application of SQL in real-world scenarios, particularly in retail analytics. It helps in understanding how raw transactional data can be transformed into actionable information that supports business decision-making.
key Features
* Designed a normalized relational database using SQLite
* Established relationships between tables using foreign keys
* Inserted and managed structured retail data
* Performed advanced SQL queries for data analysis
* Generated insights on sales trends and customer activity

Learning Outcomes

* Understanding of relational database design
* Hands-on experience with SQL (JOIN, GROUP BY, aggregation)
* Ability to analyze and interpret business data
* Knowledge of organizing and querying real-world datasets
conclusion
This project successfully demonstrates how SQL can be used as a powerful tool for data analysis in retail systems. It provides a strong foundation for building data-driven applications and understanding business intelligence concepts.

QUERIES
1.Top-Selling Products
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;
output:
name       total_sold
---------  ----------
Watch      3
Shoes      2
Laptop     2
Phone      1
refer query1.png
2. Most Valuable Customers:
SELECT c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;
output:
name     total_spent
-------  -----------
Asha     68500
Sneha    55000
Rahul    20000
refer query2.png
3.Monthly Revenue
SELECT strftime('%Y-%m', o.order_date) AS month,
       SUM(p.price * oi.quantity) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month;
output:
month    revenue
-------  -------
2026-01  61000
2026-02  27500
2026-03  55000
refer query3.png
4. Category-wise Sales
SELECT p.category,
       SUM(p.price * oi.quantity) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category;
output:
category      total_sales
------------ ------------
Electronics   130000
Fashion       6000
Accessories   7500
refer query4.png
5. Inactive Customers
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
output:
refer query5.png


