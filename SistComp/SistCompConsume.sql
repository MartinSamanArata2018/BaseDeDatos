USE SISTCOMP;

SELECT AUTENTICAR ('admin','admin');
SELECT AUTENTICAR ('masa72','@72720455');
SELECT DEVCODLOG('12121212');

SELECT * FROM PERSONA;
SELECT * FROM LOGIN;

/*PERSONA + LOGIN*/
SELECT PERSONA.CODPER, PERSONA.NOMPER, PERSONA.APEPER, PERSONA.DNIPER, PERSONA.TLFPER, LOGIN.USRLOG, LOGIN.PSWLOG, LOGIN.ESTLOG, PERSONA.TIPPER FROM PERSONA INNER JOIN LOGIN ON PERSONA.CODPER = LOGIN.PERSONA_CODPER ;

/*PRODUCTO + MARCA + MODELO*/
SELECT PRODUCTO.CODPRO, PRODUCTO.NOMPRO, MARCA.NOMMAR, MODELO.NOMMOD, PRODUCTO.SERPRO, PRODUCTO.PREPRO, PRODUCTO.URLIMGPRO
FROM PRODUCTO
INNER JOIN MODELO ON PRODUCTO.MODELO_CODMOD = MODELO.CODMOD
INNER JOIN MARCA ON MODELO.MARCA_CODMAR = MARCA.CODMAR;

/*MARCA + MODELO*/
SELECT MODELO.NOMMOD
FROM MODELO
INNER JOIN MARCA ON MODELO.MARCA_CODMAR = MARCA.CODMAR
WHERE MARCA.NOMMAR='DELL';

