create database gestordetickets;
use gestordetickets;

CREATE TABLE Ticket (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(20) NOT NULL,
  fecha DATE NOT NULL,
  descripcion TEXT,
  prioridad_id INT,
  categoria_id INT,
  estado_id INT,
  creado_por_id INT,
  asignado_a_id INT,
  FOREIGN KEY (prioridad_id) REFERENCES Prioridad(ID),
  FOREIGN KEY (categoria_id) REFERENCES Categoria(ID),
  FOREIGN KEY (estado_id) REFERENCES Estado(ID),
  FOREIGN KEY (creado_por_id) REFERENCES Entidad_Creadora(ID),
  FOREIGN KEY (asignado_a_id) REFERENCES Agente(ID)
);

CREATE TABLE Detalle (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  ticket_id INT,
  fecha DATE,
  asunto VARCHAR(50),
  prioridad_id INT,
  descripcion TEXT,
  FOREIGN KEY (ticket_id) REFERENCES Ticket(ID),
  FOREIGN KEY (prioridad_id) REFERENCES Prioridad(ID)
);


CREATE TABLE Prioridad (
  ID INT PRIMARY KEY,
  nombre VARCHAR(20)
);

CREATE TABLE Categoria (
  ID INT PRIMARY KEY,
  nombre VARCHAR(50)
);

CREATE TABLE Estado (
  ID INT PRIMARY KEY,
  nombre VARCHAR(20)
);

CREATE TABLE Entidad_Creadora (
  ID INT PRIMARY KEY,
  nombre VARCHAR(50)
);

CREATE TABLE Agente (
  ID INT PRIMARY KEY,
  nombre VARCHAR(20),
  rol VARCHAR(30)
);

INSERT INTO Prioridad (ID, nombre)
VALUES
  (1, 'Baja'),
  (2, 'Media'),
  (3, 'Alta'),
  (4, 'Urgente');

INSERT INTO Categoria (ID, nombre)
VALUES
  (1, 'Hardware'),
  (2, 'Software'),
  (3, 'Redes'),
  (4, 'Otros');

INSERT INTO Estado (ID, nombre)
VALUES
  (1, 'Abierto'),
  (2, 'Asignado'),
  (3, 'En progreso'),
  (4, 'En espera'),
  (5, 'Resuelto'),
  (6, 'Cerrado');

INSERT INTO Entidad_Creadora (ID, nombre)
VALUES
  (1, 'Agente de Soporte'),
  (2, 'Usuario Final');

INSERT INTO Agente (ID, nombre, rol)
VALUES
  (1, 'Nombre Agente 1', 'Rol Agente 1'),
  (2, 'Nombre Agente 2', 'Rol Agente 2');
