--Get all customers and their addresses.
select * from customers
join addresses on customers.id = addresses.customer_id;
--Get all orders and their line items.
select * from orders
join line_items on orders.id = line_items.order_id;
--Which warehouses have cheetos?
select * from products
join warehouse_product on warehouse_product.product_id = product_id
join warehouse on warehouse.id = warehouse_product.warehouse_id
where description = 'cheetos';

--Which warehouses have diet pepsi?
select * from products
join warehouse_product on warehouse_product.product_id = product_id
join warehouse on warehouse.id = warehouse_product.warehouse_id
where description = 'diet pepsi';
--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT first_name, last_name, COUNT(*)
FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON addresses.id = orders.address_id
GROUP BY first_name, last_name;
--How many customers do we have?
select count (*) from customers;
--How many products do we carry?
select count (*) from products;

--What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand)
FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi';
