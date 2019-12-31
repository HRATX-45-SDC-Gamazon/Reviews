DROP DATABASE IF EXISTS sdcreviews;

CREATE DATABASE sdcreviews;

USE sdcreviews;

CREATE TABLE products
(
    id INT PRIMARY KEY NOT NULL
    AUTO_INCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    average INT NOT NULL
);

    CREATE TABLE comments
    (
        productId INT NOT NULL,
        person TEXT NOT NULL,
        personAvatar TEXT NOT NULL,
        title TEXT NOT NULL,
        body TEXT NOT NULL,
        rating INT NOT NULL,
        helpfulCount INT NOT NULL,
        date TEXT NOT NULL,
        verified TINYINT NOT NULL,
        id INT PRIMARY KEY NOT NULL
        AUTO_INCREMENT
);

LOAD DATA LOCAL INFILE '/Users/ishhr/Desktop/featureReviews/products.csv' 
INTO TABLE products 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/Users/ishhr/Desktop/featureReviews/products2.csv' 
INTO TABLE products 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/Users/ishhr/Desktop/featureReviews/comments.csv' 
INTO TABLE comments 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/Users/ishhr/Desktop/featureReviews/comments2.csv' 
INTO TABLE comments 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n';