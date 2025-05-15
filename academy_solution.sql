-- Базовый синтаксис SQL
-- С помощью оператора SELECT выведите текст "Hello world"

SELECT "Hello world"

-- Выведите все столбцы из таблицы Payments.

SELECT * FROM Payments

-- Выведите поля member_id, member_name и status из таблицы FamilyMembers.

SELECT member_id, member_name, status FROM FamilyMembers

-- Выведите поле name из таблицы Passenger. При выводе данного поля используйте псевдоним "passengerName"

SELECT name as passengerName FROM Passenger

