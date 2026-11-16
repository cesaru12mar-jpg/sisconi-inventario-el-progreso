CREATE DATABASE sisconi_el_progreso;
USE sisconi_el_progreso;

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10,2) NOT NULL,
    stock_actual INT NOT NULL,
    stock_minimo INT NOT NULL
);

CREATE TABLE movimientos (
    id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    tipo_movimiento ENUM('ENTRADA', 'SALIDA') NOT NULL,
    cantidad INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
