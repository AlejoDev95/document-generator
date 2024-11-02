CREATE TABLE grupos_preguntas (
    id SERIAL PRIMARY KEY,
    seccion SMALLINT NOT NULL,
    parte SMALLINT NOT NULL,           -- Parte del examen a la que pertenece el grupo
    audio_url VARCHAR(255) DEFAULT NULL,   -- URL del audio asociado al grupo de preguntas
    historia TEXT DEFAULT NULL,                     -- Campo para almacenar la historia de longitud variable
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

--------------------------------------------------------
CREATE TABLE preguntas_grupo (
    id SERIAL PRIMARY KEY,
    grupo_id INT REFERENCES grupos_preguntas(id) ON DELETE CASCADE, -- Relación con el grupo de preguntas
    numero SMALLINT NOT NULL,       -- Número de la pregunta dentro del grupo (ej: 10, 11, 12)
    enunciado VARCHAR(255) NOT NULL, -- Texto de la pregunta
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

--------------------------------------------------------
CREATE TABLE opciones_pregunta_grupo (
    id SERIAL PRIMARY KEY,
    pregunta_id INT REFERENCES preguntas_grupo(id) ON DELETE CASCADE, -- Relación con una pregunta específica
    opcion_texto VARCHAR(255) NOT NULL,     -- Texto de la opción de respuesta
    es_correcta BOOLEAN NOT NULL DEFAULT FALSE, -- Indica si esta opción es la correcta
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);


--------------------------------------------------------
