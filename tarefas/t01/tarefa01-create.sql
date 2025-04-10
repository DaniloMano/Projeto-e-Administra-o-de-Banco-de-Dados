-- Criação das Tabelas no PostgreSQL com nomes originais

CREATE TABLE funcionario (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHAR(1),
    dt_nasc DATE,
    salario NUMERIC(10,2),
    cod_depto INTEGER,
    CONSTRAINT fk_funcionario_cod_depto
        FOREIGN KEY (cod_depto)
        REFERENCES departamento(codigo)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE departamento (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(100),
    cod_gerente INTEGER,
    CONSTRAINT fk_departamento_cod_gerente
        FOREIGN KEY (cod_gerente)
        REFERENCES funcionario(codigo)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE,
    descricao TEXT,
    cod_depto INTEGER,
    cod_responsavel INTEGER,
    data_inicio DATE,
    data_fim DATE,
    CONSTRAINT fk_projeto_cod_depto
        FOREIGN KEY (cod_depto)
        REFERENCES departamento(codigo)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_projeto_cod_responsavel
        FOREIGN KEY (cod_responsavel)
        REFERENCES funcionario(codigo)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    cod_responsavel INTEGER,
    data_inicio DATE,
    data_fim DATE,
    CONSTRAINT fk_atividade_cod_responsavel
        FOREIGN KEY (cod_responsavel)
        REFERENCES funcionario(codigo)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE atividade_projeto (
    cod_projeto INTEGER,
    cod_atividade INTEGER,
    PRIMARY KEY (cod_projeto, cod_atividade),
    CONSTRAINT fk_atividade_projeto_cod_projeto
        FOREIGN KEY (cod_projeto)
        REFERENCES projeto(codigo)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_atividade_projeto_cod_atividade
        FOREIGN KEY (cod_atividade)
        REFERENCES atividade(codigo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
