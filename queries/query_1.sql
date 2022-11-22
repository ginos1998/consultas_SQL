-- Todos los productos del rubro "librería", creados hoy.
select 
	prod.nombre as nom_prod, prod.fecha_creacion, rub.rubro
from 
	PRODUCTO as prod join RUBRO as rub using(id_rubro)
where 
	rubro = "Libreria" and fecha_creacion = date(now());
    