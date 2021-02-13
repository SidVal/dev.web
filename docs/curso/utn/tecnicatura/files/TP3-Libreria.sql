--LABORATORIO II - GUIA EJERCICIOS 3
--Composiciones Simples


use Libreria

--1) Liste n�mero de factura, fecha de venta y vendedor (apellido y nombre), 
--para los casos en que el c�digo del cliente van del 2 al 6. 
--y del vendedor de aquellas facturas confeccionadas entre el 
-- primero de febrero del 2008 y el primero de marzo del 2010 
--y que el apellido del cliente no contenga �C�.
-- el importe (precio por cantidad); para las facturas emitidas 
-- en el 2009, 2010 y 2012 y la descripci�n no comience con �R�. 
--Ordene por n�mero de factura e importe, este en forma descendente. 
--siempre que el precio al que fue vendido no est� entre $10 y $50. 
--Rotule como: C�digo de Art�culo, Descripci�n, Cantidad e Importe 
--(El importe es el precio por la cantidad). 
--incluidos los datos de la venta); emitidas a clientes con tel�fonos 
--o direcciones de e-mail conocidas de aquellas facturas cuyo 
-- importe haya sido superior a $250. 
-- Agregue r�tulos presentaci�n y ordene el listado para darle mejor
--presentaci�n.
--y en qu� fecha se les vendi� con los siguientes nros. de factura: 12, 18, 1, 3, 35, 26 y 29.
--en las facturas cuyos n�meros no est� entre 17 y 136. 
--Liste la descripci�n, cantidad e importe. Ordene por descripci�n y cantidad. No
--muestre las filas con valores duplicados
--cuyos nombres o apellidos comienzan con "C"

SELECT F.fecha, 
V.nom_Vendedor + ' ' +  V.ape_Vendedor as 'Nombre y Apellido Vendedor',
C.nom_Cliente + ' ' + C.ape_Cliente as 'Nombre y Apellido Cliente'
FROM facturas F, clientes C, vendedores V
WHERE F.cod_Cliente = C.cod_Cliente
AND F.cod_Vendedor = V.cod_Vendedor
AND Year(F.fecha) = Year(GetDate())-10
and (C.nom_cliente LIKE 'r%' OR C.ape_cliente LIKE 'C%')


--15) El encargado de la librer�a necesita tener informaci�n sobre los art�culos 