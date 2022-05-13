-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Abr-2022 às 14:26
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
  `empresa` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `integracao` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `data_integ` date NOT NULL,
  `observ` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tab_cadastro`
--

INSERT INTO `tab_cadastro` (`id`, `nome`, `rg`, `empresa`, `integracao`, `data_integ`, `observ`, `login`, `senha`) VALUES
(9, 'Antonio Oliveira', '1212122', 'Copor Inc', 'nao', '2022-03-16', 'oi oi oi oi', 'antonio.oliveira', '123'),
(10, 'Andeson Souza', '22.890.890-4', 'Nova Amipar', 'sim', '2022-03-28', 'Fez a integração ', NULL, NULL),
(11, 'Andeson Souza', '22.890.890-4', 'Nova Amipar', 'sim', '2022-03-28', 'Fez a integração ', NULL, NULL),
(12, 'Leonardo Silva', '23.456.778-1', '4R', 'sim', '2022-03-28', 'Entrada autorizada', NULL, NULL),
(13, 'Julyerson', '23.345.456-2', 'Inter Corp', 'nao', '2022-03-22', 'rererererer', NULL, NULL),
(14, 'Anna Beatriz', '12.333.444-4', 'Itapevi Center', 'sim', '2022-03-28', 'Fez integração normalmente', NULL, NULL),
(15, 'Weber Mendes', '22.234.567-2', 'Soluções Nova', 'sim', '2022-03-26', 'Entrou com o veiculo Lander Mitsubish', NULL, NULL),
(17, 'Will Smith', '12.234.456-0', 'Oscar 2022', 'nao', '2022-03-28', 'Teste teste', NULL, NULL),
(18, 'Cris Rock', '12.1212121212.', 'Tapa na Lata', 'sim', '2022-03-27', 'Caminhão de placa tal', NULL, NULL),
(19, 'Luciana Silva', '22.222.222-2', 'Global Corp', 'sim', '2022-03-29', 'Visita técnica', NULL, NULL),
(20, 'Rafael Morais', '1234567890', 'Almox Corp', 'sim', '2022-03-30', 'Visitante premium', NULL, NULL),
(21, 'Michele Lima', '550540520', 'Sistema Nova Ambiental ', 'sim', '2021-11-18', 'É uma honra pertencer a SNA', NULL, NULL),
(22, 'Erick', '1818004', 'Metalurgica Royal', 'nao', '2022-03-20', 'A SNA recebe bens os visitantes', NULL, NULL),
(23, 'Adrian de Freitas Lima', '16042017', 'Michele Corações ', 'sim', '2017-04-16', 'A SNA é Revolucionária', NULL, NULL),
(24, 'Larissa Duarte', '30032022', 'SNA', 'sim', '2022-03-30', 'A SNA tem visão ampliada ao Futuro', NULL, NULL),
(25, 'Ricardo Sanches', '12121212', 'Four Sanches', 'sim', '2022-04-01', 'teste teste teste teste', NULL, NULL),
(26, 'Bill Gates', '3232323233', 'Microsoft', 'sim', '2022-03-31', 'testes testes testes testes', NULL, NULL),
(27, 'teste', '123', '123', 'sim', '2022-04-08', '123', 'teste', 'teste'),
(31, 'Aldair Souza', '333444555666', 'Sistema Nova Ambiental ', 'sim', '2021-11-18', 'texto de teste texto de teste', NULL, NULL),
(34, 'Matheus Souza', '121212', 'Transportadora Rio Sul', 'sim', '2022-04-20', 'quesitos completos', NULL, NULL),
(35, 'Antonio Pedro', '33333333', 'Sanches', 'sim', '2022-04-20', 'rerererererr', NULL, NULL),
(36, 'Silvio Santos', '123456', 'Sbt', 'sim', '2022-04-20', 'show de calouros', NULL, NULL),
(37, 'Jô Soares', '123456', 'Globo', 'sim', '2022-04-20', 'show do gordo', NULL, NULL),
(38, 'Leonardo Moraes', '22.333.444-4', 'SGI Sna', 'sim', '2022-04-26', 'Auditoria interna ', 'leonardo.moraes', '1234');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
