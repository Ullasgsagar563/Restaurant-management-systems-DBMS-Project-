

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `restaurant_items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `restaurant_items` (`id`, `name`, `price`, `category_id`, `status`) VALUES
(1, 'Paneer Chili Dry', '12.00', 1, 'Enable'),
(2, 'Sweet Corn Soup', '15.00', 1, 'Enable'),
(3, 'Chicken Curry', '24.00', 3, 'Enable');

ALTER TABLE `restaurant_items`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
