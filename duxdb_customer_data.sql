use duxdb_customer;

insert into RUBRO(rubro) values
	("Libreria"), ("Electrónica"), ("Panaderia"), ("Ferretería");

insert into PRODUCTO(codigo, nombre, fecha_creacion, id_rubro) values
	("00001", "Lapicera", "2022-11-21", 1),
    ("00002", "Goma", "2022-11-21", 1),
    ("00003", "Medialunas", "2022-04-17", 3),
    ("00004", "Capacitor", "2022-05-11", 2),
    ("00005", "LED", "2022-05-12", 2),
    ("00006", "Factura", "2022-06-26", 3),
    ("00007", "Lapiz", "2022-11-22", 1),
    ("00008", "Martillo", "2022-08-30", 4),
    ("00009", "Clavo", "2022-08-29", 4);
    
insert into CLIENTE(nombre, apellido, cuit) values
	("Juan", "Gonzalez", "1986-05-11"),
    ("Marta", "Velez", "1970-03-17"),
    ("Jorge", "Gil", "1960-12-08"),
    ("Estela", "Marín", "1981-04-16");

insert into VENTA(codigo_producto, fecha, cantidad, precio_unitario, id_cliente) values
	("00002", "2022-06-14", 40, 50, 2), 
    ("00001", "2022-09-21", 30, 90, 1),
    ("00003", "2021-09-25", 25, 100, 1),
    ("00005", "2021-01-25", 100, 10, 3),
    ("00004", "2022-10-26", 100, 100, 2),
    ("00006", "2021-04-17", 25, 100, 1),
    ("00007", "2020-04-02", 25, 50, 2),
    ("00004", "2022-02-07", 25, 100, 3);
    
select * from VENTA;
delete from RUBRO where id_rubro=3;
-- select * from VENTA where id_cliente=1;
