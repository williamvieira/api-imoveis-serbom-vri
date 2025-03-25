-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25/03/2025 às 10:25
-- Versão do servidor: 10.11.10-MariaDB
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u291561282_imoveis`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aguas`
--

CREATE TABLE `aguas` (
  `id` int(11) NOT NULL,
  `cod` text DEFAULT NULL,
  `cod_matricula` text NOT NULL,
  `apelido` text DEFAULT NULL,
  `local` text DEFAULT NULL,
  `numero_relogio` text DEFAULT NULL,
  `sub_numero_relogio` text DEFAULT NULL,
  `categoria_consumo` text DEFAULT NULL,
  `nome_proprietario` text DEFAULT NULL,
  `cpf_cnpj_proprietario` text DEFAULT NULL,
  `mesmo_proprietario_matricula` text DEFAULT '0',
  `nome_titular_consumidor` text DEFAULT NULL,
  `cpf_cnpj_titular_consumidor` text DEFAULT NULL,
  `mesmo_titular_usuario` text DEFAULT '0',
  `status` text DEFAULT NULL,
  `debitos_aberto` text DEFAULT '0',
  `valor_debitos_aberto` text DEFAULT NULL,
  `mes_ultimo_competencia` text DEFAULT NULL,
  `cadastro_atualizado` text DEFAULT '0',
  `observacoes` text DEFAULT NULL,
  `matriculasSelecionadas` longtext DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `aguas`
--

INSERT INTO `aguas` (`id`, `cod`, `cod_matricula`, `apelido`, `local`, `numero_relogio`, `sub_numero_relogio`, `categoria_consumo`, `nome_proprietario`, `cpf_cnpj_proprietario`, `mesmo_proprietario_matricula`, `nome_titular_consumidor`, `cpf_cnpj_titular_consumidor`, `mesmo_titular_usuario`, `status`, `debitos_aberto`, `valor_debitos_aberto`, `mes_ultimo_competencia`, `cadastro_atualizado`, `observacoes`, `matriculasSelecionadas`, `date_insert`, `date_update`) VALUES
(56, 'RA56', '', 'teste', '[]', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '[\"MT3361 - Teste\"]', '2025-03-20 15:41:57', '2025-03-20 15:41:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cartorios`
--

CREATE TABLE `cartorios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cartorios`
--

INSERT INTO `cartorios` (`id`, `nome`) VALUES
(15, 'Registro Imóveis Campinas 3º'),
(16, 'Registro Imóveis Guarujá'),
(17, 'Registro Imóveis Itapeva'),
(18, 'Registro Imóveis São Carlos'),
(14, 'Registro Imóveis Valinhos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`) VALUES
(38, 'Campinas'),
(39, 'Guarujá'),
(40, 'Itapeva/Buri'),
(41, 'São Carlos'),
(35, 'Valinhos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `GED`
--

CREATE TABLE `GED` (
  `id` int(11) NOT NULL,
  `module` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `action` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `field_name` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `register_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='6';

--
-- Despejando dados para a tabela `GED`
--

INSERT INTO `GED` (`id`, `module`, `filename`, `path`, `username`, `action`, `date`, `field_name`, `user_id`, `user_name`, `register_id`) VALUES
(3, '/matriculas-de-imoveis', '20250227_182002_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250227_182002_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-02-27 18:20:02', 'Matrícula AE18', '2', 'Antonio', 'MT1350'),
(5, '/matriculas-de-imoveis', '20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-03-06 14:00:15', 'Matrícula AE18', '2', 'Antonio', 'MT1651'),
(6, '/matriculas-de-imoveis', '20250306_142017_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250306_142017_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-03-06 14:20:17', 'Matrícula AE18', '2', 'Antonio', 'MT1715'),
(7, '/matriculas-de-imoveis', '20250306_145227_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250306_145227_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-03-06 14:52:27', 'Matrícula AE18', '2', 'Antonio', 'MT1843'),
(10, '/matriculas-de-imoveis', '20250306_175801_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250306_175801_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-03-06 17:58:01', 'Matrícula AE18', '2', 'Antonio', 'MT2035'),
(15, '/matriculas-de-imoveis', '20250310_141725_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250310_141725_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'Antonio', 'GED', '2025-03-10 14:17:25', 'Matrícula AE18', '2', 'Antonio', 'MT2736'),
(17, '/matriculas-de-imoveis', '20250313_132417_index.html', 'uploads/20250313_132417_index.html', 'Antonio', 'GED', '2025-03-13 13:24:17', 'teste', '2', 'Antonio', 'MT3009'),
(18, '/locatorio', '20250313_133943_index.html', 'uploads/20250313_133943_index.html', 'William', 'GED', '2025-03-13 13:39:43', 'teste', '23', 'William', 'US65'),
(19, '/relogios-energia', '20250313_134456_index.html', 'uploads/20250313_134456_index.html', 'William', 'GED', '2025-03-13 13:44:56', 'teste', '23', 'William', 'REN44'),
(20, '/relogios-agua', '20250313_134724_index.html', 'uploads/20250313_134724_index.html', 'William', 'GED', '2025-03-13 13:47:24', 'teste', '23', 'William', 'RA50'),
(21, '/relogios-energia', '20250313_135133_index.html', 'uploads/20250313_135133_index.html', 'William', 'GED', '2025-03-13 13:51:33', 'teste', '23', 'William', 'REN45'),
(22, '/relogios-energia', '20250313_135305_index.html', 'uploads/20250313_135305_index.html', 'William', 'GED', '2025-03-13 13:53:05', 'teste3', '23', 'William', 'REN46'),
(23, '/relogios-energia', '20250313_135403_package.json', 'uploads/20250313_135403_package.json', 'Antonio', 'GED', '2025-03-13 13:54:03', 'teste2', '2', 'Antonio', 'REN47'),
(24, '/matriculas-de-imoveis', '20250313_135716_index.html', 'uploads/20250313_135716_index.html', 'Antonio', 'GED', '2025-03-13 13:57:16', 'teste', '2', 'Antonio', 'MT3010'),
(25, '/locatorio', '20250313_140026_index.html', 'uploads/20250313_140026_index.html', 'Antonio', 'GED', '2025-03-13 14:00:26', 'local', '2', 'Antonio', 'US66'),
(26, '/relogios-agua', '20250313_140250_index.html', 'uploads/20250313_140250_index.html', 'Antonio', 'GED', '2025-03-13 14:02:50', 'teste', '2', 'Antonio', 'RA51'),
(27, '/relogios-energia', '20250313_140704_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250313_140704_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'William', 'GED', '2025-03-13 14:07:04', 'teste', '23', 'William', 'REN48'),
(28, '/relogios-agua', '20250313_140748_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'uploads/20250313_140748_20250306_140015_20250224_172956_Matricula_AE18_ vs 07-07-2021_VRi.pdf', 'William', 'GED', '2025-03-13 14:07:48', 'teste', '23', 'William', 'RA52'),
(29, '/relogios-energia', '20250313_152753_cidades.xlsx', 'uploads/20250313_152753_cidades.xlsx', 'Antonio', 'GED', '2025-03-13 15:27:53', 'teste', '2', 'Antonio', 'REN49'),
(30, '/relogios-energia', '20250313_152836_cartorios.xlsx', 'uploads/20250313_152836_cartorios.xlsx', 'Antonio', 'GED', '2025-03-13 15:28:36', 'teste', '2', 'Antonio', 'REN50'),
(33, '/matriculas-de-imoveis', '20250313_160344_Matricula_AE18_V2_VRI.pdf', 'uploads/20250313_160344_Matricula_AE18_V2_VRI.pdf', 'Antonio', 'GED', '2025-03-13 16:03:44', 'x', '2', 'Antonio', 'MT3077'),
(35, '/matriculas-de-imoveis', '20250313_163508_Matricula_AE18_V3_VRI.pdf', 'uploads/20250313_163508_Matricula_AE18_V3_VRI.pdf', 'Antonio', 'GED', '2025-03-13 16:35:08', 'Matricula RJM209', '2', 'Antonio', 'MT2721'),
(36, '/matriculas-de-imoveis', '20250313_163541_Matricula_AE18_V1.pdf', 'uploads/20250313_163541_Matricula_AE18_V1.pdf', 'Antonio', 'GED', '2025-03-13 16:35:41', 'escritura RJM209', '2', 'Antonio', 'MT2721'),
(37, '/matriculas-de-imoveis', '20250313_163631_Matricula_AE18_V1.pdf', 'uploads/20250313_163631_Matricula_AE18_V1.pdf', 'Antonio', 'GED', '2025-03-13 16:36:31', 'contrato de compra rjm209', '2', 'Antonio', 'MT2721'),
(38, '/matriculas-de-imoveis', '20250318_143206_proprietarios.png', 'uploads/20250318_143206_proprietarios.png', 'William', 'GED', '2025-03-18 14:32:06', 'teste', '23', 'William', 'MT3332'),
(40, '/matriculas-de-imoveis', '20250325_061348_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_061348_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:13:48', 'teste', '23', 'William', 'MT3366'),
(41, '/matriculas-de-imoveis', '20250325_061435_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_061435_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:14:35', 'teste 1', '23', 'William', 'MT3366'),
(42, '/matriculas-de-imoveis', '20250325_061508_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_061508_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:15:08', 'teste 12', '23', 'William', 'MT3366'),
(43, '/matriculas-de-imoveis', '20250325_061916_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_061916_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:19:16', 'teste', '23', 'William', 'MT3366'),
(44, '/matriculas-de-imoveis', '20250325_061928_Captura de tela 2025-03-07 132431.png', 'uploads/20250325_061928_Captura de tela 2025-03-07 132431.png', 'William', 'GED', '2025-03-25 06:19:28', 'teste', '23', 'William', 'MT3366'),
(45, '/matriculas-de-imoveis', '20250325_062023_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_062023_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:20:23', 'teste', '23', 'William', 'MT3366'),
(46, '/matriculas-de-imoveis', '20250325_062152_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_062152_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:21:52', 'messi', '23', 'William', 'MT3366'),
(47, '/matriculas-de-imoveis', '20250325_062200_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_062200_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:22:00', 'messi', '23', 'William', 'MT3366'),
(56, '/locatorio', '20250325_063913_Captura de tela 2025-03-07 132301.png', 'uploads/20250325_063913_Captura de tela 2025-03-07 132301.png', 'William', 'GED', '2025-03-25 06:39:13', 'teste', '23', 'William', 'US63');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int(11) NOT NULL,
  `cod` text DEFAULT NULL,
  `apelido` text DEFAULT NULL,
  `numero_matricula` text DEFAULT NULL,
  `cidade_registro` text DEFAULT NULL,
  `cartorio_registro` text DEFAULT NULL,
  `nome_proprietario` text DEFAULT NULL,
  `nome_proprietario_grupo` text DEFAULT NULL,
  `tipo_pessoa` text DEFAULT NULL,
  `cpf` text DEFAULT NULL,
  `cnpj` text DEFAULT NULL,
  `razao_social` text DEFAULT NULL,
  `area_terreno` text DEFAULT NULL,
  `geometria_regular` text DEFAULT NULL,
  `metros_frente` text DEFAULT NULL,
  `metros_de_frente` text DEFAULT NULL,
  `metros_fundo` text DEFAULT NULL,
  `metros_lado_direito` text DEFAULT NULL,
  `metros_lado_esquerdo` text DEFAULT NULL,
  `area_construida` text DEFAULT NULL,
  `cep` text DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `numero` text DEFAULT NULL,
  `complemento` text DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `uf` text DEFAULT NULL,
  `data_compra` date DEFAULT NULL,
  `data_compra_string` text DEFAULT NULL,
  `nome_vendedor` text DEFAULT NULL,
  `valor_compra` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `nome_proprietario_conceito` text DEFAULT NULL,
  `valor_compra_contrato` text DEFAULT NULL,
  `data_compra_contrato` date DEFAULT NULL,
  `data_compra_contrato_string` text DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `longitude` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `cod`, `apelido`, `numero_matricula`, `cidade_registro`, `cartorio_registro`, `nome_proprietario`, `nome_proprietario_grupo`, `tipo_pessoa`, `cpf`, `cnpj`, `razao_social`, `area_terreno`, `geometria_regular`, `metros_frente`, `metros_de_frente`, `metros_fundo`, `metros_lado_direito`, `metros_lado_esquerdo`, `area_construida`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `data_compra`, `data_compra_string`, `nome_vendedor`, `valor_compra`, `observacoes`, `date_insert`, `date_update`, `nome_proprietario_conceito`, `valor_compra_contrato`, `data_compra_contrato`, `data_compra_contrato_string`, `latitude`, `longitude`) VALUES
(3284, 'MT1365', 'RCCB424', '239.498', 'Campinas', 'Registro Imóveis Campinas 3º', 'Heleno', 'Heleno', '', '', '', '', '', 'Não', '', '0,00', '0,00', '0,00', '0,00', '59,47', '13051-092', 'Av. Royal Palm Plaza', '180', 'apto 424, subcondomínio A', 'Jd. Nova California', 'Campinas', '', '0000-00-00', '', 'SPCIA 01 Empreendimento Imobiliário Ltda', '397.469,60', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '397,469,60', '2019-09-21', '21/09/2019', '', ''),
(3285, 'MT1309', 'ALE1266', '43506 + 43507', 'Guaruja', 'Registro Imóveis Guarujá', 'VRC', 'VRC', '', '', '', '', '35,05', 'Não', '', '0,00', '0,00', '0,00', '0,00', '61,70', '11410-160', 'Av. Leomil, Ed. México', '1.266', 'apto 23', 'Centro', 'Guaruja', '', '0000-00-00', '', 'Salvador Maximino', '58.395,82', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1984-05-09', '09/05/1984', '', ''),
(3286, 'MT1304', 'AJGC1', '55.486', 'São Carlos', 'Registro Imóveis São Carlos', 'Heleno', 'Heleno', '', '', '', '', '658,00', 'Sim', '', '12,90', '16,70', '33,50', '22,00', '', '13560-649', 'Av. José Gonçalves Carneiro', 's/n', 'lote 1', 'Parque Santa Mônica 2', 'São Carlos', '', '2019-01-10', '10/01/2019', 'José Police Neto', '250.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'Heleno', '250.000,00', '2019-01-10', '10/01/2019', '', ''),
(3287, 'MT1302', 'CVD9', '4.978/09', 'Valinhos', 'Registro Imóveis Valinhos', 'AAV+MCV', 'AAV+MCV', '', '', '', '', '1.807,86', 'Não', '', '22,41', '0,00', '0,00', '0,00', '0,00', '13278-209', 'Cond. Villa D\'este, Rua Eng. Paulo de C. Fessel', '575', 'Lote 9', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Familia Passarelli', '550.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'AAV+MCV', '330.000,00', '2008-11-12', '12/11/2008', '', ''),
(3288, 'MT1303', 'CVD10', '4.978/10', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '1.883,56', 'Sim', '', '29,47', '28,50', '52,54', '60,04', '', '13278-209', 'Cond. Villa D\'este, Rua Eng. Paulo de C. Fessel', '575', 'Lote 10', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Familia Passarelli', '106.666,66', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'AAV+MCV', '330.000,00', '2008-11-12', '12/11/2008', '', ''),
(3289, 'MT1305', 'CVI16', '15.282', 'Valinhos', 'Registro Imóveis Valinhos', 'LHV', 'LHV', '', '', '', '', '1.001,00', 'Sim', '', '22,00', '22,00', '45,50', '45,50', '', '13278-415', 'Cond. Vale do Itamaraca, Rua 15', 's/n', 'Lote 16', 'Cond. Vale do Itamaraca', 'Valinhos', '', '0000-00-00', '', 'Rosemeire A. F. Pillekamp', '', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'LHV', '270.000,00', '2011-02-03', '03/02/2011', '', ''),
(3290, 'MT1306', 'ALI1', '22.765', 'Valinhos', 'Registro Imóveis Valinhos', 'VLA', 'VLA', '', '', '', '', '4.723,00', 'Sim', '', '87,40', '59,80', '48,50', '75,20', '480,44', '13278-480', 'Alameda Itatinga', '0', '', 'Chácaras Jospiranga II', 'Valinhos', '', '0000-00-00', '', 'Lauri Volpi Junior', '1.140.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VLA', '1.150.000,00', '2023-02-02', '02/02/2023', '', ''),
(3291, 'MT1307', 'AE362', '43.479', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '534,90', 'Sim', '', '10,00', '10,03', '53,12', '53,86', '104,93', '13270-210', 'Av. dos Esportes', '362', '', 'Centro', 'Valinhos', '', '0000-00-00', '', 'Hélio Itálico Schiavinato', '32.064,72', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1991-08-30', '30/08/1991', '', ''),
(3292, 'MT1308', 'AIND7', '43.482', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '308,40', 'Sim', '', '12,04', '12,00', '26,10', '25,30', '', '13277-000', 'Av. Independencia', 's/n', 'Lote 7', 'Santa Marina', 'Valinhos', '', '0000-00-00', '', 'JM Bozza Participações S.A.', '4.088,44', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1993-03-31', '31/03/1993', '', ''),
(3293, 'MT1310', 'RFC1B', '43.480', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '535,60', 'Sim', '', '18,10', '17,90', '31,25', '30,50', '', '13273-000', 'Rodovia Flávio de Carvalho', 's/n', 'Lote 1B', 'Planalto Paulista', 'Valinhos', '', '0000-00-00', '', 'Dermival/José Eduardo/Alcides Concon', '12.396,64', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1987-08-12', '12/08/1987', '', ''),
(3294, 'MT1311', 'RFC2B', '43.481', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '529,60', 'Sim', '', '22,43', '17,50', '22,50', '31,25', '', '13273-000', 'Rodovia Flávio de Carvalho', 's/n', 'Lote 2B', 'Planalto Paulista', 'Valinhos', '', '0000-00-00', '', 'Dermival/José Eduardo/Alcides Concon', '12.396,66', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1987-08-12', '12/08/1987', '', ''),
(3295, 'MT1312', 'RJM258', '28.745', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '501,00', 'Sim', '', '16,70', '', '', '', '0,00', '13270-200', 'Rua Jose Milani', '258', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Cosmo/Antonio/Valter Perseghetti', '30.098,72', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1971-03-25', '25/03/1971', '', ''),
(3296, 'MT1313', 'RJM272', '29.904', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '250,00', 'Sim', '', '8,35', '8,35', '30,00', '30,00', '168,50', '13270-200', 'Rua Jose Milani', '272', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Instituto Fem de A Social Educacional', '20.819,16', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1979-11-07', '07/11/1979', '', ''),
(3297, 'MT1314', 'RJP558', '5.946', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '253,00', 'Sim', '', '11,00', '13,50', '19,80', '26,50', '106,60', '13270-300', 'Rua Jose Pisciotta', '558', '', 'Vila São Luiz', 'Valinhos', '', '0000-00-00', '', 'Transcrição Aquisitiva', '24.691,66', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1972-01-27', '27/01/1972', '', ''),
(3298, 'MT1315', 'RJS18', '43.484', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '300,00', 'Sim', '', '12,00', '12,00', '25,00', '25,00', '', '13277-116', 'Rua Julio Spiandorelli', 's/n', 'Lote 18', 'Santa Marina', 'Valinhos', '', '0000-00-00', '', 'JM Bozza Participações S.A.', '3.795,53', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1993-07-20', '20/07/1993', '', ''),
(3299, 'MT1316', 'RPCF1', '42.243', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '7.040,000', 'Sim', '', '80,00', '91,00', '66,00', '110,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 1', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'João Batista Roque', '23.373,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1990-03-26', '26/03/1990', '', ''),
(3300, 'MT1317', 'RPCF2', '42.309', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '9.800,00', 'Sim', '', '75,00', '85,00', '110,00', '151,00', '70,51', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 2', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'João Batista Roque', '23.373,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1990-03-26', '26/03/1990', '', ''),
(3301, 'MT1318', 'RPCF15', '30.098', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '6.470,00', 'Sim', '', '40,00', '46,50', '355,00', '350,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 15', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Albino Moraes Barbosa', '16.655,34', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1971-01-15', '15/01/1971', '', ''),
(3302, 'MT1319', 'RPCF16', '30.136', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '7.560,00', 'Sim', '', '40,00', '55,00', '170,00', '208,00', '134,90', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 16', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Augusto César Madureira', '19.431,24', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1971-01-15', '15/01/1971', '', ''),
(3303, 'MT1320', 'RPCF17', '43.478', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '9.260,00', 'Sim', '', '40,00', '54,30', '208,00', '255,00', '37,44', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 17', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Espólio de Pedro Ribeiro', '28.369,60', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1992-09-04', '04/09/1992', '', ''),
(3304, 'MT1321', 'RPCF18', '43.477', 'Valinhos', 'Registro Imóveis Valinhos', 'VRC', 'VRC', '', '', '', '', '11.180,00', 'Sim', '', '41,00', '56,50', '255,00', '304,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 18', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Espólio de Pedro Ribeiro', '28.369,62', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRC', '', '1992-09-04', '04/09/1992', '', ''),
(3305, 'MT1322', 'AMT16', '82.465', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '14.760,00', 'Sim', '', '80,20', '80,00', '180,00', '188,00', '', '13278-181', 'Alameda Maria Tereza', '0', 'Lote 16-A', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'ILV Imóveis e Participações Societárias Ltda', '3.050.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '3.050.000,00', '2024-08-27', '27/08/2024', '', ''),
(3306, 'MT1323', 'AE538', '25.441', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '422,50', 'Sim', '', '10,00', '10,00', '42,30', '42,20', '421,84', '13270-210', 'Av. dos Esportes', '538', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Paulo Rochedo Costa', '800.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '1.600.000,00', '2014-05-08', '08/05/2014', '', ''),
(3307, 'MT1324', 'AJAC3650', '10.089', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '600,00', 'Sim', '', '24,00', '24,00', '25,00', '25,00', '', '13271-430', 'Av. Joaquim Alves Correa', '3.650', '', 'Parque Nova Suíça', 'Valinhos', '', '0000-00-00', '', 'Familia Modesti', '1.400.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '1.400.000,00', '2021-03-25', '25/03/2021', '', ''),
(3308, 'MT1325', 'AJAC3678', '29.955', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '449,75', 'Sim', '', '10,00', '16,80', '22,85', '25,00', '', '13271-430', 'Av. Joaquim Alves Correa', '3.678', '', 'Parque Nova Suíça', 'Valinhos', '', '0000-00-00', '', 'Marcos Vicentim', '253.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '700.000,00', '2016-07-15', '15/07/2016', '', ''),
(3309, 'MT1326', 'AOA496', '7.293', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '344,00', 'Sim', '', '8,00', '8,00', '43,00', '43,00', '119,10', '13276-130', 'Av. Onze de Agosto', '496', '', 'Vila Catalani', 'Valinhos', '', '0000-00-00', '', 'Francklin José Scutari Junior', '400.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '520.000,00', '2022-06-15', '15/06/2022', '', ''),
(3310, 'MT1327', 'AOA1587', '20.152', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '330,00', 'Sim', '', '11,00', '11,00', '30,00', '30,00', '184,80', '13271-210', 'Av. Onze de Agosto', '1.587', '', 'Vila Embaré', 'Valinhos', '', '0000-00-00', '', 'Laércio Conte', '400.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '415.000,00', '2012-08-31', '31/08/2012', '', ''),
(3311, 'MT1328', 'RAGM46', '31.678', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '500,00', 'Sim', '', '10,00', '10,00', '50,00', '50,00', '87,00', '13.277-220', 'Rua Doutor Alcides Gomes de Miranda', '46', '', 'Vila Pagano', 'Valinhos', '', '0000-00-00', '', 'Luiza / Gisele / Heitor / Wiliam', '475.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '475.000,00', '2023-03-01', '01/03/2023', '', ''),
(3312, 'MT1329', 'CVD11', '4.978', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '27,720,00', 'Sim', '', '120,00', '121,50', '240,00', '222,00', '', '13278-209', 'Cond. Villa D\'este, Rua Eng. Paulo de C. Fessel', '575', 'Lote 11', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'macanel', '950.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '950.000,00', '2021-05-06', '06/05/2021', '', ''),
(3313, 'MT1330', 'REAF135', '32.004', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '593,64', 'Sim', '', '15,00', '15,35', '41,20', '37,96', '', '13271-608', 'Rua Dr. Eraldo Aurélio Franzese', '150', '', 'Paiquerê', 'Valinhos', '', '0000-00-00', '', 'Sérgio Bardari', '875.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '950.000,00', '2019-09-02', '02/09/2019', '', ''),
(3314, 'MT1331', 'RI215', '14.805', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '282,03', 'Sim', '', '11,10', '12,40', '23,00', '24,90', '', '13270-180', 'Rua Itália', '215', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Familia Capovilla', '552.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '800.000,00', '2021-03-09', '09/03/2021', '', ''),
(3315, 'MT1332', 'RJB1', '107.637', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '1.419,64', 'Sim', '', '26,00', '41,35', '49,46', '20,00', '', '13279-074', 'Rua Julio Barchesi', '0', '', 'Vale Verde', 'Valinhos', '', '0000-00-00', '', 'Gama Marceneiro', '20.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '220.000,00', '2017-01-25', '25/01/2017', '', ''),
(3316, 'MT1333', 'RJM184', '19.567', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '345,00', 'Sim', '', '11,50', '10,50', '30,00', '30,00', '', '13270-200', 'Rua Jose Milani', '184', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Maria Elisa Franceschini Pazinatto e irmã', '550.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '725.000,00', '2019-08-02', '02/08/2019', '', ''),
(3317, 'MT1334', 'RJM209', '21.786', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '449,00', 'Sim', '', '20,70', '23,70', '12,30', '18,40', '', '13270-200', 'Rua José Milani', '209', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Marcos Antonio Menegaldo e Irmãos', '351.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '450.000,00', '2018-04-10', '10/04/2018', '', ''),
(3318, 'MT1335', 'RJM209B', '21.785', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '229,80', 'Sim', '', '12,00', '12,00', '18,40', '20,00', '', '13270-200', 'Rua José Milani', 's/n', 'Lote 16', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Marcos Antonio Menegaldo e Irmãos', '124.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '450.000,00', '2018-04-10', '10/04/2018', '', ''),
(3319, 'MT1336', 'RJM238', '22.529', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '250,50', 'Sim', '', '8,35', '8,35', '30,00', '30,00', '91,48', '13270-200', 'Rua Jose Milani', '238', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Antônio Vilas Boas Simões Neto', '300.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '590.000,00', '2013-08-16', '16/08/2013', '', ''),
(3320, 'MT1337', 'RJM267', '24.659', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '314,32', 'Sim', '', '13,20', '14,30', '21,50', '26,35', '376,00', '13270-200', 'Rua Jose Milani', '267', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Valter Ventura', '300.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '800.000,00', '2014-05-07', '07/05/2014', '', ''),
(3321, 'MT1338', 'RJM288', '30.301', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '250,00', 'Sim', '', '8,35', '8,35', '30,00', '30,00', '', '13270-200', 'Rua Jose Milani', '288', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Rouhollah Anvari e Gino Spadaccia', '600.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '670.000,00', '2022-08-08', '08/08/2022', '', ''),
(3322, 'MT1340', 'RPCF4', '15.280', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '7.400,00', 'Sim', '', '40,00', '46,00', '174,00', '196,00', '306,60', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 4', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Dina Irene Mittelmann Zaitz', '150.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '300.000,00', '2010-08-27', '27/08/2010', '', ''),
(3323, 'MT1341', 'RPCF5', '15.281', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '7.360,00', 'Sim', '', '40,00', '52,00', '196,00', '172,00', '250,31', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 5', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Dina Irene Mittelmann Zaitz', '150.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '300.000,00', '2010-08-27', '27/08/2010', '', ''),
(3324, 'MT1342', 'RPCF13', '36.937', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '5.976,00', 'Sim', '', '43,00', '45,00', '132,00', '144,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 13', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Carlos Alberto Mousinho Dos Santos Monteiro Violante', '1.450.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '1.450.000,00', '2021-12-01', '01/12/2021', '', ''),
(3325, 'MT1343', 'RPCF20', '4.693', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '11.190,00', 'Sim', '', '40,00', '53,00', '323,00', '368,00', '188,79', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 20', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Rosa Maria Cason Silva e Outros', '825.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '825.000,00', '2021-12-12', '12/12/2021', '', ''),
(3326, 'MT1344', 'RPCF21', '39.369', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '4.640,00', 'Sim', '', '34,00', '20,00', '172,00', '172,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 21', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Thales Verrastro De Almeida', '474.142,90', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '644.724,27', '2022-09-13', '13/09/2022', '', ''),
(3327, 'MT1345', 'RPCF21', '39.370', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '6.920,00', 'Sim', '', '40,00', '40,00', '172,00', '174,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 21', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Thales Verrastro De Almeida', '793.154,52', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '961.528,44', '2022-09-13', '13/09/2022', '', ''),
(3328, 'MT1346', 'RPCF21', '39.368', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '7.000,00', 'Sim', '', '40,00', '40,00', '174,00', '176,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 21', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Thales Verrastro De Almeida', '1.055.521,16', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '972.644,38', '2022-09-13', '13/09/2022', '', ''),
(3329, 'MT1347', 'RPCF21', '39.371', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '4.470,00', 'Sim', '', '32,00', '20,00', '172,00', '172,00', '', '13278-209', 'Rua Eng. Paulo de C. Fessel', 's/n', 'Lote 21', 'Dois Córregos', 'Valinhos', '', '0000-00-00', '', 'Thales Verrastro De Almeida', '945.508,16', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '621.102,91', '2022-09-13', '13/09/2022', '', ''),
(3330, 'MT1348', 'RPL4', '24.620', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '3.805,00', 'Sim', '', '23,50', '38,50', '130,00', '120,00', '', '13271-651', 'Rua Pedro Leardini', '134', 'Lote 4', 'Chácaras Silvânia', 'Valinhos', '', '0000-00-00', '', 'Wallace Palliotti Moraes', '600.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '1.950.000,00', '2014-03-14', '14/03/2014', '', ''),
(3331, 'MT1349', 'RVC5', '35.744', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '1.785,40', 'Sim', '', '35,23', '42,30', '55,97', '43,23', '', '13277-120', 'Rua Vitório Capelatto', 's/n', 'Lote 05', 'Santa Escolástica', 'Valinhos', '', '0000-00-00', '', 'Familia Capelatto', '750.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '750.000,00', '2023-10-01', '01/10/2023', '', ''),
(3332, 'MT1350', 'AE18', '18.577', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '520,10', 'Sim', '', '10,00', '10,03', '51,64', '52,38', '', '13270-210', 'Av. dos Esportes', 's/n', 'Lote 18', 'Centro', 'Valinhos', '', '0000-00-00', '', 'Familia Angeli', '100.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '347.527,68', '2004-11-11', '11/11/2004', '', ''),
(3333, 'MT1351', 'AE19', '18.578', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '527,50', 'Sim', '', '10,00', '10,03', '52,38', '53,12', '', '13270-210', 'Av. dos Esportes', 's/n', 'Lote 19', 'Centro', 'Valinhos', '', '0000-00-00', '', 'Familia Angeli', '100.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '352.472,32', '2004-11-11', '11/11/2004', '', ''),
(3334, 'MT1352', 'CQA51', '22.169 + 22.170', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '571,02', 'Não', '', '0,00', '0,00', '0,00', '0,00', '305,56', '13271-600', 'Cond. Quiririm, Rua Paiquere', '530', 'Ap. 51', 'Jardim Paiquere', 'Valinhos', '', '0000-00-00', '', 'Espaço Emp Imob Ltda', '120.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '114.000,00', '2001-09-18', '18/09/2001', '', ''),
(3335, 'MT1353', 'CTP7', '19.835', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '749,20', 'Sim', '', '17,00', '23,35', '41,57', '38,83', '', '13271-600', 'Cond. Terras do Paiquerê, Rua Paiquerê', '430', 'Lote 7', 'Jardim Paiquere', 'Valinhos', '', '0000-00-00', '', 'Laércio Domingos Consolim', '71.400,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '71.400,00', '2012-07-30', '30/07/2012', '', ''),
(3336, 'MT1354', 'RALAC101', '20.099', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '476,60', 'Sim', '', '10,00', '12,36', '42,65', '48,50', '236,10', '13270-150', 'Rua Ana L. do Amaral Camargo', '101', '', 'Jardim Ribeiro', 'Valinhos', '', '0000-00-00', '', 'Cláudio Sabaini', '295.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '650.000,00', '2012-06-01', '01/06/2012', '', ''),
(3337, 'MT1355', 'RALAC88', '15.688', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '356,95', 'Sim', '', '13,70', '10,50', '29,40', '29,50', '189,49', '13270-150', 'Rua Ana L. do Amaral Camargo', '88', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Familia Adorno', '300.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '300.000,00', '2011-02-12', '12/02/2011', '', ''),
(3338, 'MT1356', 'RC30', '331', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '308,00', 'Sim', '', '11,00', '11,00', '28,00', '28,00', '208,40', '13276-065', 'Rua Campinas', '30', '', 'Jardim Planalto', 'Valinhos', '', '0000-00-00', '', 'Familia Vicentim', '80.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '270.000,00', '2006-07-06', '06/07/2006', '', ''),
(3339, 'MT1357', 'RCF360', '5.219', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '268,60', 'Sim', '', '12,80', '13,20', '20,00', '20,40', '184,99', '13270-040', 'Rua Dr. Cândido Ferreira', '360', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Armando L. Tegani', '81.266,67', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '160.000,00', '2006-12-19', '19/12/2006', '', ''),
(3340, 'MT1358', 'RFC1D', '5.203', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '300,00', 'Sim', '', '10,00', '10,00', '30,00', '30,00', '', '13273-000', 'Rodovia Flávio de Carvalho', 's/n', 'Lote 1D', 'Santa Tereza', 'Valinhos', '', '0000-00-00', '', 'Fonte Santa Tereza', '35.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '65.000,00', '2005-07-07', '07/07/2005', '', ''),
(3341, 'MT1359', 'RFC2D', '5.204', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '300,00', 'Sim', '', '10,00', '10,00', '30,00', '30,00', '', '13273-000', 'Rodovia Flávio de Carvalho', 's/n', 'Lote 2D', 'Santa Tereza', 'Valinhos', '', '0000-00-00', '', 'Fonte Santa Tereza', '30.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '65.000,00', '2005-07-07', '07/07/2005', '', ''),
(3342, 'MT1360', 'RJM155', '5.460', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '246,00', 'Sim', '', '12,00', '17,05', '20,00', '21,00', '141,14', '13270-200', 'Rua Jose Milani', '155', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Carlos Alberto Tegani', '66.666,67', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '180.000,00', '2006-08-01', '01/08/2006', '', ''),
(3343, 'MT1361', 'RJM200', '10.296', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '319,70', 'Sim', '', '11,95', '11,95', '26,70', '26,70', '220,80', '13270-200', 'Rua Jose Milani', '200', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Nei Cid B. de Oliveira', '140.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '330.000,00', '2008-06-18', '18/06/2008', '', ''),
(3344, 'MT1362', 'RJM274', '2.294', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '250,50', 'Sim', '', '8,35', '8,35', '30,00', '30,00', '151,70', '13270-200', 'Rua Jose Milani', '274', '', 'Vila Bissoto', 'Valinhos', '', '0000-00-00', '', 'Elias Oscar (leilão)', '218.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '218.000,00', '2010-08-16', '16/08/2010', '', ''),
(3345, 'MT1363', 'RJS17', '4.133', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '300,00', 'Sim', '', '12,00', '12,00', '25,00', '25,00', '', '13277-116', 'Rua Julio Spiandorelli', 's/n', 'Lote 17', 'Santa Marina', 'Valinhos', '', '0000-00-00', '', 'Clayton Machado', '35.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '65.000,00', '2007-08-13', '13/08/2007', '', ''),
(3346, 'MT1364', 'RU4', '5.603', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '300,00', 'Sim', '', '12,00', '12,00', '25,00', '25,00', '', '13273-200', 'Rua Um', 's/n', 'Lote 4', 'Jd. Nova Espírito Santo', 'Valinhos', '', '0000-00-00', '', 'Nova Esp. Sa. E. Im.', '6.125,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '', '2007-12-19', '19/12/2007', '', ''),
(3347, 'MT1339', 'RJO15', '16.705', 'Valinhos', 'Registro Imóveis Valinhos', 'VRI', 'VRI', '', '', '', '', '660,00', 'Sim', '', '22,00', '22,00', '30,00', '30,00', '378,05', '13277-260', 'Rua Jose Oscar', '15', 'nº 7 e 15', 'Vila Pagano', 'Valinhos', '', '0000-00-00', '', 'Carvalho Participações Societarias', '900.000,00', '', '2025-03-18 13:42:22', '2025-03-18 13:42:22', 'VRI', '915.000,00', '2021-07-01', '01/07/2021', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `local`
--

CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `local`
--

INSERT INTO `local` (`id`, `nome`) VALUES
(9, 'Casa 1'),
(10, 'Casa 2'),
(11, 'Casa 3'),
(12, 'Casa 4'),
(13, 'Casa 5'),
(14, 'Casa 6'),
(15, 'Casa 7'),
(21, 'Sala 1'),
(22, 'Sala 2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `locatario`
--

CREATE TABLE `locatario` (
  `id` int(11) NOT NULL,
  `cod` text DEFAULT NULL,
  `nomeLocatario` varchar(255) NOT NULL,
  `cpfCnpjLocatario` varchar(20) NOT NULL,
  `apelidoLocatario` varchar(100) DEFAULT NULL,
  `nomeContato1` varchar(255) DEFAULT NULL,
  `celularContato1` varchar(20) DEFAULT NULL,
  `telefoneContato1` varchar(20) DEFAULT NULL,
  `emailContato1` varchar(255) DEFAULT NULL,
  `nomeContato2` varchar(255) DEFAULT NULL,
  `celularContato2` varchar(20) DEFAULT NULL,
  `telefoneContato2` varchar(20) DEFAULT NULL,
  `emailContato2` varchar(255) DEFAULT NULL,
  `nomeContato3` varchar(255) DEFAULT NULL,
  `celularContato3` varchar(20) DEFAULT NULL,
  `telefoneContato3` varchar(20) DEFAULT NULL,
  `emailContato3` varchar(255) DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `cod_matricula` varchar(50) DEFAULT NULL,
  `apelido` varchar(100) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `matriculasSelecionadas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tipo_pessoa` text DEFAULT NULL,
  `razao_social` text DEFAULT NULL,
  `cpf` text DEFAULT NULL,
  `cnpj` text DEFAULT NULL,
  `data_inicio_string` text DEFAULT NULL,
  `data_fim_string` text DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `locatario`
--

INSERT INTO `locatario` (`id`, `cod`, `nomeLocatario`, `cpfCnpjLocatario`, `apelidoLocatario`, `nomeContato1`, `celularContato1`, `telefoneContato1`, `emailContato1`, `nomeContato2`, `celularContato2`, `telefoneContato2`, `emailContato2`, `nomeContato3`, `celularContato3`, `telefoneContato3`, `emailContato3`, `dataInicio`, `dataFim`, `cod_matricula`, `apelido`, `local`, `observacoes`, `matriculasSelecionadas`, `tipo_pessoa`, `razao_social`, `cpf`, `cnpj`, `data_inicio_string`, `data_fim_string`, `date_insert`, `date_update`) VALUES
(63, 'US63', ' BTECH TECNOLOGIAS AGROPECURIAS E COMERCIO LTDA - PANCOSMA BRASIL', '', 'ADM/BTECH', 'Eduardo', '19993988661', '1938295080', 'EduardoM.Costa@adm.com', 'Cristiane', '19999057230', '', 'Cristiane.Videira@adm.com', '', '', '', '', '2024-10-01', '2028-10-01', '', '', '', '', '[\"MT385 - Apelido - Local 3\",\"MT387 - REAF135\",\"MT1330 - REAF135\"]', 'jurídica', ' BTECH TECNOLOGIAS AGROPECURIAS E COMERCIO LTDA - PANCOSMA BRASIL', '', '68946524000103', '01/10/2024', '01/10/2028', '2025-01-30 18:39:54', '0000-00-00 00:00:00'),
(69, 'US69', '', '', 'teste', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '[\"MT1339 - RJO15\"]', 'física', '', '', '', '', '', '2025-03-25 06:49:12', '2025-03-25 06:49:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `event` text DEFAULT NULL,
  `module` text DEFAULT NULL,
  `module_id` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `apelido` text DEFAULT NULL,
  `codigos_matricula` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `filename` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `field_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(659, 'teste', 'teste', 'teste', 'teste', 'teste', 'teste', '2025-03-12 13:44:28', 'teste', 'teste', 'teste', 'teste', 'teste', '2025-03-18 16:39:03', 'teste', 'teste', 'teste'),
(660, 'edit', 'matriculas', 'MT1339', '67.159.246.154', '23', 'William', '2025-03-18 13:40:20', 'William alterou a Matrícula - MT1339', 'RJO15', '\"\"', NULL, NULL, '2025-03-18 16:40:20', NULL, NULL, NULL),
(661, 'edit', 'matriculas', 'MT1339', '67.159.246.154', '23', 'William', '2025-03-18 13:40:24', 'William alterou a Matrícula - MT1339', 'RJO15', '\"\"', NULL, NULL, '2025-03-18 16:40:24', NULL, NULL, NULL),
(662, 'insert', 'relogios-de-agua', 'RA55', '67.159.246.154', '23', 'William', '2025-03-18 13:40:57', 'William cadastrou o Relógio de Água - RA55', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-18 16:40:57', NULL, NULL, NULL),
(663, 'delete', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-18 13:41:05', 'William deletou o Relógio de Água undefined', '', '[]', NULL, NULL, '2025-03-18 16:41:05', NULL, NULL, NULL),
(664, 'insert', 'relogios-de-energia', 'REN53', '67.159.246.154', '23', 'William', '2025-03-18 13:41:28', 'William cadastrou o Relógio de Energia - REN53', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-18 16:41:28', NULL, NULL, NULL),
(665, 'delete', 'relogios-de-energia', '', '67.159.246.154', '23', 'William', '2025-03-18 13:41:31', 'William deletou o Relógio de Energia undefined', '', '[]', NULL, NULL, '2025-03-18 16:41:31', NULL, NULL, NULL),
(666, 'insert', 'matriculas', 'MT3348', '67.159.246.154', '23', 'William', '2025-03-18 14:04:59', 'William cadastrou a Matrícula - MT3348', 'teste', '\"\"', NULL, NULL, '2025-03-18 17:04:59', NULL, NULL, NULL),
(667, 'delete', 'matriculas', 'MT3348', '67.159.246.154', '23', 'William', '2025-03-18 14:05:14', 'William deletou a Matrícula MT3348', 'teste', '\"\"', NULL, NULL, '2025-03-18 17:05:14', NULL, NULL, NULL),
(668, 'insert', 'matriculas', 'MT3349', '67.159.246.154', '2', 'Antonio', '2025-03-18 14:27:41', 'Antonio cadastrou a Matrícula - MT3349', 'teste', '\"\"', NULL, NULL, '2025-03-18 17:27:41', NULL, NULL, NULL),
(669, 'delete', 'matriculas', '', '67.159.246.154', '2', 'Antonio', '2025-03-18 14:27:44', 'Antonio deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 17:27:44', NULL, NULL, NULL),
(670, 'insert', 'matriculas', 'MT3350', '67.159.246.154', '23', 'William', '2025-03-18 14:40:20', 'William cadastrou a Matrícula - MT3350', 'teste', '\"\"', NULL, NULL, '2025-03-18 17:40:20', NULL, NULL, NULL),
(671, 'insert', 'matriculas', 'MT3351', '67.159.246.154', '23', 'William', '2025-03-18 17:30:59', 'William cadastrou a Matrícula - MT3351', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:30:59', NULL, NULL, NULL),
(672, 'edit', 'matriculas', 'MT3351', '67.159.246.154', '23', 'William', '2025-03-18 17:31:19', 'William alterou a Matrícula - MT3351', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:31:19', NULL, NULL, NULL),
(673, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 17:32:22', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 20:32:22', NULL, NULL, NULL),
(674, 'delete', 'matriculas', 'MT3351', '67.159.246.154', '23', 'William', '2025-03-18 17:32:28', 'William deletou a Matrícula MT3351', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:32:28', NULL, NULL, NULL),
(675, 'insert', 'matriculas', 'MT3352', '67.159.246.154', '23', 'William', '2025-03-18 17:32:46', 'William cadastrou a Matrícula - MT3352', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:32:46', NULL, NULL, NULL),
(676, 'delete', 'matriculas', 'MT3352', '67.159.246.154', '23', 'William', '2025-03-18 17:42:08', 'William deletou a Matrícula MT3352', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:42:08', NULL, NULL, NULL),
(677, 'insert', 'matriculas', 'MT3353', '67.159.246.154', '23', 'William', '2025-03-18 17:42:15', 'William cadastrou a Matrícula - MT3353', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:42:15', NULL, NULL, NULL),
(678, 'edit', 'matriculas', 'MT3353', '67.159.246.154', '23', 'William', '2025-03-18 17:43:54', 'William alterou a Matrícula - MT3353', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:43:54', NULL, NULL, NULL),
(679, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 17:45:14', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 20:45:14', NULL, NULL, NULL),
(680, 'insert', 'matriculas', 'MT3354', '67.159.246.154', '23', 'William', '2025-03-18 17:45:23', 'William cadastrou a Matrícula - MT3354', 'teste 10', '\"\"', NULL, NULL, '2025-03-18 20:45:23', NULL, NULL, NULL),
(681, 'delete', 'matriculas', 'MT3354', '67.159.246.154', '23', 'William', '2025-03-18 17:46:55', 'William deletou a Matrícula MT3354', 'teste 10', '\"\"', NULL, NULL, '2025-03-18 20:46:55', NULL, NULL, NULL),
(682, 'insert', 'matriculas', 'MT3355', '67.159.246.154', '23', 'William', '2025-03-18 17:46:59', 'William cadastrou a Matrícula - MT3355', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:46:59', NULL, NULL, NULL),
(683, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 17:47:53', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 20:47:53', NULL, NULL, NULL),
(684, 'insert', 'matriculas', 'MT3356', '67.159.246.154', '23', 'William', '2025-03-18 17:49:18', 'William cadastrou a Matrícula - MT3356', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:49:18', NULL, NULL, NULL),
(685, 'edit', 'matriculas', 'MT3356', '67.159.246.154', '23', 'William', '2025-03-18 17:51:39', 'William alterou a Matrícula - MT3356', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:51:39', NULL, NULL, NULL),
(686, 'delete', 'matriculas', 'MT1339', '67.159.246.154', '23', 'William', '2025-03-18 17:53:00', 'William deletou a Matrícula MT1339', 'RJO15', '\"\"', NULL, NULL, '2025-03-18 20:53:00', NULL, NULL, NULL),
(687, 'insert', 'matriculas', 'MT3357', '67.159.246.154', '23', 'William', '2025-03-18 17:58:52', 'William cadastrou a Matrícula - MT3357', 'teste', '\"\"', NULL, NULL, '2025-03-18 20:58:52', NULL, NULL, NULL),
(688, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 18:01:06', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 21:01:06', NULL, NULL, NULL),
(689, 'insert', 'matriculas', 'MT3358', '67.159.246.154', '23', 'William', '2025-03-18 18:01:28', 'William cadastrou a Matrícula - MT3358', 'teste1', '\"\"', NULL, NULL, '2025-03-18 21:01:28', NULL, NULL, NULL),
(690, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 18:01:32', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 21:01:32', NULL, NULL, NULL),
(691, 'insert', 'matriculas', 'MT3359', '67.159.246.154', '23', 'William', '2025-03-18 18:02:03', 'William cadastrou a Matrícula - MT3359', 'teste', '\"\"', NULL, NULL, '2025-03-18 21:02:03', NULL, NULL, NULL),
(692, 'delete', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-18 18:02:09', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-18 21:02:09', NULL, NULL, NULL),
(693, 'insert', 'matriculas', 'MT3360', '67.159.246.154', '23', 'William', '2025-03-18 18:03:11', 'William cadastrou a Matrícula - MT3360', 'TESTE', '\"\"', NULL, NULL, '2025-03-18 21:03:11', NULL, NULL, NULL),
(694, 'edit', 'matriculas', 'MT3360', '67.159.246.154', '23', 'William', '2025-03-18 18:03:19', 'William alterou a Matrícula - MT3360', 'TESTE', '\"\"', NULL, NULL, '2025-03-18 21:03:19', NULL, NULL, NULL),
(695, 'insert', 'matriculas', 'MT3361', '67.159.246.154', '2', 'Antonio', '2025-03-18 18:03:33', 'Antonio cadastrou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:03:33', NULL, NULL, NULL),
(696, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '2', 'Antonio', '2025-03-18 18:05:24', 'Antonio alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:05:24', NULL, NULL, NULL),
(697, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '2', 'Antonio', '2025-03-18 18:05:39', 'Antonio alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:05:39', NULL, NULL, NULL),
(698, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '2', 'Antonio', '2025-03-18 18:06:22', 'Antonio alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:06:22', NULL, NULL, NULL),
(699, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '2', 'Antonio', '2025-03-18 18:06:45', 'Antonio alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:06:45', NULL, NULL, NULL),
(700, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '23', 'William', '2025-03-18 18:13:00', 'William alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:13:00', NULL, NULL, NULL),
(701, 'edit', 'matriculas', 'MT3360', '67.159.246.154', '23', 'William', '2025-03-18 18:21:06', 'William alterou a Matrícula - MT3360', 'TESTE', '\"\"', NULL, NULL, '2025-03-18 21:21:06', NULL, NULL, NULL),
(702, 'edit', 'matriculas', 'MT3360', '67.159.246.154', '23', 'William', '2025-03-18 18:21:17', 'William alterou a Matrícula - MT3360', 'TESTE', '\"\"', NULL, NULL, '2025-03-18 21:21:17', NULL, NULL, NULL),
(703, 'edit', 'matriculas', 'MT3360', '67.159.246.154', '23', 'William', '2025-03-18 18:24:59', 'William alterou a Matrícula - MT3360', 'TESTE', '\"\"', NULL, NULL, '2025-03-18 21:24:59', NULL, NULL, NULL),
(704, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '23', 'William', '2025-03-18 18:38:54', 'William alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:38:54', NULL, NULL, NULL),
(705, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '23', 'William', '2025-03-18 18:39:05', 'William alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:39:05', NULL, NULL, NULL),
(706, 'edit', 'matriculas', 'MT3361', '67.159.246.154', '23', 'William', '2025-03-18 18:41:01', 'William alterou a Matrícula - MT3361', 'Teste', '\"\"', NULL, NULL, '2025-03-18 21:41:01', NULL, NULL, NULL),
(707, 'insert', 'relogios-de-agua', 'RA56', '67.159.246.154', '23', 'William', '2025-03-20 15:41:57', 'William cadastrou o Relógio de Água - RA56', 'teste', '[\"MT3361 - Teste\"]', NULL, NULL, '2025-03-20 18:41:57', NULL, NULL, NULL),
(708, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(709, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(710, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(711, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(712, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(713, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(714, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(715, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(716, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:27', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:27', NULL, NULL, NULL),
(717, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(718, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(719, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(720, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(721, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(722, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(723, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(724, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:27:53', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:27:53', NULL, NULL, NULL),
(725, 'login', 'login', '', '67.159.246.154', '23', 'William', '2025-03-20 17:32:06', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-20 20:32:06', NULL, NULL, NULL),
(726, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:10', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:10', NULL, NULL, NULL),
(727, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:10', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:10', NULL, NULL, NULL),
(728, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:10', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:10', NULL, NULL, NULL),
(729, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:12', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:12', NULL, NULL, NULL),
(730, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:21', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:21', NULL, NULL, NULL),
(731, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:21', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:21', NULL, NULL, NULL),
(732, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:30', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:30', NULL, NULL, NULL),
(733, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:30', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:30', NULL, NULL, NULL),
(734, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:37', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:37', NULL, NULL, NULL),
(735, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:37', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:37', NULL, NULL, NULL),
(736, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:41', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:41', NULL, NULL, NULL),
(737, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:41', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:41', NULL, NULL, NULL),
(738, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:46', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:46', NULL, NULL, NULL),
(739, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:46', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:46', NULL, NULL, NULL),
(740, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:54', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:54', NULL, NULL, NULL),
(741, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:54', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:54', NULL, NULL, NULL),
(742, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:55', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:55', NULL, NULL, NULL),
(743, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:55', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:55', NULL, NULL, NULL),
(744, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:57', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:57', NULL, NULL, NULL),
(745, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:42:58', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:42:58', NULL, NULL, NULL),
(746, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:00', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:00', NULL, NULL, NULL),
(747, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:00', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:00', NULL, NULL, NULL),
(748, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:09', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:09', NULL, NULL, NULL),
(749, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:09', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:09', NULL, NULL, NULL),
(750, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:14', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:14', NULL, NULL, NULL),
(751, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:14', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:14', NULL, NULL, NULL),
(752, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:16', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:16', NULL, NULL, NULL),
(753, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:16', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:16', NULL, NULL, NULL),
(754, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:18', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:18', NULL, NULL, NULL),
(755, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:20', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:20', NULL, NULL, NULL),
(756, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:21', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:21', NULL, NULL, NULL),
(757, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:21', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:21', NULL, NULL, NULL),
(758, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:23', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:23', NULL, NULL, NULL),
(759, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:29', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:29', NULL, NULL, NULL),
(760, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:29', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:29', NULL, NULL, NULL),
(761, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:32', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:32', NULL, NULL, NULL),
(762, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:32', 'William visualizou a pagina de proprietários', '', 'null', NULL, NULL, '2025-03-20 20:43:32', NULL, NULL, NULL),
(763, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:54', 'William visualizou a pagina de proprietários [object Object]', '', 'null', NULL, NULL, '2025-03-20 20:43:54', NULL, NULL, NULL),
(764, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:43:54', 'William visualizou a pagina de proprietários [object Object]', '', 'null', NULL, NULL, '2025-03-20 20:43:54', NULL, NULL, NULL),
(765, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:37', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:37', NULL, NULL, NULL),
(766, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:37', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:37', NULL, NULL, NULL),
(767, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:38', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:38', NULL, NULL, NULL),
(768, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:38', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:38', NULL, NULL, NULL),
(769, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:40', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:40', NULL, NULL, NULL),
(770, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:41', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:41', NULL, NULL, NULL),
(771, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:43', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:43', NULL, NULL, NULL),
(772, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:43', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:43', NULL, NULL, NULL),
(773, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:46', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:46', NULL, NULL, NULL),
(774, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:46', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:46', NULL, NULL, NULL),
(775, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:48', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:48', NULL, NULL, NULL),
(776, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:48', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:48', NULL, NULL, NULL),
(777, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:44:50', 'William visualizou a pagina de proprietários /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:44:50', NULL, NULL, NULL),
(778, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:45:06', 'William visualizou /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:45:06', NULL, NULL, NULL),
(779, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:45:06', 'William visualizou /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:45:06', NULL, NULL, NULL),
(780, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:45:45', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:45:45', NULL, NULL, NULL),
(781, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:45:45', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:45:45', NULL, NULL, NULL),
(782, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:46:51', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:46:51', NULL, NULL, NULL),
(783, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:46:51', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:46:51', NULL, NULL, NULL),
(784, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:47:06', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:47:06', NULL, NULL, NULL),
(785, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:47:06', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:47:06', NULL, NULL, NULL),
(786, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:47:46', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:47:46', NULL, NULL, NULL),
(787, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:47:46', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:47:46', NULL, NULL, NULL),
(788, 'view', 'proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:49:30', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:49:30', NULL, NULL, NULL),
(789, 'view', 'proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:49:30', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:49:30', NULL, NULL, NULL),
(790, 'view', 'proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:49:32', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:49:32', NULL, NULL, NULL),
(791, 'view', 'proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:49:32', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:49:32', NULL, NULL, NULL),
(792, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:33', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:33', NULL, NULL, NULL),
(793, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:33', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:33', NULL, NULL, NULL),
(794, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:34', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:34', NULL, NULL, NULL),
(795, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:34', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:34', NULL, NULL, NULL),
(796, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:47', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:47', NULL, NULL, NULL),
(797, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:48', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:48', NULL, NULL, NULL),
(798, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:49', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:49', NULL, NULL, NULL),
(799, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:51:49', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:51:49', NULL, NULL, NULL),
(800, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:08', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:08', NULL, NULL, NULL),
(801, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:08', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:08', NULL, NULL, NULL),
(802, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:24', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:24', NULL, NULL, NULL),
(803, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:24', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:24', NULL, NULL, NULL),
(804, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:47', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:47', NULL, NULL, NULL),
(805, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:47', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:47', NULL, NULL, NULL),
(806, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:47', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:47', NULL, NULL, NULL),
(807, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:52:47', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:52:47', NULL, NULL, NULL),
(808, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:54:05', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:54:05', NULL, NULL, NULL),
(809, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:54:05', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:54:05', NULL, NULL, NULL),
(810, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:54:05', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:54:05', NULL, NULL, NULL),
(811, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:54:05', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:54:05', NULL, NULL, NULL),
(812, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(813, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(814, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(815, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(816, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(817, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(818, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(819, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:05', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:05', NULL, NULL, NULL),
(820, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(821, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(822, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(823, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(824, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(825, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:10', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:10', NULL, NULL, NULL),
(826, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:11', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:11', NULL, NULL, NULL),
(827, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:11', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:11', NULL, NULL, NULL),
(828, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(829, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(830, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(831, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(832, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(833, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(834, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(835, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:15', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:15', NULL, NULL, NULL),
(836, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:51', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:51', NULL, NULL, NULL),
(837, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:56:51', 'William visualizou a /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:56:51', NULL, NULL, NULL),
(838, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:58:26', 'William visualizou a pagina /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:58:26', NULL, NULL, NULL),
(839, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:58:26', 'William visualizou a pagina /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:58:26', NULL, NULL, NULL),
(840, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:59:44', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:59:44', NULL, NULL, NULL),
(841, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 17:59:44', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 20:59:44', NULL, NULL, NULL),
(842, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:01:14', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:01:14', NULL, NULL, NULL),
(843, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:01:14', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:01:14', NULL, NULL, NULL),
(844, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:01:14', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:01:14', NULL, NULL, NULL),
(845, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:01:14', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:01:14', NULL, NULL, NULL),
(846, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:01:14', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:01:14', NULL, NULL, NULL),
(847, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:11', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:11', NULL, NULL, NULL),
(848, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:11', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:11', NULL, NULL, NULL),
(849, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:16', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:16', NULL, NULL, NULL),
(850, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:16', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:16', NULL, NULL, NULL),
(851, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:18', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:18', NULL, NULL, NULL),
(852, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:02:18', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:02:18', NULL, NULL, NULL),
(853, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:12', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:12', NULL, NULL, NULL),
(854, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:12', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:12', NULL, NULL, NULL),
(855, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:18', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:18', NULL, NULL, NULL),
(856, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:18', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:18', NULL, NULL, NULL),
(857, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:19', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:19', NULL, NULL, NULL),
(858, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:19', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:19', NULL, NULL, NULL),
(859, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:40', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:40', NULL, NULL, NULL),
(860, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:03:40', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:03:40', NULL, NULL, NULL),
(861, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:04:17', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:04:17', NULL, NULL, NULL),
(862, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:04:17', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:04:17', NULL, NULL, NULL),
(863, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:04:20', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:04:20', NULL, NULL, NULL),
(864, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:04:20', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:04:20', NULL, NULL, NULL),
(865, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:05:46', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:05:46', NULL, NULL, NULL),
(866, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:05:55', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:05:55', NULL, NULL, NULL),
(867, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:06:26', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:06:26', NULL, NULL, NULL),
(868, 'logout', 'logout', '', '67.159.246.154', '23', 'William', '2025-03-20 18:08:58', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-20 21:08:58', NULL, NULL, NULL),
(869, 'login', 'login', '', '67.159.246.154', '23', 'William', '2025-03-20 18:09:01', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-20 21:09:01', NULL, NULL, NULL),
(870, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:09:35', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:09:35', NULL, NULL, NULL),
(871, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:10:48', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:10:48', NULL, NULL, NULL),
(872, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:11:28', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:11:28', NULL, NULL, NULL),
(873, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:15:01', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:15:01', NULL, NULL, NULL),
(874, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:17:16', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:17:16', NULL, NULL, NULL),
(875, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:17:49', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:17:49', NULL, NULL, NULL),
(876, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:17:51', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:17:51', NULL, NULL, NULL),
(877, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:18:27', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:18:27', NULL, NULL, NULL),
(878, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:18:52', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:18:52', NULL, NULL, NULL),
(879, 'view', 'local', '', '67.159.246.154', '23', 'William', '2025-03-20 18:19:18', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 21:19:18', NULL, NULL, NULL),
(880, 'view', 'cartorios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:20:00', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 21:20:00', NULL, NULL, NULL),
(881, 'view', 'cartorios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:20:04', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 21:20:04', NULL, NULL, NULL),
(882, 'view', 'cidades', '', '67.159.246.154', '23', 'William', '2025-03-20 18:20:58', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 21:20:58', NULL, NULL, NULL),
(883, 'view', 'cidades', '', '67.159.246.154', '23', 'William', '2025-03-20 18:20:59', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 21:20:59', NULL, NULL, NULL),
(884, 'view', 'cidades', '', '67.159.246.154', '23', 'William', '2025-03-20 18:21:10', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 21:21:10', NULL, NULL, NULL),
(885, 'view', 'cidades', '', '67.159.246.154', '23', 'William', '2025-03-20 18:21:29', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 21:21:29', NULL, NULL, NULL),
(886, 'view', 'relogios-de-energia', '', '67.159.246.154', '23', 'William', '2025-03-20 18:22:07', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 21:22:07', NULL, NULL, NULL),
(887, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:22:42', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 21:22:42', NULL, NULL, NULL),
(888, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:23:14', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:23:14', NULL, NULL, NULL),
(889, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:23:23', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:23:23', NULL, NULL, NULL),
(890, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:23:23', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:23:23', NULL, NULL, NULL),
(891, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:24:28', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:24:28', NULL, NULL, NULL),
(892, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:12', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:26:12', NULL, NULL, NULL),
(893, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:13', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:26:13', NULL, NULL, NULL),
(894, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:44', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 21:26:44', NULL, NULL, NULL),
(895, 'view', 'relogios-de-energia', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:45', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 21:26:45', NULL, NULL, NULL),
(896, 'view', 'local', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:47', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 21:26:47', NULL, NULL, NULL),
(897, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:48', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 21:26:48', NULL, NULL, NULL),
(898, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:49', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:26:49', NULL, NULL, NULL),
(899, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:54', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:26:54', NULL, NULL, NULL),
(900, 'view', 'Proprietarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:56', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 21:26:56', NULL, NULL, NULL),
(901, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:26:57', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:26:57', NULL, NULL, NULL),
(902, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:27:01', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 21:27:01', NULL, NULL, NULL),
(903, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:27:04', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:27:04', NULL, NULL, NULL);
INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(904, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:27:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:27:56', NULL, NULL, NULL),
(905, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:27:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:27:56', NULL, NULL, NULL),
(906, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:28:01', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:28:01', NULL, NULL, NULL),
(907, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:29:17', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:29:17', NULL, NULL, NULL),
(908, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:29:17', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:29:17', NULL, NULL, NULL),
(909, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:29:36', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:29:36', NULL, NULL, NULL),
(910, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:29:41', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:29:41', NULL, NULL, NULL),
(911, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:29:41', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:29:41', NULL, NULL, NULL),
(912, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:32:44', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:32:44', NULL, NULL, NULL),
(913, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:32:47', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:32:47', NULL, NULL, NULL),
(914, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:33:37', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:33:37', NULL, NULL, NULL),
(915, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:33:42', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:33:42', NULL, NULL, NULL),
(916, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:34:14', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:34:14', NULL, NULL, NULL),
(917, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:38:47', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:38:47', NULL, NULL, NULL),
(918, 'view', 'locatorio', '', '67.159.246.154', '23', 'William', '2025-03-20 18:38:50', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 21:38:50', NULL, NULL, NULL),
(919, 'view', 'relogios-de-agua', '', '67.159.246.154', '23', 'William', '2025-03-20 18:38:54', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 21:38:54', NULL, NULL, NULL),
(920, 'view', 'relogios-de-energia', '', '67.159.246.154', '23', 'William', '2025-03-20 18:38:56', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 21:38:56', NULL, NULL, NULL),
(921, 'view', 'cidades', '', '67.159.246.154', '23', 'William', '2025-03-20 18:38:59', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 21:38:59', NULL, NULL, NULL),
(922, 'view', 'cartorios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:01', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 21:39:01', NULL, NULL, NULL),
(923, 'view', 'local', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:04', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 21:39:04', NULL, NULL, NULL),
(924, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:06', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:39:06', NULL, NULL, NULL),
(925, 'view', 'usuarios', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:09', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 21:39:09', NULL, NULL, NULL),
(926, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:12', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:39:12', NULL, NULL, NULL),
(927, 'view', 'matriculas', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:12', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:39:12', NULL, NULL, NULL),
(928, 'logout', 'logout', '', '67.159.246.154', '23', 'William', '2025-03-20 18:39:53', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-20 21:39:53', NULL, NULL, NULL),
(929, 'login', 'login', '', '67.159.246.154', '2', 'Antonio', '2025-03-20 18:40:05', 'Antonio efetuou o login', '', 'null', NULL, NULL, '2025-03-20 21:40:05', NULL, NULL, NULL),
(930, 'view', 'matriculas', '', '67.159.246.154', '2', 'Antonio', '2025-03-20 18:40:06', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:40:06', NULL, NULL, NULL),
(931, 'view', 'matriculas', '', '67.159.246.154', '2', 'Antonio', '2025-03-20 18:44:24', 'Antonio visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 21:44:24', NULL, NULL, NULL),
(932, 'view', 'matriculas', '', '67.159.246.154', '2', 'Antonio', '2025-03-20 18:46:08', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 21:46:08', NULL, NULL, NULL),
(933, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 22:25:38', NULL, NULL, NULL),
(934, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 22:25:38', NULL, NULL, NULL),
(935, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:42', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 22:25:42', NULL, NULL, NULL),
(936, 'view', 'locatorio', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:44', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 22:25:44', NULL, NULL, NULL),
(937, 'view', 'relogios-de-agua', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:46', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 22:25:46', NULL, NULL, NULL),
(938, 'view', 'relogios-de-energia', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:48', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 22:25:48', NULL, NULL, NULL),
(939, 'view', 'cidades', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:52', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 22:25:52', NULL, NULL, NULL),
(940, 'view', 'cartorios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:54', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 22:25:54', NULL, NULL, NULL),
(941, 'view', 'Proprietarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:55', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 22:25:55', NULL, NULL, NULL),
(942, 'view', 'local', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:57', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 22:25:57', NULL, NULL, NULL),
(943, 'view', 'Proprietarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:25:59', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 22:25:59', NULL, NULL, NULL),
(944, 'view', 'usuarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:00', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 22:26:00', NULL, NULL, NULL),
(945, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:03', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 22:26:03', NULL, NULL, NULL),
(946, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:41', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 22:26:41', NULL, NULL, NULL),
(947, 'view', 'locatorio', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:42', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 22:26:42', NULL, NULL, NULL),
(948, 'view', 'relogios-de-agua', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:43', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 22:26:43', NULL, NULL, NULL),
(949, 'view', 'relogios-de-energia', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:45', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 22:26:45', NULL, NULL, NULL),
(950, 'view', 'cidades', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:49', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 22:26:49', NULL, NULL, NULL),
(951, 'view', 'cartorios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:51', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 22:26:51', NULL, NULL, NULL),
(952, 'view', 'local', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:52', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 22:26:52', NULL, NULL, NULL),
(953, 'view', 'Proprietarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:54', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 22:26:54', NULL, NULL, NULL),
(954, 'view', 'usuarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:26:57', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 22:26:57', NULL, NULL, NULL),
(955, 'logout', 'logout', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:27:01', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-20 22:27:01', NULL, NULL, NULL),
(956, 'login', 'login', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:27', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-20 22:39:27', NULL, NULL, NULL),
(957, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 22:39:28', NULL, NULL, NULL),
(958, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:33', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 22:39:33', NULL, NULL, NULL),
(959, 'view', 'locatorio', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 22:39:34', NULL, NULL, NULL),
(960, 'view', 'relogios-de-agua', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:36', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-20 22:39:36', NULL, NULL, NULL),
(961, 'view', 'relogios-de-energia', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:37', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 22:39:37', NULL, NULL, NULL),
(962, 'view', 'cidades', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:41', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-20 22:39:41', NULL, NULL, NULL),
(963, 'view', 'cartorios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:42', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-20 22:39:42', NULL, NULL, NULL),
(964, 'view', 'local', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:43', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-20 22:39:43', NULL, NULL, NULL),
(965, 'view', 'Proprietarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:44', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 22:39:44', NULL, NULL, NULL),
(966, 'view', 'usuarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:45', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-20 22:39:45', NULL, NULL, NULL),
(967, 'logout', 'logout', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:49', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-20 22:39:49', NULL, NULL, NULL),
(968, 'login', 'login', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:53', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-20 22:39:53', NULL, NULL, NULL),
(969, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:39:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 22:39:55', NULL, NULL, NULL),
(970, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:40:06', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 22:40:06', NULL, NULL, NULL),
(971, 'view', 'relogios-de-energia', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:40:09', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-20 22:40:09', NULL, NULL, NULL),
(972, 'view', 'Proprietarios', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:40:13', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-20 22:40:13', NULL, NULL, NULL),
(973, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 19:41:50', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 22:41:50', NULL, NULL, NULL),
(974, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:15:44', 'Antonio visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 23:15:44', NULL, NULL, NULL),
(975, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:15:45', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 23:15:45', NULL, NULL, NULL),
(976, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:15:53', 'Antonio visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 23:15:53', NULL, NULL, NULL),
(977, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:15:56', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 23:15:56', NULL, NULL, NULL),
(978, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:16:07', 'Antonio visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 23:16:07', NULL, NULL, NULL),
(979, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:16:08', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 23:16:08', NULL, NULL, NULL),
(980, 'view', 'locatorio', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:16:13', 'Antonio visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-20 23:16:13', NULL, NULL, NULL),
(981, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:16:14', 'Antonio visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-20 23:16:14', NULL, NULL, NULL),
(982, 'logout', 'logout', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:16:18', 'Antonio efetuou o logout', '', 'null', NULL, NULL, '2025-03-20 23:16:18', NULL, NULL, NULL),
(983, 'view', 'matriculas', '', '2804:38a:a12d:2d07:d64:9feb:c080:109a', '2', 'Antonio', '2025-03-20 20:24:42', 'Antonio visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-20 23:24:42', NULL, NULL, NULL),
(984, 'view', 'matriculas', '', '2804:38a:a12d:2d07:c511:93d5:ab08:aed5', '23', 'William', '2025-03-20 21:24:59', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 00:24:59', NULL, NULL, NULL),
(985, 'view', 'matriculas', '', '2804:14d:7890:4464:4464:a5ad:46d7:a5ad', '23', 'William', '2025-03-20 22:32:09', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 01:32:09', NULL, NULL, NULL),
(986, 'login', 'login', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:50', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-21 12:50:50', NULL, NULL, NULL),
(987, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:51', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 12:50:51', NULL, NULL, NULL),
(988, 'view', 'locatorio', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:54', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 12:50:54', NULL, NULL, NULL),
(989, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:54', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:50:54', NULL, NULL, NULL),
(990, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:56', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 12:50:56', NULL, NULL, NULL),
(991, 'view', 'cidades', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:57', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 12:50:57', NULL, NULL, NULL),
(992, 'view', 'cartorios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:58', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 12:50:58', NULL, NULL, NULL),
(993, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:50:59', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 12:50:59', NULL, NULL, NULL),
(994, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:00', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 12:51:00', NULL, NULL, NULL),
(995, 'view', 'usuarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:13', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 12:51:13', NULL, NULL, NULL),
(996, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:22', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 12:51:22', NULL, NULL, NULL),
(997, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:23', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:51:23', NULL, NULL, NULL),
(998, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:24', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 12:51:24', NULL, NULL, NULL),
(999, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:25', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:51:25', NULL, NULL, NULL),
(1000, 'view', 'locatorio', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:32', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 12:51:32', NULL, NULL, NULL),
(1001, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:33', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 12:51:33', NULL, NULL, NULL),
(1002, 'view', 'cartorios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:34', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 12:51:34', NULL, NULL, NULL),
(1003, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:35', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 12:51:35', NULL, NULL, NULL),
(1004, 'view', 'usuarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:36', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 12:51:36', NULL, NULL, NULL),
(1005, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:39', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 12:51:39', NULL, NULL, NULL),
(1006, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:39', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:51:39', NULL, NULL, NULL),
(1007, 'view', 'locatorio', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:51:42', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 12:51:42', NULL, NULL, NULL),
(1008, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:20', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 12:52:20', NULL, NULL, NULL),
(1009, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:21', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:52:21', NULL, NULL, NULL),
(1010, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:23', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 12:52:23', NULL, NULL, NULL),
(1011, 'view', 'cidades', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:24', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 12:52:24', NULL, NULL, NULL),
(1012, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:27', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 12:52:27', NULL, NULL, NULL),
(1013, 'view', 'locatorio', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:27', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 12:52:27', NULL, NULL, NULL),
(1014, 'view', 'matriculas', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 12:52:27', NULL, NULL, NULL),
(1015, 'logout', 'logout', '', '2804:14d:7890:4464:3d04:6af1:a160:8b1d', '23', 'William', '2025-03-21 09:52:32', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-21 12:52:32', NULL, NULL, NULL),
(1016, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 16:47:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 19:47:56', NULL, NULL, NULL),
(1017, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:12', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:03:12', NULL, NULL, NULL),
(1018, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:15', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:03:15', NULL, NULL, NULL),
(1019, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:16', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:03:16', NULL, NULL, NULL),
(1020, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:18', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:03:18', NULL, NULL, NULL),
(1021, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:03:35', NULL, NULL, NULL),
(1022, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:35', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:03:35', NULL, NULL, NULL),
(1023, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:36', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:03:36', NULL, NULL, NULL),
(1024, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:37', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:03:37', NULL, NULL, NULL),
(1025, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:38', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:03:38', NULL, NULL, NULL),
(1026, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:41', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:03:41', NULL, NULL, NULL),
(1027, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:42', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:03:42', NULL, NULL, NULL),
(1028, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:42', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:03:42', NULL, NULL, NULL),
(1029, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:43', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:03:43', NULL, NULL, NULL),
(1030, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:44', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:03:44', NULL, NULL, NULL),
(1031, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:46', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:03:46', NULL, NULL, NULL),
(1032, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:49', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:03:49', NULL, NULL, NULL),
(1033, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:49', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:03:49', NULL, NULL, NULL),
(1034, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:50', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:03:50', NULL, NULL, NULL),
(1035, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:51', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:03:51', NULL, NULL, NULL),
(1036, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:03:55', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:03:55', NULL, NULL, NULL),
(1037, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:17', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:05:17', NULL, NULL, NULL),
(1038, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:18', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:05:18', NULL, NULL, NULL),
(1039, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:18', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:05:18', NULL, NULL, NULL),
(1040, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:19', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:05:19', NULL, NULL, NULL),
(1041, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:23', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:05:23', NULL, NULL, NULL),
(1042, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:24', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:05:24', NULL, NULL, NULL),
(1043, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:25', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:05:25', NULL, NULL, NULL),
(1044, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:28', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:05:28', NULL, NULL, NULL),
(1045, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:30', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:05:30', NULL, NULL, NULL),
(1046, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:30', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:05:30', NULL, NULL, NULL),
(1047, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:31', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:05:31', NULL, NULL, NULL),
(1048, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:05:32', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:05:32', NULL, NULL, NULL),
(1049, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:00', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:06:00', NULL, NULL, NULL),
(1050, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:01', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:06:01', NULL, NULL, NULL),
(1051, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:02', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:06:02', NULL, NULL, NULL),
(1052, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:39', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:06:39', NULL, NULL, NULL),
(1053, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:48', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:06:48', NULL, NULL, NULL),
(1054, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:48', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:06:48', NULL, NULL, NULL),
(1055, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:50', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:06:50', NULL, NULL, NULL),
(1056, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:50', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:06:50', NULL, NULL, NULL),
(1057, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:52', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:06:52', NULL, NULL, NULL),
(1058, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:52', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:06:52', NULL, NULL, NULL),
(1059, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:06:54', NULL, NULL, NULL),
(1060, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:55', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:06:55', NULL, NULL, NULL),
(1061, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:06:55', NULL, NULL, NULL),
(1062, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:56', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:06:56', NULL, NULL, NULL),
(1063, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:57', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:06:57', NULL, NULL, NULL),
(1064, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:06:58', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:06:58', NULL, NULL, NULL),
(1065, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:00', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:07:00', NULL, NULL, NULL),
(1066, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:02', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:07:02', NULL, NULL, NULL),
(1067, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:11', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:07:11', NULL, NULL, NULL),
(1068, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:13', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:07:13', NULL, NULL, NULL),
(1069, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:14', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:07:14', NULL, NULL, NULL),
(1070, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:16', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:07:16', NULL, NULL, NULL),
(1071, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:17', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:07:17', NULL, NULL, NULL),
(1072, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:07:17', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:07:17', NULL, NULL, NULL),
(1073, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:52', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:08:52', NULL, NULL, NULL),
(1074, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:53', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:08:53', NULL, NULL, NULL),
(1075, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:53', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:08:53', NULL, NULL, NULL),
(1076, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:54', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:08:54', NULL, NULL, NULL),
(1077, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:55', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:08:55', NULL, NULL, NULL),
(1078, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:56', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:08:56', NULL, NULL, NULL),
(1079, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:58', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:08:58', NULL, NULL, NULL),
(1080, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:08:59', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:08:59', NULL, NULL, NULL),
(1081, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:02', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:09:02', NULL, NULL, NULL),
(1082, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:02', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:09:02', NULL, NULL, NULL),
(1083, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:03', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:09:03', NULL, NULL, NULL),
(1084, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:04', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:09:04', NULL, NULL, NULL),
(1085, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:06', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:09:06', NULL, NULL, NULL),
(1086, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:07', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:09:07', NULL, NULL, NULL),
(1087, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:09:27', NULL, NULL, NULL),
(1088, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:27', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:09:27', NULL, NULL, NULL),
(1089, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:28', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:09:28', NULL, NULL, NULL),
(1090, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:29', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:09:29', NULL, NULL, NULL),
(1091, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:31', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:09:31', NULL, NULL, NULL),
(1092, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:32', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:09:32', NULL, NULL, NULL),
(1093, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:33', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:09:33', NULL, NULL, NULL),
(1094, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:34', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:09:34', NULL, NULL, NULL),
(1095, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:09:35', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:09:35', NULL, NULL, NULL),
(1096, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:04', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:10:04', NULL, NULL, NULL),
(1097, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:07', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-21 20:10:07', NULL, NULL, NULL),
(1098, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:08', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:10:08', NULL, NULL, NULL),
(1099, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:12', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:10:12', NULL, NULL, NULL),
(1100, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:16', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:10:16', NULL, NULL, NULL),
(1101, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:17', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:10:17', NULL, NULL, NULL),
(1102, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:19', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:10:19', NULL, NULL, NULL),
(1103, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:21', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:21', NULL, NULL, NULL),
(1104, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:25', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:10:25', NULL, NULL, NULL),
(1105, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:25', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:10:25', NULL, NULL, NULL),
(1106, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:26', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:10:26', NULL, NULL, NULL),
(1107, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:27', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:10:27', NULL, NULL, NULL),
(1108, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:29', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:29', NULL, NULL, NULL),
(1109, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:29', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:10:29', NULL, NULL, NULL),
(1110, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:30', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:10:30', NULL, NULL, NULL),
(1111, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:31', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:10:31', NULL, NULL, NULL),
(1112, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:32', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:10:32', NULL, NULL, NULL),
(1113, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:35', NULL, NULL, NULL),
(1114, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:35', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:10:35', NULL, NULL, NULL),
(1115, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:38', NULL, NULL, NULL),
(1116, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:38', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:10:38', NULL, NULL, NULL),
(1117, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:39', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:10:39', NULL, NULL, NULL),
(1118, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:40', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:10:40', NULL, NULL, NULL),
(1119, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:42', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:42', NULL, NULL, NULL),
(1120, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:43', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:10:43', NULL, NULL, NULL),
(1121, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:10:44', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:10:44', NULL, NULL, NULL),
(1122, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:14:11', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:14:11', NULL, NULL, NULL),
(1123, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:18:59', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:18:59', NULL, NULL, NULL),
(1124, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:19:00', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:19:00', NULL, NULL, NULL),
(1125, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:19:01', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:19:01', NULL, NULL, NULL),
(1126, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-21 17:19:58', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:19:58', NULL, NULL, NULL),
(1127, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:27:01', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:27:01', NULL, NULL, NULL),
(1128, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:30:54', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:30:54', NULL, NULL, NULL);
INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(1129, 'view', 'usuarios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:30:57', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:30:57', NULL, NULL, NULL),
(1130, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:30:58', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:30:58', NULL, NULL, NULL),
(1131, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:30:58', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:30:58', NULL, NULL, NULL),
(1132, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:31:44', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:31:44', NULL, NULL, NULL),
(1133, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:32:14', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:32:14', NULL, NULL, NULL),
(1134, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:33:06', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:33:06', NULL, NULL, NULL),
(1135, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:33:08', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:33:08', NULL, NULL, NULL),
(1136, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:33:15', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:33:15', NULL, NULL, NULL),
(1137, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:33:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:33:16', NULL, NULL, NULL),
(1138, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:33:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:33:16', NULL, NULL, NULL),
(1139, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:34:26', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:34:26', NULL, NULL, NULL),
(1140, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:34:26', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:34:26', NULL, NULL, NULL),
(1141, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:46:07', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:46:07', NULL, NULL, NULL),
(1142, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:52:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:52:54', NULL, NULL, NULL),
(1143, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:52:56', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:52:56', NULL, NULL, NULL),
(1144, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:53:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:53:40', NULL, NULL, NULL),
(1145, 'view', 'usuarios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:53:41', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:53:41', NULL, NULL, NULL),
(1146, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:53:44', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:53:44', NULL, NULL, NULL),
(1147, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:53:46', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:53:46', NULL, NULL, NULL),
(1148, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:55:01', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:55:01', NULL, NULL, NULL),
(1149, 'view', 'cartorios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:55:01', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-21 20:55:01', NULL, NULL, NULL),
(1150, 'view', 'usuarios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:55:03', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:55:03', NULL, NULL, NULL),
(1151, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:55:03', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:55:03', NULL, NULL, NULL),
(1152, 'view', 'usuarios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:57:54', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-21 20:57:54', NULL, NULL, NULL),
(1153, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:57:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-21 20:57:54', NULL, NULL, NULL),
(1154, 'view', 'matriculas', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:57:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-21 20:57:56', NULL, NULL, NULL),
(1155, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:57:59', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-21 20:57:59', NULL, NULL, NULL),
(1156, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:58:01', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-21 20:58:01', NULL, NULL, NULL),
(1157, 'view', 'cidades', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:58:01', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-21 20:58:01', NULL, NULL, NULL),
(1158, 'view', 'Proprietarios', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:58:02', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-21 20:58:02', NULL, NULL, NULL),
(1159, 'view', 'locatorio', '', '2804:14d:7890:4464:e0e5:c7e5:f5d:b614', '23', 'William', '2025-03-21 17:58:03', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-21 20:58:03', NULL, NULL, NULL),
(1160, 'login', 'login', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:27:50', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-22 00:27:50', NULL, NULL, NULL),
(1161, 'view', 'matriculas', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:27:51', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 00:27:51', NULL, NULL, NULL),
(1162, 'view', 'matriculas', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:28:06', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 00:28:06', NULL, NULL, NULL),
(1163, 'view', 'matriculas', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:29', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 00:33:29', NULL, NULL, NULL),
(1164, 'view', 'locatorio', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 00:33:34', NULL, NULL, NULL),
(1165, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:35', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 00:33:35', NULL, NULL, NULL),
(1166, 'view', 'cidades', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:36', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 00:33:36', NULL, NULL, NULL),
(1167, 'view', 'local', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:37', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 00:33:37', NULL, NULL, NULL),
(1168, 'view', 'usuarios', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:38', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 00:33:38', NULL, NULL, NULL),
(1169, 'view', 'matriculas', '', '2804:14d:7890:4464:d836:f628:33c9:2d19', '23', 'William', '2025-03-21 21:33:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 00:33:40', NULL, NULL, NULL),
(1170, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 08:06:38', NULL, NULL, NULL),
(1171, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:42', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 08:06:42', NULL, NULL, NULL),
(1172, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:44', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 08:06:44', NULL, NULL, NULL),
(1173, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:46', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 08:06:46', NULL, NULL, NULL),
(1174, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:47', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 08:06:47', NULL, NULL, NULL),
(1175, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:48', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 08:06:48', NULL, NULL, NULL),
(1176, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:49', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 08:06:49', NULL, NULL, NULL),
(1177, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:50', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 08:06:50', NULL, NULL, NULL),
(1178, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:54', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 08:06:54', NULL, NULL, NULL),
(1179, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 08:06:55', NULL, NULL, NULL),
(1180, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 05:06:57', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 08:06:57', NULL, NULL, NULL),
(1181, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:24', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:42:24', NULL, NULL, NULL),
(1182, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:27', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 11:42:27', NULL, NULL, NULL),
(1183, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:27', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 11:42:27', NULL, NULL, NULL),
(1184, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:28', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 11:42:28', NULL, NULL, NULL),
(1185, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:29', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 11:42:29', NULL, NULL, NULL),
(1186, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:31', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 11:42:31', NULL, NULL, NULL),
(1187, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 11:42:34', NULL, NULL, NULL),
(1188, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:42:35', NULL, NULL, NULL),
(1189, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:36', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 11:42:36', NULL, NULL, NULL),
(1190, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:37', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 11:42:37', NULL, NULL, NULL),
(1191, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:38', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 11:42:38', NULL, NULL, NULL),
(1192, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:40', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:42:40', NULL, NULL, NULL),
(1193, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:42:42', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 11:42:42', NULL, NULL, NULL),
(1194, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:56:18', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:56:18', NULL, NULL, NULL),
(1195, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:56:18', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 11:56:18', NULL, NULL, NULL),
(1196, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:01', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:59:01', NULL, NULL, NULL),
(1197, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:02', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 11:59:02', NULL, NULL, NULL),
(1198, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:03', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 11:59:03', NULL, NULL, NULL),
(1199, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:04', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 11:59:04', NULL, NULL, NULL),
(1200, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:05', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 11:59:05', NULL, NULL, NULL),
(1201, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:06', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 11:59:06', NULL, NULL, NULL),
(1202, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:07', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 11:59:07', NULL, NULL, NULL),
(1203, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:12', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 11:59:12', NULL, NULL, NULL),
(1204, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:13', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 11:59:13', NULL, NULL, NULL),
(1205, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:14', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 11:59:14', NULL, NULL, NULL),
(1206, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:18', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 11:59:18', NULL, NULL, NULL),
(1207, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:22', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 11:59:22', NULL, NULL, NULL),
(1208, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:26', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 11:59:27', NULL, NULL, NULL),
(1209, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 08:59:32', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 11:59:32', NULL, NULL, NULL),
(1210, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:22', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:00:22', NULL, NULL, NULL),
(1211, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:23', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:00:23', NULL, NULL, NULL),
(1212, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:24', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:00:24', NULL, NULL, NULL),
(1213, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:24', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:00:24', NULL, NULL, NULL),
(1214, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:26', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:00:26', NULL, NULL, NULL),
(1215, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:26', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:00:26', NULL, NULL, NULL),
(1216, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:34', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:00:34', NULL, NULL, NULL),
(1217, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:00:35', NULL, NULL, NULL),
(1218, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:38', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:00:38', NULL, NULL, NULL),
(1219, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:00:40', NULL, NULL, NULL),
(1220, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:43', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:00:43', NULL, NULL, NULL),
(1221, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:44', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:00:44', NULL, NULL, NULL),
(1222, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:44', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:00:44', NULL, NULL, NULL),
(1223, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:46', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:00:46', NULL, NULL, NULL),
(1224, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:46', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:00:46', NULL, NULL, NULL),
(1225, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:55', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:00:55', NULL, NULL, NULL),
(1226, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:56', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:00:56', NULL, NULL, NULL),
(1227, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:58', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 12:00:58', NULL, NULL, NULL),
(1228, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:58', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:00:58', NULL, NULL, NULL),
(1229, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:00:59', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:00:59', NULL, NULL, NULL),
(1230, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:01', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:01:01', NULL, NULL, NULL),
(1231, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:07', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:01:07', NULL, NULL, NULL),
(1232, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:08', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:01:08', NULL, NULL, NULL),
(1233, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:09', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:01:09', NULL, NULL, NULL),
(1234, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:09', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:01:09', NULL, NULL, NULL),
(1235, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:11', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:01:11', NULL, NULL, NULL),
(1236, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:47', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:01:47', NULL, NULL, NULL),
(1237, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:48', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:01:48', NULL, NULL, NULL),
(1238, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:49', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:01:49', NULL, NULL, NULL),
(1239, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:49', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:01:49', NULL, NULL, NULL),
(1240, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:50', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:01:50', NULL, NULL, NULL),
(1241, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:51', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:01:51', NULL, NULL, NULL),
(1242, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:01:56', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:01:56', NULL, NULL, NULL),
(1243, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:02', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:02:02', NULL, NULL, NULL),
(1244, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:02', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:02:02', NULL, NULL, NULL),
(1245, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:04', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 12:02:04', NULL, NULL, NULL),
(1246, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:04', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:02:04', NULL, NULL, NULL),
(1247, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:07', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:02:07', NULL, NULL, NULL),
(1248, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:17', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:02:17', NULL, NULL, NULL),
(1249, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:19', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:02:19', NULL, NULL, NULL),
(1250, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:20', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:02:20', NULL, NULL, NULL),
(1251, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:22', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 12:02:22', NULL, NULL, NULL),
(1252, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:23', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 12:02:23', NULL, NULL, NULL),
(1253, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:23', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:02:23', NULL, NULL, NULL),
(1254, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:24', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:02:24', NULL, NULL, NULL),
(1255, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:02:26', NULL, NULL, NULL),
(1256, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:45', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:02:45', NULL, NULL, NULL),
(1257, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:49', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:02:49', NULL, NULL, NULL),
(1258, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:02:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:02:54', NULL, NULL, NULL),
(1259, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:03', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:04:03', NULL, NULL, NULL),
(1260, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:04:26', NULL, NULL, NULL),
(1261, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:27', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:04:27', NULL, NULL, NULL),
(1262, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:28', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:04:28', NULL, NULL, NULL),
(1263, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:28', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:04:28', NULL, NULL, NULL),
(1264, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:29', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 12:04:29', NULL, NULL, NULL),
(1265, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:32', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:04:32', NULL, NULL, NULL),
(1266, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:32', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:04:32', NULL, NULL, NULL),
(1267, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:04:34', NULL, NULL, NULL),
(1268, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:34', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:04:34', NULL, NULL, NULL),
(1269, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:35', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:04:35', NULL, NULL, NULL),
(1270, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:37', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:04:37', NULL, NULL, NULL),
(1271, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:04:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:04:38', NULL, NULL, NULL),
(1272, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:31', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:05:31', NULL, NULL, NULL),
(1273, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:32', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:05:32', NULL, NULL, NULL),
(1274, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:32', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:05:33', NULL, NULL, NULL),
(1275, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:33', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 12:05:33', NULL, NULL, NULL),
(1276, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:39', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:05:39', NULL, NULL, NULL),
(1277, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:46', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:05:46', NULL, NULL, NULL),
(1278, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:47', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:05:47', NULL, NULL, NULL),
(1279, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:48', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:05:48', NULL, NULL, NULL),
(1280, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:05:52', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:05:52', NULL, NULL, NULL),
(1281, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:03', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:06:03', NULL, NULL, NULL),
(1282, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:04', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:06:04', NULL, NULL, NULL),
(1283, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:05', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:06:05', NULL, NULL, NULL),
(1284, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:06', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-22 12:06:06', NULL, NULL, NULL),
(1285, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:07', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 12:06:07', NULL, NULL, NULL),
(1286, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:07', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:06:07', NULL, NULL, NULL),
(1287, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:06:08', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 12:06:08', NULL, NULL, NULL),
(1288, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:04', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:07:04', NULL, NULL, NULL),
(1289, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:05', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:07:05', NULL, NULL, NULL),
(1290, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:16', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:07:16', NULL, NULL, NULL),
(1291, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:20', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:07:20', NULL, NULL, NULL),
(1292, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:21', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:07:21', NULL, NULL, NULL),
(1293, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:22', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:07:22', NULL, NULL, NULL),
(1294, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:23', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:07:23', NULL, NULL, NULL),
(1295, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:24', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:07:24', NULL, NULL, NULL),
(1296, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:25', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:07:25', NULL, NULL, NULL),
(1297, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:07:27', NULL, NULL, NULL),
(1298, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:07:28', NULL, NULL, NULL),
(1299, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:45', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:07:45', NULL, NULL, NULL),
(1300, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:53', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:07:53', NULL, NULL, NULL),
(1301, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:54', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:07:54', NULL, NULL, NULL),
(1302, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:55', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 12:07:55', NULL, NULL, NULL),
(1303, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:55', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 12:07:55', NULL, NULL, NULL),
(1304, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:07:58', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 12:07:58', NULL, NULL, NULL),
(1305, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:05', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-22 12:08:05', NULL, NULL, NULL),
(1306, 'view', 'cartorios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:05', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-22 12:08:05', NULL, NULL, NULL),
(1307, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:07', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 12:08:07', NULL, NULL, NULL),
(1308, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:07', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 12:08:07', NULL, NULL, NULL),
(1309, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:09', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 12:08:09', NULL, NULL, NULL),
(1310, 'view', 'locatorio', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:15', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-22 12:08:15', NULL, NULL, NULL),
(1311, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 09:08:19', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 12:08:19', NULL, NULL, NULL),
(1312, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:35:48', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 13:35:48', NULL, NULL, NULL),
(1313, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:35:49', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-22 13:35:49', NULL, NULL, NULL),
(1314, 'view', 'cidades', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:35:50', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-22 13:35:50', NULL, NULL, NULL),
(1315, 'view', 'local', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:35:51', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-22 13:35:51', NULL, NULL, NULL),
(1316, 'view', 'matriculas', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:35:56', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-22 13:35:56', NULL, NULL, NULL),
(1317, 'view', 'Proprietarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:36:44', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-22 13:36:44', NULL, NULL, NULL),
(1318, 'view', 'usuarios', '', '2804:14d:7890:4464:3168:e4d1:6c5c:6ee9', '23', 'William', '2025-03-22 10:36:46', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-22 13:36:46', NULL, NULL, NULL),
(1319, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:47', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:57:47', NULL, NULL, NULL),
(1320, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:55', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 12:57:55', NULL, NULL, NULL),
(1321, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:55', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 12:57:55', NULL, NULL, NULL),
(1322, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:57:56', NULL, NULL, NULL),
(1323, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:57', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 12:57:57', NULL, NULL, NULL),
(1324, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:58', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 12:57:58', NULL, NULL, NULL),
(1325, 'view', 'Proprietarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:57:59', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-24 12:57:59', NULL, NULL, NULL),
(1326, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:00', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 12:58:00', NULL, NULL, NULL),
(1327, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:18', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 12:58:18', NULL, NULL, NULL),
(1328, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:20', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:58:20', NULL, NULL, NULL),
(1329, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:20', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 12:58:20', NULL, NULL, NULL),
(1330, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:58:38', NULL, NULL, NULL),
(1331, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 12:58:38', NULL, NULL, NULL),
(1332, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:40', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:58:40', NULL, NULL, NULL),
(1333, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:42', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 12:58:42', NULL, NULL, NULL),
(1334, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:42', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 12:58:42', NULL, NULL, NULL),
(1335, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:58:43', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 12:58:43', NULL, NULL, NULL),
(1336, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:39', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:59:39', NULL, NULL, NULL),
(1337, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:45', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 12:59:45', NULL, NULL, NULL),
(1338, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:45', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 12:59:45', NULL, NULL, NULL),
(1339, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:47', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:59:47', NULL, NULL, NULL),
(1340, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:48', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 12:59:48', NULL, NULL, NULL),
(1341, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:49', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 12:59:49', NULL, NULL, NULL),
(1342, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:50', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 12:59:50', NULL, NULL, NULL),
(1343, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:52', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 12:59:52', NULL, NULL, NULL),
(1344, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:55', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 12:59:55', NULL, NULL, NULL),
(1345, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:56', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 12:59:56', NULL, NULL, NULL),
(1346, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:57', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 12:59:57', NULL, NULL, NULL),
(1347, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:58', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 12:59:58', NULL, NULL, NULL),
(1348, 'view', 'Proprietarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 09:59:59', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-24 12:59:59', NULL, NULL, NULL),
(1349, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:46:51', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 16:46:51', NULL, NULL, NULL),
(1350, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:52:36', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 16:52:36', NULL, NULL, NULL);
INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(1351, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:52:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 16:52:38', NULL, NULL, NULL),
(1352, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:52:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 16:52:40', NULL, NULL, NULL),
(1353, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:52:42', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 16:52:42', NULL, NULL, NULL),
(1354, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:52:44', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 16:52:44', NULL, NULL, NULL),
(1355, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:53:22', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 16:53:22', NULL, NULL, NULL),
(1356, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:53:23', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 16:53:23', NULL, NULL, NULL),
(1357, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 13:53:24', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 16:53:24', NULL, NULL, NULL),
(1358, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 18:53:38', NULL, NULL, NULL),
(1359, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:38', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 18:53:38', NULL, NULL, NULL),
(1360, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:39', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 18:53:39', NULL, NULL, NULL),
(1361, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:39', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 18:53:39', NULL, NULL, NULL),
(1362, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:40', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 18:53:40', NULL, NULL, NULL),
(1363, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:41', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 18:53:41', NULL, NULL, NULL),
(1364, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:42', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 18:53:42', NULL, NULL, NULL),
(1365, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:43', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 18:53:43', NULL, NULL, NULL),
(1366, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:44', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 18:53:44', NULL, NULL, NULL),
(1367, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 15:53:45', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 18:53:45', NULL, NULL, NULL),
(1368, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:02:25', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 19:02:25', NULL, NULL, NULL),
(1369, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:02:25', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 19:02:25', NULL, NULL, NULL),
(1370, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 19:17:26', NULL, NULL, NULL),
(1371, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 19:17:28', NULL, NULL, NULL),
(1372, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:29', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 19:17:29', NULL, NULL, NULL),
(1373, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:44', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 19:17:44', NULL, NULL, NULL),
(1374, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:44', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 19:17:44', NULL, NULL, NULL),
(1375, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:47', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 19:17:47', NULL, NULL, NULL),
(1376, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:53', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 19:17:53', NULL, NULL, NULL),
(1377, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:17:54', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 19:17:54', NULL, NULL, NULL),
(1378, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 16:47:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 19:47:26', NULL, NULL, NULL),
(1379, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:08:33', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 20:08:33', NULL, NULL, NULL),
(1380, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:08:35', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 20:08:35', NULL, NULL, NULL),
(1381, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:08:36', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 20:08:36', NULL, NULL, NULL),
(1382, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:08:37', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 20:08:37', NULL, NULL, NULL),
(1383, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:55', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 20:52:55', NULL, NULL, NULL),
(1384, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 20:52:55', NULL, NULL, NULL),
(1385, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:55', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 20:52:55', NULL, NULL, NULL),
(1386, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:56', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 20:52:56', NULL, NULL, NULL),
(1387, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:58', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 20:52:58', NULL, NULL, NULL),
(1388, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 17:52:59', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 20:52:59', NULL, NULL, NULL),
(1389, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:15:16', NULL, NULL, NULL),
(1390, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:18', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:15:18', NULL, NULL, NULL),
(1391, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:20', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 21:15:20', NULL, NULL, NULL),
(1392, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:21', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:15:21', NULL, NULL, NULL),
(1393, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:22', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 21:15:22', NULL, NULL, NULL),
(1394, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:22', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 21:15:22', NULL, NULL, NULL),
(1395, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:24', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 21:15:24', NULL, NULL, NULL),
(1396, 'view', 'Proprietarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:25', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-24 21:15:25', NULL, NULL, NULL),
(1397, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:26', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 21:15:26', NULL, NULL, NULL),
(1398, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:31', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:15:31', NULL, NULL, NULL),
(1399, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:15:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:15:40', NULL, NULL, NULL),
(1400, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:05', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:19:05', NULL, NULL, NULL),
(1401, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:21', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:19:21', NULL, NULL, NULL),
(1402, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:22', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 21:19:22', NULL, NULL, NULL),
(1403, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:23', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:19:23', NULL, NULL, NULL),
(1404, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:25', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:19:25', NULL, NULL, NULL),
(1405, 'insert', 'matriculas', 'MT3362', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:33', 'William cadastrou a Matrícula - MT3362', 'teste', '\"\"', NULL, NULL, '2025-03-24 21:19:33', NULL, NULL, NULL),
(1406, 'edit', 'matriculas', 'MT3362', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:37', 'William alterou a Matrícula - MT3362', 'teste1', '\"\"', NULL, NULL, '2025-03-24 21:19:37', NULL, NULL, NULL),
(1407, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:38', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:19:38', NULL, NULL, NULL),
(1408, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:39', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:19:39', NULL, NULL, NULL),
(1409, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:19:42', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:19:42', NULL, NULL, NULL),
(1410, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:20:07', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:20:07', NULL, NULL, NULL),
(1411, 'delete', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:20:09', 'William deletou a Matrícula undefined', '', '\"\"', NULL, NULL, '2025-03-24 21:20:09', NULL, NULL, NULL),
(1412, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:20:11', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:20:11', NULL, NULL, NULL),
(1413, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:20:14', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 21:20:14', NULL, NULL, NULL),
(1414, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:22:54', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:22:54', NULL, NULL, NULL),
(1415, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:03', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:23:03', NULL, NULL, NULL),
(1416, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:08', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:23:08', NULL, NULL, NULL),
(1417, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:09', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:23:09', NULL, NULL, NULL),
(1418, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:11', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:23:11', NULL, NULL, NULL),
(1419, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:12', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:23:12', NULL, NULL, NULL),
(1420, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:13', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 21:23:13', NULL, NULL, NULL),
(1421, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:14', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 21:23:14', NULL, NULL, NULL),
(1422, 'view', 'Proprietarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:15', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-24 21:23:15', NULL, NULL, NULL),
(1423, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:23:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:23:16', NULL, NULL, NULL),
(1424, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:27:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:27:26', NULL, NULL, NULL),
(1425, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:31:02', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:31:02', NULL, NULL, NULL),
(1426, 'insert', 'matriculas', 'MT3363', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:31:06', 'William cadastrou a Matrícula - MT3363', 'teste', '\"\"', NULL, NULL, '2025-03-24 21:31:06', NULL, NULL, NULL),
(1427, 'delete', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:31:08', 'William deletou a Matricula undefined', '', 'null', NULL, NULL, '2025-03-24 21:31:08', NULL, NULL, NULL),
(1428, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:31:10', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:31:10', NULL, NULL, NULL),
(1429, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:32:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:32:35', NULL, NULL, NULL),
(1430, 'insert', 'matriculas', 'MT3364', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:32:39', 'William cadastrou a Matrícula - MT3364', 'teste', '\"\"', NULL, NULL, '2025-03-24 21:32:39', NULL, NULL, NULL),
(1431, 'delete', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:33:04', 'William deletou a Matricula undefined', '', 'null', NULL, NULL, '2025-03-24 21:33:04', NULL, NULL, NULL),
(1432, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:33:13', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:33:13', NULL, NULL, NULL),
(1433, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:33:20', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:33:20', NULL, NULL, NULL),
(1434, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:17', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:34:17', NULL, NULL, NULL),
(1435, 'insert', 'matriculas', 'MT3365', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:26', 'William cadastrou a Matrícula - MT3365', 'delete', '\"\"', NULL, NULL, '2025-03-24 21:34:26', NULL, NULL, NULL),
(1436, 'delete', 'matriculas', '3365', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:28', 'William deletou a Matricula 3365', '', 'null', NULL, NULL, '2025-03-24 21:34:28', NULL, NULL, NULL),
(1437, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:29', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 21:34:29', NULL, NULL, NULL),
(1438, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:30', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:34:30', NULL, NULL, NULL),
(1439, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:52', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:34:52', NULL, NULL, NULL),
(1440, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:34:52', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:34:52', NULL, NULL, NULL),
(1441, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:35:41', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 21:35:41', NULL, NULL, NULL),
(1442, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:47:13', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:47:13', NULL, NULL, NULL),
(1443, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:47:23', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:47:23', NULL, NULL, NULL),
(1444, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:52:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:52:35', NULL, NULL, NULL),
(1445, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:55:33', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:55:33', NULL, NULL, NULL),
(1446, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:34', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:56:34', NULL, NULL, NULL),
(1447, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:56:35', NULL, NULL, NULL),
(1448, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:36', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:56:36', NULL, NULL, NULL),
(1449, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 21:56:38', NULL, NULL, NULL),
(1450, 'copy', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:39', 'William copiou os dados em Matrículas null', '', 'null', NULL, NULL, '2025-03-24 21:56:39', NULL, NULL, NULL),
(1451, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:56:43', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:56:43', NULL, NULL, NULL),
(1452, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 18:57:06', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 21:57:06', NULL, NULL, NULL),
(1453, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:10', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:00:10', NULL, NULL, NULL),
(1454, 'copy', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:12', 'William copiou os dados em Matrículas', '', 'null', NULL, NULL, '2025-03-24 22:00:12', NULL, NULL, NULL),
(1455, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:14', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:00:14', NULL, NULL, NULL),
(1456, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:17', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:00:17', NULL, NULL, NULL),
(1457, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:39', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:00:39', NULL, NULL, NULL),
(1458, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:00:42', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:00:42', NULL, NULL, NULL),
(1459, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:05', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:05:05', NULL, NULL, NULL),
(1460, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:14', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:05:14', NULL, NULL, NULL),
(1461, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:17', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:05:17', NULL, NULL, NULL),
(1462, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:21', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:05:21', NULL, NULL, NULL),
(1463, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:41', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:05:41', NULL, NULL, NULL),
(1464, 'export', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:42', 'William exportou os dados em Matrículas', '', 'null', NULL, NULL, '2025-03-24 22:05:42', NULL, NULL, NULL),
(1465, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:05:45', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:05:45', NULL, NULL, NULL),
(1466, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:06:58', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:06:58', NULL, NULL, NULL),
(1467, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:06:59', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:06:59', NULL, NULL, NULL),
(1468, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:03', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:07:03', NULL, NULL, NULL),
(1469, 'export', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:05', 'William fez uma exportação csv de dados em Matrículas', '', 'null', NULL, NULL, '2025-03-24 22:07:05', NULL, NULL, NULL),
(1470, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:07', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:07:07', NULL, NULL, NULL),
(1471, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:22', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:07:22', NULL, NULL, NULL),
(1472, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:47', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:07:47', NULL, NULL, NULL),
(1473, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:48', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:07:48', NULL, NULL, NULL),
(1474, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:59', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:07:59', NULL, NULL, NULL),
(1475, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:07:59', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 22:07:59', NULL, NULL, NULL),
(1476, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:00', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 22:08:00', NULL, NULL, NULL),
(1477, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:01', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 22:08:01', NULL, NULL, NULL),
(1478, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:07', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:08:07', NULL, NULL, NULL),
(1479, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:09', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:08:09', NULL, NULL, NULL),
(1480, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:31', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:08:31', NULL, NULL, NULL),
(1481, 'export', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:33', 'William fez uma exportação CSV dos dados em Matrículas', '', 'null', NULL, NULL, '2025-03-24 22:08:33', NULL, NULL, NULL),
(1482, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:39', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:08:39', NULL, NULL, NULL),
(1483, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:08:51', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:08:51', NULL, NULL, NULL),
(1484, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:10:17', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:10:17', NULL, NULL, NULL),
(1485, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:10:17', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:10:17', NULL, NULL, NULL),
(1486, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:11:51', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:11:51', NULL, NULL, NULL),
(1487, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:12:57', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:12:57', NULL, NULL, NULL),
(1488, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:12:59', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:12:59', NULL, NULL, NULL),
(1489, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:00', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 22:13:00', NULL, NULL, NULL),
(1490, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:02', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 22:13:02', NULL, NULL, NULL),
(1491, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:02', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 22:13:02', NULL, NULL, NULL),
(1492, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:04', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 22:13:04', NULL, NULL, NULL),
(1493, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:04', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 22:13:04', NULL, NULL, NULL),
(1494, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:05', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:13:05', NULL, NULL, NULL),
(1495, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:13:07', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:13:07', NULL, NULL, NULL),
(1496, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:47', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 22:17:47', NULL, NULL, NULL),
(1497, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:47', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 22:17:47', NULL, NULL, NULL),
(1498, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:48', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-24 22:17:48', NULL, NULL, NULL),
(1499, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:51', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:17:51', NULL, NULL, NULL),
(1500, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:53', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:17:53', NULL, NULL, NULL),
(1501, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:56', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:17:56', NULL, NULL, NULL),
(1502, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:57', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 22:17:57', NULL, NULL, NULL),
(1503, 'view', 'cidades', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:59', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-24 22:17:59', NULL, NULL, NULL),
(1504, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:17:59', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 22:17:59', NULL, NULL, NULL),
(1505, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:18:01', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 22:18:01', NULL, NULL, NULL),
(1506, 'view', 'Proprietarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:18:01', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-24 22:18:01', NULL, NULL, NULL),
(1507, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:18:05', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-24 22:18:05', NULL, NULL, NULL),
(1508, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:18:09', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:18:09', NULL, NULL, NULL),
(1509, 'insert', 'matriculas', 'MT3366', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:19:56', 'William cadastrou a Matrícula - MT3366', 'teste 1', '\"\"', NULL, NULL, '2025-03-24 22:19:56', NULL, NULL, NULL),
(1510, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:26', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:20:26', NULL, NULL, NULL),
(1511, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:27', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 22:20:27', NULL, NULL, NULL),
(1512, 'view', 'local', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:28', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-24 22:20:28', NULL, NULL, NULL),
(1513, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:29', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:20:29', NULL, NULL, NULL),
(1514, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:31', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:20:31', NULL, NULL, NULL),
(1515, 'view', 'locatorio', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:33', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-24 22:20:33', NULL, NULL, NULL),
(1516, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:34', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-24 22:20:34', NULL, NULL, NULL),
(1517, 'view', 'cartorios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:35', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-24 22:20:35', NULL, NULL, NULL),
(1518, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:36', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:20:36', NULL, NULL, NULL),
(1519, 'view', 'matriculas', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:20:37', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-24 22:20:37', NULL, NULL, NULL),
(1520, 'view', 'usuarios', '', '2804:14d:7890:4464:d4ed:6fd2:516e:69e8', '23', 'William', '2025-03-24 19:23:12', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-24 22:23:12', NULL, NULL, NULL),
(1521, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:09:05', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:09:05', NULL, NULL, NULL),
(1522, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:12:26', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:12:26', NULL, NULL, NULL),
(1523, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:13:04', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:13:04', NULL, NULL, NULL),
(1524, 'upload', 'ged', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:19:17', 'William cadastrou o documento teste', '', 'null', NULL, NULL, '2025-03-25 09:19:17', NULL, NULL, NULL),
(1525, 'upload', 'ged', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:19:28', 'William cadastrou o documento teste', '', 'null', NULL, NULL, '2025-03-25 09:19:28', NULL, NULL, NULL),
(1526, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:20:35', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:20:35', NULL, NULL, NULL),
(1527, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:21:41', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:21:41', NULL, NULL, NULL),
(1528, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:22:04', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:22:04', NULL, NULL, NULL),
(1529, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:22:05', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:22:05', NULL, NULL, NULL),
(1530, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:22:10', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:22:10', NULL, NULL, NULL),
(1531, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:22:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:22:55', NULL, NULL, NULL),
(1532, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:26:18', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:26:18', NULL, NULL, NULL),
(1533, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:26:24', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:26:24', NULL, NULL, NULL),
(1534, 'upload', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:26:33', 'William cadastrou o documento (messi) no GED MT3366', '', 'null', NULL, NULL, '2025-03-25 09:26:33', NULL, NULL, NULL),
(1535, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:26:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:26:38', NULL, NULL, NULL),
(1536, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:27:03', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:27:03', NULL, NULL, NULL),
(1537, 'upload', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:29:22', 'William cadastrou o documento (mais um) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:29:22', NULL, NULL, NULL),
(1538, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:29:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:29:28', NULL, NULL, NULL),
(1539, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:29:33', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:29:33', NULL, NULL, NULL),
(1540, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:31:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:31:40', NULL, NULL, NULL),
(1541, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:34:29', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:34:29', NULL, NULL, NULL),
(1542, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:16', 'William deletou o documento (mais um) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:38:16', NULL, NULL, NULL),
(1543, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:23', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:38:23', NULL, NULL, NULL),
(1544, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:38:27', NULL, NULL, NULL),
(1545, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:31', 'William deletou o documento (messi) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:38:31', NULL, NULL, NULL),
(1546, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:35', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:38:35', NULL, NULL, NULL),
(1547, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:55', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:38:55', NULL, NULL, NULL),
(1548, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:38:58', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:38:58', NULL, NULL, NULL),
(1549, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:00', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:39:00', NULL, NULL, NULL),
(1550, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:02', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:39:02', NULL, NULL, NULL),
(1551, 'delete', 'GED', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:04', 'William deletou o documento (kkkk) no GED - MT3366', '', 'null', NULL, NULL, '2025-03-25 09:39:04', NULL, NULL, NULL),
(1552, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:05', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:39:05', NULL, NULL, NULL),
(1553, 'upload', 'GED', 'US63', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:13', 'William cadastrou o documento (teste) no GED - US63', '', 'null', NULL, NULL, '2025-03-25 09:39:13', NULL, NULL, NULL),
(1554, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:39:16', NULL, NULL, NULL),
(1555, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:25', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:39:25', NULL, NULL, NULL),
(1556, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:28', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:39:28', NULL, NULL, NULL),
(1557, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:40', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:39:40', NULL, NULL, NULL),
(1558, 'delete', 'matriculas', 'MT3366', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:45', 'William deletou a Matricula MT3366', 'teste 1', 'null', NULL, NULL, '2025-03-25 09:39:45', NULL, NULL, NULL),
(1559, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:39:47', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:39:47', NULL, NULL, NULL),
(1560, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:06', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:41:06', NULL, NULL, NULL),
(1561, 'delete', 'matriculas', 'MT3361', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:09', 'William deletou a Matrícula - MT3361', '', 'null', NULL, NULL, '2025-03-25 09:41:09', NULL, NULL, NULL),
(1562, 'delete', 'matriculas', 'MT3360', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:12', 'William deletou a Matrícula - MT3360', '', 'null', NULL, NULL, '2025-03-25 09:41:12', NULL, NULL, NULL),
(1563, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:15', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:41:15', NULL, NULL, NULL),
(1564, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:29', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:41:29', NULL, NULL, NULL),
(1565, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:44', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:41:44', NULL, NULL, NULL),
(1566, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:45', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:41:45', NULL, NULL, NULL),
(1567, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:49', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:41:49', NULL, NULL, NULL),
(1568, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:50', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:41:50', NULL, NULL, NULL),
(1569, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:51', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 09:41:51', NULL, NULL, NULL),
(1570, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:52', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 09:41:52', NULL, NULL, NULL);
INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(1571, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:53', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:41:53', NULL, NULL, NULL),
(1572, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:41:55', NULL, NULL, NULL),
(1573, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:58', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:41:58', NULL, NULL, NULL),
(1574, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:41:59', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:41:59', NULL, NULL, NULL),
(1575, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:00', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:42:00', NULL, NULL, NULL),
(1576, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:01', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 09:42:01', NULL, NULL, NULL),
(1577, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:02', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 09:42:02', NULL, NULL, NULL),
(1578, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:03', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:42:03', NULL, NULL, NULL),
(1579, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:05', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:42:05', NULL, NULL, NULL),
(1580, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:42:13', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:42:13', NULL, NULL, NULL),
(1581, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:43:00', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:43:00', NULL, NULL, NULL),
(1582, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:43:01', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:43:01', NULL, NULL, NULL),
(1583, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:43:05', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:43:05', NULL, NULL, NULL),
(1584, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:43:56', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:43:56', NULL, NULL, NULL),
(1585, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:43:56', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:43:56', NULL, NULL, NULL),
(1586, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:02', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:44:02', NULL, NULL, NULL),
(1587, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:08', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:44:08', NULL, NULL, NULL),
(1588, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:11', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:44:11', NULL, NULL, NULL),
(1589, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:44:16', NULL, NULL, NULL),
(1590, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:19', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:44:19', NULL, NULL, NULL),
(1591, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:20', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:44:20', NULL, NULL, NULL),
(1592, 'insert', 'locatorio', 'US68', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:28', 'William cadastrou o Locatário - US68', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:44:28', NULL, NULL, NULL),
(1593, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:38', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:44:38', NULL, NULL, NULL),
(1594, 'edit', 'locatorio', 'US68', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:47', 'William alterou o Locatário - US68', 'teste 1', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:44:47', NULL, NULL, NULL),
(1595, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:44:50', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:44:50', NULL, NULL, NULL),
(1596, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:45:07', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:45:07', NULL, NULL, NULL),
(1597, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:45:10', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:45:10', NULL, NULL, NULL),
(1598, 'delete', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:45:12', 'William deletou o Locatário ', '', '[]', NULL, NULL, '2025-03-25 09:45:12', NULL, NULL, NULL),
(1599, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:45:14', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:45:14', NULL, NULL, NULL),
(1600, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:00', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:49:00', NULL, NULL, NULL),
(1601, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:02', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:49:02', NULL, NULL, NULL),
(1602, 'insert', 'locatorio', 'US69', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:13', 'William cadastrou o Locatário - US69', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:49:13', NULL, NULL, NULL),
(1603, 'delete', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:18', 'William deletou o Locatário - US69', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:49:18', NULL, NULL, NULL),
(1604, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:20', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:49:20', NULL, NULL, NULL),
(1605, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:49:29', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:49:29', NULL, NULL, NULL),
(1606, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:38', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:38', NULL, NULL, NULL),
(1607, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:38', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:38', NULL, NULL, NULL),
(1608, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:51', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:52', NULL, NULL, NULL),
(1609, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:52', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:52', NULL, NULL, NULL),
(1610, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:53', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:53', NULL, NULL, NULL),
(1611, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:50:53', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:50:53', NULL, NULL, NULL),
(1612, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:51:14', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:51:14', NULL, NULL, NULL),
(1613, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:51:15', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 09:51:15', NULL, NULL, NULL),
(1614, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:51:16', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:51:16', NULL, NULL, NULL),
(1615, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:51:58', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:51:58', NULL, NULL, NULL),
(1616, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:51:58', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:51:58', NULL, NULL, NULL),
(1617, 'logout', 'logout', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:52:18', 'William efetuou o logout', '', 'null', NULL, NULL, '2025-03-25 09:52:18', NULL, NULL, NULL),
(1618, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:18', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:54:18', NULL, NULL, NULL),
(1619, 'login', 'login', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:25', 'William efetuou o login', '', 'null', NULL, NULL, '2025-03-25 09:54:25', NULL, NULL, NULL),
(1620, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:26', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:54:26', NULL, NULL, NULL),
(1621, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:34', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:54:34', NULL, NULL, NULL),
(1622, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:52', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:54:52', NULL, NULL, NULL),
(1623, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:53', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:54:53', NULL, NULL, NULL),
(1624, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:54', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:54:54', NULL, NULL, NULL),
(1625, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:54:55', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:54:55', NULL, NULL, NULL),
(1626, 'insert', 'relogios-de-agua', 'RA57', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:03', 'William cadastrou o Relógio de Água - RA57', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:55:03', NULL, NULL, NULL),
(1627, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:09', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:55:09', NULL, NULL, NULL),
(1628, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:13', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:55:13', NULL, NULL, NULL),
(1629, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:19', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:55:19', NULL, NULL, NULL),
(1630, 'edit', 'relogios-de-agua', 'RA57', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:25', 'William alterou o Relógio de Água - RA57', 'teste 1', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:55:25', NULL, NULL, NULL),
(1631, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:55:28', NULL, NULL, NULL),
(1632, 'delete', 'relogios-de-agua', 'RA57', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:37', 'William deletou o Relógio de Água RA57', '', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 09:55:37', NULL, NULL, NULL),
(1633, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:40', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:55:40', NULL, NULL, NULL),
(1634, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:55:40', NULL, NULL, NULL),
(1635, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:55:58', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:55:58', NULL, NULL, NULL),
(1636, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:56:00', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:56:00', NULL, NULL, NULL),
(1637, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:56:01', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:56:01', NULL, NULL, NULL),
(1638, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:56:02', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:56:02', NULL, NULL, NULL),
(1639, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:10', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:10', NULL, NULL, NULL),
(1640, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:10', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:10', NULL, NULL, NULL),
(1641, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:11', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 09:58:11', NULL, NULL, NULL),
(1642, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:12', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 09:58:12', NULL, NULL, NULL),
(1643, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:12', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 09:58:12', NULL, NULL, NULL),
(1644, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:14', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:58:14', NULL, NULL, NULL),
(1645, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:15', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:15', NULL, NULL, NULL),
(1646, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:17', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:17', NULL, NULL, NULL),
(1647, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:17', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:58:17', NULL, NULL, NULL),
(1648, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:18', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 09:58:18', NULL, NULL, NULL),
(1649, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:19', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 09:58:19', NULL, NULL, NULL),
(1650, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:20', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:58:20', NULL, NULL, NULL),
(1651, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:21', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:58:21', NULL, NULL, NULL),
(1652, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:29', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:29', NULL, NULL, NULL),
(1653, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:31', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:31', NULL, NULL, NULL),
(1654, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:32', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:32', NULL, NULL, NULL),
(1655, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:33', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:33', NULL, NULL, NULL),
(1656, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:34', NULL, NULL, NULL),
(1657, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:35', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:35', NULL, NULL, NULL),
(1658, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:35', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:35', NULL, NULL, NULL),
(1659, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:37', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:58:37', NULL, NULL, NULL),
(1660, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:38', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 09:58:38', NULL, NULL, NULL),
(1661, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:39', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 09:58:39', NULL, NULL, NULL),
(1662, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:39', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:58:40', NULL, NULL, NULL),
(1663, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:51', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:58:51', NULL, NULL, NULL),
(1664, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:55', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:58:55', NULL, NULL, NULL),
(1665, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:56', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 09:58:56', NULL, NULL, NULL),
(1666, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:57', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 09:58:57', NULL, NULL, NULL),
(1667, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:58:58', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:58:58', NULL, NULL, NULL),
(1668, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:06', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:59:06', NULL, NULL, NULL),
(1669, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:07', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:07', NULL, NULL, NULL),
(1670, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:07', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:07', NULL, NULL, NULL),
(1671, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:09', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 09:59:09', NULL, NULL, NULL),
(1672, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:10', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:59:10', NULL, NULL, NULL),
(1673, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:13', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 09:59:13', NULL, NULL, NULL),
(1674, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:14', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:14', NULL, NULL, NULL),
(1675, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:15', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 09:59:15', NULL, NULL, NULL),
(1676, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:15', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 09:59:15', NULL, NULL, NULL),
(1677, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:17', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:59:17', NULL, NULL, NULL),
(1678, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:19', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:19', NULL, NULL, NULL),
(1679, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:21', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 09:59:21', NULL, NULL, NULL),
(1680, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:21', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 09:59:21', NULL, NULL, NULL),
(1681, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:23', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 09:59:23', NULL, NULL, NULL),
(1682, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:25', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:25', NULL, NULL, NULL),
(1683, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:27', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 09:59:27', NULL, NULL, NULL),
(1684, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:28', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 09:59:28', NULL, NULL, NULL),
(1685, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:29', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 09:59:29', NULL, NULL, NULL),
(1686, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:34', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:59:34', NULL, NULL, NULL),
(1687, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:38', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 09:59:38', NULL, NULL, NULL),
(1688, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:54', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 09:59:54', NULL, NULL, NULL),
(1689, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 06:59:59', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 09:59:59', NULL, NULL, NULL),
(1690, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:00:10', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:00:10', NULL, NULL, NULL),
(1691, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:00:12', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:00:12', NULL, NULL, NULL),
(1692, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:37', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:03:37', NULL, NULL, NULL),
(1693, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:47', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:03:47', NULL, NULL, NULL),
(1694, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:49', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:03:49', NULL, NULL, NULL),
(1695, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:50', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:03:50', NULL, NULL, NULL),
(1696, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:51', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 10:03:51', NULL, NULL, NULL),
(1697, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:52', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:03:52', NULL, NULL, NULL),
(1698, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:53', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:03:53', NULL, NULL, NULL),
(1699, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:55', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:03:55', NULL, NULL, NULL),
(1700, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:57', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:03:57', NULL, NULL, NULL),
(1701, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:03:59', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:03:59', NULL, NULL, NULL),
(1702, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:02', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:04:02', NULL, NULL, NULL),
(1703, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:03', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 10:04:03', NULL, NULL, NULL),
(1704, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:04', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:04:04', NULL, NULL, NULL),
(1705, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:13', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:04:13', NULL, NULL, NULL),
(1706, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:28', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:04:28', NULL, NULL, NULL),
(1707, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:28', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:04:28', NULL, NULL, NULL),
(1708, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:30', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:04:30', NULL, NULL, NULL),
(1709, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:31', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 10:04:31', NULL, NULL, NULL),
(1710, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:32', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:04:32', NULL, NULL, NULL),
(1711, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:34', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 10:04:34', NULL, NULL, NULL),
(1712, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:34', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:04:34', NULL, NULL, NULL),
(1713, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:35', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 10:04:35', NULL, NULL, NULL),
(1714, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:36', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:04:36', NULL, NULL, NULL),
(1715, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:37', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:04:37', NULL, NULL, NULL),
(1716, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:38', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:04:38', NULL, NULL, NULL),
(1717, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:39', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:04:39', NULL, NULL, NULL),
(1718, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:40', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 10:04:40', NULL, NULL, NULL),
(1719, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:04:41', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:04:41', NULL, NULL, NULL),
(1720, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:54', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:05:54', NULL, NULL, NULL),
(1721, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:54', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:05:54', NULL, NULL, NULL),
(1722, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:55', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:05:55', NULL, NULL, NULL),
(1723, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:56', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:05:56', NULL, NULL, NULL),
(1724, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:56', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:05:56', NULL, NULL, NULL),
(1725, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:58', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 10:05:58', NULL, NULL, NULL),
(1726, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:05:59', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 10:05:59', NULL, NULL, NULL),
(1727, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:06:00', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:06:00', NULL, NULL, NULL),
(1728, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:06:01', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:06:01', NULL, NULL, NULL),
(1729, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:06:09', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:06:09', NULL, NULL, NULL),
(1730, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:06:42', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:06:42', NULL, NULL, NULL),
(1731, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:06:44', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:06:44', NULL, NULL, NULL),
(1732, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:18', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:08:18', NULL, NULL, NULL),
(1733, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:18', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:08:18', NULL, NULL, NULL),
(1734, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:20', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:08:20', NULL, NULL, NULL),
(1735, 'export', 'locatario', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:22', 'William fez uma exportação CSV dos dados em Locatário', '', 'null', NULL, NULL, '2025-03-25 10:08:22', NULL, NULL, NULL),
(1736, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:24', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:08:24', NULL, NULL, NULL),
(1737, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:08:29', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:08:29', NULL, NULL, NULL),
(1738, 'delete', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:09:11', 'William deletou o Locatário - US69', '', '[]', NULL, NULL, '2025-03-25 10:09:11', NULL, NULL, NULL),
(1739, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:09:13', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:09:13', NULL, NULL, NULL),
(1740, 'view', 'locatorio', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:09:20', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:09:20', NULL, NULL, NULL),
(1741, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:14', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:12:14', NULL, NULL, NULL),
(1742, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:15', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:12:15', NULL, NULL, NULL),
(1743, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:16', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:12:16', NULL, NULL, NULL),
(1744, 'copy', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:17', 'William copiou os dados em Locatários', '', 'null', NULL, NULL, '2025-03-25 10:12:17', NULL, NULL, NULL),
(1745, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:19', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:12:19', NULL, NULL, NULL),
(1746, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:23', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:12:23', NULL, NULL, NULL),
(1747, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:25', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:12:25', NULL, NULL, NULL),
(1748, 'insert', 'relogios-de-agua', 'RA58', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:37', 'William cadastrou o Relógio de Água - RA58', 'teste', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 10:12:37', NULL, NULL, NULL),
(1749, 'edit', 'relogios-de-agua', 'RA58', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:42', 'William alterou o Relógio de Água - RA58', 'teste1', '[\"MT1339 - RJO15\"]', NULL, NULL, '2025-03-25 10:12:42', NULL, NULL, NULL),
(1750, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:43', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:12:43', NULL, NULL, NULL),
(1751, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:49', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:12:49', NULL, NULL, NULL),
(1752, 'delete', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:51', 'William deletou o Relógio de Água - undefined', '', '[]', NULL, NULL, '2025-03-25 10:12:51', NULL, NULL, NULL),
(1753, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:53', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:12:53', NULL, NULL, NULL),
(1754, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:12:56', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:12:56', NULL, NULL, NULL),
(1755, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:02', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:13:02', NULL, NULL, NULL),
(1756, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:02', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:13:02', NULL, NULL, NULL),
(1757, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:40', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:13:40', NULL, NULL, NULL),
(1758, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:42', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:13:42', NULL, NULL, NULL),
(1759, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:43', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 10:13:43', NULL, NULL, NULL),
(1760, 'view', 'cartorios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:44', 'William visualizou a página /cartorios', '', 'null', NULL, NULL, '2025-03-25 10:13:44', NULL, NULL, NULL),
(1761, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:45', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:13:45', NULL, NULL, NULL),
(1762, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:46', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:13:46', NULL, NULL, NULL),
(1763, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:47', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:13:47', NULL, NULL, NULL),
(1764, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:50', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:13:50', NULL, NULL, NULL),
(1765, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:13:53', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:13:53', NULL, NULL, NULL),
(1766, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:14', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:16:14', NULL, NULL, NULL),
(1767, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:18', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:16:18', NULL, NULL, NULL),
(1768, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:19', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:16:19', NULL, NULL, NULL),
(1769, 'view', 'relogios-de-energia', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:20', 'William visualizou a página /relogios-energia', '', 'null', NULL, NULL, '2025-03-25 10:16:20', NULL, NULL, NULL),
(1770, 'view', 'local', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:21', 'William visualizou a página /local', '', 'null', NULL, NULL, '2025-03-25 10:16:21', NULL, NULL, NULL),
(1771, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:22', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:16:22', NULL, NULL, NULL),
(1772, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:16:27', NULL, NULL, NULL),
(1773, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:27', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:16:27', NULL, NULL, NULL),
(1774, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:28', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:16:28', NULL, NULL, NULL),
(1775, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:40', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:16:40', NULL, NULL, NULL),
(1776, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:41', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:16:41', NULL, NULL, NULL),
(1777, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:42', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:16:42', NULL, NULL, NULL),
(1778, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:16:43', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 10:16:43', NULL, NULL, NULL),
(1779, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:31', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:18:31', NULL, NULL, NULL),
(1780, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:31', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:18:31', NULL, NULL, NULL),
(1781, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:32', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:18:32', NULL, NULL, NULL),
(1782, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:33', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:18:33', NULL, NULL, NULL),
(1783, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:34', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:18:34', NULL, NULL, NULL),
(1784, 'view', 'Proprietarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:35', 'William visualizou a página /proprietario', '', 'null', NULL, NULL, '2025-03-25 10:18:35', NULL, NULL, NULL),
(1785, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:36', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:18:36', NULL, NULL, NULL),
(1786, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:37', 'William visualizou a página /dashboard', '', 'null', NULL, NULL, '2025-03-25 10:18:37', NULL, NULL, NULL),
(1787, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:18:38', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:18:38', NULL, NULL, NULL),
(1788, 'view', 'locatarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:19:03', 'William visualizou a página /locatorio', '', 'null', NULL, NULL, '2025-03-25 10:19:03', NULL, NULL, NULL),
(1789, 'view', 'relogios-de-agua', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:19:04', 'William visualizou a página /relogios-agua', '', 'null', NULL, NULL, '2025-03-25 10:19:04', NULL, NULL, NULL),
(1790, 'view', 'cidades', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:19:05', 'William visualizou a página /cidades', '', 'null', NULL, NULL, '2025-03-25 10:19:05', NULL, NULL, NULL),
(1791, 'view', 'usuarios', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:19:06', 'William visualizou a página /usuarios', '', 'null', NULL, NULL, '2025-03-25 10:19:06', NULL, NULL, NULL);
INSERT INTO `logs` (`id`, `event`, `module`, `module_id`, `ip`, `user_id`, `user_name`, `date`, `desc`, `apelido`, `codigos_matricula`, `username`, `action`, `timestamp`, `filename`, `path`, `field_name`) VALUES
(1792, 'view', 'matriculas', '', '2804:14d:7890:4464:4804:f60a:950b:29fc', '23', 'William', '2025-03-25 07:19:10', 'William visualizou a página /matriculas-de-imoveis', '', 'null', NULL, NULL, '2025-03-25 10:19:10', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id` int(11) NOT NULL,
  `cod` text DEFAULT NULL,
  `cod_matricula` text NOT NULL,
  `apelido` text DEFAULT NULL,
  `local` text DEFAULT NULL,
  `numero_relogio` text DEFAULT NULL,
  `sub_numero_relogio` text DEFAULT NULL,
  `categoria_consumo` text DEFAULT NULL,
  `nome_proprietario` text DEFAULT NULL,
  `cpf_cnpj_proprietario` text DEFAULT NULL,
  `mesmo_proprietario_matricula` text DEFAULT '0',
  `nome_titular_consumidor` text DEFAULT NULL,
  `cpf_cnpj_titular_consumidor` text DEFAULT NULL,
  `mesmo_titular_usuario` text DEFAULT '0',
  `status` text DEFAULT NULL,
  `debitos_aberto` text DEFAULT '0',
  `valor_debitos_aberto` text DEFAULT NULL,
  `mes_ultimo_competencia` text DEFAULT NULL,
  `cadastro_atualizado` text DEFAULT '0',
  `observacoes` text DEFAULT NULL,
  `matriculasSelecionadas` longtext DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id`, `cod`, `cod_matricula`, `apelido`, `local`, `numero_relogio`, `sub_numero_relogio`, `categoria_consumo`, `nome_proprietario`, `cpf_cnpj_proprietario`, `mesmo_proprietario_matricula`, `nome_titular_consumidor`, `cpf_cnpj_titular_consumidor`, `mesmo_titular_usuario`, `status`, `debitos_aberto`, `valor_debitos_aberto`, `mes_ultimo_competencia`, `cadastro_atualizado`, `observacoes`, `matriculasSelecionadas`, `date_insert`, `date_update`) VALUES
(52, 'REN52', '', 'teste', '[]', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '[\"MT1339 - RJO15\"]', '2025-03-13 16:59:40', '2025-03-13 16:59:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietarios`
--

CREATE TABLE `proprietarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo_pessoa` text DEFAULT NULL,
  `nome_proprietario_grupo` text DEFAULT NULL,
  `cpf` text DEFAULT NULL,
  `cnpj` text DEFAULT NULL,
  `razao_social` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `proprietarios`
--

INSERT INTO `proprietarios` (`id`, `nome`, `tipo_pessoa`, `nome_proprietario_grupo`, `cpf`, `cnpj`, `razao_social`) VALUES
(45, 'VRI', 'jurídica', 'Grupo VRI', '', '08884847000198', 'VRI NEGOCIOS E PARTICIPACOES LTDA'),
(46, 'VRC', 'jurídica', 'Grupo VRI', '', '53204199000136', 'VRC NEGOCIOS IMOB. E PART. LTDA'),
(47, 'VLA', 'jurídica', 'Grupo VRI', '', '48963651000103', 'VLA NEGOCIOS LTDA'),
(48, 'AAV', 'física', 'Grupo Pessoal', '31892492881', '', ''),
(49, 'LHV', 'física', 'Grupo Pessoal', '21977541810', '', ''),
(50, 'Heleno+ADV', 'física', 'Grupo Pessoal', '03673324853', '', ''),
(51, 'Heleno', 'física', 'Grupo Pessoal', '03673324853', '', ''),
(52, 'AAV+MCV', 'física', 'Grupo Pessoal', '31892492881', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `urbanorural`
--

CREATE TABLE `urbanorural` (
  `id` int(11) NOT NULL,
  `cod` text NOT NULL,
  `tipoRelatorio` text NOT NULL DEFAULT 'urbano',
  `codigoCadastro` text NOT NULL,
  `apelido` text DEFAULT NULL,
  `inscricaoMunicipal` text DEFAULT NULL,
  `setor` text DEFAULT NULL,
  `lote` text DEFAULT NULL,
  `quadra` text DEFAULT NULL,
  `nomeProprietario` text DEFAULT NULL,
  `nomeProprietarioGrupo` text DEFAULT NULL,
  `cpfCnpjProprietario` text DEFAULT NULL,
  `areaTerreno` text DEFAULT NULL,
  `geometriaRegular` text DEFAULT NULL,
  `metrosFrente` text DEFAULT NULL,
  `metrosFundo` text DEFAULT NULL,
  `metrosLadoDireito` text DEFAULT NULL,
  `metrosLadoEsquerdo` text DEFAULT NULL,
  `cep` text DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `numero` text DEFAULT NULL,
  `complemento` text DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `cidade` text DEFAULT NULL,
  `uf` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` text DEFAULT NULL,
  `perfil` text DEFAULT NULL,
  `permissoesMatricula` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `fullname`, `perfil`, `permissoesMatricula`) VALUES
(2, 'averucci@serbom.com.br', '$2y$10$Qg9IQSa7C9qyuTdwya6UKecnFO61hbRJCpsUDxbgMNWDqz4EL8Fo2', 'Antonio', 'adm', 1),
(5, 'atdamasceno@serbom.com.br', '$2y$10$uBgM8KDybxPqffn93NQX6u7f/2O4AeY29nasd9E3bnxfXMFO6mzd6', 'Tadeu', 'adm', 1),
(23, 'williamcreat@gmail.com', '$2y$10$Nj.cAXE.sRgtLw2fCt53k.uRu.rXMIM3ggHj7P6X9ALxgIpROw06K', 'William', 'adm', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aguas`
--
ALTER TABLE `aguas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cartorios`
--
ALTER TABLE `cartorios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `GED`
--
ALTER TABLE `GED`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `locatario`
--
ALTER TABLE `locatario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `proprietarios`
--
ALTER TABLE `proprietarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `urbanorural`
--
ALTER TABLE `urbanorural`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aguas`
--
ALTER TABLE `aguas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `cartorios`
--
ALTER TABLE `cartorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `GED`
--
ALTER TABLE `GED`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3367;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `locatario`
--
ALTER TABLE `locatario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1793;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `proprietarios`
--
ALTER TABLE `proprietarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `urbanorural`
--
ALTER TABLE `urbanorural`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
