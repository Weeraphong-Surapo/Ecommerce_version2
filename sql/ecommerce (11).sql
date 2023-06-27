-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 27, 2023 at 06:07 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_advert`
--

CREATE TABLE `tb_advert` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_advert`
--

INSERT INTO `tb_advert` (`id`, `title`, `sub_title`, `link`, `img`) VALUES
(2, 'เทศกาลลดราคา', 'ลดราคา', 'sfsfsftest', 'upload/15641-1.png'),
(3, 'สนุกกับการช้อปปิ้ง', 'ช้อปปิ้ง', 'test', 'upload/54312-2.png'),
(4, 'โฆษณา', 'พื้นที่', 'test', 'upload/75000-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bank`
--

CREATE TABLE `tb_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_names` varchar(200) NOT NULL,
  `bank_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_bank`
--

INSERT INTO `tb_bank` (`bank_id`, `bank_names`, `bank_img`) VALUES
(1, 'กรุงไทย', 'bank/kungthai.png'),
(2, 'กรุงศรี', 'bank/krngsri.jpeg'),
(3, 'ออมสิน', 'bank/oomsin.jpg'),
(4, 'ไทยพาณิชย์', 'bank/thaipanit.png'),
(5, 'กสิกรไทย', 'bank/kasigon.png'),
(6, 'กรุงเทพ', 'bank/bulung.png'),
(7, 'ธ.ก.ส.', 'bank/tks.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `title`, `sub_title`, `img`, `link`) VALUES
(2, '', '', 'upload/85537-explore.png', 'test'),
(3, 'ซื้อของออนไลน์', 'ปลอดถัย', 'upload/8833-1.png', 'test'),
(4, 'รับลงโฆษณา', 'ลงโฆษณา', 'upload/74686-3.png', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog`
--

CREATE TABLE `tb_blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_blog`
--

INSERT INTO `tb_blog` (`id`, `title`, `description`, `img`, `created_at`) VALUES
(9, 'MacBook Pro รุ่น M2 Pro และ Max เปิดตัวแล้ว พร้อมพัฒนาประสิทธิภาพและอายุแบตเตอรี่', 'ในวันที่ 17 มค. 2023 ที่ผ่านมา ทาง Apple ได้ประกาศเปิดตัว MacBook Pro รุ่นใหม่ ขนาด 14 และ 16 นิ้ว ที่มาพร้อมกับระบบปฏิบัติการที่ประมวลผลด้วยชิป M2 Pro และ M2 Max ให้เลือกใช้งานกัน เป็น Processor Generation ใหม่จาก Apple ที่มีการพัฒนาให้มีความทรงพลังมากขึ้น, มีประสิทธิผลในการทำงานมากขึ้น และมีอายุการใช้งาน Battery ที่ยาวนานขึ้น  รุ่นใหม่นี้ ถือเป็นแมคบุ๊คโปรที่มีความทรงพลังมากที่สุดตั้งแต่มีการพัฒนามา โดยมีการทดสอบแล้วว่าทำงานได้เร็วกว่า MacBook Pro รุ่น Intel ถึง 6 เท่าตัว สามารถใช้งานได้นานสุดถึง 22 ชั่วโมง โดยไม่ต้องเสียบชาร์จ เป็นแบตเตอรี่เปิดใช้ได้ยาวนานสุดในแมคบุ๊คทุกรุ่น  ในส่วนของการเชื่อมต่อ ตัวเครื่องรองรับ Wi-Fi 6E ซึ่งเป็นเทคโนโลยีเชื่อมต่อรุ่นใหม่ ที่รวดเร็วกว่า Generation ก่อนหน้าอย่าง Wi-Fi 6 ถึง 2 เท่าตัว เช่นเดียวกับพอร์ต HDMI รุ่นใหม่ที่รองรับการเชื่อมต่อกับหน้าจอเสริมความละเอียดสูงสุดถึง 8K เป็นครั้งแรก', 'upload/4055-macbook.jpeg', '2023-02-07 13:15:47'),
(10, 'Windows 11 Version 22H2 เวอร์ชั่นใหม่ ที่มีการปรับปรุงฟีเจอร์มากมาย พร้อมวิธีอัพเดต', 'บทความนี้ เราจะมาอัพเดตเกี่ยวกับ Windows 11 V. 22H2 เวอร์ชั่นใหม่ล่าสุดกัน ว่ามีฟีเจอร์ไหนที่ได้รับการปรับปรุง หรือพัฒนาขึ้นบ้าง รวมถึงวิธีและขั้นตอนในการ Update ที่ถูกต้อง  หลัง Microsoft ได้เปิดตัว Windows 11 ออกมาเมื่อปี ค.ศ. 2021 และปล่อยให้ผู้ใช้ได้อัพเกรดจากวินโดวส์เดิมอย่างวินโดวส์ 10 ที่ใช้อยู่ มาเป็นวินโดวส์ 11 ตั้งแต่วันที่ 5 เดือนตุลาคม ปี ค.ศ. 2021 แต่จนถึงตอนนี้หลังจากครบ 1 ปีไปแล้ว ทางไมโครซอฟต์ ก็ยังปล่อยให้ผู้ใช้ที่มี License เก่าสามารถอัพเกรดมาเป็น Windows 11 ได้อยู่ และยังไม่มีประกาศปิดการอัพกรดฟรีแต่อย่างใด', 'upload/83066-window.jpeg', '2023-02-07 13:16:19'),
(11, 'PowerChute คืออะไร ใช้งานกับ APC UPS อย่างไร พร้อมวิธีใช้เพื่อรักษาอุปกรณ์คอมพิวเตอร์ของคุณ', 'ถ้าคุณอยู่ในพื้นที่หรือสถานที่ที่ไฟกระชาก, ไฟตก หรือไฟดับบ่อยๆ การมีเครื่องสำรองไฟหรือ UPS ก็เป็นสิ่งสำคัญที่จะช่วยรักษาอุปกรณ์ไฟฟ้าของคุณ โดยเฉพาะ Computer ไม่ให้เสียหาย ซึ่งยูพีเอสของ APC มีฟีเจอร์ที่เรียกว่า PowerChute ที่สามารถสั่ง Shutdown คอมพิวเตอร์ของคุณได้อย่างปลอดภัยในกรณีไฟดับโดยอัตโนมัติ แม้เราอยู่ที่อื่นเมื่อเกิดเหตุ', 'upload/8169-apc.jpeg', '2023-02-07 13:17:19'),
(13, 'Surface Studio 2 Plus เปิดตัวแล้ว ด้วยคอนเซป PC All-in-One สำหรับการใช้งานระดับสูง', 'Surface Studio 2 Plus เป็น All in One Computer ออกแบบมาสำหรับคนทำงานโดยเฉพาะ ด้วย Processor Intel Core i7 Gen 11 รหัส H หรือ High Performance พร้อมกับการ์ดจอแยกที่ทรงพลัง และ Microsoft Windows 11 Pro ที่สามารถทำงานร่วมกันได้อย่างลงตัว และมีประสิทธิภาพ เหมาะสำหรับงานกราฟิก และงานอื่น ๆ ที่ต้องการใช้การประมวลผลสูง เพิ่งได้มีการเปิดตัวไปเมื่อ 12 ตุลาคม 2022 ทีผ่านมา พร้อมกับ Surface Pro 9 และ Laptop 5 นั่นเอง', 'upload/55247-imac.jpeg', '2023-02-07 13:18:09'),
(14, 'Cyber Security Trend ในปัจจุบันเป็นอย่างไร พบกับการ Update Solution โดย 4 Brand ชั้นนำ', 'ในยุคที่ความปลอดภัยทางข้อมูลเป็นสิ่งสำคัญ เราอาจได้เห็นตัวอย่างจากข่าวอาชญากรรมในอินเตอร์เน็ทได้แทบทุกเดือน โดยภัยเหล่านี้ ไม่ได้เลือกเกิดกับองค์กร หรือธุรกิจใดธุรกิจหนึ่ง เรื่องนี้เป็นภัยที่อาจเกิดขึ้นได้กับข้อมูลส่วนตัวของท่าน หรือองค์กรของท่าน ซึ่งอาจก่อให้เกิดผลกระทบได้ในวงกว้าง ซึ่งสิ่งที่จะมาช่วยป้องกันปัญหาเหล่านี้ ได้แก่ การรักษาความปลอดภัยทางโลกไซเบอร์ หรือ Cyber Security นั่นเอง', 'upload/49406-cyber.jpeg', '2023-02-07 13:18:38'),
(23, 'test', '<ul>\r\n	<li>tetetfsfsf</li>\r\n	<li>sfsfsf</li>\r\n</ul>\r\n', 'upload/24762-user-(1).png', '2023-02-16 15:55:28'),
(24, 'test', '<ul>\r\n	<li>test</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>fdsfsf</li>\r\n</ol>\r\n', 'upload/32287-user-(1).png', '2023-02-17 10:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `Category_ID` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`Category_ID`, `category_name`, `category_img`) VALUES
(1, 'มือถือและอุปกรณ์เสริม', 'upload/52488-186239.png'),
(2, 'คอมพิวเตอร์และแล็ปท็อป', 'upload/24923-laptop.png'),
(4, 'แท็ปเล็ตและไอแพด', 'upload/53799-ipad.png'),
(5, 'นาฬิกา', 'upload/3520-wristwatch.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time_work` varchar(100) NOT NULL,
  `time_special` varchar(100) NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`id`, `shop_name`, `address`, `phone`, `email`, `time_work`, `time_special`, `logo`) VALUES
(1, 'Big Shop', 'yasothon', '0925562767', 'weeraphong61045@gmail.com', 'วันจันทร์ - วันเสาร์ เวลา 08:00 - 23:00', 'วันอาทิตย์', 'upload/96150-ภาพถ่ายหน้าจอ-2566-02-12-เวลา-19.05.42.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_delivery`
--

CREATE TABLE `tb_delivery` (
  `Delivery_ID` int(11) NOT NULL,
  `track` varchar(100) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(200) CHARACTER SET latin1 NOT NULL,
  `money_img` text,
  `transport` varchar(255) DEFAULT NULL,
  `number_transport` varchar(200) DEFAULT NULL,
  `delivery_date` varchar(150) DEFAULT NULL,
  `by_date` varchar(100) NOT NULL,
  `total_price` int(110) DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_delivery`
--

INSERT INTO `tb_delivery` (`Delivery_ID`, `track`, `User_ID`, `name`, `address`, `tel`, `email`, `money_img`, `transport`, `number_transport`, `delivery_date`, `by_date`, `total_price`, `status`) VALUES
(1, '#587229', 15, 'test', 'setest', 'test', 'weeraphong61045@gmail.com', NULL, NULL, NULL, NULL, '2023-03-16 10:28:00', 740, 2),
(2, '#813221', 14, 'test', 'test', '932894', 'test@gmail.com', NULL, NULL, NULL, NULL, '2023-04-18 20:07:32', 38190, 1),
(3, '#732548', 14, 'test', 'test', '932894', 'test@gmail.com', NULL, NULL, NULL, NULL, '2023-04-18 20:07:32', 38190, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_express`
--

CREATE TABLE `tb_express` (
  `id` int(11) NOT NULL,
  `express_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_express`
--

INSERT INTO `tb_express` (`id`, `express_name`) VALUES
(1, 'Kerry Express'),
(2, 'ไปรษณีย์ไทย'),
(3, 'BEST EXPRESS'),
(4, 'Ninja Van'),
(5, 'J&T EXPRESS'),
(6, 'FLASH EXPRESS'),
(7, 'SCG EXPRESS'),
(8, 'DHL EXPRESS'),
(10, 'LALAMOVE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_link`
--

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL,
  `facebook` text NOT NULL,
  `line` text NOT NULL,
  `instagram` text NOT NULL,
  `twitter` text NOT NULL,
  `youtube` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_link`
--

INSERT INTO `tb_link` (`id`, `facebook`, `line`, `instagram`, `twitter`, `youtube`) VALUES
(1, 'https://www.facebook.com/werupong.surapo/', 'https://liff.line.me/1645278921-kWRPP32q/?accountId=031lbztd', 'https://www.instagram.com/invites/contact/?i=1hk9kd8gzj5et&utm_content=85x89hn5.co', 'testsdfsf', 'https://www.youtube.com/channel/UCPx75L2jIIqtYWv9wr_v8Jg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `Order_ID` int(11) NOT NULL,
  `Delivery_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Product_ID` int(50) NOT NULL,
  `product` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `freight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`Order_ID`, `Delivery_ID`, `User_ID`, `Product_ID`, `product`, `qty`, `price`, `freight`) VALUES
(1, 2, 14, 6, 'Aser Gaming', 1, '37990', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `Product_ID` int(11) NOT NULL,
  `img` text CHARACTER SET utf8,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `price` int(100) NOT NULL,
  `price_discount` int(100) DEFAULT NULL,
  `delivery` int(10) NOT NULL,
  `count` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Sub_ID` int(11) NOT NULL,
  `Type_ID` int(11) NOT NULL,
  `hotDeals` int(1) NOT NULL DEFAULT '0',
  `time_hotDeal` varchar(20) DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`Product_ID`, `img`, `name`, `detail`, `price`, `price_discount`, `delivery`, `count`, `Category_ID`, `Sub_ID`, `Type_ID`, `hotDeals`, `time_hotDeal`, `status`) VALUES
(3, 'upload/30420-apple20w.jpeg', 'สายชาร์จ Apple 20 W', 'สายชาร์จ Apple 20 W', 690, 0, 50, 29, 1, 14, 1, 0, NULL, 1),
(4, 'upload/11030-apple5w.jpeg', 'สายชาร์จ Apple 5 W', 'สายชาร์จ Apple 5 W', 690, 0, 50, 40, 1, 14, 1, 0, NULL, 1),
(5, 'upload/99091-aser.webp', 'Aser', 'Brand	ACER\r\nModel	\r\nAspire A314-35-P3DE/T00H\r\n\r\nProcessor	\r\nIntel Pentium N6000 (1.1GHz up to 3.3GHz, 4MB Smart Cache)\r\n\r\nChipset	\r\nN/A\r\n\r\nGraphics	\r\nIntel UHD Graphics (Integrated Graphics)\r\n\r\nDisplay Screen	\r\n14.0\" 1920x1080 (FHD), IPS, Acer ComfyView\r\n\r\nMain Memory	\r\n4GB (4GB x1) DDR4\r\n\r\nMemory Slot	\r\nN/A\r\n\r\nMax Memory	\r\nN/A\r\n\r\nStorage	\r\n500GB 5400RPM Hard Drive\r\n\r\nStorage Slot	\r\n1x 2.5\" SATA HDD\r\n\r\nOptical Disk Drive	\r\nNone\r\n\r\nWeb Camera	\r\nAcer webcam 640 x 480 resolution\r\n\r\nSound Technology	\r\nHD Audio\r\n\r\nAudio Jack	\r\n3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n\r\nSpeaker	\r\nYes\r\n\r\nNetwork	\r\n10/100/1000 LAN\r\n\r\nWireless	\r\nWireless 802.11ac\r\n\r\nBluetooth	\r\nBluetooth 5.0\r\n\r\nPorts	\r\n2x USB 3.2 Gen 1 ports\r\n1x USB 2.0\r\n1x HDMI® 2.0 port with HDCP support\r\n\r\nCardReader	\r\nNone\r\n\r\nPower Adapter	\r\nYes\r\n\r\nBattery	\r\n2-Cell, 36.7Wh\r\n\r\nOS	\r\nWindows 10 Home (64-bit)\r\n\r\nMaterial	\r\nN/A\r\n\r\nKeyboard Type	\r\nENG/TH Keyboards\r\n\r\nBacklit	\r\nN/A\r\n\r\nTouchpad	\r\nYes\r\n\r\nFinger Print	\r\nN/A', 14000, 0, 150, 4, 2, 7, 1, 0, NULL, 1),
(6, 'upload/34069-asergaming.jpeg', 'Aser Gaming', 'CPU Intel Core i7-11800H (2.30 GHz 24M Cache, Up to 4.60 GHz)\r\nColor Shale Black\r\nRAM 8GB DDR4\r\nHarddisk  SSD M.2 512GB PCIe NVMe\r\nOptical No\r\nLAN/ Wifi Killer Wi-Fi 6 AX 1650i with 2x2 MU-MIMO Technology, Supports Bluetooth 5.1\r\nGraphic NVIDIA GeForce RTX 3050Ti 4GB\r\nPort -\r\nDisplay Size 15.6\" (1920 x 1080) Full HD IPS 144Hz slim bezel ,3 ms Overdrive,72% NTSC\r\nOS Windows 10 Home 64-bit\r\nOther  -\r\nWarranty 3 Years Onsite by ACER', 37990, 0, 200, 1, 2, 7, 4, 0, NULL, 1),
(7, 'upload/27379-lanovo.webp', 'Lanovo YOGA 7', 'Lenovo YOGA 7 แพลตฟอร์ม Intel gen12 ให้คุณได้รับประสบการณ์ที่เต็มตากว่าด้วยจอ14\" ขอบจอสุดบาง จะดูหนังก็ฟินด้วยภาพสีสันสุดสดใส กับหน้าจอ 2.8k ทั้งยังมาพร้อม กับปากกา ที่จะสามารถใช้งานได้อย่างแม่นยำ', 39990, 0, 200, 19, 2, 8, 1, 0, NULL, 1),
(8, 'upload/7577-a7lite.jpeg', 'Galaxy Tab A7 Lite ', 'Galaxy Tab A7 Lite ให้คุณได้ทั้งความสะดวกสบายในการพกพาและใช้งาน และยังดูดีมีสไตล์ในรูปทรงที่บางเฉียบ เพียง 8.0 มม. และน้ำหนักเพียง 371 กรัม จึงทำให้พกไว้ในกระเป๋าของคุณได้อย่างง่ายดายและพกพาไปได้ทุกที่ด้วยน้ำหนักที่เบามาก นอกจากนี้ตัวเครื่องยังมาพร้อม 2 เฉดสี คือสี Gray และสี Silver ที่ให้คุณเลือกสีที่เหมาะกับตัวคุณ', 5990, 0, 100, 4, 4, 11, 1, 0, NULL, 1),
(9, 'upload/24025-taba7.jpeg', 'Samsung Galaxy Tab A7 ', 'One UI 2.5 based on Android 10.0\r\nCPU : Qualcomm : Snapdragon 662 Octa Core\r\nความเร็ว : 2 GHz\r\nGPU : Adreno 610\r\nRAM 3GB, ROM 64GB , 0KB : UFS 0, microSD สูงสุด 1 TB', 8490, 0, 100, 10, 4, 11, 1, 0, NULL, 1),
(10, 'upload/27984-ipadpro.webp', 'iPad Pro', 'iPad Pro มาพร้อมชิป Apple M1 อันทรงพลังเพื่ออีกขั้นของประสิทธิภาพและแบตเตอรี่ที่ใช้งานได้ตลอดวัน3 จอภาพ Liquid Retina บน iPad Pro ขนาด 11 นิ้ว ที่นอกจากจะสวยสดงดงามแล้วยังพกพาสุดสะดวกอีกด้วย\r\n\r\nชิป Apple M1 เพื่ออีกขั้นของประสิทธิภาพ\r\nจอภาพ Liquid Retina ขนาด 11 นิ้ว\r\nเทคโนโลยี ProMotion, การแสดงผลแบบ True Tone\r\nระบบกล้อง TrueDepth พร้อมกล้องอัลตร้าไวด์\r\nกล้องไวด์ ความละเอียด 12MP, กล้องอัลตร้าไวด์ ความละเอียด 10MP\r\nเชื่อมต่อได้เสมอด้วย Wi-Fi 6 ที่เร็วสุดแรง', 66400, 0, 150, 5, 4, 10, 4, 0, NULL, 1),
(11, 'upload/24143-ipadmini.jpeg', 'iPad mini 6', 'iPad mini 6 ใหม่ มาในดีไซน์แบบหน้าจอทั้งหมด พร้อมจอภาพ Liquid Retina ขนาด 8.3 นิ้ว ชิป A15 Bionic อันทรงพลังและ Neural Engine กล้องหน้าอัลตร้าไวด์ ความละเอียด 12MP พร้อมคุณสมบัติ \"จัดให้อยู่ตรงกลาง\" การเชื่อมต่อแบบ USB-C อีกทั้งยังจดโน้ต ทำเครื่องหมายในเอกสาร หรือถ่ายทอดไอเดียสุดยิ่งใหญ่ได้ด้วย Apple Pencil (รุ่นที่ 2) ที่ยึดติดกับตัวเครื่องไว้ด้วยแม่เหล็กและชาร์จแบบไร้สาย\r\n\r\nจอภาพ Liquid Retina ขนาด 8.3 นิ้ว\r\nชิป A15 Bionic พร้อม Neural Engine\r\nTouch ID เพื่อการยืนยันตัวตนที่ปลอดภัย\r\nกล้องหลังไวด์ ความละเอียด 12MP\r\nกล้องหน้าอัลตร้าไวด์ ความละเอียด 12MP\r\nลำโพงสเตอริโอแนวนอน', 31900, 0, 150, 10, 4, 10, 1, 0, NULL, 1),
(12, 'upload/33849-ipad-gen9.webp', 'Ipad Gen 9 256 + Cellular', 'iPad มาพร้อมจอภาพ Retina ขนาด 10.2 นิ้ว ที่สวยงาม ชิป A13 Bionic อันทรงพลัง และกล้องหน้าอัลตร้าไวด์พร้อมคุณสมบัติจัดให้อยู่ตรงกลาง เรียกว่าพร้อมสำหรับทำงาน เล่น สร้างสรรค์ เรียนรู้ ต่อติดกับทุกคน และอีกมากมาย ทั้งหมดนี้ในราคาที่ไม่น่าเชื่อ\r\n\r\nจอภาพ Retina ขนาด 10.2 นิ้ว\r\nชิป A13 Bionic พร้อม Neural Engine\r\nกล้องหลังไวด์ ความละเอียด 8MP\r\nกล้องหน้าอัลตร้าไวด์ความละเอียด 12MP\r\nTouch ID เพื่อการยืนยันตัวตนที่ปลอดภัย\r\nWi-Fi มาตรฐาน 802.11ac\r\nไปต่อได้ยาวๆ ด้วยแบตเตอรี่ที่ใช้งานได้ตลอดวัน\r\nใช้งานได้กับ Apple Pencil (รุ่นที่ 1) \r\n', 21400, 0, 150, 4, 4, 10, 1, 0, NULL, 1),
(14, 'upload/10794-macpro.jpeg', 'Macbook pro', 'Macbook pro', 44000, 0, 150, 3, 2, 6, 1, 0, NULL, 1),
(16, 'upload/65142-macbookpro.jpeg', 'Macbook air', 'Macbook M1', 34900, 0, 150, 4, 2, 6, 1, 0, NULL, 1),
(18, 'upload/84069-iphone14pro.webp', 'Iphone 14 Pro', 'จอภาพ Super Retina XDR ขนาด 6.1 นิ้ว \r\nDynamic Island วิธีใหม่ที่มหัศจรรย์ในการโต้ตอบกับ iPhone\r\nกล้องหลักความละเอียด 48MP ที่มีความละเอียดมากขึ้นสูงสุด 4 เท่า\r\nโหมดภาพยนตร์ที่วันนี้มาในแบบ Dolby Vision ระดับ 4K สูงสุด 30 fps\r\nโหมดแอ็คชั่นเพื่อวิดีโอแบบถือถ่ายที่นิ่งและไหลลื่ \r\nแบตเตอรี่ที่ใช้งานได้ตลอดวันและเล่นวิดีโอได้นานสูงสุด 23 ชั่วโมง\r\nA16 Bionic ที่สุดแห่งชิปสมาร์ทโฟน ระบบเซลลูลาร์ 5G ที่เร็วสุดแรง', 41900, 40500, 150, 10, 1, 1, 2, 0, NULL, 1),
(19, 'upload/47107-iphone-13-mini.webp', 'iphone 13', 'จอภาพ Super Retina XDR ขนาด 6.1 นิ้ว\r\nโหมดภาพยนตร์เพิ่มมิติความชัดตื้นและสลับจุดโฟกัสในวิดีโอของคุณโดยอัตโนมัติ\r\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องไวด์และอัลตร้าไวด์ ความละเอียด 12MP\r\nกล้องหน้า TrueDepth ความละเอียด 12MP\r\nชิป A15 Bionic เพื่อประสิทธิภาพที่เร็วสุดขั้ว\r\nเล่นวิดีโอ นานสูงสุด 19 ชั่วโมง\r\nดีไซน์ที่ทนทานพร้อม Ceramic Shield', 42900, 38500, 1, 1, 1, 1, 2, 0, NULL, 1),
(20, 'upload/25300-iphone-14pro.webp', 'iphone 14 Pro', 'จอภาพ Super Retina XDR ขนาด 6.1 นิ้ว \r\nDynamic Island วิธีใหม่ที่มหัศจรรย์ในการโต้ตอบกับ iPhone\r\nกล้องหลักความละเอียด 48MP ที่มีความละเอียดมากขึ้นสูงสุด 4 เท่า\r\nโหมดภาพยนตร์ที่วันนี้มาในแบบ Dolby Vision ระดับ 4K สูงสุด 30 fps\r\nโหมดแอ็คชั่นเพื่อวิดีโอแบบถือถ่ายที่นิ่งและไหลลื่ \r\nแบตเตอรี่ที่ใช้งานได้ตลอดวันและเล่นวิดีโอได้นานสูงสุด 23 ชั่วโมง\r\nA16 Bionic ที่สุดแห่งชิปสมาร์ทโฟน ระบบเซลลูลาร์ 5G ที่เร็วสุดแรง', 41900, 40500, 150, 18, 1, 1, 2, 0, NULL, 1),
(21, 'upload/56954-iphone-13-mini.webp', 'Iphone 13 mini', 'จอภาพ Super Retina XDR ขนาด 5.4 นิ้ว\r\nโหมดภาพยนตร์เพิ่มมิติความชัดตื้นและสลับจุดโฟกัสในวิดีโอของคุณโดยอัตโนมัติ\r\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องไวด์และอัลตร้าไวด์ ความละเอียด 12MP\r\nกล้องหน้า TrueDepth ความละเอียด 12MP  \r\nชิป A15 Bionic เพื่อประสิทธิภาพที่เร็วสุดขั้ว\r\nเล่นวิดีโอ นานสูงสุด 17 ชั่วโมง', 24900, 0, 150, 10, 1, 1, 4, 0, NULL, 1),
(22, 'upload/30686-iphone12.webp', 'Iphone 12', 'Iphone 12', 24900, 0, 150, 8, 1, 1, 4, 0, NULL, 1),
(23, 'upload/75881-iphone14.webp', 'iphone 14 Plus', 'จอภาพ Super Retina XDR ขนาด 6.7 นิ้ว\r\nระบบกล้องสุดล้ำเพื่อภาพถ่ายที่ดียิ่งขึ้นในทุกสภาพแสง\r\nโหมดภาพยนตร์ที่วันนี้มาในแบบ Dolby Vision ระดับ 4K สูงสุด 30 fps\r\nโหมดแอ็คชั่นเพื่อวิดีโอแบบถือถ่ายที่นิ่งและไหลลื่น\r\nแบตเตอรี่ที่ใช้งานได้ตลอดวันและเล่นวิดีโอได้นานสูงสุด 26 ชั่วโมง\r\nชิป A15 Bionic พร้อม GPU แบบ 5-core เพื่อประสิทธิภาพที่เร็วสุดขั้ว \r\nระบบเซลลูลาร์ 5G ที่เร็วสุดแรง', 50900, 0, 149, 30, 1, 1, 4, 0, NULL, 1),
(24, 'upload/47141-vivo.png', 'Vivo', 'Vivo', 5900, 0, 150, 10, 1, 2, 1, 0, NULL, 1),
(25, 'upload/93870-opporezo7.webp', 'Oppo', 'Oppo', 4898, 0, 150, 10, 1, 3, 1, 0, NULL, 1),
(26, 'upload/46033-s22.webp', 'samsung s22', 'สมาร์ทโฟน (โทรศัพท์มือถือพร้อมระบบปฏิบัติการ)\r\nจอแสดงผล Dynamic AMOLED 2X 24-bit (16 ล้านสี)\r\n- จอแสดงผล HDR 10+\r\n- กล้องหน้าฝังบนจอ (Infinity O)\r\n- จอแสดงผลมีรูสำหรับกล้องหน้า (Punch-Hole Display)\r\n- กว้าง 6.1 นิ้ว (แนวทะแยง)\r\n- ความละเอียด 1080 x 2340 พิกเซล\r\n(422 ppi)\r\n- อัตราการสัมผัสหน้าจอ 120 เฮิรตซ์ (Refresh Rate 120Hz)\r\n- Always on display', 29900, 0, 150, 10, 1, 4, 4, 0, NULL, 1),
(27, 'upload/83243-xad.jpeg', 'xiaomi Pad 5 Pro', 'xiaomi Pad 5 Pro', 22400, 0, 148, 6, 4, 12, 1, 0, NULL, 1),
(28, 'upload/73748-iphone12pro.jpeg', 'Iphone 12 Pro', 'จอภาพ Super Retina XDR\r\nจอภาพ OLED ทั้งหน้าจอ ขนาด 6.1 นิ้ว (แนวทแยง)\r\nความละเอียด 2532 x 1170 พิกเซลที่ 460 ppi\r\nจอภาพ HDR\r\nการแสดงผลแบบ True Tone\r\nขอบเขตสีกว้าง (P3)\r\nการแตะค้างแบบสั่น\r\nอัตราส่วนคอนทราสต์ 2,000,000:1 (ทั่วไป)\r\nความสว่างสูงสุด 800 นิต (ทั่วไป) และความสว่างสูงสุด 1,200 นิต (HDR)\r\nเคลือบสารกันรอยนิ้วมือ\r\nรองรับการแสดงผลหลายภาษาและตัวอักษรหลายแบบพร้อมกัน', 36900, 0, 150, 9, 1, 1, 4, 0, NULL, 1),
(29, 'upload/81712-ultra_gps.jpeg', 'Apple watch Ultra', 'ซ็นเซอร์วัดระยะ (Ultrasonic Sensor)\r\nเซ็นเซอร์ตรวจวัดแสง (RGB Light Sensor)\r\nเซ็นเซอร์วัดหัวใจแบบออปติคอล (Optical Heart Rate Sensor)\r\nเซ็นเซอร์วัดหัวใจแบบไฟฟ้า (Electrical heart sensor)\r\nไจโรสโคป (ควบคุมการหมุนและการทรงตัว) (Gyroscope)\r\nตรวจจับการเคลื่อนไหว (Accelerometer)\r\nตรวจจับคลื่นแม่เหล็กไฟฟ้า (Electromagnetic Wave Sensor)\r\nมาตรวัดความดันอากาศ (Barometer | Air Pressure Sensor)\r\nเซ็นเซอร์วัดความเร็ว (Speed sensors)', 31900, 0, 150, 10, 5, 15, 1, 0, NULL, 1),
(30, 'upload/39124-ultra_gps2.jpeg', 'Apple watch Ultra', 'เซ็นเซอร์วัดระยะ (Ultrasonic Sensor)\r\nเซ็นเซอร์ตรวจวัดแสง (RGB Light Sensor)\r\nเซ็นเซอร์วัดหัวใจแบบออปติคอล (Optical Heart Rate Sensor)\r\nเซ็นเซอร์วัดหัวใจแบบไฟฟ้า (Electrical heart sensor)\r\nไจโรสโคป (ควบคุมการหมุนและการทรงตัว) (Gyroscope)\r\nตรวจจับการเคลื่อนไหว (Accelerometer)\r\nตรวจจับคลื่นแม่เหล็กไฟฟ้า (Electromagnetic Wave Sensor)\r\nมาตรวัดความดันอากาศ (Barometer | Air Pressure Sensor)\r\nเซ็นเซอร์วัดความเร็ว (Speed sensors)', 31800, 0, 148, 20, 5, 15, 1, 0, NULL, 1),
(31, 'upload/56619-se.jpeg', 'Apple watch SE', 'Apple watch SE', 9900, 8999, 150, 5, 5, 15, 2, 0, NULL, 1),
(32, 'upload/21075-332382512_577961797725705_7209815741837020172_n.png', 'test', 'test', 400, 0, 197, 34, 1, 1, 2, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rating`
--

CREATE TABLE `tb_rating` (
  `id_rating` int(11) NOT NULL,
  `Product_ID` int(100) NOT NULL,
  `User_ID` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `Rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub_category`
--

CREATE TABLE `tb_sub_category` (
  `Sub_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `sub_name` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sub_category`
--

INSERT INTO `tb_sub_category` (`Sub_ID`, `Category_ID`, `sub_name`) VALUES
(1, 1, 'Apple'),
(2, 1, 'Vivo'),
(3, 1, 'Oppo'),
(4, 1, 'Samsung'),
(6, 2, 'Apple'),
(7, 2, 'Aser'),
(8, 2, 'Lenovo'),
(9, 2, 'Asus'),
(10, 4, 'Apple'),
(11, 4, 'Samsung'),
(12, 4, 'xiaomi'),
(13, 1, 'สายชาร์จ'),
(14, 1, 'หัวสายชาร์จ'),
(15, 5, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tokenline`
--

CREATE TABLE `tb_tokenline` (
  `id` int(11) NOT NULL,
  `line_token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_tokenline`
--

INSERT INTO `tb_tokenline` (`id`, `line_token`, `created_at`) VALUES
(1, 'EGUQButlBysapnuGO44jKpx3biPIHvJKBy2HlLksnw3', '2023-02-14 09:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_type`
--

CREATE TABLE `tb_type` (
  `Type_ID` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_type`
--

INSERT INTO `tb_type` (`Type_ID`, `type`, `color`) VALUES
(1, 'ใหม่', 'green'),
(2, 'ลดราคา', '#ee1717'),
(4, 'ขายดี', '#9c41e6');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `User_ID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `user_username` varchar(200) NOT NULL,
  `user_pass` text NOT NULL,
  `user_img` varchar(255) DEFAULT 'upload/avatar.png',
  `user_type` int(1) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`User_ID`, `username`, `user_username`, `user_pass`, `user_img`, `user_type`, `created_at`, `status`) VALUES
(14, 'Adminss', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'upload/73620-user.png', 999, '2023-02-14 18:27:35', 1),
(15, 'user22@gmail.com', 'user22@gmail.com', 'user22@gmail.com', 'upload/avatar.png', 0, '2023-03-16 10:26:20', 1),
(16, 'testtt@gmail.com', 'testtt@gmail.com', 'aa50e886adeb1ca740215993f67e56be', 'upload/avatar.png', 0, '2023-03-16 17:37:54', 1),
(17, 'testtt1@gmail.com', 'testtt1@gmail.com', '99a763fe612e2249641fdbc556b7604f', 'upload/avatar.png', 0, '2023-03-16 17:39:38', 1),
(18, 'check_pass@gmail.com', 'check_pass@gmail.com', 'ae906ad3346ba72824215adb9357bd34', 'upload/avatar.png', 0, '2023-03-16 17:40:47', 1),
(19, 'user1', 'user1@gmail.com', '59029276955677351421b3ff6bf5ee4c', 'upload/avatar.png', 0, '2023-04-24 14:41:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_bank`
--

CREATE TABLE `tb_user_bank` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `bank_number` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_bank`
--

INSERT INTO `tb_user_bank` (`id`, `bank_id`, `bank_name`, `bank_number`, `status`) VALUES
(3, 1, 'วีระพงษ์ สุราโพธิ์', '6608873980', 1),
(4, 3, 'วีระพงษ์ สุราโพธิ์', '020317422366', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_contact`
--

CREATE TABLE `tb_user_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user_contact`
--

INSERT INTO `tb_user_contact` (`id`, `name`, `email`, `phone`, `title`, `description`, `created_at`) VALUES
(1, 'weeraphong', 'weeraphong@gmail.com', '0925562767', 'ติดต่อโมษณา', 'ติดต่อโมษณา', '2023-02-04 04:38:30'),
(2, 'weeraphong', 'weeraphong@gmail.com', '0925562767', 'ติดต่อโมษณา', 'test', '2023-02-04 04:38:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_advert`
--
ALTER TABLE `tb_advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_bank`
--
ALTER TABLE `tb_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_delivery`
--
ALTER TABLE `tb_delivery`
  ADD PRIMARY KEY (`Delivery_ID`);

--
-- Indexes for table `tb_express`
--
ALTER TABLE `tb_express`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_link`
--
ALTER TABLE `tb_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD PRIMARY KEY (`id_rating`);

--
-- Indexes for table `tb_sub_category`
--
ALTER TABLE `tb_sub_category`
  ADD PRIMARY KEY (`Sub_ID`);

--
-- Indexes for table `tb_tokenline`
--
ALTER TABLE `tb_tokenline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_type`
--
ALTER TABLE `tb_type`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `tb_user_bank`
--
ALTER TABLE `tb_user_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_contact`
--
ALTER TABLE `tb_user_contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_advert`
--
ALTER TABLE `tb_advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_bank`
--
ALTER TABLE `tb_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_blog`
--
ALTER TABLE `tb_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_delivery`
--
ALTER TABLE `tb_delivery`
  MODIFY `Delivery_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_express`
--
ALTER TABLE `tb_express`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_link`
--
ALTER TABLE `tb_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_rating`
--
ALTER TABLE `tb_rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sub_category`
--
ALTER TABLE `tb_sub_category`
  MODIFY `Sub_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_tokenline`
--
ALTER TABLE `tb_tokenline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_type`
--
ALTER TABLE `tb_type`
  MODIFY `Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_user_bank`
--
ALTER TABLE `tb_user_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user_contact`
--
ALTER TABLE `tb_user_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
