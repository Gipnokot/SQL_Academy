-- Базовый синтаксис SQL

-- С помощью оператора SELECT выведите текст "Hello world".
SELECT "Hello world";

-- Выведите все столбцы из таблицы Payments.
SELECT * FROM Payments;

-- Выведите поля member_id, member_name и status из таблицы FamilyMembers.
SELECT member_id, member_name, status FROM FamilyMembers;

-- Выведите поле name из таблицы Passenger. При выводе данного поля используйте псевдоним "passengerName".
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

-- Выведите идентификаторы товаров (поле good) из таблицы Payments, стоимость которых больше 2000 единиц. Стоимость товара хранится в поле unit_price.
SELECT good FROM Payments WHERE unit_price > 2000;

-- Выведите имена (поле member_name) членов семьи из таблицы FamilyMembers, чей статус (поле status) равен "father".
SELECT member_name FROM FamilyMembers WHERE status = "father";

-- Выведите имя (поле member_name) и дату рождения (поле birthday) членов семьи из таблицы FamilyMembers, чей статус (поле status) равен "father" или "mother".
SELECT member_name, birthday FROM FamilyMembers WHERE status = 'father' OR status = 'mother';

-- Необходимо получить все комнаты, в которых есть как кухня (поле has_kitchen), так и интернет (поле has_internet).
-- Напишите запрос, удовлетворяющий вышеописанному условию, который выводит все поля из таблицы Rooms.Наличие обозначается 1 или true, а отсутствие 0 или false.
SELECT * FROM Rooms WHERE has_internet = 1 AND has_kitchen = 1;

-- Выведите имена first_name и фамилии last_name студентов из таблицы Student, у кого отсутствует отчество middle_name.
SELECT first_name, last_name FROM Student
WHERE middle_name IS NULL;

-- Выведите резервации комнат (поля room_id, start_date, end_date) из таблицы Reservations, у которых итоговая стоимость аренды (поле total) находится в промежутке от 500 до 1200 включительно.
SELECT room_id, start_date, end_date FROM Reservations
WHERE total BETWEEN 500 AND 1200;

-- Выведите информацию о студентах из таблицы Student, у которых год рождения соответствует одному из перечисленных: 2000, 2002 и 2004.
SELECT * FROM Student WHERE YEAR(birthday) IN (2000, 2002, 2004);

-- Найдите всех членов семьи с фамилией "Quincey" и выведите поле member_name.
SELECT member_name FROM FamilyMembers WHERE member_name LIKE '%Quincey';

-- Найдите все жилые помещения (таблица Rooms), в адресе которых содержится строка «Avenue». В результирующей выборке выведите поля id и address.
SELECT id, address FROM Rooms
WHERE address REGEXP '\\bAvenue\\b';

-- Выведите name, email пользователей, чей адрес электронной почты заканчивается на «@outlook.com» или «@live.com».

