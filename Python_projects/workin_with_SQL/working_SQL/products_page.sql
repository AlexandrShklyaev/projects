SELECT 
	product_name,
	units_in_stock-units_on_order AS units_on_sale,
	suppliers.contact_1 AS name_supplier,
	suppliers.phone AS phone_supplier 
FROM products
	JOIN categories ON categories.category_id = products.category_id 
					AND categories.category_name IN ('Beverages','Seafood')
	LEFT JOIN suppliers ON suppliers.suppliers_id = products.suppliers_id
WHERE 
	discontinued=0 
	AND units_in_stock-units_on_order < 20
