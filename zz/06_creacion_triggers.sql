-- triggers

-- 
CREATE TRIGGER TR_delete_pedido 
AFTER DELETE ON PRODUCTO
for each row INSERT INTO log_delete_insert(id, nombre, tabla, fecha, tipo)
VALUES (OLD.id_producto, OLD.nombre_producto, "producto", CURRENT_DATE(), "delete");

CREATE TRIGGER TR_delete_cliente 
AFTER DELETE ON CLIENTE
for each row INSERT INTO log_delete_insert(id, nombre, tabla, fecha)
VALUES (OLD.id_cliente, OLD.nombre_cliente, "cliente", CURRENT_DATE(), "delete");

CREATE TRIGGER TR_insert_pedido 
AFTER INSERT ON PRODUCTO
for each row INSERT INTO log_delete_insert(id, nombre, tabla, fecha)
VALUES (NEW.id_producto, NEW.nombre_producto, "producto", CURRENT_DATE(), "insert")

CREATE TRIGGER TR_insert_pedido 
AFTER INSERT ON PEDIDO
for each row INSERT INTO log_delete_insert(id, nombre, tabla, fecha)
VALUES (NEW.id_cliente, NEW.nombre_cliente, "cliente", CURRENT_DATE(), "insert")