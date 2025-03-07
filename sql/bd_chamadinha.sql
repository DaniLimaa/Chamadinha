-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/03/2025 às 14:59
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_chamadinha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id`, `nome`) VALUES
(3, 'Daniel Camargo de Lima '),
(4, 'David Gabriel Tarley dos Santos'),
(5, 'Gabriel de Oliveira Domingues Moraes'),
(7, 'Josue Orellana Montenegro'),
(8, 'Kenya Banach Chrominski Jaques'),
(9, 'Leandro Piai Barreto'),
(10, 'Marcia Gisseli Mamani Condarco'),
(11, 'Matheus Dantas de Sousa'),
(12, 'Matheus David'),
(13, 'Matheus Guida'),
(14, 'Matheus Leonardo Ismarsi'),
(15, 'Ryan Lima Germano'),
(18, 'Vítor Frazatto Barduco'),
(19, 'Walmir Antonio Ribeiro'),
(35, 'carlao'),
(36, 'roberto2222222');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_info_alunos`
--

CREATE TABLE `tb_info_alunos` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `frequente` tinyint(1) DEFAULT NULL,
  `id_alunos` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_info_alunos`
--

INSERT INTO `tb_info_alunos` (`id`, `telefone`, `email`, `nascimento`, `frequente`, `id_alunos`, `img`) VALUES
(3, '55555555555', 'Daniel@gmail.com', '2008-01-09', 1, 3, 'daniel.png'),
(4, '22222222222', 'David8@gmail.com', '2001-09-08', 1, 4, 'david.png'),
(5, '14413046245', 'Gabriel@gmail.com', '2007-05-05', 0, 5, ''),
(6, '14133216964', 'Gustavo@gmail.com', '2008-01-31', 1, 6, 'gustavo.png'),
(7, '12632477002', 'Josue @gmail.com', '2006-01-19', 1, 7, 'josue.png'),
(8, '16773431839', 'Kenya@gmail.com', '1994-02-17', 1, 8, 'kenya.png'),
(9, '11440797994', 'Leandro@gmail.com', '2006-05-04', 1, 9, 'leandro.png'),
(10, '14073968091', 'Marcia@gmail.com', '2000-05-07', 1, 10, 'marcia.png'),
(11, '13974976536', 'MatheusDantas@gmail.com', '1980-07-06', 1, 11, 'matheus-dantas.png'),
(12, '12143616002', 'MatheusDavid@gmail.com', '2007-04-27', 1, 12, 'matheus-david.png'),
(13, '18898381340', 'MatheusGuida@gmail.com', '2004-01-02', 1, 13, 'matheus-guida.png'),
(14, '18262215541', 'MatheusIsmarsi@gmail.com', '2007-02-22', 1, 14, 'matheus-ismarsi.png'),
(15, '23333333333', 'Ryan@gmail.com', '2008-03-02', 1, 15, 'ryan.png'),
(18, '13409792391', 'Vítor@gmail.com', '2005-08-22', 1, 18, 'vitor.png'),
(19, '13157565466', 'Walmir@gmail.com', '1994-04-29', 1, 19, 'walmir.png'),
(32, '1932567415', 'carlao@gamil.com', '2023-01-02', 0, 35, 'pytholino.jpg'),
(33, '222222222', 'roberto@gmail.com', '2014-10-02', 0, 36, '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_info_alunos`
--
ALTER TABLE `tb_info_alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `tb_info_alunos`
--
ALTER TABLE `tb_info_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
