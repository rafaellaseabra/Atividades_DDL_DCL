CREATE DATABASE empresa_db;

CREATE USER 'funcionario'@'localhost' identified by '123';
GRANT select ON empresa_db.* TO 'funcionario'@'localhost' ;
RENAME USER 'funcionario'@'localhost' TO 'assistente'@'localhost';


CREATE USER 'gerente' @'localhost' identified by '123';
GRANT select ON empresa_db.* TO 'gerente' @'localhost';
GRANT INSERT ON empresa_db.* TO 'gerente'@'localhost';
GRANT UPDATE ON empresa_db.* TO 'gerente' @'localhost';
REVOKE ALL privileges ON empresa_db.* from 'gerente' @'localhost';
Alter USER 'gerente' @'localhost' identified by '456';

CREATE USER 'admin'@'localhost' identified by '1234';
GRANT ALL privileges ON  empresa_db TO 'admin'@'localhost';

SHOW GRANTS FOR 'assistente'@'localhost';
SHOW GRANTS FOR'gerente' @'localhost';
SHOW GRANTS FOR 'admin'@'localhost';
