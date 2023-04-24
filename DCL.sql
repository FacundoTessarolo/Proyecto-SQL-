use mysql;
show tables;

select*from help_topic;

create user 'prueba@localhost';

rename user 'prueba@localhost' To 'facundotessarolo@localhost';
select*from user where user = 'facundotessarolo@localhost';

use ecommercesql;

-- Creamos el primero usuario;
create user if not exists 'facundotessarolo'@'localhost' identified by 'FacuCasla';
-- Le asignamos unicamente permisos de lectura, select;
show grants for 'facundotessarolo'@'localhost'; -- consulto los permisos del usuario 1 
grant select on *.* to 'facundotessarolo'@'localhost'; -- Solo podra visualizar las tablas
show grants for 'facundotessarolo'@'localhost'; -- consulto nuevamente como quedaron los permisos del usuario 1 ;


-- Creamos el segundo usuario;
create user if not exists 'mercado'@'localhost' identified by 'mercado';
-- Le asignamos los permisos al usuario 2 de visualizar, insertar y actualizar datos en nuestro schema en todas nuestras tablas;
show grants for 'mercado'@'localhost'; -- consulta de permisos del usuario 2 
grant select , insert , update on *.* to'mercado'@'localhost';
show grants for 'mercado'@'localhost'; -- vuelvo a realizar la consulta de permisos del usuario 2 para ver como quedaron luego de la insersion de permisos;

-- Entiendo que ningun usuario generado tiene permiso para eliminar datos ya que en la sentencia show grants no se pone el comando DELETE;