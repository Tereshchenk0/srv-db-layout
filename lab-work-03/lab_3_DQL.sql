-- DQL: Фільтрація (WHERE + AND)
SELECT *
FROM `Products`
WHERE `category_id` = 10 AND `price` > 1200;
-- DQL: Фільтрація (WHERE + OR)
SELECT *
FROM `Products`
WHERE `category_id` = 10 OR `price` < 400;
-- DQL: Фільтрація (WHERE + IN)
SELECT *
FROM `Orders`
WHERE `status` IN ('shipped', 'completed');
-- DQL: Фільтрація (WHERE + LIKE)
SELECT *
FROM `Users`
WHERE `email` LIKE '%@gmail.com';
-- DQL: Сортування (ORDER BY)
SELECT *
FROM `Products`
ORDER BY `price`;
