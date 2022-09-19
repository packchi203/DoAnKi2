-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 19, 2022 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `categoryName`, `creationDate`, `updationDate`) VALUES
(9, 'Nữ ', '2022-08-26 16:26:41', NULL),
(10, 'Nam', '2022-08-30 12:21:19', NULL),
(11, 'Trẻ em', '2022-08-30 12:21:30', NULL),
(12, 'Sale', '2022-08-30 12:24:06', NULL),
(13, 'Phụ kiện', '2022-08-30 12:24:13', NULL),
(14, 'Bộ sưu tập', '2022-08-30 12:24:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderStatus` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `size`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(46, 43, '47', 1, 'S', '2022-09-13 17:28:52', 'COD', 'Delivered'),
(47, 1, '42', 1, 'S', '2022-09-13 17:31:22', 'COD', 'Delivered'),
(49, 44, '47', 1, 'XL', '2022-09-13 17:49:13', 'COD', 'in Process'),
(50, 43, '47', 1, 'S', '2022-09-14 07:44:13', 'QR Payment', 'Delivered'),
(51, 43, '36', 1, 'S', '2022-09-14 07:50:21', 'COD', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(35, 47, 'in Process', 'ad', '2022-09-13 17:36:51'),
(36, 47, 'Delivered', 'ad', '2022-09-13 17:44:31'),
(37, 49, 'in Process', 'Đơn Hàng đang được Xử Lý', '2022-09-13 17:59:39'),
(38, 50, 'in Process', 'Đơn hàng đang xử lý', '2022-09-14 07:46:07'),
(39, 50, 'Delivered', 'Đơn hàng đã được Giao', '2022-09-14 07:46:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productDescription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productImage3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productAvailability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productPrice`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(36, 9, 14, 'Áo Thun In Chữ', 600, '<ol class=\"ol1\" style=\"color: rgb(0, 0, 0); font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\">Những điều đã hoàn thành</li></ol><ul class=\"ul1\" style=\"list-style-type: hyphen; color: rgb(0, 0, 0); font-size: medium;\"><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: normal;\"></span>Nhóm đã hoàn thành được cơ bản giúp khách hàng có thể mua hàng thành công</li><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: normal;\"></span>Nhóm cũng đạt được xử lý đơn hàng của khách hàng<span class=\"Apple-converted-space\">&nbsp;</span></li><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: normal;\"></span>Hoàn thành được giao diện chính cho người dùng</li><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: normal;\"></span>Admin có thể quản lý những sản phẩm , category và loại sản phẩm<span class=\"Apple-converted-space\">&nbsp;</span></li><li class=\"li1\" style=\"margin: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span class=\"s1\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; line-height: normal;\"></span>Khách hàng dễ sử dụng web hơn trong việc tìm kiếm , làm nổi bật được sản phẩm rõ ràng đẹp mắt hơn</li></ul>', 'sp6.jpeg', 'sp6.2.jpeg', 'sp6.3.jpeg', 'Còn Hàng', '2022-09-13 16:10:12', NULL),
(37, 9, 13, 'Đầm Cut-Out Phối Ren', 600, '<br>', 'sp2.3.jpeg', 'sp2.1.jpeg', 'sp2.2.jpeg', 'Còn Hàng', '2022-09-13 17:02:38', NULL),
(38, 9, 13, 'Đầm Cut-Out ', 300, '<br>', 'sp3.jpeg', 'sp3.1.jpeg', 'sp3.2.jpeg', 'Còn Hàng', '2022-09-13 17:04:10', NULL),
(39, 10, 17, 'QUẦN TÂY NAM DÁNG SLIM', 400, '<br>', '1.1.jpeg', '1.2.jpeg', '1.3.jpeg', 'Còn Hàng', '2022-09-13 17:07:07', NULL),
(40, 10, 17, 'QUẦN TÂY NAM DÁNG SLIM', 400, '<br>', '2.1.jpeg', '2.2.jpeg', '2.3.jpeg', 'Còn Hàng', '2022-09-13 17:07:43', NULL),
(41, 11, 19, 'Quần Jean Dáng Slim', 300, '<br>', '4.1.jpeg', '4.2.jpeg', '4.3.jpeg', 'Còn Hàng', '2022-09-13 17:09:58', NULL),
(42, 11, 20, 'Áo Thun In Chữ', 300, '<br>', '3.2.jpeg', '3.3.jpeg', '3.1.jpeg', 'Còn Hàng', '2022-09-13 17:10:57', NULL),
(43, 10, 21, 'Áo Vest Cổ 2 Ve', 1000, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Áo vest cổ hai ve chất liệu tuysi cứng cáp và đứng form dành cho các quý ông lịch lãm. Thiết kế áo vest dáng ôm vừa vặn với thân hình nam giới, lên form chuẩn tạo cảm giác ấm áp và gần gũi hơn, thể hiện phong độ và đẳng cấp phái mạnh.&nbsp;</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Áo vest có túi ngực, tay áo 4 khuy và 2 cúc cài cơ bản. Mọi phụ kiện đi kèm cho mẫu vest đều được lựa chọn một cách tinh tế và khéo léo nhằm tôn lên được vẻ đẹp và đẳng cấp phái mạnh.&nbsp;</p>', '5.1.jpeg', '5.2.jpeg', '5.4.jpeg', 'Còn Hàng', '2022-09-13 17:15:04', NULL),
(44, 9, 14, 'Áo Thun In Chữ', 500, '<br>', 'sp8.jpeg', 'sp8.3.jpeg', 'sp8.2.jpeg', 'Còn Hàng', '2022-09-13 17:15:52', NULL),
(45, 9, 13, 'Váy Cut-Out Lụa', 600, '<p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Áo vest cổ hai ve chất liệu tuysi cứng cáp và đứng form dành cho các quý ông lịch lãm. Thiết kế áo vest dáng ôm vừa vặn với thân hình nam giới, lên form chuẩn tạo cảm giác ấm áp và gần gũi hơn, thể hiện phong độ và đẳng cấp phái mạnh.&nbsp;</p><p style=\"box-sizing: border-box; margin-bottom: 1em; border: 0px; font-size: 14px; outline: 0px; padding: 0px; vertical-align: baseline; line-height: 24px; color: rgb(62, 62, 63); font-family: Montserrat, sans-serif;\">Áo vest có túi ngực, tay áo 4 khuy và 2 cúc cài cơ bản. Mọi phụ kiện đi kèm cho mẫu vest đều được lựa chọn một cách tinh tế và khéo léo nhằm tôn lên được vẻ đẹp và đẳng cấp phái mạnh.&nbsp;</p>', 'sp7.jpeg', 'sp7.2.jpeg', 'sp7.1.jpeg', 'Còn Hàng', '2022-09-13 17:16:58', NULL),
(46, 9, 13, 'Váy Cut-Ou Bán Chạy', 500, '<br>', 'sp1.jpeg', 'sp1.1.jpeg', 'sp1.1.jpeg', 'Hết Hàng', '2022-09-13 17:18:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 9, 'Váy', '2022-08-30 14:21:29', NULL),
(14, 9, 'Áo Thun', '2022-08-30 14:21:35', '30-08-2022 10:21:15 PM'),
(15, 9, 'Quần', '2022-08-30 14:21:41', NULL),
(16, 10, 'Áo Sơ Mi', '2022-08-30 14:21:51', NULL),
(17, 10, 'Quần Âu', '2022-08-30 16:10:48', NULL),
(18, 11, 'Áo Bé Trai', '2022-08-31 07:22:18', NULL),
(19, 11, 'Quần Bé Trai', '2022-08-31 07:22:30', NULL),
(20, 11, 'Áo Bé Nữ', '2022-08-31 07:22:40', NULL),
(21, 10, 'Áo Vest', '2022-09-13 17:13:48', NULL),
(22, 10, 'Áo Thun', '2022-09-14 07:47:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:28:20', NULL, 0),
(25, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:28:27', NULL, 0),
(26, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-27 11:29:30', NULL, 1),
(27, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-29 08:02:29', NULL, 0),
(28, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-29 08:02:34', '30-08-2022 05:24:03 PM', 1),
(29, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-30 11:56:32', NULL, 0),
(30, 'Bach@gmail.com', 0x3a3a3100000000000000000000000000, '2022-08-30 11:56:39', '05-09-2022 12:26:06 PM', 1),
(31, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 06:57:21', NULL, 0),
(32, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 06:57:29', NULL, 1),
(33, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 07:25:21', NULL, 1),
(34, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-05 08:38:11', '09-09-2022 12:59:59 PM', 1),
(35, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-09 08:18:29', NULL, 1),
(36, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-09 08:29:21', '11-09-2022 04:05:10 PM', 1),
(37, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-11 10:45:17', '13-09-2022 10:56:28 PM', 1),
(38, '', 0x3a3a3100000000000000000000000000, '2022-09-13 17:28:29', NULL, 0),
(39, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-13 17:28:41', '13-09-2022 11:17:52 PM', 1),
(40, 'hoang@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-13 17:48:39', '13-09-2022 11:24:47 PM', 1),
(41, 'chi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-13 17:55:09', NULL, 0),
(42, 'hoang@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-13 17:55:15', '14-09-2022 12:20:06 PM', 1),
(43, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-14 07:22:31', '14-09-2022 12:52:38 PM', 1),
(44, 'tung@gmail.com', 0x3a3a3100000000000000000000000000, '2022-09-14 07:43:56', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingAddress` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingCity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Nguyen Bach', 'bach@gmail.com', 123123123, 'e10adc3949ba59abbe56e057f20f883e', '123', '123', '123', 123, '2022-08-27 11:29:15', NULL),
(43, 'Sơn Tùng Em Ti Pi', 'tung@gmail.com', 12838412, '202cb962ac59075b964b07152d234b70', '102 le van luong', 'dong da', 'ha noi', 100000, '2022-09-09 08:18:14', NULL),
(44, 'Hoàng', 'Hoang@gmail.com', 123123123, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, '2022-09-13 17:48:24', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 2, '2022-08-30 11:57:38'),
(3, 1, 21, '2022-08-30 12:28:13'),
(11, 42, 22, '2022-09-12 07:45:38'),
(12, 43, 37, '2022-09-14 07:52:30'),
(13, 43, 40, '2022-09-14 07:52:46'),
(14, 43, 43, '2022-09-14 07:52:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
