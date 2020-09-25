CREATE DATABASE IF NOT EXISTS accommodation;
USE accommodation;

/*GENERAL CHARACTERISTICS */

CREATE TABLE IF NOT EXISTS house (
  accommodation_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  is_flat BOOLEAN,
  is_room BOOLEAN, 
  floor_number INT UNSIGNED,
  number_of_rooms INT UNSIGNED, 
  has_terrase BOOLEAN
);

CREATE TABLE IF NOT EXISTS flatmates (
  accommodation_id INT NOT NULL,
  owner_lives_here BOOLEAN,
  number_of_flatmates INT UNSIGNED
);

CREATE TABLE IF NOT EXISTS accessibility(
  accommodation_id INT NOT NULL,
  access_disabilities BOOLEAN,
  has_lift BOOLEAN,
  has_parkig BOOLEAN
);

/*AREA CHARACTERISTICS*/

CREATE TABLE IF NOT EXISTS address (
  city VARCHAR(20) NOT NULL,
  district_name VARCHAR(30) NOT NULL,
  district_id INT NOT NULL NOT NULL,
  street_name VARCHAR(40) NOT NULL,
  km_from_center INT
);


CREATE TABLE IF NOT EXISTS district (
  district_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  district_name VARCHAR(40) NOT NULL,
  crime_rate FLOAT
);

CREATE TABLE IF NOT EXISTS infrastructure (
  district_id INT UNSIGNED NOT NULL,
  km_to_gym INT UNSIGNED,
  km_to_foodshops INT UNSIGNED,
  km_to_pharmacy INT UNSIGNED,
  km_to_transportstop INT UNSIGNED
);

CREATE TABLE IF NOT EXISTS entertainment (
  district_id INT UNSIGNED NOT NULL,
  cafes_near BOOLEAN,
  cool_places_near BOOLEAN
);

CREATE TABLE IF NOT EXISTS cafe (
  cafe_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  district_id INT UNSIGNED NOT NULL,
  cafe_name VARCHAR(40) NOT NULL,
  cafe_cuisine VARCHAR(40),
  cafe_average_check FLOAT  
);

CREATE TABLE IF NOT EXISTS cool_places (
  place_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  district_id INT UNSIGNED NOT NULL,
  place_name VARCHAR(40) NOT NULL,
  place_type VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS noise_pollution (
  district_id INT UNSIGNED NOT NULL,
  km_roads INT UNSIGNED,
  km_clubs INT UNSIGNED,
  km_park INT UNSIGNED
);

/*FINANCE & SERVICES*/

CREATE TABLE IF NOT EXISTS finance (
  rent INT UNSIGNED NOT NULL,
  utilities INT UNSIGNED NOT NULL,
  has_additional BOOLEAN,
  additional INT UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS additional (
  smoking_allowed BOOLEAN,
  pets_allowed BOOLEAN
);
