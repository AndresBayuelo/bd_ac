CREATE DATABASE bd_diccionario;

CREATE TABLE tabla(
	nombre VARCHAR(50) PRIMARY KEY,
	descripcion TEXT,
	alias VARCHAR(20),
	propietario VARCHAR(50),
	tablepace VARCHAR(100)
);

CREATE TABLE atributo(
	id SERIAL PRIMARY KEY,
	tabla_nombre VARCHAR(50),
	nombre VARCHAR(50),
	descripcion TEXT,
	tipo VARCHAR(20),
	tamanio INT,
	alias VARCHAR(20),
	--indice BOOLEAN,
	--llave_primaria BOOLEAN,
	--llave_foranea BOOLEAN,
	dato_sensible BOOLEAN
);

ALTER TABLE atributo ADD CONSTRAINT atributo_tabla_fk 
	FOREIGN KEY (tabla_nombre) 
	REFERENCES tabla(nombre)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE relacion (
	id SERIAL PRIMARY KEY,
	descripcion TEXT,
	cardinalidad VARCHAR(20)
);

CREATE TABLE relacion_pk(
	relacion_id INT,
	atributo_id INT
);

ALTER TABLE relacion_pk ADD CONSTRAINT relacionpk_relacion_fk 
	FOREIGN KEY (relacion_id) 
	REFERENCES relacion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE relacion_pk ADD CONSTRAINT relacionpk_atributo_fk 
	FOREIGN KEY (atributo_id) 
	REFERENCES atributo(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE relacion_fk(
	relacion_id INT,
	atributo_id INT
);

ALTER TABLE relacion_fk ADD CONSTRAINT relacionfk_relacion_fk 
	FOREIGN KEY (relacion_id) 
	REFERENCES relacion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

ALTER TABLE relacion_fk ADD CONSTRAINT relacionfk_atributo_fk 
	FOREIGN KEY (atributo_id) 
	REFERENCES atributo(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE modificacion(
	id SERIAL PRIMARY KEY,
	fecha DATE,
	descripcion TEXT,
	responsable VARCHAR(50)
);

CREATE TABLE modificacion_tabla(
	modificacion_id INT,
	tabla_nombre VARCHAR(50)
);

ALTER TABLE modificacion_tabla ADD CONSTRAINT modificaciontabla_modificacion_fk 
	FOREIGN KEY (modificacion_id) 
	REFERENCES modificacion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE modificacion_tabla ADD CONSTRAINT modificaciontabla_tabla_fk 
	FOREIGN KEY (tabla_nombre) 
	REFERENCES tabla(nombre)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE modificacion_atributo(
	modificacion_id INT,
	atributo_id INT
);

ALTER TABLE modificacion_atributo ADD CONSTRAINT modificacionatributo_modificacion_fk 
	FOREIGN KEY (modificacion_id) 
	REFERENCES modificacion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE modificacion_atributo ADD CONSTRAINT modificacionatributo_atributo_fk 
	FOREIGN KEY (atributo_id) 
	REFERENCES atributo(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE restriccion(
	id SERIAL PRIMARY KEY,
	descripcion TEXT
);

CREATE TABLE restriccion_tabla(
	restriccion_id INT,
	tabla_nombre VARCHAR(50)
);

ALTER TABLE restriccion_tabla ADD CONSTRAINT restricciontabla_restriccion_fk 
	FOREIGN KEY (restriccion_id) 
	REFERENCES restriccion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE restriccion_tabla ADD CONSTRAINT restricciontabla_tabla_fk 
	FOREIGN KEY (tabla_nombre) 
	REFERENCES tabla(nombre)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE restriccion_atributo(
	restriccion_id INT,
	atributo_id INT
);

ALTER TABLE restriccion_atributo ADD CONSTRAINT restriccionatributo_restriccion_fk 
	FOREIGN KEY (restriccion_id) 
	REFERENCES restriccion(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
ALTER TABLE restriccion_atributo ADD CONSTRAINT restriccionatributo_atributo_fk 
	FOREIGN KEY (atributo_id) 
	REFERENCES atributo(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
	
CREATE TABLE disparador(
	id SERIAL,
	tabla_nombre VARCHAR(50),
	descripcion TEXT
);

ALTER TABLE disparador ADD CONSTRAINT disparador_tabla_fk 
	FOREIGN KEY (tabla_nombre) 
	REFERENCES tabla(nombre)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

CREATE TABLE permiso(
	id SERIAL,
	tabla_nombre VARCHAR(50),
	descripcion TEXT
);

ALTER TABLE permiso ADD CONSTRAINT permiso_tabla_fk 
	FOREIGN KEY (tabla_nombre) 
	REFERENCES tabla(nombre)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

SELECT * FROM tabla;
	
/*

ALTER TABLE permiso DROP CONSTRAINT permiso_tabla_fk;
DROP TABLE permiso;

ALTER TABLE disparador DROP CONSTRAINT disparador_tabla_fk;
DROP TABLE disparador;

ALTER TABLE restriccion_atributo DROP CONSTRAINT restriccionatributo_atributo_fk;
ALTER TABLE restriccion_atributo DROP CONSTRAINT restriccionatributo_restriccion_fk;
DROP TABLE restriccion_atributo;

ALTER TABLE restriccion_tabla DROP CONSTRAINT restricciontabla_tabla_fk;
ALTER TABLE restriccion_tabla DROP CONSTRAINT restricciontabla_restriccion_fk;
DROP TABLE restriccion_tabla;

DROP TABLE restriccion;
	
ALTER TABLE modificacion_atributo DROP CONSTRAINT modificacionatributo_atributo_fk;
ALTER TABLE modificacion_atributo DROP CONSTRAINT modificacionatributo_modificacion_fk;
DROP TABLE modificacion_atributo;

ALTER TABLE modificacion_tabla DROP CONSTRAINT modificaciontabla_tabla_fk;
ALTER TABLE modificacion_tabla DROP CONSTRAINT modificaciontabla_modificacion_fk;
DROP TABLE modificacion_tabla;

DROP TABLE modificacion;

ALTER TABLE relacion_fk DROP CONSTRAINT relacionfk_atributo_fk;
ALTER TABLE relacion_fk DROP CONSTRAINT relacionfk_relacion_fk;
DROP TABLE relacion_fk;

ALTER TABLE relacion_pk DROP CONSTRAINT relacionpk_atributo_fk;
ALTER TABLE relacion_pk DROP CONSTRAINT relacionpk_relacion_fk;
DROP TABLE relacion_pk;

DROP TABLE relacion;

ALTER TABLE atributo DROP CONSTRAINT atributo_tabla_fk;
DROP TABLE atributo;

DROP TABLE tabla;

DROP DATABASE bd_diccionario;
*/