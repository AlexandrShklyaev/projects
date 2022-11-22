SELECT first_name, last_name, home_phone, region  FROM employees 
WHERE region is NULL;
--
SELECT customers.country FROM employees
 FULL JOIN customers ON employees.country = customers.country
 INNER JOIN suppliers ON customers.country = suppliers.country 
WHERE employees.country is NULL
GROUP BY customers.country

