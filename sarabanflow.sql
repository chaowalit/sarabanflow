-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2015 at 12:43 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sarabanflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE IF NOT EXISTS `admin_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`id`, `user_name`, `password`, `fullname`, `email`, `tel`, `detail`, `active`) VALUES
(1, 'bank', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'นาย เชาวลิต กองคำ', 'chaowalit.sut@gmail.com', '0877331138', 'ทดสอบระบบ', 1),
(3, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Chetta Crobkathok', 'test@gmail.com', '0868792393', 'asdasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department_of_instutition`
--

CREATE TABLE IF NOT EXISTS `department_of_instutition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `instutition_id` int(11) DEFAULT NULL,
  `instutition_level` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `department_of_instutition`
--

INSERT INTO `department_of_instutition` (`id`, `province_id`, `instutition_id`, `instutition_level`, `department_id`, `department_name`, `cdate`, `udate`, `active`) VALUES
(29, 1, 1, 'institution_province', '2', 'กองคลัง', '2015-01-17 20:49:52', '2015-01-17 20:49:52', 1),
(30, 2, 2, 'institution_province', '3', 'ฝ่ายสืบสวน', '2015-01-18 01:38:48', '2015-01-18 01:38:48', 1),
(31, 2, 2, 'institution_province', '2', 'ฝ่ายประชาสัมพันธ์', '2015-01-18 01:39:39', '2015-01-18 01:39:39', 1),
(32, 3, 3, 'institution_province', '2', 'กองคลัง', '2015-01-18 02:06:03', '2015-01-18 02:06:03', 1),
(33, 1, 4, 'institution_province', '2', 'กองคลัง', '2015-01-18 02:08:28', '2015-01-18 02:08:28', 1),
(34, 1, 4, 'institution_amphur', '2', 'การบัญชี', '2015-01-24 11:26:19', '2015-02-06 23:12:11', 1),
(35, 1, 3, 'institution_tambol', '2', '21321434132', '2015-01-24 11:33:42', '2015-01-24 11:33:42', 1),
(36, 1, 4, 'institution_province', '3', 'การเงิน', '2015-02-06 23:11:52', '2015-02-06 23:11:52', 1),
(37, 1, 4, 'institution_district', '4', 'เจ้าหน้าที่ประจำหน่วยงาน', '2015-02-06 23:32:08', '2015-02-06 23:32:08', 1),
(38, 1, 14, 'institution_province', '4', 'สืบสวนสอบสวน', '2015-02-15 18:05:11', '2015-02-15 18:05:11', 1),
(39, 1, 14, 'institution_province', '5', 'ประจำหน่วย', '2015-02-15 18:06:07', '2015-02-15 18:06:07', 1),
(40, 1, 15, 'institution_province', '.4', 'การช่าง', '2015-02-16 23:43:01', '2015-02-16 23:43:01', 1),
(41, 1, 4, 'institution_province', '4', 'การช่าง2', '2015-02-20 22:46:09', '2015-02-20 22:46:09', 1),
(42, 1, 4, 'institution_district', '2', 'กองคลัง ตำบล', '2015-03-19 01:45:47', '2015-03-19 01:45:47', 1),
(43, 1, 21, 'institution_province', '.1', 'นายอำเภอนะจ๊ะ', '2015-03-25 15:26:20', '2015-03-25 15:26:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE IF NOT EXISTS `document_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_cate_name` varchar(50) DEFAULT NULL,
  `doc_cate_detail` varchar(50) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `document_icon`
--

CREATE TABLE IF NOT EXISTS `document_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(50) NOT NULL,
  `icon_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `document_send_or_recieve`
--

CREATE TABLE IF NOT EXISTS `document_send_or_recieve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_send_name` varchar(50) NOT NULL,
  `doc_send_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE IF NOT EXISTS `document_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_type_name` varchar(50) NOT NULL,
  `doc_type_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `doc_type_name`, `doc_type_detail`, `cdate`, `udate`) VALUES
(1, '', '', '2014-11-23 20:37:22', '2014-11-23 20:37:22'),
(2, '', '', '2014-11-26 23:10:08', '2014-11-26 23:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `group_send`
--

CREATE TABLE IF NOT EXISTS `group_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `institution_id` int(11) NOT NULL,
  `institution_level` varchar(50) NOT NULL,
  `child` varchar(50) NOT NULL DEFAULT '0',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group_send`
--

INSERT INTO `group_send` (`id`, `group_name`, `institution_id`, `institution_level`, `child`, `cdate`, `udate`, `active`) VALUES
(1, 'fff', 4, 'institution_amphur', '1', '2015-02-15 17:07:56', '2015-02-15 17:07:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_send_detail`
--

CREATE TABLE IF NOT EXISTS `group_send_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_send_id` int(11) NOT NULL,
  `institution_id` int(11) NOT NULL,
  `institution_level` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` varchar(50) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group_send_detail`
--

INSERT INTO `group_send_detail` (`id`, `group_send_id`, `institution_id`, `institution_level`, `cdate`, `udate`, `active`) VALUES
(1, 1, 12, 'institution_province', '2015-02-15 17:08:04', '2015-02-15 17:08:04', '1'),
(2, 1, 13, 'institution_province', '2015-02-15 17:08:04', '2015-02-15 17:08:04', '1');

-- --------------------------------------------------------

--
-- Table structure for table `institution_amphur`
--

CREATE TABLE IF NOT EXISTS `institution_amphur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `institution_province_id` int(11) NOT NULL,
  `institution_amphur_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_amphur_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `institution_amphur`
--

INSERT INTO `institution_amphur` (`id`, `province_id`, `institution_province_id`, `institution_amphur_name`, `institution_amphur_detail`, `cdate`, `udate`, `active`) VALUES
(1, 1, 1, 'หน่วยงานระดับอำเภอ1', 'หน่วยงานระดับอำเภอ1', '2014-12-16 00:00:00', '2014-12-16 00:00:00', 1),
(2, 1, 1, 'หน่วยงานระดับอำเภอ2', 'หน่วยงานระดับอำเภอ2', '2014-12-16 00:00:00', '2014-12-16 00:00:00', 1),
(3, 2, 2, 'ตำรวจอำเภอ', 'ทดสอบระบบ', '2015-01-18 01:37:26', '2015-01-18 01:37:26', 1),
(4, 1, 4, 'สาธารณะสุขอำเภอ', 'สาธารณะสุขอำเภอ ...', '2015-01-18 14:05:49', '2015-01-18 14:05:49', 1),
(5, 1, 4, 'vvv', 'vvvv', '2015-03-22 22:43:08', '2015-03-22 22:43:08', 1),
(6, 1, 4, 'dfdf', 'dfdf', '2015-03-22 22:43:19', '2015-03-22 22:43:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `institution_district`
--

CREATE TABLE IF NOT EXISTS `institution_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `institution_province_id` int(11) NOT NULL,
  `institution_amphur_id` int(11) NOT NULL,
  `institution_district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_district_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `institution_district`
--

INSERT INTO `institution_district` (`id`, `province_id`, `institution_province_id`, `institution_amphur_id`, `institution_district_name`, `institution_district_detail`, `cdate`, `udate`, `active`) VALUES
(1, 1, 1, 1, 'อนามัยตำบล', 'อนามัยตำบล', '2014-12-18 00:00:00', '2014-12-18 00:00:00', 1),
(2, 2, 2, 3, 'ตำรวจตำบล', 'ทดสอบระบบ', '2015-01-18 01:37:48', '2015-01-18 01:37:48', 1),
(4, 1, 4, 4, 'สาธารณะสุขตำบล', 'สาธารณะสุขตำบล', '2015-02-06 23:31:40', '2015-02-06 23:31:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `institution_province`
--

CREATE TABLE IF NOT EXISTS `institution_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `institution_province_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_province_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `institution_province`
--

INSERT INTO `institution_province` (`id`, `province_id`, `institution_province_name`, `institution_province_detail`, `cdate`, `udate`, `active`) VALUES
(4, 1, 'สาธารณสุขจังหวัด', 'สาธารณสุขจังหวัด', '2015-01-18 02:07:59', '2015-01-18 02:07:59', 1),
(14, 1, 'สถานีตำรวจภูธร', 'สถานีตำรวจภูธร', '2015-02-15 18:03:45', '2015-02-15 18:03:45', 1),
(15, 1, 'dd', 'dd', '2015-02-15 23:12:09', '2015-02-15 23:12:09', 1),
(16, 1, 'sd', 'sd', '2015-02-15 23:12:13', '2015-02-15 23:12:13', 1),
(17, 1, 'sdfasdf', 'sdfsdf', '2015-02-15 23:12:18', '2015-02-15 23:12:18', 1),
(18, 1, 'sdfgsdf', 'gsdfg', '2015-02-15 23:12:23', '2015-02-15 23:12:23', 1),
(19, 1, 'sdfgsdf', 'gsdfg', '2015-02-15 23:12:27', '2015-02-15 23:12:27', 1),
(20, 1, 'sdfgsdf', 'gsdfg', '2015-02-15 23:12:31', '2015-02-15 23:12:31', 1),
(21, 1, 'นายอำเภอทดสอบ', 'แบงก์', '2015-03-22 22:19:13', '2015-03-25 15:25:40', 1),
(22, 1, 'แบงก์2', 'แบงก์2', '2015-03-22 22:20:30', '2015-03-22 22:33:19', 1),
(23, 1, 'แบง 3', 'แบง 3', '2015-03-22 22:31:00', '2015-03-22 22:31:00', 1),
(24, 1, 'xxxx', 'xxxxx', '2015-03-22 22:31:56', '2015-03-22 22:31:56', 1),
(25, 1, 'ddddddd', 'dddddd', '2015-03-22 23:20:37', '2015-03-22 23:20:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `layer_priority`
--

CREATE TABLE IF NOT EXISTS `layer_priority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pio_name` varchar(50) NOT NULL,
  `pio_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `layer_priority`
--

INSERT INTO `layer_priority` (`id`, `pio_name`, `pio_detail`, `cdate`, `udate`) VALUES
(1, 'ธรรมดา', 'ธรรมดา', '2014-12-25 00:51:01', '2014-12-25 00:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `layer_secret`
--

CREATE TABLE IF NOT EXISTS `layer_secret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layer_name` varchar(50) NOT NULL,
  `layer_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `layer_secret`
--

INSERT INTO `layer_secret` (`id`, `layer_name`, `layer_detail`, `cdate`, `udate`) VALUES
(1, 'ลับนิดหน่อย', 'ลับนิดหน่อย', '2014-12-25 23:45:01', '2014-12-25 23:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `normal_account`
--

CREATE TABLE IF NOT EXISTS `normal_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `department_of_instutition_id` int(11) DEFAULT NULL,
  `level_institution_id` int(11) NOT NULL,
  `level_institution` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_detail` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `permission_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `normal_account`
--

INSERT INTO `normal_account` (`id`, `province_id`, `department_of_instutition_id`, `level_institution_id`, `level_institution`, `designation`, `username`, `password`, `fullname`, `user_detail`, `permission_level`, `cdate`, `udate`, `active`) VALUES
(11, 1, 33, 4, 'institution_province', 'governor', 'm1', '1234', 'chetta', 'ssss', '4', '2015-02-06 23:27:26', '2015-03-21 17:56:42', 1),
(12, 1, 34, 4, 'institution_amphur', 'central_administration', 'm2', '1234', 'chetta2', '', '4', '2015-02-06 23:27:45', '2015-02-06 23:27:45', 1),
(13, 1, 37, 4, 'institution_district', 'central_administration', 'm3', '1234', 'chetta3', '', '4', '2015-02-06 23:38:24', '2015-02-07 21:28:09', 1),
(14, 1, 37, 4, 'institution_district', 'central_administration', 'm4', '1234', 'xxxx', 'xxxx', '1', '2015-02-07 22:30:10', '2015-02-07 22:30:10', 1),
(15, 1, 36, 4, 'institution_province', 'employees', 'mx', '1234', 'sss', 'ssss', '2', '2015-02-10 22:10:42', '2015-03-14 18:47:33', 1),
(16, 1, 40, 15, 'institution_province', 'central_administration', 'd1', '1234', 'chetta crobkatoke', '', '4', '2015-02-16 23:43:49', '2015-02-16 23:43:49', 1),
(17, 1, 38, 14, 'institution_province', 'central_administration', 'f2', '1234', 'dsfads', 'sdafd', '4', '2015-03-14 20:00:14', '2015-03-14 20:00:14', 1),
(21, 1, 41, 4, 'institution_province', 'central_administration', 'm5', '1234', 'dsaf', 'afdf', '4', '2015-03-21 21:53:10', '2015-03-21 21:53:10', 1),
(22, 1, 43, 21, 'institution_province', 'prefect', 'bank', '1234', 'gggg', 'ggggg', '4', '2015-03-25 09:26:53', '2015-03-25 09:26:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `number_of_institution`
--

CREATE TABLE IF NOT EXISTS `number_of_institution` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL,
  `instutition_number` varchar(255) NOT NULL,
  `instutition_number_send` varchar(255) NOT NULL,
  `instutition_id` int(11) NOT NULL,
  `instutition_level` varchar(255) NOT NULL,
  `details_of_number` text NOT NULL,
  `instutition_main_send` varchar(255) NOT NULL,
  `instutition_main_id` int(11) NOT NULL,
  `instutition_main_level` varchar(255) NOT NULL,
  `number_recieve` varchar(255) NOT NULL,
  `number_internal` varchar(255) NOT NULL,
  `number_external` varchar(255) NOT NULL,
  `setup_instutition_number1` varchar(255) NOT NULL,
  `setup_instutition_number2` int(11) NOT NULL DEFAULT '0',
  `setup_instutition_number3` int(11) NOT NULL DEFAULT '0',
  `set2_val` varchar(255) NOT NULL,
  `set3_val` varchar(255) NOT NULL,
  `active_center` varchar(50) NOT NULL DEFAULT '0',
  `nornal_type` varchar(50) NOT NULL DEFAULT '1',
  `nornal_text` varchar(50) NOT NULL DEFAULT '1',
  `vian_type` varchar(50) NOT NULL DEFAULT '1',
  `vian_text` varchar(50) NOT NULL DEFAULT '1',
  `command_type` varchar(50) NOT NULL DEFAULT '1',
  `command_text` varchar(50) NOT NULL DEFAULT '1',
  `radio_type` varchar(50) NOT NULL DEFAULT '1',
  `radio_text` varchar(50) NOT NULL DEFAULT '1',
  `receive_type` varchar(50) NOT NULL DEFAULT '1',
  `txt_receive` varchar(50) NOT NULL DEFAULT '1',
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `number_of_institution`
--

INSERT INTO `number_of_institution` (`id`, `province_id`, `instutition_number`, `instutition_number_send`, `instutition_id`, `instutition_level`, `details_of_number`, `instutition_main_send`, `instutition_main_id`, `instutition_main_level`, `number_recieve`, `number_internal`, `number_external`, `setup_instutition_number1`, `setup_instutition_number2`, `setup_instutition_number3`, `set2_val`, `set3_val`, `active_center`, `nornal_type`, `nornal_text`, `vian_type`, `vian_text`, `command_type`, `command_text`, `radio_type`, `radio_text`, `receive_type`, `txt_receive`, `cdate`, `udate`, `active`) VALUES
(29, 3, '', 'cccccccccccccccccccc', 3, 'institution_province', '', '', 0, '', '', '', '', '0', 0, 0, '0', '0', '', '', '', '', '', '', '', '', '', '', '', '2015-01-18 02:05:24', '2015-01-18 02:05:24', 1),
(30, 1, 'สจ00001', 'สาธารณสุขจังหวัด', 4, 'institution_province', 'dsfsadfdsf', 'สถานีตำรวจภูธร', 14, 'institution_province', '5', '5', '5', '0', 0, 0, '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-01-18 02:07:59', '2015-01-18 02:07:59', 1),
(31, 1, 'สอ00001', 'สาธารณะสุขอำเภอ', 4, 'institution_amphur', 'xxxxxxxxxxxxxxxxxxxxxxx', 'สาธารณสุขจังหวัด', 4, 'institution_province', '', '', '', '0', 0, 0, '1', '1', '0', '1', '50', '1', '50', '1', '50', '1', '50', '1', '50', '2015-01-18 14:05:49', '2015-01-18 14:05:49', 1),
(32, 1, '', '', 3, 'institution_district', '', '', 0, '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-01-24 11:32:50', '2015-01-24 11:32:50', 1),
(33, 1, 'กทม0008', 'สาธารณะสุขตำบล', 4, 'institution_district', '', 'สาธารณสุขจังหวัด', 4, 'institution_province', '', '', '', '0', 0, 0, '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:31:40', '2015-02-06 23:31:40', 1),
(34, 1, 'บร0124111', 'x1', 5, 'institution_province', '', '', 0, '', '', '', '', '0', 0, 0, '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-06 23:54:23', '2015-02-06 23:54:23', 1),
(35, 1, '', '', 6, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:54:31', '2015-02-06 23:54:31', 1),
(36, 1, '', '', 7, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:54:36', '2015-02-06 23:54:36', 1),
(37, 1, '', '', 8, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:54:43', '2015-02-06 23:54:43', 1),
(38, 1, '', '', 9, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:54:49', '2015-02-06 23:54:49', 1),
(39, 1, '', '', 10, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:54:55', '2015-02-06 23:54:55', 1),
(40, 1, '', '', 11, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:55:01', '2015-02-06 23:55:01', 1),
(41, 1, '', '', 12, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:55:07', '2015-02-06 23:55:07', 1),
(42, 1, '', '', 13, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '', '', '', '', '', '', '', '', '', '', '2015-02-06 23:55:16', '2015-02-06 23:55:16', 1),
(43, 1, 'ตร0000', 'สถานีตำรวจภูธร', 14, 'institution_province', '', 'สาธารณสุขจังหวัด', 4, 'institution_province', '', '', '', '0', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 18:03:45', '2015-02-15 18:03:45', 1),
(44, 1, 'dd00001', 'dd', 15, 'institution_province', '', 'สาธารณสุขจังหวัด', 4, 'institution_province', '', '', '', '0', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:09', '2015-02-15 23:12:09', 1),
(45, 1, '', '', 16, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:13', '2015-02-15 23:12:13', 1),
(46, 1, '', '', 17, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:18', '2015-02-15 23:12:18', 1),
(47, 1, '', '', 18, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:23', '2015-02-15 23:12:23', 1),
(48, 1, '', '', 19, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:27', '2015-02-15 23:12:27', 1),
(49, 1, '', '', 20, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-02-15 23:12:31', '2015-02-15 23:12:31', 1),
(50, 1, '', '', 21, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:19:13', '2015-03-22 22:19:13', 1),
(51, 1, '', '', 22, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:20:30', '2015-03-22 22:20:30', 1),
(52, 1, '', '', 23, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:31:01', '2015-03-22 22:31:01', 1),
(53, 1, '', '', 24, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:31:56', '2015-03-22 22:31:56', 1),
(54, 1, '', '', 5, 'institution_amphur', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:43:08', '2015-03-22 22:43:08', 1),
(55, 1, '', '', 6, 'institution_amphur', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 22:43:19', '2015-03-22 22:43:19', 1),
(56, 1, '', '', 25, 'institution_province', '', '', 0, '', '', '', '', '', 0, 0, '', '', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22 23:20:37', '2015-03-22 23:20:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `objective`
--

CREATE TABLE IF NOT EXISTS `objective` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objective_name` varchar(50) NOT NULL,
  `objective_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `objective`
--

INSERT INTO `objective` (`id`, `objective_name`, `objective_detail`, `cdate`, `udate`) VALUES
(1, 'เพื่อทราบ', 'เพื่อทราบ', '2014-12-25 00:00:00', '2014-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prefix_name`
--

CREATE TABLE IF NOT EXISTS `prefix_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix_name` varchar(50) NOT NULL,
  `prefix_detail` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `province_id` int(5) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `province_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `geo_id` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_code`, `province_name`, `geo_id`) VALUES
(1, '10', 'กรุงเทพมหานคร   ', 2),
(2, '11', 'สมุทรปราการ   ', 2),
(3, '12', 'นนทบุรี   ', 2),
(4, '13', 'ปทุมธานี   ', 2),
(5, '14', 'พระนครศรีอยุธยา   ', 2),
(6, '15', 'อ่างทอง   ', 2),
(7, '16', 'ลพบุรี   ', 2),
(8, '17', 'สิงห์บุรี   ', 2),
(9, '18', 'ชัยนาท   ', 2),
(10, '19', 'สระบุรี', 2),
(11, '20', 'ชลบุรี   ', 5),
(12, '21', 'ระยอง   ', 5),
(13, '22', 'จันทบุรี   ', 5),
(14, '23', 'ตราด   ', 5),
(15, '24', 'ฉะเชิงเทรา   ', 5),
(16, '25', 'ปราจีนบุรี   ', 5),
(17, '26', 'นครนายก   ', 2),
(18, '27', 'สระแก้ว   ', 5),
(19, '30', 'นครราชสีมา   ', 3),
(20, '31', 'บุรีรัมย์   ', 3),
(21, '32', 'สุรินทร์   ', 3),
(22, '33', 'ศรีสะเกษ   ', 3),
(23, '34', 'อุบลราชธานี   ', 3),
(24, '35', 'ยโสธร   ', 3),
(25, '36', 'ชัยภูมิ   ', 3),
(26, '37', 'อำนาจเจริญ   ', 3),
(27, '39', 'หนองบัวลำภู   ', 3),
(28, '40', 'ขอนแก่น   ', 3),
(29, '41', 'อุดรธานี   ', 3),
(30, '42', 'เลย   ', 3),
(31, '43', 'หนองคาย   ', 3),
(32, '44', 'มหาสารคาม   ', 3),
(33, '45', 'ร้อยเอ็ด   ', 3),
(34, '46', 'กาฬสินธุ์   ', 3),
(35, '47', 'สกลนคร   ', 3),
(36, '48', 'นครพนม   ', 3),
(37, '49', 'มุกดาหาร   ', 3),
(38, '50', 'เชียงใหม่   ', 1),
(39, '51', 'ลำพูน   ', 1),
(40, '52', 'ลำปาง   ', 1),
(41, '53', 'อุตรดิตถ์   ', 1),
(42, '54', 'แพร่   ', 1),
(43, '55', 'น่าน   ', 1),
(44, '56', 'พะเยา   ', 1),
(45, '57', 'เชียงราย   ', 1),
(46, '58', 'แม่ฮ่องสอน   ', 1),
(47, '60', 'นครสวรรค์   ', 2),
(48, '61', 'อุทัยธานี   ', 2),
(49, '62', 'กำแพงเพชร   ', 2),
(50, '63', 'ตาก   ', 4),
(51, '64', 'สุโขทัย   ', 2),
(52, '65', 'พิษณุโลก   ', 2),
(53, '66', 'พิจิตร   ', 2),
(54, '67', 'เพชรบูรณ์   ', 2),
(55, '70', 'ราชบุรี   ', 4),
(56, '71', 'กาญจนบุรี   ', 4),
(57, '72', 'สุพรรณบุรี   ', 2),
(58, '73', 'นครปฐม   ', 2),
(59, '74', 'สมุทรสาคร   ', 2),
(60, '75', 'สมุทรสงคราม   ', 2),
(61, '76', 'เพชรบุรี   ', 4),
(62, '77', 'ประจวบคีรีขันธ์   ', 4),
(63, '80', 'นครศรีธรรมราช   ', 6),
(64, '81', 'กระบี่   ', 6),
(65, '82', 'พังงา   ', 6),
(66, '83', 'ภูเก็ต   ', 6),
(67, '84', 'สุราษฎร์ธานี   ', 6),
(68, '85', 'ระนอง   ', 6),
(69, '86', 'ชุมพร   ', 6),
(70, '90', 'สงขลา   ', 6),
(71, '91', 'สตูล   ', 6),
(72, '92', 'ตรัง   ', 6),
(73, '93', 'พัทลุง   ', 6),
(74, '94', 'ปัตตานี   ', 6),
(75, '95', 'ยะลา   ', 6),
(76, '96', 'นราธิวาส   ', 6);

-- --------------------------------------------------------

--
-- Table structure for table `receive_document_department`
--

CREATE TABLE IF NOT EXISTS `receive_document_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_receive_document_id` int(11) NOT NULL,
  `registration_create_number_id` int(11) DEFAULT NULL,
  `department_of_instutition_id` int(11) DEFAULT NULL,
  `status_reading` varchar(50) DEFAULT 'no',
  `status_receive` varchar(50) NOT NULL DEFAULT 'no',
  `status_return_document` varchar(50) DEFAULT 'no',
  `reason_return_document` varchar(50) DEFAULT NULL,
  `online` varchar(50) DEFAULT 'yes',
  `dep_receive_date` date NOT NULL,
  `dep_receive_time` varchar(20) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receive_document_department_of_run`
--

CREATE TABLE IF NOT EXISTS `receive_document_department_of_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_document_department_id` int(11) NOT NULL,
  `department_of_instutition_id` int(11) NOT NULL,
  `number_of_run` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registration_create_number`
--

CREATE TABLE IF NOT EXISTS `registration_create_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_create_number_of_run_id` int(11) NOT NULL,
  `registration_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dated_send` date NOT NULL,
  `level_institution_id` int(11) NOT NULL,
  `level_institution` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_of_instutition_id` int(11) NOT NULL,
  `create_number_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_instutition_id` int(11) NOT NULL,
  `use_instutition_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `central_registration` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `level_institution_central_id` int(11) DEFAULT NULL,
  `level_institution_central` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_receive` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attach_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `reference_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `layer_priority_id` int(11) NOT NULL,
  `layer_secret_id` int(11) NOT NULL,
  `objective_id` int(11) NOT NULL,
  `custom_registration_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `implementation_date` date NOT NULL,
  `implementation_time` time NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status_sending` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `registration_create_number`
--

INSERT INTO `registration_create_number` (`id`, `registration_create_number_of_run_id`, `registration_type`, `dated_send`, `level_institution_id`, `level_institution`, `department_of_instutition_id`, `create_number_by`, `use_instutition_id`, `use_instutition_level`, `central_registration`, `level_institution_central_id`, `level_institution_central`, `from`, `subject`, `to_receive`, `attach_detail`, `reference_to`, `detail`, `layer_priority_id`, `layer_secret_id`, `objective_id`, `custom_registration_number`, `implementation_date`, `implementation_time`, `created`, `updated`, `status_sending`, `active`) VALUES
(56, 56, '', '2015-03-25', 14, 'institution_province', 38, '', 14, 'institution_province', 'no', NULL, NULL, 'xxx1', 'xxx2', 'xxx3', '', '', '', 1, 1, 1, 'No', '2015-03-25', '16:12:00', '2015-03-25 16:12:53', '2015-03-25 16:12:53', 1, 1),
(57, 57, '', '2015-03-25', 14, 'institution_province', 38, '', 14, 'institution_province', 'yes', 4, 'institution_province', 'vvv1', 'vvv2', 'vvv3', '', '', '', 1, 1, 1, 'No', '2015-03-25', '16:13:00', '2015-03-25 16:13:30', '2015-03-25 16:13:30', 1, 1),
(58, 58, '', '2015-03-25', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'กหด', 'หฟกด', 'กหฟด', '', '', '', 1, 1, 1, 'No', '2015-03-25', '23:17:00', '2015-03-25 23:17:29', '2015-03-25 23:17:29', 0, 1),
(59, 59, 'ว', '2015-03-25', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'dfdsf', 'ddfasf', 'dfsad', '', '', '', 1, 1, 1, 'No', '2015-03-25', '23:48:00', '2015-03-25 23:48:34', '2015-03-25 23:48:34', 0, 1),
(60, 60, '', '2015-03-25', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'dsfaf', 'dasfds', 'fdsf', '', '', '', 1, 1, 1, 'No', '2015-03-25', '23:53:00', '2015-03-25 23:53:15', '2015-03-25 23:53:15', 0, 1),
(61, 61, 'คำสั่ง', '2015-04-02', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'dafadf', 'adfdas', 'fadsfada', '', '', '', 1, 1, 1, 'No', '2015-04-02', '00:19:00', '2015-04-02 00:19:34', '2015-04-02 00:19:34', 0, 1),
(62, 62, 'วิทยุ', '2015-04-02', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'asdfdsaf', 'sdafsdaf', 'dfsadsf', '', '', '', 1, 1, 1, 'No', '2015-04-02', '00:33:00', '2015-04-02 00:34:03', '2015-04-02 00:34:03', 0, 1),
(63, 63, '', '2015-05-10', 4, 'institution_province', 33, 'governor_or_prefect', 4, 'institution_province', 'no', NULL, NULL, 'ffsdf', 'afdadf', 'dsfdsf', '', '', '', 1, 1, 1, 'No', '2015-05-10', '19:08:00', '2015-05-10 19:08:35', '2015-05-10 19:08:35', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration_create_number_file_upload`
--

CREATE TABLE IF NOT EXISTS `registration_create_number_file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_create_number_id` int(11) NOT NULL,
  `file_upload_name` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `registration_create_number_file_upload`
--

INSERT INTO `registration_create_number_file_upload` (`id`, `registration_create_number_id`, `file_upload_name`, `created`, `updated`, `active`) VALUES
(1, 58, '1427301586_MTM3NjBfMTAyMDM0MDY4MjM3NjM2ODBfNjU0OTA3MDU0Mjc4MzU5NTI2NF9uLmpwZw.jpg', '2015-03-25 23:39:46', '2015-03-25 23:39:46', 1),
(2, 63, '1431259735_MDY4LmpwZw.jpg', '2015-05-10 19:08:55', '2015-05-10 19:08:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration_create_number_of_run`
--

CREATE TABLE IF NOT EXISTS `registration_create_number_of_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_create_number_id` int(11) NOT NULL,
  `level_institution_id` int(11) NOT NULL,
  `level_institution` varchar(255) NOT NULL,
  `registration_type` varchar(50) NOT NULL,
  `number_of_run` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `registration_create_number_of_run`
--

INSERT INTO `registration_create_number_of_run` (`id`, `registration_create_number_id`, `level_institution_id`, `level_institution`, `registration_type`, `number_of_run`, `active`) VALUES
(56, 56, 14, 'institution_province', 'normal', 1, 1),
(57, 57, 4, 'institution_province', 'normal', 1, 1),
(58, 58, 4, 'institution_province', 'normal', 2, 1),
(59, 59, 4, 'institution_province', 'vian', 1, 1),
(60, 60, 4, 'institution_province', 'normal', 3, 1),
(61, 61, 4, 'institution_province', 'command', 1, 1),
(62, 62, 4, 'institution_province', 'radio', 1, 1),
(63, 63, 4, 'institution_province', 'normal', 4, 1),
(64, 64, 4, 'institution_province', 'normal', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration_receive_document`
--

CREATE TABLE IF NOT EXISTS `registration_receive_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instutition_receiver_id` int(11) NOT NULL DEFAULT '0',
  `instutition_receiver_level` varchar(50) NOT NULL DEFAULT '0',
  `instutition_sender_id` int(11) NOT NULL DEFAULT '0',
  `instutition_sender_level` varchar(50) NOT NULL DEFAULT '0',
  `registration_document_outside_id` int(11) DEFAULT NULL,
  `registration_create_number_id` int(11) NOT NULL,
  `registration_receive_document_of_run_id` int(11) NOT NULL,
  `receive_type` varchar(255) NOT NULL,
  `document_no` varchar(255) NOT NULL,
  `receive_date` date NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `to_receive` varchar(255) NOT NULL,
  `attach_detail` varchar(255) NOT NULL,
  `reference_to` varchar(255) NOT NULL,
  `offer_the_operating` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `layer_priority_id` int(11) NOT NULL,
  `layer_secret_id` int(11) NOT NULL,
  `objective_id` int(11) NOT NULL,
  `implementation_date` date NOT NULL,
  `implementation_time` varchar(50) NOT NULL,
  `status_sender_to_department` tinyint(4) NOT NULL DEFAULT '0',
  `cdate` datetime DEFAULT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `registration_receive_document`
--

INSERT INTO `registration_receive_document` (`id`, `instutition_receiver_id`, `instutition_receiver_level`, `instutition_sender_id`, `instutition_sender_level`, `registration_document_outside_id`, `registration_create_number_id`, `registration_receive_document_of_run_id`, `receive_type`, `document_no`, `receive_date`, `from`, `subject`, `to_receive`, `attach_detail`, `reference_to`, `offer_the_operating`, `detail`, `layer_priority_id`, `layer_secret_id`, `objective_id`, `implementation_date`, `implementation_time`, `status_sender_to_department`, `cdate`, `udate`, `active`) VALUES
(10, 21, 'institution_province', 14, 'institution_province', 16, 56, 10, 'online', 'ตร00004/1', '2015-03-25', 'xxx1', 'xxx2', 'xxx3', '', '', '', '', 1, 1, 1, '2015-03-25', '16:14', 0, '2015-03-25 16:14:22', '2015-03-25 16:14:22', 1),
(11, 21, 'institution_province', 4, 'institution_province', 17, 57, 11, 'online', 'ตร00004/1', '2015-03-25', 'vvv1', 'vvv2', 'vvv3', '', '', '', '', 1, 1, 1, '2015-03-25', '16:14', 0, '2015-03-25 16:14:34', '2015-03-25 16:14:34', 1),
(12, 4, 'institution_province', 0, '0', NULL, 0, 12, 'other', 'dsaf', '1970-01-01', 'adfsdaf', 'asdfdsfd', 'fdsfdsf', '', '', '', '', 1, 1, 1, '2015-03-25', '23:49', 0, '2015-03-25 23:49:32', '2015-03-25 23:49:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration_receive_document_file_upload`
--

CREATE TABLE IF NOT EXISTS `registration_receive_document_file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_receive_document_id` int(11) NOT NULL,
  `file_upload_name` text NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registration_receive_document_of_run`
--

CREATE TABLE IF NOT EXISTS `registration_receive_document_of_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_receive_document_id` int(11) NOT NULL,
  `level_institution_id` int(11) NOT NULL,
  `level_institution` varchar(255) NOT NULL,
  `number_of_run` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `registration_receive_document_of_run`
--

INSERT INTO `registration_receive_document_of_run` (`id`, `registration_receive_document_id`, `level_institution_id`, `level_institution`, `number_of_run`, `active`) VALUES
(10, 10, 21, 'institution_province', 1, 1),
(11, 11, 21, 'institution_province', 2, 1),
(12, 12, 4, 'institution_province', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration_send_document_outside`
--

CREATE TABLE IF NOT EXISTS `registration_send_document_outside` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_create_number_id` int(11) NOT NULL,
  `institution_id_for_send` int(11) NOT NULL,
  `institution_level_for_send` varchar(50) NOT NULL,
  `status_reading` varchar(50) NOT NULL,
  `status_receive` varchar(50) NOT NULL DEFAULT 'no',
  `status_return_document` varchar(50) NOT NULL,
  `reason_return_document` text NOT NULL,
  `detail` text NOT NULL,
  `type_send` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `udate` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `registration_send_document_outside`
--

INSERT INTO `registration_send_document_outside` (`id`, `registration_create_number_id`, `institution_id_for_send`, `institution_level_for_send`, `status_reading`, `status_receive`, `status_return_document`, `reason_return_document`, `detail`, `type_send`, `cdate`, `udate`, `active`) VALUES
(16, 56, 21, 'institution_province', 'no', 'yes', 'no', '', '', '', '2015-03-25 16:13:13', '2015-03-25 16:14:35', 1),
(17, 57, 21, 'institution_province', 'no', 'yes', 'no', '', '', '', '2015-03-25 16:13:48', '2015-03-25 16:14:35', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
