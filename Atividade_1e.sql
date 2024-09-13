CREATE DATABASE atividade_1e;

CREATE TABLE departamento(
dep_codigo INTEGER PRIMARY KEY,
dep_nome VARCHAR (50)
);

CREATE TABLE funcionario(
fun_codigo INTEGER PRIMARY KEY,
dep_codigo INTEGER,
fun_nome VARCHAR(100),
fun_nascimento DATE,
fun_salario NUMERIC (10,2),
FOREIGN KEY (dep_codigo) REFERENCES departamento(dep_codigo)
);
CREATE TABLE dependente(
depen_codigo INTEGER PRIMARY KEY,
fun_codigo INTEGER,
depen_nome VARCHAR (100),
FOREIGN KEY (fun_codigo) REFERENCES funcionario(fun_codigo)
);

