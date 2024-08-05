-- WRITER 테이블에 데이터 삽입
INSERT INTO `WRITER` (`WRITER_PK`, `WRITER`) VALUES
('WR01', '관리자'),
('WR02', '마케팅팀'),
('WR03', '운영팀');

-- NOTICE 테이블에 데이터 삽입
INSERT INTO `NOTICE` (`NOTICE_PK`, `WRITER_PK`, `CONTENT`) VALUES
('NOT01', 'WR01', '서비스 점검 안내'),
('NOT02', 'WR02', '이벤트 안내'),
('NOT03', 'WR01', '새로운 기능 추가 안내'),
('NOT04', 'WR03', '결제 시스템 업그레이드 안내'),
('NOT05', 'WR03', '서비스 이용약관 변경 안내');

-- VISITORS 테이블에 데이터 삽입
INSERT INTO `VISITORS` (`VISITOR_PK`, `NOTICE_PK`, `WRITER_PK`, `VISITOR_NAME`) VALUES
-- NOTICE_PK: NOT01
('VI_01', 'NOT01', 'WR01', '홍길동'),
('VI_02', 'NOT01', 'WR01', '김영희'),
-- NOTICE_PK: NOT02
('VI_03', 'NOT02', 'WR02', '백지영'),
('VI_04', 'NOT02', 'WR02', '최민호'),
('VI_05', 'NOT02', 'WR02', '송지현'),
-- NOTICE_PK: NOT03
('VI_06', 'NOT03', 'WR01', '장성우'),
-- NOTICE_PK: NOT04
('VI_07', 'NOT04', 'WR03', '백지영'),
('VI_08', 'NOT04', 'WR03', '최민호'),
('VI_09', 'NOT04', 'WR03', '임현서'),
-- NOTICE_PK: NOT05
('VI_10', 'NOT05', 'WR03', '강수민'),
('VI_11', 'NOT05', 'WR03', '백지영'),
('VI_12', 'NOT05', 'WR03', '박정희');
