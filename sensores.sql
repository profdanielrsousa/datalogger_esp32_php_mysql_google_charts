-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 09-Out-2022 às 19:02
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `AulaSQL`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `sensores`
--

CREATE TABLE `sensores` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `temperatura` float NOT NULL,
  `umidade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sensores`
--

INSERT INTO `sensores` (`id`, `data`, `hora`, `temperatura`, `umidade`) VALUES
(1, '2022-10-08', '22:06:42', 25.9, 66.4),
(2, '2022-10-08', '22:07:41', 25.9, 69),
(3, '2022-10-08', '22:08:41', 26.1, 67.3),
(4, '2022-10-08', '22:09:42', 26.1, 67.7),
(5, '2022-10-08', '22:10:41', 26.2, 69.2),
(6, '2022-10-08', '22:11:41', 26.3, 66),
(7, '2022-10-08', '22:12:41', 26.1, 64.6),
(8, '2022-10-08', '22:13:41', 25.6, 64.4),
(9, '2022-10-08', '22:14:41', 25.6, 65.1),
(10, '2022-10-08', '22:15:41', 25.7, 65.2),
(11, '2022-10-08', '22:16:41', 25.6, 65.7),
(12, '2022-10-08', '22:17:41', 25.7, 67.3),
(13, '2022-10-08', '22:18:41', 25.7, 65.8),
(14, '2022-10-08', '22:19:41', 25.7, 66.6),
(15, '2022-10-08', '22:20:41', 25.7, 65.4),
(16, '2022-10-08', '22:21:41', 25.7, 65.7),
(17, '2022-10-08', '22:22:41', 25.7, 65.6),
(18, '2022-10-08', '22:23:41', 25.7, 66.5),
(19, '2022-10-08', '22:24:41', 25.5, 65.1),
(20, '2022-10-08', '22:25:41', 25.5, 66.7),
(21, '2022-10-08', '22:26:41', 25.6, 67.2),
(22, '2022-10-08', '22:27:41', 25.6, 67),
(23, '2022-10-08', '22:28:41', 25.7, 66.4),
(24, '2022-10-08', '22:29:41', 25.5, 65.5),
(25, '2022-10-08', '22:30:41', 25.4, 66),
(26, '2022-10-08', '22:31:41', 25.3, 65.1),
(27, '2022-10-08', '22:32:41', 24.8, 65.5),
(28, '2022-10-08', '22:33:41', 24.6, 66.2),
(29, '2022-10-08', '22:34:41', 24.3, 66.7),
(30, '2022-10-08', '22:35:41', 24.2, 67.3),
(31, '2022-10-08', '22:36:41', 24.3, 67.6),
(32, '2022-10-08', '22:37:41', 24.3, 68),
(33, '2022-10-08', '22:38:41', 24.2, 67.3),
(34, '2022-10-08', '22:39:41', 24.3, 68.9),
(35, '2022-10-08', '22:40:41', 24.4, 68.1),
(36, '2022-10-08', '22:41:41', 24.5, 67.5),
(37, '2022-10-08', '22:42:41', 24.3, 67.2),
(38, '2022-10-08', '22:43:41', 24.3, 67.3),
(39, '2022-10-08', '22:44:41', 24.4, 67.6),
(40, '2022-10-08', '22:45:41', 24.2, 67.1),
(41, '2022-10-08', '22:46:41', 24, 68.2),
(42, '2022-10-08', '22:47:41', 24, 68.4),
(43, '2022-10-08', '22:48:41', 24.2, 68.4),
(44, '2022-10-08', '22:49:41', 24.1, 67.9),
(45, '2022-10-08', '22:50:41', 23.9, 68.8),
(46, '2022-10-08', '22:51:41', 23.8, 68.7),
(47, '2022-10-08', '22:52:41', 23.8, 69.3),
(48, '2022-10-08', '22:53:41', 23.7, 70.1),
(49, '2022-10-08', '22:54:41', 24, 70.3),
(50, '2022-10-08', '22:55:41', 24.1, 69.7),
(51, '2022-10-08', '22:56:41', 24.2, 68.8),
(52, '2022-10-08', '22:57:41', 24.1, 69.3),
(53, '2022-10-08', '22:58:41', 23.9, 68.8),
(54, '2022-10-08', '22:59:41', 24.2, 69.2),
(55, '2022-10-08', '23:00:41', 24.2, 69.1),
(56, '2022-10-08', '23:01:41', 23.9, 68.7),
(57, '2022-10-08', '23:02:41', 23.9, 69.4),
(58, '2022-10-08', '23:03:41', 23.9, 70.1),
(59, '2022-10-08', '23:04:41', 24.3, 69.7),
(60, '2022-10-08', '23:05:41', 24.5, 68.9),
(61, '2022-10-08', '23:06:41', 24.6, 68.4),
(62, '2022-10-08', '23:07:41', 24.2, 68),
(63, '2022-10-08', '23:08:41', 24.2, 68.3),
(64, '2022-10-08', '23:09:41', 24.2, 68.1),
(65, '2022-10-08', '23:10:41', 24.2, 68.1),
(66, '2022-10-08', '23:11:41', 24.2, 68.3),
(67, '2022-10-08', '23:12:41', 24.1, 69.2),
(68, '2022-10-08', '23:13:41', 24.3, 72.6),
(69, '2022-10-08', '23:14:41', 24.5, 71.2),
(70, '2022-10-08', '23:15:41', 24.6, 71.1),
(71, '2022-10-08', '23:16:41', 24.7, 71.2),
(72, '2022-10-08', '23:17:41', 24.7, 69.6),
(73, '2022-10-08', '23:18:41', 24.7, 69.9),
(74, '2022-10-08', '23:19:41', 24.7, 71.1),
(75, '2022-10-08', '23:20:41', 24.8, 70.1),
(76, '2022-10-08', '23:21:41', 24.8, 68.5),
(77, '2022-10-08', '23:22:41', 24.8, 68.9),
(78, '2022-10-08', '23:23:41', 24.9, 69.6),
(79, '2022-10-08', '23:24:41', 24.9, 69.3),
(80, '2022-10-08', '23:25:41', 25, 69.6),
(81, '2022-10-08', '23:26:41', 25, 68.6),
(82, '2022-10-08', '23:27:41', 25, 69),
(83, '2022-10-08', '23:28:41', 25, 68.8),
(84, '2022-10-08', '23:29:41', 25.1, 68.9),
(85, '2022-10-08', '23:30:41', 25, 68.4),
(86, '2022-10-08', '23:31:41', 24.9, 68.6),
(87, '2022-10-08', '23:32:41', 25, 68.7),
(88, '2022-10-08', '23:33:41', 25, 67.8),
(89, '2022-10-08', '23:34:41', 25, 68.3),
(90, '2022-10-08', '23:35:41', 25, 68.2),
(91, '2022-10-08', '23:36:41', 25, 68.1),
(92, '2022-10-08', '23:37:41', 25, 67.4),
(93, '2022-10-08', '23:38:41', 25, 67.5),
(94, '2022-10-08', '23:39:41', 25, 67.1),
(95, '2022-10-08', '23:40:41', 25.1, 66.7),
(96, '2022-10-08', '23:41:41', 25.1, 67.3),
(97, '2022-10-08', '23:42:41', 25.1, 68.5),
(98, '2022-10-08', '23:43:41', 25, 67.3),
(99, '2022-10-08', '23:44:41', 25, 66.9),
(100, '2022-10-08', '23:45:41', 25.1, 67.7),
(101, '2022-10-08', '23:46:41', 25.1, 66.7),
(102, '2022-10-08', '23:47:41', 25.2, 67.4),
(103, '2022-10-08', '23:48:41', 25.1, 66.5),
(104, '2022-10-08', '23:49:41', 25.1, 67.6),
(105, '2022-10-08', '23:50:41', 25.1, 67.1),
(106, '2022-10-08', '23:51:41', 25.1, 66.6),
(107, '2022-10-08', '23:52:41', 25.2, 66.3),
(108, '2022-10-08', '23:53:41', 25.2, 67),
(109, '2022-10-08', '23:54:41', 25.2, 67.1),
(110, '2022-10-08', '23:55:41', 25.2, 67.3),
(111, '2022-10-08', '23:56:41', 25.2, 66.6),
(112, '2022-10-08', '23:57:41', 25.2, 66.2),
(113, '2022-10-08', '23:58:41', 25.2, 66.6),
(114, '2022-10-08', '23:59:41', 25.2, 66.7),
(115, '2022-10-09', '00:00:41', 25.1, 66.7),
(116, '2022-10-09', '00:01:41', 25.1, 66.3),
(117, '2022-10-09', '00:02:41', 25.1, 66.3),
(118, '2022-10-09', '00:03:41', 25.1, 66.5),
(119, '2022-10-09', '00:04:41', 25.1, 66.5),
(120, '2022-10-09', '00:05:41', 25.1, 66.2),
(121, '2022-10-09', '00:06:41', 25.2, 66.2),
(122, '2022-10-09', '00:07:41', 25.2, 66.4),
(123, '2022-10-09', '00:08:41', 25.2, 66.1),
(124, '2022-10-09', '00:09:41', 25.1, 66.5),
(125, '2022-10-09', '00:10:41', 25.2, 66.3),
(126, '2022-10-09', '00:11:41', 25.2, 66.5),
(127, '2022-10-09', '00:12:41', 25.2, 66.3),
(128, '2022-10-09', '00:13:41', 25.2, 66.1),
(129, '2022-10-09', '00:14:41', 25.2, 66.3),
(130, '2022-10-09', '00:15:41', 25.2, 65.8),
(131, '2022-10-09', '00:16:41', 25.2, 66),
(132, '2022-10-09', '00:17:41', 25.2, 66.2),
(133, '2022-10-09', '00:18:41', 25.1, 65.5),
(134, '2022-10-09', '00:19:41', 25.2, 65.8),
(135, '2022-10-09', '00:20:41', 25.2, 66.2),
(136, '2022-10-09', '00:21:41', 25.1, 65.9),
(137, '2022-10-09', '00:22:41', 25.1, 65.8),
(138, '2022-10-09', '00:23:41', 25.1, 66.5),
(139, '2022-10-09', '00:24:41', 25.1, 65.9),
(140, '2022-10-09', '00:25:41', 25.1, 66.2),
(141, '2022-10-09', '00:26:41', 25.1, 65.9),
(142, '2022-10-09', '00:27:41', 25.1, 66.4),
(143, '2022-10-09', '00:28:41', 25.1, 66.3),
(144, '2022-10-09', '00:29:41', 25, 66.2),
(145, '2022-10-09', '00:30:41', 25, 66.1),
(146, '2022-10-09', '00:31:41', 25, 65.7),
(147, '2022-10-09', '00:32:41', 25, 65.6),
(148, '2022-10-09', '00:33:41', 25.1, 65.6),
(149, '2022-10-09', '00:34:41', 25.1, 65.4),
(150, '2022-10-09', '00:35:41', 25, 65.2),
(151, '2022-10-09', '00:36:41', 24.9, 65.3),
(152, '2022-10-09', '00:37:41', 24.9, 65.3),
(153, '2022-10-09', '00:38:41', 24.9, 65.5),
(154, '2022-10-09', '00:39:41', 24.9, 65.4),
(155, '2022-10-09', '00:40:41', 25, 65.4),
(156, '2022-10-09', '00:41:41', 25, 65.6),
(157, '2022-10-09', '00:42:41', 25, 65.6),
(158, '2022-10-09', '00:43:41', 25, 65.3),
(159, '2022-10-09', '00:44:41', 25, 65.3),
(160, '2022-10-09', '00:45:41', 24.9, 65.6),
(161, '2022-10-09', '00:46:41', 24.9, 65.8),
(162, '2022-10-09', '00:47:41', 24.9, 65.4),
(163, '2022-10-09', '00:48:41', 24.9, 66),
(164, '2022-10-09', '00:49:41', 24.9, 65.6),
(165, '2022-10-09', '00:50:41', 24.9, 65.6),
(166, '2022-10-09', '00:51:41', 25, 65.4),
(167, '2022-10-09', '00:52:41', 25, 65.5),
(168, '2022-10-09', '00:53:41', 25, 65.5),
(169, '2022-10-09', '00:54:41', 25, 65.6),
(170, '2022-10-09', '00:55:42', 24.9, 65.4),
(171, '2022-10-09', '00:56:41', 24.9, 65.3),
(172, '2022-10-09', '00:57:41', 24.8, 65.6),
(173, '2022-10-09', '00:58:41', 24.9, 65.7),
(174, '2022-10-09', '00:59:41', 24.9, 66),
(175, '2022-10-09', '01:00:41', 24.9, 65.7),
(176, '2022-10-09', '01:01:41', 24.9, 65.5),
(177, '2022-10-09', '01:02:41', 24.8, 65.4),
(178, '2022-10-09', '01:03:41', 24.7, 65.6),
(179, '2022-10-09', '01:04:41', 24.7, 65.6),
(180, '2022-10-09', '01:05:41', 24.7, 65.7),
(181, '2022-10-09', '01:06:41', 24.8, 65.8),
(182, '2022-10-09', '01:07:41', 24.8, 65.5),
(183, '2022-10-09', '01:08:41', 24.8, 65.5),
(184, '2022-10-09', '01:09:41', 24.7, 65.8),
(185, '2022-10-09', '01:10:41', 24.7, 65.6),
(186, '2022-10-09', '01:11:41', 24.7, 65.5),
(187, '2022-10-09', '01:12:41', 24.7, 65.7),
(188, '2022-10-09', '01:13:41', 24.7, 65.8),
(189, '2022-10-09', '01:14:41', 24.7, 65.7),
(190, '2022-10-09', '01:15:41', 24.7, 65.9),
(191, '2022-10-09', '01:16:41', 24.7, 65.6),
(192, '2022-10-09', '01:17:41', 24.8, 65.9),
(193, '2022-10-09', '01:18:41', 24.7, 65.8),
(194, '2022-10-09', '01:19:41', 24.8, 65.8),
(195, '2022-10-09', '01:20:41', 24.8, 65.7),
(196, '2022-10-09', '01:21:41', 24.9, 65.6),
(197, '2022-10-09', '01:22:41', 24.9, 66),
(198, '2022-10-09', '01:23:41', 24.8, 65.6),
(199, '2022-10-09', '01:24:41', 24.8, 65.5),
(200, '2022-10-09', '01:25:41', 24.8, 65.4),
(201, '2022-10-09', '01:26:41', 24.7, 65.7),
(202, '2022-10-09', '01:27:41', 24.7, 65.8),
(203, '2022-10-09', '01:28:41', 24.7, 65.6),
(204, '2022-10-09', '01:29:41', 24.7, 65.6),
(205, '2022-10-09', '01:30:41', 24.7, 65.6),
(206, '2022-10-09', '01:31:41', 24.7, 65.9),
(207, '2022-10-09', '01:32:41', 24.7, 65.5),
(208, '2022-10-09', '01:33:41', 24.7, 65.6),
(209, '2022-10-09', '01:34:41', 24.6, 65.7),
(210, '2022-10-09', '01:35:41', 24.5, 65.8),
(211, '2022-10-09', '01:36:41', 24.6, 66.2),
(212, '2022-10-09', '01:37:41', 24.6, 66.2),
(213, '2022-10-09', '01:38:41', 24.6, 66),
(214, '2022-10-09', '01:39:41', 24.6, 66.2),
(215, '2022-10-09', '01:40:41', 24.7, 66.3),
(216, '2022-10-09', '01:41:41', 24.7, 66.2),
(217, '2022-10-09', '01:42:41', 24.7, 65.8),
(218, '2022-10-09', '01:43:41', 24.6, 65.7),
(219, '2022-10-09', '01:44:41', 24.6, 66),
(220, '2022-10-09', '01:45:41', 24.5, 65.8),
(221, '2022-10-09', '01:46:41', 24.5, 65.7),
(222, '2022-10-09', '01:47:41', 24.5, 66),
(223, '2022-10-09', '01:48:41', 24.6, 66.2),
(224, '2022-10-09', '01:49:41', 24.6, 66),
(225, '2022-10-09', '01:50:41', 24.6, 66.1),
(226, '2022-10-09', '01:51:41', 24.6, 66.1),
(227, '2022-10-09', '01:52:41', 24.6, 65.9),
(228, '2022-10-09', '01:53:41', 24.7, 66.1),
(229, '2022-10-09', '01:54:41', 24.7, 66.1),
(230, '2022-10-09', '01:55:41', 24.7, 65.9),
(231, '2022-10-09', '01:56:41', 24.7, 66),
(232, '2022-10-09', '01:57:41', 24.7, 66),
(233, '2022-10-09', '01:58:41', 24.7, 66.1),
(234, '2022-10-09', '01:59:41', 24.7, 66.1),
(235, '2022-10-09', '02:00:41', 24.7, 66.1),
(236, '2022-10-09', '02:01:41', 24.7, 66.3),
(237, '2022-10-09', '02:02:41', 24.7, 66),
(238, '2022-10-09', '02:03:41', 24.8, 66.4),
(239, '2022-10-09', '02:04:41', 24.7, 66.1),
(240, '2022-10-09', '02:05:41', 24.7, 66.2),
(241, '2022-10-09', '02:06:41', 24.7, 66.1),
(242, '2022-10-09', '02:07:41', 24.7, 66.4),
(243, '2022-10-09', '02:08:41', 24.7, 66.2),
(244, '2022-10-09', '02:09:41', 24.6, 66.3),
(245, '2022-10-09', '02:10:41', 24.6, 66.6),
(246, '2022-10-09', '02:11:41', 24.6, 66.6),
(247, '2022-10-09', '02:12:41', 24.6, 66.8),
(248, '2022-10-09', '02:13:41', 24.6, 66.6),
(249, '2022-10-09', '02:14:41', 24.6, 66.9),
(250, '2022-10-09', '02:15:41', 24.6, 67),
(251, '2022-10-09', '02:16:41', 24.6, 67.1),
(252, '2022-10-09', '02:17:41', 24.5, 67.1),
(253, '2022-10-09', '02:18:41', 24.5, 67.1),
(254, '2022-10-09', '02:19:41', 24.5, 67),
(255, '2022-10-09', '02:20:41', 24.5, 67.4),
(256, '2022-10-09', '02:21:41', 24.4, 67.5),
(257, '2022-10-09', '02:22:41', 24.4, 67.5),
(258, '2022-10-09', '02:23:41', 24.4, 67.4),
(259, '2022-10-09', '02:24:41', 24.4, 67.2),
(260, '2022-10-09', '02:25:41', 24.5, 67.2),
(261, '2022-10-09', '02:26:41', 24.5, 67.1),
(262, '2022-10-09', '02:27:41', 24.4, 67.2),
(263, '2022-10-09', '02:28:41', 24.4, 67.3),
(264, '2022-10-09', '02:29:41', 24.4, 67.3),
(265, '2022-10-09', '02:30:41', 24.3, 67.2),
(266, '2022-10-09', '02:31:41', 24.4, 67.3),
(267, '2022-10-09', '02:32:41', 24.4, 67.2),
(268, '2022-10-09', '02:33:41', 24.4, 67.3),
(269, '2022-10-09', '02:34:41', 24.5, 67.1),
(270, '2022-10-09', '02:35:41', 24.5, 67.4),
(271, '2022-10-09', '02:36:41', 24.5, 67.2),
(272, '2022-10-09', '02:37:41', 24.5, 67.2),
(273, '2022-10-09', '02:38:41', 24.5, 67.1),
(274, '2022-10-09', '02:39:41', 24.5, 66.9),
(275, '2022-10-09', '02:40:41', 24.5, 67.2),
(276, '2022-10-09', '02:41:41', 24.5, 67.3),
(277, '2022-10-09', '02:42:41', 24.4, 67.1),
(278, '2022-10-09', '02:43:41', 24.4, 67.2),
(279, '2022-10-09', '02:44:41', 24.3, 67.4),
(280, '2022-10-09', '02:45:41', 24.4, 67.6),
(281, '2022-10-09', '02:46:41', 24.3, 67.6),
(282, '2022-10-09', '02:47:41', 24.4, 67.5),
(283, '2022-10-09', '02:48:41', 24.3, 67.4),
(284, '2022-10-09', '02:49:41', 24.4, 67.6),
(285, '2022-10-09', '02:50:41', 24.4, 67.5),
(286, '2022-10-09', '02:51:41', 24.5, 67.5),
(287, '2022-10-09', '02:52:41', 24.4, 67.3),
(288, '2022-10-09', '02:53:41', 24.4, 67.6),
(289, '2022-10-09', '02:54:41', 24.4, 67.5),
(290, '2022-10-09', '02:55:41', 24.4, 67.5),
(291, '2022-10-09', '02:56:41', 24.3, 67.3),
(292, '2022-10-09', '02:57:41', 24.3, 67.7),
(293, '2022-10-09', '02:58:41', 24.3, 67.6),
(294, '2022-10-09', '02:59:41', 24.2, 68.1),
(295, '2022-10-09', '03:00:41', 24.2, 68.1),
(296, '2022-10-09', '03:01:41', 24.2, 68.1),
(297, '2022-10-09', '03:02:41', 24.1, 68.4),
(298, '2022-10-09', '03:03:41', 24.1, 68.7),
(299, '2022-10-09', '03:04:41', 24, 68.8),
(300, '2022-10-09', '03:05:41', 24.1, 68.7),
(301, '2022-10-09', '03:06:41', 24.1, 68.9),
(302, '2022-10-09', '03:07:41', 24, 69.3),
(303, '2022-10-09', '03:08:41', 24, 69.5),
(304, '2022-10-09', '03:09:41', 24, 70),
(305, '2022-10-09', '03:10:41', 24, 70),
(306, '2022-10-09', '03:11:41', 24, 69.9),
(307, '2022-10-09', '03:12:40', 24, 69.7),
(308, '2022-10-09', '03:13:41', 24, 69.7),
(309, '2022-10-09', '03:14:41', 24, 69.5),
(310, '2022-10-09', '03:15:41', 24, 69.2),
(311, '2022-10-09', '03:16:41', 24, 69.4),
(312, '2022-10-09', '03:17:41', 24, 69.1),
(313, '2022-10-09', '03:18:41', 24, 69.2),
(314, '2022-10-09', '03:19:41', 24, 69.5),
(315, '2022-10-09', '03:20:41', 24, 69.4),
(316, '2022-10-09', '03:21:41', 23.9, 69.3),
(317, '2022-10-09', '03:22:41', 23.9, 69.6),
(318, '2022-10-09', '03:23:41', 23.8, 69.6),
(319, '2022-10-09', '03:24:41', 23.8, 69.7),
(320, '2022-10-09', '03:25:41', 23.9, 69.8),
(321, '2022-10-09', '03:26:41', 23.8, 69.6),
(322, '2022-10-09', '03:27:41', 23.8, 69.7),
(323, '2022-10-09', '03:28:41', 23.9, 69.5),
(324, '2022-10-09', '03:29:41', 23.9, 69.6),
(325, '2022-10-09', '03:30:41', 23.9, 69.4),
(326, '2022-10-09', '03:31:41', 23.9, 69.5),
(327, '2022-10-09', '03:32:41', 24, 69.6),
(328, '2022-10-09', '03:33:41', 24, 69.3),
(329, '2022-10-09', '03:34:41', 23.9, 69.5),
(330, '2022-10-09', '03:35:41', 23.9, 69.4),
(331, '2022-10-09', '03:36:41', 23.9, 69.5),
(332, '2022-10-09', '03:37:41', 23.9, 69.8),
(333, '2022-10-09', '03:38:41', 23.9, 69.8),
(334, '2022-10-09', '03:39:41', 23.9, 69.8),
(335, '2022-10-09', '03:40:41', 23.9, 69.6),
(336, '2022-10-09', '03:41:41', 23.8, 69.8),
(337, '2022-10-09', '03:42:41', 23.8, 69.9),
(338, '2022-10-09', '03:43:41', 23.9, 69.8),
(339, '2022-10-09', '03:44:41', 23.9, 69.8),
(340, '2022-10-09', '03:45:41', 24, 69.5),
(341, '2022-10-09', '03:46:41', 24, 69.7),
(342, '2022-10-09', '03:47:41', 24, 69.8),
(343, '2022-10-09', '03:48:41', 24, 69.5),
(344, '2022-10-09', '03:49:41', 23.9, 69.6),
(345, '2022-10-09', '03:50:41', 23.8, 69.7),
(346, '2022-10-09', '03:51:41', 23.8, 69.8),
(347, '2022-10-09', '03:52:41', 23.7, 70),
(348, '2022-10-09', '03:53:41', 23.7, 70.1),
(349, '2022-10-09', '03:54:41', 23.7, 70),
(350, '2022-10-09', '03:55:41', 23.8, 70.1),
(351, '2022-10-09', '03:56:41', 23.8, 70.1),
(352, '2022-10-09', '03:57:41', 23.8, 70.1),
(353, '2022-10-09', '03:58:41', 23.8, 70),
(354, '2022-10-09', '03:59:41', 23.8, 69.9),
(355, '2022-10-09', '04:00:41', 23.8, 70),
(356, '2022-10-09', '04:01:41', 23.8, 70),
(357, '2022-10-09', '04:02:41', 23.8, 69.9),
(358, '2022-10-09', '04:03:41', 23.7, 70.2),
(359, '2022-10-09', '04:04:41', 23.7, 70.2),
(360, '2022-10-09', '04:05:41', 23.8, 70.1),
(361, '2022-10-09', '04:06:41', 23.8, 70.2),
(362, '2022-10-09', '04:07:41', 23.7, 70.3),
(363, '2022-10-09', '04:08:41', 23.7, 70.4),
(364, '2022-10-09', '04:09:41', 23.7, 70.6),
(365, '2022-10-09', '04:10:41', 23.7, 70.5),
(366, '2022-10-09', '04:11:41', 23.7, 70.6),
(367, '2022-10-09', '04:12:41', 23.7, 70.7),
(368, '2022-10-09', '04:13:41', 23.5, 70.9),
(369, '2022-10-09', '04:14:41', 23.5, 71.3),
(370, '2022-10-09', '04:15:41', 23.5, 71.4),
(371, '2022-10-09', '04:16:41', 23.2, 71.6),
(372, '2022-10-09', '04:17:41', 23.1, 71.8),
(373, '2022-10-09', '04:18:41', 23, 71.9),
(374, '2022-10-09', '04:19:41', 22.9, 72.3),
(375, '2022-10-09', '04:20:41', 22.9, 72.6),
(376, '2022-10-09', '04:21:41', 22.8, 72.8),
(377, '2022-10-09', '04:22:41', 22.7, 73),
(378, '2022-10-09', '04:23:41', 22.9, 73.1),
(379, '2022-10-09', '04:24:41', 22.9, 72.9),
(380, '2022-10-09', '04:25:41', 22.8, 73.2),
(381, '2022-10-09', '04:26:41', 22.8, 73.1),
(382, '2022-10-09', '04:27:41', 22.7, 73.2),
(383, '2022-10-09', '04:28:41', 22.8, 73.3),
(384, '2022-10-09', '04:29:41', 22.9, 73.3),
(385, '2022-10-09', '04:30:41', 23, 73.4),
(386, '2022-10-09', '04:31:41', 23.2, 72.9),
(387, '2022-10-09', '04:32:41', 23.2, 72.4),
(388, '2022-10-09', '04:33:41', 23.2, 72.2),
(389, '2022-10-09', '04:34:41', 23, 72),
(390, '2022-10-09', '04:35:41', 22.9, 72.2),
(391, '2022-10-09', '04:36:41', 22.7, 72.7),
(392, '2022-10-09', '04:37:41', 22.7, 73),
(393, '2022-10-09', '04:38:41', 22.6, 73.4),
(394, '2022-10-09', '04:39:41', 22.6, 73.5),
(395, '2022-10-09', '04:40:41', 22.7, 73.8),
(396, '2022-10-09', '04:41:41', 22.8, 73.4),
(397, '2022-10-09', '04:42:41', 22.8, 73.1),
(398, '2022-10-09', '04:43:41', 22.6, 73),
(399, '2022-10-09', '04:44:41', 22.6, 72.9),
(400, '2022-10-09', '04:45:41', 22.6, 73.4),
(401, '2022-10-09', '04:46:41', 22.5, 73.5),
(402, '2022-10-09', '04:47:41', 22.4, 73.6),
(403, '2022-10-09', '04:48:41', 22.4, 73.9),
(404, '2022-10-09', '04:49:41', 22.4, 74),
(405, '2022-10-09', '04:50:41', 22.5, 74.1),
(406, '2022-10-09', '04:51:41', 22.5, 74.5),
(407, '2022-10-09', '04:52:41', 22.5, 74.2),
(408, '2022-10-09', '04:53:41', 22.4, 74),
(409, '2022-10-09', '04:54:41', 22.5, 74),
(410, '2022-10-09', '04:55:41', 22.4, 73.9),
(411, '2022-10-09', '04:56:41', 22.5, 74.2),
(412, '2022-10-09', '04:57:41', 22.5, 74.1),
(413, '2022-10-09', '04:58:41', 22.5, 74.1),
(414, '2022-10-09', '04:59:41', 22.7, 74.4),
(415, '2022-10-09', '05:00:41', 22.7, 73.9),
(416, '2022-10-09', '05:01:41', 22.6, 73.8),
(417, '2022-10-09', '05:02:41', 22.6, 74.3),
(418, '2022-10-09', '05:03:41', 22.6, 73.7),
(419, '2022-10-09', '05:04:41', 22.6, 74),
(420, '2022-10-09', '05:05:41', 22.6, 74),
(421, '2022-10-09', '05:06:41', 22.6, 74),
(422, '2022-10-09', '05:07:41', 22.6, 74.2),
(423, '2022-10-09', '05:08:41', 22.6, 74.3),
(424, '2022-10-09', '05:09:41', 22.6, 74.5),
(425, '2022-10-09', '05:10:42', 22.6, 74.2),
(426, '2022-10-09', '05:11:41', 22.9, 74.3),
(427, '2022-10-09', '05:12:41', 23.1, 73.4),
(428, '2022-10-09', '05:13:41', 23, 73.4),
(429, '2022-10-09', '05:14:41', 22.9, 73),
(430, '2022-10-09', '05:15:41', 22.9, 73.6),
(431, '2022-10-09', '05:16:41', 23, 73.7),
(432, '2022-10-09', '05:17:41', 23.2, 73.1),
(433, '2022-10-09', '05:18:42', 23.1, 72.8),
(434, '2022-10-09', '05:19:42', 22.9, 72.8),
(435, '2022-10-09', '05:20:41', 22.6, 73.1),
(436, '2022-10-09', '05:21:41', 22.6, 73.4),
(437, '2022-10-09', '05:22:42', 22.5, 73.7),
(438, '2022-10-09', '05:23:42', 22.4, 73.9),
(439, '2022-10-09', '05:24:42', 22.4, 74.1),
(440, '2022-10-09', '05:25:42', 22.4, 74.1),
(441, '2022-10-09', '05:26:42', 22.3, 74.4),
(442, '2022-10-09', '05:27:42', 22.3, 74.6),
(443, '2022-10-09', '05:28:42', 22.3, 74.6),
(444, '2022-10-09', '05:29:42', 22.2, 74.9),
(445, '2022-10-09', '05:30:42', 22.2, 74.9),
(446, '2022-10-09', '05:31:42', 22.3, 74.9),
(447, '2022-10-09', '05:32:42', 22.3, 74.8),
(448, '2022-10-09', '05:33:42', 22.3, 74.7),
(449, '2022-10-09', '05:34:42', 22.2, 74.5),
(450, '2022-10-09', '05:35:42', 22.2, 74.6),
(451, '2022-10-09', '05:36:42', 22.2, 74.7),
(452, '2022-10-09', '05:37:42', 22.1, 74.8),
(453, '2022-10-09', '05:38:42', 22.1, 75),
(454, '2022-10-09', '05:39:42', 22, 74.9),
(455, '2022-10-09', '05:40:42', 22, 75.2),
(456, '2022-10-09', '05:41:42', 21.9, 75.3),
(457, '2022-10-09', '05:42:42', 21.9, 75.5),
(458, '2022-10-09', '05:43:42', 21.9, 75.6),
(459, '2022-10-09', '05:44:42', 21.9, 75.6),
(460, '2022-10-09', '05:45:42', 21.9, 75.8),
(461, '2022-10-09', '05:46:42', 22, 75.8),
(462, '2022-10-09', '05:47:42', 21.9, 75.9),
(463, '2022-10-09', '05:48:42', 22, 75.9),
(464, '2022-10-09', '05:49:42', 22, 75.6),
(465, '2022-10-09', '05:50:42', 22, 75.8),
(466, '2022-10-09', '05:51:42', 22, 75.8),
(467, '2022-10-09', '05:52:42', 22, 75.6),
(468, '2022-10-09', '05:53:42', 22.1, 75.8),
(469, '2022-10-09', '05:54:42', 22.1, 75.9),
(470, '2022-10-09', '05:55:42', 22.1, 75.9),
(471, '2022-10-09', '05:56:42', 22.2, 75.6),
(472, '2022-10-09', '05:57:42', 22.1, 75.5),
(473, '2022-10-09', '05:58:42', 22.2, 75.4),
(474, '2022-10-09', '05:59:42', 22.2, 75.3),
(475, '2022-10-09', '06:00:42', 22.2, 75.4),
(476, '2022-10-09', '06:01:42', 22.1, 75.4),
(477, '2022-10-09', '06:02:42', 22.1, 75.5),
(478, '2022-10-09', '06:03:42', 22.1, 75.9),
(479, '2022-10-09', '06:04:42', 22.1, 75.6),
(480, '2022-10-09', '06:05:42', 22.1, 75.7),
(481, '2022-10-09', '06:06:42', 22.2, 75.4),
(482, '2022-10-09', '06:07:42', 22.2, 75.3),
(483, '2022-10-09', '06:08:42', 22.2, 75.2),
(484, '2022-10-09', '06:09:42', 22.3, 75.2),
(485, '2022-10-09', '06:10:42', 22.2, 75.2),
(486, '2022-10-09', '06:11:42', 22.3, 75.5),
(487, '2022-10-09', '06:12:42', 22.2, 75.3),
(488, '2022-10-09', '06:13:42', 22.1, 75.4),
(489, '2022-10-09', '06:14:42', 22.1, 75.4),
(490, '2022-10-09', '06:15:42', 22, 75.5),
(491, '2022-10-09', '06:16:42', 22.1, 75.5),
(492, '2022-10-09', '06:17:42', 22, 75.5),
(493, '2022-10-09', '06:18:42', 22, 75.7),
(494, '2022-10-09', '06:19:42', 22, 75.8),
(495, '2022-10-09', '06:20:42', 22, 75.7),
(496, '2022-10-09', '06:21:42', 22.1, 75.7),
(497, '2022-10-09', '06:22:42', 22.2, 75.9),
(498, '2022-10-09', '06:23:42', 22.2, 75.7),
(499, '2022-10-09', '06:24:42', 22.2, 75.5),
(500, '2022-10-09', '06:25:42', 22.3, 75.3),
(501, '2022-10-09', '06:26:42', 22.2, 75.4),
(502, '2022-10-09', '06:27:42', 22.1, 75.5),
(503, '2022-10-09', '06:28:42', 22, 75.8),
(504, '2022-10-09', '06:29:42', 22, 75.8),
(505, '2022-10-09', '06:30:42', 22, 75.8),
(506, '2022-10-09', '06:31:42', 22.1, 76.1),
(507, '2022-10-09', '06:32:42', 22.1, 76.1),
(508, '2022-10-09', '06:33:42', 22.3, 76),
(509, '2022-10-09', '06:34:42', 22.3, 75.5),
(510, '2022-10-09', '06:35:42', 22.4, 75.2),
(511, '2022-10-09', '06:36:42', 22.3, 75.1),
(512, '2022-10-09', '06:37:42', 22.4, 75.2),
(513, '2022-10-09', '06:38:42', 22.6, 75.3),
(514, '2022-10-09', '06:39:42', 22.7, 74.7),
(515, '2022-10-09', '06:40:42', 22.6, 74.6),
(516, '2022-10-09', '06:41:42', 22.6, 74.5),
(517, '2022-10-09', '06:42:42', 22.6, 74.3),
(518, '2022-10-09', '06:43:42', 22.6, 74.3),
(519, '2022-10-09', '06:44:42', 22.6, 74.1),
(520, '2022-10-09', '06:45:42', 22.6, 73.8),
(521, '2022-10-09', '06:46:42', 22.7, 74.4),
(522, '2022-10-09', '06:47:42', 22.7, 73.7),
(523, '2022-10-09', '06:48:42', 22.7, 73.8),
(524, '2022-10-09', '06:49:42', 22.7, 73.7),
(525, '2022-10-09', '06:50:42', 22.6, 74),
(526, '2022-10-09', '06:51:42', 22.5, 73.9),
(527, '2022-10-09', '06:52:43', 22.5, 74.2),
(528, '2022-10-09', '06:53:42', 22.5, 74),
(529, '2022-10-09', '06:54:42', 22.5, 73.9),
(530, '2022-10-09', '06:55:42', 22.5, 74),
(531, '2022-10-09', '06:56:42', 22.4, 74.2),
(532, '2022-10-09', '06:57:42', 22.5, 74.7),
(533, '2022-10-09', '06:58:42', 22.5, 74.2),
(534, '2022-10-09', '06:59:42', 22.5, 74.1),
(535, '2022-10-09', '07:00:42', 22.5, 73.8),
(536, '2022-10-09', '07:01:42', 22.4, 73.9),
(537, '2022-10-09', '07:02:42', 22.4, 74.1),
(538, '2022-10-09', '07:03:42', 22.4, 74.1),
(539, '2022-10-09', '07:04:42', 22.4, 74),
(540, '2022-10-09', '07:05:42', 22.5, 74.4),
(541, '2022-10-09', '07:06:42', 22.5, 74.2),
(542, '2022-10-09', '07:07:42', 22.4, 74.2),
(543, '2022-10-09', '07:08:42', 22.3, 74.4),
(544, '2022-10-09', '07:09:42', 22.3, 74.3),
(545, '2022-10-09', '07:10:42', 22.3, 74.2),
(546, '2022-10-09', '07:11:42', 22.4, 74.3),
(547, '2022-10-09', '07:12:42', 22.4, 74.2),
(548, '2022-10-09', '07:13:42', 22.6, 75.1),
(549, '2022-10-09', '07:14:42', 22.8, 75.1),
(550, '2022-10-09', '07:15:42', 22.8, 74.4),
(551, '2022-10-09', '07:16:42', 22.9, 74.3),
(552, '2022-10-09', '07:17:42', 23.1, 74.2),
(553, '2022-10-09', '07:18:42', 23.2, 73.7),
(554, '2022-10-09', '07:19:42', 23.2, 73.2),
(555, '2022-10-09', '07:20:42', 23.2, 73.2),
(556, '2022-10-09', '07:21:42', 23.3, 73.2),
(557, '2022-10-09', '07:22:42', 23.2, 73.3),
(558, '2022-10-09', '07:23:42', 23.3, 73.2),
(559, '2022-10-09', '07:24:42', 23.3, 73),
(560, '2022-10-09', '07:25:42', 23.6, 72.6),
(561, '2022-10-09', '07:26:42', 23.8, 72.2),
(562, '2022-10-09', '07:27:42', 23.9, 71.4),
(563, '2022-10-09', '07:28:42', 23.9, 70.8),
(564, '2022-10-09', '07:29:42', 24, 70.5),
(565, '2022-10-09', '07:30:42', 24.1, 69.9),
(566, '2022-10-09', '07:31:42', 24.1, 70),
(567, '2022-10-09', '07:32:42', 24.1, 69.6),
(568, '2022-10-09', '07:33:42', 24.1, 69.7),
(569, '2022-10-09', '07:34:42', 24, 69.5),
(570, '2022-10-09', '07:35:42', 23.9, 69.4),
(571, '2022-10-09', '07:36:42', 23.9, 69.5),
(572, '2022-10-09', '07:37:43', 24, 69.4),
(573, '2022-10-09', '07:38:42', 24.1, 69.1),
(574, '2022-10-09', '07:39:42', 24, 69.2),
(575, '2022-10-09', '07:40:42', 23.9, 69.3),
(576, '2022-10-09', '07:41:42', 23.9, 69.3),
(577, '2022-10-09', '07:42:42', 24, 69.4),
(578, '2022-10-09', '07:43:42', 24.1, 69.3),
(579, '2022-10-09', '07:44:42', 24.2, 69.1),
(580, '2022-10-09', '07:45:42', 24.3, 68.8),
(581, '2022-10-09', '07:46:42', 24.3, 68.4),
(582, '2022-10-09', '07:47:42', 24.4, 68.2),
(583, '2022-10-09', '07:48:42', 24.5, 67.9),
(584, '2022-10-09', '07:49:42', 24.7, 67.6),
(585, '2022-10-09', '07:50:42', 24.6, 67.5),
(586, '2022-10-09', '07:51:42', 24.7, 67.3),
(587, '2022-10-09', '07:52:42', 24.7, 67.1),
(588, '2022-10-09', '07:53:42', 24.6, 67),
(589, '2022-10-09', '07:54:42', 24.7, 67.1),
(590, '2022-10-09', '07:55:42', 24.8, 67),
(591, '2022-10-09', '07:56:42', 24.9, 66.5),
(592, '2022-10-09', '07:57:42', 24.9, 66.5),
(593, '2022-10-09', '07:58:42', 25.1, 65.9),
(594, '2022-10-09', '07:59:42', 25.2, 65.8),
(595, '2022-10-09', '08:00:42', 25.2, 65.5),
(596, '2022-10-09', '08:01:42', 25.2, 65.4),
(597, '2022-10-09', '08:02:42', 25.4, 64.9),
(598, '2022-10-09', '08:03:42', 25.5, 64.5),
(599, '2022-10-09', '08:04:42', 25.6, 64.4),
(600, '2022-10-09', '08:05:42', 25.7, 64.1),
(601, '2022-10-09', '08:06:42', 25.7, 64),
(602, '2022-10-09', '08:07:42', 25.8, 64),
(603, '2022-10-09', '08:08:42', 25.8, 63.6),
(604, '2022-10-09', '08:09:42', 25.8, 63.5),
(605, '2022-10-09', '08:10:42', 25.8, 63.7),
(606, '2022-10-09', '08:11:42', 25.9, 63.3),
(607, '2022-10-09', '08:12:42', 25.9, 63.2),
(608, '2022-10-09', '08:13:42', 26, 63.1),
(609, '2022-10-09', '08:14:42', 26.1, 63),
(610, '2022-10-09', '08:15:42', 26.1, 62.5),
(611, '2022-10-09', '08:16:42', 26.1, 62.3),
(612, '2022-10-09', '08:17:42', 25.9, 62.6),
(613, '2022-10-09', '08:18:42', 25.9, 62.6),
(614, '2022-10-09', '08:19:42', 25.9, 62.7),
(615, '2022-10-09', '08:20:42', 26.1, 62.8),
(616, '2022-10-09', '08:21:42', 26.1, 62.5),
(617, '2022-10-09', '08:22:42', 26.1, 62.4),
(618, '2022-10-09', '08:23:42', 26.2, 62.5),
(619, '2022-10-09', '08:24:42', 26.3, 62.1),
(620, '2022-10-09', '08:25:42', 26.2, 62.1),
(621, '2022-10-09', '08:26:42', 26.2, 62.2),
(622, '2022-10-09', '08:27:42', 26.3, 62.2),
(623, '2022-10-09', '08:28:42', 26.4, 62),
(624, '2022-10-09', '08:29:42', 26.5, 61.8),
(625, '2022-10-09', '08:30:42', 26.5, 61.6),
(626, '2022-10-09', '08:31:42', 26.5, 61.2),
(627, '2022-10-09', '08:32:42', 26.5, 61.2),
(628, '2022-10-09', '08:33:42', 26.6, 60.8),
(629, '2022-10-09', '08:34:42', 26.6, 60.5),
(630, '2022-10-09', '08:35:42', 26.6, 60.8),
(631, '2022-10-09', '08:36:42', 26.6, 60.9),
(632, '2022-10-09', '08:37:42', 26.7, 60.7),
(633, '2022-10-09', '08:38:42', 26.8, 60.6),
(634, '2022-10-09', '08:39:42', 26.9, 60.1),
(635, '2022-10-09', '08:40:42', 27, 60),
(636, '2022-10-09', '08:41:42', 26.9, 60),
(637, '2022-10-09', '08:42:42', 27, 59.9),
(638, '2022-10-09', '08:43:42', 27, 59.9),
(639, '2022-10-09', '08:44:42', 27, 59.6),
(640, '2022-10-09', '08:45:42', 27.1, 59.9),
(641, '2022-10-09', '08:46:42', 27, 59.9),
(642, '2022-10-09', '08:47:42', 27, 60.1),
(643, '2022-10-09', '08:48:42', 27, 59.8),
(644, '2022-10-09', '08:49:42', 27.1, 59.7),
(645, '2022-10-09', '08:50:42', 27.1, 59.6),
(646, '2022-10-09', '08:51:42', 27.1, 59.6),
(647, '2022-10-09', '08:52:42', 27.1, 59.6),
(648, '2022-10-09', '08:53:41', 27.2, 59.7),
(649, '2022-10-09', '08:54:42', 27.2, 59.7),
(650, '2022-10-09', '08:55:42', 27.3, 59.6),
(651, '2022-10-09', '08:56:42', 27.3, 59.4),
(652, '2022-10-09', '08:57:42', 27.3, 59.5),
(653, '2022-10-09', '08:58:42', 27.4, 59.3),
(654, '2022-10-09', '08:59:42', 27.3, 59.2),
(655, '2022-10-09', '09:00:42', 27.4, 59.1),
(656, '2022-10-09', '09:01:42', 27.5, 59),
(657, '2022-10-09', '09:02:42', 27.5, 58.7),
(658, '2022-10-09', '09:03:42', 27.5, 58.8),
(659, '2022-10-09', '09:04:42', 27.5, 58.9),
(660, '2022-10-09', '09:05:42', 27.5, 58.9),
(661, '2022-10-09', '09:06:42', 27.5, 58.9),
(662, '2022-10-09', '09:07:42', 27.4, 59),
(663, '2022-10-09', '09:08:42', 27.5, 59.1),
(664, '2022-10-09', '09:09:42', 27.6, 58.6),
(665, '2022-10-09', '09:10:42', 27.6, 58.3),
(666, '2022-10-09', '09:11:42', 27.7, 58.2),
(667, '2022-10-09', '09:12:42', 27.7, 58.3),
(668, '2022-10-09', '09:13:42', 27.6, 58.6),
(669, '2022-10-09', '09:14:42', 27.6, 58.7),
(670, '2022-10-09', '09:15:42', 27.5, 58.6),
(671, '2022-10-09', '09:16:42', 27.5, 58.7),
(672, '2022-10-09', '09:17:42', 27.4, 58.8),
(673, '2022-10-09', '09:18:42', 27.4, 59),
(674, '2022-10-09', '09:19:42', 27.4, 58.9),
(675, '2022-10-09', '09:20:42', 27.4, 59),
(676, '2022-10-09', '09:21:42', 27.3, 58.8),
(677, '2022-10-09', '09:22:42', 27.3, 59),
(678, '2022-10-09', '09:23:42', 27.3, 59.2),
(679, '2022-10-09', '09:24:42', 27.2, 59.3),
(680, '2022-10-09', '09:25:42', 27.2, 59.4),
(681, '2022-10-09', '09:26:42', 27.1, 59.4),
(682, '2022-10-09', '09:27:42', 27.1, 59.6),
(683, '2022-10-09', '09:28:42', 27.1, 59.5),
(684, '2022-10-09', '09:29:42', 27.1, 59.2),
(685, '2022-10-09', '09:30:42', 27.1, 59.4),
(686, '2022-10-09', '09:31:42', 27, 59.5),
(687, '2022-10-09', '09:32:42', 27.1, 59.6),
(688, '2022-10-09', '09:33:42', 27.1, 59.8),
(689, '2022-10-09', '09:34:42', 27.1, 59.6),
(690, '2022-10-09', '09:35:42', 27.1, 59.6),
(691, '2022-10-09', '09:36:42', 27.1, 59.3),
(692, '2022-10-09', '09:37:42', 27.1, 59.3),
(693, '2022-10-09', '09:38:42', 27.1, 59.5),
(694, '2022-10-09', '09:39:42', 27.1, 59.4),
(695, '2022-10-09', '09:40:42', 27.1, 59.3),
(696, '2022-10-09', '09:41:42', 27.1, 59.7),
(697, '2022-10-09', '09:42:42', 27, 59.5),
(698, '2022-10-09', '09:43:42', 27, 59.5),
(699, '2022-10-09', '09:44:42', 27, 59.4),
(700, '2022-10-09', '09:45:42', 27.1, 59.4),
(701, '2022-10-09', '09:46:42', 27.1, 59.5),
(702, '2022-10-09', '09:47:42', 27.1, 59.6),
(703, '2022-10-09', '09:48:42', 27.1, 59.6),
(704, '2022-10-09', '09:49:42', 27, 59.6),
(705, '2022-10-09', '09:50:42', 27, 59.6),
(706, '2022-10-09', '09:51:42', 27, 59.6),
(707, '2022-10-09', '09:52:42', 27, 59.8),
(708, '2022-10-09', '09:53:42', 27, 60),
(709, '2022-10-09', '09:54:42', 27, 59.9),
(710, '2022-10-09', '09:55:42', 27, 59.7),
(711, '2022-10-09', '09:56:42', 27, 60.1),
(712, '2022-10-09', '09:57:42', 27, 60.1),
(713, '2022-10-09', '09:58:42', 26.9, 60.1),
(714, '2022-10-09', '09:59:42', 26.9, 60.2),
(715, '2022-10-09', '10:00:42', 26.9, 60.7),
(716, '2022-10-09', '10:01:42', 26.8, 60.8),
(717, '2022-10-09', '10:02:42', 26.8, 60.7),
(718, '2022-10-09', '10:03:42', 26.9, 60.6),
(719, '2022-10-09', '10:04:42', 26.9, 60.2),
(720, '2022-10-09', '10:05:42', 26.9, 60),
(721, '2022-10-09', '10:06:42', 26.8, 60),
(722, '2022-10-09', '10:07:42', 26.8, 60),
(723, '2022-10-09', '10:08:42', 26.8, 60.5),
(724, '2022-10-09', '10:09:42', 26.8, 60.6),
(725, '2022-10-09', '10:10:42', 26.7, 60.7),
(726, '2022-10-09', '10:11:42', 26.8, 61),
(727, '2022-10-09', '10:12:42', 26.8, 60.6),
(728, '2022-10-09', '10:13:42', 26.8, 60.5),
(729, '2022-10-09', '10:14:42', 26.8, 60.4),
(730, '2022-10-09', '10:15:42', 26.8, 60.5),
(731, '2022-10-09', '10:16:42', 26.8, 60.2),
(732, '2022-10-09', '10:17:42', 26.8, 60.7),
(733, '2022-10-09', '10:18:42', 26.9, 61.7),
(734, '2022-10-09', '10:19:42', 26.9, 61.2),
(735, '2022-10-09', '10:20:42', 27, 60.5),
(736, '2022-10-09', '10:21:42', 27, 60.2),
(737, '2022-10-09', '10:22:42', 27, 60.5),
(738, '2022-10-09', '10:23:42', 26.9, 60.3),
(739, '2022-10-09', '10:24:42', 27, 60.2),
(740, '2022-10-09', '10:25:42', 27.1, 59.9),
(741, '2022-10-09', '10:26:42', 27.2, 59.9),
(742, '2022-10-09', '10:27:42', 27.2, 59.8),
(743, '2022-10-09', '10:28:42', 27.3, 59.6),
(744, '2022-10-09', '10:29:42', 27.4, 59.4),
(745, '2022-10-09', '10:30:42', 27.3, 59.5),
(746, '2022-10-09', '10:31:42', 27.3, 59.5),
(747, '2022-10-09', '10:32:42', 27.2, 59.5),
(748, '2022-10-09', '10:33:42', 27.2, 59.6),
(749, '2022-10-09', '10:34:42', 27.2, 59.3),
(750, '2022-10-09', '10:35:42', 27.2, 59.3),
(751, '2022-10-09', '10:36:42', 27.3, 59.5),
(752, '2022-10-09', '10:37:42', 27.3, 59.5),
(753, '2022-10-09', '10:38:42', 27.3, 59.5),
(754, '2022-10-09', '10:39:42', 27.3, 59.5),
(755, '2022-10-09', '10:40:42', 27.4, 59.6),
(756, '2022-10-09', '10:41:42', 27.4, 60.7),
(757, '2022-10-09', '10:42:42', 27.4, 60.3),
(758, '2022-10-09', '10:43:42', 27.5, 59.8),
(759, '2022-10-09', '10:44:42', 27.4, 59.6),
(760, '2022-10-09', '10:45:42', 27.5, 59.7),
(761, '2022-10-09', '10:46:42', 27.6, 59.4),
(762, '2022-10-09', '10:47:42', 27.5, 58.9),
(763, '2022-10-09', '10:48:42', 27.5, 59.3),
(764, '2022-10-09', '10:49:42', 27.6, 59.4),
(765, '2022-10-09', '10:50:42', 27.7, 59.1),
(766, '2022-10-09', '10:51:42', 27.9, 58.6),
(767, '2022-10-09', '10:52:42', 27.9, 58.4),
(768, '2022-10-09', '10:53:42', 27.9, 58.3),
(769, '2022-10-09', '10:54:42', 28, 58.1),
(770, '2022-10-09', '10:55:42', 28.1, 58.2),
(771, '2022-10-09', '10:56:42', 28, 58.3),
(772, '2022-10-09', '10:57:42', 28, 58.2),
(773, '2022-10-09', '10:58:42', 28, 58.4),
(774, '2022-10-09', '10:59:42', 28, 58.4),
(775, '2022-10-09', '11:00:42', 28, 58.2),
(776, '2022-10-09', '11:01:42', 28.1, 57.9),
(777, '2022-10-09', '11:02:42', 28.1, 57.8),
(778, '2022-10-09', '11:03:42', 28.2, 57.8),
(779, '2022-10-09', '11:04:42', 28.1, 57.8),
(780, '2022-10-09', '11:05:42', 28.1, 57.9),
(781, '2022-10-09', '11:06:42', 28.2, 58),
(782, '2022-10-09', '11:07:42', 28.2, 58.3),
(783, '2022-10-09', '11:08:42', 28.2, 58.2),
(784, '2022-10-09', '11:09:42', 28.2, 58.1),
(785, '2022-10-09', '11:10:42', 28.2, 58.2),
(786, '2022-10-09', '11:11:42', 28.2, 57.9),
(787, '2022-10-09', '11:12:42', 28.1, 58.3),
(788, '2022-10-09', '11:13:42', 28.1, 57.6),
(789, '2022-10-09', '11:14:42', 28, 58.3),
(790, '2022-10-09', '11:15:42', 28.1, 58.3),
(791, '2022-10-09', '11:16:42', 28.1, 58.4),
(792, '2022-10-09', '11:17:42', 28.1, 58.3),
(793, '2022-10-09', '11:18:42', 28.1, 58.2),
(794, '2022-10-09', '11:19:42', 28.1, 58.3),
(795, '2022-10-09', '11:20:42', 28.1, 58.2),
(796, '2022-10-09', '11:21:42', 28.1, 58.2),
(797, '2022-10-09', '11:22:42', 28.1, 58.4),
(798, '2022-10-09', '11:23:42', 28, 58.3),
(799, '2022-10-09', '11:24:42', 28.1, 58.6),
(800, '2022-10-09', '11:25:42', 28, 58.3),
(801, '2022-10-09', '11:26:42', 28, 58.4),
(802, '2022-10-09', '11:27:42', 28, 58.4),
(803, '2022-10-09', '11:28:42', 28, 58.6),
(804, '2022-10-09', '11:29:42', 28, 58.7),
(805, '2022-10-09', '11:30:42', 28, 58.7),
(806, '2022-10-09', '11:31:42', 27.9, 59.1),
(807, '2022-10-09', '11:32:42', 27.8, 59),
(808, '2022-10-09', '11:33:42', 27.8, 59.2),
(809, '2022-10-09', '11:34:42', 27.7, 59.3),
(810, '2022-10-09', '11:35:42', 27.8, 59.3),
(811, '2022-10-09', '11:36:42', 27.8, 58.9),
(812, '2022-10-09', '11:37:42', 27.8, 59.8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `sensores`
--
ALTER TABLE `sensores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sensores`
--
ALTER TABLE `sensores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
