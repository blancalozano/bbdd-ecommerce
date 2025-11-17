CREATE DATABASE Proyecto;
Use Proyecto;

CREATE TABLE Clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100) UNIQUE,
    telefono CHAR(9),
    ciudad VARCHAR(100),
    direccion VARCHAR(250),
    suscripcion ENUM('gratuito', 'premium') DEFAULT 'gratuito',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Estilos (
	id_estilo INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(500),
    categoria VARCHAR(100)
);

CREATE TABLE Eventos (
	id_evento INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100),
    fecha DATE,
    ubicacion VARCHAR(255),
    clima_esperado VARCHAR(100),
    dress_code VARCHAR(100)
);

CREATE TABLE Estilistas(
	id_estilista INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100) UNIQUE,
    telefono CHAR(9),
    especialidad VARCHAR(255)
);

CREATE TABLE Prendas(
	id_prenda INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200),
    tipo VARCHAR(100),
    talla CHAR(1),
    color VARCHAR(100),
    marca VARCHAR(200),
    stock INT,
    estado ENUM('disponible','no disponible') DEFAULT 'disponible'
);

CREATE TABLE Recomendaciones (
	id_recomendacion INT AUTO_INCREMENT PRIMARY KEY,
    motivo VARCHAR(500),
    fecha DATE,
    estado ENUM('aceptada', 'solicitada','rechazada'),
    id_estilista INT,
    FOREIGN KEY(id_estilista) REFERENCES Estilistas(id_estilista)
);

CREATE TABLE Alquileres (
	id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    inicio DATE,
    fin DATE,
    id_cliente INT,
    id_prenda INT,
    id_evento INT,
    id_recomendacion INT,
    id_estilo INT,
    FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY(id_prenda) REFERENCES Prendas(id_prenda),
    FOREIGN KEY(id_evento) REFERENCES Eventos(id_evento),
    FOREIGN KEY(id_recomendacion) REFERENCES Recomendaciones(id_recomendacion),
    FOREIGN KEY(id_estilo) REFERENCES Estilos(id_estilo)
);

CREATE TABLE Solicita (
    id_cliente INT,
    id_recomendacion INT,
    PRIMARY KEY(id_cliente, id_recomendacion),
	FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY(id_recomendacion) REFERENCES Recomendaciones(id_recomendacion)
);