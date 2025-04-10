-- Inserindo departamentos (antes dos funcionários)
INSERT INTO departamento (descricao, cod_gerente) VALUES
('Departamento de Computação', NULL),
('Departamento de Matemática', NULL),
('Departamento de História', NULL),
('Departamento de Geografia', NULL),
('Departamento de Letras', NULL);

-- Inserindo funcionários (alguns serão gerentes)
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('Ana Paula', 'F', '1980-05-10', 7000.00, 1),
('Carlos Alberto', 'M', '1975-03-15', 6500.00, 2),
('Mariana Silva', 'F', '1990-08-20', 7200.00, 3),
('João Pedro', 'M', '1985-01-01', 6800.00, 4),
('Renata Costa', 'F', '1992-12-12', 7100.00, 5);

-- Atualizando departamentos com os gerentes recém inseridos
UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

-- Inserindo projetos
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Sistema Acadêmico', 'Sistema para controle acadêmico de alunos e professores', 1, 1, '2023-01-01', '2023-12-31'),
('Pesquisa Matemática', 'Projeto de pesquisa em teoria dos números', 2, 2, '2022-03-01', '2023-03-01'),
('História do Brasil', 'Levantamento histórico do período colonial', 3, 3, '2021-05-15', '2022-05-15'),
('Georreferenciamento', 'Mapeamento geográfico de zonas urbanas', 4, 4, '2023-06-01', '2024-06-01'),
('Gramática Aplicada', 'Estudo de gramática formal aplicada ao ensino', 5, 5, '2022-09-01', '2023-09-01');

-- Inserindo atividades
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de Requisitos', 'Levantamento de requisitos do sistema', 1, '2023-01-01', '2023-02-01'),
('Modelagem Matemática', 'Modelagem de equações complexas', 2, '2022-03-01', '2022-06-01'),
('Pesquisa Documental', 'Pesquisa em arquivos históricos', 3, '2021-06-01', '2021-08-01'),
('Levantamento de Dados', 'Coleta de dados em campo', 4, '2023-06-10', '2023-08-10'),
('Análise Linguística', 'Estudo de morfossintaxe', 5, '2022-09-10', '2022-11-10');

-- Inserindo atividade_projeto (associando atividades aos projetos)
INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1), -- Sistema Acadêmico → Análise de Requisitos
(2, 2), -- Pesquisa Matemática → Modelagem Matemática
(3, 3), -- História do Brasil → Pesquisa Documental
(4, 4), -- Georreferenciamento → Levantamento de Dados
(5, 5); -- Gramática Aplicada → Análise Linguística
