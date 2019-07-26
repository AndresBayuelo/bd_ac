create role administrador;
create role propietario;
create role auxiliar_asamblea;
create role inquilino_local;
create role soporte;

grant insert, select on usuario, persona, asamblea, tipo_vinculacion, vinculacion, inmueble,servicio,historia_inmueble to administrador; 
grant select on registro_votacion, registro_asistencia to administrador;
grant select on historia_inmueble, registro_votacion to propietario;
grant insert, select on registro_asistencia, propuesta, opcion_respuesta to auxiliar_asamblea;
grant select on historia_inmueble to inquilino_local;
grant insert, select on conjunto, tipo_usuario to soporte;

---------------------------------------------------------

create user TilBacator with password 'tor123';
create user Britolan with password 'lan234';

grant administrador to TilBacator;
grant administrador to Britolan;

------------------------------------------------------

create user Noguarralba with password 'alba345';
create user HuevosCarlos with password 'carlos567';
create user Trozadres with password 'dres920';
create user HoriaSuzana with password 'zana730';
create user Adistando with password 'tando405';
create user Camelito with password 'lito111';

grant auxiliar_asamblea to Noguarralba;
grant auxiliar_asamblea to HuevosCarlos;
grant auxiliar_asamblea to HoriaSuzana;
grant auxiliar_asamblea to Adistando;
grant auxiliar_asamblea to Trozadres;
grant auxiliar_asamblea to Camelito;

--------------------------------------------------

create user setxu with password 'set9182';
create user Garela with password 'garela9281';
create user Alapomero with password 'pomero29';
create user Valescarna with password 'carna212';
create user Jonesisco with password 'sisco999';
create user Jonesusco with password 'susco002';
create user Jonesco with password 'nesco123';
create user GerloPaco with password 'pacopaco23';
create user Cabasana with password 'san5678';
create user Turbadomás with password 'domas010';
create user Maite with password 'maite2124';
create user Chondica with password 'ica2394';
create user Aceveya with password 'veya009';

grant inquilino_local to setxu;
grant inquilino_local to Garela;
grant inquilino_local to Alapomero;
grant inquilino_local to Valescarna;
grant inquilino_local to Jonesisco;
grant inquilino_local to Jonesusco;
grant inquilino_local to Jonesco;
grant inquilino_local to GerloPaco;
grant inquilino_local to Cabasana;
grant inquilino_local to Turbadomás;
grant inquilino_local to Maite;
grant inquilino_local to Chondica;
grant inquilino_local to Aceveya;

-----------------------------------------

create user Mejique with password 'jique839';
create user lina with password 'garela9281';
create user Cantose with password 'tose678';
create user Celina with password 'celina78392';
create user Aguirma with password 'irma9402';
create user israel with password 'israel982';
create user Martonio with password 'tonio9482';
create user Aldina with password 'din203';
create user Alejo with password 'alejo5678';
create user GAleman with password 'leman1382';
create user AlRocío with password 'rocio2121';
create user Alardo with password 'alardo123';
create user navson with password 'navson000';
create user Alque with password 'alque0283';
create user Alivid with password 'vid1242';
create user Mendocar with password 'car123';
create user alvanica with password 'nica239832';
create user Medelipe with password 'lipelipe21';
create user alvador with password 'dor12dor';
create user Amamiro with password 'miro421';
create user Raqael with password 'ael01828';
create user GaRaul with password 'raul1492';
create user Antegel with password 'gel542';
create user Antomando with password 'mandomando312';
create user Anzitha with password 'tha8932';
create user villavo with password 'llavo21';
create user Aragedo with password 'gedo430';
create user Arqeberto with password 'berto007';
create user Melganesto with password 'nesto87278';
create user Arlia with password 'arlia1214';
create user socorro with password 'soco21432';
create user Romermo with password 'romero6789';
create user Arnavier with password '12112';
create user vallenardo with password 'ssdada212';

grant propietario to Mejique;
grant propietario to lina;
grant propietario to Cantose;
grant propietario to Celina;
grant propietario to Aguirma;
grant propietario to israel;
grant propietario to Martonio;
grant propietario to Aldina;
grant propietario to Alejo;
grant propietario to GAleman;
grant propietario to AlRocío;
grant propietario to Alardo;
grant propietario to navson;
grant propietario to Alque;
grant propietario to Alivid;
grant propietario to Mendocar;
grant propietario to alvanica;
grant propietario to Medelipe;
grant propietario to alvador;
grant propietario to Amamiro;
grant propietario to Raqael;
grant propietario to GaRaul;
grant propietario to Antegel;
grant propietario to Antomando;
grant propietario to Anzitha;
grant propietario to villavo;
grant propietario to Aragedo;
grant propietario to Arqeberto;
grant propietario to Melganesto;
grant propietario to Arlia;
grant propietario to socorro;
grant propietario to Romermo;
grant propietario to Arnavier;
grant propietario to vallenardo;
