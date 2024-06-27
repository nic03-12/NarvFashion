-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Jun-2024 às 15:22
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `narv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `cod` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`cod`, `nome`, `senha`, `login`, `email`, `foto`) VALUES
(12, 'Nicolas', 'adm123', 'Nicolas', 'a@a', 'semfoto.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `preco` varchar(13) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cod`, `nome`, `id`, `foto`, `tipo`, `preco`, `quantidade`, `descricao`) VALUES
(9, 'Regata', '157', 'produto-799de04a07031e5942439e297f80ba5d.jpg', 'Masculino', 'R$100', 20, NULL),
(10, 'Calça rasgada', '001', 'produto-7bbe36aaeed2957a72d77526e4ef5b85.jpg', 'Maculino', 'R$120', 20, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod`, `nome`, `senha`, `login`, `email`, `foto`) VALUES
(50, 'Murilo', 'muanjos123', 'Murilo', 'murilo_anjs@gmail.com', 'usuario-831c51223119fb374e4cd5d624d6d721.png'),
(51, 'Vitoria', 'vitoria123', 'Vitoria', 'a@', 'semfoto.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
