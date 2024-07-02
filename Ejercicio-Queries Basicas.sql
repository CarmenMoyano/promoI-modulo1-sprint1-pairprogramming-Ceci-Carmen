-- Ejercicio 2
CREATE SCHEMA northwind

-- Ejercicio 4
SELECT employee_id, last_name, first_name
    FROM employees
    
-- Ejercicio 5
SELECT *
    FROM products
    WHERE unit_price BETWEEN 0 AND 5;

-- Ejercicio 6
SELECT *
    FROM products
    WHERE unit_price IS NULL

-- Ejercicio 7
SELECT *
    FROM products
    WHERE unit_price < 15
    AND product_id < 20;
    
-- Ejercicio 8
SELECT *
    FROM products
    WHERE unit_price > 15
    AND product_id > 20;

SELECT *
    FROM products
    WHERE NOT unit_price < 5
    AND NOT product_id < 20;

-- Ejercicio 9
SELECT *
    FROM orders
    WHERE ship_country IS NOT NULL;

-- Ejercicio 10
SELECT product_name, unit_price
    FROM products
    WHERE product_id
    LIMIT 10;

-- Ejercicio 11
SELECT product_name, unit_price
    FROM products
    WHERE product_id
    ORDER BY product_id DESC
    LIMIT 10;

-- Ejercicio 12
SELECT DISTINCT order_id
    FROM order_details;
    
-- Ejercicio 13
SELECT order_id, unit_price * quantity AS ImporteTotal
    FROM order_details
    ORDER BY ImporteTotal DESC    
    LIMIT 3;
    
