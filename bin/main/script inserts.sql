-- Inserção de dados na tabela "doenca"
INSERT INTO doenca (nome, sintomas) VALUES ('Gripe', 'Febre, tosse, dor de garganta');
INSERT INTO doenca (nome, sintomas) VALUES ('Dengue', 'Febre alta, dor de cabeça, dor nas articulações');
INSERT INTO doenca (nome, sintomas) VALUES ('Hipertensão', 'Pressão alta, dor de cabeça, tontura');
INSERT INTO doenca (nome, sintomas) VALUES ('Diabetes', 'Aumento da sede, aumento da fome, fadiga');
INSERT INTO doenca (nome, sintomas) VALUES ('Asma', 'Dificuldade respiratória, chiado no peito, tosse');
INSERT INTO doenca (nome, sintomas) VALUES ('Enxaqueca', 'Dor de cabeça intensa, sensibilidade à luz, náusea');
INSERT INTO doenca (nome, sintomas) VALUES ('Artrite', 'Inchaço das articulações, dor, rigidez');
INSERT INTO doenca (nome, sintomas) VALUES ('Pneumonia', 'Febre, tosse com catarro, dificuldade respiratória');
INSERT INTO doenca (nome, sintomas) VALUES ('Câncer de Mama', 'Nódulo no seio, alterações na pele, dor');
INSERT INTO doenca (nome, sintomas) VALUES ('Depressão', 'Tristeza persistente, perda de interesse, alterações no sono');
INSERT INTO doenca (nome, sintomas) VALUES ('Osteoporose', 'Fragilidade óssea, fraturas frequentes, dor nas costas');

INSERT INTO doenca (nome, sintomas) VALUES ('Apendicite', 'Dor abdominal intensa, náusea, vômito');
INSERT INTO doenca (nome, sintomas) VALUES ('Anemia', 'Fadiga, palidez, falta de ar');
INSERT INTO doenca (nome, sintomas) VALUES ('Sinusite', 'Congestão nasal, dor de cabeça, pressão facial, dor nos seios da face, secreção nasal espessa');
INSERT INTO doenca (nome, sintomas) VALUES ('Bronquite', 'Tosse persistente, falta de ar, chiado no peito, produção excessiva de muco');
INSERT INTO doenca (nome, sintomas) VALUES ('Infecção Urinária', 'Dor ou ardor ao urinar, aumento da frequência urinária, urina turva ou com odor forte, dor abdominal');
INSERT INTO doenca (nome, sintomas) VALUES ('Gastrite', 'Dor abdominal, azia, sensação de queimação no estômago, náusea');
INSERT INTO doenca (nome, sintomas) VALUES ('Labirintite', 'Tontura, vertigem, náusea, perda de equilíbrio, zumbido no ouvido');
INSERT INTO doenca (nome, sintomas) VALUES ('Conjuntivite', 'Olhos vermelhos, coceira nos olhos, lacrimejamento, sensação de areia nos olhos');
INSERT INTO doenca (nome, sintomas) VALUES ('Esquizofrenia', 'Alucinações, delírios, falta de motivação, dificuldade de concentração, isolamento social');
INSERT INTO doenca (nome, sintomas) VALUES ('Hipotireoidismo', 'Fadiga, ganho de peso, intolerância ao frio, pele seca, depressão');
INSERT INTO doenca (nome, sintomas) VALUES ('Acne', 'Presença de cravos e espinhas no rosto, costas e peito, inflamação da pele, oleosidade excessiva');



-- Inserção de dados na tabela "medico"
INSERT INTO medico (id, especializacao) VALUES (1, 'Cardiologia');
INSERT INTO medico (id, especializacao) VALUES (2, 'Clínico Geral');
INSERT INTO medico (id, especializacao) VALUES (3, 'Gastroenterologia');
INSERT INTO medico (id, especializacao) VALUES (4, 'Oncologia');
INSERT INTO medico (id, especializacao) VALUES (5, 'Neurologia');
INSERT INTO medico (id, especializacao) VALUES (6, 'Ortopedia');
INSERT INTO medico (id, especializacao) VALUES (7, 'Ginecologia');
INSERT INTO medico (id, especializacao) VALUES (8, 'Endocrinologia');
INSERT INTO medico (id, especializacao) VALUES (9, 'Psiquiatria');
INSERT INTO medico (id, especializacao) VALUES (10, 'Dermatologia');
INSERT INTO medico (id, especializacao) VALUES (11, 'Pneumologista');
INSERT INTO medico (id, especializacao) VALUES (12, 'Hematologista');
INSERT INTO medico (id, especializacao) VALUES (13, 'Otorrinolaringologista');
INSERT INTO medico (id, especializacao) VALUES (14, 'Urologista');
INSERT INTO medico (id, especializacao) VALUES (15, 'Oftalmologista');

-- Inserção de dados na tabela "medico_doenca"
-- Médico 1 - Cardiologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (1, 'Hipertensão');

-- Médico 2 - Clínico Geral
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (2, 'Dengue');

-- Médico 3 - Gastroenterologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (3, 'Gastrite');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (3, 'Apendicite');

-- Médico 4 - Oncologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (4, 'Câncer de Mama');

-- Médico 5 - Neurologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (5, 'Enxaqueca');

-- Médico 6 - Ortopedia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (6, 'Artrite');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (6, 'Osteoporose');

-- Médico 7 - Ginecologia
--INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (7, 'Gravidez');

-- Médico 8 - Endocrinologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (8, 'Diabetes');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (8, 'Hipotireoidismo');

-- Médico 9 - Psiquiatria
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (9, 'Depressão');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (9, 'Esquizofrenia');

-- Médico 10 - Dermatologia
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (10, 'Acne');

-- Médico 11 - Pneumologista
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (11, 'Bronquite');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (11, 'Asma');

--Médico 12 - Hematologista
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (12, 'Anemia');

--Médico 13 - Otorrinolaringologista
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (13, 'Sinusite');
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (13, 'Labirintite');

--Médico 14 - Urologista
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (14, 'Infecção Urinária');

--Médico 15 - Oftalmologista
INSERT INTO medico_doenca (medico_id, doenca_nome) VALUES (15, 'Conjuntivite');