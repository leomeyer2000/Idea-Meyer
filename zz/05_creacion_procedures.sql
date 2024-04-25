-- Creacion de procedimentos

-- Ordena productos segun un campo
DELIMITER //
CREATE PROCEDURE ProductosOrdenados(IN campo CHAR(25))
BEGIN 
	if campo <> '' THEN
		SET @orden = concat('ORDER BY ', campo);
	ELSE
		SET @orden = '';
    END IF;
    SET @clausula = concat('SELECT nombre_producto, precio
							FROM producto ', @orden);
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //


-- Inserta un producto a la tabla
DELIMITER //
CREATE PROCEDURE InsertarProducto(IN nombre VARCHAR(30), IN descripcion VARCHAR(50), IN precio FLOAT)
BEGIN 
	SET @nombre = nombre;
    SET @descripcion = descripcion;
    SET @precio = precio;
    SET @clausula = concat('INSERT INTO PRODUCTO(nombre, descripcion, precio) VALUES(', @nombre , ',' , @descripcion, ',', precio , ')');
    
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //