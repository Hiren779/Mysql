SELECT s.hacker_id, h.name
FROM Submissions S
JOIN Challenges C
ON S.challenge_id = C.challenge_id
JOIN Difficulty D
ON C.difficulty_level = D.difficulty_level
JOIN Hackers H
ON S.hacker_id = H.hacker_id 
WHERE S.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id
