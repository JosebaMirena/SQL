WITH AsignaturasComunes AS (
    SELECT
        N.id_estudiante,
        N.id_profesor,
        COUNT(N.id_asignatura) AS asignaturas_comunes
    FROM
        Notas N
    GROUP BY
        N.id_estudiante, N.id_profesor
)

SELECT
    Estudiantes.id_estudiante,
    Estudiantes.nombre AS nombre_estudiante,
    Estudiantes.apellido AS apellido_estudiante,
    Profesores.id_profesor,
    Profesores.nombre_profesor,
    Profesores.apellido_profesor,
    COALESCE(AsignaturasComunes.asignaturas_comunes, 0) AS asignaturas_comunes
FROM
    Estudiantes
CROSS JOIN
    Profesores
LEFT JOIN
    AsignaturasComunes ON Estudiantes.id_estudiante = AsignaturasComunes.id_estudiante
                    AND Profesores.id_profesor = AsignaturasComunes.id_profesor
ORDER BY
    asignaturas_comunes DESC
