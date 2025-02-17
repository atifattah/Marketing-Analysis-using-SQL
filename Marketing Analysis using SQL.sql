-- Create the database SC_marketing

create database SC_marketing;

-- Use the database

use SC_marketing;

-- Create the table

CREATE TABLE sustainable_clothing (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
size VARCHAR(10),
price FLOAT
);

-- Insert data into the table

INSERT INTO sustainable_clothing (product_id, product_name, category, size, price)
VALUES
(1, 'Organic Cotton T-Shirt', 'Tops', 'S', 29.99),
(2, 'Recycled Denim Jeans', 'Bottoms', 'M', 79.99),
(3, 'Hemp Crop Top', 'Tops', 'L', 24.99),
(4, 'Bamboo Lounge Pants', 'Bottoms', 'XS', 49.99),
(5, 'Eco-Friendly Hoodie', 'Outerwear', 'XL', 59.99),
(6, 'Linen Button-Down Shirt', 'Tops', 'M', 39.99),
(7, 'Organic Cotton Dress', 'Dresses', 'S', 69.99),
(8, 'Sustainable Swim Shorts', 'Swimwear', 'L', 34.99),
(9, 'Recycled Polyester Jacket', 'Outerwear', 'XL', 89.99),
(10, 'Bamboo Yoga Leggings', 'Activewear', 'XS', 54.99),
(11, 'Hemp Overalls', 'Bottoms', 'M', 74.99),
(12, 'Organic Cotton Sweater', 'Tops', 'L', 49.99),
(13, 'Cork Sandals', 'Footwear', 'S', 39.99),
(14, 'Recycled Nylon Backpack', 'Accessories', 'One Size', 59.99),
(15, 'Organic Cotton Skirt', 'Bottoms', 'XS', 34.99),
(16, 'Hemp Baseball Cap', 'Accessories', 'One Size', 24.99),
(17, 'Upcycled Denim Jacket', 'Outerwear', 'M', 79.99),
(18, 'Linen Jumpsuit', 'Dresses', 'L', 69.99),
(19, 'Organic Cotton Socks', 'Accessories', 'M', 9.99),
(20, 'Bamboo Bathrobe', 'Loungewear', 'XL', 69.99);

-- Create the table

CREATE TABLE marketing_campaigns (
campaign_id INT PRIMARY KEY,
campaign_name VARCHAR(100),
product_id INT,
start_date DATE,
end_date DATE,
FOREIGN KEY (product_id) REFERENCES sustainable_clothing (product_id)
);

-- Insert data into the table

INSERT INTO marketing_campaigns (campaign_id, campaign_name, product_id, start_date, end_date)
VALUES
(1, 'Summer Sale', 2, '2023-06-01', '2023-06-30'),
(2, 'New Collection Launch', 10, '2023-07-15', '2023-08-15'),
(3, 'Super Save', 7, '2023-08-20', '2023-09-15');

-- Create the table

CREATE TABLE transactions (
transaction_id INT PRIMARY KEY,
product_id INT,
quantity INT,
purchase_date DATE,
FOREIGN KEY (product_id) REFERENCES sustainable_clothing (product_id)
);

-- Insert data into the table
INSERT INTO transactions (transaction_id, product_id, quantity, purchase_date)
VALUES
(1, 2, 2, '2023-06-02'),
(2, 14, 1, '2023-06-02'),
(3, 5, 2, '2023-06-05'),
(4, 2, 1, '2023-06-07'),
(5, 19, 2, '2023-06-10'),
(6, 2, 1, '2023-06-13'),
(7, 16, 1, '2023-06-13'),
(8, 10, 2, '2023-06-15'),
(9, 2, 1, '2023-06-18'),
(10, 4, 1, '2023-06-22'),
(11, 18, 2, '2023-06-26'),
(12, 2, 1, '2023-06-30'),
(13, 13, 1, '2023-06-30'),
(14, 4, 1, '2023-07-04'),
(15, 6, 2, '2023-07-08'),
(16, 15, 1, '2023-07-08'),
(17, 9, 2, '2023-07-12'),
(18, 20, 1, '2023-07-12'),
(19, 11, 1, '2023-07-16'),
(20, 10, 1, '2023-07-20'),
(21, 12, 2, '2023-07-24'),
(22, 5, 1, '2023-07-29'),
(23, 10, 1, '2023-07-29'),
(24, 10, 1, '2023-08-03'),
(25, 19, 2, '2023-08-08'),
(26, 3, 1, '2023-08-14'),
(27, 10, 1, '2023-08-14'),
(28, 16, 2, '2023-08-20'),
(29, 18, 1, '2023-08-27'),
(30, 12, 2, '2023-09-01'),
(31, 13, 1, '2023-09-05'),
(32, 7, 1, '2023-09-05'),
(33, 6, 1, '2023-09-10'),
(34, 15, 2, '2023-09-14'),
(35, 9, 1, '2023-09-14'),
(36, 11, 2, '2023-09-19'),
(37, 17, 1, '2023-09-23'),
(38, 2, 1, '2023-09-28'),
(39, 14, 1, '2023-09-28'),
(40, 5, 2, '2023-09-30'),
(41, 16, 1, '2023-10-01'),
(42, 12, 2, '2023-10-01'),
(43, 1, 1, '2023-10-01'),
(44, 7, 1, '2023-10-02'),
(45, 18, 2, '2023-10-03'),
(46, 12, 1, '2023-10-03'),
(47, 13, 1, '2023-10-04'),
(48, 4, 1, '2023-10-05'),
(49, 12, 2, '2023-10-05'),
(50, 7, 1, '2023-10-06'),
(51, 4, 2, '2023-10-08'),
(52, 8, 2, '2023-10-08'),
(53, 16, 1, '2023-10-09'),
(54, 19, 1, '2023-10-09'),
(55, 1, 1, '2023-10-10'),
(56, 18, 2, '2023-10-10'),
(57, 2, 1, '2023-10-10'),
(58, 15, 2, '2023-10-11'),
(59, 17, 2, '2023-10-13'),
(60, 13, 1, '2023-10-13'),
(61, 10, 2, '2023-10-13'),
(62, 9, 1, '2023-10-13'),
(63, 19, 2, '2023-10-13'),
(64, 20, 1, '2023-10-14');

-- Q1. HOW MANY TRANSACTIONS WERE COMPLETED DURING EACH MARKETING CAMPAIGN?

select M.campaign_name,
	count(T.transaction_id) as No_of_transactions
    from marketing_campaigns as M
    join transactions as T using (product_id)
    group by M.campaign_name
    order by No_of_transactions;
    
-- Q2. WHICH PRODUCT HAD THE HIGHEST SALES QUANTITY?

select P.product_id,
	   P.product_name,
       sum(T.quantity) as highest_sales_quantity
from sustainable_clothing as P
join transactions as T using (product_id)
group by P.product_id,
	     P.product_name
order by highest_sales_quantity desc
limit 1;

-- Q3. WHAT IS THE TOTAL REVENUE GENERATED FROM EACH MARKETING CAMPAIGN?

select M.campaign_id,
	   M.campaign_name,
       concat('$', round(sum(S.price*T.quantity), 2)) as Total_revenue
from marketing_campaigns as M
join sustainable_clothing as S using(product_id)
join transactions as T using(product_id)
group by M.campaign_id,
		 M.campaign_name
order by Total_revenue desc;

-- Q4. WHAT IS THE TOP-SELLING PRODUCT CATEGORY BASED ON THE TOTAL REVENUE GENERATED?

select S.category,
	   concat('$', round(sum(S.price*T.quantity), 2)) as Total_revenue
from transactions as T
join sustainable_clothing as S using(product_id)
group by S.category
order by Total_revenue
limit 1;

-- Q5. WHICH PRODUCTS HAD A HIGHER QUANTITY SOLD COMPARED TO THE AVERAGE QUANTITY SOLD?

select S.product_name,
	   sum(T.quantity) as higher_quantity
from transactions as T
join sustainable_clothing as S using(product_id)
group by S.product_name
having sum(T.quantity) > (select avg(quantity) from transactions as T)
order by higher_quantity desc;

-- Q6. WHAT IS THE AVERAGE REVENUE GENERATED PER DAY DURING THE MARKETING CAMPAIGNS?

select M.campaign_name,
	   concat('$', round(sum(T.quantity*S.price)/DATEDIFF(end_date, start_date), 2)) as Revenue_perday
from marketing_campaigns as M
join sustainable_clothing as S using(product_id)
join transactions as T using(product_id)
where purchase_date between start_date and end_date
group by M.campaign_id;

-- Q7. WHAT IS THE PERCENTAGE CONTRIBUTION OF EACH PRODUCT TO THE TOTAL REVENUE?

with contribution as 
(
select S.product_name,
	   S.product_id,
       round(sum(T.quantity*S.price), 2) as Total
from transactions as T
join sustainable_clothing as S using(product_id)
group by S.product_name, S.product_id)

select product_id,
	   product_name,
       concat(round(Total*100/(select sum(total) from contribution), 2), '%') as Percentage
from contribution
order by product_id asc;

-- Q8. COMPARE THE AVERAGE QUANTITY SOLD DURING MARKETING CAMPAIGNS TO OUTSIDE THE MARKETING CAMPAIGNS

select
	avg(case
    when product_id in(select distinct product_id from marketing_campaigns)
    then quantity else null end)
    as Avg_quantity_during_campaigns,
    avg(case
    when product_id not in(select distinct product_id from marketing_campaigns)
    then quantity else null end)
    as Avg_quantity_outside_campaigns
    from transactions;
    
-- Q9. COMPARE THE REVENUE GENERATED BY PRODUCTS INSIDE THE MARKETING CAMPAIGNS TO OUTSIDE THE CAMPAIGNS?

select
	round(sum(case
    when t.product_id in(select distinct product_id from marketing_campaigns)
    then t.quantity * s.price else 0 end), 2) as revenue_inside_campaigns,
    round(sum(case
    when t.product_id not in(select distinct product_id from marketing_campaigns) 
    then t.quantity * s.price else 0 end), 2) as revenue_outside_campaigns
    from transactions as t
    join sustainable_clothing as s using(product_id);
    
-- Q10. RANK THE PRODUCTS BY THEIR AVERAGE DAILY QUANTITY SOLD

with Ranking as
(
select product_id,
	   avg(quantity) as average_quantity
from transactions
group by product_id
)
select *,
		dense_rank() over(order by average_quantity asc) as rnk
from Ranking;
	