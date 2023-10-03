DROP DATABASE IF EXISTS AirportSIM;
CREATE DATABASE AirportSIM;
USE AirportSIM;

CREATE TABLE Construcciones (
	ID INTEGER PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	precio INTEGER NOT NULL
);

CREATE TABLE Partidas (
	ID INTEGER PRIMARY KEY NOT NULL,
	Hinicio DATETIME,
	Hfin DATETIME,
	TimePlayed FLOAT
);

CREATE TABLE Part_Const (
	ID_Part INTEGER,
	ID_Const INTEGER,
	X INTEGER,
	Y INTEGER,
	Nivel INTEGER,
	FOREIGN KEY (ID_Part) REFERENCES Partidas(ID),
	FOREIGN KEY (ID_Const) REFERENCES Construcciones(ID)
);


INSERT INTO Partidas (ID, Hinicio, TimePlayed) VALUES (0, '2023-10-3 17:09:00', 0);
INSERT INTO Partidas (ID, Hinicio, TimePlayed) VALUES (1, '2023-10-1 22:15:00', 0);

INSERT INTO Construcciones VALUES (0, 'Pista de Aterrizaje', 100000000);
INSERT INTO Construcciones VALUES (1, 'Terminal', 70000000);
INSERT INTO Construcciones VALUES (2, 'Aparcamiento', 1500000);
INSERT INTO Construcciones VALUES (3, 'Torre de Control', 4000000);

INSERT INTO Part_Const VALUES (0, 0, 30, 55, 4);
INSERT INTO Part_Const VALUES (0, 1, 30, 35, 3);

INSERT INTO Part_Const VALUES (1, 0, 10, 10, 2);
INSERT INTO Part_Const VALUES (1, 3, 15, 10, 1);
