-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 05:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$xYmt7AbYE03qgv0Nl8s6wuZhrZU/kyn0B4GPuIA3FZDM9wd5xdd5y', 'Dzk1S4UlA0ptdelkExCf0jerQa3HZJDUeizkhQvlNB31Yo1PBvfZMI3NBI9C', '2023-04-19 13:36:28', '2023-04-19 13:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `thumbnail`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Kinh doanh bán lẻ thời trang nam – Cơ hội và thách thức', '<h2>Kinh tế Việt Nam năm 2023 được c&aacute;c chuy&ecirc;n gia dự b&aacute;o sẽ c&ograve;n th&aacute;ch thức với thị trường n&oacute;i chung v&agrave; thị trường b&aacute;n lẻ thời trang nam n&oacute;i ri&ecirc;ng. Tuy nhi&ecirc;n, trong qu&yacute; 2, qu&yacute; 3 năm nay vẫn được dự b&aacute;o phục hồi tăng trưởng v&agrave; l&agrave; cơ hội hấp dẫn với c&aacute;c nh&agrave; đầu tư biết nắm bắt thời cơ, hoạt động hiệu quả.</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cafebiz.cafebizcdn.vn/thumb_w/600/162123310254002176/2023/5/3/photo1682587812508-1682587812576267430856-16831050472642014576158.png\" /></p>\r\n\r\n<p>Trong năm vừa qua, khi gi&aacute; nguy&ecirc;n phụ liệu đầu v&agrave;o tăng mạnh, chi ph&iacute; sản xuất, chi ph&iacute; vận chuyển tăng, lưu kho tăng, chi ph&iacute; mặt bằng v&agrave; marketing quảng c&aacute;o rất lớn&hellip;Đ&acirc;y l&agrave; những th&aacute;ch thức khiến cho nhiều doanh nghiệp thời trang buộc phải thu hẹp quy m&ocirc; hoạt động, thậm ch&iacute; đ&oacute;ng cửa. Với bối cảnh đ&oacute;, thương hiệu n&agrave;o đảm bảo được chất lượng sản phẩm, quản trị được d&ograve;ng tiền tốt, tối ưu h&agrave;ng h&oacute;a, quy tr&igrave;nh vận h&agrave;nh sẽ c&oacute; cơ hội để tăng trưởng mạnh mẽ. Hệ thống thời trang nam 360 l&agrave; một trường hợp điển h&igrave;nh.</p>\r\n\r\n<p>Lựa chọn ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng nam giới trẻ với c&aacute;c sản phẩm đa dạng mang t&iacute;nh ứng dụng cao, gi&aacute; b&aacute;n ph&ugrave; hợp mức ti&ecirc;u d&ugrave;ng của đa số c&aacute;c bạn trẻ, thương hiệu thời trang nam 360 tăng trưởng tới 57% kh&aacute;ch h&agrave;ng mới trong năm 2022. Ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng l&agrave; c&aacute;c bạn trẻ Gen Y, Gen Z m&agrave; 360 lựa chọn tương ứng độ tuổi từ 20 đến 34 chiếm số lượng đ&ocirc;ng đảo v&agrave; l&agrave; động lực cho ng&agrave;nh b&aacute;n lẻ thời trang trong nước.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/28/img3319-1-16826545061081084403146.jpg\" target=\"_blank\"><img alt=\"Kinh doanh bán lẻ thời trang nam – Cơ hội và thách thức - Ảnh 1.\" src=\"https://channel.mediacdn.vn/thumb_w/640/428462621602512896/2023/4/28/img3319-1-16826545061081084403146.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm thời trang đa dạng, t&iacute;nh ứng dụng cao v&agrave; c&oacute; mức gi&aacute; ph&ugrave; hợp với đa số kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c d&ograve;ng sản phẩm được nam giới ưa chuộng như &aacute;o thun, polo, sơ mi, quần &acirc;u, quần jeans&hellip;. được thiết kế đa dụng, ph&ugrave; hợp cho c&aacute;c bạn trẻ đi l&agrave;m, đi chơi hay tham gia c&aacute;c buổi tụ tập giao lưu bạn b&egrave;. Phong c&aacute;ch thiết kế trẻ trung, ph&oacute;ng kho&aacute;ng khiến thương hiệu 360 trở th&agrave;nh lựa chọn quen thuộc của nam giới trẻ.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/27/photo-1-16825877618331634478630.png\" target=\"_blank\"><img alt=\"Kinh doanh bán lẻ thời trang nam – Cơ hội và thách thức - Ảnh 2.\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/4/27/photo-1-16825877618331634478630.png\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Phong c&aacute;ch thiết kế trẻ trung v&agrave; năng động của Thời trang nam 360</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khả năng tối ưu d&ograve;ng tiền, h&agrave;ng h&oacute;a, quy tr&igrave;nh vận h&agrave;nh gi&uacute;p cho 360 duy tr&igrave; khả năng sinh lời tốt. Ngo&agrave;i ra kh&ocirc;ng thể kh&ocirc;ng nhắc tới khả năng tạo tiền rất tốt tr&ecirc;n mỗi m&eacute;t vu&ocirc;ng cửa h&agrave;ng b&aacute;n lẻ. &ldquo;Ngoại trừ một số flagship hiện diện tr&ecirc;n c&aacute;c trục phố trung t&acirc;m thời trang, 360 lựa chọn quy m&ocirc; cửa h&agrave;ng kh&ocirc;ng qu&aacute; to, điều n&agrave;y gi&uacute;p ch&uacute;ng t&ocirc;i giảm &aacute;p lực chi ph&iacute; thu&ecirc; mặt bằng. Đồng thời doanh thu mang lại cao gi&uacute;p tỉ lệ lợi nhuận của 360 đang ở mức rất tốt.&rdquo; &ndash; &Ocirc;ng Vương Văn Diễn, CEO C&ocirc;ng ty cổ phần Thời trang 360 cho biết.&nbsp;B&ecirc;n cạnh đ&oacute;, 360 cũng đ&atilde; ho&agrave;n th&agrave;nh x&acirc;y dựng hệ thống nh&agrave; xưởng ri&ecirc;ng, gi&uacute;p một lần nữa chủ động sản xuất v&agrave; tối ưu chi ph&iacute; đầu v&agrave;o.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/27/photo-2-1682587762357880532935.png\" target=\"_blank\"><img alt=\"Kinh doanh bán lẻ thời trang nam – Cơ hội và thách thức - Ảnh 3.\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/4/27/photo-2-1682587762357880532935.png\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hệ thống xưởng sản xuất ri&ecirc;ng gi&uacute;p 360 chủ động vận h&agrave;nh v&agrave; tối ưu chi ph&iacute; đầu v&agrave;o</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đi theo xu hướng ph&aacute;t triển chung, 360 cũng ph&aacute;t triển đồng thời c&aacute;c k&ecirc;nh online tr&ecirc;n mạng x&atilde; hội, hiện diện tr&ecirc;n c&aacute;c s&agrave;n thương mại điện tử để phủ s&oacute;ng nhận diện tr&ecirc;n c&aacute;c k&ecirc;nh. &ldquo;Tuy nhi&ecirc;n trải nghiệm mua sắm trực tiếp tại cửa h&agrave;ng vẫn gi&uacute;p tạo ra gi&aacute; trị đơn h&agrave;ng cao hơn, cũng như sự y&ecirc;u th&iacute;ch v&agrave; trung th&agrave;nh hơn với thương hiệu.&rdquo; &ndash; đại diện doanh nghiệp cho biết. Do đ&oacute;, b&ecirc;n cạnh mở rộng hệ thống b&aacute;n lẻ th&ocirc;ng qua k&ecirc;nh online cũng như ph&aacute;t triển hợp t&aacute;c nhượng quyền kinh doanh tại H&agrave; Nội cũng như c&aacute;c tỉnh th&agrave;nh, 360 tiếp tục đầu tư v&agrave;o n&acirc;ng cấp c&aacute;c cửa h&agrave;ng, gia tăng dịch vụ v&agrave; trải nghiệm kh&aacute;ch h&agrave;ng để ng&agrave;y c&agrave;ng n&acirc;ng tầm thương hiệu.</p>\r\n\r\n<p>Nguồn:&nbsp;<a href=\"https://cafebiz.vn/kinh-doanh-ban-le-thoi-trang-nam-co-hoi-va-thach-thuc-176230503161045062.chn?fbclid=IwAR2vFU6iG_OFSpEK9Rut_iwaVuLBxLnhdkWCE0jI-NiEBGelPpyCWux8dC8\">https://cafebiz.vn/</a></p>', '1685608634blog1.jpg', 'kinh-doanh-ban-le-thoi-trang-nam-co-hoi-va-thach-thuc', '2023-06-01 08:37:14', '2023-06-01 08:37:14'),
(3, 'Mùa hè thêm chất với BST Spirit Squad của thương hiệu thời trang 360®', '<p>Lấy cảm hứng từ tinh thần Sporty, c&aacute;c trang phục trong BST Spirit Squad sử dụng những gam m&agrave;u rực rỡ như cam, đỏ, xanh l&agrave;m chủ đạo, kết hợp với những gam m&agrave;u trung t&iacute;nh để tạo hiệu ứng c&acirc;n bằng. C&aacute; t&iacute;nh nhưng kh&ocirc;ng dị biệt, Spirit Squad như thổi một l&agrave;n gi&oacute; mới v&agrave;o những bộ outfit h&agrave;ng ng&agrave;y th&ecirc;m phần mạnh mẽ, khỏe khoắn, nam t&iacute;nh m&agrave; vẫn giữ d&aacute;ng vẻ hiện đại, lịch sự.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-1-16818169473537581950.jpg\" target=\"_blank\"><img alt=\"Mùa hè thêm chất với những sản phẩm đỉnh từ BST Spirit Squad của thương hiệu thời trang nam 360® - Ảnh 3.\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-1-16818169473537581950.jpg\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng chỉ nằm ở kiểu d&aacute;ng, chất liệu cũng l&agrave; một trong những ưu thế vượt trội của thương hiệu 360&reg;. Sau khi đặt l&ecirc;n b&agrave;n c&acirc;n v&agrave; thử nghiệm kỹ c&agrave;ng giữa v&ocirc; v&agrave;n lựa chọn, những chất liệu seersucker, waffle, linen, cotton,&hellip; được 360&reg; sử dụng cho những trang phục trong BST Spirit Squad. Đặc t&iacute;nh tho&aacute;ng m&aacute;t, mềm nhẹ, độ bền cao cho những chiếc &aacute;o ph&ocirc;ng, polo, quần short, sơ mi&hellip; sẽ rất ph&ugrave; hợp với thời tiết n&oacute;ng nực sắp tới v&agrave; những hoạt động s&ocirc;i động m&ugrave;a h&egrave;.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-2-1681816947078734392959.jpg\" target=\"_blank\"><img alt=\"Mùa hè thêm chất với những sản phẩm đỉnh từ BST Spirit Squad của thương hiệu thời trang nam 360® - Ảnh 4.\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-2-1681816947078734392959.jpg\" /></a></p>\r\n\r\n<p>Chất liệu cao cấp kh&ocirc;ng thua k&eacute;m những thương hiệu lớn, c&ugrave;ng thiết kế độc quyền của ri&ecirc;ng thương hiệu 360&reg; chắc hẳn sẽ khiến bạn nghĩ rằng sẽ phải trả số tiền lớn để sở hữu những items đỉnh n&agrave;y từ 360&reg;. Nhưng với triết l&yacute; &ldquo;Chất lượng đảm bảo ở mọi mức gi&aacute;&rdquo;, bất cứ ai khi đến với 360&reg; đều nhận được những gi&aacute; trị vượt trội của sản phẩm so với số tiền m&igrave;nh bỏ ra.</p>\r\n\r\n<p><a href=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-3-1681816947142338500882.jpg\" target=\"_blank\"><img alt=\"Mùa hè thêm chất với những sản phẩm đỉnh từ BST Spirit Squad của thương hiệu thời trang nam 360® - Ảnh 5.\" src=\"https://channel.mediacdn.vn/428462621602512896/2023/4/18/photo-3-1681816947142338500882.jpg\" /></a></p>\r\n\r\n<p>Những thiết kế ấn tượng, chất liệu tốt c&ugrave;ng mức gi&aacute; hợp l&yacute;, BST Spirit Squad từ thương hiệu thời trang nam 360&reg; mang đến những must-have-item h&agrave;ng đầu trong tủ đồ h&egrave; n&agrave;y của nam giới trẻ.</p>\r\n\r\n<p>Trải nghiệm BST Spirit Squad ngay v&agrave; c&ugrave;ng tạo n&ecirc;n những outfit bắt mắt trong m&ugrave;a h&egrave; n&agrave;y c&ugrave;ng 360&reg; ( C&ocirc;ng ty cổ phần thời trang 360) nh&eacute;.</p>\r\n\r\n<p><strong>Nguồn:&nbsp;<a href=\"https://kenh14.vn/mua-he-them-chat-voi-nhung-san-pham-dinh-tu-bst-spirit-squad-cua-thuong-hieu-thoi-trang-nam-360-20230418202808055.chn\">https://kenh14.vn/</a></strong></p>', '1685608795blog2.webp', 'mua-he-them-chat-voi-bst-spirit-squad-cua-thuong-hieu-thoi-trang-360', '2023-06-01 08:39:55', '2023-06-01 08:40:36'),
(4, 'AUTUMN REMINDERS | FALL WINTER COLLECTION 2022', '<p>Wabi l&agrave; c&aacute;i đẹp của sự mộc mạc, giản đơn v&agrave; h&agrave;i h&ograve;a với thi&ecirc;n nhi&ecirc;n, Sabi l&agrave; vẻ đẹp to&aacute;t ra từ sự điềm nhi&ecirc;n, tĩnh lặng. Wabi-Sabi theo văn h&oacute;a Nhật Bản l&agrave; t&igrave;m kiếm những thứ kh&ocirc;ng ho&agrave;n hảo, t&ocirc;n vinh những thứ cũ kỹ v&agrave; v&ocirc; thường. Tư tưởng ấy khiến ch&uacute;ng ta nhận biết gi&aacute; trị của lối sống đơn giản v&agrave; thuận tự nhi&ecirc;n, t&igrave;m kiếm vẻ đẹp trong sự kh&ocirc;ng ho&agrave;n hảo.</p>\r\n\r\n<p><a href=\"https://360.com.vn/wp-content/uploads/2022/05/ANHTK304-SKDTK340-QGNTK308-ANHTK306-ATDTK302-QGNTK306-11-scaled.jpg\"><img alt=\"\" src=\"https://360.com.vn/wp-content/uploads/2022/05/ANHTK304-SKDTK340-QGNTK308-ANHTK306-ATDTK302-QGNTK306-11-scaled.jpg\" style=\"height:2560px; width:1707px\" /></a></p>\r\n\r\n<p>Trong thời kỳ &ldquo;b&igrave;nh thường mới&rdquo;, c&aacute;c nam thanh ni&ecirc;n đ&atilde; trải qua nhiều biến động của dịch bệnh, kinh tế v&agrave; x&atilde; hội. Họ c&oacute; c&aacute;i nh&igrave;n với cuộc sống s&acirc;u sắc, ch&iacute;n chắn v&agrave; điềm tĩnh hơn chấp nh&acirc;n thực tại v&agrave; nh&igrave;n ra được những điều t&iacute;ch cực trong những mớ hỗn độn đang tồn tại ở hiện thực.</p>\r\n\r\n<p><a href=\"https://360.com.vn/wp-content/uploads/2022/05/SKDTK340-ATDTK305-QGKTK305-ANTTK303-QGNTK306-2-scaled.jpg\"><img alt=\"\" src=\"https://360.com.vn/wp-content/uploads/2022/05/SKDTK340-ATDTK305-QGKTK305-ANTTK303-QGNTK306-2-scaled.jpg\" style=\"height:2560px; width:1707px\" /></a></p>\r\n\r\n<p><a href=\"https://360.com.vn/wp-content/uploads/2022/05/ADLTK302-ANTTK303-ADLTK301-SHDTK339-QKLTK310-3-scaled.jpg\"><img alt=\"\" src=\"https://360.com.vn/wp-content/uploads/2022/05/ADLTK302-ANTTK303-ADLTK301-SHDTK339-QKLTK310-3-scaled.jpg\" style=\"height:2560px; width:1707px\" /></a></p>\r\n\r\n<p><a href=\"https://360.com.vn/wp-content/uploads/2022/05/BZTK303-STDTK328-QKLTK310-4-scaled.jpg\"><img alt=\"\" src=\"https://360.com.vn/wp-content/uploads/2022/05/BZTK303-STDTK328-QKLTK310-4-scaled.jpg\" style=\"height:1707px; width:2560px\" /></a></p>\r\n\r\n<p>Những thanh ni&ecirc;n trẻ c&oacute; hơi hướng cổ điển, nh&igrave;n nhận thực tại v&agrave; lu&ocirc;n tin rằng mọi sự vật, sự việc hay con người n&agrave;o đ&oacute; ở b&ecirc;n cạnh m&igrave;nh trong mọi ho&agrave;n cảnh d&ugrave; ra sao cũng sẽ mang lại được điều t&iacute;ch cực n&agrave;o đ&oacute; cho bản th&acirc;n.</p>', '1685609014blog3.jpg', 'autumn-reminders-fall-winter-collection-2022', '2023-06-01 08:43:34', '2023-06-01 08:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(14, 2, 4, 1, 240000, '2023-05-31 08:31:46', '2023-05-31 09:05:10'),
(15, 2, 3, 1, 150000, '2023-05-31 09:02:38', '2023-05-31 09:05:10'),
(17, 4, 6, 2, 798000, '2023-06-01 08:51:06', '2023-06-01 08:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Quần', 'quan', '2023-04-19 13:36:34', '2023-04-19 13:36:34'),
(2, 'Áo', 'ao', '2023-04-19 13:36:34', '2023-04-19 13:36:34'),
(3, 'Phụ kiện', 'phu-kien', '2023-04-19 13:36:34', '2023-04-19 13:36:34'),
(5, 'Giày', 'giay', '2023-06-01 08:03:55', '2023-06-01 08:03:55'),
(6, 'Khuyến mãi', 'khuyen-mai', '2023-06-01 08:05:02', '2023-06-01 08:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `created_at`, `updated_at`, `email`, `name`, `message`) VALUES
(2, '2023-06-01 09:06:47', '2023-06-01 09:06:47', 'test@gmail.com', 'test', 'đasad');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_18_032338_create_admins_table', 1),
(6, '2022_10_18_161422_create_products_table', 1),
(7, '2022_10_19_014223_create_categories_table', 1),
(8, '2022_10_19_015030_create_product_category_table', 1),
(9, '2022_10_19_024918_create_variant_product_table', 1),
(10, '2022_10_19_025732_create_blogs_table', 1),
(11, '2022_10_19_033252_create_contact_table', 1),
(12, '2022_10_23_202755_add_column_to_products_table', 1),
(13, '2022_10_25_160010_create_carts_table', 1),
(14, '2022_10_26_161606_create_order_table', 1),
(15, '2022_10_28_141842_add_column_to_orders_table', 1),
(16, '2022_10_30_140344_add_column_brand_to_products_table', 1),
(17, '2022_11_01_103732_add_column_to_contact_table', 1),
(18, '2022_11_01_130047_add_column_slug_and_thumbnail_to_blogs_table', 1),
(19, '2022_11_20_195010_create_product_images_table', 1),
(20, '2023_02_06_220857_create_permissions_table', 1),
(21, '2023_02_06_220925_create_roles_table', 1),
(22, '2023_02_06_223652_create_permission_role_table', 1),
(23, '2023_02_06_223926_create_role_admin_table', 1),
(24, '2023_05_30_134618_create_payments_table', 2),
(25, '2023_05_31_094438_add_column_phone_and_address_to_table_orders', 3),
(26, '2023_05_31_152430_change_type_column_description_table_products', 4),
(27, '2023_05_31_170002_add_column_avatar_to_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `type_payment` int(11) DEFAULT NULL,
  `order_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`order_detail`)),
  `order_total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `address`, `phone`, `status`, `type_payment`, `order_detail`, `order_total`, `created_at`, `updated_at`) VALUES
(6, 'eb60d967-0155-4e2b-abec-b938b0f38dcd', 2, 'Ha Noi', '0367905251', 0, 2, '[{\"product_id\":4,\"total\":240000,\"quantity\":1},{\"product_id\":3,\"total\":150000,\"quantity\":1}]', 390000, '2023-05-31 05:31:28', '2023-05-31 05:31:28'),
(8, '8b737652-72ce-4edc-b869-5324bfba46f6', 2, 'Ha Noi', '0367905251', 0, 1, '[{\"product_id\":4,\"total\":240000,\"quantity\":1}]', 240000, '2023-05-31 06:03:30', '2023-05-31 06:03:30'),
(9, 'dfb1a660-4fee-4434-80ad-e611c13647a7', 3, 'HÀ nội', '0123456789', 0, 2, '[{\"product_id\":4,\"total\":480000,\"quantity\":2}]', 480000, '2023-06-01 06:42:57', '2023-06-01 06:42:57'),
(10, '9b43da21-6f95-47ff-96ed-d85ba6bb1421', 5, 'HCM', '0123456289', 1, 2, '[{\"product_id\":6,\"total\":798000,\"quantity\":2}]', 798000, '2023-06-01 09:05:41', '2023-06-01 09:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `display_name`, `name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'Xem danh sách sản phẩm', 'product_view', 'Quản lý sản phẩm', NULL, NULL),
(2, 'Tạo mới sản phẩm', 'product_store', 'Quản lý sản phẩm', NULL, NULL),
(3, 'Chỉnh sửa sản phẩm', 'product_update', 'Quản lý sản phẩm', NULL, NULL),
(4, 'Xóa sản phẩm', 'product_delete', 'Quản lý sản phẩm', NULL, NULL),
(5, 'Xem danh sách danh mục sản phẩm', 'category_view', 'Quản lý danh mục sản phẩm', NULL, NULL),
(6, 'Tạo mới danh mục sản phẩm', 'category_store', 'Quản lý danh mục sản phẩm', NULL, NULL),
(7, 'Chỉnh sửa danh mục sản phẩm', 'category_update', 'Quản lý danh mục sản phẩm', NULL, NULL),
(8, 'Xóa danh mục sản phẩm', 'category_delete', 'Quản lý danh mục sản phẩm', NULL, NULL),
(9, 'Xem danh sách blog', 'blog_view', 'Quản lý blog', NULL, NULL),
(10, 'Tạo mới blog', 'blog_store', 'Quản lý blog', NULL, NULL),
(11, 'Chỉnh sửa blog', 'blog_update', 'Quản lý blog', NULL, NULL),
(12, 'Xóa blog', 'blog_delete', 'Quản lý blog', NULL, NULL),
(13, 'Xem danh sách nhân viên', 'staff_view', 'Quản lý nhân viên', NULL, NULL),
(14, 'Thêm mới nhân viên', 'staff_store', 'Quản lý nhân viên', NULL, NULL),
(15, 'Chỉnh sửa thông tin nhân viên', 'staff_update', 'Quản lý nhân viên', NULL, NULL),
(16, 'Xóa nhân viên', 'staff_delete', 'Quản lý nhân viên', NULL, NULL),
(17, 'Xem danh sách role', 'role_view', 'Quản lý role', NULL, NULL),
(18, 'Thêm mới role', 'role_store', 'Quản lý role', NULL, NULL),
(19, 'Chỉnh sửa role', 'role_update', 'Quản lý role', NULL, NULL),
(20, 'Xóa role', 'role_delete', 'Quản lý role', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `description`, `slug`, `price`, `discount`, `thumbnail`, `created_at`, `updated_at`) VALUES
(3, 'Áo Polo', 'gucci', '– Chất liệu: SINGER JERSEY\r\n– Đặc tính: 100% COTTON\r\n– Phom: RELAX\r\n– Màu: TRẮNG,ĐEN,BE\r\n– Size: S-XL\r\n– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', 'ao-polo', 365000, 50, '1685607758ao-p-1.jpg', '2023-05-30 03:22:05', '2023-06-01 08:22:38'),
(4, 'Áo phông', 'channel', '– Chất liệu: SINGER JERSEY  (100% COTTON)\r\n– Dáng: RELAX\r\n– Đặc tính: Mềm mại, co giãn tốt, có độ thấm hút mồ hôi và hút ẩm cao, thoáng mát.\r\n– Màu: XANH LÁ CÂY,ĐEN\r\n– Size: S-XL\r\n+ Hướng dẫn sử dụng:\r\n– Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n– Không được dùng hóa chất tẩy.\r\n– Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.\r\n– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống.\r\n<br>\r\nHƯỚNG DẪN CHỌN SIZE\r\nSize M: 50-57kg / Cao 1m53 – 1m68\r\nSize L: 58-64kg / Cao 1m57 – 1m70\r\nSize XL: 65-70kg / Cao 1m66 – 1m76\r\nSize XXL: 71-76kg / Cao 1m70 – 1m85.\r\nTùy mỗi người thích body hoặc vừa người thì tăng hoặc giảm 1 size, chỉ số trên là tương đối mặc', 'ao-phong', 295000, NULL, '1685607104ao-polo-1.jpg', '2023-05-30 07:14:32', '2023-06-01 08:12:33'),
(5, 'Áo sơ mi', '360', '– Chất liệu: MODAL\r\n– Đặc tính: 50% POLY,35% MODAL,25% COTTON\r\n– Kiểu dáng: SLIM FIT\r\n– Màu sắc: XANH DA TRỜI,TRẮNG\r\n– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', 'ao-so-mi', 479000, NULL, '1685607936ao-so-mi-1.jpg', '2023-06-01 08:25:36', '2023-06-01 08:25:36'),
(6, 'Áo sơ mi ngắn', '360', '– Chất liệu: THÔ COTTON\r\n– Đặc tính: 100% COTTON\r\n– Kiểu dáng: RELAX\r\n– Màu sắc: TRẮNG,XANH RÊU,BE\r\n– Sản phẩm đã có mặt ở toàn bộ các cửa hàng trên hệ thống', 'ao-so-mi-ngan', 399000, 10, '1685608142ao-sn-1.jpg', '2023-06-01 08:29:02', '2023-06-01 08:29:02'),
(7, 'Quần âu', '360', '– Chất liệu: TUYTSI KẺ (80% Tylen, 20% Rayon)\r\n– Đặc tính:  Co dãn thoáng mát\r\n– Màu sắc: ĐEN,BE\r\n– Kiểu dáng: TAPERED\r\n– Size: 29-30-31-32-34', 'quan-au', 475000, NULL, '1685608420quan-au-4.jpg', '2023-06-01 08:33:40', '2023-06-01 08:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(4, 2),
(3, 2),
(5, 2),
(6, 2),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, '1682005214icon-1-service.png', NULL, NULL),
(2, 1, '1682005214icon-2-service.png', NULL, NULL),
(3, 1, '1682005214icon-3-service.png', NULL, NULL),
(4, 1, '1682005214icon-4-service.png', NULL, NULL),
(9, 4, '1685607101ao-po-2.jpg', NULL, NULL),
(10, 4, '1685607101ao-po-3.jpg', NULL, NULL),
(11, 4, '1685607101ao-polo.jpg', NULL, NULL),
(12, 4, '1685607101ao-polo-1.jpg', NULL, NULL),
(13, 3, '1685607752ao-p-1.jpg', NULL, NULL),
(14, 3, '1685607752ao-p-2.jpg', NULL, NULL),
(15, 3, '1685607753ao-p-3.jpg', NULL, NULL),
(16, 3, '1685607753ao-p-4.jpg', NULL, NULL),
(17, 5, '1685607934ao-so-mi-1.jpg', NULL, NULL),
(18, 5, '1685607934ao-so-mi-2.jpg', NULL, NULL),
(19, 5, '1685607934ao-so-mi-3.jpg', NULL, NULL),
(20, 5, '1685607934ao-so-mi-4.jpg', NULL, NULL),
(21, 6, '1685608140ao-sn-1.jpg', NULL, NULL),
(22, 6, '1685608140ao-sn-2.jpg', NULL, NULL),
(23, 6, '1685608140ao-sn-3.jpg', NULL, NULL),
(24, 6, '1685608140ao-sn-4.jpg', NULL, NULL),
(25, 7, '1685608415quan-au-1.jpg', NULL, NULL),
(26, 7, '1685608415quan-au-2.jpg', NULL, NULL),
(27, 7, '1685608415quan-au-3.jpg', NULL, NULL),
(28, 7, '1685608416quan-au-4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `display_name`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'super_admin', NULL, NULL),
(2, 'Nhân viên', 'nhan_vien', '2023-04-23 03:20:41', '2023-04-23 03:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_admin`
--

CREATE TABLE `role_admin` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_admin`
--

INSERT INTO `role_admin` (`role_id`, `admin_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ho ten', 'user1@gmail.com', 'hà nội', '0123456789', NULL, NULL, '$2y$10$icb3Ppf5clfruazhZ7/rBek2TgcK3yHc9eEsvhVb.YbAGDOc7st3q', NULL, '2023-04-20 15:34:34', '2023-04-20 15:34:34'),
(2, 'test', 'test@gmail.com', 'Ha Noi', '0367905251', NULL, NULL, '$2y$10$UUFi3mlJb0Dizmh2xaw9f.5w9sFvSZbkV87kqRGyBG91zLC8JmBAi', NULL, '2023-05-30 03:23:46', '2023-05-31 10:49:52'),
(3, 'test1', 'test1@gmail.com', 'HÀ nội', '0123456789', NULL, NULL, '$2y$10$nlciS3NF8MFR/GjrQAMv6.8JliuycJvO3KfgVjctpsC7N9hxUzi1y', NULL, '2023-06-01 06:41:36', '2023-06-01 06:46:12'),
(4, 'test2', 'test2@gmail.com', 'hn', '0123456789', NULL, NULL, '$2y$10$1yF0S4NFmLTt736slTrvCOiuDMcVkvoKj9CGuuX0IT56.kjfXytJG', NULL, '2023-06-01 08:50:46', '2023-06-01 08:50:46'),
(5, 'test5', 'test3@gmail.com', 'hcm', '0123456789', '1685610384ao-p-1.jpg', NULL, '$2y$10$fv36ZIeoApvIaYrbqP0PQe8NLf3MD4n9UTbUU7QVbDDSPhEyBT3YO', NULL, '2023-06-01 09:04:07', '2023-06-01 09:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `variant_product`
--

CREATE TABLE `variant_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `product_category_product_id_foreign` (`product_id`),
  ADD KEY `product_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD KEY `role_admin_role_id_foreign` (`role_id`),
  ADD KEY `role_admin_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variant_product`
--
ALTER TABLE `variant_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_product_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `variant_product`
--
ALTER TABLE `variant_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_admin`
--
ALTER TABLE `role_admin`
  ADD CONSTRAINT `role_admin_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_admin_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_product`
--
ALTER TABLE `variant_product`
  ADD CONSTRAINT `variant_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
