create schema odonto_inserts;
--Deve ser inserido, um mínimo de, 10 registros em cada tabela (INSERT);

-- INSERTS — PACIENTES
INSERT INTO paciente (nome_paciente, cpf_paciente, data_nascimento, telefone, email, endereco)
VALUES
('João Pedro Silva',       '12345678901', '1998-05-12', '21987654321', 'joao.silva@email.com',      'Rio de Janeiro, Copacabana, CEP 22070000'),
('Maria Oliveira Santos',  '23456789012', '1995-08-23', '11991234567', 'maria.santos@email.com',    'São Paulo, Moema, CEP 01310000'),
('Carlos Eduardo Lima',    '34567890123', '2000-01-15', '31999887766', 'carlos.lima@email.com',     'Belo Horizonte, Savassi, CEP 30140110'),
('Ana Beatriz Costa',      '45678901234', '1997-11-30', '71987651234', 'ana.costa@email.com',       'Salvador, Centro, CEP 40020000'),
('Lucas Ferreira Gomes',   '56789012345', '1992-03-10', '41992345678', 'lucas.gomes@email.com',     'Curitiba, Centro, CEP 80010000'),
('Fernanda Alves Rocha',   '67890123456', '1999-07-05', '85999881234', 'fernanda.rocha@email.com',  'Fortaleza, Centro, CEP 60060000'),
('Rafael Martins Souza',   '78901234567', '1994-09-18', '81993456789', 'rafael.souza@email.com',    'Recife, Boa Viagem, CEP 50030000'),
('Juliana Pereira Dias',   '89012345678', '2001-12-22', '51987654321', 'juliana.dias@email.com',    'Porto Alegre, Centro, CEP 90010000'),
('Bruno Carvalho Mendes',  '90123456789', '1996-06-14', '61991234567', 'bruno.mendes@email.com',    'Brasília, Asa Sul, CEP 70040010'),
('Patrícia Ribeiro Nunes', '01234567890', '1993-04-27', '48999887766', 'patricia.nunes@email.com',  'Florianópolis, Centro, CEP 88010000');



-- INSERTS — DENTISTAS
INSERT INTO dentista (nome_dentista, cpf_dentista, cro, especialidade)
VALUES
('Dr. André Luiz Farias',       '11122233344', 'CRORJ12345', 'Ortodontia'),
('Dra. Beatriz Souza Campos',   '22233344455', 'CROSP23456', 'Endodontia'),
('Dr. Cláudio Pinto Rezende',   '33344455566', 'CROSP34567', 'Implantodontia'),
('Dra. Daniela Torres Melo',    '44455566677', 'CROMG45678', 'Odontopediatria'),
('Dr. Eduardo Neves Costa',     '55566677788', 'CROSP56789', 'Periodontia'),
('Dra. Fabiana Ramos Vieira',   '66677788899', 'CROMG67890', 'Estética Dental'),
('Dr. Gustavo Lima Barros',     '77788899900', 'CRORJ78901', 'Cirurgia Oral'),
('Dra. Helena Duarte Freitas',  '88899900011', 'CROMG89012', 'Prótese Dentária'),
('Dr. Igor Mendonça Alves',     '99900011122', 'CRORJ90123', 'Ortodontia'),
('Dra. Juliana Castro Pires',   '00011122233', 'CROSP01234', 'Endodontia');


-- INSERTS — PROCEDIMENTOS
INSERT INTO procedimento (nome_procedimento, descricao_procedimento, duracao_media_min)
VALUES
('Limpeza dental',         'Limpeza dental de rotina',                         30),
('Tratamento de cárie',    'Tratamento de cárie com restauração',              40),
('Extração dentária',      'Extração de dente',                                45),
('Avaliação ortodôntica',  'Consulta para avaliação ortodôntica',              30),
('Clareamento dental',     'Procedimento de clareamento dental',               60),
('Manutenção de aparelho', 'Ajuste e manutenção de aparelho ortodôntico',      30),
('Tratamento de gengivite','Tratamento e limpeza da gengiva',                  50),
('Aplicação de flúor',     'Aplicação de flúor para prevenção',                20),
('Consulta de rotina',     'Consulta odontológica de rotina',                  25),
('Ajuste de prótese',      'Ajuste de prótese dentária',                       40);



-- INSERTS — HORÁRIOS
INSERT INTO horario (id_dentista, hora_inicio, hora_fim, dia_semana)
VALUES
(1,  '08:00', '12:00', 'segunda'),
(2,  '13:00', '18:00', 'segunda'),
(3,  '08:00', '12:00', 'terça'),
(4,  '13:00', '18:00', 'terça'),
(5,  '08:00', '12:00', 'quarta'),
(6,  '13:00', '18:00', 'quarta'),
(7,  '08:00', '12:00', 'quinta'),
(8,  '13:00', '18:00', 'quinta'),
(9,  '08:00', '12:00', 'sexta'),
(10, '13:00', '18:00', 'sexta');



-- INSERTS — CONSULTAS
INSERT INTO consulta (id_paciente, id_dentista, id_horario, data_horario, descricao_atendimento, prescricao, status)
VALUES
(1,  2,  3, '2026-03-20 08:00:00', 'Realizar limpeza e clareamento',                     'Uso de enxaguante bucal por 7 dias',       'realizada'),
(2,  4,  6, '2026-03-20 09:15:00', 'Realizar ajuste de prótese e limpeza',               'Analgésico por 3 dias',                    'realizada'),
(3,  2,  5, '2026-03-21 10:00:00', 'Extração dentária, tratamento de cárie e manutenção','Antibiótico por 7 dias',                   'realizada'),
(9,  10, 8, '2026-03-21 11:30:00', 'Avaliação ortodôntica para iniciar tratamento',       'Retorno em 30 dias',                       'agendada'),
(10, 1,  1, '2026-03-22 13:00:00', 'Necessita de clareamento dental e limpeza',           'Evitar alimentos escuros por 48h',         'agendada'),
(8,  7,  9, '2026-03-22 14:20:00', 'Realização de manutenção de aparelho',                'Uso contínuo de elástico',                 'cancelada'),
(4,  1,  6, '2026-03-23 15:00:00', 'Precisa de tratamento para gengivite',                'Escovação reforçada e fio dental',         'realizada'),
(6,  4,  4, '2026-03-23 16:30:00', 'Aplicação total de flúor para limpeza',               'Não ingerir alimentos por 30 min',         'agendada'),
(4,  3,  8, '2026-03-24 17:00:00', 'Consulta de rotina e limpeza dentária',               'Sem prescrição',                           'realizada'),
(1,  10, 7, '2026-03-24 18:15:00', 'Precisa de ajuste na prótese',                        'Retorno em 15 dias',                       'agendada'),
(10, 6,  5, '2026-03-23 15:00:00', 'Precisa de tratamento para gengivite',                'Uso de antiinflamatório 3x ao dia',        'realizada'),
(6,  5,  4, '2026-03-23 16:30:00', 'Realizar aplicação de flúor',                         'Não ingerir alimentos por 30 min',         'agendada'),
(7,  8,  10,'2026-03-24 17:00:00', 'Consulta de rotina e limpeza dentária',               'Sem prescrição',                           'realizada'),
(5,  5,  7, '2026-03-24 18:15:00', 'Precisa de ajuste na prótese',                        'Retorno em 20 dias',                       'agendada');



-- INSERTS — CONSULTA_PROCEDIMENTO
INSERT INTO consulta_procedimento (id_consulta, id_procedimento)
VALUES
(1, 1), (1, 5),
(2, 1), (2, 10),
(3, 3), (3, 2), (3, 6),
(4, 4),
(5, 5), (5, 1),
(6, 6),
(7, 7),
(8, 8),
(9, 9), (9, 1),
(10, 10),
(11, 7),
(12, 8),
(13, 9), (13, 1),
(14, 10);