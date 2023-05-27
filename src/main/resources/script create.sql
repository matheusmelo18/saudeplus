DROP TABLE doenca CASCADE CONSTRAINTS;
DROP TABLE medico CASCADE CONSTRAINTS;
DROP TABLE medico_doenca CASCADE CONSTRAINTS;

TRUNCATE TABLE doenca;
TRUNCATE TABLE medico_doenca;
TRUNCATE TABLE medico;

-- Criação da tabela "doença"
CREATE TABLE doenca (
  nome VARCHAR(100) PRIMARY KEY,
  sintomas VARCHAR(255)
);

-- Criação da tabela "médico"
CREATE TABLE medico (
  id INT PRIMARY KEY,
  especializacao VARCHAR(100)
);

-- Relacionamento entre "doença" e "médico"
CREATE TABLE medico_doenca (
  medico_id INT,
  doenca_nome VARCHAR(100),
  FOREIGN KEY (medico_id) REFERENCES medico(id),
  FOREIGN KEY (doenca_nome) REFERENCES doenca(nome)
);