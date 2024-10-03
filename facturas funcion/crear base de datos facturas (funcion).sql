-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS Tienda;

-- Usar la base de datos
USE Tienda;

-- 1. Tabla de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Fecha_Nacimiento DATE NOT NULL
);

-- 2. Tabla de Productos
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Producto VARCHAR(100) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Descripción TEXT
);

-- 3. Tabla de Inventario
CREATE TABLE Inventario (
    ID_Inventario INT PRIMARY KEY AUTO_INCREMENT,
    ID_Producto INT NOT NULL,
    Stock INT NOT NULL,
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

-- 4. Tabla de Facturas
CREATE TABLE Facturas (
    ID_Factura INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT NOT NULL,
    ID_Producto INT NOT NULL,
    Fecha_Factura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Subtotal DECIMAL(10, 2) NOT NULL,
    IVA DECIMAL(10, 2) NOT NULL,
    Impuesto_Consumo DECIMAL(10, 2) NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);

-- Funcion
DELIMITER //

CREATE FUNCTION CalcularTotal(
    clienteID INT,
    subtotal DECIMAL(10, 2)
) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    DECLARE iva DECIMAL(10, 2);
    DECLARE impuesto_consumo DECIMAL(10, 2);

    SET iva = subtotal * 0.19;
    SET impuesto_consumo = subtotal * 0.08;
    SET total = subtotal + iva + impuesto_consumo;

    -- Descuento si la fecha de nacimiento es en octubre
    IF MONTH((SELECT Fecha_Nacimiento FROM Clientes WHERE ID_Cliente = clienteID)) = 10 THEN
        SET total = total * 0.80; -- Descuento del 20%
    END IF;

    RETURN total;
END //

DELIMITER ;
