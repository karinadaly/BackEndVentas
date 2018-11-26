-- create database ventas_umg;
use ventas_umg;
/*
create table categorias(
 codigo_categoria int not null primary key auto_increment,
 descripcion varchar(128)
) engine = InnoDB;*/

/*create table tipo_empaques(
 codigo_tipo_empaque int not null primary key auto_increment,
 descripcion varchar(128)
) engine = InnoDB;*/

/*create table productos(
 codigo_producto int not null primary key auto_increment,
 descripcion varchar(128) not null,
 precio_unitario decimal(10,2) default 0.00,
 precio_docena decimal(10,2) default 0.00,
 precio_por_mayor decimal(10,2) default 0.00,
 existencia int default 0,
 imagen varchar(128) default 'no_asignado.png',
 codigo_categoria int not null,
 codigo_tipo_empaque int not null,
 constraint FK_productos_categoria foreign key (codigo_categoria) references categorias(codigo_categoria),
 constraint FK_productos_tipo_empaques foreign key (codigo_tipo_empaque) references tipo_empaques(codigo_tipo_empaque)
)engine = InnoDB;*/

create table clientes(
codigo_cliente int not null primary key auto_increment,
nit varchar(128),
dpi varchar(128),
nombre varchar(128)
)engine = InnoDB;

create table email_clientes(
codigo_email int not null primary key auto_increment,
email varchar(128),
descripcion varchar(128),
codigo_cliente int not nullproductos,
constraint FK_email_clientes_clientes foreign key (codigo_cliente) references clientes(codigo_cliente)
)engine = InnoDB;

create table direccion_clientes(
codigo_direccion int not null primary key auto_increment,
direccion varchar(128),
descripcion varchar(128),
codigo_cliente int,
constraint FK_direccion_clientes_cliente foreign key (codigo_cliente) references clientes(codigo_cliente)
)engine= InnoDB;

drop table direccion_clientes;

create table facturas(
codigo_factura int not null primary key auto_increment,
numero_factura int,
serie varchar(50),
fecha_factura datetime,
codigo_cliente int,
total numeric(10,2),
constraint FK_facturas_clientes foreign key (codigo_cliente) references clientes(codigo_cliente)

)engine= InnoDB;

create table telefono_clientes(
codigo_telefono int not null primary key auto_increment,
numero_telefono varchar(128),
descripcion varchar(128),
codigo_cliente int,
constraint FK_telefono_clientes_clientes foreign key (codigo_cliente) references clientes(codigo_cliente)
)engine= InnoDB;

create table detalle_factura(
codigo_factura_detalle int not null primary key auto_increment,
codigo_factura int,
codigo_producto int,
precio numeric(10,2),
cantidad int,
sub_total numeric(10,2),
constraint FK_detalle_factura_facturas foreign key (codigo_factura) references facturas(codigo_factura),
constraint FK_detalle_factura_productos foreign key (codigo_producto) references productos(codigo_producto)
)engine= InnoDB;

create table tipo_registro(
codigo_tipo_registro int not null primary key auto_increment,
descripcion varchar(128)
)engine= InnoDB;

create table inventarios(
correlativo int not null primary key auto_increment,
codigo_tipo_registro int,
salidas int,
entradas int,
codigo_producto int,
precio numeric(10,2),
fecha datetime,
constraint FK_inventarios_tipo_registo foreign key (codigo_tipo_registro) references tipo_registro(codigo_tipo_registro),
constraint FK_inventarios_tipo_productos foreign key (codigo_producto) references productos(codigo_producto)
)engine= InnoDB;

create table proveedores(
codigo_proveedor int not null primary key auto_increment,
nit varchar(128),
razon_social varchar(128),
pagina_web varchar(128),
contacto_principal varchar(256)
)engine= InnoDB;


create table email_proveedores(
codigo_email int not null primary key auto_increment,
email varchar(128),
descripcion varchar(128),
codigo_proveedor int,
constraint FK_email_proveedores_proveedores foreign key(codigo_proveedor) references proveedores(codigo_proveedor)
)engine= InnoDB;


create table telefono_proveedores(
codigo_telefono int not null primary key auto_increment,
numero_telefono varchar(128),
descripcion varchar(128),
codigo_proveedor int,
constraint FK_telefono_proveedores_Proveedores foreign key(codigo_proveedor) references proveedores(codigo_proveedor)

)engine= InnoDB;


create table direccion_proveedores(
codigo_direccion int not null primary key auto_increment,
direccion varchar(128),
descripcion varchar(128),
codigo_proveedor int,
constraint FK_direccion_proveedores_proveedores foreign key (codigo_proveedor) references proveedores(codigo_proveedor)
)engine= InnoDB;

create table compras(
numero_documento int not null primary key auto_increment,
fecha datetime,
codigo_proveedor int,
total_compra numeric(10,2),
nombre_usuario varchar(128),
constraint FK_compras_Proveedores foreign key (codigo_proveedor) references proveedores(codigo_proveedor)
)engine= InnoDB;

create table detalle_compras(
codigo_detalle_compra int not null primary key auto_increment,
numero_documento int,
codigo_producto int, 
cantidad int,
precio numeric(10,2),
subtotal numeric(10,2),
constraint FK_detalle_compras_compras foreign key (numero_documento) references compras(numero_documento),
constraint FK_detalle_compras_productos foreign key (codigo_producto) references productos(codigo_producto)
)engine= InnoDB;





