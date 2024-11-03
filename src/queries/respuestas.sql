-- Query para crear la tabla respuesta_pregunta y para crear cada una de las respuestas que va a tener cada pregunta
-- Sentencia para crear la tabla respuesta_pregunta  la cual va a estar asociada a la tabla preguntas por medio del id de cada pregunta.
CREATE TABLE respuesta_preguntas(
    id serial PRIMARY KEY,
    pregunta_id int REFERENCES preguntas(id) ON DELETE CASCADE, -- Relación con la tabla preguntas
    opcion varchar(255), -- Texto de la opción de respuesta
    es_correcta boolean NOT NULL DEFAULT FALSE, -- Indica si esta opción es la correcta
    created_at timestamp DEFAULT NOW(),
    updated_at timestamp DEFAULT NOW()
);

-- Sentencia para crear cada una de las respuestas asociadas a una pregunta de la parte 1 (imagenes)
INSERT INTO
  respuesta_preguntas(pregunta_id, opcion, es_correcta)
VALUES
  (1, 'seccion1-parte1-pregunta1-opcion1-imagenA', FALSE),
  (1, 'seccion1-parte1-pregunta1-opcion1-imagenB', FALSE),
  (1, 'seccion1-parte1-pregunta1-opcion1-imagenC', TRUE),

  (2, 'seccion1-parte1-pregunta1-opcion2-imagenA', FALSE),
  (2, 'seccion1-parte1-pregunta1-opcion2-imagenB', FALSE),
  (2, 'seccion1-parte1-pregunta1-opcion2-imagenC', TRUE),

  (3, 'seccion1-parte1-pregunta1-opcion3-imagenA', FALSE),
  (3, 'seccion1-parte1-pregunta1-opcion3-imagenB', TRUE),
  (3, 'seccion1-parte1-pregunta1-opcion3-imagenC', FALSE),

  (4, 'seccion1-parte1-pregunta1-opcion4-imagenA', FALSE),
  (4, 'seccion1-parte1-pregunta1-opcion4-imagenB', FALSE),
  (4, 'seccion1-parte1-pregunta1-opcion4-imagenC', TRUE),

  (5, 'seccion1-parte1-pregunta1-opcion5-imagenA', TRUE),
  (5, 'seccion1-parte1-pregunta1-opcion5-imagenB', FALSE),
  (5, 'seccion1-parte1-pregunta1-opcion5-imagenC', FALSE),

  (6, 'seccion1-parte1-pregunta2-opcion1-imagenA', FALSE),
  (6, 'seccion1-parte1-pregunta2-opcion1-imagenB', FALSE),
  (6, 'seccion1-parte1-pregunta2-opcion1-imagenC', TRUE),

  (7, 'seccion1-parte1-pregunta2-opcion2-imagenA', FALSE),
  (7, 'seccion1-parte1-pregunta2-opcion2-imagenB', TRUE),
  (7, 'seccion1-parte1-pregunta2-opcion2-imagenC', FALSE),

  (8, 'seccion1-parte1-pregunta2-opcion3-imagenA', FALSE),
  (8, 'seccion1-parte1-pregunta2-opcion3-imagenB', FALSE),
  (8, 'seccion1-parte1-pregunta2-opcion3-imagenC', TRUE),

  (9, 'seccion1-parte1-pregunta2-opcion4-imagenA', FALSE),
  (9, 'seccion1-parte1-pregunta2-opcion4-imagenB', FALSE),
  (9, 'seccion1-parte1-pregunta2-opcion4-imagenC', TRUE),

  (10, 'seccion1-parte1-pregunta2-opcion5-imagenA', TRUE),
  (10, 'seccion1-parte1-pregunta2-opcion5-imagenB', FALSE),
  (10, 'seccion1-parte1-pregunta2-opcion5-imagenC', FALSE),

  (11, 'seccion1-parte1-pregunta3-opcion1-imagenA', FALSE),
  (11, 'seccion1-parte1-pregunta3-opcion1-imagenB', TRUE),
  (11, 'seccion1-parte1-pregunta3-opcion1-imagenC', FALSE),

  (12, 'seccion1-parte1-pregunta3-opcion2-imagenA', TRUE),
  (12, 'seccion1-parte1-pregunta3-opcion2-imagenB', FALSE),
  (12, 'seccion1-parte1-pregunta3-opcion2-imagenC', FALSE),

  (13, 'seccion1-parte1-pregunta3-opcion3-imagenA', TRUE),
  (13, 'seccion1-parte1-pregunta3-opcion3-imagenB', FALSE),
  (13, 'seccion1-parte1-pregunta3-opcion3-imagenC', FALSE),

  (14, 'seccion1-parte1-pregunta3-opcion4-imagenA', TRUE),
  (14, 'seccion1-parte1-pregunta3-opcion4-imagenB', FALSE),
  (14, 'seccion1-parte1-pregunta3-opcion4-imagenC', FALSE),

  (15, 'seccion1-parte1-pregunta3-opcion5-imagenA', FALSE),
  (15, 'seccion1-parte1-pregunta3-opcion5-imagenB', TRUE),
  (15, 'seccion1-parte1-pregunta3-opcion5-imagenC', FALSE),

  (16, 'seccion1-parte1-pregunta4-opcion1-imagenA', TRUE),
  (16, 'seccion1-parte1-pregunta4-opcion1-imagenB', FALSE),
  (16, 'seccion1-parte1-pregunta4-opcion1-imagenC', FALSE),

  (17, 'seccion1-parte1-pregunta4-opcion2-imagenA', FALSE),
  (17, 'seccion1-parte1-pregunta4-opcion2-imagenB', TRUE),
  (17, 'seccion1-parte1-pregunta4-opcion2-imagenC', FALSE),

  (18, 'seccion1-parte1-pregunta4-opcion3-imagenA', FALSE),
  (18, 'seccion1-parte1-pregunta4-opcion3-imagenB', FALSE),
  (18, 'seccion1-parte1-pregunta4-opcion3-imagenC', TRUE),

  (19, 'seccion1-parte1-pregunta4-opcion4-imagenA', FALSE),
  (19, 'seccion1-parte1-pregunta4-opcion4-imagenB', TRUE),
  (19, 'seccion1-parte1-pregunta4-opcion4-imagenC', FALSE),

  (20, 'seccion1-parte1-pregunta4-opcion5-imagenA', FALSE),
  (20, 'seccion1-parte1-pregunta4-opcion5-imagenB', TRUE),
  (20, 'seccion1-parte1-pregunta4-opcion5-imagenC', FALSE),

  (21, 'seccion1-parte1-pregunta5-opcion1-imagenA', TRUE),
  (21, 'seccion1-parte1-pregunta5-opcion1-imagenB', FALSE),
  (21, 'seccion1-parte1-pregunta5-opcion1-imagenC', FALSE),

  (22, 'seccion1-parte1-pregunta5-opcion2-imagenA', TRUE),
  (22, 'seccion1-parte1-pregunta5-opcion2-imagenB', FALSE),
  (22, 'seccion1-parte1-pregunta5-opcion2-imagenC', FALSE),

  (23, 'seccion1-parte1-pregunta5-opcion3-imagenA', TRUE),
  (23, 'seccion1-parte1-pregunta5-opcion3-imagenB', FALSE),
  (23, 'seccion1-parte1-pregunta5-opcion3-imagenC', FALSE),

  (24, 'seccion1-parte1-pregunta5-opcion4-imagenA', FALSE),
  (24, 'seccion1-parte1-pregunta5-opcion4-imagenB', FALSE),
  (24, 'seccion1-parte1-pregunta5-opcion4-imagenC', TRUE),

  (25, 'seccion1-parte1-pregunta5-opcion5-imagenA', FALSE),
  (25, 'seccion1-parte1-pregunta5-opcion5-imagenB', TRUE),
  (25, 'seccion1-parte1-pregunta5-opcion5-imagenC', FALSE);

-- Sentencia para crear cada una de las respuestas asociadas a una pregunta de la parte 2 (texto)
INSERT INTO
  respuesta_preguntas(pregunta_id, opcion, es_correcta)
VALUES
  (26, 'Grandpa was listening to the radio.', FALSE),
  (26, 'They had lots of nightmares.', TRUE),
  (26, 'The TV was on all night.', FALSE),

  (27, 'The ATM is broken.', FALSE),
  (27, 'There is no more cash in the ATM.', FALSE),
  (27, 'He does not know how the ATM works.', TRUE),

  (28, 'A notebook.', FALSE),
  (28, 'A poster.', FALSE),
  (28, 'Headphones.', TRUE),

  (29, 'His leg.', FALSE),
  (29, 'His knee.', FALSE),
  (29, 'His arm.', TRUE),

  (30, 'He lost all his money.', FALSE),
  (30, 'His suit was still dirty.', TRUE),
  (30, 'The service was too expensive.', FALSE),

  (31, 'A classmate.', FALSE),
  (31, 'A member of her family.', TRUE),
  (31, 'A teacher.', FALSE),

  (32, 'They will look at a poster.', TRUE),
  (32, 'They will check on their phones.', FALSE),
  (32, 'They will ask a classmate.', FALSE),

  (33, 'She was sick with a toothache.', FALSE),
  (33, 'Her mother was sick with the flue.', FALSE),
  (33, 'Her appointment took a long time.', TRUE),

  (34, 'On a bus.', FALSE),
  (34, 'In her dad’s car.', TRUE),
  (34, 'On a train.', FALSE),

  (35, 'She must work late shifts.', FALSE),
  (35, 'She doesn’t get extra money.', TRUE),
  (35, 'Her coworkers are not friendly.', FALSE),

  (36, 'By playing video games in French.', FALSE),
  (36, 'By writing to children in a French school.', FALSE),
  (36, 'By watching French comedies.', TRUE),

  (37, 'It was interesting.', FALSE),
  (37, 'It was unusual.', TRUE),
  (37, 'It was awful.', FALSE),

  (38, 'Angry.', TRUE),
  (38, 'Tired.', FALSE),
  (38, 'Hungry.', FALSE),

  (39, 'A smoothie.', TRUE),
  (39, 'Pancakes, fruit and coffee.', FALSE),
  (39, 'Yogurt and cookies.', FALSE),

  (40, 'His two roommates.', FALSE),
  (40, 'It is too crowded and loud.', FALSE),
  (40, 'His drive to work is long.', TRUE),

  (41, 'The time.', FALSE),
  (41, 'The cost.', TRUE),
  (41, 'The transport.', FALSE),

  (42, 'They are reading a textbook about exercising.', FALSE),
  (42, 'They watched a documentary about exercising.', FALSE),
  (42, 'They listened to a talk about exercising.', TRUE),

  (43, 'There was a traffic jam.', TRUE),
  (43, 'He didn’t catch his train on time.', FALSE),
  (43, 'He woke up late.', FALSE),

  (44, 'A sound system.', TRUE),
  (44, 'A TV set.', FALSE),
  (44, 'A sofa.', FALSE),

  (45, 'It was crowded.', FALSE),
  (45, 'It was really quiet.', TRUE),
  (45, 'She met many visitors.', FALSE),

  (46, 'Is visiting him.', FALSE),
  (46, 'Has an appointment.', FALSE),
  (46, 'Had an accident.', TRUE),

  (47, 'The dog is always barking.', FALSE),
  (47, 'The dog brings mud into the house.', TRUE),
  (47, 'They must walk the dog every day.', FALSE),

  (48, 'Pizza.', FALSE),
  (48, 'Tuna sandwich.', TRUE),
  (48, 'Grilled cheese.', FALSE),

  (49, 'Rainy.', FALSE),
  (49, 'Cool.', FALSE),
  (49, 'Hot.', TRUE),

  (50, 'Sushi.', FALSE),
  (50, 'Burgers.', TRUE),
  (50, 'Tacos.', FALSE);
