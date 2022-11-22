-- Cantidad de ventas por producto.
select
	prod.nombre as nom_prod, count(id_venta) as cant_vent 
from 
	PRODUCTO as prod 
join 
	VENTA as vent on codigo = codigo_producto
group by
	nom_prod;