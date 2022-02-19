create table equipo(
id_equipo number primary key,
nombre varchar2(40),
apodo varchar2(40)
);


insert into equipo (id_equipo, nombre, apodo) values (31, 'America', 'Aguilas');		
insert into equipo (id_equipo, nombre, apodo) values (32, 'Atlas', 'Zorros');	
insert into equipo (id_equipo, nombre, apodo) values (33, 'Toluca', 'Diablos Rojos');	
insert into equipo (id_equipo, nombre, apodo) values (34, 'UANL', 'Tigres');
insert into equipo (id_equipo, nombre, apodo) values (35, 'Leon', 'Panzas verdes');
insert into equipo (id_equipo, nombre, apodo) values (36, 'Cruz Azul', 'La Maquina');
insert into equipo (id_equipo, nombre, apodo) values (37, 'Monterrey', 'Rayados');
insert into equipo (id_equipo, nombre, apodo) values (38, 'Mazatlan', 'Piratas'); 
insert into equipo (id_equipo, nombre, apodo) values (39, 'Guadalajara', 'Chivas');
insert into equipo (id_equipo, nombre, apodo) values (40, 'Puebla', 'Camoteros'); 
insert into equipo (id_equipo, nombre, apodo) values (41, 'Santos Laguna', 'Laguneros');
insert into equipo (id_equipo, nombre, apodo) values (42, 'Club Atletico de San Luis', 'Rojiblancos');
insert into equipo (id_equipo, nombre, apodo) values (43, 'Necaxa', 'Los rayos');
insert into equipo (id_equipo, nombre, apodo) values (44, 'UNAM', 'Pumas');
insert into equipo (id_equipo, nombre, apodo) values (45, 'Pachuca', 'Tuzos');
insert into equipo (id_equipo, nombre, apodo) values (46, 'FC Juarez', 'Bravos');
insert into equipo (id_equipo, nombre, apodo) values (47, 'Queretaro', 'Gallos');
insert into equipo (id_equipo, nombre, apodo) values (48, 'Tijuana', 'Xolos');

create table director(
id_director number primary key not null,
nombre varchar2(20),
apellido varchar2(50),
id_equipo number,
constraint Equipo foreign key(id_equipo) references equipo(id_equipo)
);

insert into director(id_director, nombre, apellido, id_equipo) values (100,'Santiago','Solari',31);
insert into director(id_director, nombre, apellido, id_equipo) values (101,'Diego','Cocca',32);
insert into director(id_director, nombre, apellido, id_equipo) values (102,'Hernan','Cristante',33);
insert into director(id_director, nombre, apellido, id_equipo) values (103,'Miguel','Herrera',34);
insert into director(id_director, nombre, apellido, id_equipo) values (104,'Ariel','Holan',35);
insert into director(id_director, nombre, apellido, id_equipo) values (105,'Juan','Reynoso',36);
insert into director(id_director, nombre, apellido, id_equipo) values (106,'Javier','Aguirre',37);
insert into director(id_director, nombre, apellido, id_equipo) values (107,'Benat','San Jose',38);
insert into director(id_director, nombre, apellido, id_equipo) values (108,'Marcelo','Michel',39);
insert into director(id_director, nombre, apellido, id_equipo) values (109,'Nicolas','Larcamon',40);
insert into director(id_director, nombre, apellido, id_equipo) values (110,'Marcelo','Mendez',41);
insert into director(id_director, nombre, apellido, id_equipo) values (111,'Jorge','Almada',42);
insert into director(id_director, nombre, apellido, id_equipo) values (112,'Pablo','Guede',43);
insert into director(id_director, nombre, apellido, id_equipo) values (113,'Andres','Lillini',44);
insert into director(id_director, nombre, apellido, id_equipo) values (114,'Paulo','Pezzolano',45);
insert into director(id_director, nombre, apellido, id_equipo) values (115,'Ricardo','Ferretti',46);
insert into director(id_director, nombre, apellido, id_equipo) values (116,'Leonardo','Ramos',47);
insert into director(id_director, nombre, apellido, id_equipo) values (117,'Sebastian','Mendez',48);

create table tablaPocisiones(
id_tablaPosiciones number primary key,
nombre_equipo varchar(30),
partidos_jugados varchar2(10),
partidos_ganados varchar2(10),
partidos_perdidos varchar2(10),
goles_favor number,
goles_contra number,
id_equipo number,
constraint codequipo foreign key(id_equipo) references equipo(id_equipo)
);

insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (1,'America', 17, 10, 2,21,10, 31);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (2,'Atlas', 17, 8, 4,21,10, 32);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (3,'Leon', 17, 8, 4,20,14, 35);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (4,'UANL', 17, 7, 3,26,14, 34);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (5,'Santos Laguna', 17, 5, 3,23,16, 41);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (6,'Toluca', 17, 6, 5,22,22, 33);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (7,'Puela', 17, 6, 5,16,16, 40);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (8,'Cruz Azul', 17, 5, 4,21,17, 36);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (9,'Monterrey', 17, 5, 5,19,16, 37);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (10,'Guadalajara', 17, 5, 5,13,13, 39);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (11,'UNAM', 17, 5, 6,17,23, 44);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (12,'Club Atletico San Luis', 17, 4, 5,19,23, 42);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (13,'Mazatlan', 17, 5, 7,18,24, 38);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (14,'Necaxa', 17, 6, 9,16,22, 43);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (15,'Pachuca', 17, 4, 7,19,21, 45);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (16,'FC Juarez', 17, 4, 9,14,25, 46);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (17,'Queretaro', 17, 3, 8,11,19, 47);
insert into tablaPocisiones(id_tablaPosiciones, nombre_equipo, partidos_jugados, partidos_ganados, partidos_perdidos, goles_favor, goles_contra, id_equipo) values (18,'Tijuana', 17, 3, 8,16,25, 48);

create table jugador(
id_fut number primary key,
nombre varchar2(40),
apellido varchar2(40),
no_camiseta number,
posicion varchar2(20),
apodo varchar2(40),
id_equipo number,
constraint equip foreign key(id_equipo) references equipo(id_equipo)
);


insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (511,'Guillermo ', 'Ochoa', 13, 'Portero','Fransua Meme',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (512,'Jorgue ', 'Sanchez', 3, 'Defensa','Perrito',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (513,'Bruno ', 'Valdez', 18, 'Defensa','Crujiente',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (514,'Emmanuel ', 'Aguilera', 19, 'Defensa','Merma',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (515,'Salvador ', 'Reyes', 26, 'Medio','Chava',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (516,'Richard ', 'Sanchez', 20, 'Medio','Cachorro',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (517,'Pedro ', 'Aquino', 5, 'Medio','Neymar peruano',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (518,'Alvaro ', 'Fidalgo', 8, 'Medio','Niño de Oro',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (519,'Miguel ', 'Layun', 29, 'Defensa','Layun',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (520,'Henry ', 'Martin', 21, 'Delantero','Bomba',31);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (521,'Sebastian ', 'Cordoba', 10, 'Medio Ofensivo','Pecastian',31);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (522,'Camilo', 'Vargas', 12, 'Portero','Sexto',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (523,'Diego ', 'Barbosa', 15, 'Defensa','Gabigol',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (524,'Martin ', 'Nervo', 2, 'Defensa','Amado',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (525,'Anderson ', 'Santamaria', 5, 'Defensa','La Muralla Peruana',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (526,'Luis', 'Reyes', 14, 'Defensa','el Hueso',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (527,'Aldo ', 'Rocha', 26, 'Medio','el ratero',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (528,'Jeremy', 'Marquez', 18, 'Medio','jeremy',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (529,'Jairo', 'Torres', 20, 'Medio','La joya',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (530,'Julian ', 'Quiñones', 33, 'Delantero','El gigante',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (531,'Julio ', 'Furch', 9, 'Delantero','Ruso',32);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (532,'Ozziel ', 'Herrera', 199, 'Delantero','Ozzi',32);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (533,'Luis ', 'Garcia', 1, 'Portero','Niño Artillero',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (534,'Haret ', 'Ortega', 23, 'Defensa','Haret',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (535,'Miguel ', 'Barbieri', 6, 'Defensa','Miguel',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (536,'Diego ', 'Rigonato', 33, 'Medio','Rigodios',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (537,'Raul ', 'Lopez', 2, 'Medio','el Dedos',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (538,'Claudio ', 'Baeza', 20, 'Medio','Serrucho',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (539,'Jose Juan', 'Vazquez', 35, 'Medio','El gallito',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (540,'Alexis ', 'Canelo', 25, 'Medio','Tucu',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (541,'Braian ', 'Samudio', 18, 'Delantero','Pitbull',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (542,'Rubens ', 'Sambueza', 14, 'Medio','Sambu',33);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (543,'Ian ', 'Gonzalez', 19, 'Delantero','Potro',33);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (544,'Nahuel ', 'Guzman', 1, 'Portero','paton',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (545,'Carlos ', 'Salcedo', 3, 'Defensa','Titan',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (546,'Hugo ', 'Ayala', 4, 'Defensa','raton',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (547,'Jesus ', 'Dueñas', 29, 'Medio','pollo',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (548,'Luis ', 'Rodriguez', 28, 'Medio','Chaka',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (549,'Rafael ', 'Carioca', 5, 'Medio','Carioca',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (550,'Guido ', 'Pizarro', 19, 'Medio','Conde',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (551,'Florian ', 'Thauvin', 26, 'Medio','Rough Diamond',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (552,'Juan Pablo', 'Vigon', 6, 'Medio','Vigon',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (553,'Luis ', 'Quiñones', 23, 'Delantero','Moreno',34);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (554,'Andre-Pierre ', 'Gignac', 10, 'Delantero','Bomboro dede',34);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (555,'Rodolfo', 'Cota', 30, 'Portero','Rodo',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (556,'Osvaldo ', 'Rodriguez', 24, 'Defensa','Pato',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (557,'Andres ', 'Mosquera', 4, 'Defensa','Morocho',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (558,'David ', 'Ramirez', 28, 'Medio','Avion',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (559,'Stiven ', 'Barreiro', 21, 'Defensa','Barredora',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (560,'Omar ', 'Fernandez', 25, 'Medio','Patron',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (561,'Ivan ', 'Rodriguez', 8, 'Medio','Jefecito',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (562,'Fernando ', 'Navarro', 5, 'Defensa','Mono',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (563,'Luis', 'Montes', 10, 'Medio','Chapito',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (564,'Angel ', 'Mena', 13, 'Medio','Angel',35);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (565,'Santiago ', 'Ormeño', 14, 'Delantero','Gallo hervido',35);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (500,'Jose ', 'de Jesus Corona', 2, 'PORTERO','Chuy',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (501,'Alexis ', 'Peña', 5, 'Defensa','Centu',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (502,'Joaquin', 'Martinez', 12, 'Defensa','Shagui',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (503,'Ignacio ', 'Rivero', 15, 'Medio','Toni Kross',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (504,'Lucas', 'Passerini', 18, 'Delantero','Milton Caraglio',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (505,'Alexis', 'Gutierrez', 20, 'Medio','Guti',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (506,'Rafael', 'Baca', 23, 'Medio','Baca',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (507,'Pablo ', 'Aguilar', 23, 'Defensa','Cafu',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (508,'Juan ', 'Escobar', 24, 'Defensa','El patron',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (509,'Guillermo', 'Fernadez', 28, 'Medio','Pol',36);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (510,'Walter ', 'Montoya', 32, 'Delantero','Chaque',36);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (566,'Hugo', 'Gonzalez', 1, 'Portero','Hugo',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (567,'Luis', 'Cardenas', 22, 'Portero','Cardenas',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (568,'Adrian', 'Mora', 2, 'Defensa','Mora',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (569,'Cesar', 'Montes', 3, 'Defensa','Montes',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (570,'Sebastian', 'Vegas', 20, 'Defensa','Vegas',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (571,'Edson', 'Gutierrez', 6, 'Defensa','Gutierrez',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (641,'Jesus', 'Gallardo', 17, 'Defensa','Gallardo',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (572,'Miguel', 'Layun', 19, 'Defensa','Layun',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (573,'Daniel', 'Parra', 27, 'Defensa','Parra',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (574,'Juan', 'Portales', 34, 'Defensa','Portales',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (575,'Arturo', 'Gonzalez', 21, 'Mediocampistas','Gonzalez',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (576,'Celso', 'Ortiz', 16, 'Mediocampistas','Ortiz',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (577,'William', 'Mejia', 27, 'Mediocampistas','Mejia',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (578,'Carlos', 'Rodriguez', 29, 'Mediocampistas','Rodriguez',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (579,'Maximiliano', 'Meza', 11, 'Mediocampistas','Meza',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (580,'Erick', 'Cantu', 35, 'Mediocampistas','Cantu',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (581,'Matias', 'Kranevitter', 5, 'Mediocampistas','Kranevitter',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (582,'Rogelio', 'Funes mori', 7, 'Delantero','Funes mori',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (583,'Dorlan', 'Pavon', 8, 'Delantero','Pavon',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (584,'Visent', 'Janssen', 9, 'Delantero','Janssen',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (585,'Aviles', 'Hurtado', 18, 'Delantero','Hutado',37);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (586,'Ake', 'Loba', 10, 'Delantero','Ake',37);


insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (587,'Daniel', 'Gutierrez', 33, 'Portero','Gutierrez',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (588,'Nicolas', 'Vikonis', 27, 'Portero','Vikoniz',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (589,'Ygor', 'Nogueira', 2, 'Defensa','Nogueira',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (590,'Nestor', 'Vidrio', 3, 'Defensa','Nestor',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (591,'Nicolas', 'Diaz', 4, 'Defensa','Diaz',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (592,'Carlos', 'Vargas', 5, 'Defensa','Vargas',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (593,'Bryan', 'Colula', 15, 'Defensa','Colula',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (594,'Jesus', 'Zavala', 22, 'Defensa','Zavala',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (595,'Jorge', 'Padilla', 28, 'Defensa','Padilla',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (596,'Salvador', 'Rodriguez', 189, 'Defensa','Rodriguez',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (597,'Roberto', 'Meraz', 6, 'Mediocampistas','Meraz',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (598,'Gonzalo', 'Freitas', 8, 'Mediocampistas','Freitas',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (599,'Giovanni', 'Augusto', 10, 'Mediocampistas','Augusto',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (600,'Daniel', 'Amador', 11, 'Mediocampistas','Amador',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (601,'Ulises', 'Cardona', 13, 'Mediocampistas','Cardona',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (602,'Emilio', 'Sanchez', 16, 'Mediocampistas','Sanchez',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (603,'Ivan', 'Moreno', 17, 'Mediocampistas','Moreno',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (604,'Richard', 'Rios', 18, 'Mediocampistas','Rios',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (605,'Camilo', 'Sanvezzo', 7, 'Delantero','Camilo',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (606,'Michel', 'Rangel', 9, 'Delantero','Rangel',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (607,'Brian', 'Rubio', 23, 'Delantero','Rubio',38);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (608,'Sagir', 'Arce', 195, 'Delantero','Arce',38);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (609,'Raul', 'Gudinio', 1, 'Portero','Gudinio',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (610,'Antonio', 'Rodriguez', 4, 'Portero','Rodriguez',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (611,'Alejandro', 'Mayorga', 2, 'Defensa','Mayorga',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (612,'Gilberto', 'Sepulveda', 3, 'Defensa','Sepulveda',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (613,'Antonio', 'Brisenio', 14, 'Defensa','Brisenio',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (614,'Luis', 'Olivas', 15, 'Defensa','Olivas',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (615,'Miguel', 'Ponse', 16, 'Defensa','Ponse',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (616,'Jesus', 'Sanchez', 17, 'Defensa','Sanchez',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (617,'Hiran', 'Mier', 21, 'Defensa','Mier',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (618,'Cristian', 'Calderon', 26, 'Defensa','Chicote',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (619,'Jesus', 'Molina', 5, 'Mediocampistas','Molina',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (620,'Isaac', 'Brizuela', 11, 'Mediocampistas','Conejito Brizuela',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (621,'Jesus', 'Angulo', 19, 'Mediocampistas','Angulo',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (622,'Fernando', 'Beldran', 20, 'Mediocampistas','Beldran',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (623,'Eduardo', 'Torres', 29, 'Mediocampistas','Torres',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (624,'Sergio', 'Flores', 30, 'Mediocampistas','Sergio',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (625,'Carlos', 'Cisneros', 33, 'Mediocampistas','Cisneros',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (626,'Oribe', 'Peralta', 24, 'Delantero','Sepillo',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (627,'Uriel', 'Antuna', 7, 'Delantero','Antuna',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (628,'Angel', 'Zaldivar', 9, 'Delantero','Zaldivar',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (629,'Alexis', 'Vega', 10, 'Delantero','Vega',39);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (630,'Cesar', 'Huerta', 6, 'Delantero','El Chino',39);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (631,'Antoni', 'Silva', 1, 'Portero','Silva',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (632,'Jesus', 'Rodriguez', 30, 'Portero','Trujillo',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (633,'Israel', 'Reyes', 12, 'Defensa','Reyes',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (634,'Juan Pablo', 'Segovia', 16, 'Defensa','Segovia',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (635,'Emanuel', 'Gularte', 17, 'Defensa','Gularteo',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (636,'Ramon', 'Juarez', 25, 'Defensa','Juarez',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (637,'Emilio', 'Martinez', 204, 'Defensa','Martinez',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (638,'Jorge Ulises', 'Corral', 4, 'Mediocampistas','Corral',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (639,'Diego Eduardo', 'De Buen', 5, 'Mediocampistas','De Buen',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (640,'Javier Alvan', 'Salas', 6, 'Defensa','Salas',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (642,'Pablo Alejandro', 'Parra', 14, 'Mediocampistas','Parra',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (643,'Maximiliano Javier', 'Araujo', 20, 'Mediocampistas','Araujo',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (644,'Daniel Aguilar', 'Munioz', 23, 'Mediocampistas','Munios',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (645,'Raul', 'Iran', 24, 'Mediocampistas','Iran',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (646,'Ivo Saul', 'Vazquez', 26, 'Mediocampistas','Vazquez',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (647,'Alberto', 'Herrero', 198, 'Mediocampistas','Herrero',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (648,'Christian', 'Tabo', 10, 'Delantero','Tabo',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (649,'Daniel', 'Alvarez', 11, 'Delantero','Alvarez',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (650,'Gustavo', 'Ferrareis', 9, 'Delantero','Ferrareis',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (651,'Daniel', 'Segura', 19, 'Delantero','Daniel',40);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (652,'Santiago', 'Ormenio', 14, 'Delantero','Ormenio',40);

insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (697,'Carlos','Acevedo',1,'Portero','Tex Tex',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (698,'Hugo','Rodriguez',20,'Defensa','Huguito',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (699,'Felix','Torres',5,'Defensa','Muralla',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (700,'Alan','Cervantes',6,'Medio','Cervantes',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (701,'Juan','Otero',7,'Medio','Ferney',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (702,'Carlos','Orrantia',7,'Medio','Charal',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (703,'Matheus','Doria',21,'Defensa','Doria',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (704,'Ismael','Govea',3,'Defensa','Govea',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (705,'Jesus','Ocejo',12,'Delantero','Beto',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (706,'Eduardo','Aguirre',19, 'Delantero','Mudo',41);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (707,'Ignacio','Geraldino',30, 'Delantero','Jeraldino',41);


insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (719,'Andres', 'Sanches', 24, 'Portero','socopo',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (720,'Marcelo', 'Barovero', 1, 'Portero','trapito',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (721,'Unai', 'Bilbao', 20, 'Defensa central','bilbao',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (722,'Jesus', 'Piñuelas', 3, 'Defenza central','piñuelas',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (723,'Leo', 'Coelho', 4, 'Defenza central','coelho',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (724,'Emmanuel', 'Garcia', 29, 'Lateral izquierdo','Manny',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (725,'Jair', 'Diaz', 27, 'Lateral izquierdo','Diaz',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (726,'Jose', 'Lozano', 17, 'Lateral izquierdo','Jimmy',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (727,'Richardo', 'Chavez', 5, 'Lateral derecho','chavez',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (728,'Salvador', 'Gonzales', 26, 'Centrocampista','Magico',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (729,'Javier', 'Guemez', 16, 'Pivote','kamikaze',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (730,'Juan', 'Castro', 2, 'Mediocentro','El negro',42);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (731,'Facundo', 'Waller', 15, 'Interior izquierdo','salmon',42);


insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (732,'Luis', 'Mondragon', 1, 'Portero','mondragon',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (733,'Edgar', 'Hernandez', 23, 'Portero','condor',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (734,'Agustin', 'Oliveros', 3, 'Defensa central','oliveros',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (735,'Fernando', 'Meza', 30, 'Defenza central','toro meza',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (736,'Fabricio', 'Formiliano', 14, 'Defensa central','tito',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (737,'Idekel', 'Domingues', 2, 'Lateral izquierdo','domingues',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (738,'Raul', 'Sandoval', 18, 'Lateral izquierdo','sandoval',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (739,'Julio', 'Gonzales', 26, 'Lateral derecho','Actor',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (740,'Fernando', 'Gonzales', 24, 'Pivote','Feña',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (741,'Vicente', 'Poggi', 5, 'Pivote','sassi',43);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (742,'Brian', 'Garcia', 17, 'Mediocentro ofensivo','Jerome Boateng',43);

insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (708,'Alfredo','Talavera',1,'Portero','coladera',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (709,'Nicolas','Freire',23,'Defensa central','Freire',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (710,'Arturo ','Ortiz',25,'Defensa central','Palermo',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (711,'Jero','Rodriguez',16,'Lateral izquierdo','jeronimo',44); 
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (712,'Alan','Mozo',2,'Lateral derecho','Alan Moshot',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (713,'Leonel','Lopez',17,'Mediocentro','El petrolero',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (714,'Gerardo','Moreno',13,'Mediocentro','Jerry',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (715,'Amaury','Garcia',14,'Mediocentro','Patojo',44);
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (716,'Favio','Alvarez',10,'Mediocentro ofensivo','Mago',44); 
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (717,'Sebastian','Saucedo',7,'Extremo izquierdo','Bofo',44); 
insert into jugador (id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (718,'Juan','Dinenno',9,'Delantero centro','comandante',44); 

insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (653,'Oscar ', 'Ustari', 5, 'PORTERO','Pantera',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (654,'Carlos ', 'Rodas', 31, 'Defensa medio','El Coloso',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (655,'Oscar ', 'Murrillo', 23, 'Defensa medio','La Muralla',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (656,'Gustavo ', 'Cabarl', 22, 'Delantero','Guss',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (657,'Miguel ', 'Tapias', 4, 'Defensa izq','Miguelito',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (658,'Fernando ', 'Alvarez', 32, 'MedioCampista','Duque de Hierro',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (659,'Yairo ', 'Moreno', 10, 'MedioCampista','Yesid',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (660,'Kevin ', 'Alvarez', 3, 'MedioCampista','La Culebra',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (661,'Luis ', 'Chavez', 24, 'Delantero','Wicho',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (662,'Santiago ', 'Mosquera', 13, 'Delantero','Santi',45);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (663,'Ismael ', 'Sosa', 18, 'Defenza der','Isma',45);

insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (664,'Hugo ', 'Gonzalez', 1, 'PORTERO','Manos Guangas',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (665,'Gustavo ', 'Velazquez', 25, 'Defensa der','Tuca',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (666,'Adrian ', 'Mora', 2, 'Defensa medio','Chepo',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (667,'Pol ', 'Garcia',4, 'Defensa izq','Pollo',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (668,'Hedgardo ', 'Marin', 6, 'MedioCampista','Bravo',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (669,'Alonso ', 'Gracia',19, 'MedioCampista','El mote',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (670,'Jose ', 'Esquivel', 16, 'MedioCampista','Lobo Solitario',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (671,'Marco ', 'Fabian', 31, 'MedioCampista','Anfibio',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (672,'Oscar ', 'Guzman',28, 'Defensa medio','Panuco',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (673,'Matias ', 'Gracia', 32, 'Delantero','Caco"',46);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (674,'Martin ', 'Galvan', 10, 'Delantero','Messi Mexicano',46);

insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (675,'Washington ', 'Aguerre', 1, 'PORTERO','Uruguayo ',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (676,'Gerardo', 'Ruiz ', 21, 'Defensa der','Kampa',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (677,'Juan ', 'Juearez', 31, 'Defensa medio','Juanito',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (678,'Maximiliano ', 'Perg', 26, 'Defensa izq','Nickiller',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (679,'Alexis ', 'Doldan', 22, 'MedioCampista','Mago',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (680,'Betsiel ', 'Hernandez', 4, 'MedioCampista','Arelibetsiel',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (681,'Omar ', 'Mendoza', 2, 'MedioCampista','Isra',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (682,'Osvaldo ', 'Martinez', 8, 'MedioCampista','Osvaldito',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (683,'Bryan ', 'Olivera',11, 'Delantero','Tiranosaurio',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (684,'Raul ', 'Torres', 16, 'Defensa medio','El Mini 6',47);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (685,'Nicolas ', 'Sosa', 42, 'Delantero','Nico',47);

insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (686,'Victor ', 'Mendonza', 100, 'PORTERO','Hernan',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (687,'Jonathan ', 'Manolas', 1, 'Defensa der','Kostas',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (688,'Eduardo ', 'Mendez', 13, 'Defensa medio','Tercero',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (689,'Gil Esaul ', 'Alcala', 24, 'Defensa izq','Barba',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (690,'Brayan ', 'Diaz', 2, 'MedioCampista','Chico ',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (691,'Marcel Alejandro ', 'Ruiz', 6, 'MedioCampista','Dekker ',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (692,'Eryc Leonel ', 'Castillo', 7, 'MedioCampista','Loki',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (693,'Sebastian ', 'Yañez', 191, 'MedioCampista','Melendez',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (694,'Christian ', 'Hernando', 14, 'Delantero','Cuellar',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (695,'Daniel ', 'Valdez', 37, 'Defensa medio','Travieso',48);
insert into jugador(id_fut, nombre, apellido, no_camiseta, posicion, apodo, id_equipo) values (696,'Mauro Andres ', 'Peas', 34, 'Delantero','Manotas',48);

create table cancha (
id_cancha number primary key, 
nombre_cancha varchar2(50), 
ciudad varchar2(30), 
id_equipo number,
constraint cancha foreign key(id_equipo) references equipo(id_equipo)
);

insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (1,'Estadio Azteca','Mexico',31);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (2,'Estadio Jalisco','Guadalajara',32);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (3,'Estadio Nemesio Diez','Toluca',33);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (4,'Estadio Universitario UANL','Monterrey',34);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (5,'Estadio Leon','Guanajuato',35);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (6,'Estadio Azteca','Mexico',36);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (7,'Estadio BBVA','Monterrey',37);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (8,'Estadio de Futbol Mazatlan','Culiacan',38);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (9,'Estadio Chivas','Guadalajara',39);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (10,'Estadio Cuauhtemoc','Puebla',40);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (11,'Estadio Corona','Saltillo',41);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (12,'Estadio Alfonso Lastras Ramirez','San Luis Potosi',42);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (13,'Estadio Victoria','Aguascalientes',43);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (14,'Estadio Olimpico Universitario','Mexico',44);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (15,'Estadio Hidalgo','Pachuca',45);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (16,'Estadio Olimpico Benito Juarez','Juarez',46);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (17,'Estadio Corregidora','Queretaro',47);
insert into cancha(id_cancha, nombre_cancha, ciudad, id_equipo) values (18,'Estadio Caliente','Tijuana',48);

create table auxiliares(
id_auxiliar number primary key, 
id_equipo number,
nombre varchar2(20), 
apellido varchar(20),
constraint auxiliares foreign key(id_equipo) references equipo(id_equipo)
); 


insert into auxiliares values (1, 31, 'Carlos', 'Turrubiates');
insert into auxiliares values (2, 31, 'Gerardo', 'Esquivel');
insert into auxiliares values (3, 31, 'Edgar', 'Solano');
insert into auxiliares values (4, 31, 'Gabriel', 'Farfan');
insert into auxiliares values (5, 31, 'Luis', 'Ernesto');


insert into auxiliares values (6, 32, 'Diego','Cocca');
insert into auxiliares values (7, 32, 'Marcelo','Goux');
insert into auxiliares values (8, 32, 'Javier','Bustos');
insert into auxiliares values (9, 32, 'Renso','Valinoti');


insert into auxiliares values (10, 33, 'Eugenio', 'Villazon');
insert into auxiliares values (11, 33, 'Cesar', 'Lozano');
insert into auxiliares values (12, 33, 'Pablo', 'Morant');
insert into auxiliares values (13, 33, 'Jose', 'Rodríguez');
insert into auxiliares values (14, 33, 'Osvaldo', 'Scansetti');


insert into auxiliares values (15, 34, 'Karla Alexandra', 'Marcial');
insert into auxiliares values (16, 34, 'Nancy', 'Cabral');


insert into auxiliares values (17, 35, 'Edgar', 'Solano');
insert into auxiliares values (18, 35, 'Gerardo', 'Esquivel');
insert into auxiliares values (19, 35, 'Juan de Dios', 'Ramírez');


insert into auxiliares values (20, 36, 'Joaquin', 'Moreno');
insert into auxiliares values (21, 36, 'Oscar', 'Perez');
insert into auxiliares values (22, 36, 'Juan', 'Reynoso');


insert into auxiliares values (23, 37, 'Toni', 'Amor');
insert into auxiliares values (24, 37, 'Xavier', 'Gurri');
insert into auxiliares values (25, 37, 'Aldo', 'Nigris');
insert into auxiliares values (26, 37, 'Pol', 'Lorente'); 


insert into auxiliares values (27, 38, 'Alejandro', 'Hisis');
insert into auxiliares values (28, 38, 'Luis', 'Arce');
insert into auxiliares values (29, 38, 'Gaston', 'Lloveras');
insert into auxiliares values (30, 38, 'Mauro', 'Machado');


insert into auxiliares values (31, 39, 'John van', 't Schip');
insert into auxiliares values (32, 39, 'Luis Francisco', 'Garcia');
insert into auxiliares values (33, 39, 'Rob', 'Meppelink');
insert into auxiliares values (34, 39, 'Alberto', 'Coyote');



insert into auxiliares values (35, 40, 'Eduardo', 'Arce');
insert into auxiliares values (36, 40, 'Juan', 'Gutierrez');
insert into auxiliares values (37, 40, 'Gerardo', 'Toledo');


insert into auxiliares values (38, 41, 'Rafael', 'Figueroa');
insert into auxiliares values (39, 41, 'Pedro', 'Fernandes');
insert into auxiliares values (40, 41, 'Jose', 'Belman');
insert into auxiliares values (41, 41, 'Arturo', 'Lopez');


insert into auxiliares values (42, 42, 'Pedro', 'Garcia');
insert into auxiliares values (43, 42, 'Leonardo Miguel', 'Lopez');
insert into auxiliares values (44, 42, 'Luis', 'Vicente');
insert into auxiliares values (45, 42, 'Leonardo Miguel', 'Lopez');
insert into auxiliares values (46, 42, 'Rafael', 'Fernandez');
insert into auxiliares values (47, 42, 'Gabriel', 'Miravalle');


insert into auxiliares values (48, 43, 'Alberto', 'Clark');
insert into auxiliares values (49, 43, 'Jose Luis', 'Salgado');
insert into auxiliares values (50, 43, 'Ricardo', 'Gomez');


insert into auxiliares values (51, 44,'Hermes Aldo' ,'Desio');
insert into auxiliares values (52, 44,'Gustavo' ,'Vargas');
insert into auxiliares values (53, 44,'Hermes Aldo' ,'Desio');


insert into auxiliares values (54, 45,'Luis', 'Almada');
insert into auxiliares values (55, 45,'Darwin', 'Quintana');
insert into auxiliares values (56, 45,'Rubens', 'Valenzuela');

insert into auxiliares values (57, 45,'Oscar', 'Rosas');
insert into auxiliares values (58, 45,'Fernando', 'Maequez');


insert into auxiliares values (59, 46,'Rafael' ,'Puente');
insert into auxiliares values (60, 46,'Jose' ,'Bravo');
insert into auxiliares values (61, 46,'Rafa' ,'Puente');


insert into auxiliares values (62, 47,'Leonardo' ,'Ramos');
insert into auxiliares values (63, 47,'	isaac' ,'Morales');
insert into auxiliares values (64, 47,'Gonzalo' ,'Porras');


insert into auxiliares values (65, 48,'Carlos' ,'Rincon');
insert into auxiliares values (66, 48,'Fernando' ,'Arce');
insert into auxiliares values (67, 48,'Ignacio' ,'Ruvalcaba');

create table partido(
num_partido varchar2(20) primary key, 
jornada number, 
id_cancha number, 
fecha date, 
nomequipoL varchar2(40), 
goles_l number, 
nomequipoV varchar2(40),
goles_v number, 
constraint cancha1 foreign key(id_cancha) references cancha(id_cancha)
); 

insert into partido values ('N-01',1,17,'2021-07-22','Queretaro',0,'America',0);
insert into partido values ('N-02',1,13,'2021-07-23','Necaxa',0,'Santos Laguna',3);
insert into partido values ('N-03',1,16,'2021-07-23','FC Juarez',1,'Toluca',3);
insert into partido values ('N-04',1,15,'2021-07-24','Pachuca',4,'Leon',0);
insert into partido values ('N-05',1,9,'2021-07-24','Guadalajara',1,'Club Atletico de San Luis',2);
insert into partido values ('N-06',1,14,'2021-07-25','UNAM',0,'Atlas',0);
insert into partido values ('N-07',1,4,'2021-07-25','Monterrey',1,'Puebla',1);
insert into partido values ('N-08',1,18,'2021-07-25','Tijuana',1,'UANL',2);
insert into partido values ('N-09',1,1,'2021-07-26','Cruz Azul',0,'Mazatlan',2);

insert into partido values ('N-10',2,8,'2021-07-30','Mazatlan',2,'Pachuca',1);
insert into partido values ('N-11',2,10,'2021-07-30','Puebla',0,'Guadalajara',2);
insert into partido values ('N-12',2,7,'2021-07-31','Leon',2,'Tijuana',1);
insert into partido values ('N-13',2,1,'2021-07-31','America',2,'Necaxa',1);
insert into partido values ('N-14',2,2,'2021-07-31','Monterrey',2,'UNAM',0);
insert into partido values ('N-15',2,9,'2021-08-31','Atlas',2,'FC Juarez',0);
insert into partido values ('N-16',2,3,'2021-08-01','Toluca',3,'UANL',1);
insert into partido values ('N-17',2,11,'2021-08-01','Santos Laguna',1,'Cruz Azul',1); 
insert into partido values ('N-18',2,12,'2021-08-02','Club Atletico de San Luis',1,'Queretaro',1);

insert into partido values ('N-19',3,17,'2021-08-05','Queretaro',0,'Leon',1);
insert into partido values ('N-20',3,8,'2021-08-06','Mazatlan',1,'Monterrey',1);
insert into partido values ('N-21',3,13,'2021-08-06','Necaxa',1,'Cruz Azul',2);
insert into partido values ('N-22',3,18,'2021-08-06','Tijuana',0,'Toluca',2);
insert into partido values ('N-23',3,2,'2021-08-07','Guadalajara',2,'FC Juarez',2);
insert into partido values ('N-24',3,1,'2021-08-07','America',2,'Puebla',0);
insert into partido values ('N-25',3,4,'2021-08-07','UANL',1,'Santos Laguna',1);
insert into partido values ('N-26',3,14,'2021-08-08','UNAM',1,'Club Atletico de San Luis',3);
insert into partido values ('N-27',3,15,'2021-08-09','Pachuca',0,'Atlas',1);

insert into partido values ('N-28',4,12,'2021-08-12','Club Atletico de San Luis',0,'Necaxa',2);
insert into partido values ('N-29',4,10,'2021-08-13','Puebla',1,'UANL',1);
insert into partido values ('N-30',4,16,'2021-08-13','FC Juarez',1,'Tijuana',1);
insert into partido values ('N-31',4,14,'2021-08-14','UNAM',0,'Queretaro',0);
insert into partido values ('N-32',4,2,'2021-08-14','Leon',3,'Mazatlan',0);
insert into partido values ('N-33',4,1,'2021-08-14','Cruz Azul',4,'Toluca',0);
insert into partido values ('N-34',4,4,'2021-08-14','Monterrey',3,'Pachuca',1);
insert into partido values ('N-35',4,2,'2021-08-15','Atlas',0,'America',1);
insert into partido values ('N-36',4,11,'2021-08-15','Santos Laguna',0,'Guadalajara',0);

insert into partido values ('N-37',5,3,'2021-08-17','Toluca',2,'Mazatlan',2);
insert into partido values ('N-38',5,4,'2021-08-17','UANL',3,'Queretaro',0);
insert into partido values ('N-39',5,13,'2021-08-17','Necaxa',3,'UNAM',0);
insert into partido values ('N-40',5,18,'2021-08-17','Tijuana',1,'Puebla',1);
insert into partido values ('N-41',5,1,'2021-08-18','Cruz Azul',1,'Monterrey',1);
insert into partido values ('N-42',5,11,'2021-08-18','Santos Laguna',1,'Atlas',1);
insert into partido values ('N-43',5,2,'2021-08-18','Guadalajara',0,'Leon',3);
insert into partido values ('N-44',5,16,'2021-08-18','FC Juarez',1,'America',2);
insert into partido values ('N-45',5,15,'2021-11-03','Pachuca',0,'Club Atletico de San Luis',0);

insert into partido values ('N-46',6,8,'2021-08-20','Mazatlan',0,'UANL',3);
insert into partido values ('N-47',6,2,'2021-08-21','Atlas',0,'Toluca',0);
insert into partido values ('N-48',6,2,'2021-08-21','Leon',1,'Santos Laguna',1);
insert into partido values ('N-49',6,12,'2021-08-21','Club Atletico de San Luis',0,'Cruz Azul',0);
insert into partido values ('N-50',6,4,'2021-08-21','Monterrey',0,'Guadalajara',0);
insert into partido values ('N-51',6,14,'2021-08-22','UNAM',2,'Puebla',0);
insert into partido values ('N-52',6,1,'2021-08-22','America',2,'Tijuana',0);
insert into partido values ('N-53',6,13,'2021-08-22','Necaxa',1,'FC Juarez',0);
insert into partido values ('N-54',6,17,'2021-08-22','Queretaro',0,'Pachuca',2);

insert into partido values ('N-55',7,8,'2021-08-27','Mazatlan',2,'Club Atletico de San Luis',2);
insert into partido values ('N-56',7,10,'2021-08-27','Puebla',1,'Queretaro',0);
insert into partido values ('N-57',7,18,'2021-08-27','Tijuana',2,'Monterrey',2);
insert into partido values ('N-58',7,2,'2021-08-28','Guadalajara',2,'Necaxa',1);
insert into partido values ('N-59',7,4,'2021-08-28','UANL',1,'Atlas',1);
insert into partido values ('N-60',7,2,'2021-08-28','Leon',1,'America',1);
insert into partido values ('N-61',7,3,'2021-08-29','Toluca',2,'UNAM',1);
insert into partido values ('N-62',7,11,'2021-08-29','Santos Laguna',2,'FC Juarez',2);
insert into partido values ('N-63',7,1,'2021-08-29','Cruz Azul',1,'Pachuca',1);

insert into partido values ('N-64',8,8,'2021-09-10','Puebla',2,'Club Atletico de San Luis',2);
insert into partido values ('N-65',8,10,'2021-09-10','FC Juarez',2,'Cruz Azul',1);
insert into partido values ('N-66',8,18,'2021-09-10','Tijuana',2,'Santos Laguna',1);
insert into partido values ('N-67',8,2,'2021-09-11','Atlas',2,'Monterrey',1);
insert into partido values ('N-68',8,4,'2021-09-11','UANL',2,'Leon',2);
insert into partido values ('N-69',8,2,'2021-09-11','America',2,'Mazatlan',0);
insert into partido values ('N-70',8,3,'2021-09-12','UNAM',0,'Guadalajara',0);
insert into partido values ('N-71',8,11,'2021-09-12','Queretaro',3,'Necaxa',0);
insert into partido values ('N-72',8,1,'2021-09-13','Pachuca',1,'Toluca',2);

insert into partido values ('N-73',9,8,'2021-09-16','Club Atletico de San Luis',4,'Tijuana',1);
insert into partido values ('N-74',9,10,'2021-09-17','Necaxa',0,'Atlas',3);
insert into partido values ('N-75',9,18,'2021-09-18','Leon',0,'FC Juarez',1);
insert into partido values ('N-76',9,2,'2021-09-18','Toluca',3,'America',1);
insert into partido values ('N-77',9,4,'2021-09-18','Guadalajara',1,'Pachuca',0);
insert into partido values ('N-78',9,2,'2021-09-18','Mazatlan',2,'UNAM',2);
insert into partido values ('N-79',9,3,'2021-09-19','Cruz Azul',2,'Queretaro',0);
insert into partido values ('N-80',9,11,'2021-09-19','Monterrey',2,'UANL',0);
insert into partido values ('N-81',9,1,'2021-09-19','Santos Laguna',1,'Puebla',1);

insert into partido values ('N-82',10,8,'2021-09-23','Pachuca',1,'Necaxa',0);
insert into partido values ('N-83',10,10,'2021-09-24','Puebla',1,'Cruz Azul',1);
insert into partido values ('N-84',10,18,'2021-09-24','Tijuana',0,'Mazatlan',0);
insert into partido values ('N-85',10,2,'2021-09-25','Atlas',2,'Leon',0);
insert into partido values ('N-86',10,4,'2021-09-25','UANL',0,'UNAM',0);
insert into partido values ('N-87',10,2,'2021-09-25','America',0,'Guadalajara',0);
insert into partido values ('N-88',10,3,'2021-09-26','Toluca',1,'Club Atletico de San Luis',2);
insert into partido values ('N-89',10,11,'2021-09-26','Santos Laguna',1,'Monterrey',2);
insert into partido values ('N-90',10,1,'2021-10-08','FC Juarez',0,'Queretaro',0);

insert into partido values ('N-91',11,8,'2021-09-22','Monterrey',2,'Toluca',0);
insert into partido values ('N-92',11,10,'2021-09-28','Necaxa',3,'Tijuana',0);
insert into partido values ('N-93',11,18,'2021-09-28','Mazatlan',3,'FC Juarez',1);
insert into partido values ('N-94',11,2,'2021-09-28','Atlas',0,'Puebla',1);
insert into partido values ('N-95',11,4,'2021-09-28','Pachuca',1,'America',1);
insert into partido values ('N-96',11,2,'2021-09-29','Club Atletico de San Luis',0,'UANL',3);
insert into partido values ('N-97',11,3,'2021-09-29','Queretaro',1,'Guadalajara',0);
insert into partido values ('N-98',11,11,'2021-11-03','Cruz Azul',0,'Leon',1);
insert into partido values ('N-99',11,1,'2021-11-04','UNAM',0,'Santos Laguna',3);

insert into partido values ('N-100',12,8,'2021-10-01','Puebla',1,'Pachuca',2);
insert into partido values ('N-101',12,10,'2021-10-01','FC Juarez',3,'Monterrey',0);
insert into partido values ('N-102',12,18,'2021-10-02','Leon',3,'Club Atletico de San Luis',1);
insert into partido values ('N-103',12,2,'2021-10-02','Santos Laguna',0,'Mazatlan',0);
insert into partido values ('N-104',12,4,'2021-10-02','Guadalajara',0,'Atlas',1);
insert into partido values ('N-105',12,2,'2021-10-03','Toluca',1,'Queretaro',1);
insert into partido values ('N-106',12,3,'2021-10-03','America',2,'UNAM',0);
insert into partido values ('N-107',12,11,'2021-10-03','UANL',0,'Necaxa',0);
insert into partido values ('N-108',12,1,'2021-10-03','Tijuana',0,'Cruz Azul',1);

insert into partido values ('N-109',13,8,'2021-10-14','Queretaro',1,'Tijuana',1);
insert into partido values ('N-110',13,10,'2021-10-15','Necaxa',0,'Puebla',1);
insert into partido values ('N-111',13,18,'2021-10-15','Mazatlan',1,'Atlas',0);
insert into partido values ('N-112',13,2,'2021-10-16','Monterrey',0,'Leon',1);
insert into partido values ('N-113',13,4,'2021-10-16','Club Atletico de San Luis',0,'America',1);
insert into partido values ('N-114',13,2,'2021-10-16','Pachuca',1,'Santos Laguna',1);
insert into partido values ('N-115',13,3,'2021-10-16','Cruz Azul',1,'UANL',1);
insert into partido values ('N-116',13,11,'2021-10-17','UNAM',1,'FC Juarez',0);
insert into partido values ('N-117',13,1,'2021-10-17','Guadalajara',2,'Toluca',0);

insert into partido values ('N-118',14,8,'2021-09-21','FC Juarez',1,'Club Atletico de San Luis',0);
insert into partido values ('N-119',14,10,'2021-10-19','Queretaro',1,'Monterrey',0);
insert into partido values ('N-120',14,18,'2021-10-19','Puebla',2,'Mazatlan',0);
insert into partido values ('N-121',14,2,'2021-10-19','America',2,'Santos Laguna',1);
insert into partido values ('N-122',14,4,'2021-10-19','Atlas',0,'Cruz Azul',0);
insert into partido values ('N-123',14,2,'2021-10-20','Toluca',1,'Necaxa',1);
insert into partido values ('N-124',14,3,'2021-10-20','Leon',1,'UNAM',2);
insert into partido values ('N-125',14,11,'2021-10-20','UANL',3,'Pachuca',0);
insert into partido values ('N-126',14,1,'2021-10-20','Tijuana',0,'Guadalajara',0);

insert into partido values ('N-127',15,7,'2021-10-22','Mazatlan',2,'Queretaro',1);
insert into partido values ('N-128',15,9,'2021-10-23','Puebla',0,'Leon',1);
insert into partido values ('N-129',15,6,'2021-10-23','Monterrey',0,'Necaxa',1);
insert into partido values ('N-130',15,1,'2021-10-23','America',1,'UANL',0);
insert into partido values ('N-131',15,8,'2021-10-23','Guadalajara',1,'Cruz Azul',1);
insert into partido values ('N-132',15,13,'2021-10-24','UNAM',3,'Tijuana',1);
insert into partido values ('N-133',15,11,'2021-10-24','Club Atletico de San Luis',2,'Atlas',6);
insert into partido values ('N-134',15,10,'2021-10-24','Santos Laguna',2,'Toluca',2);
insert into partido values ('N-135',15,14,'2021-10-24','Pachuca',1,'FC Juarez',1);
insert into partido values ('N-136',15,2,'2021-10-28','Atlas',0,'Tijuana',2);

insert into partido values ('N-137',16,12,'2021-10-29','Necaxa',2,'Mazatlan',1);
insert into partido values ('N-138',16,15,'2021-10-29','FC Juarez',0,'Puebla',0);
insert into partido values ('N-139',16,16,'2021-10-30','Queretaro',2,'Santos Laguna',3);
insert into partido values ('N-140',16,14,'2021-10-30','Pachuca',1,'UNAM',1);
insert into partido values ('N-141',16,4,'2021-10-30','UANL',2,'Guadalajara',1);
insert into partido values ('N-142',16,3,'2021-10-31','Toluca',0,'Leon',0);
insert into partido values ('N-143',16,1,'2021-10-31','Cruz Azul',2,'America',1);
insert into partido values ('N-144',16,12,'2021-10-31','Club Atletico de San Luis',1,'Monterrey',1);

insert into partido values ('N-145',17,2,'2021-11-04','Atlas',2,'Queretaro',0);
insert into partido values ('N-146',17,10,'2021-11-05','Puebla',1,'Toluca',0);
insert into partido values ('N-147',17,9,'2021-11-05','Mazatlan',0,'Guadalajara',1);
insert into partido values ('N-148',17,5,'2021-11-06','Leon',3,'Necaxa',0);
insert into partido values ('N-149',17,1,'2021-11-06','America',0,'Monterrey',0);
insert into partido values ('N-150',17,4,'2021-11-06','UANL',3,'FC Juarez',0);
insert into partido values ('N-151',17,18,'2021-11-06','Tijuana',3,'Pachuca',2);
insert into partido values ('N-152',17,16,'2021-11-07','Pumas',4,'Cruz Azul',3);
insert into partido values ('N-153',17,11,'2021-11-07','Santos Laguna',0,'Club Atletico de San Luis',0);


create table arbitro(
id_arbitro number primary key,
nombre varchar2(30),
apellido varchar(30),
posicion varchar2(30)
);


insert into arbitro (id_arbitro, nombre, apellido, posicion) values (101,'Oscar','Macias','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (102,'Oscar','Mejia','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (103,'Erick','Yair','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (104,'Jorge Antonio','Perez','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (105,'Fernando','Guerrero','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (106,'Diego','Montaño','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (107,'Marco Antonio','Ortiz','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (108,'Luis Enrique','Santander','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (109,'Enedina','Caudillo','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (110,'Adonai','Escobedo','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (111,'Christian Kiabek','Espinosa','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (112,'Jose Ibrahim','Martinez','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (113,'Leonardo Javier','Castillo','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (114,'Enrique Isaac','Bustos','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (115,'Michel Ricardo','Espinoza','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (116,'Michel','Caballero','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (117,'Victor Alfonso','Caceres','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (118,'Mario Humberto','Vargas','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (119,'Daniel','Quintero','Asistente');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (120,'Juan Andres','Esquivel','Asistente');

insert into arbitro (id_arbitro, nombre, apellido, posicion) values (121,'Miguel angel','Hernandez','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (122,'Pablo Israel','Hernandez','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (123,'Manuel Alfonso','Martinez','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (124,'Jose Ibrahim','Martinez','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (125,'Karen Janett','Diaz','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (126,'Enedina','Gomez','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (127,'Enrique','Martìnez','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (128,'Jonathan','Maximiliano','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (129,'Cesar Arturo','Ramos','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (130,'Mauricio','Nieto','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (131,'Adonai','Escobedo','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (132,'Alejandro','Funk','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (133,'Alberto','Morin','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (134,'Cesar Arturo','Cerritos','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (135,'Eduardo','Galvan','Central');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (136,'Christian Kiabek','Espinosa','Asistente');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (137,'Edgar','Magdaleno','Abanderado');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (138,'Jose Alfredo', 'Lopez ','Asistente');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (139,'Jose de Jesus','Baños','Asistente');
insert into arbitro (id_arbitro, nombre, apellido, posicion) values (140,'Gerardo','Martinez','Asistente');

create table p_a(
id_arbitro number,
num_partido varchar2(20),
constraint pa1 foreign key(id_arbitro) references arbitro(id_arbitro),
constraint pa2 foreign key(num_partido) references partido(num_partido)
);

insert into p_a(id_arbitro, num_partido) values ( 101, 'N-01');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-01');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-01');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-02');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-02');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-02');
insert into p_a(id_arbitro, num_partido) values ( 104, 'N-03');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-03');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-03');
insert into p_a(id_arbitro, num_partido) values ( 105, 'N-04');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-04');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-04');
insert into p_a(id_arbitro, num_partido) values ( 106, 'N-05');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-05');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-05');
insert into p_a(id_arbitro, num_partido) values ( 110, 'N-06');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-06');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-06');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-07');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-07');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-07');
insert into p_a(id_arbitro, num_partido) values ( 112, 'N-08');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-08');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-08');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-09');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-09');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-09');
insert into p_a(id_arbitro, num_partido) values ( 115, 'N-10');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-10');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-10');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-11');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-11');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-11');
insert into p_a(id_arbitro, num_partido) values ( 118, 'N-12');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-12');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-12');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-13');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-13');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-13');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-14');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-14');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-14');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-15');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-15');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-15');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-16');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-16');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-16');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-17');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-17');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-17');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-18');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-18');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-18');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-19');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-19');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-19');
insert into p_a(id_arbitro, num_partido) values ( 101, 'N-20');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-20');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-20');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-21');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-21');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-21');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-22');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-22');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-22');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-23');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-23');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-23');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-24');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-24');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-24');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-25');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-25');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-25');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-26');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-26');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-26');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-27');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-27');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-27');

insert into p_a(id_arbitro, num_partido) values ( 101, 'N-28');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-28');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-28');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-29');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-29');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-29');
insert into p_a(id_arbitro, num_partido) values ( 104, 'N-30');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-30');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-30');
insert into p_a(id_arbitro, num_partido) values ( 105, 'N-31');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-31');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-31');
insert into p_a(id_arbitro, num_partido) values ( 106, 'N-32');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-32');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-32');
insert into p_a(id_arbitro, num_partido) values ( 110, 'N-33');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-33');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-33');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-34');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-34');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-34');
insert into p_a(id_arbitro, num_partido) values ( 112, 'N-35');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-35');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-35');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-36');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-36');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-36');
insert into p_a(id_arbitro, num_partido) values ( 115, 'N-37');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-37');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-37');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-38');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-38');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-38');
insert into p_a(id_arbitro, num_partido) values ( 118, 'N-39');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-39');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-39');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-40');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-40');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-40');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-41');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-41');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-41');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-42');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-42');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-42');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-43');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-43');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-43');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-44');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-44');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-44');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-45');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-45');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-45');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-46');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-46');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-46');
insert into p_a(id_arbitro, num_partido) values ( 101, 'N-47');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-47');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-47');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-48');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-48');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-48');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-49');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-49');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-49');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-50');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-50');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-50');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-51');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-51');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-51');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-52');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-52');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-52');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-53');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-53');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-53');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-54');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-54');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-54');

insert into p_a(id_arbitro, num_partido) values ( 101, 'N-55');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-55');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-55');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-56');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-56');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-56');
insert into p_a(id_arbitro, num_partido) values ( 104, 'N-57');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-57');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-57');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-58');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-58');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-58');
insert into p_a(id_arbitro, num_partido) values ( 104, 'N-59');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-59');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-59');
insert into p_a(id_arbitro, num_partido) values ( 105, 'N-60');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-60');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-60');
insert into p_a(id_arbitro, num_partido) values ( 106, 'N-61');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-61');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-61');
insert into p_a(id_arbitro, num_partido) values ( 110, 'N-62');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-62');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-62');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-63');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-63');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-63');
insert into p_a(id_arbitro, num_partido) values ( 112, 'N-64');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-64');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-64');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-65');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-65');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-65');
insert into p_a(id_arbitro, num_partido) values ( 115, 'N-66');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-66');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-66');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-67');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-67');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-67');
insert into p_a(id_arbitro, num_partido) values ( 118, 'N-68');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-68');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-68');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-69');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-69');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-69');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-70');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-70');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-70');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-71');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-71');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-71');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-72');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-72');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-72');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-73');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-73');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-73');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-74');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-74');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-74');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-75');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-75');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-75');
insert into p_a(id_arbitro, num_partido) values ( 101, 'N-76');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-76');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-76');
insert into p_a(id_arbitro, num_partido) values ( 101, 'N-77');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-77');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-77');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-78');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-78');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-78');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-79');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-79');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-79');
insert into p_a(id_arbitro, num_partido) values ( 117, 'N-80');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-80');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-80');
insert into p_a(id_arbitro, num_partido) values ( 114, 'N-81');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-81');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-81');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-82');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-82');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-82');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-83');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-83');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-83');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-84');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-84');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-84');

insert into p_a(id_arbitro, num_partido) values ( 101, 'N-85');
insert into p_a(id_arbitro, num_partido) values ( 102, 'N-85');
insert into p_a(id_arbitro, num_partido) values ( 119, 'N-85');
insert into p_a(id_arbitro, num_partido) values ( 103, 'N-86');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-86');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-86');
insert into p_a(id_arbitro, num_partido) values ( 104, 'N-87');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-87');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-87');
insert into p_a(id_arbitro, num_partido) values ( 105, 'N-88');
insert into p_a(id_arbitro, num_partido) values ( 109, 'N-88');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-88');
insert into p_a(id_arbitro, num_partido) values ( 106, 'N-89');
insert into p_a(id_arbitro, num_partido) values ( 107, 'N-89');
insert into p_a(id_arbitro, num_partido) values ( 108, 'N-89');
insert into p_a(id_arbitro, num_partido) values ( 110, 'N-90');
insert into p_a(id_arbitro, num_partido) values ( 113, 'N-90');
insert into p_a(id_arbitro, num_partido) values ( 116, 'N-90');
insert into p_a(id_arbitro, num_partido) values ( 111, 'N-91');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-91');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-91');
insert into p_a(id_arbitro, num_partido) values ( 112, 'N-92');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-92');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-92');

insert into p_a(id_arbitro, num_partido) values ( 132, 'N-93');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-93');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-93');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-94');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-94');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-94');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-95');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-95');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-95');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-96');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-96');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-96');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-97');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-97');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-97');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-98');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-98');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-98');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-99');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-99');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-99');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-100');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-100');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-100');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-101');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-101');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-101');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-102');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-102');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-102');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-103');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-103');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-103');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-104');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-104');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-104');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-105');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-105');
insert into p_a(id_arbitro, num_partido) values ( 120, 'N-105');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-106');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-106');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-106');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-107');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-107');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-107');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-108');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-108');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-108');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-109');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-109');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-109');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-110');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-110');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-110');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-111');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-111');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-111');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-112');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-112');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-112');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-113');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-113');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-113');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-114');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-114');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-114');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-115');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-115');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-115');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-116');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-116');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-116');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-117');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-117');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-117');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-118');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-118');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-118');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-119');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-119');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-119');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-120');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-120');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-120');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-121');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-121');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-121');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-122');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-122');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-122');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-123');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-123');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-123');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-124');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-124');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-124');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-125');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-125');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-125');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-126');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-126');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-126');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-127');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-127');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-127');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-128');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-128');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-128');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-129');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-129');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-129');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-130');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-130');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-130');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-131');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-131');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-131');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-132');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-132');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-132');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-133');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-133');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-133');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-134');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-134');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-134');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-135');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-135');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-135');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-136');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-136');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-136');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-137');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-137');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-137');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-138');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-138');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-138');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-139');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-139');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-139');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-140');
insert into p_a(id_arbitro, num_partido) values ( 130, 'N-140');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-140');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-141');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-141');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-141');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-142');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-142');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-142');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-143');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-143');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-143');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-144');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-144');
insert into p_a(id_arbitro, num_partido) values ( 126, 'N-144');
insert into p_a(id_arbitro, num_partido) values ( 127, 'N-145');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-145');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-145');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-146');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-146');
insert into p_a(id_arbitro, num_partido) values ( 131, 'N-146');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-147');
insert into p_a(id_arbitro, num_partido) values ( 124, 'N-147');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-147');
insert into p_a(id_arbitro, num_partido) values ( 134, 'N-148');
insert into p_a(id_arbitro, num_partido) values ( 128, 'N-148');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-148');
insert into p_a(id_arbitro, num_partido) values ( 136, 'N-149');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-149');
insert into p_a(id_arbitro, num_partido) values ( 123, 'N-149');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-150');
insert into p_a(id_arbitro, num_partido) values ( 140, 'N-150');
insert into p_a(id_arbitro, num_partido) values ( 137, 'N-150');
insert into p_a(id_arbitro, num_partido) values ( 129, 'N-151');
insert into p_a(id_arbitro, num_partido) values ( 138, 'N-151');
insert into p_a(id_arbitro, num_partido) values ( 139, 'N-151');
insert into p_a(id_arbitro, num_partido) values ( 122, 'N-152');
insert into p_a(id_arbitro, num_partido) values ( 135, 'N-152');
insert into p_a(id_arbitro, num_partido) values ( 125, 'N-152');
insert into p_a(id_arbitro, num_partido) values ( 133, 'N-153');
insert into p_a(id_arbitro, num_partido) values ( 121, 'N-153');
insert into p_a(id_arbitro, num_partido) values ( 132, 'N-153');

