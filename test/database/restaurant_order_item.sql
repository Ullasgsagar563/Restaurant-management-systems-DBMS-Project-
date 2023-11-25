

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `restaurant_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `restaurant_order_item` (`id`, `order_id`, `category_id`, `item_id`, `quantity`, `rate`, `amount`) VALUES
(1, 1001, 1, 1, 1, '12.00', '12.00'),
(2, 1001, 3, 3, 1, '24.00', '24.00'),
(3, 1005, 1, 1, 1, '12.00', '12.00'),
(4, 1006, 1, 1, 1, '12.00', '12.00'),
(5, 1007, 1, 1, 1, '12.00', '12.00'),
(6, 1007, 1, 2, 1, '15.00', '15.00'),
(7, 1007, 3, 3, 1, '24.00', '24.00');

ALTER TABLE `restaurant_order_item`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
