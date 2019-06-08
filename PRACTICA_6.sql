--INSERTS

--Productos
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES (NEWID(), 'Tenis Air Max' , '1500.00' , '4DFFBA36-C95B-4343-97EB-DA2C156E856D' ,'9074D34D-F71D-4B37-AD95-604DBF87F846')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES (NEWID(), 'Tenis Air Max' , '1500.00' , '4DFFBA36-C95B-4343-97EB-DA2C156E856D' ,'9074D34D-F71D-4B37-AD95-604DBF87F846')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES (NEWID(), 'T-shirt' , '350.00' , '4DFFBA36-C95B-4343-97EB-DA2C156E856D' ,'3CBFE022-48CA-4FD4-A826-978B8FDDEF4B')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES (NEWID(), 'T-shirt' , '350.00' , '4DFFBA36-C95B-4343-97EB-DA2C156E856D' ,'3CBFE022-48CA-4FD4-A826-978B8FDDEF4B')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('5702092F-DAD2-4E60-94C9-09D2B29C4543', 'Sudadera', '650.00','4DFFBA36-C95B-4343-97EB-DA2C156E856D', 'F9D31F84-255B-4793-ADFE-99539A43EBFB')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('B4BD62FC-142C-4146-A60B-D3A73CB85071','Sudadera', '650.00','4DFFBA36-C95B-4343-97EB-DA2C156E856D', '7AA4A0E2-7192-46AA-9EF8-BC7FF0D000D4')
GO
Select*From dbo.Productos

INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '67E638F5-C840-4070-844C-04F1E5CDF7CD', NEWID(), '0', 'No', 'EC06E9E9-EFDC-465E-AF93-797ADE898C59')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), 'A0CA063B-A2EF-4487-954B-65FDF1AEDC26', NEWID(), '0', 'No', '3FE783BD-348A-4F1C-A3F8-9678A1EE9E08')
GO
Select*From dbo.InventarioAlmacen


--10 REPORTES/Clausula GROUP BY

--Selecciona de la tabla PRODUCTOS los nombres de los productos y agrupalos en una tabla donde solo se muestra
--el nombre del producto y la cantidad que hay
Select Nombre, count(*) as Cantidad
    from Productos
group by Nombre

--Selecciona de la tabla PRODUCTOS los precios de los productos y agrupalos en una tabla donde muestre
--el precio y el total de productos que tienen ese precio
Select Precio, count(*) as TotaldeProductos
    from Productos
group by Precio

--Selecciona de la tabla INVENTARIO ALMACEN la existencia de los productos y agrupalos en una tabla donde
--muestre si la existencia es SI o NO y cuantos productos tienen dicha existencia
Select Existencia, count(*) as Cantidad
    from InventarioAlmacen
group by Existencia

--Selecciona de la tabla INVENTARIO ALMACEN la cantidad de productos y agrupalos en una tabla donde
--muestre el total de productos que tienen esa cantidad de productos
Select Cantidad, count(*) as TotaldeProductos
    from InventarioAlmacen
group by Cantidad

--Selecciona de la tabla CLIENTES el PRIMER APELLIDO y SEGUNGO APELLIDO y agrupalos en una tabla donde
--muestre quienes son hermanos por llevar los mismos apellidos
Select PrimerApellido, SegundoApellido,count(*) as Hermanos
    from Clientes
group by PrimerApellido, SegundoApellido

--Selecciona de la tabla PAIS el nombre de los paises y agrupalos en una tabla donde se muestre
--el total de los estados que pertenecen a ese pais
Select Nombre, count(*) as EstadosTotales
    from Pais
group by Nombre

--Selecciona de la tabla COLONIAS el nombre de las colonias diferentes de las que hay registro y agrupalos
--en una tabla donde muestre el total de personas diferentes registradas que viven en esa misma colonia
Select Nombre, count(*) as PersonasDiferentes
    from Colonias
group by Nombre

--Selecciona de la tabla TIPO DEPARTAMENTO el nombre de los departamentos y agrupalos en una tabla donde
--muestre la cantidad de departamentos que hay
Select Nombre, count(*) as CantidadDepartamentos
    from TipoDepartamento
group by Nombre

--Selecciona de la tabla TELEFONO CLIENTES el IdTipoTelefono para agruparlos en una tabla donde muestre
--la cantidad de tipo de telefonos que existe con ese ID
Select IdTipoTelefono, count(*) as TipoTelefono
    from TelefonoClientes
group by IdTipoTelefono

--Selecciona de la tabla VENTAS la fecha de dichas ventas y agrupalos en una tabla donde se muestre 
--la cantidad de ventas totales de esa misma fecha
Select FechaVenta, count(*) as VentasTotales
    from Ventas
group by FechaVen


--10 SELECT BASICO
SELECT Nombre 
	FROM Clientes
ORDER BY Nombre ASC

SELECT FechaNacimiento 
	FROM Clientes
ORDER BY FechaNacimiento DESC

SELECT FechaIngreso 
	FROM Empleados
	WHERE FechaIngreso >= '09/25/2017'
ORDER BY FechaIngreso DESC

SELECT Nombre, Precio
	FROM Productos
	WHERE Precio <= '350.00'
ORDER BY Nombre ASC, Precio

SELECT IdProductos, Existencia 
	FROM InventarioAlmacen
ORDER BY IdProductos, Existencia ASC

SELECT FechaVenta
	FROM Ventas
ORDER BY FechaVenta ASC

SELECT Calle, NumeroExterior 
	FROM Direcciones
ORDER BY Calle ASC, NumeroExterior

SELECT DISTINCT Nombre
	FROM Colonias
ORDER BY Nombre ASC
select*from Municipios
SELECT DISTINCT Nombre 
	FROM Municipios
ORDER BY Nombre ASC

SELECT Nombre 
	FROM Proveedores
ORDER BY Nombre ASC


--5 FUNCIONES AGREGADAS
/*
count ---> cuenta
sum - avg ---> suma
min ---> minimo
max ---> maximo
*/
SELECT Nombre, COUNT(Nombre) from Colonias
GROUP BY Nombre

SELECT Nombre, AVG(Precio) from Productos
GROUP BY Nombre
HAVING AVG(Precio) >300

SELECT Nombre, AVG(Precio) from Productos
GROUP BY Nombre
HAVING AVG(Precio) >900

SELECT IdEmpleado, COUNT(FechaVenta) from Ventas
GROUP BY IdEmpleado

SELECT PrimerApellido, COUNT(Nombre) from Clientes
GROUP BY PrimerApellido

--JOINS
Select Direcciones.Calle, Colonias.Nombre, Municipios.Nombre, Estados.Nombre, Pais.Nombre
from Direcciones join Colonias on Direcciones.IdColonias = Colonias.Id 
join Municipios on Colonias.IdMunicipios = Municipios.Id 
join Estados on Municipios.IdEstados = Estados.Id
join Pais on Estados.IdPais = Pais.Id

Select Clientes.Nombre, Clientes.PrimerApellido, Direcciones.Calle, Colonias.Nombre, Municipios.Nombre, Estados.Nombre, Pais.Nombre
from Clientes join Direcciones on Clientes.IdDirecciones = Direcciones.Id
join Colonias on Direcciones.IdColonias = Colonias.Id 
join Municipios on Colonias.IdMunicipios = Municipios.Id 
join Estados on Municipios.IdEstados = Estados.Id
join Pais on Estados.IdPais = Pais.Id

Select Empleados.Nombre, Empleados.PrimerApellido, Direcciones.Calle, Colonias.Nombre, Municipios.Nombre, Estados.Nombre, Pais.Nombre
from Empleados join Direcciones on Empleados.IdDirecciones = Direcciones.Id
join Colonias on Direcciones.IdColonias = Colonias.Id 
join Municipios on Colonias.IdMunicipios = Municipios.Id 
join Estados on Municipios.IdEstados = Estados.Id
join Pais on Estados.IdPais = Pais.Id

Select Proveedores.Nombre, Proveedores.PrimerApellido, Direcciones.Calle, Colonias.Nombre, Municipios.Nombre, Estados.Nombre, Pais.Nombre
from Proveedores join Direcciones on Proveedores.IdDirecciones = Direcciones.Id
join Colonias on Direcciones.IdColonias = Colonias.Id 
join Municipios on Colonias.IdMunicipios = Municipios.Id 
join Estados on Municipios.IdEstados = Estados.Id
join Pais on Estados.IdPais = Pais.Id

Select Productos.Nombre, Productos.Precio,  Departamentos.Nombre, TipoDepartamento.Nombre
from Productos join Departamentos on Productos.IdDepartamento = Departamentos.Id
join TipoDepartamento on Departamentos.IdTipoDepartamento = TipoDepartamento.Id

Select Proveedores.Nombre, Proveedores.PrimerApellido, TelefonoProveedores.Numero, TipoTelefono.TipoTelefono
from Proveedores join TelefonoProveedores on Proveedores.IdTelefonoProveedores = TelefonoProveedores.Id
join TipoTelefono on TelefonoProveedores.IdTipoTelefono = TipoTelefono.Id


--1 SELECT INTO, DROP, INSERT SELECT INTO
SELECT * INTO ProductosBackup FROM Productos
SELECT * INTO AlmacenBackup FROM Almacen

INSERT INTO ProductosBackup(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)
SELECT Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen
FROM Productos
WHERE 
	Precio > 200;

DROP TABLE AlmacenBackup
