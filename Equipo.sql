-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS gestion_equipos_informaticos;
USE gestion_equipos_informaticos;

-- Crear la tabla de equipos
CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_serie VARCHAR(255),
    marca VARCHAR(255),
    modelo VARCHAR(255),
    especificaciones TEXT,
    estado_mantenimiento VARCHAR(255)
);

-- Listar todos los equipos
SELECT * FROM equipos;

-- Agregar datos de ejemplo
INSERT INTO equipos (numero_serie, marca, modelo, especificaciones, estado_mantenimiento)
VALUES
('NS001', 'HP', 'EliteBook', '8GB RAM, 256GB SSD', 'En buen estado'),
('NS002', 'Dell', 'Latitude', '16GB RAM, 512GB SSD', 'Necesita mantenimiento');

-- Listar todos los equipos después de la inserción
SELECT * FROM equipos;

-- Modificar un equipo
UPDATE equipos
SET modelo = 'ThinkPad'
WHERE id = 1;

-- Listar todos los equipos después de la modificación
SELECT * FROM equipos;

-- Eliminar un equipo
DELETE FROM equipos WHERE id = 2;

-- Listar todos los equipos después de la eliminación
SELECT * FROM equipos;
