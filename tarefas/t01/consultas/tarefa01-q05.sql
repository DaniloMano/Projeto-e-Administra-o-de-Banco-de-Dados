-- 5-Responda as perguntas:
-- a) Explique os problemas de termos valores nulos nos dados.
-- b) Explique o funcionamento do Right e do Left Join.
-- c) Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.

-- Respostas:
-- a) Os valores nulos atrapalham muito as consultas. Pois valores nulos representam a ausência de dados, ou seja,
-- operações de junção e comparação podem dar resultados ou dados incorretos e até dar erro. Como comparações (nem todas as operações de
-- comparação funcionam com NULL), distorção em cálculos (como em médias), perda de linhas em junções pois muitas delas, 
-- assim como algumas filtragens, ignoram dados com valores nulos.

-- b) Left Join junta e retorna as linhas da tabela esquerda e as linhas correspondentes da tabela da direita.
-- Se não tiver uma linha da direita correspondente à um da esquerda, vem nulo. O Right Join é o contrário, ou seja,
-- ele junta e retorna as linhas da tabela direita e as linhas correspondentes da tabela da esquerda.
-- Se não tiver uma linha da esquerda correspondente à um da direita, vem nulo.

-- c) O Full Outer Join junta todas as linhas das duas tabelas, com os dados correspondentes uma da outra, e o que não tiver relação
-- uma com a outra, vem nulo. No MySQL ou MariaDB, o Full Outer Join pode ser reproduzido ao fazer um Left Join e depois um Right Join
-- e dar um Union neles, assim não perdemos nenhuma linha e eliminamos repetições.