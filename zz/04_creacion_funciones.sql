-- Creacion de funciones


-- Concatena nombre y apellido
DELIMITER //
CREATE FUNCTION ConcatenarNombre(nombre VARCHAR(30), apellido VARCHAR(30)) RETURNS VARCHAR(30)
NO SQL
BEGIN
    DECLARE res VARCHAR(30);
    SET res = concat(nombre, ' ', apellido);
    return res;
END //


-- Suma de los precios de todos los productos que integran un pedido
DELIMITER //
CREATE FUNCTION SumaPrecio( id INT) RETURNS FLOAT
READS SQL DATA
BEGIN
	DECLARE res FLOAT;
    SELECT sum(p.precio * d.cantidad) INTO res
    FROM de d JOIN producto p ON (d.id_producto = p.id_producto)
    WHERE id_pedido = id;
    RETURN res;
END //