select user_id from users;



select exam_id from exams;


select bet_id from bets;


SELECT account.id, users.name, account.value
FROM account
JOIN users ON account.user = users.id;