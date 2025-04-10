-- Criação da tabela "departamento" (sem a chave estrangeira para funcionario)
CREATE TABLE departamento (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    cod_gerente INT
);

-- Criação da tabela "funcionario"
CREATE TABLE funcionario (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    dt_nasc DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    cod_depto INT NOT NULL,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE CASCADE
);

-- Alterando a tabela "departamento" para adicionar a chave estrangeira para cod_gerente
ALTER TABLE departamento
ADD CONSTRAINT fk_cod_gerente FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) ON DELETE SET NULL;

-- Criação da tabela "projeto"
CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    cod_depto INT NOT NULL,
    cod_responsavel INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo) ON DELETE CASCADE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE CASCADE
);

-- Criação da tabela "atividade"
CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    cod_responsavel INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo) ON DELETE CASCADE
);

-- Criação da tabela de relacionamento "atividade_projeto"
CREATE TABLE atividade_projeto (
    cod_projeto INT NOT NULL,
    cod_atividade INT NOT NULL,
    PRIMARY KEY (cod_projeto, cod_atividade),
    FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo) ON DELETE CASCADE,
    FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo) ON DELETE CASCADE
);