USE restaurant_db;

-- 1. View the menu_items table.
SELECT *
FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*)
FROM menu_items;

-- 3. What are the least and most expensive dishes on the menu?
SELECT * FROM menu_items
ORDER BY price DESC;

-- 4. How many italian dishes are on the menu? 
SELECT COUNT(*) 
FROM menu_items
WHERE category = 'italian';

-- 5. What are the least and most expensive italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each catagory?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each catagory?
SELECT category, AVG(price) AS ave_price
FROM menu_items
GROUP BY category;