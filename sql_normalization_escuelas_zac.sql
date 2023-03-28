--DROP TABLE IF EXISTS ambito;
--DROP TABLE centro;

--CREATE TABLE centro AS
--(SELECT id_int, tipo_educativo, nivel_educativo, servicio_educativo, clave
--FROM public.escuelas_zac);
--ALTER TABLE centro  
--ADD COLUMN centro_educativo VARCHAR;

--ALTER TABLE centro DROP COLUMN centro_educativo;

--ALTER TABLE centro ADD COLUMN centro_educativo CHARACTER VARYING;

-- Agregar la columna "id_escuela" a la tabla "centro"
--ALTER TABLE centro ADD COLUMN id_escuela integer;

-- Actualizar los valores de "id_escuela" con los valores correspondientes de "id_int" de la tabla "escuelas"
--UPDATE centro SET id_escuela = escuelas_zac.id_int FROM escuelas_zac WHERE centro.id_int = escuelas_zac.id_int;

-- Eliminar la columna "id_int" de la tabla "centro"
--ALTER TABLE centro DROP COLUMN id_int;


UPDATE centro
SET centro_educativo = escuelas_zac.centro_educativo
FROM escuelas_zac
WHERE centro.id_escuela=escuelas_zac.id_int;



--ALTER TABLE centro ADD PRIMARY KEY (id_int);

--CREATE TABLE ambito as
--SELECT id_int, turno, ambito, control, clave
--FROM public.escuelas_zac;

--ALTER TABLE ambito
--ADD CONSTRAINT fk_ambito_centro
--FOREIGN KEY (id_int)
--REFERENCES centro(id_int);


--DROP TABLE entidad;

--CREATE TABLE entidad AS
--SELECT id_int, entidad, clave_entidad, municipio,  clave_municipal, localidad, clave_localidad
--FROM public.escuelas_zac;
--ALTER TABLE entidad ADD PRIMARY KEY (id_int);
--ALTER TABLE entidad ADD CONSTRAINT fk_entidad_centro FOREIGN KEY (id_int) REFERENCES centro(id_int);

--DROP TABLE domicilio;
--CREATE TABLE domicilio as
--SELECT  id_int,domicilio, num_exterior,
--entre_calle, y_calle, calle_posterior, codigo_postal, clave_localidad
--FROM public.escuelas_zac;

--ALTER TABLE domicilio ADD CONSTRAINT fk_domicilio_entidad FOREIGN KEY (id_int) REFERENCES entidad(id_int);

--DROP TABLE alumnos;
--CREATE TABLE alumnos as
--SELECT id_int,total_de_alumnos, alumnos_mujeres, alumnos_hombres, total_de_grupos
--FROM public.escuelas_zac;

--ALTER TABLE alumnos ADD CONSTRAINT fk_centro_alumnos FOREIGN KEY (id_int) REFERENCES centro(id_int);

--CREATE TABLE personal as
--SELECT id_int,total_de_personal, personal_mujeres, personal_hombres
--FROM public.escuelas_zac;

--ALTER TABLE personal ADD CONSTRAINT fk_centro_personal FOREIGN KEY (id_int) REFERENCES centro(id_int);

--CREATE TABLE docentes AS
--SELECT id_int, total_de_docentes, docentes_mujeres, docentes_hombres
--FROM public.escuelas_zac;

--ALTER TABLE docentes ADD CONSTRAINT fk_centro_docentes FOREIGN KEY (id_int) REFERENCES centro(id_int);

--CREATE TABLE aulas_labs AS
--SELECT id_int,aulas_existentes, aulas_en_uso, laboratorios, talleres
--FROM public.escuelas_zac;

--ALTER TABLE aulas_labs ADD CONSTRAINT fk_centro_aulas_labs FOREIGN KEY (id_int) REFERENCES centro(id_int);

--CREATE TABLE contacto as
--SELECT id_int,lada, telefono, correo_electronico
--FROM public.escuelas_zac

--ALTER TABLE contacto ADD CONSTRAINT fk_centro_contacto FOREIGN KEY (id_int) REFERENCES centro(id_int);

--DROP TABLE computadoras;
--CREATE TABLE computadoras AS
--SELECT id_int,computadoras_en_operacion, computadoras_en_operacion_mas_internet, computadoras_en_operacion_uso_educativo
--FROM public.escuelas_zac;

--ALTER TABLE computadoras ADD CONSTRAINT fk_centro_computadoras FOREIGN KEY (id_int) REFERENCES centro(id_int);

--CREATE TABLE coordenadas AS
--SELECT id_int,altitud_msnm, longitud, latitud, longitud_gms, latitud_gms
--FROM public.escuelas_zac;

--ALTER TABLE coordenadas ADD CONSTRAINT fk_centro_coordenadas FOREIGN KEY (id_int) REFERENCES centro(id_int);
