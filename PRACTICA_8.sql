--Practica 8

--2 TRIGGERS
CREATE TRIGGER TR_Productos
ON Productos 
FOR insert 
AS
print 'Añadieron un producto nuevo';

INSERT INTO Productos values (NEWID(), 'Top NASA', '750.00', NEWID(), NEWID())

CREATE TRIGGER TR_Proveedores
ON Proveedores
AFTER insert 
AS
print 'Hay un nuevo Proveedor a tu disposición';

INSERT INTO Proveedores values (NEWID(), 'Nicolas', 'Castañeda', 'Hidalgo', 'Cuidado con el Perro' ,NEWID(), NEWID())


--PROCEDURE

CREATE PROCEDURE SP_Consulta1
AS
SELECT * FROM Productos
WHERE Nombre = 'Sudadera'
GO

EXEC SP_Consulta1

CREATE PROCEDURE SP_Consulta2
AS
SELECT * FROM Productos
WHERE Precio = '650.00'
GO

EXEC SP_Consulta2

CREATE PROCEDURE SP_Consulta3
AS
SELECT * FROM Clientes
WHERE PrimerApellido = 'Carreon'
GO

EXEC SP_Consulta3

CREATE PROCEDURE SP_Consulta4
AS
SELECT * FROM Clientes
WHERE Nombre = 'Jaime Alejandro'
GO

EXEC SP_Consulta4

CREATE PROCEDURE SP_Consulta5
AS
SELECT * FROM Municipios
WHERE Nombre = 'Rincon de San Miguel'
GO

EXEC SP_Consulta5

CREATE PROCEDURE SP_Consulta6
AS
SELECT * FROM TipoTelefono
GO

EXEC SP_Consulta6

CREATE PROCEDURE SP_Consulta7
AS
SELECT * FROM Ventas
WHERE IdEmpleado = 'E5E1F25A-772F-45FF-98E0-3A67D28E981E'
GO

EXEC SP_Consulta7

CREATE PROCEDURE SP_Consulta8
AS
SELECT * FROM InventarioAlmacen
WHERE Existencia = 'Si'
GO

EXEC SP_Consulta8

CREATE PROCEDURE SP_Consulta9
AS
SELECT * FROM InventarioAlmacen
WHERE Existencia = 'No'
GO

EXEC SP_Consulta9

CREATE PROCEDURE SP_Consulta10
AS
SELECT * FROM Direcciones
WHERE NumeroExterior = '1504'
GO

EXEC SP_Consulta10

--FUNCION
SELECT Nombre, AVG(Precio) from Productos
GROUP BY Nombre
HAVING AVG(Precio) >300


--QUERY DINAMICO
DECLARE @Consulta1 varchar(50)
DECLARE @Empleados varchar(50)

SET @Empleados = 'Empleados'
SET @Consulta1 = 'SELECT * FROM ' + @Empleados

EXEC(@Consulta1)
