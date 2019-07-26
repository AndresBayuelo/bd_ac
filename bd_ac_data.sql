--tipo usuarios
INSERT INTO 
    tipo_usuario 
VALUES
    (1,'Administrador'),
    (2,'Propietario'),
    (3,'Auxiliar asamblea'),
    (4,'inquilino local');

--personas
INSERT INTO 
    persona (prn_id, prn_apellidos, prn_nombres) 
VALUES
    (1, 'Tilla de Bacalao', 'Aitor'),
    (2, 'Brito de Valla', 'Alan'),
    (3, 'Ñoguarra de Cabeza', 'Alba'),
    (4, 'Huevos Simparar', 'Alberto Carlos'),
    (5, 'Trozado Entero', 'Adrés'),
    (6, 'Horia de la Huerta Pamplonica', 'Suzana'),
    (7, 'Adistancia Tele', 'Armando'),
    (8, 'Camela Quemegusta', 'Benito'),
    (9, 'Mon de York', 'Borja'),
    (10, 'Letón de los Bueyes', 'Josetxu'),
    (11, 'Gartija Alsol', 'Estela'),
    (12, 'Alaplancha Hecho', 'Baldomero'),
    (13, 'Vales De Fiesta', 'Encarna'),
    (14, 'Jones Treintaytres', 'Misco'),
    (15, 'Jones Treintaytres', 'Tusco'),
    (16, 'Jones Treintaytres', 'Susco'),
    (17, 'Gerlo Corre', 'Paco'),
    (18, 'Cabao Losdonuts', 'Susana'),
    (19, 'Turbado Imposible', 'Tomás'),
    (20, 'Tazas Grandes', 'Maite'),
    (21, 'Chonda Entera', 'Mónica'),
    (22, 'Acevedo Manríquez','María Mireya'),
    (23, 'Mejía Acevedo ', 'Enrique'), 
    (24, 'Acevedo Ruiz', 'Carolina' ),
    (25, 'Canto Acosta', 'Tomás José' ),
    (26, 'Acosta Gámez', 'Celina' ),
    (27, 'Aguilar dorantes', 'irma'),
    (28, 'Alcántar Camacho', 'José israel'),
    (29, 'Martínez Alcoverde', 'Roberto Antonio'),
    (30, 'Alderete porras', ' Jacinta Guillermina '),
    (31, 'Aldrete argas', ' Adolfo Alejo '),
    (32, 'Guerrero víctor', ' hugo Alemán '),
    (33, 'Almogadar santos', ' Rocío '),
    (34, 'Alonso parra', ' pascual Gerardo '),
    (35, 'navarro Alonso', ' Jadilson '),
    (36, 'Altamirano García', 'Enrique'),
    (37, 'Alí Alvarado', 'Jesus david '),
    (38, 'Mendoza Alvarado', 'oscar'),
    (39, 'alvarez Martínez', 'bernica'),
    (40, 'Medellín alvarez', 'felipe'),
    (41, 'alvarez villanueva', ' salvador'),  
    (42, 'Amaya salvador', ' Arturo Ramiro '),
    (43, 'Andrade hojanda', ' Raqael '),
    (44, 'Garcias Angulo ', ' Raul '),
    (45, 'Antemate Cligo', ' Miguel angel'), 
    (46, 'Antonio palomeque', ' Armando '),
    (47, 'Anzures palladares', ' Martha '),
    (48, 'villasesor Aquiles', ' Gustavo '),
    (49, 'Aragon Jiménez', ' Castro Alfredo'),
    (50, 'Arqea pérez', ' Alberto '),
    (51, 'Melgar Arguello', ' Ernesto'), 
    (52, 'Argumosa perez', ' Rosalía '),
    (53, 'Arias Rodríguez', ' socorro '),
    (54, 'Romero Armenta', ' oscar Guillermo'), 
    (55, 'Arnaud rivas', ' Javier  '),
    (56, 'valle Arredondo', ' Javier leonardo')
;

--usuario
INSERT INTO 
    usuario (usr_id, persona_id, tipousuario_id, usr_nombre, usr_contrasenia) 
VALUES
    (1, 1, 1, 'TilBacator', 'tor123'),
    (2, 2, 1, 'Britolan', 'lan234'),
    (3, 3, 3, 'Ñoguarralba', 'alba345'),
    (4, 4, 3, 'HuevosCarlos', 'carlos567'),
    (5, 5, 3, 'Trozadrés', 'dres920'),
    (6, 6, 3, 'HoriaSuzana', 'zana730'),
    (7, 7, 3, 'Adistando', 'tando405'),
    (8, 8, 3, 'Camelito', 'lito111'),
    (9, 9, 4, 'Monorja', 'mon0293'),
    (10, 10, 4, 'setxu', 'set9182'),
    (11, 11, 4, 'Garela', 'garela9281'),
    (12, 12, 4, 'Alapomero', 'pomero29'),
    (13, 13, 4, 'Valescarna', 'carna212'),
    (14, 14, 4, 'Jonesisco', 'sisco999'),
    (15, 15, 4, 'Jonesusco','susco002'),
    (16, 16, 4, 'Jonesco', 'nesco123'),
    (17, 17, 4, 'GerloPaco', 'pacopaco23'),
    (18, 18, 4, 'Cabasana', 'san5678'),
    (19, 19, 4, 'Turbadomás', 'domas010'),
    (20, 20, 4, 'Maite', 'maite2124'),
    (21, 21, 4, 'Chondica', 'ica2394'),
    (22, 22, 4, 'Aceveya', 'veya009'),
    (23, 23, 2, 'Mejíque', 'jique839'), 
    (24, 24, 2, 'lina', 'lina823'),
    (25, 25, 2, 'Cantosé', 'tose678'),
    (26, 26, 2, 'Celina', 'celina78392'),
    (27, 27, 2, 'Aguirma', 'irma9402'),
    (28, 28, 2, 'israel', 'israel982'),
    (29, 29, 2, 'Martonio', 'tonio9482'),
    (30, 30, 2, 'Aldina ', 'din203'),
    (31, 31, 2, 'Alejo', 'alejo5678'),
    (32, 32, 2, 'GAlemán', 'leman1382'),
    (33, 33, 2, 'AlRocío', 'rocio2121'),
    (34, 34, 2, 'Alardo', 'alardo123'),
    (35, 35, 2, 'navson', 'navson000'),
    (36, 36, 2, 'Alque', 'alque0283'),
    (37, 37, 2, 'Alívid', 'vid1242'),
    (38, 38, 2, 'Mendocar', 'car123'),
    (39, 39, 2, 'alvanica', 'nica239832'),
    (40, 40, 2, 'Medelipe', 'lipelipe21'),
    (41, 41, 2, 'alvador', 'dor12dor'),  
    (42, 42, 2, 'Amamiro', 'miro421'),
    (43, 43, 2, 'Raqael', 'ael01828'),
    (44, 44, 2, 'GaRaul', 'raul1492'),
    (45, 45, 2, 'Antegel', 'gel542'), 
    (46, 46, 2, 'Antomando', 'mandomando312'),
    (47, 47, 2, 'Anzitha', 'tha8932'),
    (48, 48, 2, 'villavo', 'llavo21'),
    (49, 49, 2, 'Aragedo', 'gedo430'),
    (50, 50, 2, 'Arqeberto', 'berto007'),
    (51, 51, 2, 'Melganesto', 'nesto87278'), 
    (52, 52, 2, 'Arlía', 'arlia1214'),
    (53, 53, 2, 'socorro', 'soco21432'),
    (54, 54, 2, 'Romermo', 'romero6789'), 
    (55, 55, 2, 'Arnavier ', '12112'),
    (56, 56, 2, 'vallenardo', 'ssdada212')
;

--conjunto
INSERT INTO 
    conjunto(cjt_id, cjt_nombre) 
VALUES
    ('1', 'Villas del prado'),
    ('2', 'Prados de la villa')
;

--usuario_conjunto
INSERT INTO 
    usuario_conjunto(usuario_id, conjunto_id) 
VALUES
    (1, 1), (2, 2), (3, 1), (4, 1), (5, 1),
    (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
    (11, 1), (12, 1), (13, 1), (14, 1), (15, 1),
    (16, 1), (17, 1), (18, 1), (19, 1), (20, 1),
    (21, 1), (22, 1), (23, 1), (24, 1), (25, 1),
    (26, 1), (27, 1), (28, 1), (29, 1), (30, 1),
    (31, 1), (32, 2), (33, 1), (34, 1), (35, 1),
    (36,1), (37,1), (38,1), (39, 1), (40, 1),
    (41, 1), (42, 1), (43, 1), (44, 1), (45, 1), 
    (46, 1), (47, 1), (48, 1), (49, 1), (50, 1),
    (51, 1), (52, 1), (53, 1), (54, 1), (55, 1),
    (56, 1)
;


--imueble
INSERT INTO 
    inmueble (imbl_numero, conjunto_id) 
VALUES
    (101,1), (102,1), (103,1), (104,1), (105,1),
    (106,1), (107,1), (108,1), (109,1), (110,1),
    (201,1), (202,1), (203,1), (204,1), (205,1),
    (206,1), (207,1), (208,1), (209,1), (210,1),
    (301,1), (302,1), (303,1), (304,1), (305,1),
    (306,1), (307,1), (308,1), (309,1), (310,1),
    (401,1), (402,1), (403,1), (404,1), (405,1),
    (406,1), (407,1), (408,1), (409,1), (410,1),
    (501,1), (502,1), (503,1), (504,1), (505,1),
    (506,1), (507,1), (508,1), (509,1), (510,1),
    (601,1), (602,1), (603,1), (604,1), (605,1),
    (606,1)
;

--tipo_vinculacion
INSERT INTO 
    tipo_vinculacion (tvcl_id, tvcl_nombre) 
VALUES
    ('2', 'Habitante'),
    ('1', 'Propietario'),
    ('3', 'Inquilino')
;

--vinculacion
INSERT INTO 
    vinculacion (persona_id , inmueble_id, tipovinculacion_id) 
VALUES
    (1, 1, 1), (12, 12, 1), (13, 13, 1), (42, 42, 1), (2, 2, 1),
    (6, 6, 1), (17, 17, 1), (18, 18, 1), (19, 19, 3), (10, 10, 1), 
    (21, 21, 3), (22, 22, 2), (23, 23, 1), (24, 24, 1), (25, 25, 1),
    (26, 26, 2), (27, 27, 1), (28, 28, 2), (29, 28, 1), (56, 56, 1), 
    (31, 31, 3), (32, 32, 1), (33, 33, 1), (43, 43, 1), (35, 35, 1), 
    (36, 36, 3), (37, 37, 1), (38, 38, 1), (39, 39, 1), (3, 3, 1),
    (41, 41, 1), (42, 42, 2), (43, 43, 1), (44, 44, 2), (45, 45, 2), 
    (46, 46, 1), (47, 47, 1), (48, 48, 1), (49, 49, 1), (4, 4, 3), 
    (51, 51, 2), (52, 52, 1), (53, 53, 1), (54, 54, 1), (55, 55, 1), 
    (56, 56, 3), (5, 5, 1), (8, 8, 1), (9, 9, 1), (3, 3, 1), 
    (1, 1, 3), (7, 7, 1), (32, 32, 1), (41, 41, 1), (50, 50, 2), 
    (40, 40, 3)
;

--servicio
INSERT INTO 
    servicio (svc_fecha, svc_descripcion, svc_valor)
VALUES
    ('12/05/2016', 'Parqueadero', 250000),
    ('12/05/2016', 'Salon comunal', 500000),
    ('12/05/2016', 'Gimnasio', 25000),
    ('12/05/2016', 'Local', 1500000),
    ('12/05/2016', 'Parrilla', 100000),
    ('22/02/2017', 'Local', 1800000),
    ('25/02/2017', 'Parrilla', 80000),
    ('2/02/2018', 'Parqueadero', 280000),
    ('2/02/2018', 'Salon comunal', 450000)
;


--historia_inmueble
INSERT INTO 
    historia_inmueble (inmueble_id , servicio_id, himbl_fecha)
VALUES
    (1,1,'12/08/2016'), (12,1,'13/08/2016'), (13,1,'12/08/2016'), (42,1,'15/08/2016'), (2,1,'14/08/2016'),
    (6,1,'13/08/2016'), (17,1,'16/08/2016'), (18,2,'2/05/2016'), (19,2,'28/07/2016'), (10,3,'14/05/2016'),
    (21,3,'28/05/2016'), (24,3,'2/06/2016'), (25,3,'7/06/2016'), (27,3,'11/06/2016'), (32,3,'24/06/2016'),
    (33,4,'15/05/2016'), (36,4,'18/05/2016'), (37,4,'29/05/2016'), (38,4,'4/06/2016'), (39,4,'5/06/2016'),
    (33,4,'15/06/2016'), (41,5,'12/05/2016'), (42,5,'14/06/2016'), (43,5,'8/07/2016'), (47,5,'24/07/2016'),
    (48,6,'28/02/2017'), (49,6,'2/03/2017'), (4,6,'15/03/2017'), (54,6,'2/04/2017'), (55,6,'15/05/2017'),
    (56,6,'12/05/2017'), (5,7,'12/05/2017'), (8,7,'4/07/2017'), (1,8,'12/04/2017'), (7,8,'19/04/2017'),
    (32,8,'2/05/2017'), (41,9,'27/05/2017'), (40,9,'30/06/2017')
;

--asamblea
INSERT INTO 
    asamblea (asbl_fecha, conjunto_id)
VALUES
    ('18/02/2016', 1), ('27/11/2016', 1), ('5/12/2017', 1)
;


--registro asistencia 
INSERT INTO 
    registro_asistencia (inmueble_id, asamblea_id)
VALUES
    (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), 
    (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), 
    (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), 
    (16, 1), (17, 1), (18, 1), (19, 1), (20, 1), 
    (21, 1), (22, 1), (23, 1), (34, 1), (35, 1), 
    (36, 1), (37, 1), (38, 1), (39, 1), (30, 1), 
    (41, 1), (42, 1), (43, 1), (44, 1), (45, 1), 
    (46, 1), (47, 1), (48, 1), (49, 1), (40, 1), 
    (50, 1), (51, 1), (52, 1), (53, 1), (54, 1), 
	(55, 1), (56, 1), 
	(1, 2), (2, 2), (3, 2), (4, 2), 
    (5, 2), (6, 2), (7, 2), (8, 2), (9, 2), 
    (10, 2), (11, 2), (12, 2), (13, 2), (14, 2), 
    (15, 2), (16, 2), (17, 2), (18, 2), (19, 2), 
    (20, 2), (21, 2), (22, 2), (23, 2), (34, 2), 
    (35, 2), (36, 2), (37, 2), (38, 2), (39, 2), 
    (30, 2), (41, 2), (42, 2), (43, 2), (44, 2), 
    (45, 2), (46, 2), (47, 2), (48, 2), (49, 2), 
    (40, 2), (51, 2), (52, 2), (53, 2), (54, 2), 
    (55, 2), (56, 2), (50, 2)
;


--propuesta
INSERT INTO 
    propuesta (prp_descripcion, asamblea_id)
VALUES
    ('Cambio de precio de servicios', 1),
    ('Eleccion presidente de la junta', 1),
    ('Revisor fiscal', 1),
    ('Castigo residuos de mascotas', 1),
    ('Cambio precios de servicios', 2),
    ('Invertir en jardin', 2),
    ('Mejora de gimnasio', 2),
    ('Revisor fiscal', 3),
    ('Cambio reparticion de parqueaderos', 3)
;


--opcion_propuesta
INSERT INTO 
    opcion_respuesta (orpt_descripcion, propuesta_id, orpt_votacion)
VALUES
    ('si', 1, 40), ('no', 1, 2), 
    ('si', 2, 35), ('no', 2, 10),
    ('revisor fiscal 1: juan pelaez', 3, 32),
    ('revisor fiscal 2: clara toledo', 3, 4),
    ('revisor fiscal 3: placido domingo', 3, 2),
    ('si', 4, 40), ('no', 4, 0),
    ('si', 5, 32), ('no', 5, 6),
    ('si', 6, 38), ('no', 6, 2),
    ('si', 7, 12), ('no', 7, 32),
    ('revisor fiscal 1: placido domingo', 8, 32),
    ('revisor fiscal 2: juan pelaez', 8, 2),
    ('si', 9, 27), ('no', 9, 14)
;


--registro_votacion
INSERT INTO 
    registro_votacion (inmueble_id, opcionrespuesta_id) 
VALUES
    (1,1), (2,1), (3,1), (5,1), (6,1),
    (7,1), (8,1), (9,1), (10,1), (11,1),
    (12,1), (13,1), (14,2), (15,1), (16,1),
    (17,1), (18,1), (19,1), (20,1), (21,1),
    (22,1), (24,1), (25,2), (26,1), (27,1),
    (28,1), (29,1), (20,1), (21,1), (22,1),
    (23,1), (24,1), (25,1), (27,1), (28,1),
    (29,1), (30,1), (31,1), (32,1), (33,1),
    (34,1), (35,1), (36,1), (38,1), (39,1),
    (40,1), (41,1), (42,1), (44,1), (45,1),
    (46,1), (1,3), (2,4), (3,3), (4,3),
    (5,3), (6,3), (7,3), (8,4), (10,3),
    (11,3), (12,3), (13,3), (14,3), (15,3),
    (16,3), (17,4), (18,3), (19,3), (20,3),
    (21,3), (22,3), (23,3), (24,3), (25,3),
    (26,4), (27,3), (28,3), (29,4), (20,3),
    (21,3), (22,3), (23,3), (24,3), (25,4),
    (26,4), (29,3), (30,3), (31,3), (32,3),
    (33,3), (34,3), (35,3), (36,3), (37,3),
    (38,4), (40,4), (41,4), (42,3), (44,3),
    (45,3), (46,3), (1,5), (2,5), (3,5),
    (4,5), (5,5), (6,5), (7,5), (8,5),
    (9,5), (10,6), (11,5), (12,5),  (13,5),
    (14,5), (15,5), (16,5), (17,5), (18,5),
    (19,5), (20,5), (21,5), (22,5), (23,5),
    (24,5), (25,6), (26,5), (27,5), (28,5),
    (29,5), (20,7), (21,5), (22,5), (23,5),
    (24,5), (25,5), (26,5), (27,6), (28,5),
    (29,5), (30,5), (31,5), (32,5), (33,7),
    (34,5), (35,5), (36,6), (37,5), (38,5),
    (39,5), (40,5), (41,5), (42,5), (43,5),
    (44,5), (45,5), (46,5)
;