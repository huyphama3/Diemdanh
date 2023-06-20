-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 12:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_recognizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Account`, `Password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `IdAuttendance` varchar(45) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) DEFAULT NULL,
  `Time_in` time DEFAULT NULL,
  `Time_out` time DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Lesson_id` int(11) DEFAULT NULL,
  `AttendanceStatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`IdAuttendance`, `Student_id`, `Name`, `Class`, `Time_in`, `Time_out`, `Date`, `Lesson_id`, `AttendanceStatus`) VALUES
('SV109042021173313', 1, 'Le Quang Nhat', 'D12CNPM', '17:33:13', NULL, '09/04/2021', 1, 'Vắng'),
('SV109042021173713', 1, 'Le Quang Nhat', 'D12CNPM', '17:37:13', NULL, '09/04/2021', 3, 'Có mặt'),
('SV112042021171450', 1, 'Le Quang Nhat', 'D12CNPM', '17:14:50', NULL, '12/04/2021', 5, 'Đi muộn 9 phút'),
('SV113042021144629', 1, 'Le Quang Nhat', 'D12CNPM', '14:46:29', NULL, '13/04/2021', 6, 'Đi muộn 1 phút'),
('SV1160420217', 1, 'Le Quang Nhat', 'D12CNPM', '16:07:34', '16:11:20', '16/04/2021', 7, 'Vắng'),
('SV1160420218', 1, 'Le Quang Nhat', 'D12CNPM', NULL, '16:16:08', '16/04/2021', 8, 'Có mặt'),
('SV11804202110', 1, 'Le Quang Nhat', 'D12CNPM', '17:18:00', NULL, '18/04/2021', 10, 'Có mặt'),
('SV1180420219', 1, 'Le Quang Nhat', 'D12CNPM', '16:08:18', NULL, '18/04/2021', 9, 'Đi muộn 38 phút'),
('SV12004202111', 1, 'Le Quang Nhat', 'D12CNPM', '14:08:30', NULL, '20/04/2021', 11, 'Đi muộn 8 phút'),
('SV12004202112', 1, 'Le Quang Nhat', 'D12CNPM', '16:16:16', NULL, '20/04/2021', 12, 'Đi muộn 16 phút'),
('SV12004202113', 1, 'Le Quang Nhat', 'D12CNPM', '16:41:41', NULL, '20/04/2021', 13, 'Đi muộn 11 phút'),
('SV12004202114', 1, 'Le Quang Nhat', 'D12CNPM', '16:51:41', NULL, '20/04/2021', 14, 'Đi muộn 1 phút'),
('SV12004202115', 1, 'Le Quang Nhat', 'D12CNPM', '17:17:09', NULL, '20/04/2021', 15, 'Đi muộn 2 phút'),
('SV21804202110', 2, 'Do Manh Dung', 'D13CNPM1', '17:18:28', '17:19:05', '18/04/2021', 10, 'Vắng 1 tiết'),
('SV2180420219', 2, 'Do Manh Dung', 'D13CNPM1', '16:08:39', NULL, '18/04/2021', 9, 'Đi muộn 38 phút'),
('SV22004202114', 2, 'Do Manh Dung', 'D13CNPM1', '16:52:21', NULL, '20/04/2021', 14, 'Đi muộn 2 phút'),
('SV22004202115', 2, 'Do Manh Dung', 'D13CNPM1', '17:17:34', NULL, '20/04/2021', 15, 'Đi muộn 2 phút'),
('SV32004202114', 3, 'Mai Quoc Khanh', 'D12CNPM', '16:52:00', NULL, '20/04/2021', 14, 'Đi muộn 2 phút');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class`, `Name`) VALUES
('D12CNPM', 'Cong Nghe pm'),
('D12DTVT', 'DTVT'),
('D12QTANM', 'quan tri an ninh mang'),
('D13CNPM1', 'd13 cnpm1'),
('D13CNPM2', 'Casd');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(11) NOT NULL,
  `Time_start` time DEFAULT NULL,
  `Time_end` time DEFAULT NULL,
  `Date` varchar(45) NOT NULL,
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Time_start`, `Time_end`, `Date`, `Teacher_id`, `Subject_id`) VALUES
(1, '15:30:00', '17:00:00', '09/04/2021', 2, 1),
(2, '09:30:00', '11:30:00', '09/04/2021', 2, 1),
(3, '17:15:00', '18:30:00', '09/04/2021', 2, 2),
(4, '19:00:00', '21:00:00', '11/04/2021', 2, 2),
(5, '16:50:00', '18:00:00', '12/04/2021', 2, 1),
(6, '14:30:00', '16:00:00', '13/04/2021', 2, 1),
(7, '16:00:00', '17:50:00', '16/04/2021', 2, 2),
(8, '14:00:00', '16:30:00', '16/04/2021', 2, 1),
(9, '15:30:00', '17:00:00', '18/04/2021', 2, 2),
(10, '17:20:00', '18:00:00', '18/04/2021', 2, 2),
(11, '14:00:00', '15:30:00', '20/04/2021', 2, 1),
(12, '16:00:00', '18:00:00', '20/04/2021', 2, 2),
(13, '16:30:00', '17:50:00', '20/04/2021', 2, 1),
(14, '16:50:00', '18:00:00', '20/04/2021', 2, 2),
(15, '17:15:00', '19:00:00', '20/04/2021', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Dep` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Class` varchar(45) NOT NULL,
  `Roll` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Dob` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `PhotoSample` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Dep`, `course`, `Year`, `Semester`, `Name`, `Class`, `Roll`, `Gender`, `Dob`, `Email`, `Phone`, `Address`, `PhotoSample`) VALUES
(1, 'IT', 'Chính quy', '2020-21', 'Học kì I', 'Le Quang Nhat', 'D12CNPM', '132323656', 'Nam', '19/03/1999', 'nhatlequang102@gmail.com', '65989898', '32 duong Lang', 'Yes'),
(2, 'IT', 'Chính quy', '2020-21', 'Học kì II', 'Do Manh Dung', 'D13CNPM1', '12312312', 'Nam', '11/03/2000', 'ca@gmail.com', '6958592', '1212 hqv ha noi', 'No'),
(3, 'IT', 'Chính quy', '2021-22', 'Học kì I', 'Mai Quoc Khanh', 'D12CNPM', '1231231231', 'Nam', '03/05/1999', 'mqk@gmail.com', '656599', 'ha noi', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `student_has_subject`
--

CREATE TABLE `student_has_subject` (
  `Student_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_has_subject`
--

INSERT INTO `student_has_subject` (`Student_id`, `Subject_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(1, 3),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `Subject_name` varchar(45) NOT NULL,
  `Class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_id`, `Subject_name`, `Class`) VALUES
(1, 'Java', 'D12CNPM'),
(2, 'C++', 'D12CNPM'),
(3, 'Toán cao cấp', 'D12CNPM');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `SecurityQ` varchar(45) NOT NULL,
  `SecurityA` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_id`, `Name`, `Phone`, `Email`, `SecurityQ`, `SecurityA`, `Password`) VALUES
(0, 'Admin', '19001235', '', '', '', ''),
(1, 'Canh Phuong Van', '6958592698', 'canhpv@epu.edu.com', 'Sở thích của bạn', 'Code', '123456'),
(2, 'Dungx', '098889221', 'dung@gmail.com', 'Sở thích của bạn', 'Kiếm tiền', '123'),
(3, 'Lea', '06958592', 'ca@gmail.com', 'Bạn thích ăn gì', 'chiu', '123456'),
(4, 'abc', '0988', 'ssas', 'Bạn thích ăn gì', 'meo', '123'),
(5, 'Nhat', '055565656', 'nhat2@gmail.com', 'Sở thích của bạn', 'code', '123'),
(6, '233', '23', '23', 'Bạn thích ăn gì', 'ko', '123'),
(7, 'nhat minh', '13123', 'da', 'Bạn thích ăn gì', '12', '123'),
(8, 'ád', '123', '123', 'Bạn thích ăn gì', '123', '123'),
(9, '12322', '123', '1231', 'Sở thích của bạn', 'a', '1'),
(10, '123', '123', '123', 'Sở thích của bạn', '123', '123'),
(11, 'minh a', 'd', 'a', 'Sở thích của bạn', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_has_subject`
--

CREATE TABLE `teacher_has_subject` (
  `Teacher_id` int(11) NOT NULL,
  `Subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_has_subject`
--

INSERT INTO `teacher_has_subject` (`Teacher_id`, `Subject_id`) VALUES
(2, 2),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Account`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`IdAuttendance`),
  ADD KEY `Student_id` (`Student_id`) USING BTREE,
  ADD KEY `Lesson_id` (`Lesson_id`) USING BTREE;

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`),
  ADD KEY `Subject_id` (`Subject_id`) USING BTREE,
  ADD KEY `Teacher_id` (`Teacher_id`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD KEY `Student_id_2` (`Student_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`),
  ADD KEY `Class` (`Class`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- Indexes for table `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD KEY `Teacher_id` (`Teacher_id`),
  ADD KEY `Subject_id` (`Subject_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `lesson_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Constraints for table `student_has_subject`
--
ALTER TABLE `student_has_subject`
  ADD CONSTRAINT `student_has_subject_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `student_has_subject_ibfk_4` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Class`) REFERENCES `class` (`Class`);

--
-- Constraints for table `teacher_has_subject`
--
ALTER TABLE `teacher_has_subject`
  ADD CONSTRAINT `teacher_has_subject_ibfk_3` FOREIGN KEY (`Subject_id`) REFERENCES `subject` (`Subject_id`),
  ADD CONSTRAINT `teacher_has_subject_ibfk_4` FOREIGN KEY (`Teacher_id`) REFERENCES `teacher` (`Teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
