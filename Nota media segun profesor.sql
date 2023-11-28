SELECT
    Profesores.id_profesor,
    Profesores.nombre_profesor,
    Profesores.apellido_profesor,
    AVG(Notas.calificacion) AS nota_media
FROM
    Profesores
JOIN
    Notas ON Profesores.id_profesor = Notas.id_profesor
GROUP BY
    Profesores.id_profesor, Profesores.nombre_profesor, Profesores.apellido_profesor;
