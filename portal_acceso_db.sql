-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2020 at 07:22 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_acceso_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pa_torreras`
--

CREATE TABLE `pa_torreras` (
  `id_pa_torreras` int(11) NOT NULL,
  `nom_pa_torreras` text NOT NULL,
  `desc_pa_torreras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pa_torreras`
--

INSERT INTO `pa_torreras` (`id_pa_torreras`, `nom_pa_torreras`, `desc_pa_torreras`) VALUES
(1, 'ATC', 'ATC'),
(2, 'TELESITES', 'TELESITES'),
(3, 'MTP', 'MTP'),
(4, 'TEMM', 'TEMM'),
(5, 'CENTENNIAL', 'CENTENNIAL'),
(6, 'UNITI', 'UNITI'),
(7, 'IIMT', 'IIMT'),
(8, 'RENT A TOWER', 'RENT A TOWER'),
(9, 'TORRECOM', 'TORRECOM'),
(10, 'INTELLISITE', 'INTELLISITE'),
(12, 'SERVICOM', 'SERVICOM'),
(13, 'TOWER ONE', 'TOWER ONE'),
(14, 'EVEN', 'EVEN'),
(15, 'CANADIAN TOWERS', 'CANADIAN TOWERS'),
(16, 'MX TOWERS', 'MX TOWERS');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `usuario` text NOT NULL,
  `nombre` text NOT NULL,
  `puesto` text NOT NULL,
  `correo` text NOT NULL,
  `telefono` text NOT NULL,
  `curp` text NOT NULL,
  `imss` text NOT NULL,
  `rfc` text NOT NULL,
  `empresa` text NOT NULL,
  `cuadrilla` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`usuario`, `nombre`, `puesto`, `correo`, `telefono`, `curp`, `imss`, `rfc`, `empresa`, `cuadrilla`) VALUES
('root', 'juan', 'Supervisor', '12121121212', '121212121212', '121212121212121212', '21212121212', '1212121212121', 'nae', 'cuadrilla1'),
('root', 'Daniel', 'Supervisor', '12112121212121212', '212121212121', '121212121212121212', '21212121212', '1212121212121', 'Nae', 'cuadrilla2');

-- --------------------------------------------------------

--
-- Table structure for table `requerimentos`
--

CREATE TABLE `requerimentos` (
  `Req` text NOT NULL,
  `email` text NOT NULL,
  `empresa` text NOT NULL,
  `fecha` text NOT NULL,
  `idAltan` text NOT NULL,
  `siteName` text NOT NULL,
  `idTower` text NOT NULL,
  `tower` text NOT NULL,
  `region` text NOT NULL,
  `actividad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requerimentos`
--

INSERT INTO `requerimentos` (`Req`, `email`, `empresa`, `fecha`, `idAltan`, `siteName`, `idTower`, `tower`, `region`, `actividad`) VALUES
('req123456789012', 'admin@gmail.com', 'Nae', '2020-11-13 17:11:53', '10008', '010008-INSURGENTES-1', '131131', 'ATC', 'R1', 'ATC-Obra civil o eléctrica');

-- --------------------------------------------------------

--
-- Table structure for table `torreras`
--

CREATE TABLE `torreras` (
  `Id` int(10) NOT NULL,
  `NameSite` varchar(100) DEFAULT NULL,
  `IdTorrera` varchar(100) DEFAULT NULL,
  `Torrera` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Semaforo` int(10) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `Vendor` varchar(100) DEFAULT NULL,
  `Prioridad` varchar(100) DEFAULT NULL,
  `OPERATIVO` varchar(100) DEFAULT NULL,
  `SOLICITA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `torreras`
--

INSERT INTO `torreras` (`Id`, `NameSite`, `IdTorrera`, `Torrera`, `Region`, `Semaforo`, `Estado`, `Vendor`, `Prioridad`, `OPERATIVO`, `SOLICITA`) VALUES
(100731, '100731-COVADONGA', '06-04834-12-01', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(100538, '100538-PONCE', '06-13437-12-15', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(310170, '310170-RODEO', '06-05586-32-12', 'Telesites', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(130865, '130865-CAMICHINES-VALLARTA', 'MX-JAL-5116', 'MTP', 'R5', 0, 'Jalisco', 'Nokia', 'A', 'Operativo', 'RPA'),
(230098, '230098-ALAMEDA', '06-11979-24-15', 'Telesites', 'R6', 0, 'San Luis Potosi', 'Huawei', 'B', 'Operativo', 'RPA'),
(80653, '080653-VERTIENTES', '146723', 'ATC', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(180572, '180572-MI-RANCHO', '147289', 'ATC', 'R4', 0, 'Nuevo Leon', 'Nokia', 'B', 'Operativo', 'RPA'),
(100747, '100747-DOCTOR-MORA', '144317', 'ATC', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(100633, '100633-LA-CARRETA', 'CTGUA0028', 'Centennial', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(310197, '310197-GUERRERO', 'IIMT310197', 'IIMT', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(310122, '310122-CHILAQUILA', 'RT-ZAC002', 'Rent a Tower', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(290961, '290961-LA-FINCA', 'VZ_207_020', 'TelecomCI', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(290812, '290812-CONCEPCION', 'VZ_207_021', 'TelecomCI', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(310006, '310006-SAN-JOSE-DE-LOURDES', '06-05616-32-03', 'Telesites', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(100746, '100746-LOMA-DE-SAN-ANTONIO', '06-04623-12-11', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(210302, '210302-CURIE', '06-05323-22-06', 'Telesites', 'R6', 0, 'Queretaro', 'Huawei', 'B', 'Operativo', 'RPA'),
(100785, '100785-RANCHO-BEGOÑA', '06-16469-12-17', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(160159, '160159-ALPUYECA', '147153', 'ATC', 'R9', 0, 'Morelos', 'Huawei', 'A', 'Operativo', 'RPA'),
(100670, '100670-CRUCERO', 'MX-GUA-5076', 'MTP', 'R6', 0, 'Guanajuato', 'Huawei', '', 'Repetidor', 'RPA'),
(310028, '310028-SALIDA-FRESNILLO', '143296', 'ATC', 'R6', 0, 'Zacatecas', 'Huawei', '', 'Repetidor', 'RPA'),
(100668, '100668-LOBO', '06-04831-12-04', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(80580, '080580-FORO-SOL', 'Foro Sol', 'MX Towers', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(100234, '100234-733-LEON', '145680', 'ATC', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(240031, '240031-GUADALUPE', '25-02271', 'TEMM', 'R2', 0, 'Sinaloa', 'Huawei', 'B', 'Operativo', 'RPA'),
(200442, '200442-GUADALUPE-VICTORIA', '175179', 'ATC', 'R7', 0, 'Puebla', 'Huawei', 'B', 'Operativo', 'RPA'),
(100635, '100635-LA-PALMA', 'CTGUA0032', 'Centennial', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(100664, '100664-PARQUE-OPCION', 'MX-GUA-5025', 'MTP', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(290808, '290808-LAS-CANAS', 'VZ_197_017', 'TelecomCI', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(100716, '100716-OSEZNO', '06-13440-12-15', 'Telesites', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(290951, '290951-LA-TINAJA', 'T-0070', 'Tower One', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(210327, '210327-TIERRAS-COLORADAS', 'V-0608', 'Valzec', 'R6', 0, 'Queretaro', 'Huawei', 'B', 'Operativo', 'RPA'),
(210273, '210273-EL-ZAPOTE', 'V-0603', 'Valzec', 'R6', 0, 'Queretaro', 'Huawei', 'B', 'Operativo', 'RPA'),
(120310, '120310-RANCHO-NUEVO', 'VAL200017', 'Valzec', 'R9', 0, 'Hidalgo', 'Huawei', 'A', 'Operativo', 'RPA'),
(210276, '210276-LA-ESTANCIA', 'RT-QRO071', 'Rent a Tower', 'R6', 0, 'Queretaro', 'Huawei', 'B', 'Operativo', 'RPA'),
(80662, '080662-PERALVILLO-CLUSTER6', 'BTS (178943)', 'ATC', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(80663, '080663-ANGEL-ALBINO-CORZO', 'BTS (178944)', 'ATC', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(80659, '080659-JAUREZ-PANTITLAN', '132012', 'ATC', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(80657, '080657-PROGRESO', '133264', 'ATC', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(80658, '080658-PLAZA-ORIENTE', '09-04364', 'TEMM', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(80666, '080666-LAGO-XIMILPA', '09-17131-09-18', 'Telesites', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(160200, '160200-COCOYOC', '09-09580-17-09', 'Telesites', 'R9', 0, 'Morelos', 'Huawei', 'A', 'Operativo', 'RPA'),
(220219, '220219-MAREJADA', 'QMC14566', 'QMC', 'R8', 0, 'Quintana Roo', 'Huawei', 'B', 'Operativo', 'RPA'),
(141266, '141266-EJIDO-LA-LAGUNA', '09-09957-11-00', 'Telesites', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(30087, '30087-CANDELARIA', '08-07387-04-00', 'Telesites', 'R8', 0, 'Campeche', 'Huawei', 'A', 'Operativo', 'RPA'),
(30088, '030088-LAS-TORTUGAS', 'TBD', 'Centerline', 'R8', 0, 'Campeche', 'Huawei', 'A', 'Operativo', 'RPA'),
(120226, '120226-ALTO CAXUXI', '09-15262-14-16', 'Telesites', 'R9', 0, 'Hidalgo', 'Huawei', 'A', 'Operativo', 'RPA'),
(120336, '120336-ATOTONILCO', '09-09516-14-00', 'Telesites', 'R9', 0, 'Hidalgo', 'Huawei', 'A', 'Operativo', 'RPA'),
(141233, '141233-ARCO-NORTE-JILOTEPEC', '09-14357-11-16', 'Telesites', 'R9', 0, 'CDMX', 'Huawei', 'A', 'Operativo', 'RPA'),
(200539, '200539-EL LOBON', '07-13900-21-15', 'Telesites', 'R7', 0, 'Puebla', 'Huawei', 'B', 'Operativo', 'RPA'),
(210301, '210301-EGEO', '06-11340-22-15', 'Telesites', 'R6', 0, 'Queretaro', 'Huawei', 'B', 'Operativo', 'RPA'),
(220215, '220215-CARDENAS', 'AN200009', 'QMC', 'R8', 0, 'Quintana Roo', 'Huawei', 'B', 'Operativo', 'RPA'),
(290995, '290995-TBD-BTS', 'TBD', 'Valzec', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(300201, '300201-CUZAMA', 'DIM-019', 'Even tower', 'R8', 0, 'Yucatan', 'Huawei', 'B', 'Operativo', 'RPA'),
(300252, '300252-YAXCABA', '08-08429-31-05', 'Telesites', 'R8', 0, 'Yucatan', 'Huawei', 'B', 'Operativo', 'RPA'),
(300269, '300269-SAN JOSE TZAL', '08-12264-31-15', 'Telesites', 'R8', 0, 'Yucatan', 'Huawei', 'B', 'Operativo', 'RPA'),
(310011, '310011-JEREZ-DE-GARCIA', '131098', 'ATC', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(70362, '70362-PACHERAS', '03-18934-06-19', 'Telesites', 'R3', 0, 'Chihuahua', 'Nokia', 'A', 'Operativo', 'RPA'),
(120386, '120386-YAHUALICA', 'TBD', 'Electrimex', 'R9', 0, 'Hidalgo', 'Huawei', 'C', 'Operativo', 'RPA'),
(300152, '300152-ESPITA', '08-12337-31-15', 'Telesites', 'R8', 0, 'Yucatan', 'Huawei', 'C', 'Operativo', 'RPA'),
(100725, '100725-ESPERANZA-DE-MIRANDA', '175895', 'ATC', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(290562, '290562-LIMONERO', '146648', 'ATC', 'R7', 0, 'Veracruz', 'Huawei', 'A', 'Operativo', 'RPA'),
(100634, '100634-LOS-CERRITOS', 'CTGUA0031', 'Centennial', 'R6', 0, 'Guanajuato', 'Huawei', 'A', 'Operativo', 'RPA'),
(310151, '310151-CHUPADEROS', 'DIM-221', 'Even Telecom', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(310183, '310183-MALVAS', '06-05619-32-06', 'Telesites', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(310164, '310164-MORSE', '06-05568-32-08', 'Telesites', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(290848, '290848-LOMAS-DE-ARENA', '07-07111-30-10', 'Telesites', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(310093, '310093-CHAPARROSA', '06-17296-32-18', 'Telesites', 'R6', 0, 'Zacatecas', 'Huawei', 'B', 'Operativo', 'RPA'),
(30134, '030134-SANTA-GERTRUDIS', 'TBD', 'Centerline', 'R8', 0, 'Campeche', 'Huawei', 'A', 'Operativo', 'RPA'),
(120388, '120388-SANTA-URSULA', 'TBD', 'Electrimex', 'R9', 0, 'Hidalgo', 'Huawei', 'A', 'Operativo', 'RPA'),
(120422, '120422-NOPALA', '09-09486-14-04', 'Telesites', 'R9', 0, 'Hidalgo', 'Huawei', 'A', 'Operativo', 'RPA'),
(160198, '160198-COAXITLAN', '141893', 'ATC', 'R9', 0, 'Morelos', 'Huawei', 'A', 'Operativo', 'RPA'),
(190226, '190226-SAN-MARTIN-PERAS', '07-06054-20-11', 'Telesites', 'R7', 0, 'Oaxaca', 'Huawei', 'B', 'Operativo', 'RPA'),
(220214, '220214-CHAC-CHOBEC', 'AN200010', 'QMC', 'R8', 0, 'Quintana Roo', 'Huawei', 'B', 'Operativo', 'RPA'),
(290550, '290550-SAYULA', '145208', 'ATC', 'R7', 0, 'Veracruz', 'Huawei', 'A', 'Operativo', 'RPA'),
(290762, '290762-TBD-BTS', 'TBD', 'Valzec', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(290989, '290989-LA-CAMELIA', '07-12699-30-15', 'Telesites', 'R7', 0, 'Veracruz', 'Huawei', 'B', 'Operativo', 'RPA'),
(150183, '150183-SAN-MATIAS-GRANDE', '05-03883-16-08', 'Telesites', 'R5', 0, 'Michoacan de Ocampo', 'Nokia', 'B', 'Operativo', 'RPA'),
(260231, '260231-SEGUNDO-PASO', 'CTTAB0212', 'Centennial', 'R8', 0, 'Tabasco', 'Huawei', 'B', 'Operativo', 'RPA');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `empresa` text NOT NULL,
  `password` varchar(1000) NOT NULL,
  `Usuario` text NOT NULL,
  `perfil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `correo`, `empresa`, `password`, `Usuario`, `perfil`) VALUES
('Administrador', 'admin@gmail.com', 'Altan Redes', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'root', 'Admin'),
('Juan Daniel Rodriguez Perez', 'juandanielrp@gmail.com', 'Nae', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'JuanDRod', 'User'),
('Juan', 'Juan@gmail.com', 'Nae', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'JuanDRP', 'User'),
('Luis Fernando Cacho Perez ', 'luis.cacho.e@altanredes.com', 'Altan Redes', '$2a$07$asxx54ahjppf45sd87a5auhmd83mdR/ynJ.MSPpOI1XK1ZEOcNfgC', 'LuisFCacho', 'Admin'),
('Angelica Guadarrama Hernandez ', 'angelica.guadarrama@altanredes.com', 'Altan redes', '$2a$07$asxx54ahjppf45sd87a5auhmd83mdR/ynJ.MSPpOI1XK1ZEOcNfgC', 'AngelicaGH', 'Admin'),
('Juan Waldo Reyes Garcia ', 'juan.reyes@altanredes.com', 'Altan Redes', '$2a$07$asxx54ahjppf45sd87a5auhmd83mdR/ynJ.MSPpOI1XK1ZEOcNfgC', 'JuanWaldoRG', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pa_torreras`
--
ALTER TABLE `pa_torreras`
  ADD PRIMARY KEY (`id_pa_torreras`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pa_torreras`
--
ALTER TABLE `pa_torreras`
  MODIFY `id_pa_torreras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
