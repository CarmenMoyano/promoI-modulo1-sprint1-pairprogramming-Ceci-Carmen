-- EJERCICIO 1:

ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR (45) NOT NULL;
    
ALTER TABLE zapatillas
    ADD COLUMN talla INT NOT NULL;
    
ALTER TABLE empleados
    MODIFY COLUMN salario FLOAT NOT NULL;
ALTER TABLE clientes 
	DROP COLUMN pais; 
ALTER TABLE facturas
	ADD COLUMN total FLOAT;
    
-- EJERCICIO 2:

INSERT INTO zapatillas
	VALUES(1, 'XQYUN', 'Negro', 'Nike', 42),
    (2, 'UOPMN', 'Rosas', 'Nike', 39),
    (3, 'OPNYT', 'Verde', 'Adidas', 35);
    
INSERT INTO empleados
	VALUES(1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
    (2, 'María', 'Sevilla', 0, '2001-04-11'),
    (3, 'Ester', 'Oviedo', 30165.98, '2000-11-29');
    
INSERT INTO clientes
	VALUES(1, 'Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', '28176'),
    (2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
    (3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del color', 'Vigo', 'Pontevedra', '23456');
    
    
INSERT INTO facturas
	VALUES(1, 123, '2001-12-11', 1, 2, 1, 54.98),
    (2, 1234, '2005-05-23', 1, 1, 3, 89.91),
    (3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del color', 'Vigo', 'Pontevedra', '23456');

-- EJERCICIO 3
-- De nuevo nos hemos dado cuenta que hay algunos errores en la inserción de datos. En este ejercicios los actualizaremos para que nuestra BBDD este perfectita.
-- Tabla zapatillas
-- En nuestra tienda no vendemos zapatillas Rosas... ¿Cómo es posible que tengamos zapatillas de color rosa? 🤔 En realidad esas zapatillas son amarillas.
INSERT INTO zapatillas (modelo, color, marca, talla)
	VALUES
		('XQYUN', 'Negro', 'Nike', 42),
		('UOPMN', 'Amarillas', 'Nike', 39),  
		('OPNYT', 'Verde', 'Adidas', 35);    
-- Tabla empleados
-- Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar, ahora vive en A Coruña.
UPDATE empleados
	SET tienda = 'A Coruña'
	WHERE id_empleado = 1;

-- Tabla clientes
-- El Numero de telefono de Monica esta mal!!! Metimos un digito de más. En realidad su número es: 123456728
UPDATE clientes
	SET numero_telefono = '123456728'
	WHERE id_cliente = 1;

-- Tabla facturas
-- El total de la factura de la zapatilla cuyo id es 2 es incorrecto. En realidad es: 89,91.

UPDATE facturas
	SET total = 89.91
	WHERE id_factura = 2;






    