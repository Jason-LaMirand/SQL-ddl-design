DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE medical_center (id SERIAL PRIMARY KEY, title TEXT, number_of_doctors INTEGER);

CREATE TABLE doctors (id SERIAL PRIMARY KEY, name TEXT, number_of_patients INTEGER, center_id INTEGER REFERENCES medical_center (id) );

CREATE TABLE patients (id SERIAL PRIMARY KEY, number_of_diseases INTEGER, doctor_id INTEGER REFERENCES doctors (id) );

INSERT INTO medical_center (title, number_of_doctors) VALUES ('Hopkins Hospital', '10');
INSERT INTO medical_center (title, number_of_doctors) VALUES ('Mercy Hospital', '20');
INSERT INTO medical_center (title, number_of_doctors) VALUES ('Dell Childrens Hospital', '15');

INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('George Lucas', 2, 1);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Tom Cruise', 4, 1);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Tim Duncan', 2, 1);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Chris Pratt', 2, 2);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Chris Walker', 3, 2);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Chris Hemsworth', 1, 3);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Tim Allen', 5, 3);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('Tom Hanks', 2, 3);
INSERT INTO doctors (name, Number_of_patients, center_id) VALUES ('James Harden', 2, 3);
