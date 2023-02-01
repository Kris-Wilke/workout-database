CREATE table gym_session(
    id SERIAL PRIMARY KEY,
    session_date date NOT NULL
);

CREATE TABLE exercise(
    id SERIAL PRIMARY KEY,
    exercise_name VARCHAR(255) NOT NULL
);

CREATE TABLE sets(
    id SERIAL PRIMARY KEY,
    session_id INT NOT NULL REFERENCES gym_session(id),
    exercise_id INT NOT NULL REFERENCES exercise(id),
    reps INT NOT NULL,
    set_weight INT NOT NULL
);
DROP VIEW total_weight_lifted 
CREATE VIEW total_weight_lifted AS
SELECT session_id, SUM(s.reps * s.set_weight) || 'kg' AS total_weight, count(distinct s.exercise_id) as number_of_exercises
FROM sets s
GROUP BY s.session_id
