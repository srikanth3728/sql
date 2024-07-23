--------- 1. Combine the menu_items and order_details tables into a single table.
SELECT * FROM menu_items;
SELECT * FROM order_details;

select *
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id;

---------- 2. What were the least and most ordered items? What categories were they in?
select item_name ,category, count(order_details_id) AS num_purchases
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases;

----------- 3. What were the top 5 orders that spent the most money?
select order_id,sum(price) as total_spend
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;

---------- 4. View the details of the highest spend order. What insights can you gather from the result?
select *
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
;
select  category, count(item_id) as num_items
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category 
;
----------- 5. View the details of the top 5 highest spend orders. What insights can you gather from the results?

select  category, count(item_id) as num_items
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in( 440,2075,1957,330,2675)
group by category 
;

select order_id, category, count(item_id) as num_items
FROM order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in( 440,2075,1957,330,2675)
group by category , order_id
;
