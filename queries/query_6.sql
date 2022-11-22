-- Rubros que no tienen ventas en los últimos 2 meses.
select
	rub.rubro
from
	RUBRO as rub join PRODUCTO as prod using(id_rubro)
	join VENTA as vent on codigo = codigo_producto
where
	vent.fecha < date(now() - interval 2 month)
    and rub.rubro not in(
      select
        rub.rubro
      from
        RUBRO as rub join PRODUCTO as prod using(id_rubro)
        join VENTA as vent on codigo = codigo_producto
      where
        vent.fecha >= date(now() - interval 2 month)
      group by
        id_rubro
    )
group by
	id_rubro