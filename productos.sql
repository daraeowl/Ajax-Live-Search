--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(6) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `codigo` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categoria` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `frase_promocional` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `colores` set('rojo','verde','azul','negro') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `precio` float NOT NULL DEFAULT '0',
  `disponibilidad` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `promocion` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `codigo`, `categoria`, `frase_promocional`, `descripcion`, `colores`, `precio`, `disponibilidad`, `promocion`, `fecha`) VALUES
(1, 'Rayita Vertical', 'LFR100001RFL', 'verticales', 'La mejor rayita para las paredes vacías', 'Ponga una hermosa Rayita Vertical en cualquier sector de su casa!\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh ligula, cursus vel magna eu, porttitor vehicula ipsum. Aliquam malesuada pulvinar porttitor. Integer sit amet aliquam neque. Donec feugiat leo eget massa pharetra, eget tristique est sodales. Maecenas egestas odio molestie interdum congue. In commodo lacus a nunc porttitor faucibus. Praesent ornare molestie dapibus. Nulla varius quam massa, eu imperdiet turpis interdum ac. Ut pharetra fringilla nulla, et iaculis lectus dignissim a. Cras quis dui nibh. Mauris vitae ullamcorper eros. Aliquam vitae est convallis, fermentum orci eget, condimentum magna. Etiam nec mi in elit vulputate fermentum.\r\n\r\nDonec risus ante, dapibus quis nibh a, lobortis faucibus magna. Nulla facilisi. Vivamus pellentesque ut dui molestie ultrices. Nunc consectetur, dolor id tincidunt rutrum, leo est semper diam, non laoreet nulla mauris non lorem. Vivamus id elit id est vehicula porttitor eu at mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis feugiat ac nunc id condimentum. Quisque nec pretium mauris.\r\n\r\nNunc hendrerit, tellus sit amet gravida tempus, quam risus vestibulum leo, vel fringilla lectus justo at urna. Duis bibendum velit non nunc pellentesque, vel maximus nulla molestie. Nullam porta ac nisl sit amet imperdiet. Maecenas imperdiet nisi eleifend sapien pulvinar, ut scelerisque enim interdum. Fusce vel mi non erat placerat mattis sit amet eget diam. Etiam lacinia nibh nunc, at porttitor risus dapibus et. Morbi elementum et felis sodales dapibus. Aenean ut dapibus odio, in fermentum felis. Vestibulum interdum malesuada metus quis sodales.\r\n\r\nCras feugiat egestas orci consectetur fringilla. Phasellus dictum lacinia facilisis. Mauris facilisis diam sit amet lacus vestibulum, nec molestie neque venenatis. Sed eget ex a enim volutpat sagittis eget non sem. Nulla id maximus mi. Etiam vitae egestas leo, volutpat vehicula neque. Duis cursus lacinia dui, ac ultricies ante. Nunc dolor elit, malesuada eu dui fringilla, suscipit euismod risus. Sed semper justo vitae purus feugiat pharetra. Phasellus sodales mauris id risus interdum dictum. Ut vitae porta velit.\r\n\r\nUt eu mauris dignissim, lobortis metus sit amet, fermentum nisl. In ante sem, fringilla ut pulvinar iaculis, gravida ut velit. Pellentesque commodo, metus sit amet efficitur molestie, ex libero porttitor dui, in placerat lectus sem in ipsum. Integer ornare aliquet velit, sed dapibus tortor molestie non. Vivamus arcu urna, dictum sit amet fermentum nec, tempor id nisl. Curabitur aliquet dapibus dui vel condimentum. Vivamus a maximus orci, nec semper felis.', 'rojo,verde,azul', 1254, '1', '1', '2016-05-17 15:38:58'),
(2, 'Rayitas Superflex', '579000000975', 'curvas', 'Rayitas Curvas Super Flexibles', 'Unicas en el mercado, permiten envolver, retener y anidar sus objetos, sin ahorcarlos en el proceso. Vienen en dos tamaños, grande Superflex y pequeño Superflex.', 'rojo,verde,azul', 5000, '1', '0', '2016-05-17 15:39:38'),
(3, 'Rayita Horizontales Ommm', 'RPQ300003QPR', 'horizontales', 'El descanso hecho Rayita', 'Descanse y apoye todo cuanto desee en estas útiles, prácticas y ayudadoras Rayitas', 'rojo,azul,negro', 1500, '1', '0', '2016-05-17 15:39:53'),
(4, 'Rayitas Diagonales Woderflin', 'MPD100000DPM', 'diagonales', 'Ambiente sus espacios', 'La mejor opción del mercado: resistentes, diligentes y de gran aguante', 'rojo,negro', 2000, '1', '0', '2016-05-17 15:40:01'),
(5, 'Rayitas Curvas OH-QiDA2', 'MLDI0000IDLM', 'curvas', 'El riesgo y la emoción en Rayitas', 'Toda una revolución en Rayitas, se aconseja discreción al adquirirlas.', 'negro', 1750, '1', '0', '2016-05-17 15:40:24'),
(6, 'Rayitas Punteadas Pare-Siga', 'FLMN0000NMLF', 'punteadas', 'Ideal para sus procesos productivos', 'Nada mejor en la aplicación de la misericordia laboral, optimiza a sus trabajadores', 'rojo,verde', 6000, '1', '0', '2016-05-17 15:40:59'),
(7, 'Rayitas Oblicuas Oli', 'PDDI0000IDDP', 'oblicuas', '\"Lo\" díscolo en Rayitas', 'El poder de la contradicción misma en Rayitas', 'rojo,verde,azul,negro', 3000, '1', '0', '2016-05-17 15:45:52'),
(8, 'Rayitas Verticales Akastoy', 'KGBAY00YABGK', 'verticales', 'Contención al mejor precio', 'Contención, apoyo y seguridad, son algunas virtudes de estas amables y robustas Rayitas, no se arrepentirá!', 'rojo,negro', 2500, '1', '0', '2016-05-17 15:45:52'),
(9, 'Rayitas Horizontales ZZzzz', 'AHH000000HHA', 'horizontales', 'Su sueño hecho realidad', 'Consiga el sociego y el reposo que tanto busca en los más cómodos atributos', 'azul', 5480, '1', '0', '2016-05-17 15:45:52'),
(10, 'Rayitas Oblicuas Yupi', 'VRL000000LRV', 'oblicuas', 'Vaya de arriba para abajo sin complicaciones', 'Disfrute y regocíjese de los altos y bajos que tiene la vida, libérese de la rutina', 'rojo,verde,azul,negro', 3640, '1', '0', '2016-05-17 15:45:52'),
(11, 'Rayitas Diagonales PAY', 'UHF000000FHU', 'diagonales', 'Direccionales y Multifuncionales', 'No se puede perder esta oportunidad, con Rayitas Diagonales no perderá el rumbo', 'rojo,verde,azul', 1000, '1', '0', '2016-05-17 15:45:52'),
(12, 'Rayitas Punteadas AKsiAKno', 'PLOP0000POLP', 'punteadas', 'La maravillosa posibilidad de elegir', 'Con Rayitas Punteadas \"AKsiAKno\" se hace acreedor del reconfortante privilegio  de la desición, soporta indesiciones arbitrarias, qué está esperando!', 'rojo,verde,azul,negro', 1245, '1', '0', '2016-05-17 15:45:52'),
(13, 'Rayitas Verticales Nostah', 'JLQD0000DQLJ', 'verticales', 'Ciérrele la puerta a los abatares', 'Póngale fin a los Turururus y abatares en su ofina, qué ley de Murphy! con Rayitas \"Nostah\" volverá la paz al su templo de la productividad', 'rojo,verde,azul,negro', 4750, '1', '0', '2016-05-17 15:45:52'),
(14, 'Rayitas Curvas Pegalawelta', 'OLP000000LPO', 'curvas', 'Haga un alto en el camino', 'Con Rayitas Curvas \"Pegalawelta\" podrá darse el lujo de indicar a sus congéneres la dirección de sus acciones, no se la pierda!', 'rojo,verde,negro', 4251, '1', '0', '2016-05-17 15:45:52'),
(15, 'Rayitas Oblicuas PHP', 'LFLF0000FLFL', 'oblicuas', 'Descubre el programador que hay en ti', 'Déjate seducir por el poder de un lenguaje sublime e ilegible pero re-útil, -dicen-, de exportación!', 'rojo,verde,negro', 2354, '1', '0', '2016-05-17 15:45:52'),
(16, 'Rayitas Horizontales OK', 'INBOX00XOBNI', 'horizontales', 'Haga suyas la leyes de Causa e Efecto', 'Incorpore ancestrales tecnolog?as con estas Rayitas \"OK\", asienta y disienta con total holgura, total, no se aceptan devoluciones!', 'verde,azul', 6540, '1', '0', '2008-06-06 02:00:56'),
(17, 'Rayitas Diagonales CHUEK', 'DWE21234DES', 'diagonales', 'Un monumeto inquietante', 'Haciendo gala de nuestra cultura, ponemos a vuestra disposición esta bella Rayita \"CHUEK\", ni proactiva, ni reactiva, sino que todo lo contrario, consúltenos!', 'rojo,azul', 3500, '1', '0', '2016-05-17 15:45:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
