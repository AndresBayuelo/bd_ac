/*
el listado de propietarios e inmuebles
listado de asistentes a una asamblea
personas vinculadas a un inmueble, 
usuario de una persona, 
usuarios de un conjunto, 
asambleas de un conjunto
---
propuestas de una asamblea, 
resultados de una votacion, 
historial de x inmueble,
historial de x servicio
*/

-- el listado de propietarios e inmuebles

CREATE VIEW vista_1
AS SELECT 
    prn_nombres, prn_apellidos, imbl_numero 
FROM 
    persona, vinculacion, inmueble, tipo_vinculacion
WHERE
    prn_id = vinculacion.persona_id AND
    imbl_id = vinculacion.inmueble_id AND
    tvcl_id = vinculacion.tipovinculacion_id AND
    tvcl_nombre = 'Propietario';

-- listado de asistentes a una asamblea

CREATE VIEW vista_2
AS SELECT 
    asbl_fecha, imbl_numero, cjt_nombre
FROM 
    inmueble, asamblea, registro_asistencia, conjunto
WHERE
    imbl_id = registro_asistencia.inmueble_id AND
    asbl_id = registro_asistencia.asamblea_id AND
    cjt_id = asamblea.conjunto_id;
	
-- personas vinculadas a un inmueble

CREATE VIEW vista_3
AS SELECT 
    prn_nombres, prn_apellidos, imbl_numero, tvcl_nombre
FROM 
    persona, vinculacion, inmueble, tipo_vinculacion
WHERE
    prn_id = vinculacion.persona_id AND
    imbl_id = vinculacion.inmueble_id AND
    tvcl_id = vinculacion.tipovinculacion_id;
	
-- usuario de una persona

CREATE VIEW vista_4
AS SELECT 
    prn_nombres, prn_apellidos, usr_nombre
FROM 
    persona, usuario
WHERE
    prn_id = usuario.persona_id;
	
-- usuarios de un conjunto

CREATE VIEW vista_5
AS SELECT 
    prn_nombres, prn_apellidos, usr_nombre, cjt_nombre
FROM 
    persona, usuario, usuario_conjunto, conjunto
WHERE
    prn_id = usuario.persona_id AND
	usr_id = usuario_conjunto.usuario_id AND
	cjt_id = usuario_conjunto.conjunto_id;
	
-- asambleas de un conjunto
	
CREATE VIEW vista_6
AS SELECT 
    asbl_fecha, cjt_nombre
FROM 
    asamblea, conjunto
WHERE
    cjt_id = asamblea.conjunto_id;

-- propuestas de una asamblea

CREATE VIEW vista_7
AS SELECT 
    asbl_fecha, prp_descripcion
FROM 
    asamblea, propuesta
WHERE
    asbl_id = propuesta.asamblea_id;

-- resultados de una votacion

CREATE VIEW vista_8
AS SELECT 
    asbl_fecha, prp_descripcion, orpt_descripcion, COUNT(opcionrespuesta_id)
FROM 
    asamblea, propuesta, opcion_respuesta, registro_votacion
WHERE
    asbl_id = propuesta.asamblea_id AND
    prp_id = opcion_respuesta.propuesta_id AND
    orpt_id = registro_votacion.opcionrespuesta_id
GROUP BY 
    asbl_fecha, prp_descripcion, orpt_descripcion;