

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `restaurant_order` (
  `id` int(11) NOT NULL,
  `table_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gross_amount` decimal(12,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `net_amount` decimal(12,2) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` enum('admin','waiter','cashier') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('In Process','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `restaurant_order` (`id`, `table_id`, `gross_amount`, `tax_amount`, `net_amount`, `created`, `created_by`, `status`) VALUES
(1001, '3', '36.00', '10.00', '46.00', '2020-12-27 22:32:28', 'admin', 'In Process'),
(1005, '1', '36.00', '4.68', '40.68', '2020-12-27 22:54:11', 'admin', 'In Process'),
(1006, '1', '36.00', '4.68', '40.68', '2020-12-27 22:49:56', 'admin', 'In Process'),
(1007, '1', '51.00', '6.63', '57.63', '2020-12-27 22:51:46', 'admin', 'In Process');

ALTER TABLE `restaurant_order`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
COMMIT;
