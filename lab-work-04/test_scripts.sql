-- Перевірка роботи v_Detailed_Orders
SELECT * FROM `v_Detailed_Orders`;

-- Перевірка роботи для sp_AddNewProduct
-- 1. Викликаємо процедуру, щоб додати новий товар
CALL sp_AddNewProduct(
    'Інтер’єрний спрей "Македонська роза"',
    'Спрей для текстилю та постільної білизни, безпечний для тканин, 150 мл.',
    420.00,
    16,
    9 
);
-- 2. Перевіряємо, чи з'явився товар у таблиці
SELECT * FROM `Products` WHERE `name` = 'Інтер’єрний спрей "Македонська роза"';

--Пітготовка таблиці та перевірка тригера
-- 1. Додаємо нову колонку в таблицю Products
--    для збереження дати останнього оновлення
ALTER TABLE `Products`
ADD COLUMN `updated_at` TIMESTAMP NULL DEFAULT NULL
AFTER `category_id`;

SELECT * FROM Products WHERE id = 5;

UPDATE Products
SET price = 250.00
WHERE id = 5;
