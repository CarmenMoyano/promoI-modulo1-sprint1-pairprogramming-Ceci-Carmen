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

-- Ejercicio 14
-- Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:
-- Ahora, no sabemos bien por qué razón, desde el departamento de Ventas nos piden seleccionar el ID de los pedidos situados entre la 5 y la 10 mejor 
-- posición en cuanto al coste económico total ImporteTotal.
-- 💡 Pista 💡 Usa LIMIT y OFFSET para mostrar los resultados.


    
-- Ejericio 15
-- Qué categorías tenemos en nuestra BBDD:De cara a ver cómo de diversificado está el negocio, se nos solicita una lista de 
-- las categorías que componen los tipos de pedido de la empresa. Queremos que la lista de resultado sea renombrada como "NombreDeCategoria".

-- Ejercicio 16
-- Selecciona envios con retraso: Nos hacen llegar desde la dirección la preocupación acerca del cumplimiento de las fechas de envío. 
-- Últimamente se están dando retrasos en muchas entregas y por ello se busca realizar la acción preventiva de enviar los paquetes con varios días 
-- adicionales de antelacion. Para comenzar a planear esos envíos anticipados, nos piden conocer cuál sería la fecha de envío (ShippedDate)
-- de los pedidos almacenados en la base de datos, si estos sufrieran un retraso de 5 días. Nos piden mostrar la nueva fecha renombrada como FechaRetrasada.
-- 💡 Pista 💡 Para realizar lo anterior, busca documentación de la función DATE_ADD para MySQL.


-- Ejercicio 17
-- Selecciona los productos más rentables: Gracias a un análisis realizado en los últimos meses en la empresa, 
-- se ha comprobado que el rango de productos que puede dar más beneficios parece ser el de aquellos con un precio mayor o igual a 15 dólares,
-- pero menor o igual que 50 dólares. Selecciona los datos de ese rango de productos usando el operador BETWEEN.



-- Ejercicio 18
-- Selecciona los productos con unos precios dados: Queremos conocer los datos de los productos que tengan exactamente un precio de 18, 19 o 20 dólares
-- (un rango muy concreto de precios del que la empresa quiere maximizar sus ventas en un futuro). Usa IN para conseguirlo de manera eficiente.