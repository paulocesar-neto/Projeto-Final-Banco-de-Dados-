create schema odonto_consulta;
--Cinco consultas contextualizadas:

/* 1a - Quantidade de consultas por especialidade: selecione todas as especialidades
dos dentistas e faça um COUNT para contar o número total de consultas realizadas por
cada especialidade.   */
SELECT
    dt.especialidade,
    COUNT(cs.id_consulta) AS "Total de Consultas"
FROM dentista dt
LEFT JOIN consulta cs ON cs.id_dentista = dt.id_dentista
GROUP BY dt.especialidade
ORDER BY "Total de Consultas" DESC;