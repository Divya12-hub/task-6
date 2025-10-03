CREATE DATABASE salesdb;
USE salesdb;

CREATE TABLE orders (
  order_id VARCHAR(20) PRIMARY KEY,
  order_date DATE NOT NULL,
  amount DECIMAL(10,2),
  product_id VARCHAR(20)
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
('O1001','2024-01-05',1200,'P101'),
('O1002','2024-01-07',800,'P102'),
('O1003','2024-01-15',500,'P103'),
('O1004','2024-02-03',1500,'P101'),
('O1005','2024-02-07',700,'P104'),
('O1006','2024-02-15',950,'P102'),
('O1007','2024-03-02',2000,'P105'),
('O1008','2024-03-12',1800,'P101'),
('O1009','2024-03-18',2200,'P103'),
('O1010','2024-04-01',1750,'P102'),
('O1011','2024-04-06',1300,'P106'),
('O1012','2024-04-15',2100,'P105'),
('O1013','2024-05-03',2500,'P104'),
('O1014','2024-05-11',1600,'P103'),
('O1015','2024-05-21',1950,'P101');

SELECT
  YEAR(order_date) AS year,
  MONTH(order_date) AS month,
  DATE_FORMAT(order_date, '%Y-%m') AS month_label,
  COALESCE(SUM(amount),0) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month, month_label
ORDER BY year, month;

SELECT
  DATE_FORMAT(order_date, '%Y-%m') AS month_label,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY month_label
ORDER BY monthly_revenue DESC
LIMIT 3;



