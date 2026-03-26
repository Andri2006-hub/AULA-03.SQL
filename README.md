# AULA-03.SQL
Este repositório contém exemplos de configuração e uso para diferentes bancos de dados, utilizando Docker e Docker Compose para facilitar a configuração do ambiente de desenvolvimento.
# Banco de Dados de Livros e Autores

Mini projeto de banco de dados relacional com duas tabelas principais: Livros e Autores.  
O objetivo é praticar modelagem, integridade referencial e comandos SQL básicos (projeção e seleção).  

## Tecnologias utilizadas

- PostgreSQL (ou outro SGBD compatível com SQL)  
- DBeaver (ferramenta de gerenciamento de banco de dados)  
- Arquivo SQL puro para definição do esquema  

## O que o projeto faz

- Cria as tabelas Autores e Livros, com chave estrangeira (autor_id) respeitando integridade referencial.  
- Testa a inserção de um livro com autor_id inválido, gerando erro de integridade.  
- Usa SQL para simular operações de *projeção* (pegar apenas títulos) e *seleção* (livros a partir de 2020).  

## Como usar

1. Abra o DBeaver e conecte-se a um banco de dados PostgreSQL. [web:8]  
2. Crie um novo script SQL ou abra o arquivo banco_livros.sql deste repositório.  
3. Execute o script inteiro (ou por partes) para:
   - Criar as tabelas Autores e Livros.  
   - Inserir autores e exemplos de livros.  
   - Testar a inserção inválida (erro de integridade referencial).  
   - Executar as consultas de projeção e seleção.  

4. Verifique o erro de chave estrangeira ao tentar inserir um livro com autor_id que não existe.  
5. Salve a captura de tela do erro em prints/erro_integridade_referencial.png.  

## Scripts importantes

- banco_livros.sql:  
  - Criação das tabelas Autores e Livros.  
  - Chave estrangeira garantindo integridade referencial.  
  - Inserções de dados de exemplo.  
  - Comando de projeção apenas dos títulos.  
  - Comando de seleção para livros publicados após 2020.  

## Exemplo de consultas

### Projeção: apenas títulos dos livros

```sql
SELECT titulo FROM Livros;

Seleção: livros publicados após 2020
SELECT * FROM Livros WHERE ano_publicacao > 2020;
Prints de erro/sucesso
Pasta prints/:
erro_integridade_referencial.png: captura de tela do erro ao inserir um livro com autor_id inválido.
Observações
É importante garantir que os id de Autores existam antes de inserir registros em Livros para não violar a integridade referencial.
O script pode ser adaptado para outros SGBDs (MySQL, SQLite etc.) com pequenas alterações nos tipos (BIGINT, VARCHAR, etc.). [web:4][web:9]
