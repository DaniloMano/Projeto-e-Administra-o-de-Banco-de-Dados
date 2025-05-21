## ODBC

**ODBC (Open Database Connectivity)** é um padrão para acesso a **SGBDs** que define interfaces para linguagens de programação acessarem diferentes bases de dados sem métodos específicos.  
Garante **independência de SGBDs** por meio de **drivers** que atuam como camada de tradução entre a aplicação e o banco.  
As aplicações usam funções ODBC via um **driver manager**, que repassa as **queries** ao SGBD.

## ORM

**ORM (Object-Relational Mapping)** é uma técnica que aproxima o paradigma de desenvolvimento de aplicações orientadas a objetos ao paradigma do banco de dados relacional.  
O uso de uma ORM é realizado através de um **mapeador objeto-relacional**, que geralmente é uma **biblioteca ou framework** responsável por facilitar o mapeamento e o uso do banco de dados.
Isso permite manipular dados do banco usando objetos da linguagem, reduzindo a necessidade de escrever SQL manualmente.

### [ORM db](esquema_atividade_create_database.sql)
### [ORM tables](esquema_atividades_creates_tables.sql)
### [ORM inserts](esquema_atividades_inserts.sql)