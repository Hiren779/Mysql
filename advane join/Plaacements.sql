select name from 
(select name,msal,p2.salary as fsal from 
(select s.id,s.name as name,salary as msal,f.friend_id as fid from
 students s inner join packages p on s.id=p.id inner join friends f on s.id=f.id) temp inner join packages p2 on temp.fid=p2.id)
temp2 where fsal > msal order by fsal;
