
use techdb;


CREATE TABLE `user_empleado`(
	`id_user` bigint NOT NULL,
	`id_empleado` bigint NOT NULL
) 


CREATE TABLE `ac_compania`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NOT NULL,
	`nro_ruc` int NOT NULL,
	`descripcion_comercial` varchar(255) NOT NULL,
	`direccion` varchar(255) NULL,
	`representante` varchar(255) NULL,
	`dni_representante` int NULL,
	`car;_representante` varchar(255) NULL,
	`telefono_uno` int NULL,
	`telefono_dos` int NULL,
	`telefono_tres` int NULL,
	`email` varchar(255) NULL,
	`web_site` varchar(255) NULL,
	`logo` varchar(255) NULL,
	`activo_pdt` varchar(255) NULL,
	`cod_pais` int NULL,
	`longitud` varchar(255) NULL,
	`latitud` varchar(255) NULL,
	`createddate` datetime NOT NULL,
	`createdby` varchar(255) NOT NULL,
	`lastmodifieddate` datetime NULL,
	`lastmodifiedby` varchar(255) NULL,
	`flag_estado` int NOT NULL,
 CONSTRAINT `PK_AC_COMPANIA` PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `ac_compania_rol_opcion`(
	`id` bigint NOT NULL,
	`id_compania` int NOT NULL,
	`id_rol` int NOT NULL,
	`id_opcion` int NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `ac_rol`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NULL,
	`createddate` datetime NOT NULL,
	`createdby` varchar(255) NOT NULL,
	`lastmodifieddate` datetime NULL,
	`lastmodifiedby` varchar(255) NULL,
	`observacion` varchar(255) NULL,
	`estado` int NULL,
 CONSTRAINT PK_AC_ROL PRIMARY KEY CLUSTERED 
(
	`id` ASC
))
;
CREATE TABLE `ac_rol_acvista`(
	`acvistas_id` bigint NOT NULL,
	`ac_rols_id` bigint NOT NULL,
PRIMARY KEY CLUSTERED 
(
	`ac_rols_id` ASC,
	`acvistas_id` ASC
)) 
;
CREATE TABLE `ac_seccion`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NOT NULL,
	`orden` int NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL,
	`ac_systema_id` bigint NOT NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))

 
;
CREATE TABLE `ac_sucursal`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NOT NULL,
	`ruc` int NULL,
	`telefono` int NULL,
	`representante_uno` varchar(255) NULL,
	`representante_dos` varchar(255) NULL,
	`firma` varchar(255) NULL,
	`direccion` varchar(255) NULL,
	`longitud` varchar(255) NULL,
	`latitud` varchar(255) NULL,
	`representante_uno_dni` int NULL,
	`representante_dos_dni` int NULL,
	`representante_uno_cargo` varchar(255) NULL,
	`representante_dos_cargo` varchar(255) NULL,
	`createddate` datetime NOT NULL,
	`createdby` varchar(255) NOT NULL,
	`lastmodifieddate` datetime NULL,
	`lastmodifiedby` varchar(255) NULL,
	`estado` int NULL,
	`ac_compania_id` bigint NULL,
 CONSTRAINT PK_AC_SUCURSAL PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `ac_systema`(
	`id` bigint NOT NULL,
	`nombre` varchar(255) NOT NULL,
	`descripcion` varchar(255) NULL,
	`image` varchar(255) NULL,
	`orden` int NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))
 
;
CREATE TABLE `ac_user_compania_rol`(
	`id` bigint NOT NULL,
	`id_user` int NOT NULL,
	`id_compania` int NOT NULL,
	`id_rol` int NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `ac_vista`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NULL,
	`alias` varchar(255) NULL,
	`image` varchar(255) NULL,
	`createddate` datetime NOT NULL,
	`createdby` varchar(255) NOT NULL,
	`lastmodifieddate` datetime NULL,
	`lastmodifiedby` varchar(255) NULL,
	`orden` int NULL,
	`observacion` varchar(255) NULL,
	`estado` int NULL,
	`translate` varchar(255) NULL,
	`ac_seccion_id` bigint NOT NULL,
 CONSTRAINT PK_AC_VISTA PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `DATABASEWINSERVICELOG`(
	`id` bigint  NOT NULL,
	`dato` varchar(255) NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
 
;
CREATE TABLE `hr_departamento`(
	`id` varchar(25) NOT NULL,
	`nombre` varchar(255) NOT NULL,
	`id_codigo_pais` varchar(255) NULL,
	`id_codigo_pdt` varchar(255) NULL,
	`created_date` datetime NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`last_modified_date` datetime NULL,
	`last_modified_by` varchar(255) NULL,
	`estado` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))


 
;
CREATE TABLE `hr_empleado`(
	`id` bigint NOT NULL,
	`codigo_trabajador` int NULL,
	`codigo_antiguo` int NULL,
	`nombre` varchar(255) NULL,
	`apellido_paterno` varchar(255) NULL,
	`apellido_materno` varchar(255) NULL,
	`email` varchar(255) NULL,
	`id_sexo` int NULL,
	`foto` varchar(255) NULL,
	`direccion` varchar(255) NULL,
	`descripcion_zona` varchar(255) NULL,
	`referencia_direccion` varchar(255) NULL,
	`discapacidad` int NULL,
	`id_tipo_documento` int NULL,
	`numero_documento` int NULL,
	`nro_ruc` bigint NULL,
	`fecha_nacimiento` datetime NULL,
	`fecha_ingreso` datetime NULL,
	`fecha_reingreso` datetime NULL,
	`fecha_retiro` datetime NULL,
	`telefono_alternativo` int NULL,
	`telefono_fijo` varchar(255) NULL,
	`telefono_movil` int NULL,
	`codigo_sap` varchar(255) NULL,
	`pais_emisor` varchar(255) NULL,
	`id_situacion` int NULL,
	`id_estado_civil` int NULL,
	`id_centro_formacion` int NULL,
	`id_grado_instruccion` int NULL,
	`id_nacionalidad` int NULL,
	`id_departamento` varchar(2) NULL,
	`id_provincia` varchar(3) NULL,
	`id_distrito` varchar(4) NULL,
	`id_tipo_trabajador` varchar(4) NULL,
	`id_domiciliado` int NULL,
	`id_situacion_especial` int NULL,
	`id_calendario` int NULL,
	`sin_control_horario` int NULL,
	`pendiente_captura` int NULL,
	`fecha_caducidad_captura` datetime NULL,
	`clave_enrolamiento` varchar(255) NULL,
	`fecha_ingreso_afp_onp` datetime NULL,
	`mas_vida` int NULL,
	`moneda_calculo` varchar(255) NULL,
	`numero_direccion` varchar(255) NULL,
	`numero_essalud` varchar(255) NULL,
	`numero_interior` varchar(255) NULL,
	`otros_ingresos_quinta_categoria` int NULL,
	`sctr` int NULL,
	`sctr_pension` int NULL,
	`senati` int NULL,
	`sindicalizado` int NULL,
	`tipo_calculo` varchar(255) NULL,
	`afiliado_eps` int NULL,
	`afiliado_essalud` int NULL,
	`codigo_afp_onp` varchar(255) NULL,
	`codigo_cussp` varchar(255) NULL,
	`created_date` datetime NOT NULL,
	`created_by` varchar(200) NOT NULL,
	`last_modified_date` datetime NULL,
	`last_modified_by` varchar(200) NULL,
	`flag_estado` int NULL,
	`id_sucursal` bigint NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `hr_user`(
	`id` bigint NOT NULL,
	`login` varchar(50) NOT NULL,
	`password_hash` varchar(60) NULL,
	`first_name` varchar(50) NULL,
	`last_name` varchar(50) NULL,
	`email` varchar(100) NULL,
	`image_url` varchar(255) NULL,
	`activated` bit NOT NULL,
	`lang_key` varchar(5) NULL,
	`activation_key` varchar(20) NULL,
	`reset_key` varchar(20) NULL,
	`created_by` varchar(50) NOT NULL,
	`created_date` datetime NOT NULL,
	`reset_date` datetime NULL,
	`last_modified_by` varchar(50) NULL,
	`last_modified_date` datetime NULL,
 CONSTRAINT PK_JHI_USER PRIMARY KEY CLUSTERED 
(
	`id` ASC
)) 
;
CREATE TABLE `tg_calendario`(
	`id` bigint NOT NULL,
	`estado` int NULL,
	`nombre` varchar(255) NOT NULL,
	`observacion` varchar(255) NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))

;
CREATE TABLE `tg_finger_print`(
	`id` bigint  NOT NULL,
	`id_finger_index` int NOT NULL,
	`finger_print` varchar(255) NULL,
	`id_codigo_trabajador` int NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))
 
;
CREATE TABLE `tg_jornada`(
	`id` bigint NOT NULL,
	`alias` varchar(255) NOT NULL,
	`color` varchar(255) NOT NULL,
	`cortesia` int NULL,
	`estado` int NOT NULL,
	`final_jornada` varchar(255) NOT NULL,
	`horas_teoricas` varchar(255) NOT NULL,
	`nombre` varchar(255) NOT NULL,
	`observacion` varchar(255) NULL,
	`penalizacion` int NULL,
	`retraso` int NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))


 
;
CREATE TABLE `tg_marcacion`(
	`id` bigint  NOT NULL,
	`fecha_marca` datetime NOT NULL,
	`id_tipo_marca` varchar(255) NOT NULL,
	`identificador` bigint NOT NULL,
	`id_codigo_trabajador` int NOT NULL,
	`id_codigo_terminal` int NOT NULL,
	`flag_report` varchar(255) NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))
 
;
CREATE TABLE `tg_resultado_cabecera`(
	`id` bigint NOT NULL,
	`codigo_dia` int NOT NULL,
	`codigo_trabajador` int NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`dia_resultado` datetime NOT NULL,
	`estado` int NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
PRIMARY KEY CLUSTERED 
(
	`id` ASC
))

 
;
CREATE TABLE `tg_terminal`(
	`id` bigint NOT NULL,
	`descripcion` varchar(255) NOT NULL,
	`ip` varchar(255) NOT NULL,
	`puerto` int NOT NULL,
	`clave` varchar(255) NULL,
	`created_date` datetime NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`last_modified_date` datetime NULL,
	`last_modified_by` varchar(255) NULL,
	`estado` int NULL,
 CONSTRAINT PK_TG_TERMINAL PRIMARY KEY CLUSTERED 
(
	`id` ASC
))

;
CREATE TABLE `tg_terminal_hr_empleado`(
	`id_terminal` int NOT NULL,
	`id_codigo_trabajador` int NOT NULL,
	`created_by` varchar(255) NOT NULL,
	`created_date` datetime NOT NULL,
	`last_modified_by` varchar(255) NULL,
	`last_modified_date` datetime NULL,
	`estado` int NULL
);



