use ProyectofinalSQL;

drop table if exists LOG_AUDITORIA;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA
(
id_log int auto_increment,
nombre_campo VARCHAR(200),
campo_anterior VARCHAR (200),
campo_nuevo VARCHAR (200),
usuario VARCHAR (50),
Fecha_upd_ins_del datetime,
primary key (id_log));



-- se crea trigger para tener el control de cuando una orden cambie de estado

 DROP TRIGGER IF EXISTS TRG_LOG_ORDENES_1;

DELIMITER //
CREATE TRIGGER TRG_LOG_ORDENES_1 BEFORE UPDATE ON ProyectofinalSQL.ordenes
FOR EACH ROW
BEGIN


INSERT INTO LOG_AUDITORIA (nombre_campo, campo_anterior, campo_nuevo, usuario, Fecha_upd_ins_del)
VALUES ('id_estado', OLD.id_estado, new.id_estado, current_user(), now() );

END //
DELIMITER ;

select*from ordenes;
select*from estado_orden;
UPDATE ProyectofinalSQL.ordenes SET id_estado = 1 where id_orden = 5;
select*from log_auditoria;


-- se crea trigger para tener el control de cuando se modifique el total de la orden

 DROP TRIGGER IF EXISTS TRG_LOG_ORDENES_2;

DELIMITER //
CREATE TRIGGER TRG_LOG_ORDENES_2 BEFORE UPDATE ON ProyectofinalSQL.ordenes
FOR EACH ROW
BEGIN

if (old.total <> new.total) then

		INSERT INTO LOG_AUDITORIA (nombre_campo, campo_anterior, campo_nuevo, usuario, Fecha_upd_ins_del)

		VALUES ('total', OLD.total, new.total, current_user(), now() );

end if;


END //
DELIMITER 

select*from ordenes;
UPDATE ProyectofinalSQL.ordenes SET total = 5000 where id_orden = 2;
select*from log_auditoria;


-- Creacion de la nueva tabla de LOG

select*from productos;
drop table if exists LOG_AUDITORIA_2;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_2
(
id_log int auto_increment,
nombre_tabla VARCHAR(250),
nombre_campo VARCHAR(250),
campo_anterior VARCHAR (250),
campo_nuevo VARCHAR (250),
usuario VARCHAR (100),
Fecha_upd_ins_del datetime,
primary key (id_log));

-- se crea trigger para saber cuando se actualizan los precios de venta

 DROP TRIGGER IF EXISTS TRG_LOG_PRODUCTOS_1;

DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTOS_1 AFTER UPDATE ON ProyectofinalSQL.productos
FOR EACH ROW
BEGIN

INSERT INTO LOG_AUDITORIA_2 (nombre_tabla, nombre_campo, campo_anterior, campo_nuevo, usuario, Fecha_upd_ins_del)
VALUES ('PRODUCTOS','PRECIO_VENTA', OLD.precio_venta, new.precio_venta, current_user(), now() );

END //
DELIMITER 

select*from productos;
UPDATE ProyectofinalSQL.productos SET precio_venta=750.50 where id_prod=11;
select*from log_auditoria_2;

-- se crea trigger para controlar cuando se cambia el nombre de un producto

 DROP TRIGGER IF EXISTS TRG_LOG_PRODUCTOS_2;

DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTOS_2 AFTER UPDATE ON ProyectofinalSQL.productos
FOR EACH ROW
BEGIN

if (old.nombre <> new.nombre) then

		INSERT INTO LOG_AUDITORIA_2 (nombre_tabla , nombre_campo, campo_anterior, campo_nuevo, usuario, Fecha_upd_ins_del)

		VALUES ('PRODUCTOS', 'NOMBRE' , OLD.nombre, new.nombre, current_user(), now() );

end if;


END //
DELIMITER ;

select*from productos;
UPDATE ProyectofinalSQL.productos SET nombre = 'Canguro Rustico' where id_prod=8;
select*from log_auditoria_2;