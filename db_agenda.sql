-- Eliminar la base de datos si ya existe
DROP DATABASE IF EXISTS agenda;

-- Crear la base de datos
CREATE DATABASE agenda;
USE agenda;

-- Crear tabla "personas"
CREATE TABLE personas (
  id_persona INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  primer_apellido VARCHAR(50) NOT NULL,
  segundo_apellido VARCHAR(50),
  email VARCHAR(100) NOT NULL,
  telefono VARCHAR(15),
  PRIMARY KEY (id_persona)
);

-- Insertar registros en la tabla "personas"
INSERT INTO personas (nombre, primer_apellido, segundo_apellido, email, telefono) VALUES
('Juan', 'Pérez', 'García', 'juan.perez@example.com', '123456789'),
('María', 'López', 'Martínez', 'maria.lopez@example.com', '987654321'),
('Carlos', 'González', 'Sánchez', 'carlos.gonzalez@example.com', '456123789');

CREATE TABLE usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  hashed_password VARCHAR(50) NOT NULL,
  disabled BOOLEAN NOT NULL,
  token VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_usuario)
);

-- Insertar registros en la tabla "usuarios"
INSERT INTO usuarios (username, full_name, email, hashed_password, disabled, token) VALUES
('juan', 'Juan Pérez', 'juan.perez@example.com', '12345', FALSE, 'juanToken'),
('Maria', 'Maria Lopez', 'john@email.com', '67890', TRUE, 'mariaToken');

-- Consultar la tabla "usuarios"
SELECT * FROM usuarios;

-- Consultar la tabla "personas"
SELECT * FROM personas;

-- Crear un usuario con acceso a la base de datos "agenda"
CREATE USER 'perlita'@'localhost' IDENTIFIED BY '123';

-- Otorgar todos los permisos sobre la base de datos "agenda" al usuario "perlita"
GRANT ALL PRIVILEGES ON agenda.* TO 'perlita'@'localhost';

-- Aplicar cambios de privilegios
FLUSH PRIVILEGES;
