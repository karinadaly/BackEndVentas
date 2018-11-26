
insert into clientes (nit, dpi, nombre) value 
('1234565151', '1814494051801' , 'Karin');

insert into clientes (nit, dpi, nombre) value 
('2324343212', '1814494061801' , 'Adaly');

insert into clientes (nit, dpi, nombre) value 
('1234561234', '1814494071801' , 'Ana');

insert into clientes (nit, dpi, nombre) value 
('1234565222', '1814494081801' , 'Carlos');

insert into clientes (nit, dpi, nombre) value 
('1234565223', '1814494051801' , 'David');


select * from clientes;

insert into email_clientes (codigo_email, email, descripcion, codigo_cliente) values
('1','karinadalyh@gmail.com', 'responderapido', '1');

insert into email_clientes (codigo_email, email, descripcion, codigo_cliente) values
('2','karinadalyh@hotmail.com', 'responderapido', '2');

insert into email_clientes (codigo_email, email, descripcion, codigo_cliente) values
('3','ana@gmail.com', 'responderapido', '3');

insert into email_clientes (codigo_email, email, descripcion, codigo_cliente) values
('4','carlos@gmail.com', 'responderapido', '4');

insert into email_clientes (codigo_email, email, descripcion, codigo_cliente) values
('5','david@gmail.com', 'responderapido', '5');

select * from email_clientes;

delete from email_clientes where codigo_cliente is null;

insert into direccion_clientes (codigo_direccion, direccion, descripcion, codigo_cliente) values
('1','morales,izabal', 'kilomento 270', '1');

insert into direccion_clientes (codigo_direccion, direccion, descripcion, codigo_cliente) values
('2','puerto barrios ,izabal', '20 calle', '2');

insert into direccion_clientes (codigo_direccion, direccion, descripcion, codigo_cliente) values
('3','morales,izabal', 'kilomento 250', '3');

insert into direccion_clientes (codigo_direccion, direccion, descripcion, codigo_cliente) values
('4','morales,izabal', 'avenida bandegua', '4');

insert into direccion_clientes (codigo_direccion, direccion, descripcion, codigo_cliente) values
('5','morales,izabal', 'caribian', '5');


select * from direccion_clientes;

insert into telefono_clientes (codigo_telefono, numero_telefono, descripcion, codigo_cliente) values
('1','5697027','celular','1');

insert into telefono_clientes (codigo_telefono, numero_telefono, descripcion, codigo_cliente) values
('2','56970328','celular','2');

insert into telefono_clientes (codigo_telefono, numero_telefono, descripcion, codigo_cliente) values
('3','52190588','celular','3');

insert into telefono_clientes (codigo_telefono, numero_telefono, descripcion, codigo_cliente) values
('4','40402333','celular','4');

insert into telefono_clientes (codigo_telefono, numero_telefono, descripcion, codigo_cliente) values
('5','56123434','celular','5');

select * from telefono_clientes;


insert into facturas (codigo_factura, numero_factura, serie, fecha_factura, codigo_cliente) values
('1','101','A','2018-10-10','1');

insert into facturas (codigo_factura, numero_factura, serie, fecha_factura, codigo_cliente) values
('2','102','A','2018-10-10','2');

insert into facturas (codigo_factura, numero_factura, serie, fecha_factura, codigo_cliente) values
('3','103','A','2018-11-10','3');

insert into facturas (codigo_factura, numero_factura, serie, fecha_factura, codigo_cliente) values
('4','104','A','2018-12-10','4');

insert into facturas (codigo_factura, numero_factura, serie, fecha_factura, codigo_cliente) values
('5','105','A','2018-10-12','5');

select * from facturas;

insert into tipo_empaques(codigo_tipo_empaque, descripcion) values
('1','bolsa de papel'); 

insert into tipo_empaques(codigo_tipo_empaque, descripcion) values
('2','caja de carton'); 

insert into tipo_empaques(codigo_tipo_empaque, descripcion) values
('3','bolsa de plastico'); 

insert into tipo_empaques(codigo_tipo_empaque, descripcion) values
('4','bolsa de regalo'); 

insert into tipo_empaques(codigo_tipo_empaque, descripcion) values
('5','caja plastica'); 

select * from tipo_empaques;


insert into categorias (codigo_categoria, descripcion) values
('1','dama');

insert into categorias (codigo_categoria, descripcion) values
('2','caballeros');

insert into categorias (codigo_categoria, descripcion) values
('3','niños');

insert into categorias (codigo_categoria, descripcion) values
('4','hogar');

insert into categorias (codigo_categoria, descripcion) values
('5','libreria');

select * from categorias;

insert into productos (codigo_producto, descripcion, precio_unitario, precio_docena, precio_por_mayor, existencia, imagen, codigo_categoria, codigo_tipo_empaque) values
('1','blusas','100','1000','75','24','','1','2');

insert into productos (codigo_producto, descripcion, precio_unitario, precio_docena, precio_por_mayor, existencia, imagen, codigo_categoria, codigo_tipo_empaque) values
('2','camisas','100','1000','75','24','','1','2');

insert into productos (codigo_producto, descripcion, precio_unitario, precio_docena, precio_por_mayor, existencia, imagen, codigo_categoria, codigo_tipo_empaque) values
('3','trajes','100','1000','75','24','','1','2');

insert into productos (codigo_producto, descripcion, precio_unitario, precio_docena, precio_por_mayor, existencia, imagen, codigo_categoria, codigo_tipo_empaque) values
('4','almuadas','50','35','75','24','','1','3');

insert into productos (codigo_producto, descripcion, precio_unitario, precio_docena, precio_por_mayor, existencia, imagen, codigo_categoria, codigo_tipo_empaque) values
('5','cuadernos','10','100','9','24','','1','4');


select * from productos;

insert into detalle_factura (codigo_factura_detalle, codigo_factura, codigo_producto, precio, cantidad, sub_total) values
('1','1','1','100','12','1000');

insert into detalle_factura (codigo_factura_detalle, codigo_factura, codigo_producto, precio, cantidad, sub_total) values
('2','1','1','100','12','1000');

insert into detalle_factura (codigo_factura_detalle, codigo_factura, codigo_producto, precio, cantidad, sub_total) values
('3','1','1','100','12','1000');

insert into detalle_factura (codigo_factura_detalle, codigo_factura, codigo_producto, precio, cantidad, sub_total) values
('4','1','1','100','12','1000');

insert into detalle_factura (codigo_factura_detalle, codigo_factura, codigo_producto, precio, cantidad, sub_total) values
('5','1','1','100','12','1000');


select * from detalle_factura;

insert into tipo_registro (codigo_tipo_registro, descripcion) values
('1','activo');

insert into tipo_registro (codigo_tipo_registro, descripcion) values
('2','pasivo');

select * from tipo_registro;

insert into inventarios (correlativo, codigo_tipo_registro, salidas, entradas, codigo_producto, precio, fecha) values
('1','1','12','24','1','100','2018-03-01');

insert into inventarios (correlativo, codigo_tipo_registro, salidas, entradas, codigo_producto, precio, fecha) values
('2','1','12','24','2','100','2018-03-01');

insert into inventarios (correlativo, codigo_tipo_registro, salidas, entradas, codigo_producto, precio, fecha) values
('3','1','12','24','3','100','2018-03-01');

select * from inventarios;

insert into proveedores(codigo_proveedor,nit,razon_social, pagina_web, contacto_principal) values
('1','12345678','tommy hilfiger','www.tommyhilfigerguatemala.com','Floryrosa');

insert into proveedores(codigo_proveedor,nit,razon_social, pagina_web, contacto_principal) values
('2','24681012','guess','www.guessguatemala.com','Floryrosa');

insert into proveedores(codigo_proveedor,nit,razon_social, pagina_web, contacto_principal) values
('3','36913121','aereopostal','www.aereopostalguatemala.com','Floryrosa');

insert into proveedores(codigo_proveedor,nit,razon_social, pagina_web, contacto_principal) values
('4','48121612','delux','www.deluxguatemala.com','carlos');

insert into proveedores(codigo_proveedor,nit,razon_social, pagina_web, contacto_principal) values
('5','51015201','rossy','www.rossyguatemala.com','ana');

select * from proveedores;

insert into email_proveedores (codigo_email, email, descripcion, codigo_proveedor) values
('1','tommyhilfigergt@gmail.com','respuesta','1');

insert into email_proveedores (codigo_email, email, descripcion, codigo_proveedor) values
('2','guessgt@gmail.com','respuesta','2');

insert into email_proveedores (codigo_email, email, descripcion, codigo_proveedor) values
('3','aereopostalgt@gmail.com','respuesta','3');

insert into email_proveedores (codigo_email, email, descripcion, codigo_proveedor) values
('4','deluxgt@gmail.com','respuesta','4');

insert into email_proveedores (codigo_email, email, descripcion, codigo_proveedor) values
('5','rossygt@gmail.com','respuesta','5');

select * from email_proveedores;

insert into telefono_proveedores (codigo_telefono, numero_telefono, descripcion, codigo_proveedor) values
('1','12345789','secretaria','1');

insert into telefono_proveedores (codigo_telefono, numero_telefono, descripcion, codigo_proveedor) values
('2','12345789','secretaria','2');

insert into telefono_proveedores (codigo_telefono, numero_telefono, descripcion, codigo_proveedor) values
('3','12345789','secretaria','3');

insert into telefono_proveedores (codigo_telefono, numero_telefono, descripcion, codigo_proveedor) values
('4','12345789','secretaria','4');

insert into telefono_proveedores (codigo_telefono, numero_telefono, descripcion, codigo_proveedor) values
('5','12345789','secretaria','5');

select * from telefono_proveedores;

insert into  direccion_proveedores (codigo_direccion, direccion, descripcion, codigo_proveedor) values
('1','zona 10','Guatemala','1');

insert into  direccion_proveedores (codigo_direccion, direccion, descripcion, codigo_proveedor) values
('2','zona 11','Guatemala','2');

insert into  direccion_proveedores (codigo_direccion, direccion, descripcion, codigo_proveedor) values
('3','zona 9','Guatemala','3');


insert into  direccion_proveedores (codigo_direccion, direccion, descripcion, codigo_proveedor) values
('4','zona 10','Guatemala','4');

insert into  direccion_proveedores (codigo_direccion, direccion, descripcion, codigo_proveedor) values
('5','zona 10','Guatemala','5');

select * from direccion_proveedores;

insert into compras (numero_documento, fecha, codigo_proveedor, total_compra, nombre_usuario) values
('1','2018-1-2','1','25000','khernandez');

insert into compras (numero_documento, fecha, codigo_proveedor, total_compra, nombre_usuario) values
('2','2018-1-2','2','25000','khernandez');

insert into compras (numero_documento, fecha, codigo_proveedor, total_compra, nombre_usuario) values
('3','2018-1-2','1','40000','khernandez');

insert into compras (numero_documento, fecha, codigo_proveedor, total_compra, nombre_usuario) values
('4','2018-1-2','1','30000','khernandez');

insert into compras (numero_documento, fecha, codigo_proveedor, total_compra, nombre_usuario) values
('5','2018-2-2','4','10000','khernandez');


select * from compras;

insert into detalle_compras (codigo_detalle_compra, numero_documento, codigo_producto, cantidad, precio, subtotal) values
('1','1','1','12','100','20000');

insert into detalle_compras (codigo_detalle_compra, numero_documento, codigo_producto, cantidad, precio, subtotal) values
('2','2','2','12','100','20000');

insert into detalle_compras (codigo_detalle_compra, numero_documento, codigo_producto, cantidad, precio, subtotal) values
('3','3','3','12','100','20000');

insert into detalle_compras (codigo_detalle_compra, numero_documento, codigo_producto, cantidad, precio, subtotal) values
('4','4','4','12','100','20000');

insert into detalle_compras (codigo_detalle_compra, numero_documento, codigo_producto, cantidad, precio, subtotal) values
('5','5','5','12','100','20000');

select * from detalle_compras;

