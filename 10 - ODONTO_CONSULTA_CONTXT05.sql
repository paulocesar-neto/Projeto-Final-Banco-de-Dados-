/* 5a - Média de consultas por dentista: calcule a média de consultas realizadas por
dentista.  */
SELECT 
    (SELECT COUNT(*) FROM dentista) AS "Total de Dentistas",
    (SELECT COUNT(*) FROM consulta) AS "Total de Atendimentos",
    ROUND(
        (SELECT COUNT(*) FROM consulta)::numeric / 
        (SELECT COUNT(*) FROM dentista),2) AS "Média Geral"