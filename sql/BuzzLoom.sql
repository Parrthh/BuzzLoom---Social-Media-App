CREATE DATABASE BUZZLOOM;

DROP TABLE IF EXISTS Users;

USE BUZZLOOM;

CREATE TABLE User (
id int PRIMARY KEY AUTO_INCREMENT,
username varchar(45) NOT NULL,
email varchar(45) NOT NULL,
password varchar(200) NOT NULL,
name varchar(45) NOT NULL,
cover_picture varchar(200) NOT NULL,
profile_picture varchar(200) NOT NULL,
city varchar(45) NOT NULL,
website varchar(200) 
);

SELECT * FROM User;

DROP TABLE User;

DROP TABLE IF EXISTS Posts;

CREATE TABLE Posts (
id int PRIMARY KEY AUTO_INCREMENT,
description varchar(200) NOT NULL,
image varchar(200),
userid int NOT NULL,
CONSTRAINT userid FOREIGN KEY (userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
Created_At DATETIME
);

SELECT * FROM Posts;

DROP TABLE Posts;

DROP TABLE Comments;

CREATE TABLE Comments (
id int PRIMARY KEY NOT NULL UNIQUE KEY,
description varchar(200) NOT NULL,
Created_At DATETIME,
comment_userid int NOT NULL,
CONSTRAINT comment_userid FOREIGN KEY (comment_userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
postid int NOT NULL,
CONSTRAINT postid FOREIGN KEY (postid) REFERENCES Posts(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM Comments;

DROP TABLE Stories;

CREATE TABLE Stories(
id int PRIMARY KEY NOT NULL UNIQUE KEY AUTO_INCREMENT,
image varchar(200) NOT NULL,
stories_userid int NOT NULL,
CONSTRAINT stories_userid FOREIGN KEY (stories_userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM Stories;

DROP TABLE IF EXISTS Relationships;

CREATE TABLE Relationships(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
followed_userid int NOT NULL,
CONSTRAINT followed_userid FOREIGN KEY (followed_userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
following_userid int NOT NULL,
CONSTRAINT following_userid FOREIGN KEY (following_userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM Relationships;

DROP TABLE IF EXISTS Likes;

CREATE TABLE Likes(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
liked_userid int NOT NULL,
CONSTRAINT liked_userid FOREIGN KEY (liked_userid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
liked_postid int NOT NULL,
CONSTRAINT liked_postid FOREIGN KEY (liked_postid) REFERENCES User(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

SELECT * FROM Likes;