insert into gym_session(id, session_date)
values(default, '2023-02-01')

insert into exercise(id, exercise_name)
values(default, 'Seated row')

insert into sets(id, session_id, exercise_id, reps, set_weight)
values(default, (select id from gym_session where session_date = '2023-02-01'), (select id from exercise where exercise_name = 'Seated row'),
	  8, 32)
	  