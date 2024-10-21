WITH preguntas_seleccionadas AS (
    SELECT DISTINCT ON (p.parte,
        p.numero)
        p.id,
        p.parte,
        p.numero,
        p.enunciado,
        p.audio_url
    FROM
        preguntas p
    WHERE
        p.parte IN (1, 2, 3) -- Indica las partes del examen
    ORDER BY
        p.parte,
        p.numero,
        RANDOM() -- Selecciona una pregunta aleatoria para cada parte y número de pregunta
)
SELECT
    ps.parte,
    ps.numero,
    ps.enunciado,
    ps.audio_url,
    rp.opcion,
    rp.es_correcta
FROM
    preguntas_seleccionadas ps
    JOIN respuesta_preguntas rp ON ps.id = rp.pregunta_id
ORDER BY
    ps.parte,
    ps.numero,
    RANDOM();

-- Ordena las opciones de manera aleatoria para cada pregunta seleccionada
