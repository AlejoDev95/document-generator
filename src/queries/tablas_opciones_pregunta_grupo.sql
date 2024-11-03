CREATE TABLE opciones_pregunta_grupo (
    id SERIAL PRIMARY KEY,
    pregunta_id INT REFERENCES preguntas_grupo(id) ON DELETE CASCADE, -- Relación con una pregunta específica
    opcion_texto VARCHAR(255) NOT NULL,     -- Texto de la opción de respuesta
    es_correcta BOOLEAN NOT NULL DEFAULT FALSE, -- Indica si esta opción es la correcta
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    opciones_pregunta_grupo (pregunta_id, opcion_texto, es_correcta)
VALUES
	(1, 'seccion1-parte3-grupo1-prgunta11 -- It influences the design, materials, and construction approaches.', TRUE),
	(1, 'seccion1-parte3-grupo1-prgunta11 -- It helps engineers to understand the geographical factors.', FALSE),
	(1, 'seccion1-parte3-grupo1-prgunta11 -- It is related to the static and dynamic loads the bridge will support.', FALSE),

	(2, 'seccion1-parte3-grupo1-prgunta12 -- To choose the best materials for construction.', FALSE),
	(2, 'seccion1-parte3-grupo1-prgunta12 -- To understand the environmental conditions.', TRUE),
	(2, 'seccion1-parte3-grupo1-prgunta12 -- To determine the budget of the project.', FALSE),

	(3, 'seccion1-parte3-grupo1-prgunta13 -- The design of the bridge.', FALSE),
	(3, 'seccion1-parte3-grupo1-prgunta13 -- The environmental conditions.', TRUE),
	(3, 'seccion1-parte3-grupo1-prgunta13 -- The types of loads the bridge will bear.', FALSE),

	(4, 'seccion1-parte3-grupo2-prgunta11 -- At the office during business hours.', FALSE),
	(4, 'seccion1-parte3-grupo2-prgunta11 -- At the cafeteria during lunch hours.', TRUE),
	(4, 'seccion1-parte3-grupo2-prgunta11 -- At the door on the night of the dance.', FALSE),

	(5, 'seccion1-parte3-grupo2-prgunta12 -- Tickets typically run out before the day of the dance.', TRUE),
	(5, 'seccion1-parte3-grupo2-prgunta12 -- There will be a DJ, decorations, and surprises.', FALSE),
	(5, 'seccion1-parte3-grupo2-prgunta12 -- Unlike last year, tickets won’t be raffled this year.', FALSE),

	(6, 'seccion1-parte3-grupo2-prgunta13 -- It is not usually held on Friday.', FALSE),
	(6, 'seccion1-parte3-grupo2-prgunta13 -- It will take place in the cafeteria.', FALSE),
	(6, 'seccion1-parte3-grupo2-prgunta13 -- It is a popular event.', TRUE),

	(7, 'seccion1-parte3-grupo3-prgunta11 -- It is not usually held on Friday.', FALSE),
	(7, 'seccion1-parte3-grupo3-prgunta11 -- It will take place in the cafeteria.', FALSE),
	(7, 'seccion1-parte3-grupo3-prgunta11 -- It is a popular event.', TRUE),

	(8, 'seccion1-parte3-grupo3-prgunta12 -- Invited him to participate on his channel.', FALSE),
	(8, 'seccion1-parte3-grupo3-prgunta12 -- Got interested in video games and films channels.', FALSE),
	(8, 'seccion1-parte3-grupo3-prgunta12 -- Launched a channel on video game reviews.', TRUE),

	(9, 'seccion1-parte3-grupo3-prgunta13 -- He wouldn’t be able to balance his responsibilities.', FALSE),
	(9, 'seccion1-parte3-grupo3-prgunta13 -- He was unsure whether people would like his content.', FALSE),
	(9, 'seccion1-parte3-grupo3-prgunta13 -- Many YouTubers in his area offered the same content.', TRUE),

	(10, 'seccion1-parte3-grupo4-prgunta11 -- Volleyball.', FALSE),
	(10, 'seccion1-parte3-grupo4-prgunta11 -- Soccer.', TRUE),
	(10, 'seccion1-parte3-grupo4-prgunta11 -- Hockey.', FALSE),

	(11, 'seccion1-parte3-grupo4-prgunta12 -- her brother started to play this sport.', FALSE),
	(11, 'seccion1-parte3-grupo4-prgunta12 -- her family told her to play the sport.', FALSE),
	(11, 'seccion1-parte3-grupo4-prgunta12 -- watching a broadcast of a professional game.', TRUE),

	(12, 'seccion1-parte3-grupo4-prgunta13 -- It makes the experience more fulfilling.', TRUE),
	(12, 'seccion1-parte3-grupo4-prgunta13 -- It ensures that the teams are evenly balanced.', FALSE),
	(12, 'seccion1-parte3-grupo4-prgunta13 -- It gives her more time to relax after the game.', FALSE),

	(13, 'seccion1-parte3-grupo5-prgunta11 -- go to another classroom to watch the documentary.', FALSE),
	(13, 'seccion1-parte3-grupo5-prgunta11 -- watch a documentary on urban geography.', TRUE),
	(13, 'seccion1-parte3-grupo5-prgunta11 -- visit the crowded place featured on the documentary.', FALSE),

	(14, 'seccion1-parte3-grupo5-prgunta12 -- another location because the classroom is too bright.', FALSE),
	(14, 'seccion1-parte3-grupo5-prgunta12 -- to adjust the lightning to avoid distractions.', TRUE),
	(14, 'seccion1-parte3-grupo5-prgunta12 -- to fix the TV screen because it is too bright.', FALSE),

	(15, 'seccion1-parte3-grupo5-prgunta13 -- turn on the lights.', FALSE),
	(15, 'seccion1-parte3-grupo5-prgunta13 -- move the television.', TRUE),
	(15, 'seccion1-parte3-grupo5-prgunta13 -- close the curtains.', FALSE),

	(16, 'seccion2-parte2-grupo1-prgunta19 -- Engineering success together.', FALSE),
	(16, 'seccion2-parte2-grupo1-prgunta19 -- Supporting each other.', TRUE),
	(16, 'seccion2-parte2-grupo1-prgunta19 -- A tale of rivalry.', FALSE),

	(17, 'seccion2-parte2-grupo1-prgunta20 -- They want to live in a large city.', FALSE),
	(17, 'seccion2-parte2-grupo1-prgunta20 -- They are naturally competitive.', FALSE),
	(17, 'seccion2-parte2-grupo1-prgunta20 -- They were inspired by their parents’ struggles.', TRUE),

	(18, 'seccion2-parte2-grupo1-prgunta21 -- They help each other in subjects where the other is weak.', TRUE),
	(18, 'seccion2-parte2-grupo1-prgunta21 -- They study separately each subject to focus better.', FALSE),
	(18, 'seccion2-parte2-grupo1-prgunta21 -- They compete for better grades.', FALSE),

	(19, 'seccion2-parte2-grupo1-prgunta22 -- To graduate with honors.', FALSE),
	(19, 'seccion2-parte2-grupo1-prgunta22 -- To start their own business.', TRUE),
	(19, 'seccion2-parte2-grupo1-prgunta22 -- To become famous in their fields.', FALSE),

	(20, 'seccion2-parte2-grupo1-prgunta23 -- A tech company that relies on their business skills.', FALSE),
	(20, 'seccion2-parte2-grupo1-prgunta23 -- A service-based internship company.', FALSE),
	(20, 'seccion2-parte2-grupo1-prgunta23 -- A startup that merges their skills.', TRUE),

	(21, 'seccion2-parte2-grupo2-prgunta19 -- People who delay paying their taxes.', FALSE),
	(21, 'seccion2-parte2-grupo2-prgunta19 -- A police officer assisting residents during traffic jams.', FALSE),
	(21, 'seccion2-parte2-grupo2-prgunta19 -- A person providing funds in return for an official’s service.', TRUE),

	(22, 'seccion2-parte2-grupo2-prgunta20 -- Offering gifts to get out of trouble.', FALSE),
	(22, 'seccion2-parte2-grupo2-prgunta20 -- Misappropriating funds entrusted to someone’s care.', TRUE),
	(22, 'seccion2-parte2-grupo2-prgunta20 -- Forging documents for personal gain.', FALSE),

	(23, 'seccion2-parte2-grupo2-prgunta21 -- It leverages governmental trust.', FALSE),
	(23, 'seccion2-parte2-grupo2-prgunta21 -- It leads to biased treatment.', TRUE),
	(23, 'seccion2-parte2-grupo2-prgunta21 -- It boosts economic growth.', FALSE),

	(24, 'seccion2-parte2-grupo2-prgunta22 -- Strong laws and regulations.', TRUE),
	(24, 'seccion2-parte2-grupo2-prgunta22 -- Higher and more taxes.', FALSE),
	(24, 'seccion2-parte2-grupo2-prgunta22 -- More holidays for public officials.', FALSE),

	(25, 'seccion2-parte2-grupo2-prgunta23 -- It hides the actions and decisions of public officials.', FALSE),
	(25, 'seccion2-parte2-grupo2-prgunta23 -- It increases the number of bribes given.', FALSE),
	(25, 'seccion2-parte2-grupo2-prgunta23 -- It makes officials open about their actions and decisions.', TRUE),

	(26, 'seccion2-parte2-grupo3-prgunta19 -- Help lecturers relate to older students.', FALSE),
	(26, 'seccion2-parte2-grupo3-prgunta19 -- Explain why she decided to go back to school.', TRUE),
	(26, 'seccion2-parte2-grupo3-prgunta19 -- Complain about young students’ behavior.', FALSE),

	(27, 'seccion2-parte2-grupo3-prgunta20 -- The number of years she didn’t attend school.', TRUE),
	(27, 'seccion2-parte2-grupo3-prgunta20 -- Her future career plans.', FALSE),
	(27, 'seccion2-parte2-grupo3-prgunta20 -- The duration of her university program.', FALSE),

	(28, 'seccion2-parte2-grupo3-prgunta21 -- The pay was too low.', FALSE),
	(28, 'seccion2-parte2-grupo3-prgunta21 -- It helped her go to university.', FALSE),
	(28, 'seccion2-parte2-grupo3-prgunta21 -- It didn’t challenge her mind.', TRUE),

	(29, 'seccion2-parte2-grupo3-prgunta22 -- Attend parties.', FALSE),
	(29, 'seccion2-parte2-grupo3-prgunta22 -- Study more.', TRUE),
	(29, 'seccion2-parte2-grupo3-prgunta22 -- Make money.', FALSE),

	(30, 'seccion2-parte2-grupo3-prgunta23 -- She understands the importance of a degree.', TRUE),
	(30, 'seccion2-parte2-grupo3-prgunta23 -- She easily connects with other students.', FALSE),
	(30, 'seccion2-parte2-grupo3-prgunta23 -- University is easier than she thought.', FALSE),

	(31, 'seccion2-parte2-grupo4-prgunta19 -- advising to finish studies before photography.', FALSE),
	(31, 'seccion2-parte2-grupo4-prgunta19 -- warning that photography is hard.', FALSE),
	(31, 'seccion2-parte2-grupo4-prgunta19 -- happy about the photography opportunity.', TRUE),

	(32, 'seccion2-parte2-grupo4-prgunta20 -- She always loved photography.', TRUE),
	(32, 'seccion2-parte2-grupo4-prgunta20 -- Her father told her to apply.', FALSE),
	(32, 'seccion2-parte2-grupo4-prgunta20 -- She was nervous about starting university.', FALSE),

	(33, 'seccion2-parte2-grupo4-prgunta21 -- He regretted messaging her.', FALSE),
	(33, 'seccion2-parte2-grupo4-prgunta21 -- He told her to keep traveling.', FALSE),
	(33, 'seccion2-parte2-grupo4-prgunta21 -- He encouraged her to apply.', TRUE),

	(34, 'seccion2-parte2-grupo4-prgunta22 -- She took time off and caught up later.', TRUE),
	(34, 'seccion2-parte2-grupo4-prgunta22 -- She skipped classes and hoped no one noticed.', FALSE),
	(34, 'seccion2-parte2-grupo4-prgunta22 -- She delayed starting university until the job was done.', FALSE),

	(35, 'seccion2-parte2-grupo4-prgunta23 -- Start a new photography project.', FALSE),
	(35, 'seccion2-parte2-grupo4-prgunta23 -- Travel to Japan with friends.', TRUE),
	(35, 'seccion2-parte2-grupo4-prgunta23 -- Work for a new magazine.', FALSE),

	(36, 'seccion2-parte2-grupo5-prgunta19 -- She had no friends with children.', FALSE),
	(36, 'seccion2-parte2-grupo5-prgunta19 -- She focused on her career.', TRUE),
	(36, 'seccion2-parte2-grupo5-prgunta19 -- She didn’t know how to care for kids.', FALSE),

	(37, 'seccion2-parte2-grupo5-prgunta20 -- Her mother told her it was the right time.', FALSE),
	(37, 'seccion2-parte2-grupo5-prgunta20 -- She felt pressured by her friends to start a family.', FALSE),
	(37, 'seccion2-parte2-grupo5-prgunta20 -- She saw the joy her nieces and nephews gave her siblings.', TRUE),

	(38, 'seccion2-parte2-grupo5-prgunta21 -- She was excited about it.', FALSE),
	(38, 'seccion2-parte2-grupo5-prgunta21 -- She wasn’t ready for the responsibility.', TRUE),
	(38, 'seccion2-parte2-grupo5-prgunta21 -- She wanted kids after studying.', FALSE),

	(39, 'seccion2-parte2-grupo5-prgunta22 -- It is a journey full of love and personal growth.', TRUE),
	(39, 'seccion2-parte2-grupo5-prgunta22 -- It is an easy and stress-free experience.', FALSE),
	(39, 'seccion2-parte2-grupo5-prgunta22 -- It is a responsibility that should be avoided.', FALSE),

	(40, 'seccion2-parte2-grupo5-prgunta23 -- She feels it is the most rewarding experience in her life.', TRUE),
	(40, 'seccion2-parte2-grupo5-prgunta23 -- She misses her life without children.', FALSE),
	(40, 'seccion2-parte2-grupo5-prgunta23 -- She feels it is more difficult than she imagined.', FALSE),

	(41, 'seccion2-parte3-grupo1-prgunta24 -- TRUE', TRUE),
	(41, 'seccion2-parte3-grupo1-prgunta24 -- FALSE', FALSE),

	(42, 'seccion2-parte3-grupo1-prgunta25 -- TRUE', TRUE),
	(42, 'seccion2-parte3-grupo1-prgunta25 -- FALSE', FALSE),

	(43, 'seccion2-parte3-grupo1-prgunta26 -- TRUE', TRUE),
	(43, 'seccion2-parte3-grupo1-prgunta26 -- FALSE', FALSE),

	(44, 'seccion2-parte3-grupo1-prgunta27 -- TRUE', TRUE),
	(44, 'seccion2-parte3-grupo1-prgunta27 -- FALSE', FALSE),

	(45, 'seccion2-parte3-grupo1-prgunta28 -- TRUE', TRUE),
	(45, 'seccion2-parte3-grupo1-prgunta28 -- FALSE', FALSE),

	(46, 'seccion2-parte3-grupo2-prgunta24 -- TRUE', TRUE),
	(46, 'seccion2-parte3-grupo2-prgunta24 -- FALSE', FALSE),

	(47, 'seccion2-parte3-grupo2-prgunta25 -- TRUE', TRUE),
	(47, 'seccion2-parte3-grupo2-prgunta25 -- FALSE', FALSE),

	(48, 'seccion2-parte3-grupo2-prgunta26 -- TRUE', TRUE),
	(48, 'seccion2-parte3-grupo2-prgunta26 -- FALSE', FALSE),

	(49, 'seccion2-parte3-grupo2-prgunta27 -- TRUE', TRUE),
	(49, 'seccion2-parte3-grupo2-prgunta27 -- FALSE', FALSE),

	(50, 'seccion2-parte3-grupo2-prgunta28 -- TRUE', TRUE),
	(50, 'seccion2-parte3-grupo2-prgunta28 -- FALSE', FALSE),

	(51, 'seccion2-parte3-grupo3-prgunta24 -- TRUE', TRUE),
	(51, 'seccion2-parte3-grupo3-prgunta24 -- FALSE', FALSE),

	(52, 'seccion2-parte3-grupo3-prgunta25 -- TRUE', TRUE),
	(52, 'seccion2-parte3-grupo3-prgunta25 -- FALSE', FALSE),

	(53, 'seccion2-parte3-grupo3-prgunta26 -- TRUE', TRUE),
	(53, 'seccion2-parte3-grupo3-prgunta26 -- FALSE', FALSE),

	(54, 'seccion2-parte3-grupo3-prgunta27 -- TRUE', TRUE),
	(54, 'seccion2-parte3-grupo3-prgunta27 -- FALSE', FALSE),

	(55, 'seccion2-parte3-grupo3-prgunta28 -- TRUE', TRUE),
	(55, 'seccion2-parte3-grupo3-prgunta28 -- FALSE', FALSE),

	(56, 'seccion2-parte3-grupo4-prgunta24 -- TRUE', TRUE),
	(56, 'seccion2-parte3-grupo4-prgunta24 -- FALSE', FALSE),

	(57, 'seccion2-parte3-grupo4-prgunta25 -- TRUE', TRUE),
	(57, 'seccion2-parte3-grupo4-prgunta25 -- FALSE', FALSE),

	(58, 'seccion2-parte3-grupo4-prgunta26 -- TRUE', TRUE),
	(58, 'seccion2-parte3-grupo4-prgunta26 -- FALSE', FALSE),

	(59, 'seccion2-parte3-grupo4-prgunta27 -- TRUE', TRUE),
	(59, 'seccion2-parte3-grupo4-prgunta27 -- FALSE', FALSE),

	(60, 'seccion2-parte3-grupo4-prgunta28 -- TRUE', TRUE),
	(60, 'seccion2-parte3-grupo4-prgunta28 -- FALSE', FALSE),

	(61, 'seccion2-parte3-grupo5-prgunta24 -- TRUE', TRUE),
	(61, 'seccion2-parte3-grupo5-prgunta24 -- FALSE', FALSE),

	(62, 'seccion2-parte3-grupo5-prgunta25 -- TRUE', TRUE),
	(62, 'seccion2-parte3-grupo5-prgunta25 -- FALSE', FALSE),

	(63, 'seccion2-parte3-grupo5-prgunta26 -- TRUE', TRUE),
	(63, 'seccion2-parte3-grupo5-prgunta26 -- FALSE', FALSE),

	(64, 'seccion2-parte3-grupo5-prgunta27 -- TRUE', TRUE),
	(64, 'seccion2-parte3-grupo5-prgunta27 -- FALSE', FALSE),

	(65, 'seccion2-parte3-grupo5-prgunta28 -- TRUE', TRUE),
	(65, 'seccion2-parte3-grupo5-prgunta28 -- FALSE', FALSE);

