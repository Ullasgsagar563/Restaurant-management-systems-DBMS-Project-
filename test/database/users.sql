

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `restaurant_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','waiter','cashier') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `restaurant_user` (`id`, `first_name`, `last_name`, `gender`, `email`, `password`, `mobile`, `address`, `created`, `role`) VALUES
(1, 'ullas', 'g', 'Male', 'ullasg@dbms.com', '202cb962ac59075b964b07152d234b70', '1234567890', '', '2020-11-28 22:45:58', 'admin'),
(2, 'vanushree', 'dm', 'female', 'vanushree@dbms.com', '202cb962ac59075b964b07152d234b70', '123456789', '', '2020-11-28 22:45:58', 'waiter'),
(3, 'xy', 'z', 'Male', 'xyz@xyz.com', '202cb962ac59075b964b07152d234b70', '123456789', '', '2020-11-28 22:45:58', 'cashier'),


ALTER TABLE `restaurant_user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
