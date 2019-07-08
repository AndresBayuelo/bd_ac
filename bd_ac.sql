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
	
CREATE TABLE tipo_persona(
	id NUMERIC(2) PRIMARY KEY,
	nombre VARCHAR(20)
);

CREATE TABLE persona(
	id SERIAL PRIMARY KEY,
	nombres VARCHAR(50),
	apellidos VARcHAR(50)
);

CREATE TABLE persona_tipopersona(
	persona_id INT PRIMARY KEY,
	tipopersona_id NUMERIC(2)
);

ALTER TABLE persona_tipopersona ADD CONSTRAINT personatipopersona_tipopersona_fk 
	FOREIGN KEY (tipopersona_id) 
	REFERENCES tipo_persona(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE persona_tipopersona ADD CONSTRAINT personatipopersona_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE habitante(
	persona_id INT,
	imueble_id INT
);

ALTER TABLE habitante ADD CONSTRAINT habitante_persona_fk 
	FOREIGN KEY (persona_id) 
	REFERENCES persona(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE habitante ADD CONSTRAINT habitante_imueble_fk 
	FOREIGN KEY (imueble_id) 
	REFERENCES imueble(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE habitante DROP CONSTRAINT habitante_imueble_fk;
ALTER TABLE habitante DROP CONSTRAINT habitante_persona_fk;
DROP TABLE habitante;

ALTER TABLE persona_tipopersona DROP CONSTRAINT personatipopersona_persona_fk;
ALTER TABLE persona_tipopersona DROP CONSTRAINT personatipopersona_tipopersona_fk;
DROP TABLE persona_tipopersona;

DROP TABLE persona;

DROP TABLE tipo_persona;

ALTER TABLE imueble DROP CONSTRAINT imueble_conjunto_fk;
DROP TABLE imueble;

DROP TABLE conjunto;

DROP DATABASE bd_ac;