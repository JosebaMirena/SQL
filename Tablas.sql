-- Tabla de Estudiantes
CREATE TABLE Estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

-- Tabla de Asignaturas
CREATE TABLE Asignaturas (
    id_asignatura INT PRIMARY KEY,
    nombre_asignatura VARCHAR(50)
);

-- Tabla de Profesores
CREATE TABLE Profesores (
    id_profesor INT PRIMARY KEY,
    nombre_profesor VARCHAR(50),
    apellido_profesor VARCHAR(50)
);

-- Tabla de Notas
CREATE TABLE Notas (
    id_nota INT PRIMARY KEY,
    id_estudiante INT,
    id_asignatura INT,
    id_profesor INT,
    calificacion INT,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_asignatura) REFERENCES Asignaturas(id_asignatura),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);