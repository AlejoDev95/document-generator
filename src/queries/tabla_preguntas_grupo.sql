CREATE TABLE preguntas_grupo (
    id SERIAL PRIMARY KEY,
    grupo_id INT REFERENCES grupos_preguntas(id) ON DELETE CASCADE, -- Relación con el grupo de preguntas
    numero SMALLINT NOT NULL,       -- Número de la pregunta dentro del grupo (ej: 10, 11, 12)
    enunciado VARCHAR(255) NOT NULL, -- Texto de la pregunta
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    preguntas_grupo (grupo_id, numero, enunciado)
VALUES
	  (1, 11, 'seccion1-parte3-grupo1-prgunta11 ---- Why is understanding the bridge’s purpose and functionality is crucial?'),
    (1, 12, 'seccion1-parte3-grupo1-prgunta12 ---- What is the purpose of conducting a complete site analysis before building a bridge?'),
    (1, 13, 'seccion1-parte3-grupo1-prgunta13 ---- What does performing a load and stress analysis help to determine?'),

    (2, 11, 'seccion1-parte3-grupo2-prgunta11 ---- Where can students buy tickets for the annual college dance?'),
    (2, 12, 'seccion1-parte3-grupo2-prgunta12 ---- Why is it important to buy the tickets in advance?'),
    (2, 13, 'seccion1-parte3-grupo2-prgunta13 ---- What is true about the dance?'),

    (3, 11, 'seccion1-parte3-grupo3-prgunta11 ---- How did Jason first get interested in technology?'),
    (3, 12, 'seccion1-parte3-grupo3-prgunta12 ---- Jason created his movie review channel after Jason’s best friend'),
    (3, 13, 'seccion1-parte3-grupo3-prgunta13 ---- Why was Jason nervous when his channel first launched?'),

    (4, 11, 'seccion1-parte3-grupo4-prgunta11 ---- Which sport Emma started playing first?'),
    (4, 12, 'seccion1-parte3-grupo4-prgunta12 ---- Emma first started playing ice hockey after'),
    (4, 13, 'seccion1-parte3-grupo4-prgunta13 ---- Why is the intense competition important for Emma?'),

    (5, 11, 'seccion1-parte3-grupo5-prgunta11 ---- The teacher says they are going to do something different because they are going to'),
    (5, 12, 'seccion1-parte3-grupo5-prgunta12 ---- Before starting, they need'),
    (5, 13, 'seccion1-parte3-grupo5-prgunta13 ---- The teacher asks for someone to '),

    (6, 19, 'seccion2-parte2-grupo1-prgunta19 ---- What is the best title for the text?'),
    (6, 20, 'seccion2-parte2-grupo1-prgunta20 ---- What is behind Alex and Brian’s determination to succeed?'),
    (6, 21, 'seccion2-parte2-grupo1-prgunta21 ---- How do the brothers help each other academically?'),
    (6, 22, 'seccion2-parte2-grupo1-prgunta22 ---- What is the goal of Alex and Brian’s efforts?'),
    (6, 23, 'seccion2-parte2-grupo1-prgunta23 ---- What kind of startup are the brothers planning to create?'),

    (7, 19, 'seccion2-parte2-grupo2-prgunta19 ---- What is an example of bribery?'),
    (7, 20, 'seccion2-parte2-grupo2-prgunta20 ---- What is embezzlement?'),
    (7, 21, 'seccion2-parte2-grupo2-prgunta21 ---- What is one effect of corruption on society?'),
    (7, 22, 'seccion2-parte2-grupo2-prgunta22 ---- What is important in fighting corruption?'),
    (7, 23, 'seccion2-parte2-grupo2-prgunta23 ---- Why is transparency important in fighting corruption?'),

    (8, 19, 'seccion2-parte2-grupo3-prgunta19 ---- What is the writer’s main goal in the text?'),
    (8, 20, 'seccion2-parte2-grupo3-prgunta20 ---- What information about the writer can be learned from the text?'),
    (8, 21, 'seccion2-parte2-grupo3-prgunta21 ---- How did the writer feel about being a secretary?'),
    (8, 22, 'seccion2-parte2-grupo3-prgunta22 ---- What does the writer like to do in her free time?'),
    (8, 23, 'seccion2-parte2-grupo3-prgunta23 ---- Which statement best describes the writer?'),

    (9, 19, 'seccion2-parte2-grupo4-prgunta19 ---- In this text, the author is:'),
    (9, 20, 'seccion2-parte2-grupo4-prgunta20 ---- Why did the author decide to apply for the photography job?'),
    (9, 21, 'seccion2-parte2-grupo4-prgunta21 ---- What does the author say about her father?'),
    (9, 22, 'seccion2-parte2-grupo4-prgunta22 ---- How did the author manage her photography job and studies?'),
    (9, 23, 'seccion2-parte2-grupo4-prgunta23 ---- What does the author plan to do after her first year at university?'),

    (10, 19, 'seccion2-parte2-grupo5-prgunta19 ---- Why didn’t the author want to be a mother before?'),
    (10, 20, 'seccion2-parte2-grupo5-prgunta20 ---- What made the author start considering motherhood?'),
    (10, 21, 'seccion2-parte2-grupo5-prgunta21 ---- How did the author feel about having kids before?'),
    (10, 22, 'seccion2-parte2-grupo5-prgunta22 ---- What did the author’s mother say about being a mom?'),
    (10, 23, 'seccion2-parte2-grupo5-prgunta23 ---- What does the author think about being a mom now?'),

    (11, 24, 'seccion2-parte3-grupo1-prgunta24 ---- The town of Iditarod was named because it was in a remote area.'),
    (11, 25, 'seccion2-parte3-grupo1-prgunta25 ---- The Iditarod Trail was primarily used for delivering supplies in the summer.'),
    (11, 26, 'seccion2-parte3-grupo1-prgunta26 ---- Dog sled teams were replaced by airplanes as the primary means of transport in the 1920s.'),
    (11, 27, 'seccion2-parte3-grupo1-prgunta27 ---- The medicine needed during the 1925 diphtheria outbreak was located in Nome.'),
    (11, 28, 'seccion2-parte3-grupo1-prgunta28 ---- Balto, the lead dog, became famous for safely navigating the final part of the medicine delivery route.'),

    (12, 24, 'seccion2-parte3-grupo2-prgunta24 ---- The modern version of soccer began in ancient Greece.'),
    (12, 25, 'seccion2-parte3-grupo2-prgunta25 ---- The first formal soccer rules were established in England in 1863.'),
    (12, 26, 'seccion2-parte3-grupo2-prgunta26 ---- The first FIFA World Cup was held in Brazil in 1930.'),
    (12, 27, 'seccion2-parte3-grupo2-prgunta27 ---- Famous players like Pelé, Maradona, and Cruyff became regional icons.'),
    (12, 28, 'seccion2-parte3-grupo2-prgunta28 ---- Soccer requires specialized equipment and complex rules to be played.'),

    (13, 24, 'seccion2-parte3-grupo3-prgunta24 ---- Self-driving cars will let occupants do personal tasks.'),
    (13, 25, 'seccion2-parte3-grupo3-prgunta25 ---- Electric cars will have better batteries and recharging.'),
    (13, 26, 'seccion2-parte3-grupo3-prgunta26 ---- Future cars will interact with road infrastructure.'),
    (13, 27, 'seccion2-parte3-grupo3-prgunta27 ---- The challenge is updating rules and adding charging stations.s.'),
    (13, 28, 'seccion2-parte3-grupo3-prgunta28 ---- Data security and hacking are concerns for connected cars.'),

    (14, 24, 'seccion2-parte3-grupo4-prgunta24 ---- Paris is famous for gourmet food and a romantic vibe, attracting many tourists.'),
    (14, 25, 'seccion2-parte3-grupo4-prgunta25 ---- Bali is known for its ancient ruins and museums.'),
    (14, 26, 'seccion2-parte3-grupo4-prgunta26 ---- New York is less popular due to its fast pace and crowded streets.'),
    (14, 27, 'seccion2-parte3-grupo4-prgunta27 ---- Tokyo’s charm is in its natural landscapes and rural areas.'),
    (14, 28, 'seccion2-parte3-grupo4-prgunta28 ---- Rome blends old and new, perfect for history lovers.'),

    (15, 24, 'seccion2-parte3-grupo5-prgunta24 ---- Ancient agriculture developed as people needed to farm to survive. '),
    (15, 25, 'seccion2-parte3-grupo5-prgunta25 ---- The Industrial Revolution led people to cities for factory jobs. '),
    (15, 26, 'seccion2-parte3-grupo5-prgunta26 ---- Modern work often involves physical labor despite technology.'),
    (15, 27, 'seccion2-parte3-grupo5-prgunta27 ---- Steam machinery improved working conditions in the Industrial Revolution.'),
    (15, 28, 'seccion2-parte3-grupo5-prgunta28 ---- Work has changed due to new technologies and rising needs.');
