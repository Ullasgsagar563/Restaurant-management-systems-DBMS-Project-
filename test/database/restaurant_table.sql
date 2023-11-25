

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `restaurant_table` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(3) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `restaurant_table` (`id`, `name`, `capacity`, `status`) VALUES
(1, 'Table 1', 4, 'Enable'),
(2, 'Table 2', 2, 'Enable'),
(3, 'Table 3', 4, 'Enable'),
(4, 'Table 4', 2, 'Enable'),
(5, 'Table 5', 4, 'Enable');

ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
