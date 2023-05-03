DROP SCHEMA `nagyHF`;

CREATE SCHEMA IF NOT EXISTS `nagyHF` DEFAULT CHARACTER SET utf8 ;
USE `nagyHF`;

DROP TABLE IF EXISTS `nagyHF`.`users`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`users`(
    username nvarchar(30) PRIMARY KEY,
    password nvarchar(255) NOT NULL,
    familyname nvarchar(30),
    givenname nvarchar(30),
    CSS_setting boolean,
    usertype ENUM('singer', 'musician', 'songwriter', 'producer')
);

DROP TABLE IF EXISTS `nagyHF`.`songs`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`songs`(
    id int auto_increment primary key,
    title varchar(30)
    -- szerzoId int
);

DROP TABLE IF EXISTS `nagyHF`.`bands`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`bands`(
    id int auto_increment primary key,
    name nvarchar(30)
);

DROP TABLE IF EXISTS `nagyHF`.`songband`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`songband`(
    id int auto_increment primary key,
    songid int,
    bandid int,

    foreign key (songid) references songs(id),
    foreign key (bandid) references bands(id)
);

DROP TABLE IF EXISTS `nagyHF`.`userband`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`userband`(
    id int auto_increment primary key,
    username nvarchar(30),
    bandid int,
    foreign key (username) references users(username),
    foreign key (bandid) references bands(id)
);

insert into users (username, password, familyname, givenname, usertype) VALUES ("balintelias", "password", "balint", "elias", "producer");
insert into users (username, password, familyname, givenname, usertype) VALUES ("molnarlehel", "password", "molnar", "lehel", "musician");
insert into users (username, password, familyname, givenname, usertype) VALUES ("szabodomitomi", "password", "szabo", "domitomi", "singer");

SELECT * FROM users WHERE username='balintelias' AND password='password';
