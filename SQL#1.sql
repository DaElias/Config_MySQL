-- ##LLAMAR DATOS
-- SELECT * FROM database.people where city = "México"; 
-- SELECT * FROM database.people LIMIT 0, 10;

-- ## ISERTAR DATOS EN TABLA X 
-- INSERT INTO `database`.`peoples` (`idpeoples`, `last_name`, `first_name`, `address`, `city`) 
-- VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1', 'México'),
-- 	       ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'),
-- 	       ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');
           
-- ## ELIMINAR UNA COLUMNA
-- ALTER TABLE `database`.`people` 
-- DROP COLUMN `date_of_birth`;
 

-- ##UPDATE
-- update people set first_name="ISRAEL" where idpeoples=1; 
update posts set fecha_pub=concat(fecha_pub,"01:00:00") where id=1;
select * from posts;

-- ##DELETE
-- delete from people where idpeoples=3; 
-- delete from posts where id = 6;

-- ##SELECT
-- select last_name from people; 
-- select * from posts where YEAR(fecha_pub) > "2020"; -- Buscar de datetime por el año 
-- select titulo as cabez from posts;
-- select count(*) as numero_posts from posts; -- Muestra el numero total de posts
select * from posts;




-- ## Creacion de Post (reglas) 
-- 1. Se debe crear un usuario
insert into usuarios (login, password,nickname, email) value("test4","asd123","test test","test4@test.com");
-- 2. Se deben establecer las categorias
insert into categorias (nombre_categoria) values("data science");
-- 3. creacion del post (referenciando al usuario creador y su respectiva categoria)
-- insert into posts (titulo,fecha_pub,contenido,estatus,categoria_id,usuario_id) values("ejemplo titulo !@#@",'2009-01-05',"lorem bla bla...","activo",1,2);










