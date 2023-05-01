drop schema if exists bandpage;
CREATE SCHEMA bandpage DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
use bandpage;

/*

DROP EVERYTHING

*/

create table user
(
userid numeric(10,0) primary key,
familyname varchar(30),
givenname varchar(30),
usertype ENUM('singer', 'musician', 'songwriter', 'producer')
);

create table song
(
songid numeric(10,0) primary key,
title varchar(30)
);

create database INFO2;

create table user