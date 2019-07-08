CREATE DATABASE bd_ac;

CREATE TABLE conjunto(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50)
);

CREATE TABLE imueble(
	id SERIAL PRIMARY KEY,
	conjunto_id INT,
	numero NUMERIC(4)
);

ALTER TABLE imueble ADD CONSTRAINT imueble_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE servicio(
	id SERIAL PRIMARY KEY,
	fecha DATE,
	descripcion TEXT,
	valor NUMERIC(10)
);

CREATE TABLE historia_imueble(
	id SERIAL PRIMARY KEY,
	imueble_id INT,
	servicio_id INT,
	fecha DATE
);

ALTER TABLE historia_imueble ADD CONSTRAINT historiaimueble_imueble_fk 
	FOREIGN KEY (imueble_id) 
	REFERENCES imueble(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE historia_imueble ADD CONSTRAINT historiaimueble_servicio_fk 
	FOREIGN KEY (servicio_id) 
	REFERENCES servicio(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE persona(
	id SERIAL PRIMARY KEY,
	nombres VARCHAR(50),
	apellidos VARcHAR(50)
);

CREATE TABLE tipo_vinculacion(
	id NUMERIC(2) PRIMARY KEY,
	nombre VARCHAR(20)
);

CREATE TABLE vinculacion(
	persona_id INT,
	imueble_id INT,
	tipovinculacion_id NUMERIC(2)
);

ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_imueble_fk 
	FOREIGN KEY (imueble_id) 
	REFERENCES imueble(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_tipovinculacion_fk 
	FOREIGN KEY (tipovinculacion_id) 
	REFERENCES tipo_vinculacion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE tipo_usuario(
	id NUMERIC(2) PRIMARY KEY,
	nombre VARCHAR(20)
);

CREATE TABLE usuario(
	id SERIAL PRIMARY KEY,
	tipousuario_id NUMERIC(2),
	persona_id INT,
	nombre VARCHAR(20)
	--contrasenia
);

ALTER TABLE usuario ADD CONSTRAINT usuario_tipousuario_fk 
	FOREIGN KEY (tipousuario_id) 
	REFERENCES tipo_usuario(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE usuario ADD CONSTRAINT usuario_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE usuario_conjunto(
	usuario_id INT,
	conjunto_id INT
);

ALTER TABLE usuario_conjunto ADD CONSTRAINT usuarioconjunto_usuario_fk 
	FOREIGN KEY (usuario_id) 
	REFERENCES usuario(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE usuario_conjunto ADD CONSTRAINT usuarioconjunto_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE asamblea(
	id SERIAL PRIMARY KEY,
	conjunto_id INT,
	fecha DATE
);

ALTER TABLE asamblea ADD CONSTRAINT asamblea_conjunto_fk 
	FOREIGN KEY (conjunto_id) 
	REFERENCES conjunto(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE registro_asistencia(
	id SERIAL PRIMARY KEY,
	asamblea_id INT,
	imueble_id INT
);

ALTER TABLE registro_asistencia ADD CONSTRAINT registroasistencia_asamblea_fk 
	FOREIGN KEY (asamblea_id) 
	REFERENCES asamblea(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE registro_asistencia ADD CONSTRAINT registroasistencia_imueble_fk 
	FOREIGN KEY (imueble_id) 
	REFERENCES imueble(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE propuesta(
	id SERIAL PRIMARY KEY,
	asamblea_id INT,
	descripcion TEXT
);

ALTER TABLE propuesta ADD CONSTRAINT propuesta_asamblea_fk 
	FOREIGN KEY (asamblea_id) 
	REFERENCES asamblea(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE opcion_respuesta(
	id SERIAL PRIMARY KEY,
	propuesta_id INT,
	descripcion TEXT,
	votacion NUMERIC(3)
);

ALTER TABLE opcion_respuesta ADD CONSTRAINT opcionrespuesta_propuesta_fk 
	FOREIGN KEY (propuesta_id) 
	REFERENCES propuesta(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE registro_votacion(
	id SERIAL PRIMARY KEY,
	imueble_id INT,
	opcionrespuesta_id INT
);

ALTER TABLE registro_votacion ADD CONSTRAINT registrovotacion_imueble_fk 
	FOREIGN KEY (imueble_id) 
	REFERENCES imueble(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE registro_votacion ADD CONSTRAINT registrovotacion_opcionrespuesta_fk 
	FOREIGN KEY (opcionrespuesta_id) 
	REFERENCES opcion_respuesta(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;