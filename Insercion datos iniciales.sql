-- Creacion de la base de datos y uso de la misma
-- --------------------------------------------------
create schema Stairs;
use Stairs;

-- Creacion de tablas de la base de datos
-- --------------------------------------------------
CREATE TABLE razas(
raza_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(255), historia VARCHAR(255), nombre VARCHAR(20), PRIMARY KEY (raza_id));

-- ALTER TABLE razas ADD nombre varchar(20);

-- ALTER TABLE razas MODIFY COLUMN descripcion VARCHAR(255);

CREATE TABLE clases(
clase_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), habilidad_propia VARCHAR(100), nombre VARCHAR(20), PRIMARY KEY (clase_id));

ALTER TABLE clases ADD nombre varchar(20);

CREATE TABLE ubicaciones(
ubi_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), historia VARCHAR(255), nombre VARCHAR(20), PRIMARY KEY (ubi_id)
);

ALTER TABLE ubicaciones ADD nombre varchar(20);

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
ganador INT NOT NULL,
PRIMARY KEY (bat_id), FOREIGN KEY (pers_id) REFERENCES personajes(pers_id),
FOREIGN KEY (mons_id) REFERENCES monstruos(mons_id));

alter table batallas modify column ganador varchar(50) not null;

-- Insercion de datos en las tablas
-- --------------------------------------------------

INSERT INTO razas (descripcion, historia, nombre) VALUES
('Seres que conviven en comunidad', 'Su historia se remonta a miles de años y diferentes culturas', 'humano'),
('Seres altos humanoides con grandes poderes magicos', 'Han dominado las artes y los hechizos como ninguna otra raza', 'elfo'),
('Seres con gran barba y habilidad para fabricar metales', 'En algun punto tuvieron cruza con los humanos', 'enano'),
('Seres espirituales', 'Tienen una conexion con los antiguos dioses', 'valar'),
('Seres artificiales creados para la batalla', 'Creados con fines malignos para destruir otros pueblo y dominar', 'orco');

INSERT INTO clases (descripcion, habilidad_propia, nombre) VALUES
('Luchadores cuerpo a cuerpo y con armas', 'Cada dos ataques el proximo quita 5 puntos de vidas extra', 'guerrero'),
('Atacan a distancia con flechas', 'Pueden ver a los enemigos desde lejos, empiezan siempre la batalla', 'arquero'),
('Habilidosos con la magia', 'Pueden congelar al enemigo con una chance de 1 de 10 y atacar dos veces seguidas', 'mago'),
('Entrenados en el arte del hurto', 'En una chance de un sexto pueden robarte un objeto', 'ladron'),
('Bendecidos por lo artistico', 'Pueden cantar una cancion que puede dormir al enemigo', 'bardo');

INSERT INTO ubicaciones (descripcion, historia, nombre) values 
('Ciudad capital de los Reinos del Este', 'desconocida', 'Ciudad de Arc'),
('El lugar mas alto aledaño a la ciudad de Arc', 'Pocos se han aventurado a subir. Se dice que escondido reza un tesoro antiguo y valioso', 'Cerro Alto');

INSERT INTO ubicaciones (descripcion, historia, nombre) values 
('Lugar de descanso y entrenamiento mental', 'Se dice que no se puede llegar todos los dias de la misma forma.', 'Templo del Sur'),
('Lugar lleno de energias de batallas', 'Actualmente en ruinas. Ocurrio una pasada guerra alli.', 'Templo del Norte'),
('Lo buscas y aqui lo encuentras', 'Siempre lleno de gente, pues es la capital de los trueques y ventas','C. Mercantil de Gark'),
('Se dice que aqui habita un dragon muy poderoso', 'Nunca nadie ha vuelto del viaje hacia este lugar', 'Escaleras de lava');

INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(11, 5, 1, 'Mr. Jung', 100);

INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(12, 2, 1, 'Amaterasu', 100),
(13, 3, 1, 'Lord E.', 100),
(14, 3, 1, 'Lady E.', 100),
(15, 4, 1, 'Sky', 100);

INSERT INTO personajes (raza_id, clase_id, ubi_id, nombre, hp) values
(12, 2, 1, 'Lord Huron', 100),
(13, 3, 1, 'ACDC.', 100),
(14, 3, 1, 'Metal Icca.', 100),
(12, 2, 1, 'AW.E', 100),
(13, 3, 1, 'HARE.', 100),
(14, 3, 1, 'Mewtal.', 100),
(15, 4, 1, 'Sopor', 100);

select * from personajes;

INSERT INTO habilidades (descripcion, efecto) values
('Doble espada', 'Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),
('Disparo KO', 'Tiene un 15% de oportunidades de matar al enemigo'),
('Fuego arcano', 'O bien te cura la mitad de la hp o le quita la mitad de la hp al enemigo'),
('Vaciar', 'Disminuye la velocidad de ataque pero quita el 20% de la hp del enemigo'),
('Melodia divina', 'Si el enemigo tiene poca vida este poder tiene un 60% de que deje su recompensa y huya');

-- select h.descripcion as habilidad, c.nombre as clase from habilidadesclases hc
-- join habilidades h on hc.habi_id = h.habi_id
-- join clases c on c.clase_id = hc.clase_id;

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
('Sasha Rodriguez', 'caballerosasha@hotmail.com', 1, 'JungShadow', 'abc123abc');

INSERT INTO usuarios (nombre, email, pers_id, nombre_usuario, pass) values
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
('Dragon', 130, 'Fuego', 'Escamas');

INSERT INTO monstruos (nombre, hp, habilidad_propia, recompensa) values
('Banshee', 70, 'Mal augurio', 'Colmillo filoso'),
('Sucubo', 75, 'Pesadilla', 'Colmillo filoso'),
('Incubo', 75, 'Posesion', 'Colmillo filoso'),
('Señor Oscuro', 80, 'Niebla', 'Colmillo filoso'),
('Lobo blanco', 50, 'Mordida sangrante', 'Colmillo filoso');

INSERT INTO monstruos (nombre, hp, habilidad_propia, recompensa) values
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

insert into batallas (pers_id, mons_id, ganador) values
(1, 1, 'Mr. Jung'),
(1, 2, 'Mr. Jung'),
(1, 3, 'Mr. Jung'),
(1, 5, 'Dragon');

insert into batallas (pers_id, mons_id, ganador) values
(2, 1, 'Amaterasu'),
(2, 2, 'Amaterasu'),
(2, 2, 'Druida del bosque');

select * from monstruos;

-- select p.nombre as usuario, m.nombre as monstruo, b.ganador from batallas b
-- join personajes p on p.pers_id = b.pers_id 
-- join monstruos m on m.mons_id = b.mons_id;

select * from usuarios u
join personajes p on p.pers_id = u.pers_id;

select count(*) as batallas_ganadas, ganador from batallas group by ganador ORDER by count(*) desc;

select count(*) as batallas_peleadas, p.nombre from batallas b 
join personajes p on p.pers_id =  b.pers_id
group by b.pers_id;

select nombre, hp from monstruos order by hp desc;

select * from personajes;

select * from monstruos;

