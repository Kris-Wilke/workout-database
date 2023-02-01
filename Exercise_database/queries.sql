select * from total_weight_lifted

select * from gym_session

select * from sets

select * from exercise

select s.exercise_id, count(*), e.exercise_name
from sets s
join exercise e on s.exercise_id = e.id
group by s.exercise_id, e.exercise_name
order by s.exercise_id asc

