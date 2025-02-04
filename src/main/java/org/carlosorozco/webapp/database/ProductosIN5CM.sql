-- drop database ProductosIN5CM;

create database if not exists ProductosIN5CM;

use ProductosIN5CM;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(30),
    marcaProducto varchar(30),
    descripcionProducto varchar(100),
    precio decimal(10,2),
    primary key PK_productoId(productoId)
);

select * from Productos;
 
Set global time_zone = '-6:00'