--Practica 7


--10 vistas/ VIEW
CREATE VIEW Vista1 
AS   
SELECT Productos.Nombre, Productos.Precio, InventarioAlmacen.Cantidad, InventarioAlmacen.Existencia
FROM Productos  
JOIN InventarioAlmacen ON Productos.Id = InventarioAlmacen.Id
GO  

CREATE VIEW Vista2 
AS   
SELECT Empleados.Id, Empleados.Nombre, Ventas.IdEmpleado, Ventas.FechaVenta
FROM Empleados
JOIN Ventas ON Empleados.Id = Ventas.Id
GO  

CREATE VIEW Vista3
AS   
SELECT Clientes.Id, Clientes.Nombre, Ventas.IdCliente, Ventas.FechaVenta
FROM Clientes
JOIN Ventas ON Clientes.Id = Ventas.Id
GO 

CREATE VIEW Vista4 
AS   
SELECT Productos.IdDepartamento, Departamentos.Nombre 
FROM Productos
JOIN Departamentos ON  Productos.Id = Departamentos.Id
GO 

CREATE VIEW Vista5 
AS   
SELECT Proveedores.IdTelefonoProveedores, Proveedores.Empresa, TelefonoProveedores.Numero
FROM Proveedores
JOIN TelefonoProveedores ON Proveedores.Id = TelefonoProveedores.Id
GO 

CREATE VIEW Vista6
AS   
SELECT Clientes.IdTelefonoCliente, Clientes.Nombre, TelefonoClientes.Numero
FROM Clientes
JOIN TelefonoClientes ON Clientes.Id = TelefonoClientes.Id
GO  

CREATE VIEW Vista7
AS   
SELECT Empleados.IdTelefonoEmpleados, Empleados.Nombre, TelefonoEmpleados.Numero
FROM Empleados
JOIN TelefonoEmpleados ON Empleados.Id = TelefonoEmpleados.Id
GO  

CREATE VIEW Vista8 
AS   
SELECT Ventas.IdCliente, Ventas.FechaVenta, Clientes.Id, Clientes.Nombre
FROM Ventas
JOIN Clientes ON Ventas.Id = Clientes.Id
GO 

CREATE VIEW Vista9 
AS   
SELECT Empleados.IdDirecciones, Empleados.Nombre, Direcciones.Id, Direcciones.Calle, Direcciones.NumeroExterior
FROM Empleados 
JOIN Direcciones ON Empleados.Id = Direcciones.Id
GO 

CREATE VIEW Vista10
AS   
SELECT Clientes.IdDirecciones, Clientes.Nombre, Direcciones.Id, Direcciones.Calle, Direcciones.NumeroExterior
FROM Clientes 
JOIN Direcciones ON Clientes.Id = Direcciones.Id
GO 


--1 vista con WITH
CREATE VIEW VistaW
WITH ENCRYPTION  
AS  
SELECT Proveedores.Id  
FROM Proveedores
GO

/*select*from dbo.Direcciones
select*from dbo.Colonias*/