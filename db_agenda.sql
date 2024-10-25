DROP DATABASE IF EXISTS agenda;

-- Crear la base de datos
CREATE DATABASE agenda;
USE agenda;

-- Crear tabla “personas”
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
SELECT * FROM personas;
-- Crear un nuevo usuario en MySQL
CREATE USER 'perlita'@'localhost' IDENTIFIED BY '12345';

-- Otorgar permisos para acceder a la base de datos "agenda"
GRANT ALL PRIVILEGES ON agenda.* TO 'perlita'@'localhost';

-- Aplicar cambios de permisos
FLUSH PRIVILEGES;
