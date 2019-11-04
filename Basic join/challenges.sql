select c.hacker_id, h.name, count(c.challenge_id) as cn
from challenges as c join hackers as h 
on c.hacker_id = h.hacker_id
group by c.hacker_id having 
cn = 
(select count(c1.challenge_id) from challenges as c1 
 group by c1.hacker_id
 order by count(c1.challenge_id) desc limit 1) 
or 
cn not in 
(select count(c2.challenge_id) from challenges as c2 
 group by c2.hacker_id having
 c.hacker_id != c2.hacker_id)
order by cn desc, c.hacker_id;
