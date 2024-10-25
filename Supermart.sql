CREATE DATABASE supermart;

USE SuperMart;

CREATE TABLE stores (
store_id int primary key auto_increment,
store_name varchar(100),
location varchar(100),
city varchar(50),
province varchar(50) );

CREATE TABLE departments (
id int primary key auto_increment,
department_name varchar(50) );


 CREATE TABLE products (
 prod_id int primary key auto_increment,
 product_name varchar(50),
 price decimal(10,2),
 department_id int references departments(id) );
 
 CREATE TABLE sales (
 id int primary key auto_increment,
 sale_date date,
 store_id int references stores(store_id),
 product_id int references products(prod_id),
 quantity int ,
 total_amount decimal(10,2) );
 
 CREATE TABLE customers (
 cust_id int primary key auto_increment,
 customer_name varchar(80),
 email varchar(100));
 
 CREATE TABLE transactions (
 transaction_id int primary key auto_increment,
 sale_id int references sales(id),
 customer_id int references customers(cust_id),
 payment_method varchar(50),
 transaction_date date );
 
 CREATE TABLE inventory (
 inventory_id int primary key auto_increment,
 store_id int references stores(store_id),
 product_id int references products(prod_id),
 quantity int );
 
 INSERT INTO stores (store_name,location,city,province)
 VALUES('Supermart Rondebosch','120 Main Rd','Cape Town','Western Cape'),
 ('Supermart Observatory','143 Main Rd','Cape Town','Western Cape'),
 ('Supermart Johannesbury','456 Elm Rd','Johannesbury','Gauteng'),
 ('Supermart Port Elizabeth','76 Jenkinson st','Port Elizabeth','Eastern Cape'),
 ('Supermart Durban','59 Sir Richard St','Durban','Kwazulu Natal');
 
 INSERT INTO departments (department_name)
 VALUES('Grocery'),
 ('Electronics'),
 ('Clothing'),
 ('Health and Beauty'),
 ('Home Goods'),
 ('Stationary');
 
 
 INSERT INTO products (product_name,price,department_id)
 VALUES('Coca-Cola 2l',25.99,1),('Oros 2l',30.99,1),('White Shirt',249.99,3),('Superman Black T-Shirt',109.99,3),
 ('Nivea Men Moisturizer',59.99,4), ('Clere body lotion',29.99,4),('Essentials Microwave Oven',999.99,2),('3 Pack Bic pens',29.99,6),
 ('Oxford Notebook',99.99,6),('Domestos Bleach',35.99,5),('Sunlight dishwashing liquid',35.99,5),('Jive 2l',14.99,1),
 ('2kg Specco Rice',39.99,1),('No Name Spaghetti',29.99,1),('Canola 2l Cooking Oil',74.99,1),('30s Jumbo Farm Eggs',119.99,1),
 ('Barbie Notebook',39.99,6),('DanDairy Milk Chocolate',19.99,1),('Essential White T-Shirt',89.99,3),('Tumeric Face Soap',39.99,4),
 ('Oakridge Black Chino pants',499.99,3),('White Slippers',149.99,3),('Navy Blue shirt',299.99,3),('Tan Chino pants',399.99,3),
 ('Floral Duvet',799.99,5),('Shower Curtain',149.99,5),('Drying Towel',199.99,5),('Vintage Baseball hat',399.99,3),
 ('LG Washing machine 8l',7999.99,2),('Bosch Washing machine',9499.99,2),('Samsung Fridge',12999.99,2),('LG Fridge',8699.99,2),
 ('Samsung TV 4K HD 60in',14499.99,2),('Levono i7 laptop',29000.99,2),('HP i5 laptop',9999.99,2),('MSI gaming laptop',48999.99,2),
 ('A4 Counterbook 5pack',499.99,6),('Mathematical set',149.99,6),('Chanel no 5 perfume',2999.99,4),('Boss men cologne',1499.99,4);
 
 INSERT INTO sales (sale_date, store_id, product_id, quantity, total_amount)
 VALUES('2022-01-01',1,15,2,150.99),('2022-01-01',6,34,2,58000.99),('2022-01-01',1,40,2,2999.99),('2022-01-01',4,29,1,7999.99),
 ('2022-01-01',3,39,2,5999.99),('2022-01-01',4,3,3,750.99),('2022-01-01',3,5,1,59.99),('2022-01-01',5,7,1,999.99),
 ('2022-01-02',2,21,3,1499.99),('2022-01-02',2,25,3,2099.99),('2022-01-02',5,27,10,1999.99),('2022-01-02',5,28,20,7999.99),
 ('2022-01-02',5,39,15,7499.99),('2022-01-03',2,12,10,180.99),('2022-01-03',2,4,20,220.99),('2022-01-03',3,14,10,300.99),
 ('2022-01-03',4,16,5,600.99),('2022-01-04',5,19,2,180.99),('2022-01-04',1,38,200,29999.99),('2022-01-04',2,31,1,12999.99),
 ('2022-01-04',3,30,2,18999.99),('2022-01-05',4,22,5,749.99),('2022-01-05',5,24,2,799.99),('2022-01-05',3,17,2,150),
 ('2022-01-06',2,13,2,80.99),('2022-01-06',1,23,1,399.99),('2022-01-06',4,34,1,29999.99),('2022-01-07',4,1,5,125.99),
 ('2022-01-07',2,7,2,1999.99),('2022-01-07',2,20,2,79.99),('2022-01-08',3,8,3,89.99),('2022-01-08',3,18,1,19.99),
 ('2022-01-09',4,17,1,39.99),('2022-01-09',4,14,3,89.99),('2022-01-10',5,20,1,39.99),('2022-01-10',5,13,2,79.99),
 ('2022-01-11',1,8,1,29.99),('2022-01-11',1,16,2,240.99),('2022-01-12',3,3,2,499.99),('2022-01-12',4,15,1,74.99),
 ('2022-01-13',2,10,2,69.99),('2022-01-13',5,10,2,70.99),('2022-01-14',3,1,2,50.99),('2022-01-14',3,4,1,109.99),
 ('2022-01-15',2,9,2,199.99),('2022-01-16',1,5,2,119.99),('2022-01-17',1,5,2,120.99),('2022-01-20',4,2,3,90.99),
 ('2022-01-25',5,18,2,39.99),('2022-01-29',4,6,2,59.99),('2022-01-30',1,11,1,35.99);
 
 
 INSERT INTO transactions (sale_id,customer_id,payment_method,transaction_date)
 VALUES(1,7,'Credit Card','2022-01-01'),(2,1,'Debit Card','2022-01-01'),(3,2,'Credit Card','2022-01-01'),(4,3,'Dibit Card','2022-01-01'),
 (5,4,'Credit Card','2022-01-01'),(6,5,'Cash','2022-01-01'),(7,6,'Credit Card','2022-01-01'),(8,7,'Debit Card','2022-01-01'),
 (9,7,'Cash','2022-01-02'),(10,1,'Cash','2022-01-02'),(11,7,'Cash','2022-01-02'),(12,2,'Credit Card','2022-01-02'),
 (13,3,'Debit Card','2022-01-02'),(14,4,'Cash','2022-01-03'),(15,5,'Credit Card','2022-01-03'),(16,7,'Credit Card','2022-01-03'),
 (17,6,'Cash','2022-01-03'),(18,6,'Debit Card','2022-01-04'),(19,4,'Credit Card','2022-01-04'),(20,3,'Cash','2022-01-04'),
 (21,3,'Credit Card','2022-01-04'),(22,7,'Debit Card','2022-01-05'),(23,1,'Credit Card','2022-01-05'),(24,5,'Debit Card','2022-01-05'),
 (25,6,'Credit Card','2022-01-06'),(26,7,'Credit Card','2022-01-06'),(27,5,'Credit Card','2022-01-06'),(28,4,'Cash','2022-01-07'),
 (29,2,'Debit Card','2022-01-07'),(30,2,'Cash','2022-01-07'),(31,6,'Cash','2022-01-08'),(32,2,'Credit Card','2022-01-08'),
 (33,7,'Credit Card','2022-01-09'),(34,5,'Credit Card','2022-01-09'),(35,4,'Cash','2022-01-10'),(36,5,'Credit Card','2022-01-10'),
 (37,7,'Debit Card','2022-01-11'),(38,2,'Cash','2022-01-11'),(39,1,'Debit Card','2022-01-12'),(40,6,'Cash','2022-01-12'),
 (41,3,'Credit Card','2022-01-13'),(42,1,'Cash','2022-01-13'),(43,6,'Credit Card','2022-01-14'),(44,7,'Cash','2022-01-14'),
 (45,5,'Debit Card','2022-01-15'),(46,4,'Cash','2022-01-16'),(47,6,'Cash','2022-01-17'),(48,4,'Debit Card','2022-01-20'),
 (49,2,'Credit Card','2022-01-25'),(50,1,'Credit Card','2022-01-29'),(51,1,'Debit Card','2022-01-30');
 
 INSERT INTO customers (customer_name,email)
 VALUES('Jack Smith','jack.smith@customer.com'),
 ('Jane Doe','jane.doe@customer.com'),
 ('Sheldon Cooper','sheldon.cooper@customer.com'),
 ('Jim Halpert','jim.halpert@customer.com'),
 ('Raj Kuthrapolie','raj.kuthrapolie@customer.com'),
 ('Liz Johnson','liz.johnson@customer.com'),
 ('Amy Fowler','ann.fowler@customer.com');
 
 
INSERT INTO inventory (store_id,product_id,quantity)
VALUES(3,1,2000),(2,1,20),(3,20,120),(4,2,200),(5,3,150),(2,12,50),(1,4,30),(3,5,200),(2,6,100),
(2,7,80),(4,1,60),(1,8,20),(1,12,50),(4,9,240),(2,10,85),(1,11,65),(5,12,30),(1,13,790),(5,14,50),
(3,15,200),(5,16,280),(5,17,110),(4,12,150),(4,18,354),(2,19,60),(3,20,76),(1,20,39),(4,12,50),(2,4,90),
(4,1,200),(5,2,100),(3,1,100),(1,16,100),(5,12,90),(2,17,534),(2,15,780),(1,20,97),(3,13,576),(3,4,35),
(5,14,210),(1,19,150),(2,16,160),(2,19,600),(4,12,80),(3,12,70),(4,12,70),(1,11,20),(1,10,40),(1,8,48),
(3,3,976),(4,1,265),(2,2,100),(5,1,400),(1,4,45),(3,4,30),(2,6,260),(1,7,960),(5,6,68),(4,8,100);

-- 1. What is the total sales revenue for supermart?
SELECT SUM(total_amount) AS total_sales_revenue
FROM sales;


-- 2.Which store generated the highest sales revenue?
SELECT sto.store_name, 
       SUM(total_amount) AS total_sales_revenue
FROM sales AS s 
JOIN stores AS sto 
USING (store_id)
GROUP BY 1
ORDER BY total_sales_revenue DESC
LIMIT 1;


-- 3. Which payment method was the most popular among customers?
SELECT payment_method, 
	   COUNT(payment_method) AS pop_payment_method
FROM transactions AS t 
JOIN customers AS c 
ON t.customer_id = c.cust_id
GROUP BY 1
ORDER BY 2 DESC;

-- 4. Top 5 products with the highest  sales revenue
SELECT product_name,
       SUM(total_amount) AS total_sales_revenue
FROM products AS pro 
JOIN sales AS s 
ON pro.prod_id = s.product_id
GROUP BY product_name
ORDER BY 2 DESC
LIMIT 5;

-- 5. Find out how much each customer spent
SELECT customer_name,
       SUM(total_amount) AS total_spend
FROM transactions AS tra
JOIN customers AS c 
ON tra.customer_id = c.cust_id
JOIN sales AS s 
ON tra.sale_id = s.id
GROUP BY 1
ORDER BY 2 DESC;

-- 6. Whats the average order value per customer
SELECT customer_name, 
       ROUND(AVG(total_amount),2) AS avg_order_value
FROM transactions AS tra
JOIN customers AS c 
ON tra.customer_id = c.cust_id
JOIN sales AS s 
ON tra.sale_id = s.id
GROUP BY 1;

-- 7. Which department has the highest sales revenue
SELECT  department_name, 
        SUM(total_amount) AS total_revenue
FROM products AS pro 
JOIN departments AS dept
ON pro.department_id = dept.id
JOIN sales AS s 
ON pro.prod_id = s.product_id
GROUP BY 1
ORDER BY 2 DESC;

-- 8. Find top 3 products with the lowest inventory levels in each store
WITH store_inventory_level AS (SELECT product_name, 
                                      store_name,
                                      sum(quantity) AS lowest_inv_levels,
                                      ROW_NUMBER() OVER(PARTITION BY store_name ORDER BY SUM(quantity)) AS qnt_rnk
                              FROM inventory AS inv
							  JOIN products AS pro
							  ON inv.product_id = pro.prod_id
                             JOIN stores AS sto 
                             ON inv.store_id = sto.store_id
                             GROUP BY 1,2
                             ORDER BY 2)
SELECT store_name,
       product_name,
	   lowest_inv_levels
FROM store_inventory_level
WHERE qnt_rnk IN (1,2,3);

-- 9.Calculate total inventory value for each store
SELECT store_name, 
       SUM(quantity) AS inv_level_per_store
FROM inventory AS inv 
JOIN stores AS sto 
USING (store_id)
GROUP BY 1
ORDER BY 2;

-- 10. Calculate weekly sales revenue
SELECT WEEK(sale_date) AS week_number,
       SUM(total_amount) AS total_weekly_sales_revenue
FROM sales
GROUP BY 1;

-- 11. Find the top 3 products with the highest sales revenue in each store
SELECT store_name,
       product_name,
       tot_revenue
FROM (SELECT sto.store_name,
             pro.product_name, 
             SUM(s.total_amount) AS tot_revenue,
             ROW_NUMBER() OVER(PARTITION BY store_name ORDER BY SUM(total_amount) DESC) AS prod_rnk
    FROM sales AS s 
    JOIN stores AS sto 
    USING (store_id)
    JOIN products AS pro 
    ON s.product_id = pro.prod_id
    GROUP BY 1,2) AS prod_ranking
WHERE prod_rnk IN (1,2,3);

-- Whats the most purchased product 
SELECT product_name,
       COUNT(product_id) AS pop_product
FROM sales AS s 
JOIN products AS pro
ON s.product_id = pro.prod_id
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

 
