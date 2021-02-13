--LABORATORIO II - GUIA EJERCICIOS 1

USE LIBRERIA

INSERT INTO ARTICULOS (descripcion,stock_minimo,pre_unitario,observaciones)
 VALUES ('108221-Lápices Color Largos * 12 u',null,21.50,null)
 
INSERT INTO ARTICULOS (descripcion,stock_minimo,pre_unitario,observaciones)
 VALUES ('108221-Conjunto Geométrico',null,8.30,'Regla - escuadra - transportador')
 
 INSERT INTO ARTICULOS (descripcion,stock_minimo,pre_unitario,observaciones)
 VALUES ('108221-Repuesto Gloria Rallado',120,26.30,'400 hojas')
 
 INSERT INTO ARTICULOS (descripcion,stock_minimo,pre_unitario,observaciones)
 VALUES ('108221-Repuesto Rivadavia',null,65.90,'400 hojas, margen reforzado')
 
 SELECT * FROM VENDEDORES
 INSERT INTO VENDEDORES (ape_vendedor,nom_vendedor,calle,altura,nro_tel,[e-mail],fec_nac,cod_Barrio)
 VALUES ('108221-Monti','Juan','Altolaguirre', 1245,4522122,null,null,5)
 
 INSERT INTO VENDEDORES (ape_vendedor,nom_vendedor,calle,altura,nro_tel,[e-mail],fec_nac,cod_Barrio)
 VALUES ('108221-Sena','Rosa','Av. Velez Sarsfield',25,null,'rsena@hotmail.com','15/05/1968',1)
 
 
 SELECT * FROM CLIENTES
 
 INSERT INTO CLIENTES (nom_cliente,ape_cliente,calle,altura,cod_barrio,nro_tel,[e-mail])
 VALUES ('108221-Matias','Sorribes','Cochabamba',449,1,null,'matias@hotmail.com')
 
  INSERT INTO CLIENTES (nom_cliente,ape_cliente,calle,altura,cod_barrio,nro_tel,[e-mail])
 VALUES ('108221-Jose','Perez','Trejo',25,2,null,'jose@hotmail.com')
 
  INSERT INTO CLIENTES (nom_cliente,ape_cliente,calle,altura,cod_barrio,nro_tel,[e-mail])
 VALUES ('108221-Juan','Rey','Lamarca',335,5,4536677,'juanR@hotmail.com')
 
 EJERCICIOS
 --Para el artículo cuya descripción es “LEGAJO-Conjunto Geométrico” 
 --por “LEGAJO-Conjunto Geométrico de Plástico”. 
 
 UPDATE ARTICULOS 
 SET DESCRIPCION = '108221-Conjunto Geométrico Plastico'
 WHERE DESCRIPCION = '108221-Conjunto Geométrico'
 
 
-- Para el artículo cuya descripción es “LEGAJO-Lápices Color largos * 12 u”; 
--cambie el stock mínimo por 100, las observaciones 
--por “Caja con motivos de Disney” y al precio por 17.20.
 
 UPDATE ARTICULOS 
 SET	STOCK_MINIMO = 100,
		OBSERVACIONES = 'Caja con motivos de Disney',
		PRE_UNITARIO = 17.20
 WHERE DESCRIPCION = '108221-Lápices Color Largos * 12 u'


--Para el artículo cuya descripción es “LEGAJO-Repuesto Rivadavia”, 
--cambie la descripción por
--“LEGAJO-Repuesto Rivadavia cuadriculado” y las observaciones por “48 hojas” 
 
 UPDATE ARTICULOS 
 SET	DESCRIPCION = '108221-Repuesto Rivadavia cuadriculado',
		OBSERVACIONES = '48 hojas'
 WHERE DESCRIPCION = '108221-Repuesto Rivadavia'

--Al vendedor LEGAJO-Monti Juan 
--cambiar la fecha por 10/10/1970 y agregarle una dirección de
--e-mail.

 UPDATE VENDEDORES
 SET	FEC_NAC = '10/10/1970',
		[E-MAIL] = 'Monti@hotmail.com'
 WHERE ape_vendedor = '108221-Monti'
 
 
--Al vendedor LEGAJO-Sena Rosa, 
--cambiar el teléfono por 4522221 y la dirección por Av. Vélez
--Sarsfield 125 - Centro.
 
 UPDATE VENDEDORES
 SET	nro_tel = 4522221,
		calle = 'Av. Velez Sarsfield',
		altura = 125
 WHERE ape_vendedor = '108221-Sena'
 
 
--Aumentar el precio unitario en un 15% pero de aquellos artículos 
--cuyo precio unitario sea inferior
--a 20 (tener en cuenta además que la descripción comience con su legajo). 
 UPDATE ARTICULOS
 SET	pre_unitario = pre_unitario *1.15
 WHERE  (pre_unitario<20 
		AND DESCRIPCION LIKE ('108221%'))
	
		
--Aumentar el precio unitario en un 10% pero de aquellos artículos 
--cuyo precio unitario esté entre
--a 20 y 30. (tener en cuenta además que la descripción comience con su legajo)		
 UPDATE ARTICULOS
 SET	pre_unitario = pre_unitario *1.1
 WHERE  (pre_unitario between 20 and 30 
		AND DESCRIPCION LIKE ('108221%'))
		
--Al artículo cuya descripción es “LEGAJO-Repuesto Gloria rallado”.

DELETE ARTICULOS
WHERE DESCRIPCION = '108221-Repuesto Gloria Rallado'

--Al vendedor cuyo apellido y nombre es “LEGAJO-Sena Rosa”.

DELETE VENDEDORES
WHERE APE_VENDEDOR = '108221-SENA' AND NOM_VENDEDOR ='ROSA'

SELECT * FROM CLIENTES

--Elimine dos registros de los que ud. haya ingresado en los puntos anteriores.		
 
 DELETE CLIENTES
 WHERE NOM_CLIENTE = '108221-Matias'
 
  DELETE CLIENTES
 WHERE NOM_CLIENTE = '108221-Jose'
