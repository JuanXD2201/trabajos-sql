CREATE DATABASE liga_deportiva;

USE liga_deportiva;

-- Tabla de Equipos
CREATE TABLE equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100) NOT NULL
);

-- Tabla de Jugadores
CREATE TABLE jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    posicion VARCHAR(50),
    equipo_id INT,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);

-- Tabla de Árbitros
CREATE TABLE arbitros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    experiencia INT
);

-- Tabla de Torneos
CREATE TABLE torneos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE
);

-- Tabla de Partidos
CREATE TABLE partidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_local_id INT,
    equipo_visitante_id INT,
    fecha DATE,
    arbitro_id INT,
    torneo_id INT,
    FOREIGN KEY (equipo_local_id) REFERENCES equipos(id),
    FOREIGN KEY (equipo_visitante_id) REFERENCES equipos(id),
    FOREIGN KEY (arbitro_id) REFERENCES arbitros(id),
    FOREIGN KEY (torneo_id) REFERENCES torneos(id)
);

-- Tabla de Plantillas
CREATE TABLE plantillas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT,
    jugador_id INT,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id),
    FOREIGN KEY (jugador_id) REFERENCES jugadores(id)
);
