-- Criar banco de dados
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- Criar tabela
CREATE TABLE pessoas (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

-- Descrever a estrutura da tabela
DESCRIBE pessoas;

-- Inserir registro na tabela
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

-- Inserir outro registro na tabela
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Maria', '1999-12-30', 'F', '55.50', '1.65', 'Portugal');

-- Inserir registro utilizando DEFAULT para id e nacionalidade
INSERT INTO pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.60', DEFAULT);

-- Inserir registro de modo simplificado, sem mencionar nomes de colunas
INSERT INTO pessoas VALUES
(DEFAULT, 'Adalgisa', '1930-12-05', 'F', '61.8', '1.75', 'Irlanda');

-- Inserir vários registros usando mesma linha de comando
insert into pessoas values
(DEFAULT, 'Ana', '1975-04-26', 'F', '45,2', '1.45', 'EUA'),
(DEFAULT, 'Pedro', '2000-02-11', 'M', '52.3', '1.45', 'Brasil'),
(DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

-- Selecionar e exibir todos os registros da tabela
SELECT * FROM pessoas;