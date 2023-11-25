

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `restaurant_tax` (
  `id` int(11) NOT NULL,
  `tax_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` decimal(4,2) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `restaurant_tax` (`id`, `tax_name`, `percentage`, `status`) VALUES
(1, 'SGST', '5.50', 'Enable'),
(2, 'CGST', '7.50', 'Enable');


ALTER TABLE `restaurant_tax`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `restaurant_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

