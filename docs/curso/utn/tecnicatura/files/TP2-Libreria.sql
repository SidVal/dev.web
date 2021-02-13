--LABORATORIO II - GUIA EJERCICIOS 2

USE LIBRERIA

--1) Liste Código, descripción, stock mínimo y precio de todos los artículos, 
--ordenados por precio y descripción. 
--Rotule (alias) como CÓDIGO DE ARTICULO, DESCRIPCION, STOCK MÍNIMO y PRECIO UNITARIO.

SELECT cod_Articulo AS 'CÓDIGO DE ARTICULO', DESCRIPCION AS 'DESCRIPCIÓN',
STOCK_MINIMO AS 'STOCK MINIMO', PRE_UNITARIO AS 'PRECIO UNITARIO'
FROM ARTICULOS
ORDER BY 'PRECIO UNITARIO', 'DESCRIPCIÓN'

--2) Se quiere listar todos los datos de los clientes con nro. de teléfono conocidos. 
--Muestre el nombre y apellido en una misma columna. Ordene por nombre completo. 
--Rotule en forma conveniente.

SELECT nom_cliente + ' ' + ape_cliente AS 'NOMBRE Y APELLIDO',
CALLE,ALTURA,COD_BARRIO,NRO_TEL,[E-MAIL]
FROM CLIENTES
WHERE nro_tel IS NOT NULL
ORDER BY 'NOMBRE Y APELLIDO'

--3) Se quiere saber el subtotal de todos los artículos vendidos, 
-- para ello liste el código y multiplique la cantidad por el precio unitario 
--(de la tabla: detalle_facturas). 
--Ordene por código en forma ascendente y subtotal en forma descendente. 
--No muestre datos duplicados.

SELECT DISTINCT COD_ARTICULO,SUM(PRE_UNITARIO*CANTIDAD) AS 'SUBTOTAL'
FROM DETALLE_FACTURAS
GROUP BY COD_ARTICULO
ORDER BY COD_ARTICULO

--4) Muestre el código, nombre, apellido (todo el apellido en mayúsculas) 
--y dirección (calle y altura en una sola columna; para la altura 
--utilice una función de conversión) de todos los clientes cuyo nombre
--comience con “C” y cuyo apellido termine con “Z”. 
--Rotule como CÓDIGO DE CLIENTE, NOMBRE,DIRECCIÓN.


SELECT COD_CLIENTE AS 'CODIGO DE CLIENTES', 
NOM_CLIENTE AS 'NOMBRE', UPPER(APE_CLIENTE) AS 'APELLIDO', 
CALLE + ' ' + CONVERT(VARCHAR(10),ALTURA) AS DIRECCION
FROM CLIENTES
WHERE NOM_CLIENTE LIKE 'C%' AND APE_CLIENTE LIKE '%Z'

--5) Ídem al anterior pero el apellido comience con letras 
--que van de la “D” a la “L” y cuyo nombre no
--comience con letras que van de la “A” a la “G”. 

SELECT COD_CLIENTE AS 'CODIGO DE CLIENTES', 
NOM_CLIENTE AS 'NOMBRE', UPPER(APE_CLIENTE) AS 'APELLIDO', 
CALLE + '' + CONVERT(VARCHAR(10),ALTURA) AS DIRECCION
FROM CLIENTES
WHERE NOM_CLIENTE NOT LIKE '[A-G]%' AND APE_CLIENTE LIKE '[D-L]%'

--6) Liste los artículos cuyo precio sea menor a 40 y sin observaciones. 
--Ordene por descripción y precio ambos descendente.SELECT * FROM articulosSELECT DESCRIPCION, PRE_UNITARIO as 'Precio'FROM articulosWHERE (PRE_UNITARIO < 40 AND OBSERVACIONES IS NULL)ORDER BY DESCRIPCION DESC, PRE_UNITARIO DESC
--7) Muestre los datos de los vendedores cuyo nombre no contenga “Z” 
--y cuya fecha de nacimiento sea posterior a 1/1/1970.SELECT * FROM VENDEDORESWHERE NOM_VENDEDOR NOT LIKE '%Z%' AND FEC_NAC >'01/01/1970'--8) Mostrar las facturas realizadas entre el 1/1/2007 y el 1/5/2009 
--y cuyos códigos de vendedor sean 1,3 y 4 --o bien entre el 1/1/2010 y el 1/5/2011 --y cuyos códigos de vendedor sean 2 y 4.SELECT *FROM FACTURASWHERE (FECHA BETWEEN '01/01/2007' AND '01/05/2009' ANDCOD_VENDEDOR IN(1,3,4)) OR (FECHA BETWEEN '01/01/2010' AND '01/05/2011' ANDCOD_VENDEDOR IN(2,4)) --9) Muestre las ventas (tabla detalle_facturas) de los artículos 
--cuyo precio unitario sea mayor o igual a 10 o cuyos códigos 
--de artículos no sea uno de los siguientes: 2,5, 6, 8, 10. 
--En ambos casos que los Números de facturas oscilen entre 50 y 100.

SELECT * 
FROM DETALLE_FACTURAS
WHERE (PRE_UNITARIO >= 10 
OR COD_ARTICULO NOT IN(2,5,6,8,10)) 
AND NRO_FACTURA BETWEEN 50 AND 100

--10) Listar todos los datos de los artículos cuyo stock mínimo 
--sea superior a 10 o cuyo precio sea inferior a 20. 
--En ambos casos su descripción no debe comenzar con las letras “p” 
--ni la letra “r”

SELECT * 
FROM articulos
WHERE (stock_minimo >10 OR pre_unitario <20) 
AND descripcion NOT LIKE '[PR]%'

--11) Listar los datos de los vendedores pero la fecha de nacimiento 
--en columnas diferentes día, mes y año. Rotular

SELECT COD_VENDEDOR,NOM_VENDEDOR,APE_VENDEDOR,CALLE,ALTURA,
COD_BARRIO,NRO_TEL,[E-MAIL],DATEPART(day, FEC_NAC) AS 'DIA DE NACIMIENTO', 
DATEPART(month, FEC_NAC) AS 'MES DE NACIMIENTO', 
DATEPART(year, FEC_NAC) AS 'AÑO DE NACIMIENTO' 
FROM VENDEDORES

--12) Mostrar todos los datos de las facturas realizadas durante el año en curso; 
--luego en otro listado las del año pasado.

--Diferencia entre DATEPART(year,fecha) y year(fecha)

SELECT * 
FROM facturas
WHERE YEAR(FECHA) = YEAR(GETDATE())

SELECT * 
FROM facturas
WHERE YEAR(FECHA) = YEAR(GETDATE())-1

--13) Listar los datos de los vendedores nacidos en febrero, abril, mayo o septiembre.

SELECT * 
FROM vendedores
WHERE DATEPART(month, FEC_NAC) IN (2,4,5,9)

--14) Listar los datos de los clientes: el apellido y nombre en la misma columna, 
--separados por 5 espacios y el apellido en mayúscula.

SELECT COD_CLIENTE, 
UPPER(APE_CLIENTE) + SPACE(5) + NOM_CLIENTE AS 'NOMBRE Y APELLIDO',
CALLE,ALTURA,COD_BARRIO,NRO_TEL,[E-MAIL]
FROM CLIENTES

