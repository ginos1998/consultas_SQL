create database duxdb_customer;
-- drop database duxdb_customer;
use duxdb_customer;

create table if not exists RUBRO(
	id_rubro bigint not null auto_increment,
    rubro varchar(15),
    primary key (id_rubro));

create table if not exists PRODUCTO(
    codigo varchar(5) not null,
    nombre varchar(10) not null,
    fecha_creacion date not null,
    id_rubro bigint not null,
    primary key (codigo), 
    foreign key (id_rubro) references RUBRO(id_rubro));

create table if not exists CLIENTE(
	id_cliente bigint not null auto_increment,
	nombre varchar(10) not null,
    apellido varchar(10) not null,
    cuit date not null,
    primary key (id_cliente));
    
create table if not exists VENTA(
	id_venta bigint not null auto_increment,
	codigo_producto varchar(5) not null,
    fecha date not null,
	cantidad bigint not null,
    precio_unitario double not null,
    id_cliente bigint not null,
    primary key (id_venta), 
    foreign key (codigo_producto) references PRODUCTO(codigo),
	foreign key (id_cliente) references CLIENTE(id_cliente));
    


