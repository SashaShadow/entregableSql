
-- ------------------------------------- Vistas
CREATE OR REPLACE VIEW batallas_ganadas_personajes AS
(select count(*) as batallas_ganadas, ganador from batallas group by ganador ORDER by count(*) desc);

CREATE OR REPLACE VIEW batallas_peleadas_personajes AS
(select count(*) as batallas_peleadas, p.nombre from batallas b 
join personajes p on p.pers_id =  b.pers_id
group by b.pers_id order by batallas_peleadas desc);

-- personajes segun clase
CREATE OR REPLACE VIEW clases_segun_personaje AS
(select p.nombre as personaje, c.nombre as clase from personajes p
join clases c on c.clase_id = p.clase_id
order by c.nombre);

-- cantidad de uso de cada clase por los personajes
CREATE OR REPLACE VIEW cantidad_clases_usadas AS
(select count(*) as cantidad, c.nombre as clase from personajes p
join clases c on c.clase_id = p.clase_id
group by p.clase_id order by cantidad desc);

-- cantidad de uso de cada raza por los personajes
CREATE OR REPLACE VIEW cantidad_razas_usadas AS
(select count(*) as cantidad, r.nombre as raza from personajes p
join razas r on r.raza_id = p.raza_id
group by p.raza_id order by cantidad desc);

select * from cantidad_razas_usadas;
select * from cantidad_clases_usadas;
select * from clases_segun_personaje;
select * from batallas_ganadas_personajes;
select * from batallas_peleadas_personajes;

-- ...de yapa, vista que integra las anteriores
CREATE OR REPLACE VIEW batallas_peleadas_ganadas as
(select bp.batallas_peleadas, bg.batallas_ganadas, bp.nombre 
from batallas_peleadas_personajes as bp
join batallas_ganadas_personajes as bg on bp.nombre = bg.ganador); 

select * from batallas_peleadas_ganadas;
-- ---------------------------------------------------------------