
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');


CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');


CREATE TABLE `items` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `items` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 54, 'Rice', 'Get your high quality rice here', '45.00', '60d7304382141.png'),
(20, 54, 'Urad Dhall', 'Make your dishes delicious with urad dhall', '130.00', '60d731f8c88be.jpg'),
(21, 54, 'Jaggery', 'Be healthy, Eat well', '60.00', '60d732525b06e.jpg'),
(22, 54, 'Red chilly', 'Make your dishes spicy', '150.00', '60d7333478564.jpg'),
(23, 58, 'Groundnut', 'Get the best groundnut from us', '100.00', '60d80a2f549c5.jpg'),
(24, 58, 'Moong Dhall', 'Fine grains for better eating', '150.00', '60d80a179cf88.jpg'),
(25, 58, 'Millet', 'Quality assured', '40.00', '60d80a0519a93.jpg'),
(26, 59, 'wheat', 'A true delight for the taste buds', '40.00', '60d809f58a62a.jpg'),
(27, 59, 'Rice Flakes', 'love every bite', '30.00', '60d809d216776.jpg'),
(28, 59, 'Millet Vermicelli', 'Feel the difference when you eat', '52.00', '60d809ac4c442.jpg'),
(31, 61, 'Chenna', 'Makes you healthy and happy', '55.00', '60d822c9c4a54.jpg'),
(32, 61, 'Maize', 'Classic quality', '60.00', '60d822e8ad30a.jpg');



CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 39, 'in process', 'on the way', '2021-06-26 05:19:09'),
(72, 39, 'closed', 'D', '2021-06-26 05:19:30'),
(73, 40, 'in process', 'ready', '2021-06-26 13:29:17'),
(74, 51, 'closed', 'Your product delivered', '2021-06-27 03:18:31'),
(75, 57, 'in process', 'Your order is on the way', '2021-06-27 06:38:52'),
(76, 58, 'closed', 'we delivered your order', '2021-06-27 06:39:28'),
(77, 59, 'rejected', 'Currently not available', '2021-06-27 06:39:57'),
(78, 60, 'closed', 'delivered', '2021-06-27 07:08:25'),
(79, 61, 'in process', 'on the way', '2021-06-27 07:08:56'),
(80, 62, 'rejected', 'Currently unavailable', '2021-06-27 07:09:29');


CREATE TABLE `store` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `store` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(54, 0, 'Velan Store', 'velan@example.com', '+91 97845231', 'http://velan.example', '7am', '8pm', '24hr-x7', '    12, abc street, West Bengal, India   ', '60d6e9391a2b6.png', '2021-06-26 08:45:45'),
(58, 0, 'Grocery Wala', 'grocerywala@example.com', '9784512601', 'http://grocerywala.com', '9am', '7pm', 'mon-sat', ' 34, muktha street, West Bengal, India ', '60d8096bc6c6d.png', '2021-06-27 05:15:23'),
(59, 0, 'Organic Grocery', 'orgogrocery@example.com', '8754213265', 'http://orgogrocery.example', '9am', '8pm', 'mon-fri', '13, sanco street, Trichy', '60d8072125c35.png', '2021-06-27 05:05:37'),
(61, 0, 'Mini Metro', 'minimetro@example.com', '9784125013', 'http://minimet.com', '8am', '8pm', '24hr-x7', '19, mark street, india', '60d822940ec56.jpg', '2021-06-27 07:02:44');


CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(31, 'mahesh', 'navon', 'singh', 'manasi@gm.co', '9147852369', '658fdb54cd6f53be7429195ffad38801', 'badri col phase 2', 1, '2021-06-27 00:17:57'),
(32, 'navjot890', 'nav', 'singh', 'nds949405@gmail.com', '6232125458', '6d0361d5777656072438f6e314a852bc', 'badri col phase 1', 1, '2018-04-18 09:50:56'),
(33, 'rock', 'rock1', 'rock2', 'rock@gm.co', '1234567891', '983772fb9d34ee820b4fac9b62625e0b', 'ddfs', 1, '2021-06-26 04:54:49'),
(34, 'mikel', 'jon', 'kin', 'mjk@exampl.com', '9547210356', '60b889fc5594ef0979ce89e86a5dfca3', '48, sms street, Trichy, india', 1, '2021-06-27 00:19:42'),
(35, 'vishnu', 'vishnu', 'priya', 'vishnupriya@exm.com', '75315984620', '04f2eae8bb201945960a9385717a60d1', '21, kali street, india', 1, '2021-06-27 06:36:40'),
(36, 'Vishnupriya', 'vishnupriya', 'dharshini', 'vish@gm.com', '7532146820', '81bfac29cb35d7915bfbbf638230aa78', '28, kamaraj street, india', 1, '2021-06-27 07:06:21');

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(60, 36, 'Maize', 2, '60.00', 'closed', '2021-06-27 07:08:25'),
(61, 36, 'Rice', 1, '45.00', 'in process', '2021-06-27 07:08:56'),
(62, 36, 'Millet Vermicelli', 2, '52.00', 'rejected', '2021-06-27 07:09:29'),
(64, 36, 'Maize', 2, '60.00', NULL, '2021-06-27 13:21:20'),
(65, 36, 'Rice', 1, '45.00', NULL, '2021-06-27 13:21:20'),
(66, 36, 'Millet Vermicelli', 2, '52.00', NULL, '2021-06-27 13:21:20'),
(67, 36, 'wheat', 1, '40.00', NULL, '2021-06-27 13:21:20');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `items`
  ADD PRIMARY KEY (`d_id`);

ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `store`
  ADD PRIMARY KEY (`rs_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `items`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

ALTER TABLE `store`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;
