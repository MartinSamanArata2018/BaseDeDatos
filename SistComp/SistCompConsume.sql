USE SISTCOMP;

SELECT AUTENTICAR ('admin','admin');
SELECT DEVCODLOG('12121212');

CALL ACCION('María del Rosario','Delgado Revatta','12121212','+51000000000','V','RE');
SELECT * FROM PERSONA;
SELECT * FROM LOGIN;
DESCRIBE LOGIN;

SELECT CONCAT(LEFT('martin alexis',1), RIGHT('martin alexis',1));

