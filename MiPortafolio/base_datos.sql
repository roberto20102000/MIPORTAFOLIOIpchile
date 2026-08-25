CREATE DATABASE IF NOT EXISTS portafolio;

USE portafolio;


-- =========================================
-- TABLA DE PROYECTOS
-- =========================================

CREATE TABLE IF NOT EXISTS proyectos (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    descripcion TEXT NOT NULL,

    tecnologia VARCHAR(150) NOT NULL,

    enlace VARCHAR(255)

);


-- =========================================
-- TABLA DE CONTACTOS
-- =========================================

CREATE TABLE IF NOT EXISTS contactos (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    email VARCHAR(150) NOT NULL,

    mensaje TEXT NOT NULL,

    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);


-- =========================================
-- PROYECTOS DE EJEMPLO
-- =========================================

INSERT INTO proyectos
(nombre, descripcion, tecnologia, enlace)
VALUES
(
    'Portafolio Personal',
    'Sitio web personal desarrollado para mostrar mis proyectos, habilidades y experiencia.',
    'HTML5, CSS3, Bootstrap y JSP',
    '#'
),
(
    'Calculadora Web',
    'Aplicación web para realizar operaciones matemáticas básicas.',
    'HTML5, CSS3 y JavaScript',
    '#'
),
(
    'Sistema de Gestión',
    'Sistema web académico desarrollado para administrar información mediante una base de datos.',
    'Java, JSP y MySQL',
    '#'
);