-- 14-Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades,
-- o número de atividades que este funcionário é responsável. Crie e use views na consulta.

create view atividades_por_funcionario as
select f.nome, COUNT(a.codigo) AS num_atividades
from funcionario f
left join atividade a ON f.codigo = a.cod_responsavel
group by f.codigo, f.nome;

select nome, num_atividades
from atividades_por_funcionario;

-- usando left join a query mostra até quem não é responsável por nenhuma atividade.