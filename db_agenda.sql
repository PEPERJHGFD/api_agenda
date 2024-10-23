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

-- Crear tabla “eventos”
CREATE TABLE eventos (
  id_evento INT NOT NULL AUTO_INCREMENT,
  id_persona INT NOT NULL,
  titulo_evento VARCHAR(100) NOT NULL,
  fecha_evento DATE NOT NULL,
  descripcion TEXT,
  PRIMARY KEY (id_evento),
  FOREIGN KEY (id_persona) REFERENCES personas(id_persona) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Crear tabla “tareas”
CREATE TABLE tareas (
  id_tarea INT NOT NULL AUTO_INCREMENT,
  id_persona INT NOT NULL,
  titulo_tarea VARCHAR(100) NOT NULL,
  fecha_limite DATE,
  estado ENUM('Pendiente', 'Completada') DEFAULT 'Pendiente',
  prioridad ENUM('Baja', 'Media', 'Alta') DEFAULT 'Media',
  PRIMARY KEY (id_tarea),
  FOREIGN KEY (id_persona) REFERENCES personas(id_persona) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insertar registros en la tabla "personas"
INSERT INTO personas (nombre, primer_apellido, segundo_apellido, email, telefono) VALUES
('Juan', 'Pérez', 'García', 'juan.perez@example.com', '123456789'),
('María', 'López', 'Martínez', 'maria.lopez@example.com', '987654321'),
('Carlos', 'González', 'Sánchez', 'carlos.gonzalez@example.com', '456123789');

-- Insertar registros en la tabla "eventos"
INSERT INTO eventos (id_persona, titulo_evento, fecha_evento, descripcion) VALUES
(1, 'Cumpleaños de Juan', '2024-11-15', 'Celebración del cumpleaños de Juan en su casa.'),
(2, 'Reunión de trabajo', '2024-10-30', 'Reunión de seguimiento del proyecto.'),
(3, 'Taller de cocina', '2024-11-05', 'Taller de cocina italiana en el centro comunitario.');

-- Insertar registros en la tabla "tareas"
INSERT INTO tareas (id_persona, titulo_tarea, fecha_limite, estado, prioridad) VALUES
(1, 'Comprar regalos', '2024-11-14', 'Pendiente', 'Alta'),
(2, 'Enviar reporte', '2024-10-29', 'Pendiente', 'Media'),
(3, 'Preparar ingredientes', '2024-11-04', 'Completada', 'Baja');
