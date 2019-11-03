set @r1 = 0, @r2 = 0, @r3 = 0, @r4 = 0;
select min(Doctor), MIN(Professor), MIN(Singer), MIN(Actor) from 
(select case OCCUPATION
    when "Doctor" then @r1 := @r1 + 1
    when "Professor" then @r2 := @r2 + 1
    when "Singer" then @r3 := @r3 + 1
    when "Actor" then @r4 := @r4 + 1
    end as RowLine,
    case when OCCUPATION="Doctor" then NAME end AS Doctor,
    case when OCCUPATION="Professor" then NAME end AS Professor,
    case when OCCUPATION="Singer" then NAME end AS Singer,
    case when OCCUPATION="Actor" then NAME end AS Actor
    FROM OCCUPATIONS ORDER BY NAME
) T 
group by RowLine
