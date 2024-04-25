-- Creación de la base de datos "mixdulce" si no existe
CREATE DATABASE IF NOT EXISTS mix_dulce;
-- Utilización de la base de datos "mixdulce" 
USE mix_dulce;

-- Creación de la tabla "producto" para almacenar información sobre los productos
CREATE TABLE IF NOT EXISTS producto (
    id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(30) NOT NULL,
    descripcion VARCHAR(50),
    precio FLOAT NOT NULL
);

-- Creación de la tabla "cliente" para almacenar información sobre los clientes
CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(20) NOT NULL
);
    
-- Creación de la tabla "pedido" para almacenar información sobre los pedidos
CREATE TABLE IF NOT EXISTS pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio FLOAT NOT NULL
);
    
-- Creación de la tabla "proveedor" para almacenar información sobre los proveedores
CREATE TABLE IF NOT EXISTS proveedor (
    id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_proveedor VARCHAR(20) NOT NULL
);
    
-- Creación de la tabla "ingrediente" para almacenar información sobre los ingredientes
CREATE TABLE IF NOT EXISTS ingrediente (
    id_ingrediente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_ingrediente VARCHAR(20) NOT NULL,
    stock INT NOT NULL
);

-- Creación de la tabla "provee" para establecer la relación entre proveedores e ingredientes
CREATE TABLE IF NOT EXISTS provee (
    id_proveedor INT NOT NULL,
    id_ingrediente INT NOT NULL,
    CONSTRAINT FK_PROVEE_PROVEEDOR FOREIGN KEY (id_proveedor)
        REFERENCES proveedor (id_proveedor),
    CONSTRAINT FK_PROVEE_INGREDIENTE FOREIGN KEY (id_ingrediente)
        REFERENCES ingrediente (id_ingrediente)
);

-- Creación de la tabla "tiene" para establecer la relación entre productos e ingredientes
CREATE TABLE IF NOT EXISTS tiene (
    id_producto INT NOT NULL,
    id_ingrediente INT NOT NULL,
    cantidad INT NOT NULL,
    CONSTRAINT FK_TIENE_PRODUCTO FOREIGN KEY (id_producto)
        REFERENCES producto (id_producto),
    CONSTRAINT FK_TIENE_INGREDIENTE FOREIGN KEY (id_ingrediente)
        REFERENCES ingrediente (id_ingrediente)
);
    
-- Creación de la tabla "de" para establecer la relación entre productos y pedidos
CREATE TABLE IF NOT EXISTS de (
    id_producto INT NOT NULL,
    id_pedido INT NOT NULL,
    cantidad INT NOT NULL DEFAULT 1, 
    CONSTRAINT FK_DE_PRODUCTO FOREIGN KEY (id_producto)
        REFERENCES producto (id_producto),
    CONSTRAINT FK_DE_PEDIDO FOREIGN KEY (id_pedido)
        REFERENCES pedido (id_pedido)
);

-- Creación de la tabla "compra" para establecer la relación entre clientes y pedidos
CREATE TABLE IF NOT EXISTS compra (
    id_cliente INT NOT NULL,
    id_pedido INT NOT NULL,
    CONSTRAINT FK_COMPRA_CLIENTE FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente),
    CONSTRAINT FK_COMPRA_PEDIDO FOREIGN KEY (id_pedido)
        REFERENCES pedido (id_pedido)
);

-- log de borrados e inserciones
CREATE TABLE IF NOT EXISTS log_insert_delete (
	id INT NOT NULL,
    nombre VARCHAR(50),
    tabla VARCHAR(20) NOT NULL,
    fecha datetime,
    tipo VARCHAR(20)
);