/* Nombre: Railina Abreu Matricula: 21-EIIT-1-054 Seccion: 0541 */

CREATE DATABASE EmpresaDataMind;

CREATE TABLE Cliente (
   IdCliente int IDENTITY(1,1) PRIMARY KEY,
   Nombre varchar(50) NOT NULL,
   Apellido varchar(50) NOT NULL,
   Direcci�n varchar(100) NOT NULL,
   Tel�fono varchar(20) NOT NULL,
   Email varchar(100) NOT NULL UNIQUE
);

CREATE TABLE Servicio (
   IdServicio int IDENTITY(1,1) PRIMARY KEY,
   Nombre varchar(50) NOT NULL,
   Descripci�n varchar(500) NOT NULL,
   Precio decimal(10,3) NOT NULL
);

CREATE TABLE Pedido (
   IdPedido int IDENTITY(1,1) PRIMARY KEY,
   Fecha date NOT NULL,
   Total decimal(10,3) NOT NULL,
   IdCliente int NOT NULL,
   FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);