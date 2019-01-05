CREATE DATABASE SISTCOMP CHARACTER SET UTF8;
USE SISTCOMP;
CREATE TABLE DETALLE_VENTA (
    CODDETVEN int NOT NULL,
    PRODUCTO_CODPRO int NOT NULL,
    VENTA_CODVEN int NOT NULL,
    CANTPRODETVEN int NOT NULL,
    DSCPRODETVEN double(2,2) NOT NULL,
    ESTDETVEN char(1) NOT NULL,
    CONSTRAINT DETALLE_VENTA_pk PRIMARY KEY (CODDETVEN)
);

-- Table: LOGIN
CREATE TABLE LOGIN (
    CODLOG int NOT NULL AUTO_INCREMENT,
    PERSONA_CODPER int NOT NULL,
    USRLOG varchar(30) NOT NULL,
    PSWLOG varchar(10) NOT NULL,
    ESTLOG char(1) NOT NULL,
    CONSTRAINT LOGIN_pk PRIMARY KEY (CODLOG)
);

-- Table: MARCA
CREATE TABLE MARCA (
    CODMAR int NOT NULL AUTO_INCREMENT,
    NOMMAR varchar(50) NOT NULL,
    CONSTRAINT MARCA_pk PRIMARY KEY (CODMAR)
);

-- Table: MODELO
CREATE TABLE MODELO (
    CODMOD int NOT NULL AUTO_INCREMENT,
    NOMMOD varchar(100) NOT NULL,
    MARCA_CODMAR int NOT NULL,
    CONSTRAINT MODELO_pk PRIMARY KEY (CODMOD)
);

-- Table: PERSONA
CREATE TABLE PERSONA (
    CODPER int NOT NULL AUTO_INCREMENT,
    NOMPER varchar(100) NOT NULL,
    APEPER varchar(100) NOT NULL,
    DNIPER char(8) NOT NULL,
    TLFPER char(12) NOT NULL,
    TIPPER char(1) NOT NULL COMMENT 'A - admin
V - vendedor
C - cliente',
    CONSTRAINT PERSONA_pk PRIMARY KEY (CODPER)
);

-- Table: PRODUCTO
CREATE TABLE PRODUCTO (
    CODPRO int NOT NULL AUTO_INCREMENT,
    NOMPRO varchar(200) NOT NULL,
    MODELO_CODMOD int NOT NULL,
    SERPRO varchar(100) NOT NULL,
    PREPRO double(8,2) NOT NULL,
    URLIMGPRO varchar(300) NOT NULL,
    CONSTRAINT PRODUCTO_pk PRIMARY KEY (CODPRO)
);

-- Table: VENTA
CREATE TABLE VENTA (
    CODVEN int NOT NULL AUTO_INCREMENT,
    CODPERCOMVEN int NOT NULL,
    CODPERVENVEN int NOT NULL,
    FECVEN date NOT NULL,
    HOVEN int NOT NULL,
    CONSTRAINT VENTA_pk PRIMARY KEY (CODVEN)
);

-- foreign keys
-- Reference: DETALLE_VENTA_PRODUCTO (table: DETALLE_VENTA)
ALTER TABLE DETALLE_VENTA ADD CONSTRAINT DETALLE_VENTA_PRODUCTO FOREIGN KEY DETALLE_VENTA_PRODUCTO (PRODUCTO_CODPRO)
    REFERENCES PRODUCTO (CODPRO);

-- Reference: DETALLE_VENTA_VENTA (table: DETALLE_VENTA)
ALTER TABLE DETALLE_VENTA ADD CONSTRAINT DETALLE_VENTA_VENTA FOREIGN KEY DETALLE_VENTA_VENTA (VENTA_CODVEN)
    REFERENCES VENTA (CODVEN);

-- Reference: LOGIN_PERSONA (table: LOGIN)
ALTER TABLE LOGIN ADD CONSTRAINT LOGIN_PERSONA FOREIGN KEY LOGIN_PERSONA (PERSONA_CODPER)
    REFERENCES PERSONA (CODPER);

-- Reference: MODELO_MARCA (table: MODELO)
ALTER TABLE MODELO ADD CONSTRAINT MODELO_MARCA FOREIGN KEY MODELO_MARCA (MARCA_CODMAR)
    REFERENCES MARCA (CODMAR);

-- Reference: PRODUCTO_MODELO (table: PRODUCTO)
ALTER TABLE PRODUCTO ADD CONSTRAINT PRODUCTO_MODELO FOREIGN KEY PRODUCTO_MODELO (MODELO_CODMOD)
    REFERENCES MODELO (CODMOD);

-- Reference: VENTA_PERSONA_CODPERCOMVE (table: VENTA)
ALTER TABLE VENTA ADD CONSTRAINT VENTA_PERSONA_CODPERCOMVE FOREIGN KEY VENTA_PERSONA_CODPERCOMVE (CODPERCOMVEN)
    REFERENCES PERSONA (CODPER);

-- Reference: VENTA_PERSONA_CODPERVENVE (table: VENTA)
ALTER TABLE VENTA ADD CONSTRAINT VENTA_PERSONA_CODPERVENVE FOREIGN KEY VENTA_PERSONA_CODPERVENVE (CODPERVENVEN)
    REFERENCES PERSONA (CODPER);

-- End of file.

