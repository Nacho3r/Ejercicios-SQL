'2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com".'
INSERT INTO public.clientes(name, email)
VALUES ('Juan', 'juan@email.com')

'3. Actualizar el email del cliente con id=1 a "juan@gmail.com"'
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

'4. Eliminar el cliente con id=1 de la tabla "Clientes"'
DELETE FROM public.clientes 
WHERE id = 1;

'5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero).'
CREATE TABLE IF NOT EXISTS Pedidos(
	id SERIAL PRIMARY KEY,
	cliente_id INT,
	producto VARCHAR(255),
	cantidad INT,
	CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes (id)
)
