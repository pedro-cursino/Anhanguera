CREATE DATABASE EXERCICIO01;

USE EXERCICIO01;

/*
Departamento(codigo_departamento, nome)
Curso(codigo_curso, nome) ​
Disciplina(codigo_disciplina, nome, creditos, codigo_departamento) ​
Aluno (codigo_aluno, nome, codigo_curso) ​
Conceito(codigo_aluno, codigo_disciplina, ano_Semestre, conceito) ​
Curriculo(codigo_curso, codigo_disciplina, obrigatoria_opcional) ​
*/
CREATE TABLE DEPARTAMENTO(
	COD_DEPTO		INT PRIMARY KEY AUTO_INCREMENT,
    NOME			VARCHAR(40) NOT NULL
);

CREATE TABLE CURSO (
	COD_CURSO	INT auto_increment PRIMARY KEY,
    DESCRICAO	VARCHAR(70) NOT NULL
);

CREATE TABLE DISCIPLINA (
	COD_DISCIPLINA		INT PRIMARY KEY AUTO_INCREMENT,
    NOME				VARCHAR(40) NOT NULL,
    CREDITOS			INT,
    COD_DEPARTAMENTO	INT /* CHAVE ESTRANGEIRA */
);

CREATE TABLE ALUNO 
(
	COD_ALUNO	INT auto_increment PRIMARY KEY,
    NOME		VARCHAR(80) NOT NULL,
    COD_CURSO	INT /* CHAVE ESTRANGEIRA */
);

CREATE TABLE CONCEITO (
	COD_ALUNO		INT /* CHAVE ESTRANGEIRA */,
    COD_DISCIP		INT /* CHAVE ESTRANGEIRA */,
    ANO_SEMESTRE	VARCHAR(10) NOT NULL,
    CONCEITO		DECIMAL(5,2) NOT NULL
);

CREATE TABLE CURRICULO(
	COD_CURSO		INT /* CHAVE ESTRANGEIRA */,
    COD_DISCIP		INT /* CHAVE ESTRANGEIRA */,
    OBG_OPC			VARCHAR(20) NOT NULL
);