-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 06:47 AM
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
-- Database: `time_flow`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_time` time NOT NULL DEFAULT current_timestamp(),
  `attendance_type` enum('เข้างาน','ออกงาน') NOT NULL,
  `attendance_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `employee_id`, `attendance_date`, `attendance_time`, `attendance_type`, `attendance_note`) VALUES
(4, 'E5', '2023-09-18', '09:00:00', 'เข้างาน', NULL),
(5, 'E5', '2023-10-11', '20:27:22', 'เข้างาน', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` varchar(255) NOT NULL,
  `employee_title` enum('นาย','นาง','นางสาว','อื่นๆ') NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_surname` varchar(255) NOT NULL,
  `employee_gender` enum('ชาย','หญิง') NOT NULL,
  `employee_department` varchar(255) NOT NULL,
  `employee_position` varchar(255) NOT NULL,
  `employee_tel` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_birthday` date NOT NULL,
  `employee_start_date` date NOT NULL,
  `employee_salary` int(11) NOT NULL,
  `employee_personal_id` varchar(255) NOT NULL,
  `employee_address` varchar(255) NOT NULL,
  `employee_bank_account` varchar(255) NOT NULL,
  `employee_bank_type` varchar(255) NOT NULL,
  `employee_tax_id` varchar(255) NOT NULL,
  `employee_login_id` varchar(255) NOT NULL,
  `employee_login_password` varchar(255) NOT NULL,
  `employee_profile_img` varchar(255) DEFAULT NULL,
  `employee_personnel_id_img` varchar(255) DEFAULT NULL,
  `employee_transcript_img` varchar(255) DEFAULT NULL,
  `employee_contract` varchar(255) DEFAULT NULL,
  `employee_roles` enum('Admin','HR','Employee') NOT NULL DEFAULT 'Employee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_title`, `employee_name`, `employee_surname`, `employee_gender`, `employee_department`, `employee_position`, `employee_tel`, `employee_email`, `employee_birthday`, `employee_start_date`, `employee_salary`, `employee_personal_id`, `employee_address`, `employee_bank_account`, `employee_bank_type`, `employee_tax_id`, `employee_login_id`, `employee_login_password`, `employee_profile_img`, `employee_personnel_id_img`, `employee_transcript_img`, `employee_contract`, `employee_roles`) VALUES
('E1', 'นาย', 'ธีรภัทร', 'อักษรนันท์', 'ชาย', 'Software Developer', 'Front-End Developer', '0987456321', 'theeraphat.a@ku.th', '2023-09-26', '2023-10-06', 100000, '1739058888784', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'E1', '123456789', 'ธีรภัทร_profile-1697538915821.pdf', 'ธีรภัทร_personnelId-1697538915823.pdf', 'ธีรภัทร_transcript-1697538915823.pdf', 'ธีรภัทร_contract-1697538915824.pdf', 'Employee'),
('E2', 'นาย', 'อัษฎาวุธ', 'คล้ายเมือง', 'ชาย', 'Software Developer', 'Full-Stack Developer', '0854125415', 'autsadawut.kl@ku.th', '0000-00-00', '0000-00-00', 100000, '1732546589548', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'E2', '123456789', 'อัษฎาวุธ_profile-1697538504904.pdf', 'อัษฎาวุธ_personnelId-1697538504907.pdf', 'อัษฎาวุธ_transcript-1697538504908.pdf', 'อัษฎาวุธ_contract-1697538504908.pdf', 'Employee'),
('E3', 'นาย', 'อาบิ๊ด', 'มหากลั่น', 'ชาย', 'Software Developer', 'Front-End Developer', '0888888888', 'arbid.maha@gmail.com', '0000-00-00', '0000-00-00', 100000, '1735555555555', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'E3', '123456789', 'อาบิ๊ด_profile-1697539558179.pdf', 'อาบิ๊ด_personnelId-1697539558179.pdf', 'อาบิ๊ด_transcript-1697539558180.pdf', 'อาบิ๊ด_contract-1697539558180.pdf', 'Employee'),
('E4', 'นาย', 'โรจนากร', 'แย้มบางยาง', 'ชาย', 'Software Developer', 'Back-End Developer', '0978545213', 'rojjanakorn.y@ku.th', '0000-00-00', '0000-00-00', 100000, '1739525215485', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'E4', '123456789', 'โรจนากร_profile-1697539573433.pdf', 'โรจนากร_personnelId-1697539573434.pdf', 'โรจนากร_transcript-1697539573435.pdf', 'โรจนากร_contract-1697539573435.pdf', 'Employee'),
('E5', 'นาย', 'Admin', 'Admin', 'ชาย', 'Admin', 'Admin', '0999999999', 'Admin@gmail.com', '0000-00-00', '0000-00-00', 100000, '1212121212121', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'Admin', 'Admin', 'Admin_profile-1697539604763.pdf', 'Admin_personnelId-1697539604764.pdf', 'Admin_transcript-1697539604765.pdf', 'Admin_contract-1697539604766.pdf', 'Admin'),
('E6', 'นางสาว', 'ชนิดา', 'ใจดี', 'หญิง', 'Human Resources', 'HR Manager', '0855455152', 'chanida@gmail.com', '0000-00-00', '0000-00-00', 45000, '1739525215485', 'เลขที่ 1 หมู่ 6 ต.กำแพงแสน อ.กำแพงแสน จ.นครปฐม 73140', '4131001279', 'SCB', '5644726046182', 'HR', 'HR', 'ชนิดา_profile-1697539623420.pdf', 'ชนิดา_personnelId-1697539623421.pdf', 'ชนิดา_transcript-1697539623421.pdf', 'ชนิดา_contract-1697539623422.pdf', 'HR'),
('E7', 'นาย', 'ทดสอบ', 'ระบบ', 'ชาย', 'IT', 'IT  Support', '0852152121', 'test@gmail.com', '0000-00-00', '0000-00-00', 90000, '1231212121212', 'test', '12312312312321', 'SCB', '12312312312321', 'E7', 'test', 'ทดสอบ_profile-1697539644850.pdf', 'ทดสอบ_personnelId-1697539644862.pdf', 'ทดสอบ_transcript-1697539644863.pdf', 'ทดสอบ_contract-1697539644863.pdf', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

DROP TABLE IF EXISTS `leave_request`;
CREATE TABLE `leave_request` (
  `leave_request_id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `leave_request_type` varchar(255) NOT NULL,
  `leave_request_duration` enum('ลาเต็มวัน','ลาครึ่งวันเช้า','ลาครึ่งวันบ่าย') NOT NULL,
  `leave_request_start_date` date NOT NULL,
  `leave_request_end_date` date NOT NULL,
  `leave_request_note` varchar(255) NOT NULL,
  `leave_request_status` enum('รอดำเนินการ','อนุมัติ','ปฏิเสธ') NOT NULL DEFAULT 'รอดำเนินการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`leave_request_id`, `employee_id`, `leave_request_type`, `leave_request_duration`, `leave_request_start_date`, `leave_request_end_date`, `leave_request_note`, `leave_request_status`) VALUES
(4, 'E5', 'Vacation', 'ลาเต็มวัน', '2023-09-20', '2023-09-24', 'Vacation in September', 'รอดำเนินการ'),
(5, 'E5', 'ลาป่วย (่มีใบรับรองแพทย์)', 'ลาครึ่งวันเช้า', '2023-10-12', '2023-10-12', 'asd', 'รอดำเนินการ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`leave_request_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `leave_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD CONSTRAINT `leave_request_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
