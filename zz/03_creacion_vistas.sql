-- Creacion de vistas

-- Vista que contiene pares de proveedores y los ingredientes que proveen (Compuesta de las tablas proveedor, provee e ingrediente)
CREATE OR REPLACE VIEW PROVEEDORES_INGREDIENTES(nombre_proveedor, nombre_ingrediente) AS
	(SELECT nombre_proveedor, nombre_ingrediente
    FROM PROVEEDOR p JOIN PROVEE pi 
    ON p.id_proveedor = pi.id_proveedor JOIN INGREDIENTE i 
	ON i.id_ingrediente = i.id_ingrediente
    ORDER BY nombre_proveedor);
    
-- Vista que contiene la cantidad de productos diferentes que compra una persona (Compuesta de las tablas persona, pedido, compra y de)
CREATE OR REPLACE VIEW PRODUCTOS_DIFERENTES(nombre_persona, cantidad) AS
	(select nombre_persona, COUNT(DISTINCT(id_producto))
    from persona p JOIN compra c
    ON (p.id_persona = c.id_persona) JOIN pedido pe
    ON (pe.id_pedido = c.id_pedido) JOIN de d 
    ON (d.id_pedido = pe.id_pedido)
    ORDER BY nombre_persona);
    
-- Vista que contiene la cantidad necesaria de ingredientes para un producto (Compuesta de las tablas producto, tiene e ingrediente)
CREATE OR REPLACE VIEW CANT_INGREDIENTES(nombre_producto, nombre_ingrediente, cantidad) AS
	(SELECT nombre_producto, nombre_ingrediente, cantidad
    FROM producto p JOIN tiene t 
    ON (t.id_producto = p.id_producto) JOIN ingrediente i 
    ON (i.id_ingrediente = t.id_ingrediente)
    GROUP BY nombre_producto);


-- Vista que tiene los productos que no usan harina (Compuesta de las tablas producto, tiene e ingrediente)
CREATE OR REPLACE VIEW SIN_HARINA(nombre_producto, nombre_ingrediente, cantidad) AS
	(SELECT nombre_producto, nombre_ingrediente, cantidad
    FROM producto p JOIN tiene t 
    ON (t.id_producto = p.id_producto) JOIN ingrediente i 
    ON (i.id_ingrediente = t.id_ingrediente)
    WHERE p.id_producto NOT IN (SELECT *
								FROM tiene t2
								where t2.id_ingrediente = 1)
    GROUP BY nombre_producto);

-- Vista que tiene los productos ordenados por mayor cantidad de ventas (Compuesta de las tablas producto y de)
CREATE OR REPLACE VIEW CANTIDAD_VENTAS(nombre_producto, cantidad) AS
	(select nombre_producto, count(id_pedido) AS cant
    from PRODUCTO p JOIN de d 
    ON (d.id_producto = p.id_producto)
    ORDER BY cant);