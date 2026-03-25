-- Criação da tabela Autores
CREATE TABLE Autores (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Livros com FK para Autores
CREATE TABLE Livros (
    id BIGINT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    ano_publicacao INTEGER NOT NULL,
    autor_id BIGINT,
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
);INSERT INTO Autores (id, nome) VALUES (1, 'Machado de Assis');
INSERT INTO Autores (id, nome) VALUES (2, 'J.K. Rowling');
INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id)
VALUES (1, 'Livro Sem Autor Válido', '978-1-234-5678-9', 2021, 999);
ERROR: insert or update on table "Livros" violates foreign key constraint "livros_autor_id_fkey"
DETAIL: Key (autor_id)=(999) is not present in table "autores".

SELECT titulo FROM Livros 

SELECT * FROM Livros WHERE
ano_publicacao > 2020; 
