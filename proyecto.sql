--Proyecto grupal 

--Crear tablas 
DROP TABLE IF EXISTS Alumnos;
DROP TABLE IF EXISTS Curso;
DROP TABLE IF EXISTS Escuela;
DROP TABLE IF EXISTS Evaluacion;
DROP TABLE IF EXISTS Profesor;
DROP TABLE IF EXISTS Proyecto;
DROP TABLE IF EXISTS Vertical;

CREATE TABLE IF NOT EXISTS Escuela (
    ID_Campus serial NOT NULL,
    Campus text,
    PRIMARY KEY (ID_Campus)
);

CREATE TABLE IF NOT EXISTS Vertical (
    ID_Ver serial NOT NULL,
    Vertical text,
    PRIMARY KEY (ID_Ver),
);

CREATE TABLE IF NOT EXISTS Curso (
    ID_Curso serial NOT NULL,
    Promocion text,
    Fecha date,
    ID_Campus smallint,
    PRIMARY KEY (ID_Curso),
    FOREIGN KEY (ID_Campus) REFERENCES Escuela(ID_Campus) 
);

CREATE TABLE IF NOT EXISTS Alumnos (
    ID_Alumnos serial NOT NULL,
    Nombre text,
    Correo text,
    ID_Curso smallint,
    PRIMARY KEY (ID_Alumnos),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso) 
);

CREATE TABLE IF NOT EXISTS Proyecto (
    ID_Proyecto serial NOT NULL,
    Nombre_Proyecto text,
    ID_Vertical smallint,
    PRIMARY KEY (ID_Proyecto),
    FOREIGN KEY (ID_Vertical) REFERENCES Vertical(ID_Ver)        
);

CREATE TABLE IF NOT EXISTS Evaluacion (
    ID_Evaluacion serial NOT NULL,
    ID_Alumno smallint NOT NULL,
    ID_Proyecto smallint NOT NULL ,
    Nota text,
    PRIMARY KEY (ID_Evaluacion),
    FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID_Alumnos),
    FOREIGN KEY (ID_Proyecto) REFERENCES Proyecto (ID_Proyecto)
);

CREATE TABLE IF NOT EXISTS Profesor (
    ID_Profesor serial NOT NULL,
    Nombre text,
    Rol text,
    ID_Curso smallint,
    ID_Vertical smallint,
    Modalidad text,
    PRIMARY KEY (ID_Profesor),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso),
    FOREIGN KEY (ID_Vertical) REFERENCES Vertical(ID_Ver)  
);


--Insertar informacion a las tablas 

INSERT INTO Escuela (Campus) VALUES 
('Valencia'),
('Madrid');

INSERT INTO Vertical (Vertical,) VALUES
('DS'),
('FS');

INSERT INTO Curso (Promocion, Fecha, ID_Campus) VALUES 
('Septiembre', '2023-09-18', 2);
('Febrero', '2024-02-12', 2), 
('Febrero', '2024-02-12', 1),
('Septiembre', '2023-09-18', 1);

INSERT INTO Proyecto (Nombre_Proyecto, ID_Vertical) VALUES 
("Proyecto_HLF", 1),
("Proyecto_EDA", 1),
("Proyecto_BBDD", 1),
("Proyecto_ML", 1),
("Proyecto_Deployment", 1),
("Proyecto_React", 2), 
("Proyecto_Backend", 2),
("Proyecto_FrontEnd", 2),
("Proyecto_WebDev", 2),
("Proyecto_FullSatck", 2);

INSERT INTO Profesores (Nombre, Rol, ID_Curso, Modalidad, ID_Vertical) VALUES
('Noa Yáñez', 'TA', 1, 'Presencial', 1 ),
('Saturnina Benitez', 'TA', 1, 'Presencial', 1),
('Anna Feliu', 'TA', 1, 'Presencial', 2),
('Rosalva Ayuso', 'TA', 4, 'Presencial', 2),
('Ana Sofía Ferrer', 'TA', 3, 'Presencial', 2),
('Angélica Corral', 'TA', 2, 'Presencial', 2),
('Ariel Lledó', 'TA', 1, 'Presencial', 1),
('Mario Prats', 'LI', 3, 'Online', 2),
('Luis Ángel Suárez', 'LI', 1, 'Online', 2),
('María Dolores Diaz', 'LI', 1, 'Online', 1);

INSERT INTO Alumnos (Nombre, Correo, ID_Curso) VALUES

--Querys
-- Obtener las notas de todos los alumnos de la promoción de febrero en Madrid
SELECT a.Nombre, c.Promocion, e.Nota, p.Nombre_Proyecto
FROM Alumnos a
JOIN Curso c ON a.ID_Curso = c.ID_Curso
JOIN Evaluacion e ON a.ID_Alumnos = e.ID_Alumno
JOIN Proyecto p ON e.ID_Proyecto = p.ID_Proyecto
JOIN Escuela esc ON c.ID_Campus = esc.ID_Campus
WHERE c.Promocion = 'Febrero' AND esc.Campus = 'Madrid';