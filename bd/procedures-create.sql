USE techdb
;
DELIMITER $$
CREATE PROCEDURE getOpcionesByRolId(
	IN rolId INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

select rv.acvistas_id id,op.descripcion descripcion,op.alias,op.translate,op.image,op.createdby, op.createddate,op.lastmodifiedby,
op.lastmodifieddate,op.orden,op.observacion,op.estado
from 
ac_rol_acvista rv, ac_rol rl, ac_vista op
where 
rl.id=rv.ac_rols_id and
rv.acvistas_id=op.id and
rl.id= rolId ;

END$$

CREATE procedure getUserCompaniaRolByidUser(
 IN idUser int )
BEGIN
select ucr.id,id_user,id_compania,cp.descripcion as created_by,ucr.id_rol,rol.descripcion as last_modified_by,ucr.created_date,ucr.last_modified_date,ucr.estado 
from ac_user_compania_rol ucr, ac_compania cp, ac_rol rol 
where
ucr.id_compania=cp.id and
ucr.id_rol=rol.id and
 id_user=idUser;
END$$

CREATE procedure prc_getCompaniaByIdUser(
IN idUser bigint)
BEGIN
 select acucr.id_compania id,acc.descripcion, acc.logo, acucr.id_rol,ac_sucursal.id as id_sucursal
 from 
 ac_sucursal INNER JOIN   ac_compania acc
 ON ac_sucursal.ac_compania_id=acc.id
 inner join ac_user_compania_rol acucr
 on acucr.id_compania=acc.id 
 where id_user=idUser;
END$$

CREATE procedure prc_getOpcionesByIdCompaniaAndidRol(
IN idCompania int, IN idRol int)
BEGIN
select op.id,op.descripcion,op.alias,op.translate,op.image,op.createdby, op.createddate,op.lastmodifiedby,
op.lastmodifieddate,op.orden,op.observacion,op.estado,op.ac_seccion_id
from ac_compania_rol_opcion accrp, ac_vista op
where 
accrp.id_opcion=op.id and
id_compania=idCompania and id_rol=idRol;
END$$

CREATE procedure prc_getOpcionesNotInByIdCompaniaAndidRol(
IN idCompania int, IN idRol int )
BEGIN
SELECT  acv.*
FROM    ac_vista acv
where acv.id not in (
select id_opcion
from ac_compania_rol_opcion 
where id_compania=idCompania and id_rol=idRol);
END$$

create procedure prc_getSeccionesByIdCompAndIdRolAndIdSys(
IN idCompania int, IN idRol int, IN idSystema int )
BEGIN
select distinct op.ac_seccion_id,acsc.descripcion,acsc.orden
from ac_compania_rol_opcion accrp, ac_vista op, ac_seccion acsc, ac_systema acsys
where 
accrp.id_opcion=op.id and
op.ac_seccion_id=acsc.id and
acsc.ac_systema_id=acsys.id and
id_compania=idCompania and id_rol=idRol
and acsys.id=idSystema order by acsc.orden asc;
END$$


CREATE procedure prc_getSeccionOpcionesByIdCompAndIdRolAndIdSys(
IN idCompania int, IN idRol int, IN idSystema int )
BEGIN
select op.id,op.descripcion,op.alias,op.translate,op.image,op.createdby, op.createddate,op.lastmodifiedby,
op.lastmodifieddate,acsys.id as orden,acsys.nombre as observacion,op.estado,op.ac_seccion_id
from ac_compania_rol_opcion accrp, ac_vista op, ac_seccion acsc, ac_systema acsys
where 
accrp.id_opcion=op.id and
op.ac_seccion_id=acsc.id and
acsc.ac_systema_id=acsys.id and
id_compania=idCompania and id_rol=idRol
and acsys.id=idSystema order by acsc.orden asc;
END$$

CREATE procedure prc_getSystemasByIdCompaniaAndIdRol(
IN idCompania int, IN idRol int )
BEGIN
select distinct acsys.id, acsys.nombre, acsys.image
from ac_compania_rol_opcion accrp, ac_vista op, ac_seccion acsc, ac_systema acsys
where 
accrp.id_opcion=op.id and
op.ac_seccion_id=acsc.id and
acsc.ac_systema_id=acsys.id and
id_compania=idCompania and id_rol=idRol;
END$$

CREATE procedure prc_getUserCompaniaRolByIdCompaniaAndIdRol(
IN idCompania bigint, IN idRol bigint)
BEGIN
select accro.id, accro.id_compania,accro.id_rol,accro.id_opcion,accro.created_by,accro.created_date,acv.descripcion as last_modified_by,accro.last_modified_date,accro.estado 
from ac_compania_rol_opcion accro, ac_compania ac, ac_vista acv
where 
accro.id_compania=ac.id and
accro.id_opcion=acv.id and
id_compania=idCompania and id_rol=idRol;
END$$