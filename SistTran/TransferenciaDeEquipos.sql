-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-11-09 16:58:28.695
CREATE DATABASE TransferenciaDeEquipos char SET utf8;
use TransferenciaDeEquipos;
-- tables
-- Table: DETALLE_TRANFERENCIA
CREATE TABLE DETALLE_TRANFERENCIA (
    CODDETTRAN int NOT NULL AUTO_INCREMENT COMMENT 'Contiene el identificador de los detalles de transferencia',
    TRANSFERENCIA_CODTRAN int NOT NULL,
    EQUIPO_CODEQ int NOT NULL,
    CONSTRAINT DETALLE_TRANFERENCIA_pk PRIMARY KEY (CODDETTRAN)
) COMMENT 'Contiene los detalles de la transferencia';

-- Table: EQUIPO
CREATE TABLE EQUIPO (
    CODEQ int NOT NULL AUTO_INCREMENT,
    TIPEQ char(1) NOT NULL COMMENT 'Contiene el tipo de equipo:
P = PC
M = MONITOR
T = TECLADO
S = MOUSE',
    CODPATEQ varchar(8) NOT NULL COMMENT 'Contiene el codigo patrimonial',
    MARCEQ varchar(30) NOT NULL COMMENT 'Contiene la marca del equipo',
    MODELEQ varchar(30) NOT NULL COMMENT 'Contiene el modelo del equipo',
    SEREQ varchar(30) NOT NULL,
    ESTEQ varchar(1) NOT NULL COMMENT 'Contiene si esta operativo o no el equipo
A = ACTIVO
B = SUSPENDIDO
C = INACTIVO',
    OBSEQ varchar(300) NOT NULL COMMENT 'Contiene la observacion del equipo.',
    CONSTRAINT EQUIPO_pk PRIMARY KEY (CODEQ)
) COMMENT 'Contiene los equipos';

-- Table: PERSONA
CREATE TABLE PERSONA (
    CODPER int NOT NULL AUTO_INCREMENT,
    NOMPER varchar(100) NOT NULL,
    APEPER varchar(100) NOT NULL,
    DNIPER varchar(8) NOT NULL,
    GENPER varchar(1) NOT NULL,
    ESCPER varchar(5) NOT NULL,
    CORRINSTPER varchar(100) NOT NULL,
    TELPER varchar(9) NOT NULL,
    SEDE_CODSED int NOT NULL,
    ARPER VARCHAR(30) NOT NULL COMMENT 'AREA DE LA PERSONA',
    CARGPER varchar(50) NOT NULL,
    CONSTRAINT PERSONA_pk PRIMARY KEY (CODPER)
);

-- Table: SEDE
CREATE TABLE SEDE (
    CODSED int NOT NULL AUTO_INCREMENT,
    NOMSED varchar(50) NOT NULL,
    CONSTRAINT SEDE_pk PRIMARY KEY (CODSED)
);

-- Table: TRANSFERENCIA
CREATE TABLE TRANSFERENCIA (
    CODTRAN int NOT NULL AUTO_INCREMENT,
    CODPER_EMITRAN int NOT NULL,
    FECEMITRAN date NULL COMMENT 'FECHA EN LA QUE SE ENVIÓ EL EQUIPO',
    HOEMITRAN time NOT NULL,
    CODPER_RECTRAN int NOT NULL,
    FECRECTRAN date NOT NULL COMMENT 'FECHA EN LA QUE SE RECIBIÓ EL EQUIPO',
    HORECTRAN time NOT NULL,
    ESTTRAN varchar(1) NOT NULL COMMENT '(A) Activo
(I) Inactivo
(S) Suspendido',
    OBSTRAN varchar(200) NOT NULL COMMENT 'OBSERVACION DE LA SITUACIÓN DEL EQUIPO',
    CONSTRAINT TRANSFERENCIA_pk PRIMARY KEY (CODTRAN)
);

-- foreign keys
-- Reference: EQUIPO_DETALLE_TRANFERENCIA_CODEQ (table: DETALLE_TRANFERENCIA)
ALTER TABLE DETALLE_TRANFERENCIA ADD CONSTRAINT EQUIPO_DETALLE_TRANFERENCIA_CODEQ FOREIGN KEY EQUIPO_DETALLE_TRANFERENCIA_CODEQ (EQUIPO_CODEQ)
    REFERENCES EQUIPO (CODEQ);

-- Reference: PERSONA_SEDE (table: PERSONA)
ALTER TABLE PERSONA ADD CONSTRAINT PERSONA_SEDE FOREIGN KEY PERSONA_SEDE (SEDE_CODSED)
    REFERENCES SEDE (CODSED);

-- Reference: PERSONA_TRANSFERENCIA (table: TRANSFERENCIA)
ALTER TABLE TRANSFERENCIA ADD CONSTRAINT PERSONA_TRANSFERENCIA FOREIGN KEY PERSONA_TRANSFERENCIA (CODPER_RECTRAN)
    REFERENCES PERSONA (CODPER);

-- Reference: TRANSFERENCIA_DETALLE_TRANFERENCIA_CODTRAN (table: DETALLE_TRANFERENCIA)
ALTER TABLE DETALLE_TRANFERENCIA ADD CONSTRAINT TRANSFERENCIA_DETALLE_TRANFERENCIA_CODTRAN FOREIGN KEY TRANSFERENCIA_DETALLE_TRANFERENCIA_CODTRAN (TRANSFERENCIA_CODTRAN)
    REFERENCES TRANSFERENCIA (CODTRAN);

-- Reference: TRANSFERENCIA_PERSONA (table: TRANSFERENCIA)
ALTER TABLE TRANSFERENCIA ADD CONSTRAINT TRANSFERENCIA_PERSONA FOREIGN KEY TRANSFERENCIA_PERSONA (CODPER_EMITRAN)
    REFERENCES PERSONA (CODPER);

-- End of file.

