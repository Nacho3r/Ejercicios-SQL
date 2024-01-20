/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com".*/
INSERT INTO public.clientes(name, email)
VALUES ('Juan', 'juan@email.com')

/*3. Actualizar el email del cliente con id=1 a "juan@gmail.com"*/
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

/*4. Eliminar el cliente con id=1 de la tabla "Clientes"*/
DELETE FROM public.clientes 
WHERE id = 1;

/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero).*/
CREATE TABLE IF NOT EXISTS Pedidos(
	id SERIAL PRIMARY KEY,
	cliente_id INT,
	producto VARCHAR(255),
	cantidad INT,
	CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes (id)
)

/*. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2.*/
INSERT INTO public.pedidos(cliente_id, producto, cantidad)
VALUES (2, 'Camiseta', 2)

/*Actualizar la cantidad del pedido con id=1 a 3.*/
UPDATE public.pedidos
SET cantidad = 3
WHERE id = 1

/*8. Eliminar el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM public.pedidos
WHERE id = 1

/*. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal).*/
CREATE TABLE IF NOT EXISTS Productos(
id SERIAL PRIMARY KEY,
nombre VARCHAR(255),
precio NUMERIC(6,2)
)

/*0. Insertar varios productos en la tabla "Productos" con diferentes valores.*/
INSERT INTO public.productos(nombre, precio)
VALUES ('Camiseta', 20),('Pantalon', 30),('Zapatillas', 25),('Calcetines', 10),('Guantes', 12),('Abrigo', 50)

/*11. Consultar todos los clientes de la tabla "Clientes"*/
SELECT * FROM public.clientes 

/*12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes.*/. /*primero añado clientes y pedidos, ya que no tenía*/
INSERT INTO public.clientes(name, email)
VALUES ('Julian', 'julian@email.com'),('Julian', 'julian@email.com'),('Gonzalo', 'gonzalo@email.com')

INSERT INTO public.pedidos(cliente_id, producto, cantidad)
VALUES (4, 'Abrigo', 1),(3, 'Guante', 1)

SELECT * FROM public.pedidos 
INNER JOIN public.clientes
ON pedidos.cliente_id = clientes.id

/*13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
/*He puesto 30 y no 50, ya que en mi tabla no tenia valores mayores de 50*/
SELECT * FROM public.productos 
WHERE precio > 30

/*14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5.*/
SELECT * FROM public.productos 
WHERE precio >= 5

/*15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A".*/
/*he puesto la letra J, ya que no tengo nombres con a*/
SELECT * FROM public.clientes
WHERE name ILIKE 'J%'

