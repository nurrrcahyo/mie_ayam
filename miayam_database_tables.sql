CREATE TABLE menu
(menuitem_id INT PRIMARY KEY,
menuitem VARCHAR(25),
price DECIMAL (8,2)
);

CREATE TABLE orders
(
order_id INT PRIMARY KEY,
orderdate DATE,
ordertime DATETIME,
payment_method VARCHAR(4)
);

CREATE TABLE orderdetail
(
order_id INT NOT NULL,
menuitem_id INT NOT NULL,
qty INT NOT NULL DEFAULT 1,
PRIMARY KEY (order_id, menuitem_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (menuitem_id) REFERENCES menu(menuitem_id)
);