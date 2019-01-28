USE iVentas;

INSERT INTO PERSONA 
(NOMPER, APEPER, DNIPER, TLFPER, TIPPER, DISTRITO_CODDIS_DISPER, DIRPER, USRLOGPER, PSWLOGPER, ESTLOGPER) 
VALUES ('MARTIN ALEXIS','SAMAN ARATA','72720455','+51974091056','A','15','Urb. Valle Hermoso MzD Lt21','admin','admin','A');


SELECT PERSONA.*, DEPARTAMENTO.NOMDEP, PROVINCIA.NOMPROV, DISTRITO.NOMDIS FROM PERSONA
INNER JOIN DISTRITO ON PERSONA.DISTRITO_CODDIS_DISPER=DISTRITO.CODDIS
INNER JOIN PROVINCIA ON DISTRITO.PROVINCIA_CODPROV = PROVINCIA.CODPROV
INNER JOIN DEPARTAMENTO ON PROVINCIA.DEPARTAMENTO_CODDEP = DEPARTAMENTO.CODDEP;
