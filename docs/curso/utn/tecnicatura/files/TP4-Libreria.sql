--LABORATORIO II - GUIA EJERCICIOS 4

USE LIBRERIA_2015
--Ejemplo
SELECT cod_cliente 'C�digo', ape_cliente +' '+ nom_cliente nombre, 'Cliente' tipo
FROM clientes
UNION
SELECT cod_vendedor, nom_vendedor, 'Vendedor'
FROM vendedores
--direcci�n de e-mail sean conocidos. Se deber� visualizar el c�digo, nombre y si se trata de un
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

--2) Emitir un listado donde se muestren qu� art�culos, clientes y vendedores hay en la empresa.
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

--3) En un mismo listado mostrar todos los art�culos que hay en la empresa y los art�culos que han sido
--vendidos. Determine Ud. las columnas a mostrar

SELECT A.cod_Articulo as 'CODIGO', 
A.descripcion, 'Listado' condicion
FROM articulos A, detalle_Facturas D
UNION
SELECT D.cod_Articulo, A.descripcion, 'Vendido'
FROM articulos A, detalle_Facturas D
WHERE A.cod_Articulo = D.cod_Articulo

--4) Se quiere saber las direcciones (incluido el barrio) tanto de clientes como de vendedores. Para el
--caso de los vendedores, c�digos entre 3 y 12. En ambos casos las direcciones deber�n ser
--conocidas. Rotule como NOMBRE, DIRECCION, BARRIO, INTEGRANTE (en donde indicar� si es
--cliente o vendedor). Ordenado por la primera y la �ltima columna.
--entre el 1/12/2010 y el 1/03/2012. Muestre el c�digo, sin duplicarlos.
--(de qu� tabla se obtienen los datos).



--7) Se quiere saber qu� clientes hay en la empresa y qui�nes han comprado; para el primer caso para
--nombres que empiecen con letras que van de la �c� a la �l� y para el segundo para facturas que
--oscilen entre 10 y 23. Muestre el c�digo (no elimine los que se repiten).

SELECT C.nom_cliente + ' ' + C.ape_Cliente 'NOMBRE Y APELLIDO', 


--8) Listar todos los art�culos que est�n a la venta cuyo precio unitario oscile entre 10 y 50; tambi�n se
--quieren listar los art�culos que fueron comprados por los clientes cuyos apellidos comiencen con �M�
--o con �P�.