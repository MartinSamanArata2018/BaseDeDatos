USE iVentas;
SELECT * FROM PERSONA;
INSERT INTO PERSONA 
    (NOMPER, APEPER, DNIPER, TLFPER, TIPPER, DISTRITO_CODDIS_DISPER, DIRPER, USRLOGPER, PSWLOGPER, ESTLOGPER) 
    VALUES 
    ('MARTIN ALEXIS','SAMAN ARATA','72720455','+51974091056','A',15,'Urb. Valle Hermoso MzD Lt21','admin','admin','A'),
    ('MARIA DEL ROSARIO','DELGADO REVATTA','87654321','+51','V',15,'De Narnia :v','vendedor','vendedor','A'),
    ('KOWALSKI','GUARANA','12345678','+51999999999','I',16,'Muy muy lejano','inventariador','inventariador','A'),
    ('LENOVO LENEVO','LA MANO','88887876','+51999999999','C',14,'Dimelo','','','I');

INSERT INTO MARCA 
    (NOMMAR) 
    VALUES 
    ('HP'),
    ('TOSHIBA'),
    ('SONY'),
    ('APPLE');

INSERT INTO MODELO 
    (NOMMOD, MARCA_CODMAR_MARMOD) 
        VALUES 
        ('V200',1),
        ('XS2019',4);

INSERT INTO EMPRESA 
    (NOMEMP, RUCEMP, TLFEMP, EMAILEMP, PERSONA_CODPER_REPLEG, TIPEMP, DISTRITO_CODDIS_DISEMP, DIREMP) 
    VALUES
    ('iVentas','20523612140','+99999999999','demo@example.com',1,'2',15,'urb.');

INSERT INTO PRODUCTO 
    (NOMPRO, MODELO_CODMOD_MODPRO, SERPRO, PREPRO, URLIMGPRO, ATRIBPRO, ESTPRO, FECGARPRO, EMPRESA_CODEMP_PROV) 
    VALUES 
    ('CELULAR',1,'xxx-xxx-xxx',20.2,'https://media.aws.alkosto.com/media/catalog/product/cache/6/image/660x441/69ace863370f34bdf190e4e164b6e123/f/o/fotos_equipos_j6_frente_1.jpg','JSON','A',"2018-12-12",1),
    ('IPHONE XS',2,'yyy-yyy-yyy',2000.99,'https://i.gadgets360cdn.com/products/large/1536782640_635_iphone_xs.jpg','Pantalla: AMOLED','A',"2019-12-12",1);





