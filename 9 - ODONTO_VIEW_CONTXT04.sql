/*4a - View com lista de consultas ordenadas por data: crie uma VIEW que selecione os
seguintes campos: id_consulta, nome_paciente, nome_dentista, data_consulta,
procedimentos_realizados e ordene em ordem decrescente pela data da consulta.*/
CREATE VIEW vw_consultas_ordenadas AS
SELECT
    c.id_consulta,
    p.nome_paciente,
    d.nome_dentista,
    c.data_horario AS data_consulta,
    STRING_AGG(pr.nome_procedimento, ', ') AS procedimentos_realizados
FROM consulta c
JOIN paciente p ON p.id_paciente = c.id_paciente
JOIN dentista d ON d.id_dentista = c.id_dentista
LEFT JOIN consulta_procedimento cp ON cp.id_consulta = c.id_consulta
LEFT JOIN procedimento pr ON pr.id_procedimento = cp.id_procedimento
GROUP BY c.id_consulta, p.nome_paciente, d.nome_dentista, c.data_horario
ORDER BY c.data_horario;

SELECT * FROM vw_consultas_ordenadas;

