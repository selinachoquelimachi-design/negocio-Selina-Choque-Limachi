USE negocio;

-- 1. Mostrar los productos con el nombre de su categoria,
-- ordenados por nombre.
SELECT p.nombre AS producto,
       c.nombre AS categoria
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre;

-- 2. Mostrar los productos con menos de 5 unidades en stock.
SELECT *
FROM productos
WHERE stock < 5;

-- 3. Calcular el precio promedio por categoria.
SELECT c.nombre AS categoria,
       AVG(p.precio) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- 4. Mostrar los pedidos de un cliente con su fecha y estado.
-- En este ejemplo, el cliente tiene el ID 1.
SELECT p.id AS pedido,
       c.nombre AS cliente,
       p.fecha,
       p.estado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.id = 1;


-- 5. Calcular el total en dinero de cada pedido.
SELECT pedido_id,
       SUM(cantidad * precio_unitario) AS total_pedido
FROM detalle_pedido
GROUP BY pedido_id;


-- 6. Mostrar los clientes que tienen mas de 2 pedidos.
SELECT c.id,
       c.nombre,
       COUNT(p.id) AS cantidad_pedidos
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(p.id) > 2;


-- 7. Eliminar un cliente que no tenga pedidos.
-- Primero se comprueba que no tenga pedidos.
SELECT *
FROM clientes c
WHERE NOT EXISTS (
    SELECT 1
    FROM pedidos p
    WHERE p.cliente_id = c.id
);

DELETE FROM clientes
WHERE id = 1
  AND NOT EXISTS (
      SELECT 1
      FROM pedidos
      WHERE pedidos.cliente_id = clientes.id
  );