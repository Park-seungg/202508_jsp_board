DROP
DATABASE IF EXISTS board_proj;
CREATE
DATABASE board_proj;

USE
board_proj;

CREATE TABLE article
(
    id      bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    title   varchar(100) NOT NULL,
    content text         NOT NULL,
    member_id bigint     NOT NULL,
    regDate datetime     NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE member
(
    id       bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    username varchar(50)  NOT NULL,
    password varchar(100) NOT NULL,
    name     varchar(50)  NOT NULL,
    regDate datetime     NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `member`
SET username = 'user1',
`password` = SHA2('user1', 256),
name = 'user1',
regDate = now();

INSERT INTO article
SET title = "제목1",
content = "내용1",
member_id = 1,
regDate = now();

INSERT INTO article
SET title = "제목2",
content = "내용2",
member_id = 2,
regDate = now();

SELECT * FROM article;
SELECT * FROM member;