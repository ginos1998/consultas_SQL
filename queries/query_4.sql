-- Cantidad de productos comprados por cliente en el mes actual.
select
	clt.nombre as nombre_cliente,
	clt.apellido as apellido_cliente,
	count(id_venta) as compras_este_mes
from
	CLIENTE as clt
	join(
		select 
			id_cliente, id_venta, fecha
		from
			VENTA where month(fecha) = month(now())
	) 
    ventas_este_mes using(id_cliente)
group by
	id_cliente;