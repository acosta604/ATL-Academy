-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 13-07-2023 a las 00:06:50
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trivia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`) VALUES
(1, 'Arte', 'Preguntas relacionadas con pintura, escultura, arquitectura y otras formas de expresión artística.'),
(2, 'Deporte', 'Preguntas relacionadas con el mundo del deporte.'),
(3, 'Cultura', 'Preguntas relacionadas con arte, literatura, música y otras expresiones culturales.'),
(4, 'Cine', 'Preguntas relacionadas con películas, directores, actores y otros aspectos del cine.'),
(5, 'History', 'Preguntas relacionadas con eventos históricos, personajes y períodos importantes.'),
(6, 'Ciencia', 'Preguntas relacionadas con diferentes ramas de la ciencia, descubrimientos y avances científicos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` int(11) NOT NULL,
  `explanation` text DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question`, `answer`, `explanation`, `option1`, `option2`, `option3`) VALUES
(1, 1, '¿Quién pintó La Mona Lisa?', 0, 'La Mona Lisa fue pintada por Leonardo da Vinci.', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh'),
(2, 1, '¿Cuál de los siguientes no es un color primario?', 2, 'El color rosa no es considerado un color primario.', 'Rojo', 'Amarillo', 'Rosa'),
(3, 1, '¿Qué famoso escultor italiano creó la estatua de David?', 0, 'La estatua de David fue creada por Miguel Ángel.', 'Miguel Ángel', 'Leonardo da Vinci', 'Pablo Picasso'),
(4, 1, '¿En qué país nació el famoso arquitecto Antoni Gaudí?', 0, 'Antoni Gaudí nació en España.', 'España', 'Italia', 'Francia'),
(5, 1, '¿Cuál de los siguientes movimientos artísticos se caracteriza por el uso de formas geométricas y colores brillantes?', 2, 'El movimiento artístico conocido como el arte pop se caracteriza por el uso de formas geométricas y colores brillantes.', 'Renacimiento', 'Impresionismo', 'Arte pop'),
(6, 2, '¿Cuál de los siguientes deportes se juega con un palo y una pelota en un campo con 18 hoyos?', 0, 'El golf se juega con un palo y una pelota en un campo con 18 hoyos.', 'Golf', 'Tenis', 'Fútbol'),
(7, 2, '¿Cuál de los siguientes deportes se juega con un disco volador?', 2, 'El disco volador se utiliza en el deporte conocido como ultimate frisbee.', 'Baloncesto', 'Fútbol americano', 'Ultimate frisbee'),
(8, 2, '¿En qué deporte se utilizan guantes de boxeo?', 1, 'Los guantes de boxeo se utilizan en el deporte del boxeo.', 'Tenis', 'Boxeo', 'Baloncesto'),
(9, 2, '¿Cuál de los siguientes es un deporte de invierno que se practica en una pista de hielo?', 0, 'El patinaje sobre hielo se practica en una pista de hielo.', 'Patinaje artístico', 'Natación', 'Ciclismo'),
(10, 2, '¿En qué deporte se utiliza una red para golpear una pelota por encima?', 0, 'El voleibol utiliza una red para golpear una pelota por encima.', 'Voleibol', 'Baloncesto', 'Atletismo'),
(11, 3, '¿Quién escribió la obra de teatro Romeo y Julieta?', 0, 'La obra de teatro Romeo y Julieta fue escrita por William Shakespeare.', 'William Shakespeare', 'Gabriel García Márquez', 'Miguel de Cervantes'),
(12, 3, '¿Cuál de los siguientes instrumentos pertenece a la familia de las cuerdas?', 2, 'El violín pertenece a la familia de las cuerdas.', 'Piano', 'Batería', 'Violín'),
(13, 3, '¿Qué famoso compositor austriaco compuso la Sinfonía No. 9?', 2, 'La Sinfonía No. 9 fue compuesta por Ludwig van Beethoven.', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven'),
(14, 3, '¿Cuál de las siguientes obras es escrita por Gabriel García Márquez?', 1, 'Cien años de soledad es una famosa obra escrita por Gabriel García Márquez.', 'Don Quijote de la Mancha', 'Cien años de soledad', '1984'),
(15, 3, '¿En qué país nació el famoso pintor Pablo Picasso?', 0, 'Pablo Picasso nació en España.', 'España', 'Francia', 'Italia'),
(16, 4, '¿Quién dirigió la película Pulp Fiction?', 0, 'Pulp Fiction fue dirigida por Quentin Tarantino.', 'Quentin Tarantino', 'Martin Scorsese', 'Steven Spielberg'),
(17, 4, '¿Cuál de los siguientes actores interpreta el papel de James Bond?', 1, 'Daniel Craig interpreta el papel de James Bond.', 'Tom Cruise', 'Daniel Craig', 'Brad Pitt'),
(18, 4, '¿Qué película ganó el premio Óscar a la Mejor Película en el año 2020?', 2, 'La película \"Nomadland\" ganó el premio Óscar a la Mejor Película en el año 2020.', 'Parasite', 'Joker', 'Nomadland'),
(19, 4, '¿En qué año se estrenó la película \"El Padrino\"?', 0, 'La película \"El Padrino\" se estrenó en el año 1972.', '1972', '1984', '1999'),
(20, 4, '¿Quién interpretó el papel de Hermione Granger en la saga de Harry Potter?', 0, 'El papel de Hermione Granger fue interpretado por Emma Watson.', 'Emma Watson', 'Jennifer Lawrence', 'Natalie Portman'),
(21, 5, '¿En qué año ocurrió la Revolución Francesa?', 0, 'La Revolución Francesa ocurrió en el año 1789.', '1789', '1865', '1914'),
(22, 5, '¿Cuál fue el último emperador de Rusia?', 2, 'Nicolás II fue el último emperador de Rusia.', 'Pedro el Grande', 'Iván el Terrible', 'Nicolás II'),
(23, 5, '¿En qué año comenzó la Segunda Guerra Mundial?', 0, 'La Segunda Guerra Mundial comenzó en el año 1939.', '1939', '1914', '1945'),
(24, 5, '¿Quién fue el primer presidente de los Estados Unidos?', 1, 'George Washington fue el primer presidente de los Estados Unidos.', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson'),
(25, 5, '¿En qué año se produjo la caída del Muro de Berlín?', 1, 'La caída del Muro de Berlín ocurrió en el año 1989.', '1979', '1989', '1999'),
(26, 6, '¿Cuál es la fórmula química del agua?', 0, 'La fórmula química del agua es H2O.', 'H2O', 'CO2', 'NaCl'),
(27, 6, '¿Cuál de los siguientes planetas es conocido como el planeta rojo?', 2, 'Marte es conocido como el planeta rojo.', 'Venus', 'Júpiter', 'Marte'),
(28, 6, '¿Qué científico formuló la teoría de la relatividad?', 1, 'Albert Einstein formuló la teoría de la relatividad.', 'Isaac Newton', 'Albert Einstein', 'Charles Darwin'),
(29, 6, '¿Cuál es el órgano más grande del cuerpo humano?', 1, 'El hígado es el órgano más grande del cuerpo humano.', 'Cerebro', 'Hígado', 'Corazón'),
(30, 6, '¿Cuál es la unidad básica de la vida?', 0, 'La célula es la unidad básica de la vida.', 'Célula', 'Átomo', 'Molécula');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
