use ProyectofinalSQL;
select @@autocommit; 
set @@autocommit = 0;
select @@foreign_key_checks; 
set @@foreign_key_checks= 0; 

-- Vamos a eliminar dos clientes, luego con rollback las reestablecemos y luego volvemos a eliminar y damos commit para hacer permanente la eliminacion.


select*from clientes;

START TRANSACTION; -- comienzo del bloque
delete from clientes where id_prov = 2 and nombre= 'DAMIAN';
delete from clientes where id_prov = 4 and pais = 'Argentina';
-- rollback;
-- commit;
select*from clientes;
-- se insertan 8 registros con 2 savepoints y se realizará rollback hasta el savepoint 1

select*from categ_prod; -- consultamos la tabla la cual vamos a trabajar 

START TRANSACTION; -- comienzo del segundo bloque dando commit al anterior
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (9, 'mujer invierno', 'corta'); -- insercion de valores
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (10, 'mujer invierno', 'larga');
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (11, 'hombre invierno', 'corta');
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (12, 'hombre invierno', 'larga');
SAVEPOINT sp1;

-- delete SAVEPOINT sp1; eliminar el sp1
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values  (13, 'mujer verano','corta');
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (14, 'mujer verano','larga');
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (15, 'hombre verano','corta');
INSERT INTO categ_prod (id_categ,nombre,subcateg1) values (16, 'hombre verano','corta');
SAVEPOINT sp2;

ROLLBACK TO sp1; 

select*from categ_prod;