use duxdb_customer;

insert into RUBRO(rubro) values
	("Corralon"), ("Panaderia");

insert into PRODUCTO(codigo, nombre, fecha_creacion, id_rubro) values
	("00001", "Arena", "2022-11-21", 1),
    ("00002", "Medialunas", "2022-01-21", 2);
    
insert into CLIENTE(nombre, apellido, cuit) values
	("Juan", "Gonzalez", "1986-05-11"),
    ("Pedro", "Rojas", "1980-03-17"),
    ("Jorge", "Gil", "1960-12-08");

insert into VENTA(codigo_producto, fecha, cantidad, precio_unitario, id_cliente) values
	("00002", "2022-06-14", 50, 100, 2), 
    ("00001", "2022-09-25", 25, 1000, 1);
    

    
