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

-- Selecionar e exibir todos os registros da tabela
SELECT * FROM pessoas;