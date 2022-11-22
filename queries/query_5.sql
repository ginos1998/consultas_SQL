-- Ventas que tienen al menos un producto del rubro "Panaderia".
select
	id_venta, rub
from(
	select
		vent.id_venta as id_venta,	r.rubro as rub
	from
		VENTA as vent join PRODUCTO as prod
		on codigo_producto = codigo join RUBRO as r using(id_rubro)
  ) ventas_por_rubro
where
	rub = "Libreria";