drop database biblioteca;
CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autores (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nacionalidad VARCHAR(50)
);

CREATE TABLE Libros (
    libro_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor_id INT,
    genero VARCHAR(50),
    publicado_año INT,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id) ON DELETE SET NULL
);

CREATE TABLE Prestamos (
    prestamo_id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    usuario VARCHAR(100) NOT NULL,
    FOREIGN KEY (libro_id) REFERENCES Libros(libro_id) ON DELETE CASCADE
);

INSERT INTO Autores (nombre, nacionalidad) VALUES 
('Gabriel García Márquez', 'Colombiana'),
('J.K. Rowling', 'Británica'),
('George Orwell', 'Británica');

INSERT INTO Libros (titulo, autor_id, genero, publicado_año) VALUES
('Cien años de soledad', 1, 'Realismo Mágico', 1967),
('Harry Potter y la piedra filosofal', 2, 'Fantasía', 1997),
('1984', 3, 'Distopía', 1949);

INSERT INTO Prestamos (libro_id, fecha_prestamo, fecha_devolucion, usuario) VALUES
(1, '2024-01-15', '2024-01-22', 'Juan Pérez'),
(2, '2024-02-10', NULL, 'Ana Gómez'),
(3, '2024-03-05', '2024-03-12', 'Carlos Ruiz');

