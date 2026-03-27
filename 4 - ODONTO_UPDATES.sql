create schema odonto_update;
--SQL de 3 atualizações de registros com condições em alguma tabela.

-- Atualização 1: cancela a consulta de id 10
UPDATE consulta
SET status = 'cancelada'
WHERE id_consulta = 10;

-- Atualização 2: corrige o telefone do paciente de id 1
UPDATE paciente
SET telefone = '21991234567'
WHERE id_paciente = 1;

-- Atualização 3: atualiza a prescrição da consulta de id 8
UPDATE consulta
SET prescricao = 'Retornar em 15 dias'
WHERE id_consulta = 8;