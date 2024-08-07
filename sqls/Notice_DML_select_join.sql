-- db_notices
SELECT CONTENT as '공지내용', WRITER as '작성자', COUNT(0) as `방문자 명수`
from Notice n
INNER JOIN Writers w ON w.WRITER_PK = n.WRITER_FK
INNER JOIN Visitors v ON n.NOTICE_PK = v.NOTICE_FK
group by NOTICE_PK, WRITER_PK;
