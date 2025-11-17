SELECT nombre FROM Clientes
WHERE suscripcion = 'premium';

SELECT *
FROM Prendas
WHERE estado = 'disponible' AND stock > 0;

SELECT clientes.nombre, count(alquileres.id_alquiler) AS total_alquileres
FROM Clientes
JOIN Alquileres ON Clientes.id_cliente = Alquileres.id_cliente
GROUP BY Clientes.id_cliente
HAVING(total_alquileres) > 1;

SELECT *
from Alquileres;

SELECT *
FROM Alquileres
WHERE fin < curdate();

SELECT e.tipo, count(a.id_alquiler) as total_alquileres
FROM Eventos e
JOIN Alquileres a ON e.id_evento = a.id_evento
HAVING (total_alquileres) > 3;

SELECT c.nombre, p.talla
FROM Clientes c
JOIN Alquileres a ON c.id_cliente = a.id_cliente
JOIN Prendas p ON a.id_prenda = p.id_prenda
WHERE p.talla = 'M';

SELECT *
FROM PRENDAS
WHERE id_prenda NOT IN (
	SELECT id_prenda
    FROM Alquileres
);
	
SELECT * FROM EVENTOS
WHERE id_evento NOT IN(
	SELECT id_evento
    FROM Alquileres
);

SELECT c.nombre, c.suscripcion, r.estado as recomendacion
FROM Clientes c
JOIN Solicita s ON c.id_cliente = s.id_cliente
JOIN Recomendaciones r ON r.id_recomendacion = s.id_recomendacion
WHERE r.estado = 'aceptada' AND c.suscripcion = 'premium';

SELECT c.nombre, COUNT(id_alquiler) as total_alquileres
FROM Clientes c
JOIN Alquileres a ON c.id_cliente = a.id_cliente;

SELECT *
FROM Clientes
WHERE YEAR(fecha_registro) = 2025;

SELECT *
FROM Eventos
WHERE dress_code = 'Formal';

SELECT talla, count(*) as cantidad
FROM PRENDAS
WHERE estado = 'disponible' and stock > 0
GROUP BY talla;

SELECT count(*) as total_clientes
FROM Clientes;

SELECT *
FROM Estilistas
WHERE especialidad = 'Bodas';

SELECT AVG(datediff(fin,inicio)) duracion_promedia
FROM Alquileres;

SELECT c.nombre, count(s.id_recomendacion) AS total_recomendaciones
FROM Clientes c
JOIN Solicita s ON c.id_cliente = s.id_cliente
GROUP BY c.id_cliente;

SELECT *
FROM Eventos
WHERE MONTH(fecha) = 6 AND YEAR(fecha) = 2025;

SELECT *
FROM Eventos
WHERE clima_esperado = 'Nublado';

SELECT ciudad, count(*) as total_clientes
FROM Clientes
GROUP BY ciudad;

SELECT c.nombre, p.marca, count(p.id_prenda) as total_prendas
FROM Clientes c
JOIN Alquileres a ON a.id_cliente = c.id_cliente
JOIN Prendas p ON p.id_prenda = a.id_prenda
WHERE p.marca = 'Zara';

SELECT DISTINCT e.descripcion
FROM Estilos e
JOIN Alquileres a ON a.id_estilo = e.id_estilo;

SELECT e.tipo, count(a.id_prenda) as total_prendas
FROM Eventos e
JOIN Alquileres a ON a.id_evento = e.id_evento
GROUP BY e.id_evento;

SELECT *
FROM Clientes
WHERE id_cliente NOT IN (
	SELECT id_cliente
    FROM Alquileres
);

SELECT e.nombre, count(r.id_recomendacion) as total_recomendaciones
FROM Estilistas e
JOIN Recomendaciones r ON e.id_estilista = r.id_estilista
GROUP BY e.nombre;

SELECT nombre, especialidad
FROM Estilistas;

SELECT *
FROM Prendas
WHERE talla = 'L';

SELECT *
FROM Recomendaciones
WHERE estado = 'aceptada';

SELECT *
FROM EVENTOS
WHERE tipo = 'Graduación' AND MONTH(fecha) = 6 AND YEAR(fecha) = 2025;