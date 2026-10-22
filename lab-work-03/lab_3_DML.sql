-- DML: Додавання нового користувача (User)
INSERT INTO `Users` (`name`, `email`, `password_hash`) VALUES
('Віктор Павленко', 'viktor.pavlenko@gmail.com', 'hash_xyz_9');
-- DML: Додавання нового товару (Product)
INSERT INTO `Products` (`name`, `description`, `price`, `stock_quantity`, `category_id`) VALUES
('Подарунковий бокс "Літній ранок"', 'Свічка з натуральним воском, воскове саше, набір для догляду', 1410.00, 50, 10);
-- DML: Оновлення ціни товару (Update)
UPDATE `Products`
SET `price` = 550.00
WHERE `name` = 'Дифузор "Тютюн та Ваніль"';
-- DML: Видалення позиції з замовлення (Delete)
DELETE FROM `Order_Items`
WHERE `order_id` = 5 AND `product_id` = 7;
