DROP SCHEMA `nagyHF`;

CREATE SCHEMA IF NOT EXISTS `nagyHF` DEFAULT CHARACTER SET utf8 ;
USE `nagyHF`;

DROP TABLE IF EXISTS `nagyHF`.`users`;

CREATE TABLE IF NOT EXISTS `nagyHF`.`users`(
    userid int AUTO_INCREMENT PRIMARY key,
    familyname nvarchar(30),
    givenname nvarchar(30),
    usertype ENUM('singer', 'musician', 'songwriter', 'producer')
);

DROP TABLE IF EXISTS `nagyHF`.`songs`;

CREATE TABLE IF NOT EXISTS `nagyHF`.`songs`(
    songid int auto_increment primary key,
    title varchar(30),
    szerzoId int
);

insert into users (familyname, givenname, usertype) VALUES ("balint", "elias", "producer");
insert into users (familyname, givenname, usertype) VALUES ("molnar", "lehel", "musician");
insert into users (familyname, givenname, usertype) VALUES ("szabo", "domitomi", "singer");

SELECT familyname FROM users;