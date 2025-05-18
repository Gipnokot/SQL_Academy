-- Базовый синтаксис SQL

-- С помощью оператора SELECT выведите текст "Hello world"
SELECT "Hello world";

-- Выведите все столбцы из таблицы Payments.
SELECT * FROM Payments;

-- Выведите поля member_id, member_name и status из таблицы FamilyMembers.
SELECT member_id, member_name, status FROM FamilyMembers;

-- Выведите поле name из таблицы Passenger. При выводе данного поля используйте псевдоним "passengerName"
SELECT name as passengerName FROM Passenger;

-- Выведите текст "Hello world" в нижнем регистре с помощью соответствующей функции.
SELECT LOWER("Hello world") as lower_string;

-- Выведите полное имя члена семьи и его год рождения, используя функцию YEAR. Для вывода года рождения используйте псевдоним year_of_birth.
SELECT member_name, YEAR(birthday) as year_of_birth FROM FamilyMembers;

-- Выведите полное имя члена семьи и длину его фамилии. Для вывода длины фамилии используйте псевдоним lastname_length.
SELECT member_name,
	LENGTH(member_name) - INSTR(member_name, ' ') AS lastname_length
FROM FamilyMembers;

-- Выведите только уникальные имена first_name студентов из таблицы Student.
SELECT DISTINCT first_name FROM Student;

-- Выведите только уникальные пары значений идентификатор учителя teacher и идентификатор предмета subject из таблицы Schedule.
SELECT DISTINCT teacher, subject FROM Schedule;
