DROP DATABASE IF EXISTS craigslist_exercise;

CREATE DATABASE craigslist_exercise;

\c craigslist_exercise

CREATE TABLE region (id SERIAL PRIMARY KEY, name_of_region TEXT);

CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, preferred_region INTEGER REFERENCES region (id));

CREATE TABLE posts (id SERIAL PRIMARY KEY, title TEXT, information_posted TEXT, location TEXT, user_id INTEGER REFERENCES users (id), region_posted INTEGER REFERENCES region (id));

CREATE TABLE categories (id SERIAL PRIMARY KEY, category_name TEXT);

INSERT INTO region (name_of_region) VALUES ('South');
INSERT INTO region (name_of_region) VALUES ('North');
INSERT INTO region (name_of_region) VALUES ('West');
INSERT INTO region (name_of_region) VALUES ('East');
INSERT INTO region (name_of_region) VALUES ('Northwest');
INSERT INTO region (name_of_region) VALUES ('Southwest');
INSERT INTO region (name_of_region) VALUES ('Southeast');
INSERT INTO region (name_of_region) VALUES ('Northeast');

INSERT INTO users (name, preferred_region) 
VALUES 
('John123', 1),
('Tim234', 2),
('Bob$$', 3),
('George^Jungle', 4),
('Sara777', 4),
('Jesssica06', 5),
('Heather2021', 6),
('Amy56', 6),
('Justin23', 6),
('Kevin896', 7),
('Kristen76', 7),
('Henry09', 8),
('Steve_Watkins', 8),
('Wolverine', 8),
('Spidey09', 2),
('Hulk10', 1),
('IronMan', 1);

INSERT INTO posts (title, information_posted, location, user_id, region_posted) 
VALUES 
('Marvel', 'New spiderman movie coming out.', 'San Fransico, CA', 15, 6),
('Chocolate Cookies', 'The best cookies are Tiff Treats.', 'Austin, TX', 5, 1),
('Avengers Endgame', 'I dont believe ironman really died.', 'New York, NY', 17, 8),
('Cookie Cakes', 'My favorite cake is a cookie cake.', 'Green Bay, WI', 9, 2),
('X-Men', 'Did you hear the new movie has wolverine in it?', 'Tampa Bay, FL', 14, 7);

INSERT INTO categories (category_name) 
VALUES 
('Comics'),
('Cooking'),
('Desert');