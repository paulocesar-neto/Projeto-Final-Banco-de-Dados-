create schema odonto_delete;
--SQL de 3 exclusão de registros com condições em alguma tabela.

-- Exclusão 1: remove um procedimento específico de uma consulta
DELETE FROM consulta_procedimento
WHERE id_consulta = 13 AND id_procedimento = 9;

-- Exclusão 2: remove paciente pelo telefone
DELETE FROM paciente
WHERE telefone = '85999881234';

-- Exclusão 3: remove paciente pelo cpf 
DELETE FROM paciente
WHERE cpf_paciente = '67890123456';