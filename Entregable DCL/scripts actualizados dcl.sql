-- Creacion de la base de datos y uso de la misma
-- --------------------------------------------------
create schema Stairs;
use Stairs;

-- Creacion de tablas de la base de datos
-- --------------------------------------------------
CREATE TABLE razas(
raza_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(255), historia VARCHAR(255), nombre VARCHAR(20), PRIMARY KEY (raza_id));

CREATE TABLE clases(
clase_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), habilidad_propia VARCHAR(100), nombre VARCHAR(20), PRIMARY KEY (clase_id));

CREATE TABLE ubicaciones(
ubi_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), historia VARCHAR(255), nombre VARCHAR(20), PRIMARY KEY (ubi_id)
);

CREATE TABLE personajes( 
pers_id INT NOT NULL AUTO_INCREMENT, raza_id INT, clase_id INT, ubi_id INT,
nivel INT NOT NULL DEFAULT 1, nombre VARCHAR(30) NOT NULL, hp INT NOT NULL,
PRIMARY KEY (pers_id), 
FOREIGN KEY (raza_id) REFERENCES razas(raza_id),
FOREIGN KEY (clase_id) REFERENCES clases(clase_id),
FOREIGN KEY (ubi_id) REFERENCES ubicaciones(ubi_id));

CREATE TABLE habilidades(
habi_id INT NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(100),
efecto VARCHAR(100), PRIMARY KEY (habi_id));

CREATE TABLE habilidadesclases(
habi_id INT NOT NULL,
clase_id INT NOT NULL,
FOREIGN KEY (habi_id) REFERENCES habilidades(habi_id),
FOREIGN KEY (clase_id) REFERENCES clases(clase_id));

CREATE TABLE objetos(
obj_id INT NOT NULL AUTO_INCREMENT,
raza_id INT,
descripcion VARCHAR(100),
efecto VARCHAR(100),
PRIMARY KEY (obj_id), FOREIGN KEY (raza_id) REFERENCES razas(raza_id));

CREATE TABLE usuarios(
usuario_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
email VARCHAR(50) NOT NULL,
pers_id INT,
nombre_usuario VARCHAR(15) NOT NULL UNIQUE,
pass VARCHAR(15) NOT NULL, PRIMARY KEY (usuario_id), FOREIGN KEY (pers_id) REFERENCES personajes(pers_id));

ALTER table usuarios modify column email varchar(50);

CREATE TABLE mochilas(
pers_id INT NOT NULL,
obj_id INT NOT NULL,
FOREIGN KEY (obj_id) REFERENCES objetos(obj_id),
FOREIGN KEY (pers_id) REFERENCES personajes(pers_id));

CREATE TABLE monstruos(
mons_id INT NOT NULL AUTO_INCREMENT,
nivel INT NOT NULL DEFAULT 1, nombre VARCHAR(30) NOT NULL, hp INT NOT NULL,
habilidad_propia VARCHAR(100), recompensa VARCHAR(20),
PRIMARY KEY (mons_id));

CREATE TABLE batallas(
bat_id INT NOT NULL AUTO_INCREMENT,
pers_id INT NOT NULL,
mons_id INT NOT NULL,
ganador varchar(50) NOT NULL,
PRIMARY KEY (bat_id), FOREIGN KEY (pers_id) REFERENCES personajes(pers_id),
FOREIGN KEY (mons_id) REFERENCES monstruos(mons_id));

-- Insercion de datos en las tablas.
-- --------------------------------------------------

INSERT INTO razas (descripcion, historia, nombre) VALUES
('Seres que conviven en comunidad', 'Su historia se remonta a miles de años y diferentes culturas', 'humano'),
('Seres altos humanoides con grandes poderes magicos', 'Han dominado las artes y los hechizos como ninguna otra raza', 'elfo'),
('Seres con gran barba y habilidad para fabricar metales', 'En algun punto tuvieron cruza con los humanos', 'enano'),
('Seres espirituales', 'Tienen una conexion con los antiguos dioses', 'valar'),
('Seres artificiales creados para la batalla', 'Creados con fines malignos para destruir otros pueblo y dominar', 'orco'),
('Seres que conviven en solitario', 'Su historia se remonta a miles de años y diferentes culturas', 'humano oscuro'),
('Seres altos humanoides con grandes poderes magicos oscuros', 'Han dominado las artes y los hechizos como ninguna otra raza', 'elfo oscuro'),
('Seres mitad hombre mitad caballo', 'Viven alejados en los bosques', 'centauro'),
('Seres de otro mundo', 'Desconocida', 'alienigena'),
('Seres ancestrales y sagrados', 'Habitan entre los hombres de incognito', 'angel');

INSERT INTO clases (descripcion, habilidad_propia, nombre) VALUES
('Luchadores cuerpo a cuerpo y con armas', 'Cada dos ataques el proximo quita 5 puntos de vidas extra', 'guerrero'),
('Atacan a distancia con flechas', 'Pueden ver a los enemigos desde lejos, empiezan siempre la batalla', 'arquero'),
('Habilidosos con la magia', 'Pueden congelar al enemigo con una chance de 1 de 10 y atacar dos veces seguidas', 'mago'),
('Entrenados en el arte del hurto', 'En una chance de un sexto pueden robarte un objeto', 'ladron'),
('Bendecidos por lo artistico', 'Pueden cantar una cancion que puede dormir al enemigo', 'bardo'),
('Luchadores con espadas', 'Ataque veloz', 'esgrimista'),
('Expertos en explosivos e irritantes', 'Polvora explosiva', 'bombardero'),
('Expertas en pociones y hechizos', 'Expertas en pociones y hechizos', 'bruja'),
('Entrenados en el arte del hurto', 'Sigilo', 'ninja'),
('Divierten tanto que distraen y matan', 'Maquillaje', 'arlequin');

INSERT INTO ubicaciones (descripcion, historia, nombre) values 
('Ciudad capital de los Reinos del Este', 'desconocida', 'Ciudad de Arc'),
('El lugar mas alto aledaño a la ciudad de Arc', 'Pocos se han aventurado a subir. Se dice que escondido reza un tesoro antiguo y valioso', 'Cerro Alto'),
('Lugar de descanso y entrenamiento mental', 'Se dice que no se puede llegar todos los dias de la misma forma.', 'Templo del Sur'),
('Lugar lleno de energias de batallas', 'Actualmente en ruinas. Ocurrio una pasada guerra alli.', 'Templo del Norte'),
('Lo buscas y aqui lo encuentras', 'Siempre lleno de gente, pues es la capital de los trueques y ventas','C. Mercantil de Gark'),
('Se dice que aqui habita un dragon muy poderoso', 'Nunca nadie ha vuelto del viaje hacia este lugar', 'Escaleras de lava'),
('.', '.', 'Templo del Este'),
('.', '.', 'Templo del Oeste'),
('.', '.','C. M. de Gregar'),
('.', '.', 'El arco en el cielo'),
('.', '.', 'Cascadas Reales'),
('.', '.','Tierra milagrosa'),
('.', '.', 'Valle Rocoso'),
('.', '.', 'Valle del miedo'),
('.', '.','Mas alla'),
('.', '.', 'El limite'),
('.', '.', 'Tunel vertiginoso'),
('.', '.', 'Reino de Look'),
('.', '.', 'Ciudad de Looke');

INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(11, 5, 1, 'Mr. Jung', 100),
(12, 2, 1, 'Amaterasu', 100),
(13, 3, 1, 'Lord E.', 100),
(14, 3, 1, 'Lady E.', 100),
(15, 4, 1, 'Sky', 100),
(12, 2, 1, 'Lord Huron', 100),
(13, 3, 1, 'ACDC.', 100),
(14, 3, 1, 'Metal Icca.', 100),
(12, 2, 1, 'AW.E', 100),
(13, 3, 1, 'HARE.', 100),
(14, 3, 1, 'Mewtal.', 100),
(15, 4, 1, 'Sopor', 100);

INSERT INTO habilidades (descripcion, efecto) values
('Doble espada', 'Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),
('Disparo KO', 'Tiene un 15% de oportunidades de matar al enemigo'),
('Fuego arcano', 'O bien te cura la mitad de la hp o le quita la mitad de la hp al enemigo'),
('Vaciar', 'Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),
('Melodia divina', 'Si el enemigo tiene poca vida este poder tiene un 60% de que deje su recompensa y huya');

INSERT INTO habilidadesclases values
(1,1),
(2,2),
(3,3),
(4, 4),
(5, 5);

INSERT INTO objetos (raza_id, descripcion, efecto) values 
(11, 'Espada larga', 'Cada 5 ataques puede hacer sangrar al enemigo, lo que le quita 1 hp por turno'),
(12, 'Baston de roble', 'Permite esquivar un ataque en un 20%'),
(13, 'Arco incendiario', 'Lanza flechas con llamas, efectivas contra los orcos y monstruos'),
(14, 'Cuchillo', 'Aumenta el porcentaje de robo con exito'),
(12, 'Arpa antigua', 'Cura un 10% de la hp propia');

INSERT INTO usuarios (nombre, email, pers_id, nombre_usuario, pass) values
('Sasha Rodriguez', 'caballerosasha@hotmail.com', 1, 'JungShadow', 'abc123abc'),
('Matias Uzzante', 'matiuzzante@hotmail.com', 3, 'Mateck', 'abc123abc'),
('Matias Stella', 'mstella@hotmail.com', 4, 'STELLA', 'abc123abc'),
('Amai Ayumi', 'amaiayumi@hotmail.com', 5, 'AMAI', 'abc123abc'),
('Bautista Rodriguez', 'bodriguez@hotmail.com', 6, 'LordBau', 'abc123abc'),
('Emanuel Porres', 'eporres@hotmail.com', 7, 'LDPO', 'abc123abc'),
('Brian Casafu', 'bscasafu@hotmail.com', 8, 'Brazam', 'abc123abc'),
('Mino Martinez', 'minomarti@hotmail.com', 9, 'Mino', 'abc123abc'),
('Enrika Dream', 'enrika@hotmail.com', 10, 'Enrika', 'abc123abc'),
('Rinkrank', 'rinkrank@hotmail.com', 11, 'RKRANK', 'abc123abc'),
('Scarlett Red', 'scarlett@hotmail.com', 12, 'SCAR', 'abc123abc'),;

insert into mochilas values
(1, 6),
(1, 7),
(1, 8),
(1, 9);

INSERT INTO monstruos (nombre, hp, habilidad_propia, recompensa) values
('Lobo salvaje', 70, 'Mordida', 'Colmillo filoso'),
('Druida del bosque', 75, 'Confusion', 'Caldero'),
('Luz mala', 60, 'Susto', 'Pocion de hp'),
('Gigante', 85, 'Patada', 'Chaleco de lana'),
('Dragon', 130, 'Fuego', 'Escamas'),
('Banshee', 70, 'Mal augurio', 'Colmillo filoso'),
('Sucubo', 75, 'Pesadilla', 'Colmillo filoso'),
('Incubo', 75, 'Posesion', 'Colmillo filoso'),
('Señor Oscuro', 80, 'Niebla', 'Colmillo filoso'),
('Lobo blanco', 50, 'Mordida sangrante', 'Colmillo filoso'),
('Gato diabolico', 70, 'Mal augurio', 'Cuero'),
('El', 150, 'Pesadilla', 'Tunica mitica'),
('Ranas venenosas', 75, 'Posesion', 'Antidoto'),
('Clon', 80, 'Niebla', 'Libro viejo'),
('Lobo gris', 50, 'Mordida sangrante', 'Colmillo'),
('Puerta eterna', 100, 'Mal augurio', 'Llave'),
('Ven a mi', 85, 'Pesadilla', 'Diamante'),
('Flor espinosa', 25, 'Posesion', 'Espina'),
('Señor de Luz', 85, 'Brillo', '-'),
('Ella', 50, 'Mordida sangrante', 'Vestido rosa');

INSERT INTO objetos (raza_id, descripcion, efecto) values 
(null, 'Cuero', 'Proveniente de algun animal, protege de cortes suaves'),
(null, 'Tunica mitica', 'Al ponersela aumenta la agilidad'),
(null, 'Antidoto', 'Cura venenos'),
(null, 'Libro viejo', 'Aumenta la sabiduria del lector'),
(null, 'Llave', 'Se usa para abrir la puerta de un lugar lejano'),
(null, 'Diamante', 'Vale mucho oro'),
(null, 'Espina', 'Escarbadientes'),
(null, 'Nada', 'La nada puede traer el todo'),
(null, 'Espada gigante', 'Tiene un 40% de posibilidades de quitar la mitad de HP del oponente'),
(null, 'Vestido rosa', 'Camufla las bestias'),
(null, 'Alas de murcielago', 'Ingrediente para una pocion poderosa'),
(null, 'Barba de pirata', 'Otorga habilidad con la espada'),
(null, 'L arc', 'Ninguno'),
(null, 'Libro destrozado', 'Contiene paginas que por si solas aportan');

insert into batallas (pers_id, mons_id, ganador) values
(1, 1, 'Mr. Jung'),
(1, 2, 'Mr. Jung'),
(1, 3, 'Mr. Jung'),
(1, 5, 'Dragon'),
(2, 1, 'Amaterasu'),
(2, 2, 'Amaterasu'),
(2, 2, 'Druida del bosque');


-- Era un poco fiaca insertar batallas una por una.
-- Arme por eso una funcion que te genera un loop de 10 registros random (siempre gana un personaje)
DELIMITER //
CREATE FUNCTION insertar_valores_batallas()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE i INT DEFAULT 1;
    
    WHILE i <= 10 DO
        INSERT INTO batallas (ganador, pers_id, mons_id)
		SELECT nombre, pers_id, mons_id
		FROM (
			SELECT nombre, pers_id FROM personajes ORDER BY RAND() LIMIT 1
		) t1,
		(
			SELECT mons_id FROM monstruos ORDER BY RAND() LIMIT 1
		) t2;
        
        SET i = i + 1;
    END WHILE;
    
    RETURN 1;
END //

DELIMITER ;

-- ...y otra funcion que permite que ganen monstruos o personajes random
DELIMITER //

CREATE FUNCTION insertar_valores_batallasvarios()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE random_num INT;
    
    WHILE i <= 10 DO
        SET random_num = FLOOR(RAND() * 2) + 1;
        IF random_num = 1 THEN
            INSERT INTO batallas (ganador, pers_id, mons_id)
			SELECT nombre, pers_id, mons_id
			FROM (
				SELECT nombre, pers_id FROM personajes ORDER BY RAND() LIMIT 1
			) t1,
			(
				SELECT mons_id FROM monstruos ORDER BY RAND() LIMIT 1
			) t2;
        ELSE
            INSERT INTO batallas (ganador, mons_id, pers_id)
			SELECT nombre, mons_id, pers_id
			FROM (
				SELECT nombre, mons_id FROM monstruos ORDER BY RAND() LIMIT 1
			) t1,
			(
				SELECT pers_id FROM personajes ORDER BY RAND() LIMIT 1
			) t2;
        END IF;
        
        SET i = i + 1;
    END WHILE;
    
    RETURN 1;
END //

DELIMITER ;

--select insertar_valores_batallasvarios();
--select insertar_valores_batallas();
--select insertar_valores_batallasvarios();
--select insertar_valores_batallas();
--select insertar_valores_batallasvarios();

-- ------------------------------------- Vistas
CREATE OR REPLACE VIEW batallas_ganadas_personajes AS
(select count(*) as batallas_ganadas, ganador from batallas group by ganador ORDER by count(*) desc);

--select * from batallas_ganadas_personajes;

CREATE OR REPLACE VIEW batallas_peleadas_personajes AS
(select count(*) as batallas_peleadas, p.nombre from batallas b 
join personajes p on p.pers_id =  b.pers_id
group by b.pers_id order by batallas_peleadas desc);

--select * from batallas_peleadas_personajes;

-- personajes segun clase
CREATE OR REPLACE VIEW clases_segun_personaje AS
(select p.nombre as personaje, c.nombre as clase from personajes p
join clases c on c.clase_id = p.clase_id
order by c.nombre);

--select * from clases_segun_personaje;

-- cantidad de uso de cada clase por los personajes
CREATE OR REPLACE VIEW cantidad_clases_usadas AS
(select count(*) as cantidad, c.nombre as clase from personajes p
join clases c on c.clase_id = p.clase_id
group by p.clase_id order by cantidad desc);

--select * from cantidad_clases_usadas;

-- cantidad de uso de cada raza por los personajes
CREATE OR REPLACE VIEW cantidad_razas_usadas AS
(select count(*) as cantidad, r.nombre as raza from personajes p
join razas r on r.raza_id = p.raza_id
group by p.raza_id order by cantidad desc);

--select * from cantidad_razas_usadas;
--select * from cantidad_razas_usadas;
--select * from cantidad_clases_usadas;
--select * from clases_segun_personaje;
--select * from batallas_ganadas_personajes;
--select * from batallas_peleadas_personajes;

-- ...de yapa, vista que integra las anteriores
CREATE OR REPLACE VIEW batallas_peleadas_ganadas as
(select bp.batallas_peleadas, bg.batallas_ganadas, bp.nombre 
from batallas_peleadas_personajes as bp
join batallas_ganadas_personajes as bg on bp.nombre = bg.ganador); 

--select * from batallas_peleadas_ganadas;
-- ---------------------------------------------------------------


-- ----------------------------------------------------- Funciones

-- Devuelve los cantidad de registros de la view batallas_peleadas_personajes
-- de los personajes que hayan peleado hasta la cantidad de batallas indicadas por parametro
DELIMITER //
CREATE FUNCTION personajes_con_batallas_peleadas_hasta (cant_batallas int) 
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE resultado INT;
	select count(*) into resultado from batallas_peleadas_personajes bp where batallas_peleadas <= cant_batallas;
    RETURN resultado;
END;
//
-- El resultado se leeria como 'Hay x personajes que pelearon parametro veces' si fuera una string
select personajes_con_batallas_peleadas_hasta(8);

-- La siguiente funcion chequea si el nombre del personaje indicado 
-- gano mas batallas de las que perdio o no
DELIMITER //
CREATE FUNCTION gano_mas_de_lo_que_perdio (personaje VARCHAR(30))
RETURNS BOOLEAN DETERMINISTIC
BEGIN
	DECLARE resultado BOOLEAN;
    SET resultado = (
    select IF((batallas_peleadas - batallas_ganadas) < batallas_ganadas, TRUE, FALSE) as gano_mas 
	from batallas_peleadas_ganadas
	where nombre = personaje);
    RETURN resultado;
END
//

--SELECT gano_mas_de_lo_que_perdio('Amaterasu');

-- La siguiente funcion devuelve a los nombres de tres personajes segun su longitud.
-- Si se especifica como parametro DESC, el resultado devolvera los 3 nombres de mas longitud,
-- SI se especifica ASC, el resultado devolvera los 3 nombres con menos longitud.
DELIMITER XDXD
CREATE FUNCTION tres_personajes_orden_longitud_nombre (orden VARCHAR(4))
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	DECLARE resultado VARCHAR(255);
	SET resultado = 
    (select GROUP_CONCAT(sc.nombre SEPARATOR ', ') as nombres 
	from (select LENGTH(nombre) as longitud, nombre 
	from personajes 
    order by  
		CASE WHEN orden = 'ASC' THEN longitud END ASC,
		CASE WHEN orden = 'DESC' THEN longitud END DESC
    limit 3) sc);
    RETURN resultado;
END
XDXD
-- -----------------------------------------------------

-- Stored Procedures--------------------------------------------------------------------------------------------

-- El procedure divide las batallas ganadas de los personajes por 5 (numero de batallas ganadas necesarias para ganar un nivel), compara con el nivel actual
-- del personaje y lo actualiza de ser necesario. Por cada nivel aumenta 150 de vida al personaje (hace un update a la columna hp). 
-- Ademas añade un objeto al azar a la mochila del personaje
-- de la tabla objetos como recompensa por la subida de nivel y te devuelve un mensaje completo 
-- que dice 'El personaje X ahora es nivel Y, como recompensa se recibe un objeto Z.'
DELIMITER SHADOW
CREATE PROCEDURE actualizar_niveles(IN nombrepersonaje varchar(30), OUT mensaje varchar(100))
BEGIN 
    DECLARE recompensa varchar(100);
    DECLARE recompensaid INT;
    DECLARE nivelactual INT;
    DECLARE personajeid INT;
    DECLARE cantidad INT;
    DECLARE nivelcorrecto INT;
    DECLARE nuevahp INT;
    
	SET cantidad = (SELECT batallas_ganadas FROM batallas_ganadas_personajes where ganador = nombrepersonaje);
    select nivel, pers_id INTO nivelactual, personajeid FROM personajes where nombre = nombrepersonaje;
    SET nivelcorrecto = CAST(cantidad / 5 AS UNSIGNED);
    select obj_id, descripcion INTO recompensaid, recompensa from objetos order by rand() limit 1;
    SET nuevahp = nivelcorrecto * 150;
    
    IF nivelcorrecto != nivelactual and nivelcorrecto > 1 THEN
		UPDATE personajes SET nivel = nivelcorrecto, hp = nuevahp WHERE pers_id = personajeid;
        INSERT into mochilas values (personajeid, recompensaid);
		SET mensaje := (SELECT CONCAT('El personaje subio al nivel ', nivelcorrecto, ' y como recompensa se le brinda el objeto ', recompensa) 
        from personajes WHERE pers_id = personajeid);
	ELSE
		SET mensaje := (SELECT CONCAT('El personaje tiene ya su nivel correcto: ', nivelactual));
    END IF;
END 
SHADOW

--CALL actualizar_niveles('Lord E.', @resultado);
--select @resultado;

-- Con esta consulta reviso el estado de las mochilas de los personajes tras actualizar el nivel de alguno/s
--select o.descripcion objeto, p.nombre dueño from mochilas m
--join objetos o on o.obj_id = m.obj_id
--join personajes p on m.pers_id = p.pers_id
--order by dueño;

-- El siguiente procedure toma dos parametros IN, uno que indica el campo de ordenamiento de la tabla personajes
-- y el otro si el ordenamiento es ascendente o descendente. Tambien defino el OUT que sera el resultado.
DELIMITER STRS
CREATE PROCEDURE ordenar_personajes(IN campo varchar(20), IN tipoorden varchar(4))
BEGIN
	IF tipoorden = 'ASC' THEN
        SET @orden = 'ASC';
    ELSEIF tipoorden = 'DESC' THEN
        SET @orden = 'DESC';
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipo de orden inválido';
    END IF;
    
	SET @sql = CONCAT('SELECT * FROM personajes ORDER BY ', campo, ' ', @orden);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END
STRS

--CALL ordenar_personajes('pers_id', 'DESC');

-- Triggers ----------------------------------------------------------------------------------------

-- Este trigger (BEFORE INSERT) chequea que no exista en la tabla personajes un registro con la columna 'nombre'
-- igual al valor del nuevo registro que se desea insertar. Si existe devuelve un mensaje de error.
DELIMITER STRS
CREATE TRIGGER validar_nombre_personaje
BEFORE INSERT ON personajes
FOR EACH ROW
BEGIN
    DECLARE nombre_existente varchar(30);
    SELECT COUNT(*) INTO nombre_existente FROM personajes WHERE nombre = NEW.nombre;
    IF nombre_existente > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El nombre del personaje ya esta en uso, por favor elegi otro';
    END IF;
END;
STRS
-- nombre ya en uso
INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(11, 5, 1, 'Mr. Jung', 100);

-- Objeto nuevo necesario para el proximo trigger
insert into objetos (descripcion, efecto) values ('Pocion curativa', 'Cura 15 de hp'); 

-- Con este trigger (after) le damos un regalo de bienvenida al nuevo personaje creado, 5 pociones curativas (de la tabla objetos),
-- creando los registros correspondientes en la tabla mochilas
DELIMITER STRS
CREATE TRIGGER objetos_iniciales_mochila
AFTER INSERT ON personajes
FOR EACH ROW
BEGIN
	DECLARE idobjeto INT;
    DECLARE i INT DEFAULT 1;
    SET idobjeto = (select obj_id from objetos where descripcion = 'Pocion curativa');
    
    WHILE i <= 5 DO
		INSERT INTO mochilas values (NEW.pers_id, idobjeto);
		SET i = i + 1;
    END WHILE;
END;
STRS

-- Creamos un nuevo personaje para ver si el trigger funciona como lo esperado
INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(11, 5, 1, 'Takumi', 100);

-- Recuperamos su pers_id (en mi caso es 13)
--select * from personajes where nombre = 'Takumi';

-- Efectivamente vemos que el personaje ya tiene los objetos iniciales
select p.nombre dueño, o.descripcion objeto from mochilas m
join objetos o on o.obj_id = m.obj_id
join personajes p on p.pers_id = m.pers_id
where p.pers_id = 13;

-- Tabla nueva necesaria para los siguientes TRIGGERS
CREATE TABLE cantidad_batallas (
  id INT PRIMARY KEY,
  cantidad INT NOT NULL
);

INSERT INTO cantidad_batallas (id, cantidad) VALUES (1, 0);

-- Limitamos los registros de la tabla solo a uno con un trigger nuevo (BEF0RE INSERT)
DELIMITER STRS
CREATE TRIGGER check_cantidad_batallas
BEFORE INSERT ON cantidad_batallas
FOR EACH ROW
BEGIN
  DECLARE num_rows INT;
  SELECT COUNT(*) INTO num_rows FROM cantidad_batallas;
  IF (num_rows = 1) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La tabla cantidad_batallas ya contiene una fila';
  END IF;
END 
STRS

-- Actualizamos la cantidad de batallas en la tabla cantidad_batallas
UPDATE cantidad_batallas set cantidad = (select count(*) from batallas) where id = 1;

-- Si intentamos crear otro registro, no nos dejará gracias al trigger anterior
INSERT INTO cantidad_batallas (id, cantidad) VALUES (2, 0);

-- Ahora creamos un trigger mas (AFTER INSERT) que sume uno a la cantidad de batallas de la tabla
-- cantidad_batallas cada vez que un nuevo registro de la tabla batallas es creado
DELIMITER STRS
CREATE TRIGGER aumentar_cantidad_batallas
AFTER INSERT ON batallas
FOR EACH ROW
BEGIN
    UPDATE cantidad_batallas SET cantidad = cantidad + 1 WHERE id = 1;
END;
STRS

-- Vemos cuantas batallas hay
--select * from cantidad_batallas;

-- Ingresamos mas usando una funcion creada anteriormente
--select insertar_valores_batallasvarios();

-- Volvemos a chequear y vemos que el numero de batallas aumentó en 10
--select * from cantidad_batallas;

-- DCL-------------------------------------------------------------------------------------------------
use mysql;

-- show tables;

-- SELECT * FROM USER;

use Stairs;

-- SHOW VARIABLES LIKE 'validate_password%';

-- Creacion de los usuarios, con las contraseñas necesarias segun la politica actual de las mismas.
CREATE USER buenlector@localhost identified by 'Lectura!1';

CREATE USER manipulador@localhost identified by 'Manipula!1';

-- Al usuario que solo va a tener permisos de lectura sobre las tablas de Stairs, se los doy
GRANT SELECT ON personajes TO buenlector@localhost;
GRANT SELECT ON monstruos TO buenlector@localhost;
GRANT SELECT ON objetos TO buenlector@localhost;
GRANT SELECT ON batallas TO buenlector@localhost;
GRANT SELECT ON mochilas TO buenlector@localhost;
GRANT SELECT ON clases TO buenlector@localhost;
GRANT SELECT ON razas TO buenlector@localhost;
GRANT SELECT ON habilidades TO buenlector@localhost;
GRANT SELECT ON ubicaciones TO buenlector@localhost;
GRANT SELECT ON usuarios TO buenlector@localhost;
GRANT SELECT ON habilidadesclases TO buenlector@localhost;
GRANT SELECT ON cantidad_batallas TO buenlector@localhost;

-- Al otro usuario le doy permisos de lectura, modificacion y creacion de registros
GRANT SELECT, UPDATE, INSERT ON personajes TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON monstruos TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON objetos TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON batallas TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON mochilas TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON clases TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON razas TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON habilidades TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON ubicaciones TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON usuarios TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON habilidadesclases TO manipulador@localhost;
GRANT SELECT, UPDATE, INSERT ON cantidad_batallas TO manipulador@localhost;

-- Vemos ahora los permisos actualizados de ambos usuarios:
--SHOW GRANTS FOR buenlector@localhost;
--SHOW GRANTS FOR manipulador@localhost;
