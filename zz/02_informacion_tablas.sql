-- Carga de datos en tablas

-- Carga de clientes
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Juan Martinez");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Laura Martinez");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Alfonsina Meyer");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Juan Ignacio Rey");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Nicolas Castiglioni");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Lucia Gonzalez");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Santiago Dossena");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Leonardo Meyer");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Jorge Alfonso");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Mathias Kaiser");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Guillermo Meyer");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Carol Arguimbao");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Agustin Benitez");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Agustin Insua");
INSERT INTO CLIENTES(nombre_cliente) VALUES ("Martin Gutierrez");

-- Carga de pedidos
INSERT INTO PEDIDO(precio) VALUES (170);
INSERT INTO PEDIDO(precio) VALUES (200);
INSERT INTO PEDIDO(precio) VALUES (120);
INSERT INTO PEDIDO(precio) VALUES (220);
INSERT INTO PEDIDO(precio) VALUES (350);
INSERT INTO PEDIDO(precio) VALUES (340);
INSERT INTO PEDIDO(precio) VALUES (400);
INSERT INTO PEDIDO(precio) VALUES (240);
INSERT INTO PEDIDO(precio) VALUES (500);
INSERT INTO PEDIDO(precio) VALUES (380);
INSERT INTO PEDIDO(precio) VALUES (330);
INSERT INTO PEDIDO(precio) VALUES (360);
INSERT INTO PEDIDO(precio) VALUES (130);
INSERT INTO PEDIDO(precio) VALUES (200);
INSERT INTO PEDIDO(precio) VALUES (100);

-- Carga de productos
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Barra de chocolate", "", 170);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Cheesecake", "Porcion de cheesecake", 200);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Pan de campo", "", 120);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Carrot cake", "Porcion de carrot cake", 220);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Huevo de chocolate", "", 350);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Budin de banana", "Porcion de budin de banana", 120);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Roll de canela", "", 130);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Brownie", "", 125);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Red Velvet", "Porcion de Red Velvet", 250);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Streusel de chocolate", "Porcion de Streusel de chocolate", 190);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Streusel de manzana", "Porcion de Streusel de manazana", 190);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Strudel de manzana", "", 330);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Alfajor de maicena", "", 100);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Alfajor", "", 90);
INSERT INTO PRODUCTO(nombre_producto, descripcion, precio) VALUES ("Scon de queso", "", 65);

-- Carga de ingredientes
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Harina", 10000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Cacao", 10000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Chocolate", 5000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Huevo", 24);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Manteca", 400);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Aceite", 2000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Queso crema", 1000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Zanahoria", 700);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Azucar", 2000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Polvo de hornear", 200);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Banana", 5);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Oreo", 180);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Frutilla", 1000);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Manzana", 2);
INSERT INTO INGREDIENTE(nombre_ingrediente, stock) VALUES ("Crema de leche", 1000);

-- Carga de proveedores
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Conaprole");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Azucarlito");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Granja Sol");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Kinko");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Farming");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Ecuador");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Nestle");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Las Acacias");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Granja Luna");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Fruteria");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Ta-Ta");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Disco");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Devoto");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Carrefour");
INSERT INTO PROVEEDOR(nombre_proveedor) VALUES ("Uruguay");

-- Carga de provee
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (1, 15);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (1, 5);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (5, 7);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (5, 15);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (3, 14);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (6, 11);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (15, 6);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (14, 12);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (13, 12);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (12, 12);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (11, 12);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (14, 1);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (9, 14);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (15, 6);
INSERT INTO PROVEE(id_proveedor, id_ingrediente) VALUES (8, 1);

-- Carga tiene
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (1, 2, 100);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (2, 4, 1);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (2, 7, 300);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (2, 9, 170);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (2, 12, 110);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (4, 4, 4);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (4, 9, 200);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (4, 6, 190);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (4, 8, 140);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (4, 1, 240);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (6, 11, 1);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (12, 1, 375);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (12, 4, 1);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (12, 5, 175);
INSERT INTO TIENE(id_producto, id_ingrediente, cantidad) VALUES (12, 14, 2);

-- Carga de
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (1,1,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (2,2,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (3,3,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (4,4,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (5,5,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (1,6,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (2,7,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (3,8,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (9,9,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (10,10,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (12,11,1);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (14,12,4);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (15,13,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (13,14,2);
INSERT INTO DE(id_producto, id_pedido, cantidad) VALUES (13,15,1);

-- Carga compra
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (1,1);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (1,2);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (2,3);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (7,4);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (8,5);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (9,6);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (3,7);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (8,8);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (15,9);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (7,10);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (11,11);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (1,12);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (4,13);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (5,14);
INSERT INTO COMPRA(id_cliente, id_pedido) VALUES (15,15);