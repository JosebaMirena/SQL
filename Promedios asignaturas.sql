SELECT
    Asignaturas.nombre_asignatura,
    AVG(Notas.calificacion) AS calificacion_promedio
FROM
    Asignaturas
JOIN
    Notas ON Asignaturas.id_asignatura = Notas.id_asignatura
GROUP BY
    Asignaturas.nombre_asignatura
ORDER BY
    calificacion_promedio DESC; 
