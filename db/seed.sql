USE negocio;

-- 1. Insertar 3 categorias
INSERT INTO categorias (nombre) VALUES
('Electronica'),
('Ropa'),
('Hogar');

-- 2. Insertar 12 productos
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Laptop', 1, 4500.00, 8),
('Mouse', 1, 80.00, 20),
('Teclado', 1, 150.00, 4),
('Monitor', 1, 1200.00, 3),
('Audifonos', 1, 250.00, 10),
('Camiseta', 2, 70.00, 15),
('Pantalon', 2, 180.00, 2),
('Chaqueta', 2, 350.00, 6),
('Gorra', 2, 50.00, 4),
('Silla', 3, 500.00, 5),
('Mesa', 3, 900.00, 2),
('Lampara', 3, 120.00, 12);

-- 3. Insertar 6 clientes
INSERT INTO clientes (nombre, telefono, email) VALUES
('Ana Perez', '70111111', 'ana@gmail.com'),
('Luis Flores', '70222222', 'luis@gmail.com'),
('Maria Rojas', '70333333', 'maria@gmail.com'),
('Carlos Vargas', '70444444', 'carlos@gmail.com'),
('Sofia Mendoza', '70555555', 'sofia@gmail.com'),
('Pedro Castillo', '70666666', 'pedro@gmail.com');

-- 4. Insertar 10 pedidos
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(1, '2026-10-02', 'Entregado'),
(1, '2026-10-03', 'Pendiente'),
(2, '2026-10-04', 'Entregado'),
(2, '2026-10-05', 'Pendiente'),
(3, '2026-10-06', 'Entregado'),
(3, '2026-10-07', 'Enviado'),
(4, '2026-10-08', 'Pendiente'),
(5, '2026-10-09', 'Entregado'),
(6, '2026-10-10', 'Enviado');

-- 5. Insertar 25 detalles de pedido
INSERT INTO detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 4500.00),
(1, 2, 2, 80.00),
(1, 3, 1, 150.00),
(2, 6, 2, 70.00),
(2, 7, 1, 180.00),
(3, 4, 1, 1200.00),
(3, 5, 2, 250.00),
(4, 8, 1, 350.00),
(4, 9, 3, 50.00),
(4, 10, 1, 500.00),
(5, 11, 1, 900.00),
(5, 12, 2, 120.00),
(6, 1, 1, 4500.00),
(6, 5, 1, 250.00),
(7, 2, 3, 80.00),
(7, 3, 2, 150.00),
(8, 6, 4, 70.00),
(8, 8, 1, 350.00),
(9, 9, 2, 50.00),
(9, 10, 1, 500.00),
(10, 11, 1, 900.00),
(10, 12, 3, 120.00),
(10, 4, 1, 1200.00),
(3, 7, 1, 180.00),
(6, 6, 2, 70.00);