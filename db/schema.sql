DROP DATABASE IF EXISTS sdcreviews;

CREATE DATABASE sdcreviews;

USE sdcreviews;

CREATE TABLE reviews
(
    productId INT NOT NULL PRIMARY KEY,
    person TEXT NOT NULL,
    personAvatar TEXT NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    rating INT NOT NULL,
    helpfulCount INT NOT NULL,
    date TEXT NOT NULL,
    verified TINYINT NOT NULL
);

LOAD DATA LOCAL INFILE '/Users/ishhr/Desktop/featureReviews/reviewssql.csv' 
INTO TABLE reviews 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';