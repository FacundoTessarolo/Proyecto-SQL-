USE ProyectofinalSQL;



create or replace VIEW vw_productos as (
-- VISTA N1
-- CONSULTA DE NOMBRE DE PRODUCTOS QUE TENGAN LA CATEGORIA id=8
select productos.nombre, categ_prod.id_categ
from productos join categ_prod
on productos.id_categ = categ_prod.id_categ 
where productos.id_categ = 8
);
select * from vw_productos;

Create or replace view vw_productos_stock as (
-- Mostrar producto que tiene poco stock
select nombre, precio_venta, stock
from productos  
where stock <= 10
);
select * from vw_productos_stock;

create or replace view vw_clientes_provincia_cordoba as (
-- VISTA N3
-- Mostrar nombre y apellido de los clientes de la provincia de cordoba 
-- select * from clientes;
-- select * from provincia;
select clientes.nombre, apellido, provincia.id_prov
from clientes join provincia
on clientes.id_prov = provincia.id_prov 
where clientes.id_prov = 4 
);
select * from vw_clientes_provincia_cordoba;

create or replace view vw_ventas_2000 as (
-- VISTA N4
-- select * from ventas;
-- Mostrar las ventas y su fecha con totales mayores a  $2000
select id_ventas, fecha, total 
from ventas
where total > 2000 );
select * from vw_ventas_2000;

create or replace view vw_compras_proveedores_aberturasmartin as (
select fecha, total, compras.id_proveedor, nombre
from compras join proveedores
on compras.id_proveedor = proveedores.id_proveedor
where compras.id_proveedor = 4 );
select * from vw_compras_proveedores_aberturasmartin;