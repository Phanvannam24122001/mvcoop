-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2022 lúc 03:11 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(200) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Admin', 'NamAdmin', 'phanvannam03031@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(10) NOT NULL,
  `binhluan` varchar(40) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`) VALUES
(9, 'nam', 'thông tin bổ ích', 28),
(14, 'nam', 'zsczCZC', 29),
(15, 'nam', 'hay quá', 32),
(16, 'nam', 'thuận bê đê\r\n', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_blogs` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `name`, `product_desc`, `image`, `date_blogs`) VALUES
(11, 'ĐEO ĐỒNG HỒ NAM ĐÚNG CÁCH', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Con trai đeo đồng hồ tay n&agrave;o ph&ugrave; hợp nhất</p>\r\n<p>C&oacute; lẽ nhiều người c&ograve;n băn khoăn kh&ocirc;ng biết con trai n&ecirc;n đeo đồng hồ tay n&agrave;o ph&ugrave; hợp v&agrave; thuận tiện nhất.</p>\r\n<p><img src=\"https://blogdongho.net/uploads/deo-dong-ho-nam-dung-cach-blogdongho-02_1621245575.jpg\" alt=\"deo-dong-ho-nam-dung-cach-blogdongho\" width=\"100%\" /></p>\r\n<p>C&oacute; nhiều &yacute; kiến cho rằng con trai chỉ n&ecirc;n đeo đồng hồ tay tr&aacute;i, c&oacute; nhiều &yacute; kiến cho rằng n&ecirc;n đeo đồng hồ tay phải mới thực sự phong c&aacute;ch v&agrave; đẳng cấp. Việc con trai đeo đồng hồ tay n&agrave;o vẫn l&agrave; một vấn đề g&acirc;y tranh c&atilde;i.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Con trai đeo đồng hồ tay n&agrave;o phụ thuộc v&agrave;o việc bạn thuận tay n&agrave;o. Đeo đồng hồ tay tr&aacute;i hay phải ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; &yacute; nghĩa đặc biệt ảnh hưởng tới đẳng cấp của người đeo đồng hồ.&nbsp;</p>\r\n<p><img src=\"https://blogdongho.net/uploads/deo-dong-ho-nam-dung-cach-blogdongho-02_1621245575.jpg\" alt=\"deo-dong-ho-nam-dung-cach-blogdongho\" width=\"100%\" height=\"100%\" /></p>\r\n<p>deo-dong-ho-nam-dung-cach-blogdongho(Ảnh b&agrave;i viết: Đeo đồng hồ nam đ&uacute;ng c&aacute;ch - Nguồn: Internet)</p>\r\n<p>&nbsp;</p>\r\n<p>Theo số liệu thống k&ecirc; tr&ecirc;n thế giới, c&oacute; 86% người đeo đồng hồ v&agrave;o tay tr&aacute;i (thuận tay phải) v&agrave; 14% c&ograve;n lại đeo đồng hồ v&agrave;o tay phải (thuận tay tr&aacute;i). Điều đ&oacute; cũng l&yacute; giải rằng, bạn h&atilde;y đeo đồng hồ tay kh&ocirc;ng thuận để tr&aacute;nh g&acirc;y vướng v&iacute;u khi cử động hoặc l&agrave;m việc, đặc biệt c&aacute;c c&ocirc;ng việc li&ecirc;n quan đến soạn thảo văn bản, sử dụng chuột m&aacute;y t&iacute;nh, viết tay.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tuy nhi&ecirc;n, việc con trai đeo đồng hồ tay n&agrave;o phụ thuộc một phần nhỏ v&agrave;o văn h&oacute;a của đất nước. Ở Việt Nam hay c&aacute;c nước kh&aacute;c tr&ecirc;n thế giới đ&agrave;n &ocirc;ng đeo đồng hồ tay n&agrave;o đều kh&ocirc;ng ảnh hưởng qu&aacute; nhiều. Tuy nhi&ecirc;n nền văn h&oacute;a của người Ireland chỉ định việc đeo trang sức/phụ kiện (bao gồm đồng hồ đeo tay) n&ecirc;n đeo ở vị tr&iacute; tay phải.</p>\r\n<p>&nbsp;</p>\r\n<p>Thiết kế đeo tay của đồng hồ</p>\r\n<p>Con trai đeo đồng hồ tay n&agrave;o cũng kh&ocirc;ng ảnh hưởng qu&aacute; nhiều. Tuy nhi&ecirc;n, một sự thật về thiết kế đồng hồ l&agrave; 99% thiết kế đồng hồ đem lại thuận tiện cho người đeo tay tr&aacute;i.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>deo-dong-ho-nam-dung-cach-blogdongho(Ảnh b&agrave;i viết: Đeo đồng hồ nam đ&uacute;ng c&aacute;ch - Nguồn: Internet)</p>\r\n<p>&nbsp;</p>\r\n<p>Thiết kế kh&aacute;c biệt giữa 2 d&ograve;ng đồng hồ d&agrave;nh cho tay tr&aacute;i v&agrave; tay phải phụ thuộc v&agrave;o n&uacute;m điều chỉnh đặt tại vị tr&iacute; 3 giờ. C&aacute;c d&ograve;ng đồng hồ đeo tay tr&aacute;i sẽ thiết kế n&uacute;m đồng hồ b&ecirc;n phải mặt đồng hồ để bạn c&oacute; thể dễ d&agrave;ng điều chỉnh. Những đồng hồ thiết kế đeo tay phải sẽ c&oacute; nguy&ecirc;n l&yacute; ngược lại. H&atilde;y ch&uacute; &yacute; về chi tiết nhỏ n&agrave;y để chọn chiếc đồng hồ ph&ugrave; hợp với tay thuận của m&igrave;nh nh&eacute;.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Bạn c&oacute; thể thấy rằng con trai đeo đồng hồ tay n&agrave;o ho&agrave;n to&agrave;n kh&ocirc;ng ảnh hưởng tới phong c&aacute;ch của người sở hữu. Tuy nhi&ecirc;n, khi đeo đồng hồ, h&atilde;y ch&uacute; &yacute; tới một v&agrave;i chi tiết về c&aacute;ch đeo đồng hồ nam đ&uacute;ng c&aacute;ch tại mục tiếp theo để tăng sự tinh tế, phong c&aacute;ch, lịch l&atilde;m nh&eacute;!</p>\r\n<p>&nbsp;</p>\r\n<p>Đeo đồng hồ nam đ&uacute;ng c&aacute;ch</p>\r\n<p>&nbsp;Kh&ocirc;ng n&ecirc;n đeo đồng hồ mặt qu&aacute; to: Đeo đồng hồ mặt qu&aacute; to so với cổ tay thường tạo cho người đối diện cảm gi&aacute;c cồng kềnh v&agrave; thiếu thẩm mỹ. Th&ocirc;ng thường với cổ tay của nam giới n&ecirc;n đeo đồng hồ k&iacute;ch thước mặt khuyến nghị từ 34mm - 50mm (Đẹp nhất trong khoảng 34mm - 40mm).&nbsp;</p>\r\n<p>&nbsp;Đeo đồng hồ với vị tr&iacute; mặt đồng hồ đặt cạnh xương trụ cổ tay. Điều n&agrave;y rất thẩm mỹ khi đồng hồ được lộ vị tr&iacute; qua ống tay &aacute;o v&eacute;c hoặc &aacute;o sơ mi d&agrave;i tr&ocirc;ng rất sang trọng v&agrave; lịch sự.</p>\r\n<p>&nbsp;N&ecirc;n đeo d&acirc;y đồng hồ vừa vặn với cổ tay. Bạn kh&ocirc;ng n&ecirc;n đeo s&aacute;t qu&aacute; sẽ khiến để lại dấu vết tr&ecirc;n cổ tay hoặc qu&aacute; lỏng khiến đồng hồ tr&ocirc;ng kh&aacute; vướng v&iacute;u.&nbsp;</p>\r\n<p>deo-dong-ho-nam-dung-cach-blogdongho(Ảnh b&agrave;i viết: Đeo đồng hồ nam đ&uacute;ng c&aacute;ch - Nguồn: Internet)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&gt;&gt; Xem th&ecirc;m: C&aacute;ch chọn đồng hồ ph&ugrave; hợp cho nam giới</p>\r\n<p>&nbsp;</p>\r\n<p>Qua b&agrave;i viết th&igrave; c&aacute;c bạn đừng lăn tăn về việc đeo đồng hồ tay tr&aacute;i hay tay phải nữa nha. Bạn chọn được chiếc đồng hồ ph&ugrave; hợp v&agrave; đeo ch&uacute;ng sao cho thoải m&aacute;i tự tin l&agrave; qu&aacute; chuẩn rồi</p>\r\n</body>\r\n</html>', 'f9adf58626.jpg', '2022-01-01 00:00:00'),
(12, 'PHÁI MẠNH NÊN CÓ GÌ TRONG TỦ?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\">C&agrave; vạt</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Sự c&oacute; mặt của chiếc c&agrave; vạt kh&ocirc;ng c&ograve;n xa lạ, đối với những người l&agrave;m kinh doanh th&igrave; quả l&agrave; cần thiết. N&oacute; gi&uacute;p tăng sự lịch l&atilde;m, chỉnh chu trong việc gặp kh&aacute;ch h&agrave;ng, đối t&aacute;c.&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Việc chọn c&agrave; vạt ta cần ch&uacute; &yacute; đến bề rộng, chất liệu v&agrave; đặc biệt l&agrave; m&agrave;u sắc ph&ugrave; hợp với trang phục sử dụng. Tr&aacute;nh trường hợp \'\'r&acirc;u &ocirc;ng n&agrave;y cắm cằm b&agrave; kia\'\'.</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><a id=\"khan_tay\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Khăn tay/khăn m&ugrave;i xoa</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Đối với m&oacute;n phụ kiện n&agrave;y th&igrave; m&igrave;nh hay thấy những người đứng tuổi sử dụng nhiều. Nhưng m&igrave;nh th&igrave; cũng hay chảy mồ h&ocirc;i n&ecirc;n m&oacute;n n&agrave;y cũng rất quen thuộc :))&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Ở những bạn nhạy cảm với thời tiết th&igrave; hiện tượng khụt khịt mũi cũng dễ xảy ra th&igrave; chắc cũng kh&ocirc;ng xa lạ.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">C&ograve;n th&ecirc;m v&agrave;o đ&oacute; l&agrave; khi ph&aacute;i mạnh ta tham gia những bữa tiệc sang trọng th&igrave; những chi tiết, phụ kiện nhỏ sẽ gi&uacute;p bạn được đ&aacute;nh gi&aacute; cao hơn rất nhiều.</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><a id=\"dong_ho\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Đồng hồ</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Ng&agrave;y nay đồng hồ kh&ocirc;ng đơn thuần l&agrave; chỉ để xem thời gian m&agrave; n&oacute; c&ograve;n l&agrave; vật trang sức, l&agrave; m&oacute;n phụ kiện gi&uacute;p người đeo tạo điểm nhấn thu h&uacute;t người đối diện hơn.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Đồng hồ nam, đồng hồ nữ, đồng hồ th&ocirc;ng minh...ngo&agrave;i những mẫu đồng hồ đ&oacute; th&igrave; với người th&iacute;ch sự cổ điển c&ograve;n c&oacute; th&ecirc;m sự lựa chọn như đồng hồ bỏ t&uacute;i.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">C&ugrave;ng với đ&oacute; đeo đồng hồ cũng gi&uacute;p bạn biết qu&yacute; trọng, tu&acirc;n thủ thời gian hơn.</span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><a id=\"mat_kinh\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Mắt k&iacute;nh</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">M&oacute;n phụ kiện n&agrave;y như vũ kh&iacute; chống lại c&aacute;c tia UV. M&agrave; gi&aacute; cả cũng nhiều loại n&ecirc;n c&aacute;c qu&yacute; &ocirc;ng cũng kh&ocirc;ng lo lắng về gi&aacute; th&agrave;nh.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Với những anh ch&agrave;ng th&iacute;ch c&aacute;c hoạt động ngo&agrave;i trời th&igrave; mắt k&iacute;nh đeo lại sự thể thao, cool ngầu hơn nữa nh&eacute;.</span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><a id=\"vi_tien\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>V&iacute;/b&oacute;p tiền</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Ngo&agrave;i việc để tiền th&igrave; c&ograve;n để c&aacute;c thẻ t&iacute;n dụng, ng&acirc;n h&agrave;ng, giấy tờ t&ugrave;y th&acirc;n. Nếu c&oacute; điều kiện th&igrave; cũng n&ecirc;n sỡ hữu cho m&igrave;nh những chiếc v&iacute; chất lượng tốt để tăng sự chỉnh chu, thanh lịch hơn.</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><a id=\"that_lung\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Thắt lưng</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Ngo&agrave;i việc giữ c&aacute;i quần cho khỏi tuột xuống th&igrave; c&ograve;n t&aacute;c dụng g&igrave; nữa nhỉ? :))) đ&ugrave;a th&ocirc;i, c&ograve;n nhỏ th&igrave; mới hay bị tuột th&ocirc;i chứ lớn rồi th&igrave; sao vậy được.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">C&aacute;nh đ&agrave;n &ocirc;ng th&igrave; việc giao tiếp trong kinh doanh th&igrave; ngo&agrave;i chỉnh chu từ trang phục th&igrave; c&ograve;n phải lịch sự trong việc chọn c&aacute;c m&oacute;n đồ đi k&egrave;m. N&ecirc;n nhớ chọn c&aacute;c mẫu thắt lưng ph&ugrave; hợp với trang phục tr&aacute;nh chọi nhau qu&aacute; nh&eacute;.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><a id=\"vo\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Vớ/tất</span></span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Những người trong miền Nam, thời tiết quanh năm nắng n&oacute;ng th&igrave; vớ len sẽ &iacute;t sử dụng nhưng thay v&agrave;o đ&oacute; l&agrave; những đ&ocirc;i vớ cotton tho&aacute;ng m&aacute;t.</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; color: #000000;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">C&aacute;c anh ch&agrave;ng cũng n&ecirc;n sắm cho m&igrave;nh một số mẫu vớ kh&aacute;c nhau để dễ d&agrave;ng phối với trang phục. Nhất l&agrave; những trang phục mang ph&oacute;ng c&aacute;ch đường phố th&igrave; việc mix với những kiểu vớ đẹp sẽ rất đ&aacute;ng ch&uacute; &yacute;.&nbsp;</span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\"><span style=\"box-sizing: border-box; color: #000000;\">Hay c&aacute;c qu&yacute; &ocirc;ng kh&ocirc;ng thể quần t&acirc;y m&agrave; lại k&egrave;m theo đ&ocirc;i vớ m&agrave;u sắc sặc sỡ được phải kh&ocirc;ng n&agrave;o.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><a id=\"khan_len\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>Khăn len</span></span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Khăn len sẽ rất ph&ugrave; hợp với anh em miền Bắc v&igrave; kh&iacute; hậu ở đ&oacute; sẽ c&oacute; những m&ugrave;a lạnh, n&ecirc;n ra đường cũng rất cần c&oacute; để cho&agrave;ng v&agrave;o cổ, giữ ấm cho cơ thể cũng như tăng được th&ecirc;m t&iacute;nh thời trang.&nbsp;</span></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><span style=\"box-sizing: border-box; font-size: 17.3333px;\">Nếu bạn l&agrave; người c&aacute; t&iacute;nh mạnh th&igrave; cũng n&ecirc;n thử với những chiếc khăn len m&agrave;u sắc nổi k&egrave;m họa tiết bắt mắt.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: #000000;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif;\"><a id=\"tui_deo\" style=\"box-sizing: border-box; background-color: transparent; color: #337ab7;\"></a>T&uacute;i đeo</span></span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">T&uacute;i đeo ch&eacute;o hay những t&uacute;i đeo nhỏ nhỏ th&igrave; rất hay thường thấy với những anh ch&agrave;ng chơi thể thao, c&aacute; t&iacute;nh. Nhưng kh&ocirc;ng chỉ thế m&agrave; nếu bạn l&agrave; người hay mang đồ linh tinh nhiều ra ngo&agrave;i th&igrave; cũng n&ecirc;n chọn cho m&igrave;nh một v&agrave;i c&aacute;i t&uacute;i đeo cho tiện nh&eacute;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Như m&igrave;nh ra ngo&agrave;i rất hay mang theo n&agrave;o l&agrave; sạc điện thoại, sạc dự ph&ograve;ng, khăn giấy, sổ... th&igrave; cực kỳ cần thiết lu&ocirc;n.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-family: helvetica, arial, sans-serif; font-size: 13pt; color: #000000;\">Qua b&agrave;i viết m&igrave;nh mong sẽ gi&uacute;p &iacute;ch cho bạn đọc, ngo&agrave;i ra m&igrave;nh cũng mong nhận được những g&oacute;p &yacute; từ mọi người để ho&agrave;n thiện tốt hơn trong c&aacute;c b&agrave;i viết tới.&nbsp;</span></p>\r\n</body>\r\n</html>', '808b08f91d.png', '2022-01-01 00:00:00'),
(13, 'MẸO CHỌN ĐỒNG HỒ CHO CÁC ANH CHÀNG CÔNG SỞ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><strong><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 15pt;\">Lựa chọn m&agrave;u sắc của Đồng hồ</span></strong></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Nếu trang phục l&agrave;m việc của bạn c&oacute; c&agrave; vạt, quần t&acirc;y, gi&agrave;y t&acirc;y th&igrave; ta n&ecirc;n lựa chọn m&agrave;u sắc đồng hồ tương đồng với m&agrave;u c&agrave; vạt hoặc m&agrave;u của gi&agrave;y.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Hay cũng c&oacute; thể chọn theo t&ocirc;ng m&agrave;u sắc của trang phục đang mang. Lưu &yacute; nhỏ: C&aacute;c ch&agrave;ng cần chọn m&agrave;u của đồng hồ đậm hơn hoặc nhạt hơn trang phục đang mang nh&eacute;, v&igrave; n&oacute; sẽ tạo điểm nhấn cho bạn.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: right;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin-left: auto; margin-right: auto;\" src=\"http://blogdongho.net/uploads/lua_chon_mau_sac_dong_ho_blogdongho_1601471391.jpg\" alt=\"MẸO CHỌN ĐỒNG HỒ CHO C&Aacute;C ANH CH&Agrave;NG C&Ocirc;NG SỞ\" width=\"100%\" /></span><span style=\"box-sizing: border-box; font-size: 10pt; color: #000000; font-family: helvetica, arial, sans-serif;\"><em style=\"box-sizing: border-box;\">(Ảnh: Lựa chọn m&agrave;u sắc của đồng hồ - Nguồn ảnh: Internet)</em></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 18pt; color: #000000; font-family: helvetica, arial, sans-serif;\"><a id=\"lua_chon_day_dong_ho\" style=\"box-sizing: border-box; background-color: transparent;\"></a><span style=\"box-sizing: border-box; font-size: 15pt;\">Lựa chọn d&acirc;y Đồng hồ</span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Nếu trang phục của bạn l&agrave; quần t&acirc;y, &aacute;o sơ mi th&igrave; đồng hồ d&acirc;y da l&agrave; sự lựa chọn tốt nhất. Tạo sự lịch l&atilde;m v&agrave; sang trọng cho người d&ugrave;ng.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Nếu trang phục của bạn thoải m&aacute;i, quần jean, &aacute;o ph&ocirc;ng th&igrave; đồng hồ c&oacute; d&acirc;y vải quả l&agrave; sự lựa chọn kh&ocirc;ng tồi. N&oacute; sẽ gi&uacute;p bạn th&ecirc;m phần c&aacute; t&iacute;nh v&agrave; năng động.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">C&ograve;n đối với một số người đứng tuổi (tr&ecirc;n 30) th&igrave; n&ecirc;n lựa chọn cho m&igrave;nh chiếc đồng hồ d&acirc;y kim loại. V&igrave; điều đ&oacute; sẽ tạo cảm gi&aacute;c cho người đeo th&ecirc;m chững chạc v&agrave; điềm đạm.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: right;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin-left: auto; margin-right: auto;\" src=\"http://blogdongho.net/uploads/lua_chon_day_dong_ho_blogdongho_1601471391.jpg\" alt=\"MẸO CHỌN ĐỒNG HỒ CHO C&Aacute;C ANH CH&Agrave;NG C&Ocirc;NG SỞ\" width=\"100%\" /></span><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><span style=\"box-sizing: border-box; font-size: 10pt;\"><em style=\"box-sizing: border-box;\">(Ảnh: Lựa chọn d&acirc;y đồng hồ - Nguồn ảnh: Internet)</em></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 18pt;\"><a id=\"chuyen_cong_tac\" style=\"box-sizing: border-box; background-color: transparent;\"></a><span style=\"box-sizing: border-box; font-size: 15pt;\"><span style=\"box-sizing: border-box;\">Chọn Đồng hồ cho những chuyến c&ocirc;ng t&aacute;c</span></span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Những chiếc đồng hồ bằng th&eacute;p hay v&agrave;ng (mạ v&agrave;ng...) sẽ l&agrave; lựa chọn đầu ti&ecirc;n. N&oacute; sẽ đem lại cho bạn sự nổi bật v&agrave; h&uacute;t &aacute;nh nh&igrave;n của người đối diện. Nhưng nhớ lưu &yacute; m&agrave;u sắc phải h&agrave;i h&ograve;a với trang phục nh&eacute;.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: right;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin-left: auto; margin-right: auto;\" src=\"http://blogdongho.net/uploads/lua_chon_cho_cong_tac_blogdongho_1601471391.jpg\" alt=\"MẸO CHỌN ĐỒNG HỒ CHO C&Aacute;C ANH CH&Agrave;NG C&Ocirc;NG SỞ\" width=\"100%\" /></span><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><span style=\"box-sizing: border-box; font-size: 10pt;\"><em style=\"box-sizing: border-box;\">(Ảnh: Lựa chọn đồng hồ cho chuyến c&ocirc;ng t&aacute;c- Nguồn ảnh: Internet)</em></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Lato, sans-serif; line-height: 24px; color: #333333; margin: 0px 0px 15px; font-size: 18px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 15pt;\"><a id=\"su_kien_trang_trong\" style=\"box-sizing: border-box; background-color: transparent;\"></a><span style=\"box-sizing: border-box;\">Chọn Đồng hồ cho sự kiện trang trọng</span></span></h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Tại c&aacute;c sự kiện trang trọng th&igrave; bạn n&ecirc;n chọn cho m&igrave;nh những chiếc đồng hồ tinh tế v&agrave; k&iacute;n đ&aacute;o, với mặt số nhỏ v&agrave; mỏng để đủ trượt ra khỏi cổ tay &aacute;o bạn. Kh&ocirc;ng n&ecirc;n chọn đồng hồ với m&agrave;u sắc sặc sở, thay v&agrave;o đ&oacute; h&atilde;y chọn những loại cổ điển, d&acirc;y da, vỏ bọc bằng th&eacute;p hoặc bạc, mặt đồng hồ tối m&agrave;u v&agrave; c&ugrave;ng với những chi tiết nhỏ tinh tế.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: right;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; display: block; margin-left: auto; margin-right: auto;\" src=\"http://blogdongho.net/uploads/chon_cho_suu_kien_blogdongho_1601471391.jpg\" alt=\"MẸO CHỌN ĐỒNG HỒ CHO C&Aacute;C ANH CH&Agrave;NG C&Ocirc;NG SỞ\" width=\"100%\" /></span><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\"><span style=\"box-sizing: border-box; font-size: 10pt;\"><em style=\"box-sizing: border-box;\">(Ảnh: Lựa chọn đồng hồ cho sự kiện - Nguồn ảnh: Internet)</em></span></span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 18px; font-size: 14px; color: #666666; font-family: Lato, sans-serif; line-height: 20px; padding: 0px 20px; background-color: #ffffff; text-align: justify;\"><span style=\"box-sizing: border-box; color: #000000; font-family: helvetica, arial, sans-serif; font-size: 13pt;\">Qua b&agrave;i viết n&agrave;y, mong sẽ gi&uacute;p &iacute;ch một phần n&agrave;o cho c&aacute;c anh ch&agrave;ng c&ocirc;ng sợ lựa chọn cho m&igrave;nh được chiếc đồng hồ để phối đồ tăng th&ecirc;m phần tự tin l&agrave; h&uacute;t &aacute;nh nh&igrave;n.</span></p>\r\n</body>\r\n</html>', 'cff0ff3464.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(12, 'Louis Vuitton'),
(13, 'Chanel'),
(14, 'Hermes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 27, 'g5usvb3lopnpbd7ep2uvkh7n2d', 'bán nhật trinh', '2000000', 2, '61af55b6ac.png'),
(2, 25, '9svu5qdqju6ll1iubr05mna77l', 'điện thoại', '200000', 1, '68d19e5b84.jpg'),
(3, 28, '9svu5qdqju6ll1iubr05mna77l', 'NĂM', '200000', 3, '04973f76e2.jpg'),
(10, 28, 'kil6tp58gicc8r47ih8kind8gk', 'Đồng hồ Atlantic Swiss AT-52780.41.61', '200000', 1, 'f7c08501b3.jpg'),
(14, 28, 'gtrk9nbm433l49i9l0r0v4e1dj', 'Đồng hồ Atlantic Swiss AT-52780.41.61', '200000', 8, 'f7c08501b3.jpg'),
(15, 28, 'iddke9uhkkrb7hp4h3cb6ebc2r', 'Đồng hồ Atlantic Swiss AT-52780.41.61', '200000', 1, 'f7c08501b3.jpg'),
(44, 28, 'a3m77q3knlvvis0etjmp6b6m9o', 'Đồng hồ Atlantic ', '200000', 1, 'f7c08501b3.jpg'),
(47, 28, '', 'Đồng hồ Atlantic ', '200000', 1, 'f7c08501b3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Casio'),
(2, 'sony');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'văn năm', 'tổ 14 thôn 6 bình tú ', 'dđ', 'na', '323', '32222222', 'phanvannam03031@gmail.com', '9573a2e9f1a1b0b7c224eee12acc2445'),
(2, 'namphan', 'tổ 14 thôn 6 bình tú ', 'đà nẵng', 'hcm', '323dgsdg', '32222222', 'phanvannam123@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(3, 'nam', 'tổ 14 thôn 6 bình tú ', 'dđ', 'hn', '323', '32222222', 'phanvannam030312@gmail.com', '9573a2e9f1a1b0b7c224eee12acc2445'),
(4, 'namphan', 'tổ 14 thôn 6 bình tú thăng bình', 'đà nẵng', 'na', '323', '0702792897', 'phanvannam030311213@gmail.com', '9573a2e9f1a1b0b7c224eee12acc2445');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(122, 28, 'Đồng hồ Atlantic ', 4, 11, '2200000', 'f7c08501b3.jpg', 2, '2021-12-29 20:40:54'),
(123, 28, 'Đồng hồ Atlantic ', 4, 12, '2400000', 'f7c08501b3.jpg', 2, '2021-12-29 21:30:54'),
(124, 32, 'điện thoại', 4, 1, '200000', '6db4404c99.jpg', 2, '2021-12-29 23:36:24'),
(125, 32, 'điện thoại', 1, 2, '400000', '6db4404c99.jpg', 1, '2021-12-30 14:45:06'),
(126, 28, 'Đồng hồ Atlantic ', 2, 1, '200000', 'f7c08501b3.jpg', 2, '2021-12-31 10:24:25'),
(127, 29, 'Đồng hồ Epos Swiss ', 2, 1, '400000', '19f51587d6.jpg', 2, '2022-01-02 21:12:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `type1` int(200) NOT NULL,
  `type2` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `type1`, `type2`, `price`, `image`) VALUES
(28, 'Đồng hồ Atlantic ', 1, 14, 'Thương hiệu đồng hồ  Atlantic Swiss được nhập khẩu nguyên chiếc từ Thụy Sỹ và phân phối độc quyền tại Đăng Quang Watch.\r\n\r\n\r\n\r\nAT-52780.41.61 phiên bản giới hạn chỉ với 888 chiếc trên toàn cầu.\r\n\r\n\r\n\r\nChất liệu vỏ thép không gỉ 316L cao cấp mạ PVD.\r\n\r\n\r\n\r\nNắp sau lộ máy và có độ chịu nước 5ATM.\r\n\r\n\r\n\r\nKhóa thông minh giúp bạn đeo dễ dàng hơn.\r\n\r\n\r\n\r\nDây da chính hãng được làm từ da bò.\r\n\r\n\r\n\r\nAT-52780.41.61 với thiết kế mặt đen lộ tim máy vô cùng cuốn hút người nhìn.\r\n\r\n \r\n\r\n\r\n\r\nÔng Fredi Bickel - Giám đốc điều hành ATLANTIC.\r\n\r\n\r\n\r\nTrong chuyến công tác tại Việt Nam , ông Fredi Bickel cùng đồng nghiệp  ghé thăm 1 số showroom tại hệ thống của Đăng Quang watch và có nhưng chia sẻ thú vị về đồng hồ.\r\n\r\n\r\n\r\nChụp ảnh lưu niệm với đại diện các thương hiệu và lãnh đạo cùng các quản lý của Đăng Quang Watch trên toàn hệ thống.\r\n\r\n\r\n\r\nĐăng Quang Watch tự hào là nhà phân phối bán lẻ đồng hồ lớn nhất Việt Nam.', 0, 0, 0, '200000', 'f7c08501b3.jpg'),
(29, 'Đồng hồ Epos Swiss ', 1, 14, 'Thương hiệu đồng hồ  Epos Swiss được nhập khẩu nguyên chiếc từ Thụy Sỹ và phân phối độc quyền tại Đăng Quang Watch.\r\n\r\n', 1, 1, 1, '400000', '19f51587d6.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`);

--
-- Chỉ mục cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
