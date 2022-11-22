create database duxdb_customer;
use duxdb_customer;
create table if not exists RUBRO(
	id_rubro bigint auto_increment,
    rubro varchar(15),
    primary key (id_rubro));

create table if not exists PRODUCTO(
    codigo varchar(5),
    nombre varchar(10),
    fecha_creacion date,
    id_rubro bigint,
    primary key (codigo), 
    foreign key (id_rubro) references RUBRO(id_rubro));

create table if not exists CLIENTE(
	id_cliente bigint auto_increment,
	nombre varchar(10),
    apellido varchar(10),
    cuit date,
    primary key (id_cliente));
    
create table if not exists VENTA(
	id_venta bigint auto_increment,
	codigo_producto varchar(5),
    fecha date,
	cantidad bigint,
    precio_unitario double,
    id_cliente bigint,
    primary key (id_venta), 
    foreign key (codigo_producto) references PRODUCTO(codigo),
	foreign key (id_cliente) references CLIENTE(id_cliente));
    


