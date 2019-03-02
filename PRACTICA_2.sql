create database LBD_PRACTICA_2

create table Cita(
Id Uniqueidentifier not null primary key,
NumeroMedico varchar(10) not null,
NumeroPaciente varchar(7) not null,
HorarioCita time(8) not null,
DiaCita date(8) not null,
Ubicacion varchar(50) not null,
Descripcion as (Ubicacion + " " + Nombre)
)


create table Paciente(
Id Uniqueidentifier not null primary key,
NumeroPaciente varchar(7) not null,
Nombre varchar(40) not null,
PrimerApellido varchar(10) not null,
SegundoApellido varchar(10) not null,
FechaNacimiento date not null,
Sexo varchar(1) not null,
TelefonoContacto int not null,
Edad as (datediff(year, FechaNacimiento, getdate())),
)

create table Medico(
Id Uniqueidentifier not null primary key,
NombreMedico varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
)

create table Receta(
Id Uniqueidentifier primary key not null,
FechaCita date not null,
)

create table Horarios(
Id Uniqueidentifier not null primary key
Fecha date not null,
HorarioDisponible date not null,
)

create table FechaDisponible(
Id Uniqueidentifier not null primary key,
Fecha date not null,
)

create table  Almacen(
Id Uniqueidentifier not null primary key,
Nombre varchar (20) not null,
Ubicacion varchar (50) not null,
Descripcion as (Ubicacion + " " + Nombre)
)

create table Aula(
Id Uniqueidentifier not null primary key,
Nombre varchar(5) not null,
CantidadDeAsientos int not null,
Ubicacion varchar (20) not null,
Descripcion as (Ubicacion + " " + Nombre)
)

create table Especialidad(
Id Uniqueidentifier not null primary key,
Nombre varchar (7) not null,
AreaDelCuerpoEstudio varchar (20) not null,
)

create table Pago(
Id Uniqueidentifier not null primary key,
Empleado varchar (20) not null,
HorasTrabajadas int not null,
Sueldo money (7) not null,
)
