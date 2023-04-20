
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

select insertar_valores_batallasvarios();
select insertar_valores_batallas();
select insertar_valores_batallasvarios();
select insertar_valores_batallas();
select insertar_valores_batallasvarios();

