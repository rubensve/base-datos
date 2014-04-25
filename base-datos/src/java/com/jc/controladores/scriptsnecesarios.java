La autenticacion la hago con el unico registro en la tabla 
usurios que es ruben1 login y conraseña veloz


Create table usuarios(
id integer primary key,
login varchar2(80),
password varchar2(80))


create sequence usuario
start with 1
increment by 1
nomaxvalue


CREATE OR REPLACE TRIGGER duplicado BEFORE UPDATE OR INSERT 
ON usuarios FOR EACH ROW 

DECLARE CURSOR prueba IS
SELECT login 
FROM usuarios;

BEGIN
  
FOR I IN prueba LOOP

IF :NEW.login= I.login  THEN

	
RAISE_APPLICATION_ERROR (-20001, 'El usuario ya existe');


END IF;

END LOOP;
END;



create or replace procedure autenticar_usuarios(encontrado out int, my_login in varchar2, my_password in varchar2) as 
begin 

FOR I IN (select *from usuarios) LOOP

IF my_login= I.login AND my_password= I.password THEN

encontrado:= 1;

dbms_output.put_line(encontrado);

ELSE 
   encontrado:= 0;

dbms_output.put_line(encontrado);

END IF;

END LOOP;

end;
/



create table empleados(
id_empleados int,
nombre varchar2(80),
apellidop varchar2(80),
apellidom varchar2(80),
rol varchar2(20),
constraint id_empleados_pk primarey key(id_empleados))

--------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_usuario1( my_id OUT integer, my_nombre IN varchar2, my_apellidop IN varchar2, my_apellidom IN varchar2, my_rol IN varchar2) AS
BEGIN 

SELECT insertar_usuario.nextval into my_id from dual;

INSERT INTO empleados(id_empleados,nombre,apellidop,apellidom, rol) values (my_id, my_nombre, my_apellidop, my_apellidom, my_rol);

END;
/

---------------------------------------------------------------------------------------------------
create sequence insertar_usuario 
start with 1
increment by 1
nomaxvalue;



CREATE OR REPLACE TRIGGER administradores after UPDATE OR INSERT 
ON usuarios FOR EACH ROW 

BEGIN
IF :NEW.rol= 'administrador'  THEN

insert into administradores(id, login, password)
values(:new id, :new login, :new password);

END IF;

