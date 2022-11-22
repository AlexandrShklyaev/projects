SELECT * FROM orders
ORDER BY required_date DESC, shipped_date ASC;
--
SELECT AVG(shipped_date-order_date)::int FROM orders
WHERE ship_country='USA' AND shipped_date  IS NOT NULL;
--
SELECT sum(unit_price*units_in_stock) 
FROM products
WHERE discontinued <> 1