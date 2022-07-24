-- SIMPLE DATABASE CONFIGURATION FOR APPLICATION || CONFIGURACIÓN SIMPLE DE LA BASE DE DATOS PARA LA APLICACIÓN
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET @@global.time_zone = "+00:00";
--
-- Database: `employees`
--
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;
--
-- Database table
--
CREATE TABLE `developers` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `lastname` varchar(255) NOT NULL,
    `id_type` varchar(255) NOT NULL,
    `id_value` varchar(255) NOT NULL,
    `area` varchar(255) NOT NULL,
    `age` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- data for the data of table: `developers` || data para los datos de la tabla: `developers`
--
INSERT INTO `developers` (
        `name`,
        `lastname`,
        `id_type`,
        `id_value`,
        `area`,
        `age`
    )
VALUES ('Santiago', 'Garcia', 'cc', '1234', 'DevOps', 21),
    ('Monica', 'Hill', 'cc', '2222', 'ML', 22),
    ('Elkin', 'Guerra', 'cc', '4321', 'Robotics', 30),
    ('Melissa', 'Mejia', 'cc', '3333', 'Web', 40);
COMMIT;