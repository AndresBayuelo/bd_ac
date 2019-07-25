CREATE DATABASE bd_ac;

CREATE TABLE conjunto(
	cjt_id SERIAL PRIMARY KEY,
	cjt_nombre VARCHAR(50)
);

CREATE TABLE inmueble(
	imbl_id SERIAL PRIMARY KEY,
	conjunto_id INT,
	imbl_numero NUMERIC(4)
);

ALTER TABLE inmueble ADD CONSTRAINT inmueble_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(cjt_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE servicio(
	svc_id SERIAL PRIMARY KEY,
	svc_fecha DATE,
	svc_descripcion TEXT,
	svc_valor NUMERIC(10)
);

CREATE TABLE historia_inmueble(
	himbl_id SERIAL PRIMARY KEY,
	inmueble_id INT,
	servicio_id INT,
	himbl_fecha DATE
);

ALTER TABLE historia_inmueble ADD CONSTRAINT historiainmueble_inmueble_fk 
	FOREIGN KEY (inmueble_id) 
	REFERENCES inmueble(imbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE historia_inmueble ADD CONSTRAINT historiainmueble_servicio_fk 
	FOREIGN KEY (servicio_id) 
	REFERENCES servicio(svc_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE persona(
	prn_id SERIAL PRIMARY KEY,
	prn_nombres VARCHAR(50),
	prn_apellidos VARcHAR(50)
);

CREATE TABLE tipo_vinculacion(
	tvcl_id NUMERIC(2) PRIMARY KEY,
	tvcl_nombre VARCHAR(20)
);

CREATE TABLE vinculacion(
	vcl_id SERIAL PRIMARY KEY,
	persona_id INT,
	inmueble_id INT,
	tipovinculacion_id NUMERIC(2)
);

ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(prn_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_inmueble_fk 
	FOREIGN KEY (inmueble_id) 
	REFERENCES inmueble(imbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_tipovinculacion_fk 
	FOREIGN KEY (tipovinculacion_id) 
	REFERENCES tipo_vinculacion(tvcl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE tipo_usuario(
	tusr_id NUMERIC(2) PRIMARY KEY,
	tusr_nombre VARCHAR(20)
);

CREATE TABLE usuario(
	usr_id SERIAL PRIMARY KEY,
	tipousuario_id NUMERIC(2),
	persona_id INT,
	usr_nombre VARCHAR(20),
	usr_contrasenia VARCHAR(255)
);

ALTER TABLE usuario ADD CONSTRAINT usuario_tipousuario_fk 
	FOREIGN KEY (tipousuario_id) 
	REFERENCES tipo_usuario(tusr_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE usuario ADD CONSTRAINT usuario_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(prn_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE usuario_conjunto(
	usuario_id INT,
	conjunto_id INT
);

ALTER TABLE usuario_conjunto ADD CONSTRAINT usuarioconjunto_usuario_fk 
	FOREIGN KEY (usuario_id) 
	REFERENCES usuario(usr_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE usuario_conjunto ADD CONSTRAINT usuarioconjunto_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(cjt_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE usuario_conjunto ADD CONSTRAINT usuarioconjunto_pk
	PRIMARY KEY (usuario_id, conjunto_id);
	
CREATE TABLE asamblea(
	asbl_id SERIAL PRIMARY KEY,
	conjunto_id INT,
	asbl_fecha DATE
);

ALTER TABLE asamblea ADD CONSTRAINT asamblea_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(cjt_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE registro_asistencia(
	rast_id SERIAL PRIMARY KEY,
	asamblea_id INT,
	inmueble_id INT
);

ALTER TABLE registro_asistencia ADD CONSTRAINT registroasistencia_asamblea_fk 
	FOREIGN KEY (asamblea_id) 
	REFERENCES asamblea(asbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE registro_asistencia ADD CONSTRAINT registroasistencia_inmueble_fk 
	FOREIGN KEY (inmueble_id) 
	REFERENCES inmueble(imbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE propuesta(
	prp_id SERIAL PRIMARY KEY,
	asamblea_id INT,
	prp_descripcion TEXT
);

ALTER TABLE propuesta ADD CONSTRAINT propuesta_asamblea_fk 
	FOREIGN KEY (asamblea_id) 
	REFERENCES asamblea(asbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE opcion_respuesta(
	orpt_id SERIAL PRIMARY KEY,
	propuesta_id INT,
	orpt_descripcion TEXT,
	orpt_votacion NUMERIC(3)
);

ALTER TABLE opcion_respuesta ADD CONSTRAINT opcionrespuesta_propuesta_fk 
	FOREIGN KEY (propuesta_id) 
	REFERENCES propuesta(prp_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE registro_votacion(
	rvtc_id SERIAL PRIMARY KEY,
	inmueble_id INT,
	opcionrespuesta_id INT
);

ALTER TABLE registro_votacion ADD CONSTRAINT registrovotacion_inmueble_fk 
	FOREIGN KEY (inmueble_id) 
	REFERENCES inmueble(imbl_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE registro_votacion ADD CONSTRAINT registrovotacion_opcionrespuesta_fk 
	FOREIGN KEY (opcionrespuesta_id) 
	REFERENCES opcion_respuesta(orpt_id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;