SELECT
    Estudiantes.id_estudiante,
    Estudiantes.nombre,
    Estudiantes.apellido,
    Asignaturas.nombre_asignatura
FROM
    Estudiantes
JOIN
    Notas ON Estudiantes.id_estudiante = Notas.id_estudiante
JOIN
    Asignaturas ON Notas.id_asignatura = Asignaturas.id_asignatura
GROUP BY
    Estudiantes.id_estudiante, Estudiantes.nombre, Estudiantes.apellido, Asignaturas.nombre_asignatura

