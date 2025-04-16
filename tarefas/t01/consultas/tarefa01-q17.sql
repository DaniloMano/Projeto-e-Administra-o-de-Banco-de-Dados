-- 17-Faça uma consulta que selecione o código  e descrição do projeto cujo gerente do departamento
-- que ele faz parte ganhe mais que os outros gerentes de departamento.

-- CTE para encontrar o gerente com maior salário
with gerente_rico as (
    select f.codigo as cod_gerente
    from funcionario f
    join departamento d on d.cod_gerente = f.codigo
    order by f.salario desc
    limit 1
)

select p.codigo, p.descricao
from projeto p
join departamento d on p.cod_depto = d.codigo
join gerente_rico g on d.cod_gerente = g.cod_gerente;