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
update posts set titulo="titulo ejemplo" where id=1;
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

-- ##FROM 
select * from usuarios left join posts on usuarios.id = posts.usuario_id; 

select * from usuarios left join posts on usuarios.id = posts.usuario_id 
where posts.usuario_id is null;

select * from usuarios right join posts on usuarios.id = posts.usuario_id;

select * from usuarios inner join posts on usuarios.id = posts.usuario_id;

select * from usuarios left join posts on usuarios.id = posts.usuario_id
union
select * from usuarios right join posts on usuarios.id = posts.usuario_id;

-- ## WHERE
select * from posts where estatus="activo";
select titulo from posts where titulo like "%titulo%";  
-- Buscar todos los posts que tengan la palabra titulo
select titulo from posts where titulo like "titulo%";  
-- Buscar todos los posts que inicien en la palabra titulo
select titulo from posts where titulo like "%titulo";  
-- Buscar todos los posts que terminen en la palabra titulo
select * from posts where YEAR(fecha_pub) > "2020"; -- Buscar de datetime por el año 
select * from posts where YEAR(fecha_pub) between "2000" and "2020";
select * from posts where month(fecha_pub) = "01";

select * from usuarios left join posts on usuarios.id = posts.usuario_id
where posts.usuario_id is null
union
select * from usuarios right join posts on usuarios.id = posts.usuario_id
where posts.usuario_id is null;

## Grup by
select estatus, count(*) total from posts group by estatus; 



## Creacion de Post (reglas) 
-- 1. Se debe crear un usuario
insert into usuarios (login, password,nickname, email) value("test4","asd123","test test","test4@test.com");
-- 2. Se deben establecer las categorias
insert into categorias (nombre_categoria) values("data science");
-- 3. creacion del post (referenciando al usuario creador y su respectiva categoria)
insert into posts (titulo,fecha_pub,contenido,estatus,categoria_id,usuario_id) 
values("!@#@",'2012-01-05',"2232323","inactivo",1,2);










