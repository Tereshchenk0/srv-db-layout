-- ПОЧАТОК ТРАНЗАКЦІЇ
START TRANSACTION;

-- КРОК 1: Створюємо саме замовлення (для користувача з id=9)
INSERT INTO `Orders` (`user_id`, `status`) 
VALUES (9, 'pending');

-- Зберігаємо ID щойно створеного замовлення у змінну,
-- щоб використати його на наступному кроці
SET @new_order_id = LAST_INSERT_ID();

-- КРОК 2: Додаємо товар у це замовлення
-- (Припустимо, купуємо товар з id=5, кількість=4 шт, ціна=250.00)
INSERT INTO `Order_Items` (`order_id`, `product_id`, `quantity`, `price_at_purchase`)
VALUES (@new_order_id, 5, 4, 250.00);

-- КРОК 3: Оновлюємо склад (списуємо 2 одиниці товару id=5)
UPDATE `Products`
SET `stock_quantity` = `stock_quantity` - 4
WHERE `id` = 5;

-- Якщо все пройшло без помилок - зберігаємо зміни
COMMIT;