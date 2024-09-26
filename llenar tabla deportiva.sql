-- Insertar datos en la tabla equipos
INSERT INTO equipos (nombre, ciudad) VALUES
('Atlético Nacional', 'Medellín'),
('Millonarios', 'Bogotá'),
('América de Cali', 'Cali'),
('Independiente Santa Fe', 'Bogotá'),
('Deportivo Cali', 'Cali'),
('Junior', 'Barranquilla'),
('Once Caldas', 'Manizales'),
('Deportes Tolima', 'Ibagué'),
('Atlético Bucaramanga', 'Bucaramanga'),
('Envigado', 'Envigado'),
('Cortuluá', 'Tulua'),
('Alianza Petrolera', 'Barrancabermeja'),
('Patriotas', 'Tunja'),
('La Equidad', 'Bogotá'),
('Rionegro Águilas', 'Rionegro'),
('Jaguar de Córdoba', 'Montería');

-- Insertar datos en la tabla jugadores
INSERT INTO jugadores (nombre, edad, posicion, equipo_id) VALUES
('Dorlan Pabón', 32, 'Delantero', 1),
('Juan Carlos Pereira', 34, 'Centrocampista', 2),
('Duván Vergara', 27, 'Delantero', 3),
('Wilson Morelo', 35, 'Delantero', 4),
('Teófilo Gutiérrez', 39, 'Delantero', 5),
('Miguel Ángel Borja', 30, 'Delantero', 1),
('Luis Díaz', 26, 'Delantero', 2),
('Mateus Uribe', 32, 'Centrocampista', 3),
('Yerson Candelo', 30, 'Centrocampista', 4),
('Nicolás Benedetti', 27, 'Centrocampista', 5),
('Andrés Andrade', 29, 'Centrocampista', 1),
('Santiago Montoya', 28, 'Centrocampista', 2),
('Jorge Carrascal', 25, 'Delantero', 3),
('Juan Fernando Quintero', 31, 'Centrocampista', 4),
('Juan Guillermo Cuadrado', 35, 'Defensa', 5);

-- Insertar datos en la tabla arbitros
INSERT INTO arbitros (nombre, experiencia) VALUES
('Wilmar Roldán', 15),
('Anderson Daronco', 10),
('Jhonatan Marín', 8),
('Carlos Betancur', 12),
('Nicolás Gallo', 9),
('Mariano González', 11),
('Dámaris Rodríguez', 7),
('Adriana Espinosa', 6),
('Santiago Vargas', 5),
('José Cárdenas', 14),
('Óscar Ruiz', 20),
('Cristian Dájome', 19),
('Juan Pablo Montoya', 18),
('Alejandro Manrique', 13),
('Felipe Álvarez', 16),
('Gustavo Murillo', 17);

-- Insertar datos en la tabla torneos
INSERT INTO torneos (nombre, fecha_inicio, fecha_fin) VALUES
('Liga BetPlay', '2024-01-15', '2024-12-15'),
('Copa Colombia', '2024-03-01', '2024-06-15'),
('Superliga Colombiana', '2024-07-01', '2024-08-01'),
('Liga Femenina', '2024-02-01', '2024-11-30'),
('Copa Libertadores', '2024-02-10', '2024-12-10'),
('Copa Sudamericana', '2024-02-20', '2024-11-20'),
('Torneo de Ascenso', '2024-01-15', '2024-11-30'),
('Amistoso Internacional', '2024-05-01', '2024-05-15');

-- Insertar datos en la tabla partidos
INSERT INTO partidos (equipo_local_id, equipo_visitante_id, fecha, arbitro_id, torneo_id) VALUES
(1, 2, '2024-01-20', 1, 1),
(3, 4, '2024-01-21', 2, 1),
(5, 6, '2024-01-22', 3, 1),
(7, 8, '2024-01-23', 4, 1),
(9, 10, '2024-01-24', 5, 1),
(11, 12, '2024-01-25', 6, 1),
(13, 14, '2024-01-26', 7, 1),
(15, 1, '2024-01-27', 8, 1),
(2, 3, '2024-01-28', 9, 1),
(4, 5, '2024-01-29', 10, 1),
(6, 7, '2024-01-30', 11, 1),
(8, 9, '2024-01-31', 12, 1),
(10, 11, '2024-02-01', 13, 1),
(12, 13, '2024-02-02', 14, 1),
(14, 15, '2024-02-03', 15, 1);

-- Insertar datos en la tabla plantillas
INSERT INTO plantillas (equipo_id, jugador_id) VALUES
(1, 1),
(1, 6),
(2, 2),
(2, 7),
(3, 3),
(3, 8),
(4, 4),
(4, 9),
(5, 5),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15);
