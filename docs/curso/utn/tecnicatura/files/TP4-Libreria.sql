--LABORATORIO II - GUIA EJERCICIOS 4

USE LIBRERIA_2015
--Ejemplo
SELECT cod_cliente 'Código', ape_cliente +' '+ nom_cliente nombre, 'Cliente' tipo
FROM clientes
UNION
SELECT cod_vendedor, nom_vendedor, 'Vendedor'
FROM vendedores--1) Se quiere saber qué vendedores y clientes hay en la empresa; para los casos en que su teléfono y
--dirección de e-mail sean conocidos. Se deberá visualizar el código, nombre y si se trata de un
--cliente o de un vendedor. Ordene por la columna tercera y segunda.

SELECT C.cod_Cliente AS 'CODIGO', 
C.nom_Cliente AS 'NOMBRE',
C.nro_Tel,C.[e-mail], 'Cliente' tipo
FROM CLIENTES C
WHERE C.nro_Tel IS NOT NULL AND C.[e-mail] IS NOT NULL
UNION
SELECT V.cod_Vendedor,V.nom_Vendedor,V.nro_Tel,V.[e-mail], 'Vendedor'
FROM VENDEDORES V
WHERE (V.nro_Tel IS NOT NULL AND V.[e-mail] IS NOT NULL)
ORDER BY tipo,nombre

--2) Emitir un listado donde se muestren qué artículos, clientes y vendedores hay en la empresa.
--Determine los campos a mostrar y su ordenamiento.

SELECT C.cod_Cliente AS 'CODIGO', 
C.nom_Cliente AS 'NOMBRE', 'Cliente' tipo
FROM CLIENTES C
UNION
SELECT V.cod_Vendedor,V.nom_Vendedor, 'Vendedor'
FROM VENDEDORES V
UNION
SELECT A.cod_Articulo,A.descripcion,'Articulo'
FROM ARTICULOS A
ORDER BY tipo,nombre

--3) En un mismo listado mostrar todos los artículos que hay en la empresa y los artículos que han sido
--vendidos. Determine Ud. las columnas a mostrar

SELECT A.cod_Articulo as 'CODIGO', 
A.descripcion, 'Listado' condicion
FROM articulos A, detalle_Facturas D
UNION
SELECT D.cod_Articulo, A.descripcion, 'Vendido'
FROM articulos A, detalle_Facturas D
WHERE A.cod_Articulo = D.cod_Articulo

--4) Se quiere saber las direcciones (incluido el barrio) tanto de clientes como de vendedores. Para el
--caso de los vendedores, códigos entre 3 y 12. En ambos casos las direcciones deberán ser
--conocidas. Rotule como NOMBRE, DIRECCION, BARRIO, INTEGRANTE (en donde indicará si es
--cliente o vendedor). Ordenado por la primera y la última columna.SELECT C.nom_cliente + ' ' + C.ape_Cliente as 'Nombre y Apellido',C.calle + ' ' + CONVERT(VARCHAR(10),C.ALTURA) as 'Direccion',B.barrio, 'CLIENTE' IntegranteFROM clientes C, barrios BWHERE B.cod_Barrio = C.cod_BarrioAND (C.calle IS NOT NULL AND C.altura IS NOT NULL)UNIONSELECT V.nom_Vendedor + ' ' + V.ape_Vendedor 'Nombre y Apellido',V.calle + ' ' + CONVERT(VARCHAR(10),V.ALTURA) as 'Direccion',B.barrio, 'VENDEDOR' IntegranteFROM vendedores V, barrios BWHERE B.cod_Barrio = V.cod_BarrioAND V.cod_Vendedor BETWEEN 3 AND 6AND (V.calle IS NOT NULL AND V.altura IS NOT NULL)ORDER BY 'NOMBRE Y APELLIDO', integrante--5) Se quiere saber qué clientes hay en la empresa y listar además los clientes que han comparado
--entre el 1/12/2010 y el 1/03/2012. Muestre el código, sin duplicarlos.SELECT C.nom_cliente + ' ' + C.ape_Cliente 'NOMBRE Y APELLIDO', 'LISTADO' condicionFROM clientes CUNIONSELECT C.nom_cliente + ' ' + C.ape_Cliente 'NOMBRE Y APELLIDO', 'COMPRO' --condición (no hace falta aclarar)FROM facturas F, clientes CWHERE F.cod_Cliente = C.cod_ClienteAND F.fecha BETWEEN '01/12/2010' AND '01/03/2012'ORDER BY 'NOMBRE Y APELLIDO', condicion--6) Ídem al ejercicio anterior, sólo que además del código, identifique de donde obtiene la información
--(de qué tabla se obtienen los datos).



--7) Se quiere saber qué clientes hay en la empresa y quiénes han comprado; para el primer caso para
--nombres que empiecen con letras que van de la “c” a la “l” y para el segundo para facturas que
--oscilen entre 10 y 23. Muestre el código (no elimine los que se repiten).

SELECT C.nom_cliente + ' ' + C.ape_Cliente 'NOMBRE Y APELLIDO', 'LISTADO' condicionFROM clientes CWHERE C.nom_Cliente LIKE '[C-L]%'UNIONSELECT C.nom_cliente + ' ' + C.ape_Cliente 'NOMBRE Y APELLIDO', 'COMPRO'FROM facturas F, clientes CWHERE F.cod_Cliente = C.cod_ClienteAND F.nro_Factura BETWEEN 10 AND 23ORDER BY condicion, 'NOMBRE Y APELLIDO'


--8) Listar todos los artículos que están a la venta cuyo precio unitario oscile entre 10 y 50; también se
--quieren listar los artículos que fueron comprados por los clientes cuyos apellidos comiencen con “M”
--o con “P”.SELECT A.cod_Articulo, A.descripcion,A.pre_Unitario, 'LISTADO' condicionFROM articulos AWHERE pre_Unitario between 10 and 50UNIONSELECT A.cod_Articulo, A.descripcion,A.pre_Unitario, 'COMPRADO' condicionFROM facturas F, clientes C, articulos AWHERE F.cod_Cliente = C.cod_ClienteAND C.nom_Cliente like '[M,P]%'ORDER BY condicion, pre_Unitario