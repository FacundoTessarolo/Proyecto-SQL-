create schema PoyectoFinalSQL;
USE PoyectoFinalSQL;

-- Table: Ordenes (esta tabla contiene las ordenes solicitadas por los clientes antes de ser facturadas)
create table  Ordenes (
id_orden int not null auto_increment ,
fecha date not null,  
numero_orden int,
id_cliente int,
id_envios int,
id_producto int,
id_estado int, -- estado en el que se encuentra el pedido
total decimal (16,2), 
constraint PK_Ordenes PRIMARY KEY (id_orden)
);

-- Tabla estado hace referencia al estado en cual se encuentra una orden
create table if not exists  Estado (
id_estado int not null auto_increment ,
tipo VARCHAR(15) not null,
constraint PK_Estado_Orden primary key (id_estado)
);

-- table: Envios hace referencia al tipo de envio
create table if not exists Envios (
id_envios int not null auto_increment ,
tipo VARCHAR(20) not null, -- hace referencia al tipo de envio dependiendo el tiempo
direccion VARCHAR(255) not null,
fecha date not null,
total decimal(16,2) not null,
constraint PK_Envios PRIMARY KEY (id_envios)
);

-- table: ventas hace referencia a las ordenes ya facturadas
create table if not exists Ventas (
id_ventas int not null auto_increment  ,
fecha date not null,
id_cliente int,
id_pago int,
id_orden int,
id_prod int,
descuento decimal (16,2), 
recargo decimal (16,2),
alicuota decimal (16,2), 
total decimal(16,2) not null,
constraint PK_Ventas PRIMARY KEY (id_ventas)
);

-- tabla: Compras refiere a los pedidos
create table if not exists Compras (
id_compras int not null auto_increment ,
fecha date not null,
id_proveedor int,
id_pago int,
id_prod int,
descuento decimal (16,2),
recargo decimal (16,2),
alicuota decimal (16,2),
total decimal(16,2) not null,
constraint PK_Compras PRIMARY KEY (id_compras)
);

-- tabla: MetodoPago hace referencia a como fue efectuado el pago, efectivo, transferencia, tarjeta, etc
create table if not exists MetodoPago (
id_pago int not null auto_increment ,
tipo Varchar(20) not null,
Plan Varchar(10) not null, -- Cuotas
Moneda Varchar(10) not null, -- tipo de moneda
constraint PK_MetodoPago Primary key (id_pago)
);
-- tabla: productos muestra todos los productos en el negocio
create table if not exists Productos (
id_prod int not null auto_increment ,
nombre Varchar(50) not null,
id_proveedor int,
id_categ int,
codigo_barra varchar(25),
costo decimal(16,2),
precio_venta decimal(16,2) not null,
stock decimal (16,2),
tipo VARCHAR(20) not null,  -- tipo de producto, si es simple, compuesto, servicio, si tiene variacion de tamaño o color
alicuota VARCHAR(20) not null, 
constraint PK_Productos PRIMARY KEY (id_prod)
);
-- tabla: categ_prod hace referencia a categoria pertenecen los productos y sus debidas subcategorias
create table if not exists Categ_prod (
id_categ int not null auto_increment ,
nombre Varchar(20) not null,
subcateg1 Varchar(20),
subcateg2 Varchar(20),
subcateg3 Varchar(20),
constraint PK_categ_prod primary Key (id_categ)
);
-- tabla: proveedores hace referencia a los proveedores de los productos
create table if not exists Proveedores (
id_proveedor int not null auto_increment ,
nombre Varchar(20) not null,
categ_IVA Varchar(20) not null,
id_prov int not null,
pais Varchar(20) not null,
dni_cuit Varchar(11),
email Varchar(30),
telefono Varchar(20),
constraint pk_Proveedores primary key (id_proveedor)
);

-- tabla : provincia hace referencia a la ubicacion dentro del pais argentina
create table if not exists Provincia (
id_prov int not null auto_increment ,
nombre VARCHAR(20) not null,
cod_post int ,
constraint pk_provincia PRIMARY KEY (id_prov)
); 

-- tabla : clientes , hace referencia a los clientes.
create table if not exists Clientes (
id_cliente int not null auto_increment ,
nombre VARCHAR(15) not null,
apellido VARCHAR(15) not null,
id_prov int,
pais VARCHAR(15) not null,
dni_cuit Varchar(11),
email Varchar(30),
telefono Varchar(20),
direccion Varchar(30),
constraint PK_Clientes primary key (id_cliente)
);
-- claves FOREANEAS para Ordenes
Alter table Ordenes add constraint
FK_ordenes_envios foreign key FK_ordenes_envios (id_envios) 
references Envios (id_envios);
Alter table Ordenes add constraint
FK_ordenes_clientes foreign key fk_ordenes_clientes (id_cliente)
references Clientes (id_cliente);
alter table Ordenes add constraint
fk_ordenes_productos foreign key FK_ordenes_productos (id_prod)
references Productos (id_prod);
Alter table Ordenes add constraint
fk_ordenes_estado_orden foreign key fk_ordenes_estado_orden (id_estado)
references Estado_orden (id_estado);

-- Claves FOREANAS para VENTAS
Alter table Ventas add constraint
fk_ventas_clientes foreign key fk_ventas_clientes (id_cliente)
references clientes (id_cliente);
Alter table Ventas add constraint
fk_ventas_metodopago foreign key fk_ventas_metodopago (id_pago)
references metodopago (id_pago);
alter table ventas add constraint
fk_ventas_ordenes foreign key fk_ventas_ordenes (id_orden)
references ordenes (id_orden);
alter table ventas add constraint
fk_ventas_productos foreign key fk_ventas_productos (id_prod)
references productos (id_prod);

-- Claves FORANEAS para la tabla COMPRAS
alter table Compras add constraint
fk_compras_proveedores foreign key fk_compras_proveedores (id_proveedor)
references proveedores (id_proveedor);
alter table compras add constraint
fk_compras_metodopago foreign key fk_compras_metodopago (id_pago)
references metodopago (id_pago);
alter table compras add constraint
fk_compras_productos foreign key fk_compras_productos (id_prod)
references productos (id_prod);

-- Claves FORANEAS tabla productos
alter table productos add constraint
fk_productos_proveedores foreign key fk_productos_proveedores (id_proveedor)
references proveedores (id_proveedor);
alter table productos add constraint
fk_productos_categ_prod foreign key fk_productos_categ_prod (id_categ)
references categ_prod (id_categ);

-- claves FORANEAS tabla clientes
alter table clientes add constraint
fk_clientes_provincia foreign key fk_clientes_provincia (id_prov)
references provincia (id_prov);

-- claves FORANEAS tabla proveedores
alter table proveedores add constraint
fk_proveedores_provincia foreign key fk_proveedores_provincia (id_prov)
references provincia (id_prov);







