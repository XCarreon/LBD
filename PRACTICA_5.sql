--Inserts

--Almacen
INSERT dbo.Almacen(Id, NombreAlmacen)  
    VALUES (NEWID(), 'Almacen Stussy')
GO
INSERT dbo.Almacen(Id, NombreAlmacen)  
    VALUES (NEWID(), 'Almacen Bape')
GO
INSERT dbo.Almacen(Id, NombreAlmacen)  
    VALUES (NEWID(), 'Almacen Supreme')
GO
INSERT dbo.Almacen(Id, NombreAlmacen)  
    VALUES (NEWID(), 'Almacen Adidas')
GO
INSERT dbo.Almacen(Id, NombreAlmacen)  
    VALUES (NEWID(), 'Almacen Nike')
GO

--Clientes
INSERT dbo.Clientes(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, IdDirecciones, IdTelefonoCliente)  
    VALUES (NEWID(), 'Jorge Alberto', 'Rogriguez', 'Castillo', '04/26/1996', NEWID() , NEWID())  
GO
INSERT dbo.Clientes(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, IdDirecciones, IdTelefonoCliente)  
    VALUES (NEWID(), 'Yarelli Fabiola', 'Guerrero', 'Medellin', '11/10/1997', NEWID() , NEWID())  
GO
INSERT dbo.Clientes(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, IdDirecciones, IdTelefonoCliente)  
    VALUES (NEWID(), 'Jaime Alejandro', 'Carreon', 'Gomez', '10/02/1998', NEWID() , NEWID())  
GO
INSERT dbo.Clientes(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, IdDirecciones, IdTelefonoCliente)  
    VALUES (NEWID(), 'Eder', 'Moran', 'Garcia', '02/03/2000', NEWID() , NEWID())  
GO
INSERT dbo.Clientes(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, IdDirecciones, IdTelefonoCliente)  
    VALUES (NEWID(), 'Maria Jose', 'Ortiz', 'Reyna', '04/26/1992', NEWID() , NEWID())  
GO


--Colonias
--Colonias Clientes
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Cumbres','D28CDC38-6D1A-4348-8A4A-7DC883B34651')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id) 
    VALUES (NEWID(), 'El Mirador','D88EC04A-5705-4608-BA0D-E46F479F70BD')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Rincon de San Miguel','10F722F2-16AC-4F5C-8C44-76524193FBF9')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id) 
    VALUES (NEWID(), 'La loma','0393ED2C-7CD9-4CD9-95A7-CD6BE494E230')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)
    VALUES (NEWID(), 'Las Torres','1DA8310F-9049-43F8-8928-6A392BEFA776')
GO
--Colonias Empleados
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Balcones de Anahuac','FD1025ED-D555-4A86-8084-BF1B87CC49C9')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Metroplex','AE98E69A-1072-4958-9E9D-BEDFB3E5349C')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'San Carlos','33BFE342-C5EF-4888-918F-950921E2B72C')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Balcones de San Miguel','B600B252-AE61-4A9F-9497-0099B7D8ED6C')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'El Roble','FFECAD46-3106-47BB-A33E-3954448DE2F3')
GO
--Colonias Proveedores
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Ebanos II','97C4A3D5-C8F2-44F8-B325-91A9803CD21F')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Balcones','357ECF2C-B5E7-4203-9E63-FFADD54F2AF2')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'Ebanos IV','3B8BA556-BF12-440F-B27A-8184ED437262')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id)  
    VALUES (NEWID(), 'El Valle','806A4ADF-1400-4E0C-97A7-632F643693B4')
GO
INSERT dbo.Colonias(IdMunicipios, Nombre, Id) 
    VALUES (NEWID(), 'Country','643381A9-DDB5-4EA7-AFD1-14A6DD20B5F9')
GO


--Departamentos
--Inserts incorrectos/Delete
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Ropa', NEWID())
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Calzado', NEWID())
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Accesorios', NEWID())
GO
--Departamentos correctos
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), '1', 'F000D00D-E805-4877-969F-BADFF922D71F')
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), '2', '858337FB-B0B9-43DD-B6C2-9CDDAF91BA87')
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), '3', 'AFCDA5DC-8B99-44FC-9643-9C032C924CF6')
GO

--DetalleVentas
INSERT dbo.DetalleVentas(Id, IdInventarioAlmacen, IdVentas)  
    VALUES (NEWID(), NEWID(), NEWID())
GO
INSERT dbo.DetalleVentas(Id, IdInventarioAlmacen, IdVentas)  
    VALUES (NEWID(), NEWID(), NEWID())
GO
INSERT dbo.DetalleVentas(Id, IdInventarioAlmacen, IdVentas)  
    VALUES (NEWID(), NEWID(), NEWID())
GO


--Direcciones
--Direcciones Clientes
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('42DE5023-66F0-4F52-81FF-01B3E4FCB5CF', 'Oro', '1049', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('600A56B5-5FF7-480F-BE7D-7B09C7B10A67', 'Las Rosas', '520', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('BD626256-89A1-4CF6-B066-1E79BF2CAB3D', 'Del Alcazar', '1504', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('9062B739-9D00-4FA6-8884-8C94D64A8484', 'Del Alheli', '1039', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('403A7C8C-A6FE-4C48-8ED8-0D25B278F70F', 'Tulipan', '5116', '', NEWID())  
GO
--Direcciones Empleados
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('126427DC-3ED9-4FCE-9176-A3E9A24AEA48', 'Juan Ignacio', '196', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('C3D59DEF-A3EF-4630-A604-B5672FD1C39A', 'Roble', '360', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('59CB34AF-CFE4-401B-81D6-760C5AFF2BDB', 'Benito Juarez', '2003', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('955E9FE9-7A5C-4214-A17D-53EEF2A6CEE3', 'Juarez', '230', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('528EEDB2-6C4F-423D-8C09-F6E2DB8E148A', 'Colon', '965', '', NEWID())  
GO
--Direcciones Proveedores
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('CF42A265-9C71-4E8F-9FA8-89D0D0CF7D0E', 'Encino', '165', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('E1B2388B-BDD1-4284-878F-30853502B913', 'Terranova', '260', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('72FE1CAA-AE2E-4C1A-8ACE-17AD17C98AEE', 'Lirio', '214', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('F094E746-2D0B-49E8-9436-B38CA814203C', 'Plata', '400', '', NEWID())  
GO
INSERT dbo.Direcciones(Id, Calle, NumeroExterior, NumeroInterior, IdColonias)  
    VALUES ('75070EE5-094C-498A-8B22-355196737673', 'De la Alondra', '1050', '', NEWID())  
GO


--Empleados
INSERT dbo.Empleados(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, FechaIngreso,IdDirecciones, IdTelefonoEmpleados)  
    VALUES (NEWID(), 'Kenneth', 'Rodriguez', 'Hernandez', '11/18/1997', '02/02/2017',NEWID() , NEWID())  
GO
INSERT dbo.Empleados(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, FechaIngreso,IdDirecciones, IdTelefonoEmpleados)  
    VALUES (NEWID(), 'Antonio', 'Garcia', 'Castro', '12/07/1998', '09/21/2017',NEWID() , NEWID())  
GO
INSERT dbo.Empleados(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, FechaIngreso,IdDirecciones, IdTelefonoEmpleados)  
    VALUES (NEWID(), 'Arlette', 'Castro', 'Reyna', '08/25/1999', '01/15/2018',NEWID() , NEWID())  
GO
INSERT dbo.Empleados(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, FechaIngreso,IdDirecciones, IdTelefonoEmpleados)  
    VALUES (NEWID(), 'Lauro', 'Cabello', 'Alvarez', '11/14/1973', '09/21/2016',NEWID() , NEWID())  
GO
INSERT dbo.Empleados(Id, Nombre, PrimerApellido, SegundoApellido, FechaNacimiento, FechaIngreso,IdDirecciones, IdTelefonoEmpleados)  
    VALUES (NEWID(), 'Andrea', 'Camacho', 'Perez', '04/16/1999', '08/29/2018',NEWID() , NEWID())  
GO

--Estados
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('42AFBF22-D822-481E-B7E2-293040B115E7', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('5E9B6FE2-8C32-4296-8AFB-9F565ABEC40E', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('098F9D7A-A935-4C66-9FD4-C150C09825FC', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('6FA3A84F-0A48-4482-9711-336D869FA7FA', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('7C08E678-C736-42FE-ABF8-CDC7B5BC737D', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('DD103809-BF1B-43B3-8431-56B5CEB9ED30', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('4F33AEE9-0928-476A-B059-BC652A7BDE57', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('B3CE8016-A630-4DA2-85E1-CAF8E3930979', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('B20BC526-BAF2-4800-9748-BDF9569AFDD9', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('D24EBBB7-7687-4A7B-8497-0ACB1C2FF631', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('6A3474F4-48F7-48FE-B3B7-BFF7C0FD1DD5', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('A224C0D3-5223-4C1E-BFE7-503BB32759EC', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('7D12EDA8-00F3-41A6-A13D-E4D39CAD87E7', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('F6BC11CD-236B-4AC1-8E1E-BDC1F6B5B612', 'Nuevo Leon', NEWID())
GO
INSERT dbo.Estados(Id, Nombre, IdPais)  
    VALUES ('2D1C07B9-3E02-46D7-A32B-6F241278BFD4', 'Nuevo Leon', NEWID())
GO


--InventarioAlmacen
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '67E638F5-C840-4070-844C-04F1E5CDF7CDA', NEWID(), '103', 'Si', 'EC06E9E9-EFDC-465E-AF93-797ADE898C59')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '67E638F5-C840-4070-844C-04F1E5CDF7CD', NEWID(), '0', 'No', 'EC06E9E9-EFDC-465E-AF93-797ADE898C59')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '881DD728-7E3B-4690-9169-2EBF9B338FCF', NEWID(), '50', 'Si', 'F6A13F3B-C3B1-470A-9C59-ABAF8E135983')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '881DD728-7E3B-4690-9169-2EBF9B338FCF', NEWID(), '20', 'Si', 'F6A13F3B-C3B1-470A-9C59-ABAF8E135983')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), 'A0CA063B-A2EF-4487-954B-65FDF1AEDC26', NEWID(), '41', 'No', '3FE783BD-348A-4F1C-A3F8-9678A1EE9E08')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), 'A0CA063B-A2EF-4487-954B-65FDF1AEDC26', NEWID(), '38', 'Si', '3FE783BD-348A-4F1C-A3F8-9678A1EE9E08')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), 'EC677C15-5529-4067-8F05-7962FD7FB612', NEWID(), '73', 'Si', '83196EEA-585B-4F6F-9BF6-8C2DACC9664F')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), 'EC677C15-5529-4067-8F05-7962FD7FB612', NEWID(), '34', 'Si', '83196EEA-585B-4F6F-9BF6-8C2DACC9664F')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '1E69F94D-289A-4B1C-89DA-8ABF502F093A', NEWID(), '18', 'Si', '928DD428-C8B9-4725-996E-DF22E44ECCFE')
GO
INSERT dbo.InventarioAlmacen(Id, IdAlmacen, IdProductos, Cantidad, Existencia, IdProveedores)  
    VALUES (NEWID(), '1E69F94D-289A-4B1C-89DA-8ABF502F093A', NEWID(), '25', 'Si', '928DD428-C8B9-4725-996E-DF22E44ECCFE')
GO


--Municipios
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('EDA3C037-A185-4C6D-A5D3-94E0D1B9E66B', 'Guadalupe', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('3DB4A2F2-532F-4CF3-9CE0-E16755154D3F', 'San Pedro', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('C8ACC899-F8BE-4881-A422-C943FB8BD1C0', 'San Nicolas de los Gaeza', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('21B481FB-50C9-46F0-9C33-CAC5E3BD7509', 'Escobedo', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('08A290CF-1BE1-459E-A254-B328E38CF501', 'Cumbres', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('8D289C56-5A64-42E0-ADD9-182BFA434D86', 'Anahuac', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('D8799FD5-FF5A-406C-B4D0-52CDB5F1964B', 'San Nicolas de los Garza', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('F65A8ABE-3115-4E87-B7B7-86089904D3D8', 'Santa Catarina', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('D901462B-B927-423F-B948-1C55B1006D60', 'Monterrey', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('573F487E-63F5-4EE7-A09D-2CF87F01301F', 'Guadalupe', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('FFD30C17-106C-4279-823E-F5CE0CF20D2E', 'Anahuac', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('CEFD7D5D-CA8D-4B7B-A789-9B63A5B140A2', 'San Pedro', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('BB592604-6973-4791-BD44-345FD5B4CE05', 'Gomez Morin', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('B0661925-184D-4454-9F34-F2131BB61600', 'Juarez', NEWID())
GO
INSERT dbo.Municipios(Id, Nombre, IdEstados)  
    VALUES ('5DD7D6AD-7659-438B-86F4-3C63C2379669', 'Escobedo', NEWID())
GO


--Pais
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('AF7A859D-13D3-4814-A53C-B8975B9F6E9D', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('B6261C30-751D-43A1-B684-71FE9568348F', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('AE9814DC-9B26-447B-BE98-4FD57C366F3A', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('DB6FF406-7EA4-4EDD-B588-A4AC2125AF10', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('4C6F6F41-D863-44B8-A635-A00C7BD3BE68', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('0A6FCC8C-11D1-4274-99DE-957D141A8373', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('AEBEE138-F1C7-4FB9-9FB9-D2A6822CF1BB', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('B22791E0-914E-4349-B7C1-71F899F876DD', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('CFE7195B-8168-49AF-9B97-0FE913D0EA05', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('71BEC7E6-83FE-486C-965B-61FFDF096E43', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('25C4E215-A366-461C-B482-E410470D9F3A', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('E6BA9022-9A2F-4EFB-8262-1678FAB57CC4', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('145D715D-4923-4BC1-9C04-281CCBDAD42A', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('6F7A257F-7AB3-491D-B198-332F5590A4BB', 'Mexico')
GO
INSERT dbo.Pais(Id, Nombre)  
    VALUES ('2C168D7E-8DE3-422C-B5D1-27B779492D0F', 'Mexico')
GO

--Productos
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('A64386C4-109E-4540-A8BF-806643436BD2', 'Lentes Glow', '450.00', '0F283E9B-D701-4DB7-9ED4-271AEDA060C2', '550F8845-6C51-473C-B8F8-283F036033CB')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('6C883CE8-84E9-4DB3-A630-5C1093956644', 'Bolso de Mano', '500.00', '6C883CE8-84E9-4DB3-A630-5C1093956644', '6C883CE8-84E9-4DB3-A630-5C1093956644')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('CBD379E7-049C-425C-B26B-18C584281642', 'Tenis Air Max', '1500.00', '4DFFBA36-C95B-4343-97EB-DA2C156E856D', '9074D34D-F71D-4B37-AD95-604DBF87F846')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('98682318-CEB1-4D7F-9357-CD0E1A2605F8', 'Jompper', '300.00', '4DFFBA36-C95B-4343-97EB-DA2C156E856D', 'BE7128DF-4B64-48A2-8C3D-6A0EE2B8CA26')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('9E874D90-9953-4D1C-8686-B068538AC15B','T-shirt', '350.00','4DFFBA36-C95B-4343-97EB-DA2C156E856D', '3CBFE022-48CA-4FD4-A826-978B8FDDEF4B')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('5702092F-DAD2-4E60-94C9-09D2B29C4543', 'Crop Top', '250.00','4DFFBA36-C95B-4343-97EB-DA2C156E856D', '7EF945DD-5BA5-4529-BAC9-AE7818A7BC17')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('B4BD62FC-142C-4146-A60B-D3A73CB85071', 'Sudadera', '650.00','4DFFBA36-C95B-4343-97EB-DA2C156E856D', '1A7285EE-C1B5-4400-A4BA-BFE9C4C4689D')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('4CAF2FE8-AFCE-4AAC-96D5-8D2483B49658','Botas', '3200.00','63607F25-818A-4070-B113-7AC550C5E49E', 'D8376CE0-D0C0-4A4A-80E3-D42D2D5604F3')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('6C88B7B0-4CA4-48C3-AA9A-EDD8CC7F2117', 'Cangurera', '500.00', '63607F25-818A-4070-B113-7AC550C5E49E', 'A3C81247-849F-452A-AE0A-DB473D3AD04B')
GO
INSERT dbo.Productos(Id, Nombre, Precio, IdDepartamento, IdInventarioAlmacen)  
    VALUES ('0DC34F9A-F5CA-43E1-91B7-7A08F91046C9', 'Shoes RS X', '1000.00','63607F25-818A-4070-B113-7AC550C5E49E', 'A0D62FDA-D36B-4F3F-88FC-E67136FCE031')
GO


--Proveedores
INSERT dbo.Proveedores(Id, Nombre, PrimerApellido, SegundoApellido, Empresa, IdDirecciones, IdTelefonoProveedores)  
    VALUES (NEWID(), 'Lizbeth', 'García', 'Perez', 'Stussy', NEWID() , NEWID())  
GO
INSERT dbo.Proveedores(Id, Nombre, PrimerApellido, SegundoApellido, Empresa, IdDirecciones, IdTelefonoProveedores)  
    VALUES (NEWID(), 'Javier', 'Almaraz', 'Jimenez', 'Bape', NEWID() , NEWID())  
GO
INSERT dbo.Proveedores(Id, Nombre, PrimerApellido, SegundoApellido, Empresa, IdDirecciones, IdTelefonoProveedores)  
    VALUES (NEWID(), 'Nicole', 'Garza', 'Garza', 'Supreme', NEWID() , NEWID())  
GO
INSERT dbo.Proveedores(Id, Nombre, PrimerApellido, SegundoApellido, Empresa, IdDirecciones, IdTelefonoProveedores)  
    VALUES (NEWID(), 'Andres', 'Bracamontes', 'Hernandez', 'Adidas', NEWID() , NEWID())  
GO
INSERT dbo.Proveedores(Id, Nombre, PrimerApellido, SegundoApellido, Empresa, IdDirecciones, IdTelefonoProveedores)  
    VALUES (NEWID(), 'Lucia', 'Loredo', 'Cordova', 'Nike', NEWID() , NEWID())  
GO


--TelefonoClientes
INSERT dbo.TelefonoClientes(Id, Numero, IdTipoTelefono)  
    VALUES ('25EE67FF-DDAB-475B-9552-7390AC7223C5', '82456756', '4DD1C0B8-25FD-482C-BFC8-91ED2B2D444E')
GO
INSERT dbo.TelefonoClientes(Id, Numero, IdTipoTelefono)  
    VALUES ('037EEF86-2EFC-4D8D-87EC-D6E2E1AC8A00', '45670987', '4DD1C0B8-25FD-482C-BFC8-91ED2B2D444E')
GO
INSERT dbo.TelefonoClientes(Id, Numero, IdTipoTelefono)  
    VALUES ('6818764B-B240-444F-B7CA-94B124140055', '8112130652', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoClientes(Id, Numero, IdTipoTelefono)  
    VALUES ('B06BA565-36AC-449A-91D1-8E393AD7ECA3', '8181263782', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoClientes(Id, Numero, IdTipoTelefono)  
    VALUES ('596DB0D0-0FE9-4EE8-A162-3F010CF6567F', '8282814367', '0D6CCB05-E718-43B7-AD80-09F76A24EB731')
GO



--TelefonoEmpleados
INSERT dbo.TelefonoEmpleados(Id, Numero, IdTipoTelefono)  
    VALUES ('95CEEBF2-70F1-466E-9F62-B0971735692A', '8123452679', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoEmpleados(Id, Numero, IdTipoTelefono)  
    VALUES ('03FA8043-0CD8-4441-9F9E-CF183ADCA02A', '8281867709', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoEmpleados(Id, Numero, IdTipoTelefono)  
    VALUES ('8E3F2FDA-E8F1-464A-B924-1D5E9D9EFAFD', '8218890983', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoEmpleados(Id, Numero, IdTipoTelefono)  
    VALUES ('F2A94EDA-0FF6-4BB6-8AE5-4767DAA71FEA', '81829987', '4DD1C0B8-25FD-482C-BFC8-91ED2B2D444E')
GO
INSERT dbo.TelefonoEmpleados(Id, Numero, IdTipoTelefono)  
    VALUES ('DFE47DC0-E1E7-4A18-A718-DBFA8C96F483', '8182899839', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO


--TelefonoProveedores
INSERT dbo.TelefonoProveedores(Id, Numero, IdTipoTelefono)  
    VALUES ('FB3E09E9-2C6E-4869-89AB-8E24A33ABC97', '45697038', '7EB11825-8C26-4AF8-A71E-2895BECEED53')
GO
INSERT dbo.TelefonoProveedores(Id, Numero, IdTipoTelefono)  
    VALUES ('A48B42B3-A762-4C52-96DF-990894A17B58', '82360985', '7EB11825-8C26-4AF8-A71E-2895BECEED53')
GO
INSERT dbo.TelefonoProveedores(Id, Numero, IdTipoTelefono)  
    VALUES ('C529DF9C-B330-439B-8B79-89C06DD28A49', '8111457097', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO
INSERT dbo.TelefonoProveedores(Id, Numero, IdTipoTelefono)  
    VALUES ('8DBC8F11-411E-4C10-8303-C1A28D0AAA22', '82600976', '7EB11825-8C26-4AF8-A71E-2895BECEED53')
GO
INSERT dbo.TelefonoProveedores(Id, Numero, IdTipoTelefono)  
    VALUES ('35364A51-AB7F-4C55-B755-6FB3A00A0121', '8155689208', '0D6CCB05-E718-43B7-AD80-09F76A24EB73')
GO


--TipoDepartamento
--Inserts equivovados/Delete
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Ropa', NEWID())
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Calzado', NEWID())
GO
INSERT dbo.Departamentos(Id, Nombre, IdTipoDepartamento)  
    VALUES (NEWID(), 'Accesorios', NEWID())
GO
--Inserts correctos
INSERT dbo.TipoDepartamento(Id, Nombre)  
    VALUES (NEWID(), 'Ropa')
GO
INSERT dbo.TipoDepartamento(Id, Nombre)  
    VALUES (NEWID(), 'Calzado')
GO
INSERT dbo.TipoDepartamento(Id, Nombre)  
    VALUES (NEWID(), 'Accesorios')
GO


--TipoTelefono
INSERT dbo.TipoTelefono(Id,TipoTelefono)  
    VALUES (NEWID(), 'Casa')
GO
INSERT dbo.TipoTelefono(Id,TipoTelefono)  
    VALUES (NEWID(), 'Celular')
GO
INSERT dbo.TipoTelefono(Id,TipoTelefono)  
    VALUES (NEWID(), 'Empresa')
GO


--Ventas
INSERT dbo.Ventas(Id, IdDetalleVentas, FechaVenta, IdEmpleado, IdCliente)  
    VALUES ('FA19573E-EDCB-4D1D-AFE1-66F5FFCD0247', '95B72619-3D35-4049-A353-0C1007F1EFE7', '11/15/2017','E5E1F25A-772F-45FF-98E0-3A67D28E981E', 'D94B4BFF-8799-44AB-88D0-B9CDF9DD415F')
GO
INSERT dbo.Ventas(Id, IdDetalleVentas, FechaVenta, IdEmpleado, IdCliente)  
    VALUES ('268B5465-7038-4534-8059-B5B2F4E1FD40', 'A52C4500-7632-4AE2-888F-A62757DD0DC5', '09/11/2017','2FBFDE4C-80A4-43AA-A1E5-8091DA4E4288', '3F1E6DC7-96FA-46ED-8BAC-6187AC4DC3E3')
GO
INSERT dbo.Ventas(Id, IdDetalleVentas, FechaVenta, IdEmpleado, IdCliente)  
    VALUES ('E78F3824-7E75-4D21-93B8-AD6497A19C4C', '7798BA23-E3A5-4EDA-B500-E812DD13C7AC', '10/21/2017','6A48F522-E55C-4658-B6CA-ECC70B424C0F', 'F4CE1C09-480D-4C16-A6EB-EBE9581F6FA1')
GO


--DELETE
DELETE FROM	Departamentos where Id = '26983BB3-7F15-40B0-A2A6-1F2C2CC971A9'
DELETE FROM	Departamentos where Id = '78C7651D-A462-4C9C-A2AD-448286EFFEA3'
DELETE FROM	Departamentos where Id = 'C5735D0B-242F-453C-B30B-493B06CBB36E'
DELETE FROM	Departamentos where Id = 'B26FB213-8B96-4F0C-BD97-8A717365C6D7'
DELETE FROM	Departamentos where Id = '024BC7EB-0FCD-4BA4-9652-927F01E2F76F'
DELETE FROM	Departamentos where Id = '830BBC24-9053-4E08-ABFA-D1873B262F58'

DELETE FROM	Productos where Id = '5702092F-DAD2-4E60-94C9-09D2B29C4543'
DELETE FROM	Productos where Id = 'B4BD62FC-142C-4146-A60B-D3A73CB85071'

DELETE FROM	InventarioAlmacen where Id = '7EF945DD-5BA5-4529-BAC9-AE7818A7BC17'
DELETE FROM	InventarioAlmacen where Id = '1A7285EE-C1B5-4400-A4BA-BFE9C4C4689D'

--UPDATE
UPDATE Productos 
SET Precio = '155.00'
WHERE Id = 'CBD379E7-049C-425C-B26B-18C584281642'
UPDATE Productos 
SET Precio = '550.00'
WHERE Id = '6C883CE8-84E9-4DB3-A630-5C1093956644'
UPDATE Productos 
SET Precio = '999.00'
WHERE Id = '0DC34F9A-F5CA-43E1-91B7-7A08F91046C9'
UPDATE Productos 
SET Precio = '420.00'
WHERE Id = 'A64386C4-109E-4540-A8BF-806643436BD2'
UPDATE Productos 
SET Precio = '440.00'
WHERE Id = '4CAF2FE8-AFCE-4AAC-96D5-8D2483B49658'
UPDATE Productos 
SET Precio = '99.99'
WHERE Id = '9E874D90-9953-4D1C-8686-B068538AC15B'
UPDATE Productos 
SET Precio = '280.00'
WHERE Id = '98682318-CEB1-4D7F-9357-CD0E1A2605F8'
UPDATE Productos 
SET Precio = '450.00'
WHERE Id = '6C88B7B0-4CA4-48C3-AA9A-EDD8CC7F2117'

UPDATE Empleados 
SET Nombre = 'Abigail'
WHERE Id = 'D98B0347-8FE9-467B-B501-925CDEF92682'
UPDATE Empleados 
SET Nombre = 'Antonio'
WHERE Id = '144EC73F-F7DE-40CD-8294-A134E84430D3'

Select*From dbo.Productos
Select*From dbo.Empleados
Select*From dbo.Clientes 