-- Monto total vendido por cliente (mostrar nombre del cliente y monto).
select
	clt.nombre as nombre_clt, sum(vent.cantidad*precio_unitario) as monto_total
from 
	CLIENTE as clt join VENTA as vent using(id_cliente)
group by
	id_cliente;