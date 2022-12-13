-- 언어 설정 확인 명령어
SHOW VARIABLES LIKE 'character_set%';
SHOW VARIABLES LIKE 'c%';

-- 자바 프로그램에서 스프링 DB접속하는 전용 유저 생성
-- 비밀번호 정책이 낮으면 접근 불가
CREATE USER 'ten'@'%' IDENTIFIED BY '1q2w3e4r5t!';
GRANT ALL PRIVILEGES ON *.* TO 'ten'@'%';
FLUSH PRIVILEGES;

CREATE USER 'ten'@'localhost' IDENTIFIED BY '1q2w3e4r5t!';
GRANT ALL PRIVILEGES ON *.* TO 'ten'@'localhost';
FLUSH PRIVILEGES;

USE mysql;
SELECT user, host FROM user;

create DATABASE hometown;
use hometown;
