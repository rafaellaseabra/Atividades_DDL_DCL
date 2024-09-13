#CREATE USER 'Rafaella'@'localhost' identified by '123';
#RENAME USER 'Rafaella'@'localhost' TO 'RAFA'@'localhost';

#SELECT USER, HOST FROM MYSQL.USER;

#CREATE USER 'Cecilia'@'localhost' identified by '123';
#DROP USER 'Cecilia'@'localhost';
#SELECT USER, HOST FROM MYSQL.USER;

ALTER USER 'RAFA'@'localhost' identified by'456';

##CONCEDER ACESSO--------------------------------------------------------------------------
GRANT ALL PRIVILEGES ON atividade_1e TO 'RAFA'@'localhost';
SHOW GRANTS FOR 'RAFA'@'localhost';

#alterar permissoes------------------------------------------------------------------------

REVOKE ALL privileges ON atividade_1e FROM 'RAFA'@'localhost';

#Acesso apenas de consulta(inserir dados)----------------------------------------------------.* todas as tabelas

GRANT INSERT ON atividade_1e.* TO 'RAFA'@'localhost';

#Delete---------------------------------------------------------------------------------------
GRANT DELETE ON atividade_1e.* TO 'RAFA'@'localhost';

#Acesso apenas de consulta---------------------------------------------------------------------
GRANT UPDATE  ON atividade_1e.* TO 'RAFA'@'localhost';
