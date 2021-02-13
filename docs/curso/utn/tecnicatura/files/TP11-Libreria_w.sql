use libreria_1w3_2015

create view vista_empleados as
select * 
from clientes

-- Practico 11.
-- Cree las siguientes vistas:
--a. LEGAJO-Detalle_Ventas_Vendedor: Liste la fecha, la factura, el codigo y nombre del vendedor, el articulo, la cantidad e importe, para lo que va del año. Rotule como FECHA, NRO_FACTURA, CODIGO_VENDEDOR, NOMBRE_VENDEDOR, ARTICULO, CANTIDAD, IMPORTE.

create view w108321_Detalle_ventas_vendedor as 
select f.fecha 'FECHA', f.nro_factura 'Nro Factura', v.cod_vendedor 'Cod_Vendedor', v.nom_vendedor+space(1)+v.ape_vendedor 'Nombre y Apellido', a.descripcion 'Artículo', df.cantidad, df.pre_unitario
from facturas f, vendedores v, articulos a, detalle_facturas df
where f.cod_vendedor=v.cod_vendedor
and df.cod_articulo=a.cod_articulo
and f.nro_factura=df.nro_factura
and year(f.fecha) = year(getdate())

select *
from w108321_Detalle_ventas_vendedor

-- MODIFICACIONES
alter view w108321_Detalle_ventas_vendedor as 
select f.fecha 'FECHA', f.nro_factura 'Nro_Factura', v.cod_vendedor 'Cod_Vendedor', v.nom_vendedor+space(1)+v.ape_vendedor 'NOMBRE_VENDEDOR', a.descripcion 'Artículo', df.cantidad 'CANTIDAD', df.pre_unitario 'IMPORTE'
from facturas f, vendedores v, articulos a, detalle_facturas df
where f.cod_vendedor=v.cod_vendedor
and df.cod_articulo=a.cod_articulo
and f.nro_factura=df.nro_factura
and year(f.fecha) = year(getdate())

--b. LEGAJO-Subtotales_Ventas_Vendedor: Se quiere saber el importe vendido y la cantidad de ventas por vendedor. Rotule como VENDEDOR, IMPORTE_VENDIDO, CANTIDAD_VENDIDA.

create view w108321_Subtotales_ventas_vendedor as
select v.nom_vendedor+space(1)+v.ape_vendedor 'VENDEDOR',
sum(df.pre_unitario*df.cantidad) 'IMPORTE VENDIDO',
count(*) 'CANTIDAD_VENDIDA' --va sum(cantidad) y no count(*) porq es cantidad vendida y no cantidad de ventas.
from detalle_facturas df, facturas f, vendedores v
where df.nro_factura = f.nro_factura
and v.cod_vendedor=f.cod_vendedor
group by v.cod_vendedor, v.nom_vendedor, v.ape_vendedor

-- debo modificar la consulta porque estaba mal
alter view w108321_Subtotales_ventas_vendedor as
select v.nom_vendedor+space(1)+v.ape_vendedor 'VENDEDOR',
sum(df.pre_unitario*df.cantidad) 'IMPORTE_VENDIDO',
sum(df.cantidad) 'CANTIDAD_VENDIDA' --va sum(cantidad) y no count(*) porq es cantidad vendida y no cantidad de ventas.
from detalle_facturas df, facturas f, vendedores v
where df.nro_factura = f.nro_factura
and v.cod_vendedor=f.cod_vendedor
group by v.cod_vendedor, v.nom_vendedor, v.ape_vendedor

select *
from w108321_Subtotales_ventas_vendedor
where CANTIDAD_VENDIDA > 205

-- Modifique las vistas según el siguientes detalle:
--a. La vista creada en el punto b, agréguele la condición de que solo tome lo del año en curso y que también muestre el promedio vendido y el código del vendedor.

alter view w108321_Subtotales_ventas_vendedor as
select v.cod_vendedor 'COD_VENDEDOR',
v.nom_vendedor+space(1)+v.ape_vendedor 'VENDEDOR',
sum(df.pre_unitario*df.cantidad) 'IMPORTE_VENDIDO',
sum(df.cantidad) 'CANTIDAD_VENDIDA',
AVG(df.pre_unitario*df.cantidad)'PROMEDIO_VENDIDO' 
from detalle_facturas df, facturas f, vendedores v
where df.nro_factura = f.nro_factura
and v.cod_vendedor=f.cod_vendedor
and year(f.fecha) = year(getdate())
group by v.cod_vendedor, v.nom_vendedor, v.ape_vendedor

select *
from w108321_Subtotales_ventas_vendedor

--Consulta las vistas según el siguiente detalle:
--a. Llame a la vista creada en el punto 1.a pero filtrando por importes inferiores a $12.

select *
from w108321_Detalle_ventas_vendedor
where IMPORTE < 12

--b. Llame a la vista creada en el punto 1.b filtrando para el vendedor Miranda
select *
from w108321_Subtotales_ventas_vendedor
where VENDEDOR LIKE '%Miranda%'

--c. Llama a la vista creada en el punto 1.b filtrando para promedios superiores a 100

--4) Elimine las vistas creadas en el punto 1 (no se olvide de colocar el nombre como corresponde)

-- =============================================
--       PROCEDIMIENTOS ALMACENADOS
-- =============================================

--1. a. LEGAJO-Detalle_Ventas: liste la fecha, la factura, el vendedor, el cliente, el artículo, cantidad e importe. Este SP recibirá como parámetros de E un rango de fechas.

CREATE PROC w108321_DETALLE_VENTAS --CREATE PROCEDURE es lo mismo
@p_rangoMin datetime = null,
@p_rangoMax datetime = null
as
select f.fecha 'FECHA', f.nro_factura 'Nro_Factura', v.cod_vendedor 'Cod_Vendedor', v.nom_vendedor+space(1)+v.ape_vendedor 'NOMBRE_VENDEDOR', a.descripcion 'Artículo', df.cantidad 'CANTIDAD', df.pre_unitario 'IMPORTE'
from facturas f, vendedores v, articulos a, detalle_facturas df
where f.cod_vendedor=v.cod_vendedor
and df.cod_articulo=a.cod_articulo
and f.nro_factura=df.nro_factura
and f.fecha between @p_rangoMin and @p_rangoMax

exec w108321_DETALLE_VENTAS '01/01/2015', '31/12/2015'


-- === MODIFICACIONES ====
alter PROC w108321_DETALLE_VENTAS --CREATE PROCEDURE es lo mismo
@p_rangoMin datetime =NULL,
@p_rangoMax datetime =NULL
as
select f.fecha 'FECHA', f.nro_factura 'Nro_Factura', v.cod_vendedor 'Cod_Vendedor', v.nom_vendedor+space(1)+v.ape_vendedor 'NOMBRE_VENDEDOR', a.descripcion 'Artículo', df.cantidad 'CANTIDAD', df.pre_unitario 'IMPORTE'
from facturas f, vendedores v, articulos a, detalle_facturas df
where f.cod_vendedor=v.cod_vendedor
and df.cod_articulo=a.cod_articulo
and f.nro_factura=df.nro_factura
and f.fecha between @p_rangoMin and @p_rangoMax

-- 1. b. LEGAJO-CantidadArt_Cli : este SP me debe devolver la cantidad de artículos o clientes (según se pida) que existen en la empresa.

alter PROC w108321_CantidadArt_Cli
@p_clientes varchar(30) =null
--@p_articulos varchar(30) =null
as
if @p_clientes = 'CLIENTES'
begin 
select count(*) from CLIENTES
return
end
else 
select count(*) FROM ARTICULOS

exec w108321_CantidadArt_Cli CLIENTES


