/*  3a - Pacientes com maior número de consultas: liste os pacientes e a quantidade de
consultas que cada um realizou, ordenando em ordem decrescente pelo número de
consultas.   */
SELECT
    pc.nome_paciente,
    COUNT(cs.id_consulta) AS "Consultas Realizadas"
FROM paciente pc
LEFT JOIN consulta cs ON cs.id_paciente = pc.id_paciente
GROUP BY pc.nome_paciente
ORDER BY "Consultas Realizadas" DESC;