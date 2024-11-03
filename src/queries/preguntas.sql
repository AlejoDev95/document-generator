-- Query para crear la tabla preguntas y crear todas las preguntas del examen
-- Sentencia para crear la tabla de preguntas
CREATE TABLE preguntas (
  id SERIAL PRIMARY KEY,
  seccion SMALLINT NOT NULL,           -- Sección del examen
  parte SMALLINT NOT NULL,             -- Parte del examen
  numero SMALLINT NOT NULL,            -- Número de la pregunta en la parte
  enunciado VARCHAR(255) NOT NULL,     -- Texto de la pregunta
  audio_url VARCHAR(255),              -- URL del audio asociado
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
  preguntas(seccion, parte, numero, enunciado, audio_url)
VALUES
  -- Sentencia para crear las preguntas de la sección 1 parte 1
  (1, 1, 1, 'What time are they meeting tomorrow?', 'parte-1-audio-1-opcion-1'),
  (1, 1, 1, 'What does the woman decide to order?', 'parte-1-audio-1-opcion-2'),
  (1, 1, 1, 'Which animal are they afraid of?', 'parte-1-audio-1-opcion-3'),
  (1, 1, 1, 'Which gadget do the boys think is the best?', 'parte-1-audio-1-opcion-4'),
  (1, 1, 1, 'What is the woman’s job now?', 'parte-1-audio-1-opcion-5'),

  (1, 1, 2, 'What did the boy forget to bring to the pool?', 'parte-1-audio-2-opcion-1'),
  (1, 1, 2, 'Which subject is the hardest for them?', 'parte-1-audio-2-opcion-2'),
  (1, 1, 2, 'What does Lisa look like?', 'parte-1-audio-2-opcion-3'),
  (1, 1, 2, 'What time is the doctor’s appointment? ', 'parte-1-audio-2-opcion-4'),
  (1, 1, 2, 'Where was the woman’s wallet the last time Robert saw it?', 'parte-1-audio-2-opcion-5'),

  (1, 1, 3, 'How will they travel to the park?', 'parte-1-audio-3-opcion-1'),
  (1, 1, 3, 'What was the weather like during the woman’s vacation?', 'parte-1-audio-3-opcion-2'),
  (1, 1, 3, 'Where is the drugstore?', 'parte-1-audio-3-opcion-3'),
  (1, 1, 3, 'Which movie genre do they choose?', 'parte-1-audio-3-opcion-4'),
  (1, 1, 3, 'What might Karl do if it rains on Friday?', 'parte-1-audio-3-opcion-5'),

  (1, 1, 4, 'What did Sophie enjoy doing most at the weekend?', 'parte-1-audio-4-opcion-1'),
  (1, 1, 4, 'What’s the boy’s favorite sport?', 'parte-1-audio-4-opcion-2'),
  (1, 1, 4, 'What is the girl’s family like?', 'parte-1-audio-4-opcion-3'),
  (1, 1, 4, 'Which job does the woman find the most difficult?', 'parte-1-audio-4-opcion-4'),
  (1, 1, 4, 'Who is Emily’s new boyfriend?', 'parte-1-audio-4-opcion-5'),

  (1, 1, 5, 'What was Paul doing when Evelyn phoned him?', 'parte-1-audio-5-opcion-1'),
  (1, 1, 5, 'How does Ana get to university?', 'parte-1-audio-5-opcion-2'),
  (1, 1, 5, 'What musical instrument will he learn to play?', 'parte-1-audio-5-opcion-3'),
  (1, 1, 5, 'What hobby do they have in common?', 'parte-1-audio-5-opcion-4'),
  (1, 1, 5, 'What size does the man choose?', 'parte-1-audio-5-opcion-5'),

  -- Sentencia para crear las preguntas de la sección 1 parte 2
  (1, 2, 1, 'You will hear two siblings talking about last night. Why didn’t they sleep well?', 'parte-2-audio-1-opcion-1'),
  (1, 2, 1, 'You will hear a person asking for help. What is the problem?', 'parte-2-audio-1-opcion-2'),
  (1, 2, 1, 'You will hear two friends talking about shopping. Why did the boy buy yesterday?', 'parte-2-audio-1-opcion-3'),
  (1, 2, 1, 'You will hear two friends talking about an accident. What did Peter break?', 'parte-2-audio-1-opcion-4'),
  (1, 2, 1, 'You will hear two friends talking. Why is the man angry?', 'parte-2-audio-1-opcion-5'),

  (1, 2, 2, 'You will hear Martha talking to her friend. Who is Martha waiting for?', 'parte-2-audio-2-opcion-1'),
  (1, 2, 2, 'You will hear two friends talking about a new restaurant. How will they find out where the new restaurant is?', 'parte-2-audio-2-opcion-2'),
  (1, 2, 2, 'You will hear a teacher talking to a student. Why didn’t the student come to school yesterday?', 'parte-2-audio-2-opcion-3'),
  (1, 2, 2, 'You will hear a woman talking to a friend about going to the airport. How will she get there?', 'parte-2-audio-2-opcion-4'),
  (1, 2, 2, 'You will hear a woman talking to her friend about work. Why is she unhappy?', 'parte-2-audio-2-opcion-5'),

  (1, 2, 3, 'You will hear a boy talking about learning French. How did he improve his French?', 'parte-2-audio-3-opcion-1'),
  (1, 2, 3, 'You will hear two friends talking about a school play. What is the man’s opinion of the school play?', 'parte-2-audio-3-opcion-2'),
  (1, 2, 3, 'You will hear a girl talking about playing tennis. How does she feel after playing?', 'parte-2-audio-3-opcion-3'),
  (1, 2, 3, 'What will they finally have for breakfast?', 'parte-2-audio-3-opcion-4'),
  (1, 2, 3, 'You will hear a man talking to his friend about where he lives. What doesn’t he like about it?', 'parte-2-audio-3-opcion-5'),

  (1, 2, 4, 'You will hear a teacher talking about a trip. What has changed?', 'parte-2-audio-4-opcion-1'),
  (1, 2, 4, 'You will hear two friends talking about exercising. Why are they talking about exercising?', 'parte-2-audio-4-opcion-2'),
  (1, 2, 4, 'You will hear a man explaining why he was late for work. Why was he late?', 'parte-2-audio-4-opcion-3'),
  (1, 2, 4, 'You will hear two friends talking. What will she buy next?', 'parte-2-audio-4-opcion-4'),
  (1, 2, 4, 'You will hear a woman talking about her visit to an art gallery. What did she like about the art gallery?', 'parte-2-audio-4-opcion-5'),

  (1, 2, 5, 'The man can’t come to the party because his mother:', 'parte-2-audio-5-opcion-1'),
  (1, 2, 5, 'You will hear a brother and sister talking about their dog. What don’t they like about having a dog?', 'parte-2-audio-5-opcion-2'),
  (1, 2, 5, 'You will hear two friends talking. What is the man going to make?', 'parte-2-audio-5-opcion-3'),
  (1, 2, 5, 'You will hear two friends talking about the weather. What is the weather going to be like tomorrow?', 'parte-2-audio-5-opcion-4'),
  (1, 2, 5, 'You will hear two friends talking. What will they have for dinner?', 'parte-2-audio-5-opcion-5');



