-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2022 a las 15:54:52
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `id` int(18) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `contenido` varchar(2500) NOT NULL,
  `autor` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`id`, `titulo`, `descripcion`, `contenido`, `autor`) VALUES
(1, 'Agricultura para principiantes', 'Cómo Convertirse en Agricultor – Guía Paso a Paso', '¿Qué Hace un Granjero?\r\n\r\nComo agricultor, definimos a cualquiera que obtenga ingresos trabajando en el sector primario, criando organismos vivos ya sea para alimentos o para materias primas (por ejemplo, algodón). Se cree que los agricultores son personas estrechamente relacionadas con la naturaleza, que pasan la mayor parte de su tiempo afuera en el campo, ya sea cultivando plantas o criando animales. Esto es en parte cierto. Sin embargo, los productores de invernaderos modernos pueden estar cerrados en sus instalaciones durante todo el día y no tener acceso a la luz solar. En todos los casos, los agricultores no tienen horarios de trabajo específicos. Tratan con organismos vivos y esto a menudo crea un caos en su agenda personal. No es tan fácil tener un horario de trabajo estructurado. Algunos de ellos no tienen vacaciones o días libres. La agricultura requiere dedicación total, amor y pasión para tener éxito.', 'Joel Sálatin'),
(4, 'Electricidad para principiantes', 'Aprende electricidad, esquemas, instalaciones y ci.', '¿Qué es la electricidad? \r\n\r\nEs una fuente de energía que hace que tengamos luz eléctrica siempre a mano, y que podamos utilizarla en iluminación y aparatos eléctricos a cualquier hora de día\r\nAhora podemos observar algunos ejemplos de cosas cotidianas que podemos encontrar de forma más o menos habitual.\r\n¿Qué es la energía eléctrica? Es la fuente que alimenta a los aparatos electicos y hace que esto funcionen mientras estén alimentados\r\n\r\nSeguimos desgranando este misterio, comprobamos a su vez, que cada átomo se compone de protones, neutrones y electrones. Cada átomo, en su centro alberga al menos, un protón. Y alrededor del núcleo se mueven a gran velocidad los electrones y protones\r\nProtones y electrones se definen por su principal característica, la carga eléctrica.\r\nPorque es peligrosa la electricidad, cualquier cortocircuito o sobrecarga eléctrica puede provocar un incendio\r\n\r\nTambién podemos sufrir descargas eléctricas en nuestro cuerpo, estas nos pueden producir desde pequeños calambres a graves quemaduras o incluso un paro cardiaco. La electricidad no es perceptible a simple vista por los sentidos de cuerpo humano\r\nComo funciona la electricidad, la electricidad funciona por medio de los circuitos, estos llevan la electricidad desde la fuente de energía hasta su receptor, por medio de cables, enchufes (tomas de corriente) e interruptores.', 'Nikola Tesla'),
(18, 'Rebelion en la granja', 'Rebelión en la granja es una novela corta satírica del escritor británico George Orwell.', 'Los animales de la Granja Solariega, alentados un día por el Viejo Mayor, un cerdo que antes de morir les explicó a todos sus ideas, llevan a cabo una revolución en la que consiguen expulsar al granjero Howard Jones y crear sus propias reglas (los Siete Mandamientos), que escriben en una pared.\r\nAl principio, la granja, (que pasa a llamarse Granja Animal) es más próspera incluso que cuando el señor Jones la administraba. Los cerdos se erigen como líderes por su inteligencia. Dos de ellos, Snowball y Napoleón, los máximos dirigentes, empiezan a tener discrepancias que acaban cuando Napoleón lanza a los perros contra Snowball y este huye de la granja.\r\n', 'George Orwell'),
(20, 'El origen de las especies', 'El origen de las especies es un libro de Charles Darwin, considerado uno de los trabajos precursores de la literatura científica.', 'La teoría de Darwin de la evolución se basa en hechos clave e inferencias extraídas de estos, que el biólogo Ernst Mayr resumió de la siguiente manera:\r\nCada especie es suficientemente fértil para que, si sobreviven todos los descendientes para reproducirse, la población crezca.\r\nAunque hay fluctuaciones periódicas, las poblaciones siguen siendo aproximadamente del mismo tamaño.\r\nLos recursos, como los alimentos, son limitados y son relativamente estables en el tiempo.\r\nSobreviene una lucha por la supervivencia.\r\nLos individuos de una población varían considerablemente de unos a otros.\r\nGran parte de esta variación es hereditaria.\r\nLos individuos menos adaptados al medio ambiente tienen menos probabilidades de sobrevivir y menos probabilidades de reproducirse; los individuos más aptos tienen más probabilidades de sobrevivir y más posibilidades de reproducirse y de dejar sus rasgos hereditarios a las generaciones futuras. Este es el proceso de selección natural.\r\nEste lento proceso da como resultado cambios en las poblaciones para adaptarse a sus entornos, y en última instancia, estas variaciones se acumulan con el tiempo para formar nuevas especies.', 'Charles Darwin'),
(21, 'La Segunda Guerra Mundial', 'La Segunda Guerra Mundial es el título de la obra literaria histórica en seis volúmenes que narra el período desde el final de la Primera Guerra Mundial hasta julio de 1945.', 'El primer ministro más famoso de la historia de Inglaterra ha pasado a la historia como un gran estadista metido en política que cambió el rumbo de Europa, pero más allá de eso fue también un gran bebedor, un fumador empedernido, le encantaba contar chistes verdes y sus enfados eran épicos. El premier despreciaba las encuestas, y en más de una ocasión mintió a la población acerca de las bajas del ejército en la contienda militar. Pero, a pesar de esto, este político británico fallecido el 24 de enero de 1965, sigue siendo para sus compatriotas el líder que logró que los aliados ganara la Segunda Guerra Mundial, así como un foco de inspiración en los momentos más duros del conflicto.\r\nEL CARÁCTER REBELDE DE CHURCHILL\r\nNacido el 30 de noviembre de 1874, fue primer ministro del Reino Unido entre 1940 y 194, y entre 1951 y 1955 en un segundo mandato. El premier es una de las figuras históricas a las que más se alude, tanto por parte de historiadores como por parte de políticos, como uno de los artífices de la resistencia británica durante la Segunda Guerra Mundial. No obstante, la vida del dirigente más relevante de la Gran Bretaña del siglo XX cuenta con aspectos un tanto oscuros que no acostumbran a aparecer en los libros de historia.\r\n', 'Winston Churchill'),
(24, 'Don Quijote de la Mancha', 'Don Quijote de la Mancha​ es una novela publicada en su primera parte con el título de El ingenioso hidalgo don Quijote de la Mancha a comienzos de 1605.', 'Es la obra más destacada de la literatura española y una de las principales de la literatura universal, además de ser la más leída después de la Biblia.​ \r\nEn 1615 apareció su continuación con el título de Segunda parte del ingenioso caballero don Quijote de la Mancha. El Quijote de 1605 se publicó dividido en cuatro partes; pero al aparecer el Quijote de 1615 en calidad de Segunda parte de la obra, quedó revocada de hecho la partición en cuatro secciones del volumen publicado diez años antes por Cervantes.\r\n\r\nEs la primera obra genuinamente desmitificadora de la tradición caballeresca y cortés por su tratamiento burlesco. Representa la primera novela moderna y la primera novela polifónica; como tal, ejerció un enorme influjo en toda la narrativa europea. Por considerarse «el mejor trabajo literario jamás escrito», encabezó la lista de las mejores obras literarias de la historia, que se estableció con las votaciones de cien grandes escritores de 54 nacionalidades a petición del Club Noruego del Libro y Bokklubben World Library en 2002; así, fue la única excepción en el estricto orden alfabético que se había dispuesto.', 'Miguel de Cervantes Saavedra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `id` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
