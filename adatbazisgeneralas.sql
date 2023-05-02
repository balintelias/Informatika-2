DROP SCHEMA `nagyHF`;

CREATE SCHEMA IF NOT EXISTS `nagyHF` DEFAULT CHARACTER SET utf8 ;
USE `nagyHF`;

DROP TABLE IF EXISTS `nagyHF`.`users`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`users`(
    id int AUTO_INCREMENT PRIMARY key,
    password nvarchar(255) NOT NULL,
    familyname nvarchar(30),
    givenname nvarchar(30),

    usertype ENUM('singer', 'musician', 'songwriter', 'producer')
);

DROP TABLE IF EXISTS `nagyHF`.`songs`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`songs`(
    id int auto_increment primary key,
    title varchar(30),
    -- szerzoId int
);

DROP TABLE IF EXISTS `nagyHF`.`bands`;
CREATE TABLE IF NOT EXISTS `nagyHF`.`bands`(
    id int auto_increment primary key,
    name nvarchar(30)
);

DROP TABLE IF EXISTS `HF`.`songband`;
CREATE TABLE IF NOT EXISTS `HF`.`songband`(
    id int auto_increment primary key,
    songid int,
    bandid int,

    foreign key (songid) references songs(id),
    foreign key (bandid) references bands(id)
);

DROP TABLE IF EXISTS `HF`.`userband`;
CREATE TABLE IF NOT EXISTS `HF`.`userband`(
    id int auto_increment primary key,
    userid int,
    bandid int,
    foreign key (userid) references users(id),
    foreign key (bandid) references bands(id)
);

insert into users (familyname, givenname, usertype) VALUES ("balint", "elias", "producer");
insert into users (familyname, givenname, usertype) VALUES ("molnar", "lehel", "musician");
insert into users (familyname, givenname, usertype) VALUES ("szabo", "domitomi", "singer");

-- SELECT familyname FROM users;