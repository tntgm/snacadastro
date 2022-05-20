-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2022 às 21:39
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `form-cad`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_cadastro`
--

CREATE TABLE `tab_cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cnh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `empresa` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `motivo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `autorizadopor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data_visita` date NOT NULL,
  `Hora_Entrada` time NOT NULL,
  `integracao` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `data_integ` date NOT NULL,
  `usoepis` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `observ` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tab_cadastro`
--

INSERT INTO `tab_cadastro` (`id`, `nome`, `rg`, `cnh`, `empresa`, `foto`, `motivo`, `autorizadopor`, `data_visita`, `Hora_Entrada`, `integracao`, `data_integ`, `usoepis`, `observ`, `login`, `senha`) VALUES
(9, 'Antonio Oliveira', '1212122', '', 'Copor Inc', '', '', '', '2022-03-16', '00:00:00', 'nao', '2022-03-16', '', 'oi oi oi oi', 'antonio.oliveira', '123'),
(11, 'Andeson Souza', '22.890.890-4', '', 'Nova Amipar', '', '', '', '2022-03-28', '00:00:00', 'sim', '2022-03-28', '', 'Fez a integração ', NULL, NULL),
(12, 'Leonardo Silva', '23.456.778-1', '', '4R', '', '', '', '2022-03-28', '00:00:00', 'sim', '2022-03-28', '', 'Entrada autorizada', NULL, NULL),
(14, 'Anna Beatriz', '12.333.444-4', '', 'Itapevi Center', '', '', '', '2022-03-28', '00:00:00', 'sim', '2022-03-28', '', 'Fez integração normalmente', NULL, NULL),
(15, 'Weber Mendes', '22.234.567-2', '', 'Soluções Nova', '', '', '', '2022-03-26', '00:00:00', 'sim', '2022-03-26', '', 'Entrou com o veiculo Lander Mitsubish', NULL, NULL),
(17, 'Will Smith', '12.234.456-0', '', 'Oscar 2022', '', '', '', '2022-03-28', '00:00:00', 'nao', '2022-03-28', '', 'Teste teste', NULL, NULL),
(19, 'Luciana Silva', '22.222.222-2', '', 'Global Corp', '', '', '', '2022-03-29', '00:00:00', 'sim', '2022-03-29', '', 'Visita técnica', NULL, NULL),
(20, 'Rafael Morais', '1234567890', '', 'Almox Corp', '', '', '', '2022-03-30', '00:00:00', 'sim', '2022-03-30', '', 'Visitante premium', NULL, NULL),
(21, 'Michele Lima', '550540520', '', 'Sistema Nova Ambiental ', '', '', '', '2021-11-18', '00:00:00', 'sim', '2021-11-18', '', 'É uma honra pertencer a SNA', 'michele.lima', '1234'),
(22, 'Erick', '1818004', '', 'Metalurgica Royal', '', '', '', '2022-03-20', '00:00:00', 'nao', '2022-03-20', '', 'A SNA recebe bens os visitantes', NULL, NULL),
(23, 'Adrian de Freitas Lima', '16042017', '', 'Michele Corações ', '', '', '', '2017-04-16', '00:00:00', 'sim', '2017-04-16', '', 'A SNA é Revolucionária', NULL, NULL),
(24, 'Larissa Duarte', '30032022', '', 'SNA', '', '', '', '2022-03-30', '00:00:00', 'sim', '2022-03-30', '', 'A SNA tem visão ampliada ao Futuro', NULL, NULL),
(25, 'Ricardo Sanches', '12121212', '', 'Four Sanches', '', '', '', '2022-04-01', '00:00:00', 'sim', '2022-04-01', '', 'teste teste teste teste', NULL, NULL),
(26, 'Bill Gates', '3232323233', '', 'Microsoft', '', '', '', '2022-03-31', '00:00:00', 'sim', '2022-03-31', '', 'testes testes testes testes', NULL, NULL),
(27, 'teste', '123', '', '123', '', '', '', '2022-04-08', '00:00:00', 'sim', '2022-04-08', '', '123', 'teste', 'teste'),
(31, 'Aldair Souza', '333444555666', '', 'Sistema Nova Ambiental ', '', '', '', '2021-11-18', '00:00:00', 'sim', '2021-11-18', '', 'texto de teste texto de teste', NULL, NULL),
(34, 'Matheus Souza', '121212', '', 'Transportadora Rio Sul', '', '', '', '2022-04-20', '00:00:00', 'sim', '2022-04-20', '', 'quesitos completos', NULL, NULL),
(35, 'Antonio Pedro', '33333333', '', 'Sanches', '', '', '', '2022-04-20', '00:00:00', 'sim', '2022-04-20', '', 'rerererererr', NULL, NULL),
(36, 'Silvio Santos', '123456', '', 'Sbt', '', '', '', '2022-04-20', '00:00:00', 'sim', '2022-04-20', '', 'show de calouros', NULL, NULL),
(38, 'Leonardo Moraes', '22.333.444-4', '', 'SGI Sna', '', '', '', '2022-04-26', '00:00:00', 'sim', '2022-04-26', '', 'Auditoria interna ', 'leonardo.moraes', '1234'),
(39, 'Roger Guedes', '22.222.222-99', '', 'Itaquera City', '', '', '', '2022-05-10', '00:00:00', 'sim', '2022-05-10', '', 'Visitar oficina de caminhões', NULL, NULL),
(40, 'Anna Maia', '22.333.444', '', 'Asus', '', 'visita', 'José das Terras', '2022-05-10', '00:00:00', 'sim', '2022-05-10', 'sim', 'teste', 'bia', '123'),
(41, 'Yasmin Maia', '33.444.555', '', 'Harry Potter', '', 'prestserv', 'Gisa', '2022-05-10', '00:00:00', 'sim', '2022-05-10', 'sim', 'testestestes', NULL, NULL),
(42, 'toninho filho', '123456', '', 'nova ambiental', '', 'prestserv', 'mille', '2022-05-09', '00:00:00', 'sim', '2022-05-09', 'nao', 'eu linda', NULL, NULL),
(43, 'Giselma maia santos', '54321678', '', 'camargo', '', 'descarte', 'maria', '2022-05-10', '00:00:00', 'nao', '2022-05-10', 'sim', 'saida', NULL, NULL),
(44, 'giovanna', '14724', '', 'stranger thingr toninha', '', 'visita', 'yasmin', '2022-05-09', '00:00:00', 'nao', '2022-05-09', 'sim', 'anna', NULL, NULL),
(45, 'João Mineiro', '22.333.444', '1234567890', 'Som Livre', '', 'visita', 'Marciano', '2022-05-11', '00:00:00', 'sim', '2022-05-11', 'sim', 'teste teste teste teste', NULL, NULL),
(46, 'Fausto Silva', '33.444.555', '987654321', 'Embraer', '', 'visita', 'Elias', '2022-05-11', '00:00:00', 'sim', '2022-05-11', 'sim', 'Visita técnica para averigação interna.', NULL, NULL),
(47, 'Renato Russo', '22.333.444', '444555666777', 'Legião Urbana', 'RenatoRusso.PNG', 'visita', 'Marcos', '2022-05-11', '00:00:00', 'sim', '2022-05-11', 'sim', 'Visita técnica interna', NULL, NULL),
(48, 'José Brito', '33.333.333', '22.222.222', 'Cacau show', 'Sem título.png', 'visita', 'Salvador Dali', '2022-05-19', '00:00:00', 'sim', '2022-05-19', 'sim', 'Visita técnica', NULL, NULL),
(49, 'Matheus Grow', '33.444.555', '12345678', 'Grows SA', 'CartolaFC.PNG', 'descarte', 'Rene Benedito', '2022-05-19', '00:00:00', 'sim', '2022-05-19', 'sim', 'Visita técnica de averiguação ', NULL, NULL),
(50, 'Elon Musk', '44555666', '1234567', 'Tesla', 'Elonmuskr.PNG', 'visita', 'Tony Stark', '2022-05-20', '00:00:00', 'sim', '2022-05-20', 'sim', 'Visita', NULL, NULL),
(51, 'Antonio Oliveira', '2233445566', '22334455', 'TNT', 'WIN_20220520_00_07_33_Pro.jpg', 'prestserv', 'Silvio Santos', '2022-05-20', '00:00:00', 'sim', '2022-05-20', 'nao', 'Entrega de sedex', NULL, NULL),
(52, 'Armando Kallotte', '171123456', '1234567', 'Cilda.com', 'WIN_20220520_09_58_31_Pro.jpg', 'descarte', 'Marcos', '2022-05-20', '00:00:00', 'sim', '2022-05-19', 'sim', 'Descarte de residuos liquidos e gasosos', NULL, NULL),
(53, 'Manoel Lisboa', '33.333.333', '123456', 'Porto S/A', 'WIN_20220520_12_58_11_Pro.jpg', 'visita', 'Andre', '2022-05-20', '12:58:00', 'sim', '2022-05-20', 'sim', 'Visita de rotina', NULL, NULL),
(55, 'Fabio Assunção Aguiar', '33.444.444', '987654321', 'Marmotas Refeições', 'WIN_20220520_15_38_18_Pro.jpg', 'prestserv', 'Mayara - Comercial', '2022-05-20', '15:43:00', 'sim', '2022-05-20', 'nao', 'Entrega de refeição ', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_cadastro`
--
ALTER TABLE `tab_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_cadastro`
--
ALTER TABLE `tab_cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
