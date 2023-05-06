-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: Stairs
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `batallas`
--

LOCK TABLES `batallas` WRITE;
/*!40000 ALTER TABLE `batallas` DISABLE KEYS */;
INSERT INTO `batallas` VALUES (5,1,1,'Mr. Jung'),(6,1,2,'Mr. Jung'),(7,1,3,'Mr. Jung'),(8,1,5,'Dragon'),(9,2,1,'Amaterasu'),(10,2,2,'Amaterasu'),(11,2,2,'Druida del bosque'),(12,1,7,'Mr. Jung'),(13,1,20,'Mr. Jung'),(14,5,17,'Sky'),(15,12,13,'Sopor'),(16,4,6,'Lady E.'),(17,10,9,'HARE.'),(18,1,8,'Mr. Jung'),(19,10,10,'HARE.'),(20,12,1,'Sopor'),(21,12,16,'Sopor'),(22,10,15,'HARE.'),(23,6,5,'Lord Huron'),(24,1,16,'Mr. Jung'),(25,5,19,'Sky'),(26,9,15,'AW.E'),(27,6,8,'Lord Huron'),(28,10,16,'HARE.'),(29,6,7,'Lord Huron'),(30,12,2,'Sopor'),(31,1,14,'Mr. Jung'),(32,9,18,'AW.E'),(33,10,3,'HARE.'),(34,3,3,'Lord E.'),(35,5,7,'Sky'),(36,12,9,'Señor Oscuro'),(37,8,3,'Metal Icca.'),(38,5,9,'Señor Oscuro'),(39,2,4,'Gigante'),(40,8,12,'Metal Icca.'),(41,12,7,'Sucubo'),(42,3,7,'Sucubo'),(43,9,9,'AW.E'),(44,7,6,'ACDC.'),(45,9,17,'Ven a mi'),(46,7,15,'Lobo gris'),(47,10,9,'HARE.'),(48,11,5,'Mewtal.'),(49,5,11,'Sky'),(50,10,17,'Ven a mi'),(51,5,16,'Puerta eterna'),(52,4,5,'Lady E.'),(53,7,5,'ACDC.'),(54,2,8,'Amaterasu'),(55,12,6,'Sopor'),(56,3,11,'Gato diabolico'),(57,11,7,'Sucubo'),(58,2,5,'Amaterasu'),(59,3,3,'Lord E.'),(60,6,7,'Sucubo'),(61,12,12,'Sopor'),(62,12,1,'Sopor'),(63,3,8,'Lord E.'),(64,10,6,'Banshee'),(65,3,6,'Banshee'),(66,12,7,'Sopor'),(67,9,13,'Ranas venenosas'),(68,7,5,'Dragon'),(69,10,8,'Incubo'),(70,11,9,'Señor Oscuro'),(71,4,9,'Señor Oscuro'),(72,8,7,'Sucubo'),(73,12,3,'Luz mala'),(74,5,5,'Dragon'),(75,4,5,'Dragon'),(76,11,2,'Druida del bosque'),(77,1,20,'Ella'),(78,1,19,'Mr. Jung'),(79,8,8,'Incubo'),(80,2,20,'Ella'),(81,12,4,'Sopor'),(82,4,12,'Lady E.'),(83,3,7,'Lord E.'),(84,10,3,'HARE.'),(85,6,4,'Gigante'),(86,10,13,'HARE.'),(87,7,15,'Lobo gris'),(88,11,5,'Mewtal.'),(89,4,12,'Lady E.'),(90,2,11,'Amaterasu'),(91,9,15,'Lobo gris'),(92,4,12,'El'),(93,2,2,'Druida del bosque'),(94,3,9,'Lord E.'),(95,1,9,'Señor Oscuro'),(96,7,16,'Puerta eterna'),(97,5,8,'Sky'),(98,4,14,'Clon'),(99,4,19,'Señor de Luz'),(100,2,15,'Lobo gris'),(101,3,12,'Lord E.'),(102,9,5,'Dragon'),(103,10,1,'HARE.'),(104,8,10,'Metal Icca.'),(105,7,16,'Puerta eterna'),(106,10,12,'El'),(107,9,14,'AW.E'),(108,5,5,'Sky'),(109,2,2,'Druida del bosque'),(110,5,6,'Banshee'),(111,12,7,'Sopor'),(112,8,18,'Flor espinosa'),(113,8,3,'Luz mala'),(114,4,3,'Lady E.'),(115,5,2,'Druida del bosque'),(116,8,14,'Metal Icca.'),(117,3,16,'Lord E.'),(118,2,16,'Amaterasu'),(119,7,11,'ACDC.'),(120,3,18,'Lord E.'),(121,9,7,'AW.E'),(122,2,14,'Amaterasu'),(123,4,12,'Lady E.'),(124,2,17,'Amaterasu'),(125,10,7,'HARE.'),(126,9,13,'AW.E'),(127,12,2,'Sopor'),(128,1,13,'Mr. Jung'),(129,9,9,'AW.E'),(130,3,20,'Lord E.'),(131,3,19,'Lord E.'),(132,9,7,'AW.E'),(133,12,10,'Sopor'),(134,9,13,'AW.E'),(135,4,2,'Lady E.'),(136,6,5,'Lord Huron'),(137,1,19,'Mr. Jung'),(138,7,7,'ACDC.'),(139,6,12,'Lord Huron'),(140,10,8,'HARE.'),(141,9,9,'AW.E'),(142,7,7,'ACDC.'),(143,7,8,'ACDC.'),(144,12,19,'Sopor'),(145,5,18,'Sky'),(146,12,20,'Sopor'),(147,4,8,'Lady E.'),(148,11,14,'Mewtal.'),(149,7,5,'ACDC.'),(150,1,3,'Mr. Jung'),(151,2,2,'Amaterasu'),(152,1,19,'Mr. Jung'),(153,10,20,'HARE.'),(154,4,17,'Lady E.'),(155,1,5,'Mr. Jung'),(156,8,1,'Metal Icca.'),(157,8,1,'Metal Icca.'),(158,4,13,'Lady E.'),(159,4,18,'Lady E.'),(160,1,9,'Mr. Jung'),(161,8,3,'Metal Icca.'),(162,8,19,'Metal Icca.'),(163,12,19,'Sopor'),(164,9,17,'AW.E'),(165,3,16,'Lord E.'),(166,2,7,'Amaterasu'),(167,10,9,'Señor Oscuro'),(168,8,14,'Clon'),(169,8,9,'Metal Icca.'),(170,4,3,'Lady E.'),(171,7,2,'Druida del bosque'),(172,12,13,'Ranas venenosas'),(173,2,5,'Dragon'),(174,1,6,'Mr. Jung'),(175,10,15,'HARE.'),(176,10,14,'Clon'),(177,6,6,'Lord Huron'),(178,2,9,'Señor Oscuro'),(179,1,1,'Mr. Jung'),(180,1,7,'Sucubo'),(181,10,18,'Flor espinosa'),(182,3,19,'Señor de Luz'),(183,7,20,'ACDC.'),(184,12,3,'Luz mala'),(185,4,3,'Luz mala'),(186,11,17,'Mewtal.'),(187,5,18,'Flor espinosa'),(188,4,20,'Lady E.'),(189,6,3,'Lord Huron'),(190,3,3,'Luz mala'),(191,3,10,'Lobo blanco'),(192,5,19,'Señor de Luz'),(193,8,11,'Gato diabolico'),(194,9,12,'El'),(195,1,6,'Mr. Jung'),(196,1,1,'Lobo salvaje'),(197,4,14,'Lady E.'),(198,10,12,'HARE.'),(199,9,12,'AW.E'),(200,13,1,'Lobo salvaje'),(201,7,14,'ACDC.'),(202,1,5,'Mr. Jung'),(203,5,16,'Sky'),(204,10,19,'HARE.'),(205,11,14,'Mewtal.'),(206,12,2,'Sopor'),(207,4,4,'Lady E.'),(208,12,3,'Luz mala'),(209,9,4,'Gigante'),(210,2,7,'Amaterasu'),(211,5,13,'Sky'),(212,12,4,'Gigante'),(213,5,20,'Sky'),(214,9,13,'AW.E'),(215,5,8,'Sky'),(216,5,17,'Ven a mi'),(217,1,17,'Mr. Jung'),(218,10,20,'HARE.'),(219,5,1,'Sky'),(220,1,8,'Mr. Jung'),(221,13,6,'Banshee'),(222,8,2,'Druida del bosque'),(223,6,17,'Lord Huron'),(224,1,9,'Señor Oscuro'),(225,13,11,'Takumi'),(226,3,17,'Ven a mi'),(227,9,18,'Flor espinosa'),(228,4,5,'Dragon'),(229,8,9,'Metal Icca.'),(230,10,3,'Luz mala'),(231,5,9,'Señor Oscuro'),(232,6,10,'Lobo blanco'),(233,11,17,'Mewtal.'),(234,11,12,'Mewtal.'),(235,1,20,'Ella');
/*!40000 ALTER TABLE `batallas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `aumentar_cantidad_batallas` AFTER INSERT ON `batallas` FOR EACH ROW BEGIN
    UPDATE cantidad_batallas SET cantidad = cantidad + 1 WHERE id = 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `cantidad_batallas`
--

LOCK TABLES `cantidad_batallas` WRITE;
/*!40000 ALTER TABLE `cantidad_batallas` DISABLE KEYS */;
INSERT INTO `cantidad_batallas` VALUES (1,231);
/*!40000 ALTER TABLE `cantidad_batallas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_cantidad_batallas` BEFORE INSERT ON `cantidad_batallas` FOR EACH ROW BEGIN
  DECLARE num_rows INT;
  SELECT COUNT(*) INTO num_rows FROM cantidad_batallas;
  IF (num_rows = 1) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La tabla cantidad_batallas ya contiene una fila';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Luchadores cuerpo a cuerpo y con armas','Cada dos ataques el proximo quita 5 puntos de vidas extra','guerrero'),(2,'Atacan a distancia con flechas','Pueden ver a los enemigos desde lejos, empiezan siempre la batalla','arquero'),(3,'Habilidosos con la magia','Pueden congelar al enemigo con una chance de 1 de 10 y atacar dos veces seguidas','mago'),(4,'Entrenados en el arte del hurto','En una chance de un sexto pueden robarte un objeto','ladron'),(5,'Bendecidos por lo artistico','Pueden cantar una cancion que puede dormir al enemigo','bardo'),(6,'Luchadores con espadas','Ataque veloz','esgrimista'),(7,'Expertos en explosivos e irritantes','Polvora explosiva','bombardero'),(8,'Expertas en pociones y hechizos','Expertas en pociones y hechizos','bruja'),(9,'Entrenados en el arte del hurto','Sigilo','ninja'),(10,'Divierten tanto que distraen y matan','Maquillaje','arlequin');
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `habilidades`
--

LOCK TABLES `habilidades` WRITE;
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
INSERT INTO `habilidades` VALUES (1,'Doble espada','Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),(2,'Disparo KO','Tiene un 15% de oportunidades de matar al enemigo'),(3,'Fuego arcano','O bien te cura la mitad de la hp o le quita la mitad de la hp al enemigo'),(4,'Vaciar','Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),(5,'Melodia divina','Si el enemigo tiene poca vida este poder tiene un 60% de que deje su recompensa y huya');
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `habilidadesclases`
--

LOCK TABLES `habilidadesclases` WRITE;
/*!40000 ALTER TABLE `habilidadesclases` DISABLE KEYS */;
INSERT INTO `habilidadesclases` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `habilidadesclases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mochilas`
--

LOCK TABLES `mochilas` WRITE;
/*!40000 ALTER TABLE `mochilas` DISABLE KEYS */;
INSERT INTO `mochilas` VALUES (1,6),(1,7),(1,8),(1,9),(12,15),(1,16),(1,19),(1,15),(4,7),(4,7),(4,13),(4,18),(4,18),(12,21),(12,11),(1,18),(3,9),(13,25),(13,25),(13,25),(13,25),(13,25);
/*!40000 ALTER TABLE `mochilas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `monstruos`
--

LOCK TABLES `monstruos` WRITE;
/*!40000 ALTER TABLE `monstruos` DISABLE KEYS */;
INSERT INTO `monstruos` VALUES (1,1,'Lobo salvaje',70,'Mordida','Colmillo filoso'),(2,1,'Druida del bosque',75,'Confusion','Caldero'),(3,1,'Luz mala',60,'Susto','Pocion de hp'),(4,1,'Gigante',85,'Patada','Chaleco de lana'),(5,1,'Dragon',130,'Fuego','Escamas'),(6,1,'Banshee',70,'Mal augurio','Colmillo filoso'),(7,1,'Sucubo',75,'Pesadilla','Colmillo filoso'),(8,1,'Incubo',75,'Posesion','Colmillo filoso'),(9,1,'Señor Oscuro',80,'Niebla','Colmillo filoso'),(10,1,'Lobo blanco',50,'Mordida sangrante','Colmillo filoso'),(11,1,'Gato diabolico',70,'Mal augurio','Cuero'),(12,1,'El',150,'Pesadilla','Tunica mitica'),(13,1,'Ranas venenosas',75,'Posesion','Antidoto'),(14,1,'Clon',80,'Niebla','Libro viejo'),(15,1,'Lobo gris',50,'Mordida sangrante','Colmillo'),(16,1,'Puerta eterna',100,'Mal augurio','Llave'),(17,1,'Ven a mi',85,'Pesadilla','Diamante'),(18,1,'Flor espinosa',25,'Posesion','Espina'),(19,1,'Señor de Luz',85,'Brillo','-'),(20,1,'Ella',50,'Mordida sangrante','Vestido rosa');
/*!40000 ALTER TABLE `monstruos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `objetos`
--

LOCK TABLES `objetos` WRITE;
/*!40000 ALTER TABLE `objetos` DISABLE KEYS */;
INSERT INTO `objetos` VALUES (6,11,'Espada larga','Cada 5 ataques puede hacer sangrar al enemigo, lo que le quita 1 hp por turno'),(7,12,'Baston de roble','Permite esquivar un ataque en un 20%'),(8,13,'Arco incendiario','Lanza flechas con llamas, efectivas contra los orcos y monstruos'),(9,14,'Cuchillo','Aumenta el porcentaje de robo con exito'),(10,12,'Arpa antigua','Cura un 10% de la hp propia'),(11,NULL,'Cuero','Proveniente de algun animal, protege de cortes suaves'),(12,NULL,'Tunica mitica','Al ponersela aumenta la agilidad'),(13,NULL,'Antidoto','Cura venenos'),(14,NULL,'Libro viejo','Aumenta la sabiduria del lector'),(15,NULL,'Llave','Se usa para abrir la puerta de un lugar lejano'),(16,NULL,'Diamante','Vale mucho oro'),(17,NULL,'Espina','Escarbadientes'),(18,NULL,'Nada','La nada puede traer el todo'),(19,NULL,'Espada gigante','Tiene un 40% de posibilidades de quitar la mitad de HP del oponente'),(20,NULL,'Vestido rosa','Camufla las bestias'),(21,NULL,'Alas de murcielago','Ingrediente para una pocion poderosa'),(22,NULL,'Barba de pirata','Otorga habilidad con la espada'),(23,NULL,'L arc','Ninguno'),(24,NULL,'Libro destrozado','Contiene paginas que por si solas aportan'),(25,NULL,'Pocion curativa','Cura 15 de hp');
/*!40000 ALTER TABLE `objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personajes`
--

LOCK TABLES `personajes` WRITE;
/*!40000 ALTER TABLE `personajes` DISABLE KEYS */;
INSERT INTO `personajes` VALUES (1,11,5,1,3,'Mr. Jung',450),(2,12,2,1,1,'Amaterasu',100),(3,13,3,1,2,'Lord E.',300),(4,14,3,1,1,'Lady E.',100),(5,15,4,1,1,'Sky',100),(6,12,2,1,1,'Lord Huron',100),(7,13,3,1,1,'ACDC.',100),(8,14,3,1,1,'Metal Icca.',100),(9,12,2,1,1,'AW.E',100),(10,13,3,1,1,'HARE.',100),(11,14,3,1,1,'Mewtal.',100),(12,15,4,1,3,'Sopor',450),(13,11,5,1,1,'Takumi',100);
/*!40000 ALTER TABLE `personajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validar_nombre_personaje` BEFORE INSERT ON `personajes` FOR EACH ROW BEGIN
    DECLARE nombre_existente varchar(30);
    SELECT COUNT(*) INTO nombre_existente FROM personajes WHERE nombre = NEW.nombre;
    IF nombre_existente > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El nombre del personaje ya esta en uso, por favor elegi otro';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `objetos_iniciales_mochila` AFTER INSERT ON `personajes` FOR EACH ROW BEGIN
	DECLARE idobjeto INT;
    DECLARE i INT DEFAULT 1;
    SET idobjeto = (select obj_id from objetos where descripcion = 'Pocion curativa');
    
    WHILE i <= 5 DO
		INSERT INTO mochilas values (NEW.pers_id, idobjeto);
		SET i = i + 1;
    END WHILE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `razas`
--

LOCK TABLES `razas` WRITE;
/*!40000 ALTER TABLE `razas` DISABLE KEYS */;
INSERT INTO `razas` VALUES (11,'Seres que conviven en comunidad','Su historia se remonta a miles de años y diferentes culturas','humano'),(12,'Seres altos humanoides con grandes poderes magicos','Han dominado las artes y los hechizos como ninguna otra raza','elfo'),(13,'Seres con gran barba y habilidad para fabricar metales','En algun punto tuvieron cruza con los humanos','enano'),(14,'Seres espirituales','Tienen una conexion con los antiguos dioses','valar'),(15,'Seres artificiales creados para la batalla','Creados con fines malignos para destruir otros pueblo y dominar','orco'),(21,'Seres que conviven en solitario','Su historia se remonta a miles de años y diferentes culturas','humano oscuro'),(22,'Seres altos humanoides con grandes poderes magicos oscuros','Han dominado las artes y los hechizos como ninguna otra raza','elfo oscuro'),(23,'Seres mitad hombre mitad caballo','Viven alejados en los bosques','centauro'),(24,'Seres de otro mundo','Desconocida','alienigena'),(25,'Seres ancestrales y sagrados','Habitan entre los hombres de incognito','angel');
/*!40000 ALTER TABLE `razas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1,'Ciudad capital de los Reinos del Este','desconocida','Ciudad de Arc'),(2,'El lugar mas alto aledaño a la ciudad de Arc','Pocos se han aventurado a subir. Se dice que escondido reza un tesoro antiguo y valioso','Cerro Alto'),(7,'Lugar de descanso y entrenamiento mental','Se dice que no se puede llegar todos los dias de la misma forma.','Templo del Sur'),(8,'Lugar lleno de energias de batallas','Actualmente en ruinas. Ocurrio una pasada guerra alli.','Templo del Norte'),(9,'Lo buscas y aqui lo encuentras','Siempre lleno de gente, pues es la capital de los trueques y ventas','C. Mercantil de Gark'),(10,'Se dice que aqui habita un dragon muy poderoso','Nunca nadie ha vuelto del viaje hacia este lugar','Escaleras de lava'),(24,'.','.','Templo del Este'),(25,'.','.','Templo del Oeste'),(26,'.','.','C. M. de Gregar'),(27,'.','.','El arco en el cielo'),(28,'.','.','Cascadas Reales'),(29,'.','.','Tierra milagrosa'),(30,'.','.','Valle Rocoso'),(31,'.','.','Valle del miedo'),(32,'.','.','Mas alla'),(33,'.','.','El limite'),(34,'.','.','Tunel vertiginoso'),(35,'.','.','Reino de Look'),(36,'.','.','Ciudad de Looke');
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Sasha Rodriguez','caballerosasha@hotmail.com',1,'JungShadow','abc123abc'),(3,'Tamara Acosta','acosta_tamara77@hotmail.com',2,'LadyX','abc123abc'),(4,'Matias Uzzante','matiuzzante@hotmail.com',3,'Mateck','abc123abc'),(5,'Matias Stella','mstella@hotmail.com',4,'STELLA','abc123abc'),(6,'Amai Ayumi','amaiayumi@hotmail.com',5,'AMAI','abc123abc'),(7,'Bautista Rodriguez','bodriguez@hotmail.com',6,'LordBau','abc123abc'),(8,'Emanuel Porres','eporres@hotmail.com',7,'LDPO','abc123abc'),(9,'Brian Casafu','bscasafu@hotmail.com',8,'Brazam','abc123abc'),(10,'Mino Martinez','minomarti@hotmail.com',9,'Mino','abc123abc'),(11,'Enrika Dream','enrika@hotmail.com',10,'Enrika','abc123abc'),(12,'Rinkrank','rinkrank@hotmail.com',11,'RKRANK','abc123abc'),(13,'Scarlett Red','scarlett@hotmail.com',12,'SCAR','abc123abc');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 21:19:34
