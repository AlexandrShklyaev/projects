SELECT count(customer_id) AS count_customers FROM customers;
--
SELECT city,country 
FROM customers
GROUP BY city,country;
--
SELECT 
	 customers.company_name
	,concat(employees.title_of_courtesy,' '	,employees.first_name,' ',employees.last_name) AS name_employee
FROM customers
 JOIN orders ON customers.customer_id = orders.customer_id and customers.city = 'London'
 JOIN employees ON orders.employee_id = employees.employee_id and customers.city = employees.city
 JOIN shippers ON shippers.shipper_id = orders.ship_via and shippers.company_name = 'Speedy Express';
-- 
SELECT 
	company_name
	, count(orders.order_id) AS count_orders 
FROM customers
 LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY company_name
HAVING count(orders.order_id)=0;
