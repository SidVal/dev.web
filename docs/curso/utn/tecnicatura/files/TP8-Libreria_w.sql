--Emita un listado con los datos del vendedor y las ventas que ha realizado en lo que va del año. Muestre los vendedores aun así no tengan ventas registradas en el año solicitado.

select *
from facturas f --vebdedores
right join vendedores v --porque tengo la tabla a la derecha de lo que quiero mostrar
on f.cod_vendedor = v.cod_vendedor
where year(f.fecha) = year(getdate()) --si quisiera condicionar, pero tambien mostrar aquellos registros que no cumplen esta condición, pongo AND (u OR).

--Genere un reporte con los datos de la facturación (datos de las facturas incluidos los del vendedor y cliente) de los años 2006, 2007, 2009 y 2012.