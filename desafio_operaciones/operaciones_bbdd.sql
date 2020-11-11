---------------------
-- PARTE 1 ---------
---------------------

-- 1. Crear Base de datos posts (1 punto)
CREATE DATABASE post;

-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción (1 punto)
CREATE TABLE post(
id INT
,nombre_usuario VARCHAR(25)
,fecha_creacion DATE
,contenido VARCHAR(255)
,descripcion VARCHAR(255)
, PRIMARY KEY (id)
);

-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" (0.6 puntos)
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('1', 'Pamela', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion');

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('2', 'Pamela', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion');

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES ('3', 'Carlos', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion');

-- 4. Modificar la tabla post, agregando la columna título (1 punto)
ALTER TABLE post
ADD titulo VARCHAR(100);

-- 5. Agregar título a las publicaciones ya ingresadas ( (1 punto)
UPDATE post
SET titulo='Este es el titulo'
WHERE id=1
;

UPDATE post
SET titulo='Este es el titulo'
WHERE id=2
;

UPDATE post
SET titulo='Este es el titulo'
WHERE id=3
;

-- 6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES ('4', 'Pedro', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion', 'Este es un titulo');

INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES ('5', 'Pedro', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion', 'Este es un titulo');

-- 7. Eliminar el post de Carlos (1 punto)
DELETE FROM post
WHERE nombre_usuario='Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES ('6', 'Carlos', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion', 'Este es un titulo');

---------------------
-- PARTE 2 ---------
---------------------

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, 
-- que se relacione con la tabla posts. (1 punto)
CREATE TABLE llamada_comentarios(
id INT
,fecha DATE
,hora_creacion VARCHAR(25)
,contenido VARCHAR(255)
);

-- 10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)
INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (1, '2020-11-10', '21:54', 'este es el contenido');

INSERT INTO llamada_comentarios
(id,  fecha, hora_creacion, contenido)
VALUES (1, '2020-11-10', '21:55', 'este es el contenido');

INSERT INTO llamada_comentarios
(id,  fecha, hora_creacion, contenido)
VALUES (2, '2020-11-10', '21:56', 'este es el contenido');

INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (2, '2020-11-10', '21:57', 'este es el contenido');

-- 11. Crear un nuevo post para "Margarita" (1 punto)
INSERT INTO post
(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo)
VALUES ('7', 'Margarita', '2020-11-10' , 'Este es un contenido', 'esta es una descriocion', 'Este es un titulo');

-- 12. Ingresar 5 comentarios para el post de Margarita. (1 punto)
INSERT INTO llamada_comentarios
(id,  fecha, hora_creacion, contenido)
VALUES (7, '2020-11-10', '21:57', 'este es el contenido');

INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (7, '2020-11-10', '21:58', 'este es el contenido');

INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (7, '2020-11-10', '21:59', 'este es el contenido');

INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (7, '2020-11-10', '22:00', 'este es el contenido');

INSERT INTO llamada_comentarios
(id, fecha, hora_creacion, contenido)
VALUES (7, '2020-11-10', '22:01', 'este es el contenido');