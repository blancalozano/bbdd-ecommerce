INSERT INTO Clientes(nombre, correo, telefono, ciudad, direccion, suscripcion)
VALUES
('Ana García', 'anag@gmail.com', '654256178', 'Madrid', 'Calle Sol 45', 'premium'),
('Marta Perez', 'martap@gmail.com', '632647510', 'Valencia', 'Avenida Mar 12', 'gratuito');

INSERT INTO Estilistas(nombre, correo, telefono, especialidad)
VALUES
('Rodrigo Sanchez', 'rodrigos@gmail.com', '645309730', 'Bodas'),
('Laura Gallo', 'laurag@gmail.com', '678539860', 'Graduaciones');

INSERT INTO Estilos(descripcion, categoria)
VALUES
('Eventos formales', 'formal'),
('Eventos casuales', 'casual');


INSERT INTO Eventos(tipo, fecha, ubicacion, clima_esperado, dress_code)
VALUES
('Boda', '2025-06-15', 'Sevilla', 'Soleado', 'Formal'),
('Graduación', '2025-06-09', 'Barcelona', 'Nublado', 'Semi-formal');

INSERT INTO Prendas(nombre, tipo, talla, color, marca, stock, estado)
VALUES
('Vestido largo azul', 'Vestido', 'M', 'Azul', 'Zara', 2, 'disponible'),
('Traje gris', 'Traje', 'L', 'Gris', 'Massimo Dutti', 2, 'disponible');

INSERT INTO Recomendaciones(motivo, fecha, estado, id_estilista)
VALUES
('Recomendación para una boda en verano', '2025-07-12', 'solicitada', 1),
('Look para evento formal nocturno', '2025-05-05', 'aceptada', 2);

INSERT INTO Solicita(id_cliente, id_recomendacion)
VALUES
(1,1),
(1,2);

INSERT INTO Alquileres(inicio, fin, id_cliente, id_prenda, id_evento, id_recomendacion, id_estilo)
VALUES
('2025-06-10', '2025-06-17',1,1,1,1,1),
('20025-06-28', '2025-07-03',2,2,2,2,2);