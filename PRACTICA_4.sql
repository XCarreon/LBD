USE [Practica_4]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_DetalleVentas]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_InventarioAlmacen]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Departamentos]
GO
ALTER TABLE [dbo].[InventarioAlmacen] DROP CONSTRAINT [FK_InventarioAlmacen_Productos]
GO
ALTER TABLE [dbo].[InventarioAlmacen] DROP CONSTRAINT [FK_InventarioAlmacen_Almacenes]
GO
ALTER TABLE [dbo].[DetalleVentas] DROP CONSTRAINT [FK_DetalleVentas_Ventas]
GO
ALTER TABLE [dbo].[DetalleVentas] DROP CONSTRAINT [FK_DetalleVentas_InventarioAlmacen]
GO
ALTER TABLE [dbo].[Departamentos] DROP CONSTRAINT [FK_Departamentos_TipoDepartamento]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[TipoTelefono]
GO
/****** Object:  Table [dbo].[TipoDepartamento]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[TipoDepartamento]
GO
/****** Object:  Table [dbo].[TelefonoProveedores]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[TelefonoProveedores]
GO
/****** Object:  Table [dbo].[TelefonoEmpleados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[TelefonoEmpleados]
GO
/****** Object:  Table [dbo].[TelefonoClientes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[TelefonoClientes]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Municipios]
GO
/****** Object:  Table [dbo].[InventarioAlmacen]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[InventarioAlmacen]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Estados]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Direcciones]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[DetalleVentas]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Departamentos]
GO
/****** Object:  Table [dbo].[Colonias]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Colonias]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
DROP TABLE [dbo].[Almacenes]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[IdDirecciones] [uniqueidentifier] NOT NULL,
	[IdTelefono] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colonias]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colonias](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdMunicipios] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Colonias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdTipoDepartamento] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[Id] [uniqueidentifier] NOT NULL,
	[IdInventarioAlmacen] [uniqueidentifier] NOT NULL,
	[IdVentas] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DetalleVentas+] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direcciones](
	[Id] [uniqueidentifier] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[NumeroInterior] [varchar](50) NOT NULL,
	[NumeroExterior] [varchar](50) NULL,
	[IdColonias] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Direcciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaIngreso] [date] NOT NULL,
	[IdTelefonoEmpleados] [uniqueidentifier] NOT NULL,
	[IdDirecciones] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdPais] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventarioAlmacen]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventarioAlmacen](
	[Id] [uniqueidentifier] NOT NULL,
	[IdAlmacenes] [uniqueidentifier] NOT NULL,
	[IdProductos] [uniqueidentifier] NOT NULL,
	[Cantidad] [varchar](50) NOT NULL,
	[Existencia] [varchar](50) NOT NULL,
	[IdProveedores] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_InventarioAlmacen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipios](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdEstados] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Precio] [varchar](50) NOT NULL,
	[IdDepartamento] [uniqueidentifier] NOT NULL,
	[IdInventarioAlmacen] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[IdDireciones] [uniqueidentifier] NOT NULL,
	[IdTelefonoProveedores] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TelefonoClientes]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoClientes](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [int] NOT NULL,
	[IdTipoTelefonos] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TelefonoClientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelefonoEmpleados]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelefonoEmpleados](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [int] NOT NULL,
	[IdTipoTelefono] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TelefonoEmpleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelefonoProveedores]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TelefonoProveedores](
	[Id] [uniqueidentifier] NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[IdTipoTelefono] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TelefonoProveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDepartamento]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDepartamento](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDepartamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoTelefono]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoTelefono](
	[Id] [uniqueidentifier] NOT NULL,
	[TipoTelefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoTelefono] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/03/2019 01:54:54 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id] [uniqueidentifier] NOT NULL,
	[IdDentalleVentas] [uniqueidentifier] NOT NULL,
	[FechaVenta] [date] NOT NULL,
	[IdEmpleados] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Departamentos_TipoDepartamento] FOREIGN KEY([IdTipoDepartamento])
REFERENCES [dbo].[TipoDepartamento] ([Id])
GO
ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FK_Departamentos_TipoDepartamento]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_InventarioAlmacen] FOREIGN KEY([IdInventarioAlmacen])
REFERENCES [dbo].[InventarioAlmacen] ([Id])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_InventarioAlmacen]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Ventas] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Ventas] ([Id])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Ventas]
GO
ALTER TABLE [dbo].[InventarioAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacen_Almacenes] FOREIGN KEY([IdAlmacenes])
REFERENCES [dbo].[Almacenes] ([Id])
GO
ALTER TABLE [dbo].[InventarioAlmacen] CHECK CONSTRAINT [FK_InventarioAlmacen_Almacenes]
GO
ALTER TABLE [dbo].[InventarioAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacen_Productos] FOREIGN KEY([IdProductos])
REFERENCES [dbo].[Productos] ([Id])
GO
ALTER TABLE [dbo].[InventarioAlmacen] CHECK CONSTRAINT [FK_InventarioAlmacen_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Departamentos] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamentos] ([Id])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Departamentos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_InventarioAlmacen] FOREIGN KEY([IdInventarioAlmacen])
REFERENCES [dbo].[InventarioAlmacen] ([Id])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_InventarioAlmacen]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DetalleVentas] FOREIGN KEY([IdDentalleVentas])
REFERENCES [dbo].[DetalleVentas] ([Id])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_DetalleVentas]
GO
