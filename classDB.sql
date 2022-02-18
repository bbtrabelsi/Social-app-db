CREATE DATABASE IF NOT EXISTS social_app;

USE social_app;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS user_data;

CREATE TABLE user_data (
user_name VARCHAR(11) NOT NULL,
email VARCHAR (20) NOT NULL,
password VARCHAR(8) NOT NULL,
PRIMARY KEY (user_name)
 
);

CREATE TABLE posts(
post_id int(5) NOT NULL AUTO_INCREMENT,
user_name VARCHAR(11) NOT NULL,
post TEXT NOT NULL,
post_date DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (post_id),
FOREIGN KEY (user_name) REFERENCES user_data (user_name)

);

CREATE TABLE comments(
comment_id int(5) NOT NULL AUTO_INCREMENT,
post_id int(5) NOT NULL,
comment TEXT NOT NULL,
user_name VARCHAR(11) NOT NULL,
comment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (comment_id),
FOREIGN KEY (post_id) REFERENCES posts(post_id),
FOREIGN KEY (user_name) REFERENCES user_data(user_name)



);