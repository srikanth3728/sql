use restaurant_db;

-- 1. VIEW THE menu_items table 
SELECT * FROM menu_items;

-- 2. find the number of items on the menu
SELECT count(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items
order by price ;
SELECT * FROM menu_items
order by price desc ;


-- 4. How many Italian dishes are on the menu?
SELECT count(*) FROM menu_items where category = 'Italian';


-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT * FROM menu_items
 where category = 'Italian'
 order by price;
 
 SELECT * FROM menu_items
 where category = 'Italian'
 order by price desc;
 
-- 6. How many dishes are in each category?
select category,count(menu_item_id) as num_dishes
 from menu_items
 group by category ;
 
-- 7. What is the average dish price within each category?
select category,AVG(price) as avg_prices
 from menu_items
 group by category ;