/* 2a - Quantidade de consultas realizadas por cada dentista: selecione o nome de todos
os dentistas e faça um COUNT para contar a quantidade de consultas realizadas por
cada um e exiba em ordem decrescente pela quantidade de consultas.   */
SELECT
    dt.nome_dentista,
    COUNT(cs.id_consulta) AS "Consultas Realizadas"
FROM dentista dt
LEFT JOIN consulta cs ON cs.id_dentista = dt.id_dentista
GROUP BY dt.nome_dentista
ORDER BY "Consultas Realizadas" DESC;