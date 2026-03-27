create schema odonto_indice;
--SQL de dois índices coerentes;

-- Índice composto: busca por dentista + data (verificação de agenda e conflitos)
CREATE INDEX idx_consulta_dentista_data
    ON consulta (id_dentista, data_horario);

-- Índice simples: busca por paciente para exibir histórico de consultas
CREATE INDEX idx_consulta_paciente
    ON consulta (id_paciente);

explain analyze
SELECT id_dentista, data_horario
from consulta;