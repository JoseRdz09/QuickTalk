-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-07-2024 a las 18:33:10
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id22026208_chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1622688038, 340066300, 'hola man'),
(2, 340066300, 1622688038, 'bien'),
(3, 1622688038, 340066300, 'hola'),
(4, 340066300, 1622688038, 'hola'),
(5, 440971576, 1622688038, 'hola pedro, necesito tu ayuda'),
(6, 1622688038, 440971576, 'hola Mauricio, claro, dime !!'),
(7, 241387062, 722843747, 'Hola'),
(8, 352677438, 722843747, 'Hola'),
(9, 722843747, 352677438, 'Hola! Kevin'),
(10, 352677438, 722843747, 'Como estas?'),
(11, 352677438, 722843747, 'Muy bien gracias y tu que tal?'),
(12, 352677438, 1594133098, 'Hola jose '),
(13, 1594133098, 352677438, 'Hola kevin'),
(14, 352677438, 1594133098, 'Como estas?'),
(15, 1594133098, 352677438, 'Muy bien gracias y tu que tal?'),
(16, 352677438, 1594133098, 'Super bien muchas gracias'),
(17, 722843747, 450479738, 'hola'),
(18, 450479738, 722843747, 'hey'),
(19, 450479738, 722843747, 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `rol`) VALUES
(1, 1622688038, 'Mauricio', 'Sevilla', 'hola@configuroweb.com', 'fa47f4063c025eff350b30da62654d64', '1652660564avatar.png', 'Disponible', 1),
(2, 340066300, 'Juan', 'Usuario', 'jusuario@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '1652660638staff-avatar.png', 'Desconectad@', 0),
(3, 440971576, 'Pedro', 'Usuario', 'pusuario@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '1652670758chatbot.png', 'Disponible', 0),
(12, 352677438, 'Jose', 'Luna', 'jose.rodriguez.isw@unipolidgo.edu.mx', '0f7d259e60057221c3f7002e253a3a91', '1710048631monagullo.jpg', 'Desconectado', 1),
(51, 450479738, 'Sergio', 'Soto', 'sergio.soto.isw@unipolidgo.edu.mx', 'fcb5cc629e61a0ee347215e94d618de0', '1713417039Logo_QuickTalk.jpg', 'Desconectado', 1),
(52, 241387062, 'Jose', 'Rodriguez', 'joserodriiguez500@gmail.com', '0f7d259e60057221c3f7002e253a3a91', '1713423788Mia.jpg', 'Administrador', 1),
(54, 722843747, 'Kevin', 'Valencia', 'Kv39114@gmail.com', '9a3bdf07be28ad10ee7c8ff8f4ca9167', '1713504937KevoADM.jpg', 'Disponible', 1),
(58, 1050983534, 'Q', 'gj', 'quicktalk69@gmail.com', '0f7d259e60057221c3f7002e253a3a91', '1717904232wallpaperflare.com_wallpaper (1).jpg', 'Disponible', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
