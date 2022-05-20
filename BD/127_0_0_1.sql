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
CREATE DATABASE IF NOT EXISTS `form-cad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `form-cad`;

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
--
-- Banco de dados: `formulario-cad`
--
CREATE DATABASE IF NOT EXISTS `formulario-cad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
USE `formulario-cad`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(110) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sexo` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `endereco` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `telefone`, `sexo`, `data_nasc`, `cidade`, `estado`, `endereco`) VALUES
(1, 'weewewewe', 'ewewewwe', 'ewewewewe', 'masculino', '2022-03-16', 'ewewew', 'ewewew', 'ewewew'),
(2, 'Samuel Samuc', 'samuel@gmail.com', '2121212121', 'masculino', '1999-01-01', 'itapevi', 'SP', 'Rua 2'),
(3, 'Toninho JOF', 'toninho@hotmail.com', '21212121', 'masculino', '1960-12-12', 'Jaú', 'SP', 'Rua Pereira da Mota, 12'),
(4, 'AndersonSilva', 'anderson@novaambiental.com.br', '11 12345678', 'masculino', '2022-02-27', 'Bauru', 'São Paulo', 'Rua 7'),
(5, 'AndersonSilva', 'anderson@novaambiental.com.br', '11 12345678', 'masculino', '2022-02-27', 'Bauru', 'São Paulo', 'Rua 7'),
(6, 'AndersonSilva', 'anderson@novaambiental.com.br', '11 12345678', 'masculino', '2022-02-27', 'Bauru', 'São Paulo', 'Rua 7'),
(7, 'Leonardo Souza', 'leonardo@hotmail.com', '11 2334 3434', 'masculino', '2022-03-10', 'Itu', 'São Paulo - SP', 'Rua dos 8');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-03-23 00:01:30', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
