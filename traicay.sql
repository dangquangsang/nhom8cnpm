-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 21, 2022 lúc 02:39 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `traicay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adm`
--

CREATE TABLE `adm` (
  `ma_adm` int(11) NOT NULL,
  `ten_dn` varchar(30) NOT NULL,
  `level` int(10) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `ho` varchar(30) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `level`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 1, 'admin', 'Đặng Quang', 'Sang', 2),
(7, 'sang', 2, '123456', 'Đặng', 'Quang Sang', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_dondathang`
--

CREATE TABLE `ct_dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_qua` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_qua`, `gia_ban`, `sl_dat`) VALUES
(40, '40', 25000, 10),
(40, '41', 120000, 1),
(40, '21', 50000, 1),
(46, '54', 350000, 2),
(42, '42', 50000, 1),
(42, '41', 120000, 1),
(43, '42', 50000, 1),
(45, '23', 80000, 1),
(47, '21', 50000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`ma_dh`, `ma_kh`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(43, 47, '2022-01-16 13:05:40', '20/10/2023', 'Vinh City', 1),
(46, 47, '2022-01-17 13:48:17', '20/10/2025', 'Vinh City', 0),
(42, 47, '2022-01-11 12:10:25', '20/10/2023', 'Vinh City', 1),
(45, 49, '2022-01-16 13:09:07', '20/10/2023', ' 45 Nguyễn Du', 0),
(47, 47, '2022-01-17 13:48:34', '10/5/2022', 'Vinh City', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` int(11) NOT NULL,
  `ho_kh` varchar(30) NOT NULL,
  `ten_kh` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioi_tinh` int(11) NOT NULL DEFAULT 0,
  `ten_dn` varchar(15) NOT NULL,
  `mat_khau` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(47, 'Đặng', 'Sangg', 1325454365, 'Vinh City', 'sang@gmail.com', 2, 'sang', '123456'),
(50, 'Minh', 'Quang', 957848262, ' Vinh - Nghệ An', 'van@gmail.com', 2, 'van A', '123456'),
(48, 'Đặng ', 'Namee', 957848215, ' Vinh - Nghệ An', 'sa@gmail.com', 2, 'sang1', '123456'),
(49, 'Thúy', 'Hiền', 957848217, ' 45 Nguyễn Du', 'na@gmail.com', 3, 'sang123', '123456'),
(51, 'Văn', 'Nam', 957848214, ' Vinh - Nghệ An', 'gh@gmail.com', 2, 'bomlao00', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `ma_lh` int(11) NOT NULL,
  `ten_nguoi_lh` varchar(40) NOT NULL,
  `sdt_nguoi_lh` varchar(12) NOT NULL,
  `email_nguoi_lh` varchar(50) NOT NULL,
  `gioi_nguoi_lh` int(11) NOT NULL,
  `diachi_nguoi_lh` varchar(200) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_lh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(22, 'Đặng Văn Nam', '0348004452', 'nam@gmail.com', 2, 'Vinh City', 'Hàng chất lượng tốt', '2022-01-17 13:49:22'),
(21, 'sang gao', '0348004521', 'sang23@gmail.com', 2, 'Vinh - Nghệ An', 'Mua hoa quả', '2022-01-17 12:37:35'),
(19, 'Đặng Quang Sang', '0348004517', 'sang12@gmail.com', 2, 'Vinh - Nghệ An', 'Khong co noi dung', '2022-01-11 12:14:59'),
(23, 'Lê Văn Hải', '0348004582', 'hai@gmail.com', 2, 'Hà Nội', 'Trái cây chất lượng tốt', '2022-01-17 13:50:15'),
(24, 'Trần Thị Linh', '0948521789', 'linh@gmail.com', 3, 'Hải Phòng', 'Giao hàng rất nhanh', '2022-01-17 13:50:59'),
(25, 'Hồ Thị Hồng', '0948521547', 'hong@gmail.com', 3, 'Sơn La', '26 Sơn La chào ae nha', '2022-01-17 13:51:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_qua`
--

CREATE TABLE `loai_qua` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_qua`
--

INSERT INTO `loai_qua` (`ma_loai`, `ten_loai`) VALUES
(1, 'Quả Miền Bắc'),
(2, 'Quả Miền Trung'),
(3, 'Quả Miền Nam'),
(4, 'Quả Đặc Sản Hưng Yên'),
(5, 'Quả Nhập Khẩu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qua`
--

CREATE TABLE `qua` (
  `ma_qua` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_qua` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trang_thai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `qua`
--

INSERT INTO `qua` (`ma_qua`, `ma_loai`, `ten_qua`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(40, 4, 'Ổi Đài Loan', 25000, 'oidailoan.jpg', 'Ổi Đài Loan quả to, đẹp, ăn vừa giòn,vừa ngọt', '2015-06-07 08:41:26', 0),
(24, 4, 'Táo Giống Mới', 50000, 'taogiongmoi.jpg', 'Táo giống mới được lai ghép và trồng nhiều ở khu vực Văn Giang-Hưng Yên', '2015-06-07 14:42:30', 0),
(23, 4, 'Nhãn Lồng', 80000, 'nhanlonghungyen.jpg', 'Nhãn Lồng Hưng Yên, một loại sản vật cực kỳ thơm ngon vào dịp hè về.', '2015-06-07 14:54:48', 1),
(22, 1, 'Vải Thiều', 15000, 'Vải Thiều.jpg', 'Vải Thiều một loại sản vật ở vùng đất Hải Dương.', '2015-06-07 15:02:05', 1),
(21, 3, 'Bưởi Năm Roi', 50000, 'buoinamroi.jpg', 'Bưởi Năm Roi được nhập từ khu vực Vĩnh Long', '2015-06-07 15:17:59', 0),
(41, 1, 'Bơ Sáp', 120000, 'Bơ Sáp.jpg', 'Loại bơ sáp này được xuất sứ từ đất nước Hà Lan', '2022-01-17 13:24:58', 0),
(42, 1, 'Măng Cụt', 50000, 'Măng cụt 1.JPG', 'Măng cụt là loại trái cây cực kỳ thơm ngon và bổ dưỡng.', '2022-01-13 12:21:30', 0),
(45, 1, 'Cam sành', 120000, 'quả cam.jpg', 'Trái cam ruột đỏ, tép cam to, mọng nước, nhiều hạt và cuống lá to. Khi chín trái vàng ươm, ăn vị ngọt khé, dậy mùi thơm.', '2022-01-17 13:31:47', 0),
(44, 1, 'Chuối Ngự ', 90000, 'quả chuối.jpg', 'Chuối làng Đại Hoàng được mang tên chuối Ngự, hay còn gọi là chuối tiến Vua.', '2022-01-17 13:31:54', 0),
(46, 1, 'Mận', 50000, 'quả mận.jpg', 'Mận Bắc Hà là loại trái cây được ưa thích trong các loại trái cây đặc sản miền Bắc.', '2022-01-17 13:31:41', 0),
(47, 2, 'Xoài tượng', 20000, 'xoài tượng.jpg', 'Nhắc đến những loại trái cây miền trung thì không thể không nhắc đến xoài tượng tại Bình Địn', '2022-01-17 13:40:26', 1),
(48, 2, 'Nho', 40000, 'nho.jpg', 'Nho Ninh Thuận nổi tiếng với vị ngọt thanh khiết và giá cả hợp với xu hướng người tiêu dùng', '2022-01-17 13:40:02', 1),
(50, 2, 'Táo', 90000, 'táo.jpg', 'Những trái táo gió xanh Ninh Thuận với màu xanh bóng loáng cực kỳ bắt mắt, trái táo ăn cực giòn và vị ngọt mát tự nhiên.', '2022-01-17 13:40:35', 1),
(52, 5, 'Nho Mỹ', 400000, 'nho mỹ.jpg', 'Đây là loại trái cây nhập khẩu có chứa hàm lượng cao chất xơ và hàng chục chất dinh dưỡng có tác dụng chống ung thư và bệnh tim.', '2022-01-17 13:44:50', 1),
(53, 5, 'Lê Hàn Quốc', 300000, 'lê hàn quốc.jpg', 'Vừa có lợi cho sức khỏe, lại vừa là món quà biếu tặng sang trọng.', '2022-01-17 13:45:45', 1),
(54, 5, 'Việt Quất', 350000, 'việt quất.jpg', 'Việt quất là loại trái cây nhập khẩu cực kì được các chị em nội trợ yêu thích.', '2022-01-17 13:47:08', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tt` int(11) NOT NULL,
  `tieu_de` varchar(50) NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `noi_dung` varchar(10000) NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tt`, `tieu_de`, `hinh_anh`, `noi_dung`, `ngay_dang`) VALUES
(34, 'Công dụng đáng kinh ngạc từ trái ổi.', 'cayoidailoan.jpg', '<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;line-height:13.15pt;background:white\"><font face=\"Arial\">&nbsp;Không chỉ là một loại hoa quả\r\nthông thường mà ổi còn có thể được xem là một loại thuốc để chừa bệnh, một\r\nnguồn cung cấp chất dinh dưỡng cho cơ thể người. Nhiều bộ phận trên cây ổi đều\r\ncó thể dùng để làm nguyên liệu ngăn ngừa và chữa bệnh: lá, quả chín, quả non,\r\nhạt,...</font></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;line-height:13.15pt;background:white\"><strong><i><font face=\"Arial\">Ngăn\r\nngừa ung thư</font></i></strong></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;text-indent:36.0pt;line-height:13.15pt;background:white\"><font face=\"Arial\">Qua\r\ncác nghiên cứu y học cho thấy thành phần chiết xuất từ lá ổi có thể giúp ngăn\r\nngừa bệnh ung thư. Hơn nữa, ruột quả ổi cũng chứa chất lypocene cao, tác dụng\r\nchống ung thư. Folate trong ổi cũng giúp ngăn ngừa ung thư dạ dày.</font></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;line-height:13.15pt;background:white\"><strong><i><font face=\"Arial\">Ngăn\r\nngừa táo bón</font></i></strong></p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;text-indent:36.0pt;line-height:13.15pt;background:white\"><font face=\"Arial\">Quả\r\nổi có chứa nhiều chất xơ nên có tác dụng phòng ngừa bệnh táo bón. Hạt của quả\r\nổi cũng có tác dụng hiệu quả trong việc nhuận tràng và làm sạch hệ thống đường\r\nruột.</font></p><p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;line-height:13.15pt;background:white\"><strong><i><font face=\"Arial\">Điều\r\ntrị bệnh tiểu đường</font></i></strong></p><p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;text-indent:36.0pt;line-height:13.15pt;background:white\"><font face=\"Arial\">Nghiên\r\ncứu của các nhà khoa học Ấn Độ cho thấy lá và quả ổi có khả năng giảm thiểu\r\nlượng đường gluco trong máu.</font></p><p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;line-height:13.15pt;background:white\"><strong><i><font face=\"Arial\">Điều\r\ntrị bệnh cao huyết áp</font></i></strong></p><p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;text-indent:36.0pt;line-height:13.15pt;background:white\"><font face=\"Arial\">Quả\r\nổi chứa chất hypoglycemic tự nhiên và giàu chất xơ. Ổi có tác dụng hạ huyết áp\r\nvà cholesterol trong máu.Vì vậy, ổi rất có ích đối với những người có nguy cơ\r\nmắc bệnh tim và cao huyết áp.</font></p><p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:15.0pt;margin-left:\r\n0cm;text-align:justify;line-height:13.15pt;background:white\"><strong><i><font face=\"Arial\">Giảm\r\nđau, chống viêm</font></i></strong></p>', '2022-01-17 14:06:38'),
(33, 'Chọn bưởi ngon không khó.', 'caybuoidien.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop\"><font face=\"Arial\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><a href=\"http://www.caygiong.org/default.asp?tab=detailnews&amp;zone=5&amp;id=60&amp;tin=705&amp;title=huong-dan-cach-chon-buoi-ngon\" target=\"_blank\"><span style=\"mso-fareast-font-family:\" times=\"\" new=\"\" roman\";=\"\" color:windowtext;text-decoration:none;text-underline:none\"=\"\">Chúng tôi tin chắc\r\nnhững thông tin dưới đây sẽ thật sự hữu ích cho các chị em nội trợ, chọn được\r\nnhững quả bưởi thơm ngon và dinh dưỡng nhất</span></a></span><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\"><o:p></o:p></span></font></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop\">\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:115%;font-family:\r\n\" times=\"\" new=\"\" roman\",\"serif\";background:white\"=\"\"><font face=\"Arial\">Trái bưởi ngon có những đặc điểm\r\nsau:</font></span><span style=\"font-size:12.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font face=\"Arial\"><br>\r\n<br>\r\n<span style=\"background:white\">+ Cuống trái còn tươi, da căng và ửng vàng.</span><br>\r\n<br>\r\n<span style=\"background:white\">&nbsp;+ Đều đặn, nặng hơn nhiều trái khác cùng cỡ-bạn\r\ndùng tay “cân” trái bưởi sẽ cảm nhận được điều này.</span><br>\r\n<br>\r\n<strong>+ Vỏ mỏng:&nbsp;</strong><span style=\"background:white\">bạn dùng ngón\r\ntay búng vừa phải vào trái bưởi sẽ nghe âm thanh “cạch cạch”. Ngược lại, ở trái\r\nvỏ dày sẽ phát ra tiếng “bụp bụp”. Còn cách khác đơn giản hơn là bạn dùng ngón tay\r\nthuận bấm vừa phải vào trái bưởi. Nếu bạn cảm thấy cứng tay là được.</span><br>\r\n<br>\r\n<strong>+ Ngọt:</strong><span style=\"background:white\">&nbsp;tiêu chí này rất\r\nkhó, trừ khi bạn xin người bán cho ăn thử. Bởi chỉ có những nhà vườn biết bón\r\ncân đối lượng phân (đạm, lân, kali) cho cây thì mới thu được trái ngọt. Hoặc bạn\r\ncứ chọn mua trái này ở những nơi bán uy tín như trong các hệ thống siêu thị, chỗ\r\nmua “mối”.</span><br>\r\n<br>\r\n<span style=\"background:white\">Thường thời điểm chín rục của các loại bưởi là\r\n7-10 ngày, sau khi nhà vườn hái xuống. Do vậy nếu mua bưởi ăn liền, bạn nên chọn\r\nnhững trái da nhăn, vàng sậm-vừa ngon vừa lợi ký. Lúc đó, cơm bưởi ngọt thanh,\r\nnhiều nước, thơm phảng phất.</span><br>\r\n<br>\r\n</font><span style=\"background:white\"><font face=\"Arial\">Bảo quản nước bưởi: Theo BS.Nguyễn Ý Đức, nước\r\nbưởi cần được đựng trong bình (cốc) thủy tinh, để trong tủ lạnh. Tránh mất\r\nvitamin C, bạn nên đổ nước bưởi gần đầy bình (cốc) để không bị oxy hóa.</font><o:p></o:p></span></span></p>', '2022-01-17 14:06:30'),
(35, 'Nhãn lồng Hưng Yên  món quà tinh túy của trời đất.', 'nhan-long.jpg', '<p style=\"text-align:justify;line-height:12.5pt;background:white\"><font face=\"Arial\">Từ lâu, nhãn\r\nlồng đã trở thành một đặc sản nổi tiếng của đất Hưng Yên. Cây nhãn đã bám sâu\r\nvào đời sống người dân Hưng Yên, không chỉ là sản vật biểu tượng cho những tinh\r\ntúy của vùng đất này mà còn là một loại cây mang lại giá trị kinh tế cao, cải\r\nthiện đời sống của bà con nông dân.</font></p>\r\n\r\n<p style=\"text-align:justify;line-height:12.5pt;background:white\"><font face=\"Arial\">Nhãn lồng\r\nđược trồng nhiều dọc triền đê sông Hồng, sông Luộc… Hằng năm, cứ vào tháng sáu\r\nâm lịch là nhãn lồng bắt đầu chín rộ, nhuộm vàng cả một góc trời, những quả\r\nnhãn to tròn, căng mọng. Nhãn lồng của Hưng Yên khác hẳn với những loại nhãn ở\r\ncác vùng khác, đó là nhãn khi chín có màu nâu sẫm, vỏ mỏng. Bóc một lớp vỏ mỏng\r\nbên ngoài, bên trong là lớp cùi nhẵn dày, các lớp cùi xếp lồng vào nhau căng\r\nmọng, ăn giòn, ngọt đậm và thơm dịu mát. Mùi thơm của nhãn lồng Hưng Yên rất\r\nđặc trưng, hương thơm tinh khiết, dịu mát tỏa nhẹ làm ngây ngất lòng người.\r\nNhãn lồng Hưng Yên có hương vị riêng biệt mà không loại nhãn nào sánh được, ăn\r\nvừa ngọt vừa thơm. Quả không sai khi thưởng thức nhãn lồng Hưng Yên, nhà bác\r\nhọc Lê Quý Đôn đã phải thốt lên rằng: “Mỗi lần bỏ vào miệng thì tận trong răng\r\nlưỡi đã nảy ra vị thơm tựa như nước thánh trời cho”.</font></p>\r\n\r\n<p style=\"text-align:justify;line-height:12.5pt;background:white\"><font face=\"Arial\">Mảnh đất Hưng\r\nYên nhờ thứ đặc sản này mà đã khẳng định được tên tuổi, thương hiệu của mình\r\nkhắp nơi và nhãn lồng đã vươn ra thị trường thế giới. Nhãn lồng sấy khô, dẻo\r\nquánh, có màu nâu sậm, vẫn còn nguyên hương thơm và có vị ngọt hơn đường phèn,\r\ngọi là long nhãn, đã xuất khẩu sang thị trường nước ngoài và rất được ưa\r\nchuộng. Nhãn lồng còn là một thứ thuốc quý dân gian của bà con. Người ta thường\r\nlấy long nhãn ngâm rượu để uống giúp cho tinh thần sảng khoái, ăn ngon và ngủ\r\nsâu hoặc lấy long nhãn bỏ hột lồng với hạt sen bên trong hấp chín, rồi ngâm với\r\nđường, là một món ngon giàu chất dinh dưỡng và để giải khát khi trời nóng, giải\r\nnhiệt cơ thể rất tốt. Nhãn lồng Hưng Yên luôn là một món quà quý, để người đi\r\nxa luôn phải ngóng chờ mỗi mùa nhãn đến. Ca dao xưa đã có câu:</font></p>\r\n\r\n<p style=\"text-align:justify;line-height:12.5pt;background:white\"><em><font face=\"Arial\">Dù đi\r\nbuôn Bắc bán Đông</font></em></p>\r\n\r\n<p style=\"text-align:justify;line-height:12.5pt;background:white\"><em><font face=\"Arial\">Đố ai\r\nquên được nhãn lồng Hưng Yên.</font></em></p>', '2022-01-17 14:06:45'),
(36, 'Cam Vinh và tác dụng của vitamin C.', 'camvinh.jpg', '<font face=\"Arial\"><br></font><p class=\"MsoNormal\" style=\"margin-bottom:5.0pt;mso-line-height-alt:10.65pt;\r\nbackground:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\";mso-bidi-font-weight:bold\"=\"\"><font face=\"Arial\">Cam Vinh là\r\nmột trong những loại trái cây có chứa tinh dầu mang mùi thơm và chứa nhiều\r\nvitamin C, rất mát và bổ dưỡng cho cơ thể.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C là thành phần cần thiết\r\ncho quy trình kiến tạo mô liên kết. Thiếu vitamin C thì vết thương, vết loét\r\nkhó lành.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C cải thiện tình trạng\r\nchuyển hóa chất sắt bằng cách đẩy mạnh quy trình hấp thu chất sắt qua đường\r\ntiêu hóa cũng như dự trữ chất sắt trong gan, lá lách và tủy xương. Thiếu\r\nvitamin C thì chức năng tạo hồng huyết cầu bị đình trệ.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C hưng phấn hoạt tính của\r\nbạch huyết cầu và gia tăng sự thành lập kháng thể. Thiếu vitamin C thì cơ thể\r\ndễ bị bội nhiễm. Kết quả nhiều công trình nghiên cứu cho thấy vitamin C ở liều\r\ncao, khoảng 500mg mỗi ngày, có khả năng thu ngắn thời gian nhiễm cúm.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C cần thiết cho hoạt động\r\ncủa tuyến thượng thận để bài tiết kích tố chống tình trạng căng thẳng thần kinh\r\n(stress). Thiếu vitamin C thì tuyến thượng thận không thể hoạt động tối đa. Cơ\r\nthể người không đủ vitamin C vì thế khó chịu đựng lâu dài tình trạng căng\r\nthẳng. Điều đó cũng có nghĩa là ở người thường xuyên bị căng thẳng thần kinh\r\nphải được kịp thời cung ứng đầy đủ vitamin C.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C yểm trợ chức năng giải\r\nđộc của gan. Vitamin C hưng phấn quy trình đào thải các kim loại nặng như chì.\r\nThiếu vitamin C thì cơ thể dễ bị dị ứng với thuốc men, thực phẩm, hóa chất.\r\nThêm vào đó, cơ thể người không có đủ vitamin C thường có khuynh hướng bị tăng\r\nchất béo cholesterol.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Vitamin C còn có tác dụng gia tăng\r\nđề kháng và tăng tính hấp thu chất sắt, thực vật.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">&nbsp; &nbsp; &nbsp; &nbsp;Ngoài ra,\r\nnước cam còn là nguồn cung cấp phong phú kali, folate, vitamin B1, niacin,\r\nriboflavin và magiê. Vitamin B1 tham gia vào quá trình sản xuất năng lượng và\r\ngiúp các dây thần kinh hoạt động tốt. Folate có công dụng cải thiện máu và\r\nthiết thực cho thai phụ vì giúp ngừa các khiếm khuyết ở thai nhi. Nước cam còn\r\ngiúp giảm nguy cơ bị huyết áp cao và đột quỵ.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">&nbsp; &nbsp; &nbsp; &nbsp;Nước ép\r\ntrái cam có độ PH hơi axit nên nếu những người bị viêm hay loét dạ dày nếu dùng\r\ncam vào lúc đói thì sẽ làm tăng thêm cảm giác cồn cào và nóng rát. Cùi cam chứa\r\nnhiều chất xenlulô hay còn gọi là chất xơ rất có giá trị trong việc nhuận\r\ntràng, kích thích sự co bóp của ruột nên có tác dụng chống táo bón và hình\r\nthành khuôn phân. Chất xơ trong cam có tác dụng hấp thụ lượng chất cholesterol\r\nhay chất béo có hại có trong ruột và đóng vai trò như một chiếc chổi quét chất\r\nđộc hại này theo phân đào thải ra khỏi cơ thể. Một thông tin gần đây nhất cho\r\nbiết, chỉ cần một trái cam trong một ngày (dùng theo cách gọt vỏ và ăn cả cùi) là\r\nđã có khả năng phòng chống được bệnh ung thư ruột già và các bệnh tim mạch.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">&nbsp; &nbsp; &nbsp; &nbsp;Nếu thích\r\nbạn có thể ăn 2-3 quả cam trong một ngày và theo cách gọt vỏ, ăn cả cùi.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">&nbsp; &nbsp; &nbsp; &nbsp;Còn nếu\r\nhiện nay bạn ăn 5-6 quả cam một ngày thì nên vắt lấy nước kết hợp với ăn cùi vì\r\nnếu dùng quá nhiều chất xơ có thể có tai biến gây tắc ruột. Nếu em đang bị các\r\nchứng bệnh như viêm loét dạ dày, tá tràng, viêm ruột thì không nên dùng cam vào\r\nlúc đói và uống nước cam quá nhiều trong ngày. Tốt nhất là nên dùng cam sau bữa\r\năn theo kiểu ăn tráng miệng hoặc nếu dùng nhiều hơn thì không nên uống một số\r\nloại thuốc, chẳng như Tetracyclin vì dịch cam sẽ làm giảm bớt thậm chí làm mất\r\ntác dụng trị bệnh của thuốc.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Nhu cầu về vitamin C trung bình\r\ncho người không phải làm việc nặng là 75mg/ngày.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Thai sản phụ có nhu cầu vitamin C\r\ncao hơn, khoảng 100-130mg mỗi ngày.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Bệnh nhân có nhu cầu chống bội\r\nnhiễm, dự phòng ung thư, kháng dị ứng sẽ cần tối thiểu 150mg vitamin C mỗi\r\nngày.<o:p></o:p></font></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:\r\n10.65pt;background:white\"><span style=\"font-size:12.0pt;font-family:\" times=\"\" new=\"\" roman\",\"serif\";=\"\" mso-fareast-font-family:\"times=\"\" roman\"\"=\"\"><font face=\"Arial\">- Người nghiện thuốc lá, vận động\r\nviên, bệnh nhân trong giai đoạn hồi phục, công nhân lao động nặng nên được tiếp\r\ntế mỗi ngày với 200mg vitamin C.<o:p></o:p></font></span></p><table class=\"MsoNormalTable\" border=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"padding:0cm 0cm 0cm 0cm\"><font face=\"Arial\"><br></font></td><td style=\"padding:0cm 0cm 0cm 0cm\"><font face=\"Arial\"><br></font></td></tr></tbody></table>', '2022-01-17 14:06:52'),
(37, '7 lợi ích của quả việt quất đối với sức khỏe', 'việt quất.jpg', '<h2 class=\"detail-sapo\" data-role=\"sapo\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-family: Arial; font-size: 17px; line-height: 23.8px; color: rgb(68, 68, 68); background-color: rgb(255, 255, 255);\">SKĐS - Việt quất là một trong những loại quả giàu dinh dưỡng nhất thế giới giàu chất chống oxy hóa, phòng ngừa ung thư, giảm cân và đẹp da.</h2><div><span style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 17px; text-align: justify; background-color: rgb(255, 255, 255);\">Quả việt quất có nguồn gốc ở Bắc Mỹ, quả việt quất rất giàu proanthocyanidin, các chất chống oxy hóa tự nhiên đã được chứng minh để chống lại ung thư, giảm cân và cho bạn làn da sáng trẻ.</span></div><div><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Quả việt quất là một trong những loại thực phẩm có nhiều chất dinh dưỡng nhất trên thế giới và chứa hàm lượng lớn các chất chống oxy hóa.</p></div><div><h2 style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; line-height: 1.2; font-size: 17px; color: rgb(51, 51, 51); font-family: Arial; background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">7 Lợi ích sức khỏe của việt quất</strong></h2><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1. Chống lão hóa</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Chất chống oxy hóa là người bạn tốt nhất của bạn để giúp đảo ngược thiệt hại được thực hiện bởi các độc tố và các gốc tự do và giúp cơ thể tự bảo vệ mình chống lại các mầm bệnh nguy hiểm.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Không những quả việt quất giàu chất chống oxy hóa chung, chúng rất giàu proanthocyanidins, có khả nang chống viêm. Viêm là cội rễ của hầu hết các bệnh như bệnh tim mạch, đái tháo đường, ung thư và hầu hết các bệnh tật con người biết đến.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2. Tăng cường sức khỏe não</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Do chứa một lượng cao của phenol, đặc biệt axit gallic, quả việt quất được biết đến như là \"tác nhân bảo vệ thần kinh\". Theo các nhà nghiên cứu từ Iran, điều này có nghĩa rằng có thể bảo vệ não của chúng ta khỏi sự thoái hóa, nhiễm độc thần kinh và stress oxy hóa.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Một nghiên cứu khác cho thấy rằng tiêu thụ nhiều quả việt quất làm chậm suy giảm nhận thức và cải thiện trí nhớ và chức năng vận động. Các nhà khoa học trong nghiên cứu này cho rằng những kết quả này là do các chất chống oxy hóa trong quả việt quất giúp bảo vệ cơ thể khỏi stress oxy hóa và giảm viêm.</p><zone id=\"krlv706p\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial; font-size: 17px; background-color: rgb(255, 255, 255);\"></zone><span style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 17px; background-color: rgb(255, 255, 255);\"></span><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">3. Chống ung thư</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Nghiên cứu lâm sàng thậm chí đã phát hiện ra rằng, không giống như dùng tia xạ và hóa trị liệu, thực phẩm giàu axit gallic như quả việt quất có thể tiêu diệt ung thư mà không làm hại các tế bào khỏe mạnh.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">4. Hỗ trợ tiêu hóa</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Là một nguồn tự nhiên của chất xơ hòa tan và không hòa tan, quả việt quất có thể giúp điều hòa đường tiêu hóa của bạn bằng cách chỉ ăn một vài nắm một ngày.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Trong thực tế, Nhà nghiên cứu Vivian Chi-Hua Wu, Đại học Maine đã phát hiện ra rằng quả việt quất hoang dã có tiềm năng prebiotic , thúc đẩy sự tăng trưởng của vi khuẩn có lợi (probiotic) trong đường ruột và thúc đẩy lợi ích tiêu hóa và sức khỏe.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">5. Đẩy mạnh sức khỏe tim</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Các nghiên cứu cho thấy rằng ăn dâu tây và quả việt quất cùng nhau có một hiệu lực thực sự làm giảm nguy cơ đau tim lên đến 33 %. Lợi ích sức khỏe quả việt quất cũng đã được chứng minh là làm giảm LDL cholesterol, làm tăng HDL cholesterol và giảm huyết áp một cách tự nhiên.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">6. Giảm mụn trứng cá</strong></p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\">Chiết xuất các sản phẩm chăm sóc da từ việt quất đang trở nên rất phổ biến trên khắp thế giới. Các vitamin và khoáng chất trong việt quất giúp khôi phục lại sự cân bằng hormone, chống mụn trứng cá. Ngoài ra, quả việt quất có chứa resveratrol, mà được chứng minh để giảm thiệt hại từ việc tiếp xúc ánh nắng mặt trời.</p><p style=\"box-sizing: border-box; margin: 13.4px 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: 23.8px; font-family: Arial; word-break: break-word; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">7. Hỗ trợ giảm cân</strong></p></div>', '2022-01-17 13:59:57'),
(38, 'Các đặc điểm của trái nho Mỹ', 'nho mỹ.jpg', '<p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Nho Mỹ hiện nay được bày bán trên thị trường với rất nhiều chủng loại khác nhau như nho xanh, nho đỏ, nho đen Mỹ. Nhìn chung các loại nho được nhập khẩu từ Mỹ rất được người tiêu dùng ưa chuộng bởi giá trị dinh dưỡng cao mà nó mang lại cho cơ thể. Hơn nữa chất lượng nho Mỹ được đảm bảo hơn, sạch, an toàn hơn so với các loại nho nhập khẩu khác.</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Sau khi thu hoạch chúng được bảo quản cẩn thận trong điều kiện nhiệt độ mát để không làm mất đi độ tươi ngon của nó. Khi ăn loại nho này thịt của nó ngọt đậm, giòn, cộng với hương thơm tự nhiên mang lại, rất dễ ăn.&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">Nho Mỹ</span>&nbsp;có ngoại hình rất bắt mắt, đẹp mã. Những trái nho to chín căng mọc, màu sắc đậm đà và có lớp phấn phủ bao quanh về mặt quả. Nếu nho được bảo quản đúng kỹ thuật thi mới giữ được độ tươi, quả nho cứng rất dễ bóc vỏ, thịt giòn ngọt.</p><div><p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Chính vì vậy mà giống nho Mỹ nhập khẩu chính gốc có giá bán khá đắt đỏ trên thị trường nhưng chúng được tiêu thụ rộng rãi không chỉ trên toàn nước Việt Nam mà còn ở các quốc gia khác như Hàn Quốc, Nhật Bản…</p><p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: rgb(30, 30, 30); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Mặt hàng trái cây của Mỹ luôn được bảo quản lạnh liên tục và đóng gói vô cùng cẩn thận chứ không bày bán phơi nắng mà vẫn giữ được độ tươi như những giống nho nhập khẩu từ các nước khác.</p></div>', '2022-01-17 14:03:18'),
(39, 'Cây Xoài tượng - Cách trồng chăm sóc giống cây Xoà', 'xoài tượng.jpg', '<p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><strong style=\"margin: 0px; padding: 0px;\"><em style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Không chỉ thơm ngon ngọt đậm. Những quả xoài tượng còn có ngoại hình thuộc hàng khủng nhất trong các loại xoài với trọng lượng trung bình một quả lên đến 1kg.</font></em></strong></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\">Thật hiếm có loại xoài nào có thể có kích thước to như giống&nbsp;<strong style=\"margin: 0px; padding: 0px;\">xoài tượng</strong>. Có thể do kích thước của chúng mà giống xoài này mang tên xoài tượng ( Vói). Ở nước ta giống xoài này được trồng ở nhiều nơi những nhiều và nổi tiếng nhất vẫn là Đại An tỉnh Bình Định.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\">Khi có dịp đến đây vào mùa hoa xoài nở bạn sẽ thấy những mảnh vườn hoa nở trắng muối cả vùng trời. Thời điểm vào vụ thu hoạch nơi đây tấp nập người và xe qua lại vận chuyển loại quả đặc sản này đi khắp cả nước</font></p><h2 id=\"dac-diem-cua-xoi-tuong-v-loi-ch-cua-chng\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 18px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Đặc điểm của xoài tượng và lợi ích của chúng</font></strong></h2><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><a href=\"https://giongcayanqua.edu.vn/cay-xoai-tuong-cach-trong-cham-soc-giong-cay-xoai-tuong.html\" style=\"margin: 0px 0px 10px; padding: 0px; text-decoration-line: none; color: blue; line-height: 1.6;\">Cây&nbsp;<strong style=\"margin: 0px; padding: 0px;\">xoài tượng</strong></a>&nbsp;có chiều cao trung bình từ 4-7m. Hiện nay người trồng xoài đã giới hạn chiều cao của cây chỉ cho phát triển cành nhánh để cây cho năng suất cao nhất. Hoa xoài tượng mọc thành chùm có màu trắng khá đẹp. Qủa xoài có dạng hình thuôn dài khi chưa chín màu xanh và khi chín vỏ sẽ chuyển sang màu vàng rất đẹp. Qủa xoài tượng khi ăn bạn sẽ cảm nhận được hương vị thơm ngon ngọt ngào.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\">Xoài tượng</strong>&nbsp;nói riêng và các loại xoài khác nói riêng được xếp vào top 5 các loại trái cây giàu dinh dưỡng. Trong một quả xoài tượng có chứa các loại Vitamin A, Vitamin nhóm B cùng các loại dưỡng chất khác như Calo, Lipid, Cholesterol, Natri 1, Kali 168, Cacbohydrat, Chất xơ, Đường, Protein. Những dưỡng chất này đều cần thiết cho sức khỏe và cơ thể của con người. Đặc biệt ăn xoài có thể giúp chữa một số bệnh khác nhau khá hiệu quả.</font></p><h2 id=\"cch-trong-cy-xoi-tuong-cho-nang-suat-cao\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 18px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Cách trồng cây xoài tượng cho năng suất cao</font></strong></h2><h3 id=\"tiu-chuan-dat-trong\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 16px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Tiêu chuẩn đất trồng</font></strong></h3><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\">Xoài tượng</strong>&nbsp;không khó tính khi trồng. Theo kinh nghiệm của các nhà vườn trồng lâu năm thì loại đất thích hợp nhất cho xoài tượng là đất có độ Ph từ 5-7. Với những vùng đất kém màu mỡ cây&nbsp;<strong style=\"margin: 0px; padding: 0px;\">xoài tượng</strong>&nbsp;lại cho ra nhiều hoa và đậu trái hơn là những vùng đất quá màu mỡ. Nên trồng xoài tượng ở những vùng đất bằng phẳng sẽ giúp cây khỏe mạnh và phát triển tốt nhất.</font></p><h3 id=\"thoi-vu-trong\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 16px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Thời vụ trồng</font></strong></h3><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\">Xoài tượng</strong>&nbsp;thường được trồng vào đầu mùa mưa tháng 5-7 hàng năm. Với nhiều nơi trồng diện tích ít thì bạn có thể trồng xoài tượng vào nhiều thời vụ khác nhau miễn là phải tránh những thời điểm tránh nắng nóng và rét đậm.</font></p><h3 id=\"tiu-chuan-chon-giong\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 16px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Tiêu chuẩn chọn giống</font></strong></h3><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\">Hiện nay giống&nbsp;<strong style=\"margin: 0px; padding: 0px;\">xoài tượng</strong>&nbsp;được trồng và nhân giống bằng cách ghép cây là chủ yếu. Phương pháp nhân giống này giúp cây giữ được nguồn gen quý từ cây mẹ và cây trồng không bị thoái hóa. Khi chọn cây con giống thì nên chọn những cây khỏe mạnh không sâu bệnh sẽ giúp cây xoài sau này cho thu hoạch ddeuf đặn và năng suất cao.</font></p><h3 id=\"ky-thuat-trong\" style=\"margin: 0px 0px 10px; padding: 0px; list-style: none; line-height: 1.6; font-family: arial, helvetica, \" sans=\"\" serif\";=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-size:=\"\" 16px=\"\" !important;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\"><font face=\"Arial\">Kỹ thuật trồng</font></strong></h3><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\">Xoài tượng</strong>&nbsp;là loại cây thân gỗ lâu năm. Nếu như trồng và chăm sóc cẩn thận thì có thể cho thu hoạch được đến 20 năm. Trước khi trồng từ 1-3 tháng bạn tiến hành chuẩn bị hố trồng thật sạch. Đào hố với kích thước tối thiểu 50x50x50cm và khoảng cách giữa các hố khoảng 4m trở lên. Bón lót vào từng hố 10kg phân chuồng hoai mục, 1kg phân Lân và một lượng vôi bột giúp khử trùng hết màm bệnh trong đất.</font></p><div><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\">Khi trồng&nbsp;<strong style=\"margin: 0px; padding: 0px;\">xoài tượng</strong>&nbsp;bạn chú ý bóc túi nilon nhẹ nhàng để không làm đứt rễ cây non. Đặt nhẹ nhàng cây con giống xuống dưới hố chỉnh hướng thẳng đứng rồi lấp đất lại dùng tay lèn chặt bề mặt gốc cây. Trồng xong tưới nước ngay cho cây và giữ ẩm trong đất 1 tháng trồng sau đó.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\">&nbsp;5<strong style=\"margin: 0px; padding: 0px;\">. Chăm sóc:</strong>&nbsp;Thời kỳ cây trong 1 năm tuổi là thời kỳ này cây sinh trưởng mạnh hầu như quanh năm để hoàn thiện bộ khung tán.Việc cần làm lúc này là cung cấp đủ lượng nước, phân bón và phòng trừ cỏ dại để tạo điều kiện cho cây sinh trưởng mạnh.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\"><u style=\"margin: 0px; padding: 0px;\">Yêu cầu lượng nước:</u></strong>&nbsp;Sau khi cây đã ra rễ phát triển ổn định lúc này cần chăm chỉ tưới nước duy trì độ ẩm. Vì là loại cây ưa ẩm nên định kì 3 ngày một lần bạn tiến hành tưới cho cây một lần.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\"><u style=\"margin: 0px; padding: 0px;\">Cắt tỉa và tạo tán cho cây:</u></strong>&nbsp;Sau khi trồng khoảng 3 tháng cây có thể có chiều cao hơn 1,5m. Lúc này bạn cần uốn tỉa cành và tạo dần bộ khung cho cây. Một cây chọn từ 2-3 cành chính để phát triển còn lại cắt tỉa bỏ đi những cành vượt, cành héo úa và sâu bệnh. Với mỗi cành chính bấm ngọn để cho ra cành cấp 2. Khi cành cấp 2 phát triển mạnh bạn tiếp tục bấm ngọn để tạo cành cấp 3. Cứ như thế bạn tiến hành tạo dựng bộ tán cho cây để giúp hạn chế độ cao của cây giúp tiện chăm sóc và thu hái sau này.</font></p><p style=\"margin: 0px 0px 1em; padding: 0px; line-height: 1.5; text-align: justify; background-color: rgb(255, 255, 255); font-size: 15px !important;\"><font face=\"Arial\"><strong style=\"margin: 0px; padding: 0px;\">- Bảo vệ hoa và trái non:</strong>&nbsp; Để bảo vệ quả&nbsp;</font><font face=\"Verdana, Arial, Helvetica, sans-serif\"><strong style=\"margin: 0px; padding: 0px;\"></strong></font></p></div>', '2022-01-17 14:06:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`ma_adm`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`ma_dh`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`ma_lh`);

--
-- Chỉ mục cho bảng `loai_qua`
--
ALTER TABLE `loai_qua`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `qua`
--
ALTER TABLE `qua`
  ADD PRIMARY KEY (`ma_qua`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `adm`
--
ALTER TABLE `adm`
  MODIFY `ma_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `ma_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `ma_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loai_qua`
--
ALTER TABLE `loai_qua`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `qua`
--
ALTER TABLE `qua`
  MODIFY `ma_qua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
