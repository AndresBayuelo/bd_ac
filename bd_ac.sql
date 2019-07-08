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

ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_tipovinculacion_fk;
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_imueble_fk;
ALTER TABLE vinculacion ADD CONSTRAINT vinculacion_persona_fk;
DROP TABLE vinculacion;

DROP TABLE tipo_vinculacion;

DROP TABLE persona;

ALTER TABLE imueble DROP CONSTRAINT imueble_conjunto_fk;
DROP TABLE imueble;

DROP TABLE conjunto;

DROP DATABASE bd_ac;