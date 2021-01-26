## Tasks
-- 1. Get all customers and their addresses.

SELECT * FROM "customers"
JOIN "addresses" ON "addresses".customer_id = "customers".id;

-- 2. Get all orders and their line items (orders, quantity and product).

SELECT "orders".id, "line_items".quantity, "products".description FROM "orders"
LEFT JOIN "line_items" ON "line_items".order_id = "orders".id
LEFT JOIN "products" ON "line_items".product_id = "products".id;

-- 3. Which warehouses have cheetos?
SELECT "warehouse".warehouse, "products".description FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description LIKE 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT "warehouse".warehouse, "products".description FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product".warehouse_id = "warehouse".id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description LIKE 'diet pepsi';

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers".first_name, COUNT("orders".id) FROM "customers"
JOIN "addresses" ON "addresses".customer_id = "customers".id
JOIN "orders" ON "orders".address_id = "addresses".id
GROUP BY "customers".first_name;

-- 6. How many customers do we have?
SELECT COUNT(*) AS "total_customers" FROM "customers";

-- 7. How many products do we carry?
SELECT COUNT(*) AS "total_products" FROM "products";

8. What is the total available on-hand quantity of diet pepsi?


## Stretch
9. How much was the total cost for each order?
10. How much has each customer spent in total?
11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
