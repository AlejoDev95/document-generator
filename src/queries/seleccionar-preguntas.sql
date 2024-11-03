WITH preguntas_seleccionadas AS (
  SELECT DISTINCT ON (p.seccion, p.parte, p.numero)
    p.id,
    p.seccion,
    p.parte,
    p.numero,
    p.enunciado,
    p.audio_url
  FROM
    preguntas p
  WHERE p.seccion IN (1, 2) -- Selecciona las secciones que necesitas
    AND p.parte IN (1, 2, 3) -- Selecciona las partes de cada sección
  ORDER BY p.seccion, p.parte, p.numero, RANDOM() -- Selecciona una pregunta aleatoria para cada combinación de sección, parte, y número de pregunta
)
SELECT
  ps.seccion,
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
  ps.seccion,
  ps.parte,
  ps.numero,
  RANDOM();

