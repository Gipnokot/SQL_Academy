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

-- Вывести количество рейсов, совершенных на TU-134

SELECT COUNT(plane) as count
FROM Trip
WHERE plane = 'TU-154'

-- Какие компании совершали перелеты на Boeing

SELECT DISTINCT name
FROM Trip
INNER JOIN Company
    ON Trip.company = Company.id
    WHERE plane = "Boeing"

-- Вывести все названия самолётов, на которых можно улететь в Москву (Moscow)

SELECT DISTINCT plane
FROM Trip
WHERE town_to = "Moscow"
