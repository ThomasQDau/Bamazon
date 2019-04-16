DROP DATABASE IF EXISTS bamazonDB;
CREATE database bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  id INTEGER(10) AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(100),
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2),
  stock_quantity INTEGER(10)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('GTX 2080 TI', 'Electronics', 1000.00, 25),
('Razer Deathadder', 'Electronics', 50.00, 1000),
('Black Forest Gummies', 'Food', 2.25, 5000),
('200-ply Toilet Paper', 'Household', 5.00, 1000),
('1-play Toilet Paper', 'Household', 1.00, 9999),
('4-pack Rechargeable AA Battery', 'Household', 9.00, 500),
('Diablo 3 Battle-Chest', 'Electronics', 30.00, 50),
('Hershel Pop Quiz Backpack', 'Clothes/Accessories', 50.95, 100),
('Nintendo Switch', 'Electronics', 300.00, 100),
('12-inch Black Dildo', 'Entertainment', 50.00, 25);

SELECT * FROM products;

