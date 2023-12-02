drop database Sistema_Facturacion;
create database Sistema_Facturacion;
use Sistema_Facturacion;

create table
    empresa (
        id_empresa tinyint not null auto_increment,
        razon_social varchar (60) not null,
        nit_empresa varchar (12) not null,
        dir_empresa varchar (80) not null,
        correo_empresa varchar (90) not null,
        representante varchar (90) not null,
        telefono_empresa varchar (12) not null,
        primary key (id_empresa)
    );


create table
    pais (
        id_pais smallint not null auto_increment,
        nombre_pais varchar (40) not null,
        estado_pais char(1),
        primary key (id_pais)
    );


create table
    departamento (
        id_dpto smallint not null auto_increment,
        nombre_dpto varchar (80) not null,
        id_pais_dpto smallint not null,
        estado_dpto char(1),
        primary key (id_dpto),
        foreign key (id_pais_dpto) references pais (id_pais)
    );


create table
    ciudad (
        id_ciudad smallint not null auto_increment,
        cod_ciudad varchar (6) not null,
        nombre_ciudad varchar (40) not null,
        id_dpto_ciudad smallint not null,
        estado_ciudad char(1),
        primary key (id_ciudad),
        foreign key (id_dpto_ciudad) references departamento (id_dpto)
    );


create table
    tipo_documento (
        id_documento tinyint not null auto_increment,
        nombre_documento varchar (60) not null,
        primary key (id_documento)
    );


create table
    tipo_cliente (
        id_tipo_cliente tinyint not null auto_increment,
        descripcion_tcliente varchar (40) not null,
        estado_tcliente char(1),
        primary key (id_tipo_cliente)
    );


create table cliente (
     id_cliente int not null,
	 id_empresa tinyint,
	 nit_cliente varchar(15) not null,
	 rsocial_cliente varchar(70) not null,
	 id_tipo_cliente tinyint not null,
	 nombre_cliente varchar(75) not null,
	 apellido_cliente varchar(75) not null,
	 dir_cliente varchar(85) not null,
	 id_ciudad smallint,
	 correo_cliente varchar(85) default null,
	 tel_cliente varchar(30) not null,
	 codpostal_cliente varchar(15),
	 cupocredito_cliente bigint default 0,
	 saldo_cliente bigint default 0,
	 comprasmes_cliente bigint default 0,
	 pagosmes_cliente bigint default 0,
	 estado_cliente char(1),
     primary key (id_cliente),
     foreign key (id_empresa) references empresa (id_empresa),
	 foreign key (id_ciudad) references ciudad(id_ciudad)
);


create table
    parametro_general (
        id_parametro_general tinyint not null auto_increment,
        nombre_parametro varchar (10) not null,
        descripcion_parametro varchar (60) not null,
        valor_parametro varchar (100) not null,
        tipo_parametro varchar (1) not null,
        primary key (id_parametro_general)
    );


create table
    categoria (
        id_categoria smallint not null auto_increment,
        nom_categoria varchar (35) not null,
        estado_categoria varchar (1) not null,
        primary key (id_categoria)
    );


create table
    producto (
        id_producto smallint not null auto_increment,
        id_categoria smallint not null,
        cod_producto varchar(12) not null,
        des_producto varchar(60) not null,
        exis_producto smallint default 0,
        bodega_producto smallint default 0,
        precio_venta_act decimal(8,2) default 0,
        precio_venta_ant decimal(8,2) default 0,
        dscto_minimo smallint default 0,
        dscto_maximo smallint default 0,
        costo_venta decimal(8,2) default 0,
        margen_utilidad decimal(5,2) default 0,
        valor_iva decimal(5,2) default 0,
        stock_minimo smallint default 0,
        stock_maximo smallint default 0,
        estado_producto varchar(1) not null,
        primary key (id_producto),
        foreign key (id_categoria) references categoria (id_categoria)
    );


create table
    tipomov (
        id_tipomov tinyint not null auto_increment,
        nom_tipomov varchar (45) not null,
        estado_tipomov varchar (1),
        primary key (id_tipomov)
    );


create table
    movproducto (
        id_mov int not null auto_increment,
        id_tipomov tinyint not null,
        cantidad_mov smallint not null,
        id_producto smallint,
        fecha_movimiento  datetime not null,
        estado_movimiento  varchar (1),
        primary key (id_mov),
        foreign key (id_tipomov) references tipomov (id_tipomov),
        foreign key (id_producto) references producto (id_producto)
    );


create table
    tipo_factura (
        id_tipofac tinyint not null auto_increment,
        nom_tipofac varchar (45) not null,
        estado_tipofac varchar (1),
        primary key (id_tipofac)
    );


create table
    factura (
        id_factura smallint not null auto_increment,
        fecha_factura datetime,
        id_tipofac tinyint not null,
        cliente_factura int not null,
        total_factura decimal (8, 2) default 0,
        descuento_factura decimal (8, 2) default 0,
        iva_factura decimal (8, 2) default 0,
        subtotal_factura decimal (8, 2) default 0,
        saldo_factura decimal (8, 2) default 0,
        estado_factura varchar (1) not null,
        primary key (id_factura),
        foreign key (id_tipofac) references tipo_factura (id_tipofac)
    );


create table
    detalle_factura (
        id_detalle_factura smallint not null auto_increment,
        id_factura smallint not null,
        id_producto smallint not null,
        cant_vendida smallint default 0,
        precio_venta decimal (8, 2) default 0,
        valor_iva decimal (5, 2) default 0,
        descto_detfac decimal (5, 2) default 0,
        primary key (id_detalle_factura),
        foreign key (id_factura) references factura (id_factura),
        foreign key (id_producto) references producto (id_producto)
    );


create table
    recaudo (
        id_recaudo int not null auto_increment,
        id_cliente_recaudo int not null,
        id_factura_recaudo smallint not null,
        valor_racaudo bigint default 0,
        fecha_recaudo datetime,
        primary key (id_recaudo),
        foreign key (id_cliente_recaudo) references cliente (id_cliente),
        foreign key (id_factura_recaudo) references factura (id_factura)
    );


create table
    medios_de_pago (
        id_med_pago int not null auto_increment,
        id_descrip_med_pago varchar (45) not null,
        estado_med_pago varchar (1) not null,
        primary key (id_med_pago)
    );


create table
    detalle_recaudo (
        id_detalle_recaudo int not null auto_increment,
        id_recaudo int not null,
        id_med_pago int not null,
        valor_recaudo bigint default 0,
        primary key (id_detalle_recaudo),
        foreign key (id_recaudo) references recaudo (id_recaudo),
        foreign key (id_med_pago) references medios_de_pago (id_med_pago)
    );


create table
    ctg_tipo_usuario (
        id_tipo_usuario tinyint not null auto_increment,
        tipo_usuario varchar (100) not null,
        descripcion_usuario varchar (256) not null,
        primary key (id_tipo_usuario)
    );


create table
    usuario (
        id_usuario bigint not null auto_increment,
        nom_ape_usuario varchar (100) not null,
        e_mail_usuario varchar (100) not null,
        username varchar (50) not null,
        password_usuario varchar (100) not null,
        fecha_registro datetime,
        estado_usuario varchar (1) not null,
        id_tipo_usuario tinyint not null,
        primary key (id_usuario),
        foreign key (id_tipo_usuario) references ctg_tipo_usuario (id_tipo_usuario)
    );


create table
    empleado (
        id_empleado bigint not null auto_increment,
        id_usuario bigint not null,
        nom_ape_empleado varchar (100) not null,
        direc_empleado varchar (100),
        email_empleado varchar (100),
        tel_empleado varchar (20),
        fecha_naci_empleado datetime,
        primary key (id_empleado),
        foreign key (id_usuario) references usuario (id_usuario)
    );