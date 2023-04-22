
-- Funcion que te genera un loop de 10 registros random en la tabla batallas (siempre gana un personaje)
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

-- ...y otra funcion que permite que ganen monstruos o personajes random e inserta el dato en batallas
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

select * from batallas_peleadas_ganadas;

SELECT gano_mas_de_lo_que_perdio('Amaterasu');
SELECT gano_mas_de_lo_que_perdio('Sopor');


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

select tres_personajes_orden_longitud_nombre('DESC');
