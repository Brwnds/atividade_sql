-- Criar a tabela livros
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_de_publicacao INTEGER,
    preco DECIMAL(10, 2),
    idioma TEXT
);

-- Criar a tabela estoque
CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER REFERENCES livros(id),
    quantidade INTEGER
);

-- Inserir alguns registros de estoque para teste
INSERT INTO estoque (livro_id, quantidade) VALUES
(1, 50),
(2, 100),
(3, 75);

-- Obter a quantidade disponível em estoque para um determinado livro
SELECT quantidade
FROM estoque
WHERE livro_id = <ID_DO_LIVRO>;

-- Adicionar unidades ao estoque de um livro específico
UPDATE estoque
SET quantidade = quantidade + <QUANTIDADE_ADICIONADA>
WHERE livro_id = <ID_DO_LIVRO>;

-- Remover unidades do estoque de um livro específico
UPDATE estoque
SET quantidade = quantidade - <QUANTIDADE_REMOVIDA>
WHERE livro_id = <ID_DO_LIVRO>;
