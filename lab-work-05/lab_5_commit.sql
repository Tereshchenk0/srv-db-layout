-- 1. Дивимося на ціну "ДО"
SELECT * FROM `Products` WHERE `id` = 12;

-- 2. Починаємо транзакцію
START TRANSACTION;

-- 3. Виконуємо нашу DML-операцію
UPDATE `Products`
SET `price` = 550.00 -- Нова ціна
WHERE `id` = 12;

-- 4. Завершуємо транзакцію ТА ЗБЕРІГАЄМО ЗМІНИ
COMMIT;

-- 5. Дивимося на ціну "ПІСЛЯ"
SELECT * FROM `Products` WHERE `id` = 12;