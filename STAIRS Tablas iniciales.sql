create schema Stairs;
use Stairs;

CREATE TABLE personajes( 
pers_id INT NOT NULL AUTO_INCREMENT, raza_id INT, clase_id INT, ubi_id INT,
nivel INT NOT NULL DEFAULT 1, nombre VARCHAR(30) NOT NULL, hp INT NOT NULL,
PRIMARY KEY (pers_id), 
FOREIGN KEY (raza_id) REFERENCES razas(raza_id),
FOREIGN KEY (clase_id) REFERENCES clases(clase_id),
FOREIGN KEY (ubi_id) REFERENCES ubicaciones(ubi_id)
FOREIGN KEY (mochi_id) REFERENCES mochilas(mochi_id)
);

CREATE TABLE razas(
raza_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(50), historia VARCHAR(255), PRIMARY KEY (raza_id));

CREATE TABLE clases(
clase_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), habilidad_propia VARCHAR(100), PRIMARY KEY (clase_id));

CREATE TABLE ubicaciones(
ubi_id INT NOT NULL AUTO_INCREMENT, descripcion VARCHAR(100), historia VARCHAR(255), PRIMARY KEY (ubi_id)
);

CREATE TABLE habilidades(
habi_id INT NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(100),
efecto VARCHAR(100), PRIMARY KEY (habi_id));

CREATE TABLE habilidadesclases(
habi_id INT NOT NULL,
clase_id INT NOT NULL);

CREATE TABLE objetos(
obj_id INT NOT NULL AUTO_INCREMENT,
raza_id INT,
descripcion VARCHAR(100),
efecto VARCHAR(100),
PRIMARY KEY (obj_id), FOREIGN KEY (raza_id) REFERENCES razas(raza_id));

CREATE TABLE usuarios(
user_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
email VARCHAR(20) NOT NULL,
pers_id INT,
username VARCHAR(15) NOT NULL UNIQUE,
pass VARCHAR(15) NOT NULL, PRIMARY KEY (user_id), FOREIGN KEY (pers_id) REFERENCES personajes(pers_id));

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
PRIMARY KEY (bat_id), FOREIGN KEY (pers_id) REFERENCES usuarios(pers_id),
FOREIGN KEY (mons_id) REFERENCES monstruos(mons_id));