-- 9-Faça uma consulta que selecione o nome dos funcionários responsáveis por projetos,
-- o número de projetos que este funcionário é responsável e seus salários,
-- mas apenas os funcionários que ganhem mais que o gerente do seu departamento. Crie e use views na consulta.

CREATE VIEW funcionario_projetos AS
select
	f.nome,
    count(p.codigo) as num_projetos,
    f.salario,
    f.cod_depto
from funcionario f
JOIN projeto p ON f.codigo = p.cod_responsavel
GROUP BY f.codigo, f.nome, f.salario, f.cod_depto;

select fp.nome, fp.num_projetos, fp.salario
from funcionario_projetos fp
join departamento d ON fp.cod_depto = d.codigo
join funcionario gerente ON d.cod_gerente = gerente.codigo
where fp.salario = gerente.salario;