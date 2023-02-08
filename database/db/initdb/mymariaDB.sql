-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 06, 2023 at 04:34 PM
-- Server version: 10.10.2-MariaDB-1:10.10.2+maria~ubu2204
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymariaDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text DEFAULT NULL,
  `lName` text DEFAULT NULL,
  `modifydate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`adminID`, `Email`, `passWord`, `fName`, `lName`, `modifydate`) VALUES
(1, 'admin', '$2b$10$8E6YRLLDoN7k5HV7JGXMVetIS/XGRleesYCDFYhgWHt74OZks/nXC', 'admin', NULL, '1/26/2023'),
(35, 'chonlatee1234@gmail.com', '$2b$10$68kXhJY9OIUNDVMyRiSzmOH5kv.45ZTRj7MJzIeKb5waUoc8.ebiu', 'ชลธี', 'คำลือ', '2/4/2023');

-- --------------------------------------------------------

--
-- Table structure for table `Disease`
--

CREATE TABLE `Disease` (
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `InfoDisease` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProtectInfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ImageName` text NOT NULL,
  `DiseaseNameEng` text NOT NULL,
  `Modifydate` text DEFAULT NULL,
  `colorShow` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Disease`
--

INSERT INTO `Disease` (`DiseaseID`, `DiseaseName`, `InfoDisease`, `ProtectInfo`, `ImageName`, `DiseaseNameEng`, `Modifydate`, `colorShow`) VALUES
(23, 'โรคใบด่าง', 'ลักษณะอาการของโรค อ้อยที่เป็นโรคจะมีปริมาณคลอโรฟิลล์ในใบลดลงทำให้ใบอ้อยด่างเป็นรอยขีดสั้น ๆ สีเขียวอ่อนสลับกับสีเขียวเข้มทั่วทั้งใบ เมื่อส่องดูใบกับแสงแดด จะเห็นรอยด่างชัดเจน อาการต่างๆ ปรากฏบนใบอ่อนเห็นชัดเจนกว่าที่ใบแก่ ในพันธุ์ที่อ่อนแอต่อโรคอาจปรากฏรอยขีดด่างบนลำอ้อยด้วย การเจริญลดลง ลำอ้อยเล็กลีบลง', 'คัดเลือกอ้อยที่สมบูรณ์ไม่เป็นโรคสำหรับใช้เป็นท่อนพันธุ์ หลีกเลี่ยงการปลูกอ้อยพันธุ์ที่อ่อนแอต่อโรคเป็นพื้นที่กว้างหลีกเลี่ยงการปลูกพืชที่อาจเป็นพืชอาศัยหรือพืชอาศัยสลับของเชื้อโรคหรือเป็นพืชอาหารของเพลี้ยอ่อน เช่น ข้าวโพดหวาน เพราะอาจมีการถ่ายทอดโรคสลับกับอ้อย', 'IMG (116).jpg', 'StreakMosaic', '1/31/2023', '#6495ED'),
(24, 'โรคใบจุดเหลือง', 'ลักษณะอาการโรค เกิดจุดเหลืองเล็ก ๆ ขนาดเท่าปลายเข็ม กระจาย ไปทั่วบนใบอ้อย ต่อมาจุดแผ่นเหลืองขยายขนาด รูปร่างแผลไม่แน่นอน แผลอาจเปลี่ยนเป็นสีแดง หรือน้ำตาลแดง เมื่อแผลแก่เห็นกลุ่มของก้านชูสปอร์และสปอร์ของเชื้อราสาเหตุลักษณะคล้ายฝุ่นผงสีเทาใน บริเวณกลางจุดแผล แผลอาจเกิดเดี่ยว ๆ หรือขยายจนขอบแผลติดกัน เป็นปื้นปกคลุมผิวใบอ้อย ในระยะต้นของการระบาดจำ นวนจุดแผลจะ หนาแน่นในใบล่างมากกว่าใบด้านบน แต่ในระยะที่โรคระบาดรุนแรง หรือพันธุ์อ้อยมีความอ่อนแอต่อโรค แผลจุดเหลืองจะปรากฏหนาแน่น บนใบทุกใบของลำอ้อย จนทำให้อ้อยมีใบเหลือง กอแห้งโทรม ไร่อ้อย ที่พบว่ามีการระบาดของโรคใบจุดเหลืองจะมองเห็นเป็นสีน้ำตาลทั้งไร่ ส่วนขอบแผลด้านหลังใบมักมีสปอร์ของเชื้อเห็นเป็นผงสีดำ ๆ อยู่เต็ม ในอ้อยแก่จะแตกหน่อบริเวณยอดอยู่เรื่อย ๆ', 'ควรบำรุงอ้อยให้มีการเจริญเติบโตดีจะลดความเสียหายอันเกิด จากโรคได้การใส่ปุ๋ยเดี่ยวอย่างไนโตรเจน โดยขาดฟอสฟอรัสและ โพแทสเซียมจะทำให้อ้อยมีความอ่อนแอต่อโรคใบจุดเหลือง', 'IMG (2).jpg', 'YellowLeaf', '2/4/2023', '#125008'),
(25, 'โรคราสนิม', 'ลักษณะอาการโรค เชื้อสาเหตุเริ่มเข้าทำลายใบอ่อน เห็นเป็นจุดเล็ก ๆ สีแดง ต่อมาจุดแผลจะพัฒนาขึ้นจนเห็นได้ชัดเจนเมื่อใบอ้อยเจริญเป็นใบแก่ แผลขยายยาวออก ขนาดแผลกว้าง 1-3 มิลลิเมตร ยาว 2-10 มิลลิเมตร เปลี่ยนเป็นสีน้ำตาลแดง แผลนูนขึ้นโดยเฉพาะด้านหลังใบโดยเชื้อราจะมีการสร้างสปอร์ในส่วนแผลนูนดังกล่าวที่บริเวณใต้ใบ เมื่อแผลแตกออกมีลักษณะแผลขรุขระ มีผงสปอร์สีน้ำตาลแดงลักษณะคล้ายสีสนิมจำนวนมาก พบมีแผลหนาแน่นบนใบล่างมากกว่าใบบนของลำ แผลเกิดกระจายทั่วไป ในพันธุ์อ้อยที่อ่อนแอต่อโรคแผลเกิดติดต่อกันจนอาจมองไม่เห็นผิวใบ ทำ ให้อ้อยสูญเสียพื้นที่การสังเคราะห์แสง โดยที่ใบอ้อยที่เป็นโรคจะแห้งกว่าก่อนที่ใบจะแก่ แผลงอ้อยแห้งโทรม การเจริญของอ้อยไม่สมบูรณ์แต่หากเป็นโรคไม่รุนแรงอ้อยจะยังสามารถเจริญเติบโตต่อไปได้โดยที่ผลผลิตไม่ลดลงมาก', 'เนื่องจากสปอร์ของเชื้อราสาเหตุโรคปลิวแพร่กระจายไปตามลมจึงควรหลีกเลี่ยงการปลูกพันธุ์อ้อยที่อ่อนแอต่อโรคเป็นพื้นที่กว้าง เพื่อไม่ให้โรคมีการระบาดรุนแรง เมื่อพบส่วนของอ้อยที่เป็นโรค ควรมีการเก็บออกจากแปลงอ้อยเผาทำลายทิ้งรวมทั้งกำจัดวัชพืชอันอาจเป็นพืชอาศัยสลับของเชื้อสาเหตุโรค', 'IMG (74).jpg', 'RustMold', '2/4/2023', '#E1F307'),
(26, 'โรคเส้นกลางใบแดง', 'ลักษณะอาการของโรค เส้นกลางใบเป็นแผลสีแดง กลางแผลอาจกลายเป็นสีเทามีจุดสีดำ', 'เตรียมดินให้มีการระบายน้ำดีปรับดินให้มีความเป็นกลางด้วย\r\nปูนขาว และไถพลิกตากดิน ตัดอ้อยแปลงที่เป็นโรคเข้าหีบทันทีเมื่อเข้าสู่ฤดูการหีบอ้อย และไม่ควรนำอ้อยจากแปลงที่เป็นโรคไปเป็นท่อนพันธุ์ต่อไป และหากพบว่า ในไร่อ้อยมีกออ้อยที่ตายมากกว่า 20% ให้รื้อแปลงและปลูกใหม่ด้วย พันธุ์อ้อยที่ต้านทาน', 'IMG_20220923_115959_036.jpg', 'RedLine', NULL, '#40E0D0'),
(27, 'โรคแส้ดำ', 'ลักษณะอาการของโรค อ้อยที่เป็นโรคจะแคระแกร็น แตกกอคล้ายตะไคร้\r\nใบแคบและเล็ก ลำผอมเรียวข้อสั้นเตี้ย ส่วนยอดสุดของหน่อหรือลำอ้อยเป็นโรค หรือยอดสุดของหน่ออ้อยที่งอกจากตาข้างของลำเป็นโรค มีลักษณะคล้ายแส้ยาวสีดำ ซึ่งเกิดจากการที่เชื้อราสร้างสปอร์สีดำจำนวนมาก รวมกันแน่นอยู่ภายในเนื้อเยื่อผิวของใบยอดสุดที่ม้วนอยู่ระยะแรกจะเห็นเยื่อบางๆ สีขาวหุ้มแส้ดำเอาไว้จนเมื่อสปอร์มีจำนวนมากจะดันเยื่อที่หุ้มอยู่ให้หลุดออก เห็นผงสปอร์สีดำจำนวนมากปกคลุมส่วนของใบยอดที่ม้วนแน่นจนมีลักษณะเป็นก้านแข็งยาว แส้ดำที่ปรากฏอาจตั้งตรง หรือม้วนเป็นวง กออ้อยที่เป็นโรครุนแรงจะแคระแกร็น แตกกอมาก ลักษณะเป็นพุ่มเหมือนกอหญ้า ใบเล็กแคบ อ้อยไม่ย่างปล้องถ้าเป็นรุนแรงมาก อ้อยอาจแห้งตายทั้งกอได้กอที่บางลำในกอเจริญเป็นลำ ลำอ้อยจะผอมลีบกว่าลำอ้อยปกติอาการปรากฏรุนแรงในอ้อยตอมากกว่าอ้อยปลูก', 'ไถแปลงอ้อยตอที่เป็นโรครุนแรงเพื่อป้องกันไม่ให้เป็นแหล่งของเชื้อแพร่ระบาดต่อไปในอ้อยปลูก ปลูกอ้อยด้วยท่อนพันธุ์อ้อนที่สมบูรณ์ไม่เป็นโรค เนื่องจากโรคแส้ดำสามารถถ่ายทอดผ่านทางท่อนพันธุ์ได้', 'img (19).jpg', 'BlackWhip', NULL, '#F33911'),
(28, 'โรคใบจุดวงแหวน', 'ลักษณะอาการโรค เริ่มแรกเป็นจุดสีเขียวชุ่มน้ำ ต่อมาเปลี่ยนเป็นสี เขียวเข้ม ขอบสีน้ำตาล หรือจุดสีน้ำตาลเล็ก ๆ ตรงกลางมีสีขาว ลักษณะ คล้ายรูปไข่ต่อมาแผลเปลี่ยนเป็นสีน้ำตาลแดง และมีสีเหลือง ล้อมรอบ (halo) เมื่อแผลขยายใหญ่ขึ้น ภายในแผลก็จะแห้งสีคล้ายสีฟางข้าว และขอบแผลเป็นสีน้ำตาล ถึงน้ำตาลเข้ม เมื่อเกิดแผลจำนวนมากติดต่อ กันใบจะไหม้เป็นบริเวณกว้าง แต่ยังมีขอบล้อมรอบแต่ละแผลอยู่เช่น เดิม ภายในแผลพบ fruiting bodiesของเชื้อเห็นเป็นจุดสีดำเล็ก ๆใบ ที่เป็นโรคก็จะแห้งตายและร่วงหล่น ส่วนมากจะแห้งตั้งแต่ปลายใบลง มา ขนาดของแผลอาจจะแตกต่างกันมากขึ้นอยู่กับพันธุ์ว่าทนทานต่อ โรคมากน้อยเพียงใด อ้อยบางพันธุ์ที่มีใบสีเขียวมาก สีของแผลจะเป็น สีน้ำตาลแดงซึ่งต่างกันเล็กน้อยกับพันธุ์ที่มีใบสีเขียวธรรมดา', 'กำจัดใบที่เป็นโรคออกและเผาทำลาย ปลูกพืชหมุนเวียนทุก ๆ 2 ปี โดยใช้ ข้าว ข้าวโพด ถั่ว หรือผักต่าง ๆ', 'IMG_20220923_120511_009 - Copy - Copy.jpg', 'RingLeaf', NULL, '#EC07C6'),
(29, 'โรคใบขีดสีน้ำตาล', 'ลักษณะอาการโรค อาการเริ่มต้นจะปรากฏบนใบอ่อน โดยเป็นจุดช้ำ ๆ เล็ก ๆ มีสีแดงตรงกลางหลังจากนั้นแผลจะขยายยาวขึ้นขนานกับเส้นใบและมีสีน้ำตาลปนแดงล้อมรอบด้วยรอยแผลสีเหลือง ความยาวแผลไม่แน่นอน มีตั้งแต่ 2-50 มิลลิเมตร กว้าง 2-4 มิลลิเมตร ถ้าอ้อยเป็นโรครุนแรงมาก แผลจะติดต่อกันทำให้ใบอ้อยแห้งตายได้เร็วขึ้น ในอ้อยพันธุ์ที่อ่อนแอต่อโรคจะทำให้เกิดอาการยอดเน่าได้เช่นกัน', 'เติมปุ๋ยโปแตสเซียมและฟอสฟอรัส ช่วยทำให้โรคนี้ลดน้อยลง', 'IMG_20220923_120053_004.jpg', 'LeafBurn', NULL, '#D35400'),
(30, 'โรคใบจุดสีดำ', 'ลักษณะอาการโรค เกิดจุดดำตามใบ จะเกิดขึ้นในพันธ์ที่อ่อนแอเป็นส่วนใหญ่ ทำให้ผลผลิตลดลง\r\nการแพร่ระบาด ลมพัดสปอร์ไป แพร่ระบาดหนักในช่วงฤดูฝน และพื้นที่ที่มีความชื้นสะสม', 'หลีกเลี่ยงการใช้ท่อนพันธ์ที่อ่อนแอต่อโรค', 'IMG (12).jpg', 'BlackDot', '2/4/2023', '#566573');

-- --------------------------------------------------------

--
-- Table structure for table `DiseaseReport`
--

CREATE TABLE `DiseaseReport` (
  `ReportID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserFname` text NOT NULL,
  `UserLname` text NOT NULL,
  `Latitude` text NOT NULL,
  `Longitude` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Detail` text DEFAULT NULL,
  `DiseaseID` int(11) NOT NULL,
  `DiseaseName` text NOT NULL,
  `DiseaseImage` text NOT NULL,
  `ResaultPredict` text NOT NULL,
  `DateReport` text NOT NULL,
  `AddressUser` text NOT NULL,
  `DiseaseNameEng` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DiseaseReport`
--

INSERT INTO `DiseaseReport` (`ReportID`, `UserID`, `UserFname`, `UserLname`, `Latitude`, `Longitude`, `PhoneNumber`, `Detail`, `DiseaseID`, `DiseaseName`, `DiseaseImage`, `ResaultPredict`, `DateReport`, `AddressUser`, `DiseaseNameEng`) VALUES
(1, 23, 'ชลธี', 'คำลือ', '13.5985037', '100.6873411', '0892074114', '', 30, 'โรคใบจุดสีดำ', '880521fa-49a1-4a6c-a50c-66f79e7020a5.jpeg', '27.967628479003906', '2/4/2023', '2540 หมู่ 1 ตำบล สำโรงเหนือ อำเภอ เมือง จังหวัด สมุทรปราการ', 'BlackDot'),
(2, 23, 'ชลธี', 'คำลือ', '13.5985037', '100.6873411', '0892074114', '', 26, 'โรคเส้นกลางใบแดง', 'cabe90c6-8821-496d-84cb-90c4e6022a0c.jpg', '27.473482131958008', '2/4/2023', '2540 หมู่ 1 ตำบล สำโรงเหนือ อำเภอ เมือง จังหวัด สมุทรปราการ', 'RedLine'),
(3, 23, 'ชลธี', 'คำลือ', '13.5985037', '100.6873411', '0892074114', '', 23, 'โรคใบด่าง', '801c1333-40c9-419d-9af7-cc1c1605c446.jpeg', '26.724273681640625', '2/4/2023', '2540 หมู่ 1 ตำบล สำโรงเหนือ อำเภอ เมือง จังหวัด สมุทรปราการ', 'StreakMosaic'),
(4, 23, 'ชลธี', 'คำลือ', '13.5985037', '100.6873411', '0892074114', '', 23, 'โรคใบด่าง', 'ab9f07d7-a13f-4b20-b5b9-df229bc3a019.jpeg', '23.998641967773438', '2/4/2023', '2540 หมู่ 1 ตำบล สำโรงเหนือ อำเภอ เมือง จังหวัด สมุทรปราการ', 'StreakMosaic');

-- --------------------------------------------------------

--
-- Table structure for table `HistoryDiseaseModify`
--

CREATE TABLE `HistoryDiseaseModify` (
  `ReportID` int(11) NOT NULL,
  `DiseaseID` int(11) DEFAULT NULL,
  `DiseaseName` text NOT NULL,
  `AdminID` int(11) NOT NULL,
  `AdminEmail` text NOT NULL,
  `ModifyDate` text NOT NULL,
  `InfoUpdate` text NOT NULL,
  `ProtectUpdate` text NOT NULL,
  `NameUpdate` text NOT NULL,
  `ImageNameUpdate` text NOT NULL,
  `NameEngUpdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `HistoryDiseaseModify`
--

INSERT INTO `HistoryDiseaseModify` (`ReportID`, `DiseaseID`, `DiseaseName`, `AdminID`, `AdminEmail`, `ModifyDate`, `InfoUpdate`, `ProtectUpdate`, `NameUpdate`, `ImageNameUpdate`, `NameEngUpdate`) VALUES
(41, 30, 'โรคใบจุดสีดำ', 1, 'admin', '2/4/2023', 'ลักษณะอาการโรค เกิดจุดดำตามใบ จะเกิดขึ้นในพันธ์ที่อ่อนแอเป็นส่วนใหญ่ ทำให้ผลผลิตลดลง\r\nการแพร่ระบาด ลมพัดสปอร์ไป แพร่ระบาดหนักในช่วงฤดูฝน และพื้นที่ที่มีความชื้นสะสม', 'หลีกเลี่ยงการใช้ท่อนพันธ์ที่อ่อนแอต่อโรค', 'โรคใบจุดสีดำ', 'null', 'BlackDot'),
(42, 24, 'โรคใบจุดเหลือง', 1, 'admin', '2/4/2023', 'ลักษณะอาการโรค เกิดจุดเหลืองเล็ก ๆ ขนาดเท่าปลายเข็ม กระจาย ไปทั่วบนใบอ้อย ต่อมาจุดแผ่นเหลืองขยายขนาด รูปร่างแผลไม่แน่นอน แผลอาจเปลี่ยนเป็นสีแดง หรือน้ำตาลแดง เมื่อแผลแก่เห็นกลุ่มของก้านชูสปอร์และสปอร์ของเชื้อราสาเหตุลักษณะคล้ายฝุ่นผงสีเทาใน บริเวณกลางจุดแผล แผลอาจเกิดเดี่ยว ๆ หรือขยายจนขอบแผลติดกัน เป็นปื้นปกคลุมผิวใบอ้อย ในระยะต้นของการระบาดจำ นวนจุดแผลจะ หนาแน่นในใบล่างมากกว่าใบด้านบน แต่ในระยะที่โรคระบาดรุนแรง หรือพันธุ์อ้อยมีความอ่อนแอต่อโรค แผลจุดเหลืองจะปรากฏหนาแน่น บนใบทุกใบของลำอ้อย จนทำให้อ้อยมีใบเหลือง กอแห้งโทรม ไร่อ้อย ที่พบว่ามีการระบาดของโรคใบจุดเหลืองจะมองเห็นเป็นสีน้ำตาลทั้งไร่ ส่วนขอบแผลด้านหลังใบมักมีสปอร์ของเชื้อเห็นเป็นผงสีดำ ๆ อยู่เต็ม ในอ้อยแก่จะแตกหน่อบริเวณยอดอยู่เรื่อย ๆ', 'ควรบำรุงอ้อยให้มีการเจริญเติบโตดีจะลดความเสียหายอันเกิด จากโรคได้การใส่ปุ๋ยเดี่ยวอย่างไนโตรเจน โดยขาดฟอสฟอรัสและ โพแทสเซียมจะทำให้อ้อยมีความอ่อนแอต่อโรคใบจุดเหลือง', 'โรคใบจุดเหลือง', 'http://127.0.0.1:3032/image/IMG (2).jpg', 'YellowLeaf'),
(43, 25, 'โรคราสนิม', 1, 'admin', '2/4/2023', 'ลักษณะอาการโรค เชื้อสาเหตุเริ่มเข้าทำลายใบอ่อน เห็นเป็นจุดเล็ก ๆ สีแดง ต่อมาจุดแผลจะพัฒนาขึ้นจนเห็นได้ชัดเจนเมื่อใบอ้อยเจริญเป็นใบแก่ แผลขยายยาวออก ขนาดแผลกว้าง 1-3 มิลลิเมตร ยาว 2-10 มิลลิเมตร เปลี่ยนเป็นสีน้ำตาลแดง แผลนูนขึ้นโดยเฉพาะด้านหลังใบโดยเชื้อราจะมีการสร้างสปอร์ในส่วนแผลนูนดังกล่าวที่บริเวณใต้ใบ เมื่อแผลแตกออกมีลักษณะแผลขรุขระ มีผงสปอร์สีน้ำตาลแดงลักษณะคล้ายสีสนิมจำนวนมาก พบมีแผลหนาแน่นบนใบล่างมากกว่าใบบนของลำ แผลเกิดกระจายทั่วไป ในพันธุ์อ้อยที่อ่อนแอต่อโรคแผลเกิดติดต่อกันจนอาจมองไม่เห็นผิวใบ ทำ ให้อ้อยสูญเสียพื้นที่การสังเคราะห์แสง โดยที่ใบอ้อยที่เป็นโรคจะแห้งกว่าก่อนที่ใบจะแก่ แผลงอ้อยแห้งโทรม การเจริญของอ้อยไม่สมบูรณ์แต่หากเป็นโรคไม่รุนแรงอ้อยจะยังสามารถเจริญเติบโตต่อไปได้โดยที่ผลผลิตไม่ลดลงมาก', 'เนื่องจากสปอร์ของเชื้อราสาเหตุโรคปลิวแพร่กระจายไปตามลมจึงควรหลีกเลี่ยงการปลูกพันธุ์อ้อยที่อ่อนแอต่อโรคเป็นพื้นที่กว้าง เพื่อไม่ให้โรคมีการระบาดรุนแรง เมื่อพบส่วนของอ้อยที่เป็นโรค ควรมีการเก็บออกจากแปลงอ้อยเผาทำลายทิ้งรวมทั้งกำจัดวัชพืชอันอาจเป็นพืชอาศัยสลับของเชื้อสาเหตุโรค', 'โรคราสนิม', 'null', 'RustMold');

-- --------------------------------------------------------

--
-- Table structure for table `Researcher`
--

CREATE TABLE `Researcher` (
  `researcherID` int(11) NOT NULL,
  `Email` text NOT NULL,
  `passWord` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `Modifydate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `Researcher`
--

INSERT INTO `Researcher` (`researcherID`, `Email`, `passWord`, `fName`, `lName`, `phoneNumber`, `Modifydate`) VALUES
(12, 'chonlatee12345678@gmail.com', '$2b$10$/7pJOdvKSesaB/RFzsfQc.znnjlReH4KkFBiZPZ6mrNNUHCPFuP3a', 'ชลธี', 'คำลือ', '1234567890', '2/4/2023');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(12) NOT NULL,
  `Password` text NOT NULL,
  `fName` text NOT NULL,
  `lName` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `Address` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `UserName`, `Password`, `fName`, `lName`, `PhoneNumber`, `Address`, `latitude`, `longitude`) VALUES
(23, 'chonlatee11', '$2b$10$fxsvQnjCeYjNklP5f4lSHe.dOUqpWp.TCAVSs5qjTGcux9OkkNpni', 'ชลธี', 'คำลือ', '0892074114', '2540 หมู่ 1 ตำบล สำโรงเหนือ อำเภอ เมือง จังหวัด สมุทรปราการ', '13.5985037', '100.6873411');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `Disease`
--
ALTER TABLE `Disease`
  ADD PRIMARY KEY (`DiseaseID`);

--
-- Indexes for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `DiseaseReport` (`DiseaseID`),
  ADD KEY `UserReport` (`UserID`);

--
-- Indexes for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `AdminReport` (`AdminID`),
  ADD KEY `HistoryDisease` (`DiseaseID`);

--
-- Indexes for table `Researcher`
--
ALTER TABLE `Researcher`
  ADD PRIMARY KEY (`researcherID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `Disease`
--
ALTER TABLE `Disease`
  MODIFY `DiseaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  MODIFY `ReportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `Researcher`
--
ALTER TABLE `Researcher`
  MODIFY `researcherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DiseaseReport`
--
ALTER TABLE `DiseaseReport`
  ADD CONSTRAINT `DiseaseReport` FOREIGN KEY (`DiseaseID`) REFERENCES `Disease` (`DiseaseID`),
  ADD CONSTRAINT `UserReport` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `HistoryDiseaseModify`
--
ALTER TABLE `HistoryDiseaseModify`
  ADD CONSTRAINT `AdminReport` FOREIGN KEY (`AdminID`) REFERENCES `Admin` (`adminID`),
  ADD CONSTRAINT `HistoryDisease` FOREIGN KEY (`DiseaseID`) REFERENCES `Disease` (`DiseaseID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
