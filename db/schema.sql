DROP DATABASE IF EXISTS sdcreviews;

CREATE DATABASE sdcreviews;

USE sdcreviews;

CREATE TABLE products
(
    id INT PRIMARY KEY UNIQUE,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    comments TEXT NOT NULL,
    categoryRatings TEXT NOT NULL,
    average INT NOT NULL,
    totalPictures TEXT NOT NULL,
    individualRatings TEXT NOT NULL,
);

CREATE TABLE comments
(
    id INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    productId INT NOT NULL,
    person TEXT NOT NULL,
    personAvatar TEXT NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    rating INT NOT NULL,
    helpfulCount INT NOT NULL,
    date TEXT NOT NULL,
    verified TINYINT NOT NULL
);

CREATE TABLE individualRatings
(
    id INT
    AUTO_INCREMENT PRIMARY KEY NOT NULL,
    oneStarRatings TINYINT NOT NULL,
    twoStarRatings TINYINT NOT NULL,
    threeStarRatings TINYINT NOT NULL,
    fourStarRatings TINYINT NOT NULL,
    fiveStarRatings TINYINT NOT NULL
)