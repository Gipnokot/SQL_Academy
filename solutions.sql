-- Вывести имена всех людей, которые есть в базе данных авиакомпаний

SELECT name
FROM Passenger;

-- Вывести названия всеx авиакомпаний

SELECT name
FROM Company

-- Вывести все рейсы, совершенные из Москвы

SELECT *
FROM Trip
WHERE town_from = "Moscow"

-- Вывести имена людей, которые заканчиваются на "man"

SELECT name
FROM Passenger WHERE name LIKE '%man'

-- 
