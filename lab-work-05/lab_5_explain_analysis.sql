-- Аналізуємо запит пошуку за ціною БЕЗ індексу
EXPLAIN SELECT * FROM `Products` WHERE `price` = 340.00;

-- Створюємо індекс для колонки ціни
CREATE INDEX `idx_products_price` ON `Products` (`price`);