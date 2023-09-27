-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 07:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvd_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `aid` int(3) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `movie` varchar(50) NOT NULL,
  `telephone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`aid`, `aname`, `alastname`, `movie`, `telephone`) VALUES
(1, 'Tim', 'Robbins', 'The Shawshank Redemption', '0895467250'),
(2, 'Marlon', 'Brando', 'The Godfather', '0994853172'),
(3, 'Christian', 'Bale', 'The Dark Knight', '0964582301'),
(4, 'Tom', 'Hanks', 'Forrest Gump', '0975846325'),
(5, 'Keanu', 'Reeves', 'The Matrix', '0918546782');

-- --------------------------------------------------------

--
-- Table structure for table `customer_buy`
--

CREATE TABLE `customer_buy` (
  `cname` varchar(20) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `movie_buy` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `email`, `telephone`) VALUES
(11, 'Kittin', 'Laimake', 'bil-bil@hotmail.co.th', '0882933899'),
(12, 'Varakornkich', 'Namkhem', 'varakorn@gmail.com', '0988424394'),
(13, 'Nakarin', 'Phichaichuang', 'bluezamostpower@mail.com', '0947941740'),
(14, 'Chanin', 'Imjinda', 'lionloli@gmail.co.th', '0943178795'),
(15, 'Kanoksak', 'Klinfung', 'lnwza007@mail.co.th', '0615845402');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `detail` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `genre`, `date`, `detail`) VALUES
(1, 'The Shawshank Redemption', 'Drama', '1994-09-23', 'แอนดี้ ดูเฟรนส์ นายธนาคารหนุ่มที่ถูกจับในข้อหาฆาตกรรมภรรยาและชายชู้เพราะฤทธิ์ของแอลกอฮอล์ แอนดี้มั่นใจว่าเขาไม่ได้เป็นคนกระทำจริง แต่หลักฐานทั้งหมดชี้นำมาที่เขา เขาจึงต้องรับโทษจำคุกตลอดชีวิตในเรือนจำชอว์แชงค์'),
(2, 'The Godfather', 'Crime/Drama', '1972-03-14', 'เหตุการณ์ในภาพยนตร์เริ่มขึ้นในปี 1945 ดอน วีโต คอร์เลโอเน เจ้าพ่อมาเฟียลือชื่อ ซึ่งมีหน้าที่เสมือนที่พึ่งพิงของผู้คนภายใต้สมญานาม \"ก็อดฟาเธอร์\" ลูกบุญธรรมเขาต้องการแสดงหนัง แต่ถูกวอลซ์ผู้กำกับปฏิเสธและในวันรุ่งขึ้นวอลซ์ตื่นขึ้นมาพบกับหัวม้าตัวโปรดของเขากองอยู่บนเตียง เปรียบเสมือนการขู่เตือนเอาชีวิตจากตระกูลคอร์เลโอเนและจอร์นนี่ก็ได้แสดงหนังในที่สุด'),
(3, 'The Dark Knight', 'Action/Crime', '2008-07-14', 'หลังจากที่แบทแมนร่วมมือกับสารวัตรเจมส์ กอร์ดอน ออกกวาดล้างเหล่าทรชนในเมืองก็อตแธมจนเป็นที่โจษจัน คุณภาพชีวิตเมืองก็อตแธมก็ดีขึ้นมาก แต่ก็ยังมีชาวเมืองบางส่วนที่ไม่ชอบใจกับการกระทำของแบทแมนเพราะดูเหมือนตั้งตนเป็นศาลเตี้ยพิพากษาคนร้าย อย่างไรก็ตาม ก็อตแธมก็ปรากฏวีรบุรษคนใหม่ที่เล่นตามกติกาของบ้านเมืองนั่นคือฮาร์วี่ย์ เดนท์ อัยการหนุ่มไฟแรงที่ไม่เกรงกลัวต่อผู้ร้ายหน้าไหน จนได้รับฉายาว่าเป็น \"อัศวินม้าขาวแห่งก็อตแธม\"'),
(4, 'Forrest Gump', 'Drama/Romance', '1994-06-23', 'ในช่วงสามทศวรรษแห่งความโกลาหล ฟอร์เรสท์ ดำเนินชีวิตผ่านกระแสช่วงเหตุการณ์ต่างๆที่ผันเขาจากคนร่างกายพิการไปเป็นดาราอเมริกันฟุตบอล จากวีรบุรุษในสงครามเวียดนามเป็นเศรษฐีธุรกิจเรือกุ้ง จากเกียรติยศแห่งทำเนียบขาวไปสู่อ้อมกอดของผู้ที่เขามีใจรักจริง ฟอร์เรสท์คือลักษณะรูปธรรมแห่งยุค คือความไร้เดียงสาในดินแดนอเมริกาที่กำลังสูญเสียความบริสุทธิ์ จิตใจของเขาตระหนักต่อสิ่งที่ไอคิวอันจำกัดของตัวเองไม่อำนวย ขอบข่ายศีลธรรมของเขาไม่เคยคลอนแคลน ชัยชนะทั้งหลายของเขากลายเป็นแรงบันดาลใจแก่เราทุกคน'),
(5, 'The Matrix', 'Action/Sci-Fi', '1999-03-24', 'เรื่องราวแนวไซเบอร์พังก์ของการล่มสลายทางเทคโนโลยีของมนุษยชาติ ซึ่งการสร้างปัญญาประดิษฐ์นำไปสู่การแข่งขันของเครื่องจักรที่ตระหนักในตนเอง โดยกักขังมนุษยชาติเอาไว้ในระบบความเป็นจริงเสมือนที่มีชื่อว่า เดอะ เมทริกซ์ เพื่อเอาไว้เป็นแหล่งพลังงาน ในบางโอกาส ผู้ต้องขังบางคนสามารถหลุดพ้นจากระบบและถูกไล่ล่าโดยปัญญาประดิษฐ์ทั้งภายในและภายนอก เพราะถือว่าเป็นภัยคุกคาม\r\nภาพยนตร์ชุดมีความโดดเด่นในเรื่องการใช้ฉากโลดโผนที่ออกแบบอย่างหนักและเอฟเฟกต์สโลว์โมชัน \"เวลากระสุน\" ซึ่งเป็นการปฏิวัติภาพยนตร์โลดโผนที่ตามมาในภายหลัง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `customer_buy`
--
ALTER TABLE `customer_buy`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
