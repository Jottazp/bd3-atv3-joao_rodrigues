CREATE DATABASE atv3_bd3_joao_rodrigues;

USE atv3_bd3_joao_rodrigues;

CREATE TABLE tbl_turma (
    cod_turma INT AUTO_INCREMENT,
    sigla VARCHAR(10) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (cod_turma)
);

CREATE TABLE tbl_alunos (
    cod_aluno INT AUTO_INCREMENT,
    cod_turma INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    rg VARCHAR(9),
    telefone VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY (cod_aluno),
    FOREIGN KEY (cod_turma) REFERENCES tbl_turma(cod_turma)
);

CREATE TABLE tbl_alunos_bkp (
    cod_aluno INT AUTO_INCREMENT,
    cod_turma INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    rg VARCHAR(9),
    telefone VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    PRIMARY KEY (cod_aluno),
    FOREIGN KEY (cod_turma) REFERENCES tbl_turma(cod_turma)
);

CREATE TABLE tbl_disciplinas (
    cod_disciplinas INT AUTO_INCREMENT,
    cod_turma INT NOT NULL,
    sigla VARCHAR(50) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (cod_disciplinas),
    FOREIGN KEY (cod_turma) REFERENCES tbl_turma(cod_turma)
);

CREATE TABLE tbl_frequencia (
    cod_frequencia INT AUTO_INCREMENT,
    cod_aluno INT NOT NULL,
    cod_disciplinas INT NOT NULL,
    data_chamada DATE NOT NULL,
    frequencia DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (cod_frequencia),
    FOREIGN KEY (cod_aluno) REFERENCES tbl_alunos(cod_aluno),
    FOREIGN KEY (cod_disciplinas) REFERENCES tbl_disciplinas(cod_disciplinas)
);