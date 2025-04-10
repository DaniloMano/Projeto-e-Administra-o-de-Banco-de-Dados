-- 2-Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.
WITH mais_velho AS (
    SELECT codigo
    FROM funcionario
    WHERE dt_nasc = (
      SELECT MIN(dt_nasc) 
      FROM funcionario)
)

SELECT f.nome
FROM funcionario f, mais_velho o
where f.codigo != o.codigo;