WITH grupos_seleccionados AS (
    SELECT DISTINCT ON (gp.seccion, gp.parte) gp.id AS grupo_id, gp.seccion, gp.parte, gp.audio_url, gp.historia
    FROM grupos_preguntas gp
    ORDER BY gp.seccion, gp.parte, RANDOM()
),
preguntas_del_grupo AS (
    SELECT gs.seccion, gs.parte, gs.grupo_id, gs.audio_url, gs.historia, pg.id AS pregunta_id, pg.numero, pg.enunciado
    FROM grupos_seleccionados gs
    JOIN preguntas_grupo pg ON gs.grupo_id = pg.grupo_id
),
opciones_ordenadas AS (
    SELECT pdg.seccion, pdg.parte, pdg.grupo_id, pdg.audio_url, pdg.historia, pdg.pregunta_id, pdg.numero, pdg.enunciado,
           o.opcion_texto, o.es_correcta
    FROM preguntas_del_grupo pdg
    JOIN opciones_pregunta_grupo o ON pdg.pregunta_id = o.pregunta_id
    ORDER BY pdg.seccion, pdg.parte, pdg.numero, RANDOM()
)
SELECT *
FROM opciones_ordenadas
ORDER BY seccion, parte, numero, RANDOM();
