CREATE DATABASE egresados_upt;
GO


USE egresados_upt;
GO


-- Tabla cargos
CREATE TABLE cargos (
    id INT PRIMARY KEY,
    nombre_cargo VARCHAR(100)
);

-- Tabla ubicaciones (solo país)
CREATE TABLE ubicaciones (
    id INT PRIMARY KEY,
    pais VARCHAR(100)
);

-- Tabla tecnologias
CREATE TABLE tecnologias (
    id INT PRIMARY KEY,
    nombre_tecnologia VARCHAR(100)
);

-- Tabla egresados
CREATE TABLE egresados (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    id_cargo INT,
    id_ubicacion INT,
    linkedin_url TEXT,
    FOREIGN KEY (id_cargo) REFERENCES cargos(id),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicaciones(id)
);

-- Tabla puente
CREATE TABLE egresado_tecnologia (
    id_egresado INT,
    id_tecnologia INT,
    FOREIGN KEY (id_egresado) REFERENCES egresados(id),
    FOREIGN KEY (id_tecnologia) REFERENCES tecnologias(id)
);

-- Insertar cargos
INSERT INTO cargos (id, nombre_cargo) VALUES (1, 'Analista de Sistemas');
INSERT INTO cargos (id, nombre_cargo) VALUES (2, 'Consultor TI');
INSERT INTO cargos (id, nombre_cargo) VALUES (3, 'Desarrollador de Software');
INSERT INTO cargos (id, nombre_cargo) VALUES (4, 'Egresado');
INSERT INTO cargos (id, nombre_cargo) VALUES (5, 'Ingeniero de Sistemas');
INSERT INTO cargos (id, nombre_cargo) VALUES (6, 'Jefe/Gerente de TI');
INSERT INTO cargos (id, nombre_cargo) VALUES (7, 'Otros');
INSERT INTO cargos (id, nombre_cargo) VALUES (8, 'nan');

-- Insertar ubicaciones (países)
INSERT INTO ubicaciones (id, pais) VALUES (1, 'EEUU');
INSERT INTO ubicaciones (id, pais) VALUES (2, 'España');
INSERT INTO ubicaciones (id, pais) VALUES (3, 'Peru');
INSERT INTO ubicaciones (id, pais) VALUES (4, 'South Korea');

-- Insertar tecnologías
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (1, 'C#');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (2, 'CSS');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (3, 'Django');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (4, 'HTML');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (5, 'Java');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (6, 'JavaScript');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (7, 'Laravel');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (8, 'MongoDB');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (9, 'Node.js');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (10, 'PHP');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (11, 'PostgreSQL');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (12, 'Power BI');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (13, 'React');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (14, 'SQL');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (15, 'Scrum');
INSERT INTO tecnologias (id, nombre_tecnologia) VALUES (16, 'TypeScript');

-- Insertar egresados
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (1, 'VILMA CONDORI CHURATA', 7, 3, 'https://www.linkedin.com/in/vilma-condori-churata-12b2ab78/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (2, 'ROSARIO LUZ VELASQUEZ ESPEJO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (3, 'CLAUDIA XIOMARA SALAS MONTENEGRO', 7, 3, 'https://www.linkedin.com/in/claudia-salasm/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (4, 'GIORDY ALEX MAMANI AGUILAR', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (5, 'RONALD HECTOR FRANCO ANCHANTE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (6, 'LUIGI ENOC MANCILLA CACERES', 3, 3, 'https://www.linkedin.com/in/luigi-enoc-mancilla-caceres-8b39a5113/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (7, 'MATEO RODRIGUEZ QUINTANA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (8, 'LEE ALEXANDER CHEVARRIA CATARI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (9, 'FERNANDO JESUS JIMENEZ CALSIN', 3, 1, 'https://www.linkedin.com/in/fernando-jimenez-dev/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (10, 'CRISTHIAN CARLOS SANCHEZ QUISPE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (11, 'MARTHA PATRICIA LOMA ESPEZUA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (12, 'JACKELINE TANIA TICONA CCOPA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (13, 'ALFREDO MIGUEL GAONA GUZMAN', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (14, 'ANGEL ARTURO OXACOQA GARCIA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (15, 'CESAR DEIVY GOMEZ MAQUERA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (16, 'YESSICA MARIA PILCO LIMACHE', 7, 3, 'https://www.linkedin.com/in/yessica-pilco-limache-68631071/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (17, 'JUAN CARLOS DEL JULIANO JALANCOA RAMIREZ', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (18, 'STANY EDGAR PASTOR HELFER', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (19, 'ELIZABETH ROCIO QUISPE MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (20, 'KEVIN JESUS CHOQUE MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (21, 'LUIS EDUARDO MAMANI BEDREGAL', 3, 3, 'https://www.linkedin.com/in/luis-eduardo-mamani-bedregal/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (22, 'ANDREA ALEXANDRA FAUCHEUX VILLANUEVA', 7, 3, 'https://www.linkedin.com/in/andrea-alexandra-faucheux-villanueva-8a4605309/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (23, 'RICARDO JESUS VELASQUEZ TEJERINA', 7, 3, 'https://www.linkedin.com/in/ricardo-jesus-velasquez-tejerina-23400b124/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (24, 'CARLOS ENRIQUE BOHORQUEZ ZUMAETA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (25, 'IVONNE SOLEDAD GONZALES NINA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (26, 'GUIDO HENRY PACSI CANDIA', 7, 3, 'https://www.linkedin.com/in/guido-henry-pacsi-candia-b2753284/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (27, 'MICHAEL FERRY BELISARIO BENIQUE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (28, 'ROGER GREGORIO COLQUEHUANCA CALCINA', 3, 3, 'https://www.linkedin.com/in/roger-colquehuanca-calcina/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (29, 'LUCERO DEL CARMEN GONZALES GANDOLFO', 3, 3, 'https://www.linkedin.com/in/lucero-gonzales-gandolfo/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (30, 'PERCY MANUEL RODRIGUEZ ZELADA', 7, 3, 'https://www.linkedin.com/in/percy-manuel-rodriguez-zelada-2b5842148/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (31, 'LILYBETH CONDE DUEÑAS', 7, 2, 'https://www.linkedin.com/in/lilybethcondeduenas/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (32, 'MAURICIO GARCIA SILVA', 3, 3, 'https://www.linkedin.com/in/mauricio-garcia-silva-788978148/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (33, 'RONALD JOSE MAMANI HUANCA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (34, 'PAULO CESAR ALFARO FLORES', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (35, 'LUIS ANTONIO MAMANI ALAVE', 7, 3, 'https://www.linkedin.com/in/luis-antonio-mamani-alave-a17433335/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (36, 'GALINDO YEFER MAQUERA MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (37, 'JAVIER JOSE PARI MAMANI', 7, 3, 'https://www.linkedin.com/in/javier-jose-pari-mamani-727124a7/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (38, 'HENRY RICHARD PINTO FLORES', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (39, 'KAROL IRINA SOSA AMAR', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (40, 'JIMMY HONORIO AROQUIPA CHURA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (41, 'EDWIN CESAR CONDORI VILCAPUMA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (42, 'EDGARD FERNANDO LOPEZ CARPIO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (43, 'KEVIN ARNOL CUTIPA CHAMBILLA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (44, 'JOSHEEANY DEL ROSARIO NUÑEZ TARQUI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (45, 'CRISTHIAN RODRIGO AMEZQUITA CALAPAJA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (46, 'ROSALIA INES MAMANI LLACCA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (47, 'CRISTIAN OMAR LLATASI COHAILA', 2, 2, 'https://www.linkedin.com/in/cristianllatasi/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (48, 'JOSE ARTURO CHAVEZ MIRABAL', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (49, 'GUVER CALI SENTON JINEZ', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (50, 'FIORELLA ROSMERY SALAMANCA CONTRERAS', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (51, 'LEYDI KATHERINE HUALLPA CASTRO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (52, 'ADRIAN MAURICIO GOMEZ VELASCO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (53, 'JHON RAUL VIZCARRA BALBOA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (54, 'FANNY LUZ CLEMENTE CRUZ', 7, 3, 'https://www.linkedin.com/in/fanny-clemente-cruz/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (55, 'GISELA FLORES COLQUE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (56, 'ORESTES RAMIREZ TICONA', 3, 3, 'https://www.linkedin.com/in/orestes-ramirez-721426196/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (57, 'JESUS HUMBERTO CONDORI QUISO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (58, 'GUIMER SENON COAQUIRA COAQUIRA', 3, 3, 'https://www.linkedin.com/in/guimer-coaquira/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (59, 'LEONARDO FERNANDO ACEVEDO VASQUEZ', 7, 3, 'https://www.linkedin.com/in/lacevedo97/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (60, 'DIEGO ANDRE CANCHARI ROQUE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (61, 'ERICK EFRAIN PORTUGAL QUISPE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (62, 'ANDREI RUBEN AGUIRRE RAMOS', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (63, 'NELIA ESCALANTE MARON', 7, 3, 'https://www.linkedin.com/in/nelia-escalante-mar%C3%B3n-b099b0127/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (64, 'JOHN KEVIN MONTES DE OCA VIZCARRA', 7, 3, 'https://www.linkedin.com/in/kevinmdo/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (65, 'JHOSMELL GYNO ALFARO MUSAJA', 7, 3, 'https://www.linkedin.com/in/jhosmell-gyno-alfaro-musaja-24365516b/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (66, 'NILTON EDY PEREZ MAMANI', 7, 3, 'https://www.linkedin.com/in/nilton-edy-p%C3%A9rez-mamani-a43083195/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (67, 'JORGE LUIS PEREZ DE LA VEGA', 5, 3, 'https://www.linkedin.com/in/jorge-luis-perez-de-la-vega-a74141241/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (68, 'LEONARDO MAURICIO BASURTO YATTO', 7, 3, 'https://www.linkedin.com/in/leonardo-basurto-yatto-b1081a200/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (69, 'GIANCARLO ANDRE LARICO ATENCIO', 6, 3, 'https://www.linkedin.com/in/giancarlo-andre-larico-atencio-ba1a8795/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (70, 'RENZO ALEX MORENO CACERES', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (71, 'ROBERTO CARLOS ZEGARRA REYES', 3, 3, 'https://www.linkedin.com/in/roberto-carlos-zegarra-reyes-6616ba196/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (72, 'GARY JOSEPH CALLE CORTEZ', 3, 3, 'https://www.linkedin.com/in/gcalle/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (73, 'MARKO ANTONIO RIVAS RIOS', 7, 3, 'https://www.linkedin.com/in/marko-antonio-rivas-rios-43b3b31a7/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (74, 'JOSE EDILBERTO PASTOR MENDOZA', 7, 3, 'https://www.linkedin.com/in/jpastorm/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (75, 'MARÍA CRISTIANA SÁNCHEZ MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (76, 'ANGEL GABRIEL GONZALES CAVE', 7, 3, 'https://www.linkedin.com/in/gabriel-gonzales-cave-3249b5138/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (77, 'ANTHONY RICHARD ROBLES FLORES', 3, 4, 'https://www.linkedin.com/in/anthonyrichardroblesflores340621230/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (78, 'CHRISTIAN JHONATHAN GÓMEZ ZAPANA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (79, 'JULVER PIERRE ALFARO CHUQUIMIA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (80, 'ROBERT ANTHONY BELIZARIO MAMANI', 4, 3, 'https://www.linkedin.com/in/robert-anthony-belizario-mamani-9401421b8/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (81, 'ANDRÉS EDUARDO DE LA BARRA VÁSQUEZ', 3, 3, 'https://www.linkedin.com/in/andr%C3%A9s-de-la-barra-v%C3%A1squez/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (82, 'ANDRÉ SEBASTIAN REINOSO ARANDA', 7, 3, 'https://www.linkedin.com/in/andre-sebastian/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (83, 'YOBER NAIN CATARI CABRERA', 1, 3, 'https://www.linkedin.com/in/yncc/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (84, 'SAMUEL RAY NUÑEZ MAMANI', 3, 3, 'https://www.linkedin.com/in/samuelnunezm/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (85, 'VICTOR PIERO LIMACHE VICTORIO', 3, 3, 'https://www.linkedin.com/in/v%C3%ADctor-piero-limache-victorio-496bb2207/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (86, 'ANGELA LESSLY BALAGUER VALLES', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (87, 'CARMEN PAOLA TARQUINO DE LA GALA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (88, 'JESUS ENRIQUE SANDOVAL BLAS', 3, 3, 'https://www.linkedin.com/in/jesus-enrique-sandoval-blas-195b571b5/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (89, 'FLOR DE MARIA CONDORI GUTIERREZ', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (90, 'NILSON FÉLIX LAURA ATENCIO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (91, 'ADNNER SLEDYDER ESPERILLA RUIZ', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (92, 'RICHARD MANUEL CRUZ ESCALANTE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (93, 'ANA DEL ROSARIO CHATA QUISPE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (94, 'HERNÁN JESÚS CÁRCAMO RAMOS', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (95, 'DERIAN FRANCISCO HERRERA AMEZQUITA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (96, 'RAFAEL MARTÍN CALLATA FLORES', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (97, 'DAVID REYNALDO DAMIAN MAMANI', 3, 3, 'https://www.linkedin.com/in/david-reynaldo-damian-mamani-2836a6276/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (98, 'LUIS FERNANDO MAMANI PEREZ', 7, 3, 'https://www.linkedin.com/in/luis-mamani-perez/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (99, 'RISTHER JAIME TARQUI MONTALICO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (100, 'RODRIGO JERAL LIMACHE DURAND', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (101, 'JULIO ALEJANDRO CARPIO TEJADA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (102, 'GEOVANDDY KENZO HERRERA PALLE', 7, 3, 'https://www.linkedin.com/in/geovanddy-herrera-palle-333075143/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (103, 'LUIS FERNANDO FLORES QUERIE', 7, 3, 'https://www.linkedin.com/in/luis-fernando-flores-querie-6b5768314/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (104, 'KENYI RAÚL CHINO HUANCAUNE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (105, 'MIGUEL ANGEL LLANQUE ARISACA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (106, 'MARLON XAVIER VILLEGAS ARANDO', 7, 3, 'https://www.linkedin.com/in/marlon-xavier-villegas-arando-b575381b3/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (107, 'GABRIELA ROCIO ATAHUACHI RIVERA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (108, 'KATERIN ALMENDRA MERINO QUISPE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (109, 'HERNAN DAVID CONDORI TITO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (110, 'JUAN CARLOS PANTY SIHUAYRO', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (111, 'BRISET CELIA GARCIA SALAZAR', 7, 3, 'https://www.linkedin.com/in/brisetgs/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (112, 'DIEGO MIGUEL GORBEÑO MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (113, 'ALLISON ROUSSE CHINO VARGAS', 7, 3, 'https://www.linkedin.com/in/allison-rousse-chino-vargas-03b8071b9/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (114, 'ALVARO JHOEL GALLEGOS LAUCATA', 3, 3, 'https://www.linkedin.com/in/alvagallegosla/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (115, 'JHON ALEXANDER QUITO CHAMBILLA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (116, 'RANDI ANGEL PAREDES CATACORA', 7, 3, 'https://www.linkedin.com/in/randi-angel-paredes-catacora-9bb62b1b8/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (117, 'ROBY GERSON ZUÑIGA SILVA', 3, 3, 'https://www.linkedin.com/in/robzunigas/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (118, 'CARLOS ALEJANDRO MALDONADO CANCAPI', 7, 3, 'https://www.linkedin.com/in/carlos-alejandro-maldonado-cancapi-897806196/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (119, 'ALEX ARMANDO TICONA MAMANI', 7, 3, 'https://www.linkedin.com/in/aticonam/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (120, 'ALEXANDER JUNIOR HUALLPA HUAYCHANI', 7, 3, 'https://www.linkedin.com/in/ahuallpah/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (121, 'MARCO ANTONIO GARCIA PINTO', 7, 3, 'https://www.linkedin.com/in/margarciap/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (122, 'JENNY KAREN ANAHUA HUAYHUA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (123, 'CARLOS EDUARDO AGUILAR SOTO', 7, 3, 'https://www.linkedin.com/in/carlos-eduardo-aguilar-soto/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (124, 'KIARA ESTEFANI COLOMA COLQUEHUANCA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (125, 'ALDO FRANCO LOPEZ MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (126, 'ALONSO ANDRE ANDIA ZEBALLOS', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (127, 'TOMMY EDWARDS MORALES ANQUISE', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (128, 'BAYRON ANDRES SANCHEZ RODRIGUEZ', 7, 3, 'https://www.linkedin.com/in/bayron-andres-sanchez-rodriguez-baa27a1b8/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (129, 'EDUARDO ANTONIO AYCA MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (130, 'ELISBAN VILCA MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (131, 'DEIVIS JHONATAN FLORES NAVARRO', 7, 3, 'https://www.linkedin.com/in/deivis-jhonatan-flores-navarro-016b69220/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (132, 'JUNIOR EMILIO FLORES SANDOVAL', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (133, 'JORGE CARLOS PACORA SILVA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (134, 'ELIZABETH MARINA CONORANI MAMANI', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (135, 'JHONY JOSE MAMANI LIMACHE', 3, 3, 'https://www.linkedin.com/in/jhony-mamani-limache-30b9b121a/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (136, 'ENZO CATALAN VARGAS', 3, 3, 'https://www.linkedin.com/in/enzocatalan/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (137, 'JULIO OLIVER MEJIA RODRIGUEZ', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (138, 'BRIAN SEBASTIAN ANCO COPAJA', 7, 3, 'https://www.linkedin.com/in/ancobrian/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (139, 'WILHELNS ROGGERS CONDE BEYZAGA', 8, 3, 'nan');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (140, 'PEDRO ALBERTO ALFEREZ PONCE', 7, 3, 'https://www.linkedin.com/in/pedro-alberto-alferez-ponce-b63643209/');
INSERT INTO egresados (id, nombre, id_cargo, id_ubicacion, linkedin_url) VALUES (141, 'JOSE LUIS QUISPE MAMANI', 8, 3, 'nan');

-- Insertar relación egresado-tecnología
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 7);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (21, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (28, 9);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (28, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (28, 15);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 13);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (29, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 8);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (32, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (47, 12);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (47, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (54, 13);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (56, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (56, 12);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (58, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (58, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (58, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (58, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 8);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 9);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (59, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (64, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (64, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (64, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (67, 12);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (67, 15);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (68, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (68, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (71, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (72, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (72, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (72, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (72, 15);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (72, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (74, 8);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (74, 11);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (74, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (76, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (81, 8);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (81, 11);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (81, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 9);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 11);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (82, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 11);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 13);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (84, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (88, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (88, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (88, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (88, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 3);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 7);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 13);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (97, 15);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (106, 7);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (106, 8);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (106, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (106, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (111, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (113, 12);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (114, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (114, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (114, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (114, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (117, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (117, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (117, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (117, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (118, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (118, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (118, 12);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 7);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (119, 16);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 1);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 2);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 4);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 10);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (121, 14);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (131, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (136, 5);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (136, 6);
INSERT INTO egresado_tecnologia (id_egresado, id_tecnologia) VALUES (136, 13);
