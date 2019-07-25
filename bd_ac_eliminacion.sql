ALTER TABLE registro_votacion DROP CONSTRAINT registrovotacion_imueble_fk;
ALTER TABLE registro_votacion DROP CONSTRAINT registrovotacion_opcionrespuesta_fk;
DROP TABLE registro_votacion;

ALTER TABLE opcion_respuesta DROP CONSTRAINT opcionrespuesta_propuesta_fk;
DROP TABLE opcion_respuesta;

ALTER TABLE propuesta DROP CONSTRAINT propuesta_asamblea_fk;
DROP TABLE propuesta;

ALTER TABLE registro_asistencia DROP CONSTRAINT registroasistencia_imueble_fk;
ALTER TABLE registro_asistencia DROP CONSTRAINT registroasistencia_asamblea_fk;
DROP TABLE registro_asistencia;

ALTER TABLE asamblea DROP CONSTRAINT asamblea_conjunto_fk;
DROP TABLE asamblea;

ALTER TABLE usuario_conjunto DROP CONSTRAINT usuarioconjunto_pk;
ALTER TABLE usuario_conjunto DROP CONSTRAINT usuarioconjunto_usuario_fk;
ALTER TABLE usuario_conjunto DROP CONSTRAINT usuarioconjunto_conjunto_fk;
DROP TABLE usuario_conjunto;

ALTER TABLE usuario DROP CONSTRAINT usuario_persona_fk;
ALTER TABLE usuario DROP CONSTRAINT usuario_tipousuario_fk;
DROP TABLE usuario;

DROP TABLE tipo_usuario;

ALTER TABLE vinculacion DROP CONSTRAINT vinculacion_tipovinculacion_fk;
ALTER TABLE vinculacion DROP CONSTRAINT vinculacion_imueble_fk;
ALTER TABLE vinculacion DROP CONSTRAINT vinculacion_persona_fk;
DROP TABLE vinculacion;

DROP TABLE tipo_vinculacion;

DROP TABLE persona;

ALTER TABLE historia_imueble DROP CONSTRAINT historiaimueble_servicio_fk;
ALTER TABLE historia_imueble DROP CONSTRAINT historiaimueble_imueble_fk;
DROP TABLE historia_imueble;

DROP TABLE servicio;

ALTER TABLE imueble DROP CONSTRAINT imueble_conjunto_fk;
DROP TABLE imueble;

DROP TABLE conjunto;

DROP DATABASE bd_ac;