WITH NotasNumeradas AS (
    SELECT
        id_nota,
        id_estudiante,
        id_asignatura,
        id_profesor,
        calificacion,
        ROW_NUMBER() OVER (PARTITION BY id_estudiante ORDER BY calificacion DESC) AS fila_numero
    FROM
        Notas
)

SELECT
    id_nota,
    id_estudiante,
    id_asignatura,
    id_profesor,
    calificacion
FROM
    NotasNumeradas
WHERE
    fila_numero = 1;
