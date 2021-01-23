-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2021 at 01:53 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turkish_perfex`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount_list`
--

CREATE TABLE `tblaccount_list` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vat` varchar(20) NOT NULL,
  `phone_number` varchar(40) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `created_by` varchar(11) NOT NULL,
  `updated_by` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

CREATE TABLE `tblactivity_log` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(54, 'Contact Created [ID: 2]', '2021-01-02 20:46:11', 'admin user'),
(55, 'Barcode Added [ID: 1234]', '2021-01-02 20:46:54', 'admin user'),
(56, 'Failed Login Attempt [Email: admin@user.com, Is Staff Member: Yes, IP: 50.7.159.34]', '2021-01-15 19:29:12', NULL),
(57, 'Non Existing User Tried to Login [Email: admin@test.com, Is Staff Member: Yes, IP: 50.7.159.34]', '2021-01-15 19:29:23', NULL),
(58, 'New Proposal Created [ID: 124]', '2021-01-19 12:52:26', 'admin user'),
(59, 'Proposal Status Changes [ProposalID:124, Status:Accepted,Client Action: 0]', '2021-01-19 12:52:52', 'admin user'),
(60, 'Proposal Converted to Estimate [EstimateID: 99, ProposalID: 124]', '2021-01-19 12:53:01', 'admin user'),
(61, 'Invoice Status Updated [Invoice Number: WO-000105, From: Unpaid To: Paid]', '2021-01-19 12:53:30', 'admin user'),
(62, 'Proposal Converted to Invoice [InvoiceID: 105, ProposalID: 99]', '2021-01-19 12:53:30', 'admin user'),
(63, 'New Tansfer Added [ID: 165]', '2021-01-19 13:02:30', 'admin user'),
(64, 'New Tansfer Added [ID: 166]', '2021-01-19 13:02:30', 'admin user'),
(65, 'New Tansfer Added [ID: 167]', '2021-01-19 13:02:30', 'admin user'),
(66, 'New Tansfer Added [ID: 168]', '2021-01-19 13:02:30', 'admin user'),
(67, 'New Tansfer Added [ID: 169]', '2021-01-19 13:02:30', 'admin user'),
(68, 'New Tansfer Added [ID: 170]', '2021-01-19 13:03:04', 'admin user'),
(69, 'New Tansfer Added [ID: 171]', '2021-01-19 13:03:04', 'admin user'),
(70, 'New Tansfer Added [ID: 172]', '2021-01-19 13:03:04', 'admin user'),
(71, 'New Tansfer Added [ID: 173]', '2021-01-19 13:03:04', 'admin user'),
(72, 'New Tansfer Added [ID: 174]', '2021-01-19 13:03:04', 'admin user'),
(73, 'New Tansfer Added [ID: 175]', '2021-01-19 13:03:04', 'admin user'),
(74, 'New Tansfer Added [ID: 176]', '2021-01-19 13:03:05', 'admin user'),
(75, 'New Tansfer Added [ID: 177]', '2021-01-19 13:03:05', 'admin user'),
(76, 'New Tansfer Added [ID: 178]', '2021-01-19 13:03:05', 'admin user'),
(77, 'New Tansfer Added [ID: 179]', '2021-01-19 13:03:05', 'admin user'),
(78, 'New Tansfer Added [ID: 180]', '2021-01-19 13:03:05', 'admin user'),
(79, 'New Tansfer Added [ID: 181]', '2021-01-19 13:03:05', 'admin user'),
(80, 'New Tansfer Added [ID: 182]', '2021-01-19 13:03:05', 'admin user'),
(81, 'New Tansfer Added [ID: 183]', '2021-01-19 13:03:05', 'admin user'),
(82, 'New Tansfer Added [ID: 184]', '2021-01-19 13:03:05', 'admin user'),
(83, 'Email Sent To [Email: birkan_s@yahoo.com, Template: Warehouse Overloaded(Send to Selected Staffs)]', '2021-01-19 13:13:08', 'admin user'),
(84, 'New Tansfer Added [ID: 185]', '2021-01-19 13:13:08', 'admin user'),
(85, 'Barcode Added [ID: 123]', '2021-01-19 13:26:59', 'admin user'),
(86, 'Barcode Updated [1234]', '2021-01-19 13:27:05', 'admin user'),
(87, 'Tansfer Updated [42]', '2021-01-19 13:29:49', 'admin user'),
(88, 'Tansfer Updated [43]', '2021-01-19 13:29:49', 'admin user'),
(89, 'Tansfer Updated [44]', '2021-01-19 13:29:49', 'admin user'),
(90, 'Tansfer Updated [45]', '2021-01-19 13:29:49', 'admin user'),
(91, 'Email Sent To [Email: birkan_s@yahoo.com, Template: Warehouse Overloaded(Send to Selected Staffs)]', '2021-01-19 13:29:55', 'admin user'),
(92, 'New Purchase Order Added [ID: 170]', '2021-01-20 08:24:09', 'admin user'),
(93, 'Item Added [ID: testx]', '2021-01-20 11:44:03', 'admin user'),
(94, 'Item Added [ID: testx]', '2021-01-20 11:44:04', 'admin user'),
(95, 'Item Added [ID: testx]', '2021-01-20 11:44:04', 'admin user'),
(96, 'Item Added [ID: testx]', '2021-01-20 11:44:04', 'admin user'),
(97, 'Pack List Added [ID: 152]', '2021-01-20 11:46:10', 'admin user'),
(98, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:10', 'admin user'),
(99, 'Pack List Added [ID: 153]', '2021-01-20 11:46:11', 'admin user'),
(100, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:11', 'admin user'),
(101, 'Pack List Added [ID: 154]', '2021-01-20 11:46:17', 'admin user'),
(102, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:17', 'admin user'),
(103, 'Pack List Added [ID: 155]', '2021-01-20 11:46:17', 'admin user'),
(104, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:17', 'admin user'),
(105, 'Pack List Added [ID: 156]', '2021-01-20 11:46:17', 'admin user'),
(106, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:17', 'admin user'),
(107, 'Pack List Added [ID: 157]', '2021-01-20 11:46:17', 'admin user'),
(108, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:17', 'admin user'),
(109, 'Pack List Added [ID: 158]', '2021-01-20 11:46:18', 'admin user'),
(110, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:18', 'admin user'),
(111, 'Pack List Added [ID: 159]', '2021-01-20 11:46:19', 'admin user'),
(112, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:19', 'admin user'),
(113, 'Pack List Added [ID: 160]', '2021-01-20 11:46:19', 'admin user'),
(114, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:19', 'admin user'),
(115, 'Pack List Added [ID: 161]', '2021-01-20 11:46:19', 'admin user'),
(116, 'Item Added [ID: 50X50X50]', '2021-01-20 11:46:19', 'admin user'),
(117, 'New Tansfer Added [ID: 186]', '2021-01-20 12:17:06', 'admin user'),
(118, 'New Tansfer Added [ID: 187]', '2021-01-20 12:17:06', 'admin user'),
(119, 'New Tansfer Added [ID: 188]', '2021-01-20 12:17:06', 'admin user'),
(120, 'New Tansfer Added [ID: 189]', '2021-01-20 12:17:07', 'admin user'),
(121, 'New Tansfer Added [ID: 190]', '2021-01-20 12:17:07', 'admin user'),
(122, 'New Tansfer Added [ID: 191]', '2021-01-20 12:17:07', 'admin user'),
(123, 'New Tansfer Added [ID: 192]', '2021-01-20 12:17:07', 'admin user'),
(124, 'New Tansfer Added [ID: 193]', '2021-01-20 12:17:07', 'admin user'),
(125, 'New Tansfer Added [ID: 194]', '2021-01-20 12:17:07', 'admin user'),
(126, 'New Tansfer Added [ID: 195]', '2021-01-20 12:19:35', 'admin user'),
(127, 'Email Sent To [Email: admin@user.com, Template: Event Notification (Calendar)]', '2021-01-20 12:20:12', '[CRON]'),
(128, 'New Tansfer Added [ID: 196]', '2021-01-20 12:47:44', 'admin user'),
(129, 'Barcode Added [ID: 1234]', '2021-01-20 12:48:57', 'admin user'),
(130, 'New Tansfer Added [ID: 197]', '2021-01-20 12:55:52', 'admin user'),
(131, 'New Sale Phase Added [ID: Completed]', '2021-01-20 12:57:15', 'admin user'),
(132, 'New Tansfer Added [ID: 198]', '2021-01-20 12:59:53', 'admin user'),
(133, 'Installation Added [ID: 5555]', '2021-01-20 13:06:03', 'admin user'),
(134, 'New Purchase Order Added [ID: 171]', '2021-01-20 13:08:36', 'admin user'),
(135, 'Purchase Order Updated [171]', '2021-01-20 13:09:10', 'admin user'),
(136, 'New Tansfer Added [ID: 199]', '2021-01-20 14:02:08', 'admin user'),
(137, 'New Tansfer Added [ID: 200]', '2021-01-20 14:02:08', 'admin user'),
(138, 'New Tansfer Added [ID: 201]', '2021-01-20 14:02:08', 'admin user');

-- --------------------------------------------------------

--
-- Table structure for table `tblallocated_items`
--

CREATE TABLE `tblallocated_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `allocation_product_code` int(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `allocation_reason` text NOT NULL,
  `stock_category` int(11) NOT NULL,
  `current_location` varchar(255) NOT NULL,
  `stock_quantity` decimal(11,2) NOT NULL,
  `wo_no` int(11) DEFAULT NULL,
  `created_user` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblbarcode_list`
--

CREATE TABLE `tblbarcode_list` (
  `id` int(11) NOT NULL,
  `barcode_id` int(11) NOT NULL,
  `products_code` varchar(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `barcode_price` decimal(15,2) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblbarcode_list`
--

INSERT INTO `tblbarcode_list` (`id`, `barcode_id`, `products_code`, `product_name`, `barcode_price`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(24, 1234, '78', 'TEST', 50.00, 1, 1, '2020-07-13 08:15:40', '2020-08-03 04:21:52'),
(25, 12323, '77', 'Test0723', 50.00, 1, 1, '2020-07-19 03:12:55', '2020-08-03 04:21:57'),
(26, 2147483647, '133', 'Testing Product', 0.10, 1, 0, '2020-11-17 11:23:28', '0000-00-00 00:00:00'),
(27, 1234, '134', 'Glass', 1.00, 1, 0, '2021-01-02 08:46:54', '0000-00-00 00:00:00'),
(28, 1234, '125', 'BREAD BIN WITH TRAY', 0.10, 1, 1, '2021-01-19 01:26:59', '2021-01-19 01:27:05'),
(29, 1234, '129', 'MASTER BATCH', 1.00, 1, 0, '2021-01-20 12:48:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(1, 'Raf Company', '234556', '1111111111', 14, 'ist', '34000', '', 'xxxxxxxxxxxxxxx', 'xxx.com', '2020-07-17 05:17:17', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1),
(2, 'test', '', '', 0, '', '', '', '', '', '2020-07-21 06:16:31', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 22, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `opt_in_purpose_description` text,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

CREATE TABLE `tblconsent_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(1, 1, 1, 'raf', 'company', 'cutewolf4575@objeplastik.work', '123', 'test', '2020-07-26 02:14:31', '$2a$08$2V9VLNd27NGrLJ4YuoQg1OuIUibWT/VdVHUoO4.Srm5aIMsvy0KdO', NULL, NULL, '2020-07-26 02:14:31', NULL, NULL, '127.0.0.1', '2020-08-06 16:26:17', NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 'Birkan', 'Sahi', 'birkan_s@yahoo.com', '05336825192', '', '2021-01-02 20:46:11', '$2a$08$MAy8pzFZSKipr3MIADSPheSh2zwANOApIUZ9d7KnAPpyomxicmnHC', NULL, NULL, '2021-01-02 20:46:11', NULL, NULL, NULL, NULL, NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

CREATE TABLE `tblcontact_permissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontact_permissions`
--

INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 4, 2),
(11, 5, 2),
(12, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext,
  `description` text,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

CREATE TABLE `tblcontracts_types` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontracts_types`
--

INSERT INTO `tblcontracts_types` (`id`, `name`) VALUES
(1, 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

CREATE TABLE `tblcontract_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

CREATE TABLE `tblcontract_renewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text,
  `terms` text,
  `clientnote` text,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

CREATE TABLE `tblcreditnote_refunds` (
  `id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`, `rate`) VALUES
(1, '$', 'USD', '.', ',', 'before', 1, 100),
(2, '€', 'EUR', '.', ',', 'before', 0, 6),
(3, '₺', 'TL', '.', ',', 'before', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies_exchange`
--

CREATE TABLE `tblcurrencies_exchange` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `rate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies_exchange`
--

INSERT INTO `tblcurrencies_exchange` (`id`, `name`, `symbol`, `rate`) VALUES
(21, 'BDT', '৳', '1'),
(22, 'EUR', '€', '5'),
(23, 'USD', '$', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

CREATE TABLE `tblcustomers_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomers_groups`
--

INSERT INTO `tblcustomers_groups` (`id`, `name`) VALUES
(1, 'VAT');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

CREATE TABLE `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

CREATE TABLE `tblcustomer_groups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `display_inline` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT '0',
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

CREATE TABLE `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the {contract_subject} attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(76, 'client', 'new-client-created', 'bulgarian', 'New Contact Added/Registered (Welcome Email) [bulgarian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(77, 'invoice', 'invoice-send-to-client', 'bulgarian', 'Send Invoice to Customer [bulgarian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(78, 'ticket', 'new-ticket-opened-admin', 'bulgarian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(79, 'ticket', 'ticket-reply', 'bulgarian', 'Ticket Reply (Sent to Customer) [bulgarian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(80, 'ticket', 'ticket-autoresponse', 'bulgarian', 'New Ticket Opened - Autoresponse [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(81, 'invoice', 'invoice-payment-recorded', 'bulgarian', 'Invoice Payment Recorded (Sent to Customer) [bulgarian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(82, 'invoice', 'invoice-overdue-notice', 'bulgarian', 'Invoice Overdue Notice [bulgarian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(83, 'invoice', 'invoice-already-send', 'bulgarian', 'Invoice Already Sent to Customer [bulgarian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(84, 'ticket', 'new-ticket-created-staff', 'bulgarian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [bulgarian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(85, 'estimate', 'estimate-send-to-client', 'bulgarian', 'Send Estimate to Customer [bulgarian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(86, 'ticket', 'ticket-reply-to-admin', 'bulgarian', 'Ticket Reply (Sent to Staff) [bulgarian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(87, 'estimate', 'estimate-already-send', 'bulgarian', 'Estimate Already Sent to Customer [bulgarian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(88, 'contract', 'contract-expiration', 'bulgarian', 'Contract Expiration Reminder (Sent to Customer Contacts) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(89, 'tasks', 'task-assigned', 'bulgarian', 'New Task Assigned (Sent to Staff) [bulgarian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(90, 'tasks', 'task-added-as-follower', 'bulgarian', 'Staff Member Added as Follower on Task (Sent to Staff) [bulgarian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(91, 'tasks', 'task-commented', 'bulgarian', 'New Comment on Task (Sent to Staff) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(92, 'tasks', 'task-added-attachment', 'bulgarian', 'New Attachment(s) on Task (Sent to Staff) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(93, 'estimate', 'estimate-declined-to-staff', 'bulgarian', 'Estimate Declined (Sent to Staff) [bulgarian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(94, 'estimate', 'estimate-accepted-to-staff', 'bulgarian', 'Estimate Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(95, 'proposals', 'proposal-client-accepted', 'bulgarian', 'Customer Action - Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(96, 'proposals', 'proposal-send-to-customer', 'bulgarian', 'Send Proposal to Customer [bulgarian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(97, 'proposals', 'proposal-client-declined', 'bulgarian', 'Customer Action - Declined (Sent to Staff) [bulgarian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(98, 'proposals', 'proposal-client-thank-you', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(99, 'proposals', 'proposal-comment-to-client', 'bulgarian', 'New Comment  (Sent to Customer/Lead) [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(100, 'proposals', 'proposal-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(101, 'estimate', 'estimate-thank-you-to-customer', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(102, 'tasks', 'task-deadline-notification', 'bulgarian', 'Task Deadline Reminder - Sent to Assigned Members [bulgarian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(103, 'contract', 'send-contract', 'bulgarian', 'Send Contract to Customer [bulgarian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(104, 'invoice', 'invoice-payment-recorded-to-staff', 'bulgarian', 'Invoice Payment Recorded (Sent to Staff) [bulgarian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(105, 'ticket', 'auto-close-ticket', 'bulgarian', 'Auto Close Ticket [bulgarian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(106, 'project', 'new-project-discussion-created-to-staff', 'bulgarian', 'New Project Discussion (Sent to Project Members) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(107, 'project', 'new-project-discussion-created-to-customer', 'bulgarian', 'New Project Discussion (Sent to Customer Contacts) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(108, 'project', 'new-project-file-uploaded-to-customer', 'bulgarian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(109, 'project', 'new-project-file-uploaded-to-staff', 'bulgarian', 'New Project File(s) Uploaded (Sent to Project Members) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(110, 'project', 'new-project-discussion-comment-to-customer', 'bulgarian', 'New Discussion Comment  (Sent to Customer Contacts) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(111, 'project', 'new-project-discussion-comment-to-staff', 'bulgarian', 'New Discussion Comment (Sent to Project Members) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(112, 'project', 'staff-added-as-project-member', 'bulgarian', 'Staff Added as Project Member [bulgarian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(113, 'estimate', 'estimate-expiry-reminder', 'bulgarian', 'Estimate Expiration Reminder [bulgarian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(114, 'proposals', 'proposal-expiry-reminder', 'bulgarian', 'Proposal Expiration Reminder [bulgarian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(115, 'staff', 'new-staff-created', 'bulgarian', 'New Staff Created (Welcome Email) [bulgarian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(116, 'client', 'contact-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(117, 'client', 'contact-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(118, 'client', 'contact-set-password', 'bulgarian', 'Set New Password [bulgarian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(119, 'staff', 'staff-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(120, 'staff', 'staff-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(121, 'project', 'assigned-to-project', 'bulgarian', 'New Project Created (Sent to Customer Contacts) [bulgarian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(122, 'tasks', 'task-added-attachment-to-contacts', 'bulgarian', 'New Attachment(s) on Task (Sent to Customer Contacts) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(123, 'tasks', 'task-commented-to-contacts', 'bulgarian', 'New Comment on Task (Sent to Customer Contacts) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(124, 'leads', 'new-lead-assigned', 'bulgarian', 'New Lead Assigned to Staff Member [bulgarian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(125, 'client', 'client-statement', 'bulgarian', 'Statement - Account Summary [bulgarian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(126, 'ticket', 'ticket-assigned-to-admin', 'bulgarian', 'New Ticket Assigned (Sent to Staff) [bulgarian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(127, 'client', 'new-client-registered-to-admin', 'bulgarian', 'New Customer Registration (Sent to admins) [bulgarian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(128, 'leads', 'new-web-to-lead-form-submitted', 'bulgarian', 'Web to lead form submitted - Sent to lead [bulgarian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(129, 'staff', 'two-factor-authentication', 'bulgarian', 'Two Factor Authentication [bulgarian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(130, 'project', 'project-finished-to-customer', 'bulgarian', 'Project Marked as Finished (Sent to Customer Contacts) [bulgarian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(131, 'credit_note', 'credit-note-send-to-client', 'bulgarian', 'Send Credit Note To Email [bulgarian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(132, 'tasks', 'task-status-change-to-staff', 'bulgarian', 'Task Status Changed (Sent to Staff) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(133, 'tasks', 'task-status-change-to-contacts', 'bulgarian', 'Task Status Changed (Sent to Customer Contacts) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(134, 'staff', 'reminder-email-staff', 'bulgarian', 'Staff Reminder Email [bulgarian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(135, 'contract', 'contract-comment-to-client', 'bulgarian', 'New Comment  (Sent to Customer Contacts) [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(136, 'contract', 'contract-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(137, 'subscriptions', 'send-subscription', 'bulgarian', 'Send Subscription to Customer [bulgarian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(138, 'subscriptions', 'subscription-payment-failed', 'bulgarian', 'Subscription Payment Failed [bulgarian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(139, 'subscriptions', 'subscription-canceled', 'bulgarian', 'Subscription Canceled (Sent to customer primary contact) [bulgarian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(140, 'subscriptions', 'subscription-payment-succeeded', 'bulgarian', 'Subscription Payment Succeeded (Sent to customer primary contact) [bulgarian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(141, 'contract', 'contract-expiration-to-staff', 'bulgarian', 'Contract Expiration Reminder (Sent to Staff) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(142, 'gdpr', 'gdpr-removal-request', 'bulgarian', 'Removal Request From Contact (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(143, 'gdpr', 'gdpr-removal-request-lead', 'bulgarian', 'Removal Request From Lead (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(144, 'client', 'client-registration-confirmed', 'bulgarian', 'Customer Registration Confirmed [bulgarian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(145, 'contract', 'contract-signed-to-staff', 'bulgarian', 'Contract Signed (Sent to Staff) [bulgarian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(146, 'subscriptions', 'customer-subscribed-to-staff', 'bulgarian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [bulgarian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(147, 'client', 'contact-verification-email', 'bulgarian', 'Email Verification (Sent to Contact After Registration) [bulgarian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(148, 'client', 'new-customer-profile-file-uploaded-to-staff', 'bulgarian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [bulgarian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(149, 'staff', 'event-notification-to-staff', 'bulgarian', 'Event Notification (Calendar) [bulgarian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(150, 'subscriptions', 'subscription-payment-requires-action', 'bulgarian', 'Credit Card Authorization Required - SCA [bulgarian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(151, 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(152, 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(153, 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(154, 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(155, 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(156, 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(157, 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(158, 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(159, 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(160, 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(161, 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(162, 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(163, 'contract', 'contract-expiration', 'catalan', 'Contract Expiration Reminder (Sent to Customer Contacts) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(164, 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(165, 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task (Sent to Staff) [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(166, 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(167, 'tasks', 'task-added-attachment', 'catalan', 'New Attachment(s) on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(168, 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(169, 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(170, 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(171, 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(172, 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(173, 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(174, 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment  (Sent to Customer/Lead) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(175, 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(176, 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(177, 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(178, 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(179, 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(180, 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(181, 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(182, 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(183, 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File(s) Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(184, 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File(s) Uploaded (Sent to Project Members) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(185, 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(186, 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(187, 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(188, 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(189, 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(190, 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(191, 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(192, 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(193, 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(194, 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(195, 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(196, 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(197, 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment(s) on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(198, 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(199, 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(200, 'client', 'client-statement', 'catalan', 'Statement - Account Summary [catalan]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(201, 'ticket', 'ticket-assigned-to-admin', 'catalan', 'New Ticket Assigned (Sent to Staff) [catalan]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(202, 'client', 'new-client-registered-to-admin', 'catalan', 'New Customer Registration (Sent to admins) [catalan]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(203, 'leads', 'new-web-to-lead-form-submitted', 'catalan', 'Web to lead form submitted - Sent to lead [catalan]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(204, 'staff', 'two-factor-authentication', 'catalan', 'Two Factor Authentication [catalan]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(205, 'project', 'project-finished-to-customer', 'catalan', 'Project Marked as Finished (Sent to Customer Contacts) [catalan]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(206, 'credit_note', 'credit-note-send-to-client', 'catalan', 'Send Credit Note To Email [catalan]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(207, 'tasks', 'task-status-change-to-staff', 'catalan', 'Task Status Changed (Sent to Staff) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(208, 'tasks', 'task-status-change-to-contacts', 'catalan', 'Task Status Changed (Sent to Customer Contacts) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(209, 'staff', 'reminder-email-staff', 'catalan', 'Staff Reminder Email [catalan]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(210, 'contract', 'contract-comment-to-client', 'catalan', 'New Comment  (Sent to Customer Contacts) [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(211, 'contract', 'contract-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(212, 'subscriptions', 'send-subscription', 'catalan', 'Send Subscription to Customer [catalan]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(213, 'subscriptions', 'subscription-payment-failed', 'catalan', 'Subscription Payment Failed [catalan]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(214, 'subscriptions', 'subscription-canceled', 'catalan', 'Subscription Canceled (Sent to customer primary contact) [catalan]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(215, 'subscriptions', 'subscription-payment-succeeded', 'catalan', 'Subscription Payment Succeeded (Sent to customer primary contact) [catalan]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(216, 'contract', 'contract-expiration-to-staff', 'catalan', 'Contract Expiration Reminder (Sent to Staff) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(217, 'gdpr', 'gdpr-removal-request', 'catalan', 'Removal Request From Contact (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(218, 'gdpr', 'gdpr-removal-request-lead', 'catalan', 'Removal Request From Lead (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(219, 'client', 'client-registration-confirmed', 'catalan', 'Customer Registration Confirmed [catalan]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(220, 'contract', 'contract-signed-to-staff', 'catalan', 'Contract Signed (Sent to Staff) [catalan]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(221, 'subscriptions', 'customer-subscribed-to-staff', 'catalan', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [catalan]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(222, 'client', 'contact-verification-email', 'catalan', 'Email Verification (Sent to Contact After Registration) [catalan]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(223, 'client', 'new-customer-profile-file-uploaded-to-staff', 'catalan', 'New Customer Profile File(s) Uploaded (Sent to Staff) [catalan]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(224, 'staff', 'event-notification-to-staff', 'catalan', 'Event Notification (Calendar) [catalan]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(225, 'subscriptions', 'subscription-payment-requires-action', 'catalan', 'Credit Card Authorization Required - SCA [catalan]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(226, 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(227, 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(228, 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(229, 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(230, 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(231, 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(232, 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(233, 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(234, 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(235, 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(236, 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(237, 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(238, 'contract', 'contract-expiration', 'chinese', 'Contract Expiration Reminder (Sent to Customer Contacts) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(239, 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(240, 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task (Sent to Staff) [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(241, 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(242, 'tasks', 'task-added-attachment', 'chinese', 'New Attachment(s) on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(243, 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(244, 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(245, 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(246, 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(247, 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(248, 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(249, 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment  (Sent to Customer/Lead) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(250, 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(251, 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(252, 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(253, 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(254, 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(255, 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(256, 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(257, 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(258, 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(259, 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File(s) Uploaded (Sent to Project Members) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(260, 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(261, 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(262, 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(263, 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(264, 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(265, 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(266, 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(267, 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(268, 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(269, 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(270, 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(271, 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(272, 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment(s) on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(273, 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(274, 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(275, 'client', 'client-statement', 'chinese', 'Statement - Account Summary [chinese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(276, 'ticket', 'ticket-assigned-to-admin', 'chinese', 'New Ticket Assigned (Sent to Staff) [chinese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(277, 'client', 'new-client-registered-to-admin', 'chinese', 'New Customer Registration (Sent to admins) [chinese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(278, 'leads', 'new-web-to-lead-form-submitted', 'chinese', 'Web to lead form submitted - Sent to lead [chinese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(279, 'staff', 'two-factor-authentication', 'chinese', 'Two Factor Authentication [chinese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(280, 'project', 'project-finished-to-customer', 'chinese', 'Project Marked as Finished (Sent to Customer Contacts) [chinese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(281, 'credit_note', 'credit-note-send-to-client', 'chinese', 'Send Credit Note To Email [chinese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(282, 'tasks', 'task-status-change-to-staff', 'chinese', 'Task Status Changed (Sent to Staff) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(283, 'tasks', 'task-status-change-to-contacts', 'chinese', 'Task Status Changed (Sent to Customer Contacts) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(284, 'staff', 'reminder-email-staff', 'chinese', 'Staff Reminder Email [chinese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(285, 'contract', 'contract-comment-to-client', 'chinese', 'New Comment  (Sent to Customer Contacts) [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(286, 'contract', 'contract-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(287, 'subscriptions', 'send-subscription', 'chinese', 'Send Subscription to Customer [chinese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(288, 'subscriptions', 'subscription-payment-failed', 'chinese', 'Subscription Payment Failed [chinese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(289, 'subscriptions', 'subscription-canceled', 'chinese', 'Subscription Canceled (Sent to customer primary contact) [chinese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(290, 'subscriptions', 'subscription-payment-succeeded', 'chinese', 'Subscription Payment Succeeded (Sent to customer primary contact) [chinese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(291, 'contract', 'contract-expiration-to-staff', 'chinese', 'Contract Expiration Reminder (Sent to Staff) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(292, 'gdpr', 'gdpr-removal-request', 'chinese', 'Removal Request From Contact (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(293, 'gdpr', 'gdpr-removal-request-lead', 'chinese', 'Removal Request From Lead (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(294, 'client', 'client-registration-confirmed', 'chinese', 'Customer Registration Confirmed [chinese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(295, 'contract', 'contract-signed-to-staff', 'chinese', 'Contract Signed (Sent to Staff) [chinese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(296, 'subscriptions', 'customer-subscribed-to-staff', 'chinese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [chinese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(297, 'client', 'contact-verification-email', 'chinese', 'Email Verification (Sent to Contact After Registration) [chinese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(298, 'client', 'new-customer-profile-file-uploaded-to-staff', 'chinese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [chinese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(299, 'staff', 'event-notification-to-staff', 'chinese', 'Event Notification (Calendar) [chinese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(300, 'subscriptions', 'subscription-payment-requires-action', 'chinese', 'Credit Card Authorization Required - SCA [chinese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(301, 'client', 'new-client-created', 'czech', 'New Contact Added/Registered (Welcome Email) [czech]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(302, 'invoice', 'invoice-send-to-client', 'czech', 'Send Invoice to Customer [czech]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(303, 'ticket', 'new-ticket-opened-admin', 'czech', 'New Ticket Opened (Opened by Staff, Sent to Customer) [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(304, 'ticket', 'ticket-reply', 'czech', 'Ticket Reply (Sent to Customer) [czech]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(305, 'ticket', 'ticket-autoresponse', 'czech', 'New Ticket Opened - Autoresponse [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(306, 'invoice', 'invoice-payment-recorded', 'czech', 'Invoice Payment Recorded (Sent to Customer) [czech]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(307, 'invoice', 'invoice-overdue-notice', 'czech', 'Invoice Overdue Notice [czech]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(308, 'invoice', 'invoice-already-send', 'czech', 'Invoice Already Sent to Customer [czech]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(309, 'ticket', 'new-ticket-created-staff', 'czech', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [czech]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(310, 'estimate', 'estimate-send-to-client', 'czech', 'Send Estimate to Customer [czech]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(311, 'ticket', 'ticket-reply-to-admin', 'czech', 'Ticket Reply (Sent to Staff) [czech]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(312, 'estimate', 'estimate-already-send', 'czech', 'Estimate Already Sent to Customer [czech]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(313, 'contract', 'contract-expiration', 'czech', 'Contract Expiration Reminder (Sent to Customer Contacts) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(314, 'tasks', 'task-assigned', 'czech', 'New Task Assigned (Sent to Staff) [czech]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(315, 'tasks', 'task-added-as-follower', 'czech', 'Staff Member Added as Follower on Task (Sent to Staff) [czech]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(316, 'tasks', 'task-commented', 'czech', 'New Comment on Task (Sent to Staff) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(317, 'tasks', 'task-added-attachment', 'czech', 'New Attachment(s) on Task (Sent to Staff) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(318, 'estimate', 'estimate-declined-to-staff', 'czech', 'Estimate Declined (Sent to Staff) [czech]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(319, 'estimate', 'estimate-accepted-to-staff', 'czech', 'Estimate Accepted (Sent to Staff) [czech]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(320, 'proposals', 'proposal-client-accepted', 'czech', 'Customer Action - Accepted (Sent to Staff) [czech]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(321, 'proposals', 'proposal-send-to-customer', 'czech', 'Send Proposal to Customer [czech]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(322, 'proposals', 'proposal-client-declined', 'czech', 'Customer Action - Declined (Sent to Staff) [czech]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(323, 'proposals', 'proposal-client-thank-you', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(324, 'proposals', 'proposal-comment-to-client', 'czech', 'New Comment  (Sent to Customer/Lead) [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(325, 'proposals', 'proposal-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(326, 'estimate', 'estimate-thank-you-to-customer', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(327, 'tasks', 'task-deadline-notification', 'czech', 'Task Deadline Reminder - Sent to Assigned Members [czech]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(328, 'contract', 'send-contract', 'czech', 'Send Contract to Customer [czech]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(329, 'invoice', 'invoice-payment-recorded-to-staff', 'czech', 'Invoice Payment Recorded (Sent to Staff) [czech]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(330, 'ticket', 'auto-close-ticket', 'czech', 'Auto Close Ticket [czech]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(331, 'project', 'new-project-discussion-created-to-staff', 'czech', 'New Project Discussion (Sent to Project Members) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(332, 'project', 'new-project-discussion-created-to-customer', 'czech', 'New Project Discussion (Sent to Customer Contacts) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(333, 'project', 'new-project-file-uploaded-to-customer', 'czech', 'New Project File(s) Uploaded (Sent to Customer Contacts) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(334, 'project', 'new-project-file-uploaded-to-staff', 'czech', 'New Project File(s) Uploaded (Sent to Project Members) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(335, 'project', 'new-project-discussion-comment-to-customer', 'czech', 'New Discussion Comment  (Sent to Customer Contacts) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(336, 'project', 'new-project-discussion-comment-to-staff', 'czech', 'New Discussion Comment (Sent to Project Members) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(337, 'project', 'staff-added-as-project-member', 'czech', 'Staff Added as Project Member [czech]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(338, 'estimate', 'estimate-expiry-reminder', 'czech', 'Estimate Expiration Reminder [czech]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(339, 'proposals', 'proposal-expiry-reminder', 'czech', 'Proposal Expiration Reminder [czech]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(340, 'staff', 'new-staff-created', 'czech', 'New Staff Created (Welcome Email) [czech]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(341, 'client', 'contact-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(342, 'client', 'contact-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(343, 'client', 'contact-set-password', 'czech', 'Set New Password [czech]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(344, 'staff', 'staff-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(345, 'staff', 'staff-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(346, 'project', 'assigned-to-project', 'czech', 'New Project Created (Sent to Customer Contacts) [czech]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(347, 'tasks', 'task-added-attachment-to-contacts', 'czech', 'New Attachment(s) on Task (Sent to Customer Contacts) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(348, 'tasks', 'task-commented-to-contacts', 'czech', 'New Comment on Task (Sent to Customer Contacts) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(349, 'leads', 'new-lead-assigned', 'czech', 'New Lead Assigned to Staff Member [czech]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(350, 'client', 'client-statement', 'czech', 'Statement - Account Summary [czech]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(351, 'ticket', 'ticket-assigned-to-admin', 'czech', 'New Ticket Assigned (Sent to Staff) [czech]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(352, 'client', 'new-client-registered-to-admin', 'czech', 'New Customer Registration (Sent to admins) [czech]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(353, 'leads', 'new-web-to-lead-form-submitted', 'czech', 'Web to lead form submitted - Sent to lead [czech]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(354, 'staff', 'two-factor-authentication', 'czech', 'Two Factor Authentication [czech]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(355, 'project', 'project-finished-to-customer', 'czech', 'Project Marked as Finished (Sent to Customer Contacts) [czech]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(356, 'credit_note', 'credit-note-send-to-client', 'czech', 'Send Credit Note To Email [czech]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(357, 'tasks', 'task-status-change-to-staff', 'czech', 'Task Status Changed (Sent to Staff) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(358, 'tasks', 'task-status-change-to-contacts', 'czech', 'Task Status Changed (Sent to Customer Contacts) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(359, 'staff', 'reminder-email-staff', 'czech', 'Staff Reminder Email [czech]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(360, 'contract', 'contract-comment-to-client', 'czech', 'New Comment  (Sent to Customer Contacts) [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(361, 'contract', 'contract-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(362, 'subscriptions', 'send-subscription', 'czech', 'Send Subscription to Customer [czech]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(363, 'subscriptions', 'subscription-payment-failed', 'czech', 'Subscription Payment Failed [czech]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(364, 'subscriptions', 'subscription-canceled', 'czech', 'Subscription Canceled (Sent to customer primary contact) [czech]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(365, 'subscriptions', 'subscription-payment-succeeded', 'czech', 'Subscription Payment Succeeded (Sent to customer primary contact) [czech]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(366, 'contract', 'contract-expiration-to-staff', 'czech', 'Contract Expiration Reminder (Sent to Staff) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(367, 'gdpr', 'gdpr-removal-request', 'czech', 'Removal Request From Contact (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(368, 'gdpr', 'gdpr-removal-request-lead', 'czech', 'Removal Request From Lead (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(369, 'client', 'client-registration-confirmed', 'czech', 'Customer Registration Confirmed [czech]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(370, 'contract', 'contract-signed-to-staff', 'czech', 'Contract Signed (Sent to Staff) [czech]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(371, 'subscriptions', 'customer-subscribed-to-staff', 'czech', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [czech]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(372, 'client', 'contact-verification-email', 'czech', 'Email Verification (Sent to Contact After Registration) [czech]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(373, 'client', 'new-customer-profile-file-uploaded-to-staff', 'czech', 'New Customer Profile File(s) Uploaded (Sent to Staff) [czech]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(374, 'staff', 'event-notification-to-staff', 'czech', 'Event Notification (Calendar) [czech]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(375, 'subscriptions', 'subscription-payment-requires-action', 'czech', 'Credit Card Authorization Required - SCA [czech]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(376, 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(377, 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(378, 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(379, 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(380, 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(381, 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(382, 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(383, 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(384, 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(385, 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(386, 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(387, 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(388, 'contract', 'contract-expiration', 'dutch', 'Contract Expiration Reminder (Sent to Customer Contacts) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(389, 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(390, 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task (Sent to Staff) [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(391, 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(392, 'tasks', 'task-added-attachment', 'dutch', 'New Attachment(s) on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(393, 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(394, 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(395, 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(396, 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(397, 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(398, 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(399, 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment  (Sent to Customer/Lead) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(400, 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(401, 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(402, 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(403, 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(404, 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(405, 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(406, 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(407, 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(408, 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File(s) Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(409, 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File(s) Uploaded (Sent to Project Members) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(410, 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(411, 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(412, 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(413, 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(414, 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(415, 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(416, 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(417, 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(418, 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(419, 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(420, 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(421, 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(422, 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment(s) on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(423, 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(424, 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(425, 'client', 'client-statement', 'dutch', 'Statement - Account Summary [dutch]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(426, 'ticket', 'ticket-assigned-to-admin', 'dutch', 'New Ticket Assigned (Sent to Staff) [dutch]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(427, 'client', 'new-client-registered-to-admin', 'dutch', 'New Customer Registration (Sent to admins) [dutch]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(428, 'leads', 'new-web-to-lead-form-submitted', 'dutch', 'Web to lead form submitted - Sent to lead [dutch]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(429, 'staff', 'two-factor-authentication', 'dutch', 'Two Factor Authentication [dutch]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(430, 'project', 'project-finished-to-customer', 'dutch', 'Project Marked as Finished (Sent to Customer Contacts) [dutch]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(431, 'credit_note', 'credit-note-send-to-client', 'dutch', 'Send Credit Note To Email [dutch]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(432, 'tasks', 'task-status-change-to-staff', 'dutch', 'Task Status Changed (Sent to Staff) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(433, 'tasks', 'task-status-change-to-contacts', 'dutch', 'Task Status Changed (Sent to Customer Contacts) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(434, 'staff', 'reminder-email-staff', 'dutch', 'Staff Reminder Email [dutch]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(435, 'contract', 'contract-comment-to-client', 'dutch', 'New Comment  (Sent to Customer Contacts) [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(436, 'contract', 'contract-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(437, 'subscriptions', 'send-subscription', 'dutch', 'Send Subscription to Customer [dutch]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(438, 'subscriptions', 'subscription-payment-failed', 'dutch', 'Subscription Payment Failed [dutch]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(439, 'subscriptions', 'subscription-canceled', 'dutch', 'Subscription Canceled (Sent to customer primary contact) [dutch]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(440, 'subscriptions', 'subscription-payment-succeeded', 'dutch', 'Subscription Payment Succeeded (Sent to customer primary contact) [dutch]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(441, 'contract', 'contract-expiration-to-staff', 'dutch', 'Contract Expiration Reminder (Sent to Staff) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(442, 'gdpr', 'gdpr-removal-request', 'dutch', 'Removal Request From Contact (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(443, 'gdpr', 'gdpr-removal-request-lead', 'dutch', 'Removal Request From Lead (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(444, 'client', 'client-registration-confirmed', 'dutch', 'Customer Registration Confirmed [dutch]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(445, 'contract', 'contract-signed-to-staff', 'dutch', 'Contract Signed (Sent to Staff) [dutch]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(446, 'subscriptions', 'customer-subscribed-to-staff', 'dutch', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [dutch]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(447, 'client', 'contact-verification-email', 'dutch', 'Email Verification (Sent to Contact After Registration) [dutch]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(448, 'client', 'new-customer-profile-file-uploaded-to-staff', 'dutch', 'New Customer Profile File(s) Uploaded (Sent to Staff) [dutch]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(449, 'staff', 'event-notification-to-staff', 'dutch', 'Event Notification (Calendar) [dutch]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(450, 'subscriptions', 'subscription-payment-requires-action', 'dutch', 'Credit Card Authorization Required - SCA [dutch]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(451, 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(452, 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(453, 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(454, 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(455, 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(456, 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(457, 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(458, 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(459, 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(460, 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(461, 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(462, 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(463, 'contract', 'contract-expiration', 'french', 'Contract Expiration Reminder (Sent to Customer Contacts) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(464, 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(465, 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task (Sent to Staff) [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(466, 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(467, 'tasks', 'task-added-attachment', 'french', 'New Attachment(s) on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(468, 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(469, 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(470, 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(471, 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(472, 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(473, 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(474, 'proposals', 'proposal-comment-to-client', 'french', 'New Comment  (Sent to Customer/Lead) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(475, 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(476, 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(477, 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(478, 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(479, 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(480, 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(481, 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(482, 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(483, 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File(s) Uploaded (Sent to Customer Contacts) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(484, 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File(s) Uploaded (Sent to Project Members) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(485, 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(486, 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(487, 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(488, 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(489, 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(490, 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(491, 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(492, 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(493, 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(494, 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(495, 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(496, 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(497, 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment(s) on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(498, 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(499, 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(500, 'client', 'client-statement', 'french', 'Statement - Account Summary [french]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(501, 'ticket', 'ticket-assigned-to-admin', 'french', 'New Ticket Assigned (Sent to Staff) [french]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(502, 'client', 'new-client-registered-to-admin', 'french', 'New Customer Registration (Sent to admins) [french]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(503, 'leads', 'new-web-to-lead-form-submitted', 'french', 'Web to lead form submitted - Sent to lead [french]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(504, 'staff', 'two-factor-authentication', 'french', 'Two Factor Authentication [french]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(505, 'project', 'project-finished-to-customer', 'french', 'Project Marked as Finished (Sent to Customer Contacts) [french]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(506, 'credit_note', 'credit-note-send-to-client', 'french', 'Send Credit Note To Email [french]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(507, 'tasks', 'task-status-change-to-staff', 'french', 'Task Status Changed (Sent to Staff) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(508, 'tasks', 'task-status-change-to-contacts', 'french', 'Task Status Changed (Sent to Customer Contacts) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(509, 'staff', 'reminder-email-staff', 'french', 'Staff Reminder Email [french]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(510, 'contract', 'contract-comment-to-client', 'french', 'New Comment  (Sent to Customer Contacts) [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(511, 'contract', 'contract-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(512, 'subscriptions', 'send-subscription', 'french', 'Send Subscription to Customer [french]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(513, 'subscriptions', 'subscription-payment-failed', 'french', 'Subscription Payment Failed [french]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(514, 'subscriptions', 'subscription-canceled', 'french', 'Subscription Canceled (Sent to customer primary contact) [french]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(515, 'subscriptions', 'subscription-payment-succeeded', 'french', 'Subscription Payment Succeeded (Sent to customer primary contact) [french]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(516, 'contract', 'contract-expiration-to-staff', 'french', 'Contract Expiration Reminder (Sent to Staff) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(517, 'gdpr', 'gdpr-removal-request', 'french', 'Removal Request From Contact (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(518, 'gdpr', 'gdpr-removal-request-lead', 'french', 'Removal Request From Lead (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(519, 'client', 'client-registration-confirmed', 'french', 'Customer Registration Confirmed [french]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(520, 'contract', 'contract-signed-to-staff', 'french', 'Contract Signed (Sent to Staff) [french]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(521, 'subscriptions', 'customer-subscribed-to-staff', 'french', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [french]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(522, 'client', 'contact-verification-email', 'french', 'Email Verification (Sent to Contact After Registration) [french]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(523, 'client', 'new-customer-profile-file-uploaded-to-staff', 'french', 'New Customer Profile File(s) Uploaded (Sent to Staff) [french]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(524, 'staff', 'event-notification-to-staff', 'french', 'Event Notification (Calendar) [french]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(525, 'subscriptions', 'subscription-payment-requires-action', 'french', 'Credit Card Authorization Required - SCA [french]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(526, 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(527, 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(528, 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(529, 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(530, 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(531, 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(532, 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(533, 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(534, 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(535, 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(536, 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(537, 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(538, 'contract', 'contract-expiration', 'german', 'Contract Expiration Reminder (Sent to Customer Contacts) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(539, 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(540, 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task (Sent to Staff) [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(541, 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(542, 'tasks', 'task-added-attachment', 'german', 'New Attachment(s) on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(543, 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(544, 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(545, 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(546, 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(547, 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(548, 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(549, 'proposals', 'proposal-comment-to-client', 'german', 'New Comment  (Sent to Customer/Lead) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(550, 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(551, 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(552, 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(553, 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(554, 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(555, 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(556, 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(557, 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(558, 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File(s) Uploaded (Sent to Customer Contacts) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(559, 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File(s) Uploaded (Sent to Project Members) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(560, 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(561, 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(562, 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(563, 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(564, 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(565, 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(566, 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(567, 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(568, 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(569, 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(570, 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(571, 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(572, 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment(s) on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(573, 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(574, 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(575, 'client', 'client-statement', 'german', 'Statement - Account Summary [german]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(576, 'ticket', 'ticket-assigned-to-admin', 'german', 'New Ticket Assigned (Sent to Staff) [german]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(577, 'client', 'new-client-registered-to-admin', 'german', 'New Customer Registration (Sent to admins) [german]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(578, 'leads', 'new-web-to-lead-form-submitted', 'german', 'Web to lead form submitted - Sent to lead [german]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(579, 'staff', 'two-factor-authentication', 'german', 'Two Factor Authentication [german]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(580, 'project', 'project-finished-to-customer', 'german', 'Project Marked as Finished (Sent to Customer Contacts) [german]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(581, 'credit_note', 'credit-note-send-to-client', 'german', 'Send Credit Note To Email [german]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(582, 'tasks', 'task-status-change-to-staff', 'german', 'Task Status Changed (Sent to Staff) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(583, 'tasks', 'task-status-change-to-contacts', 'german', 'Task Status Changed (Sent to Customer Contacts) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(584, 'staff', 'reminder-email-staff', 'german', 'Staff Reminder Email [german]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(585, 'contract', 'contract-comment-to-client', 'german', 'New Comment  (Sent to Customer Contacts) [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(586, 'contract', 'contract-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(587, 'subscriptions', 'send-subscription', 'german', 'Send Subscription to Customer [german]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(588, 'subscriptions', 'subscription-payment-failed', 'german', 'Subscription Payment Failed [german]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(589, 'subscriptions', 'subscription-canceled', 'german', 'Subscription Canceled (Sent to customer primary contact) [german]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(590, 'subscriptions', 'subscription-payment-succeeded', 'german', 'Subscription Payment Succeeded (Sent to customer primary contact) [german]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(591, 'contract', 'contract-expiration-to-staff', 'german', 'Contract Expiration Reminder (Sent to Staff) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(592, 'gdpr', 'gdpr-removal-request', 'german', 'Removal Request From Contact (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(593, 'gdpr', 'gdpr-removal-request-lead', 'german', 'Removal Request From Lead (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(594, 'client', 'client-registration-confirmed', 'german', 'Customer Registration Confirmed [german]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(595, 'contract', 'contract-signed-to-staff', 'german', 'Contract Signed (Sent to Staff) [german]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(596, 'subscriptions', 'customer-subscribed-to-staff', 'german', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [german]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(597, 'client', 'contact-verification-email', 'german', 'Email Verification (Sent to Contact After Registration) [german]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(598, 'client', 'new-customer-profile-file-uploaded-to-staff', 'german', 'New Customer Profile File(s) Uploaded (Sent to Staff) [german]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(599, 'staff', 'event-notification-to-staff', 'german', 'Event Notification (Calendar) [german]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(600, 'subscriptions', 'subscription-payment-requires-action', 'german', 'Credit Card Authorization Required - SCA [german]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(601, 'client', 'new-client-created', 'greek', 'New Contact Added/Registered (Welcome Email) [greek]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(602, 'invoice', 'invoice-send-to-client', 'greek', 'Send Invoice to Customer [greek]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(603, 'ticket', 'new-ticket-opened-admin', 'greek', 'New Ticket Opened (Opened by Staff, Sent to Customer) [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(604, 'ticket', 'ticket-reply', 'greek', 'Ticket Reply (Sent to Customer) [greek]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(605, 'ticket', 'ticket-autoresponse', 'greek', 'New Ticket Opened - Autoresponse [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(606, 'invoice', 'invoice-payment-recorded', 'greek', 'Invoice Payment Recorded (Sent to Customer) [greek]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(607, 'invoice', 'invoice-overdue-notice', 'greek', 'Invoice Overdue Notice [greek]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(608, 'invoice', 'invoice-already-send', 'greek', 'Invoice Already Sent to Customer [greek]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(609, 'ticket', 'new-ticket-created-staff', 'greek', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [greek]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(610, 'estimate', 'estimate-send-to-client', 'greek', 'Send Estimate to Customer [greek]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(611, 'ticket', 'ticket-reply-to-admin', 'greek', 'Ticket Reply (Sent to Staff) [greek]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(612, 'estimate', 'estimate-already-send', 'greek', 'Estimate Already Sent to Customer [greek]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(613, 'contract', 'contract-expiration', 'greek', 'Contract Expiration Reminder (Sent to Customer Contacts) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(614, 'tasks', 'task-assigned', 'greek', 'New Task Assigned (Sent to Staff) [greek]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(615, 'tasks', 'task-added-as-follower', 'greek', 'Staff Member Added as Follower on Task (Sent to Staff) [greek]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(616, 'tasks', 'task-commented', 'greek', 'New Comment on Task (Sent to Staff) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(617, 'tasks', 'task-added-attachment', 'greek', 'New Attachment(s) on Task (Sent to Staff) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(618, 'estimate', 'estimate-declined-to-staff', 'greek', 'Estimate Declined (Sent to Staff) [greek]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(619, 'estimate', 'estimate-accepted-to-staff', 'greek', 'Estimate Accepted (Sent to Staff) [greek]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(620, 'proposals', 'proposal-client-accepted', 'greek', 'Customer Action - Accepted (Sent to Staff) [greek]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(621, 'proposals', 'proposal-send-to-customer', 'greek', 'Send Proposal to Customer [greek]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(622, 'proposals', 'proposal-client-declined', 'greek', 'Customer Action - Declined (Sent to Staff) [greek]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(623, 'proposals', 'proposal-client-thank-you', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(624, 'proposals', 'proposal-comment-to-client', 'greek', 'New Comment  (Sent to Customer/Lead) [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(625, 'proposals', 'proposal-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(626, 'estimate', 'estimate-thank-you-to-customer', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(627, 'tasks', 'task-deadline-notification', 'greek', 'Task Deadline Reminder - Sent to Assigned Members [greek]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(628, 'contract', 'send-contract', 'greek', 'Send Contract to Customer [greek]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(629, 'invoice', 'invoice-payment-recorded-to-staff', 'greek', 'Invoice Payment Recorded (Sent to Staff) [greek]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(630, 'ticket', 'auto-close-ticket', 'greek', 'Auto Close Ticket [greek]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(631, 'project', 'new-project-discussion-created-to-staff', 'greek', 'New Project Discussion (Sent to Project Members) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(632, 'project', 'new-project-discussion-created-to-customer', 'greek', 'New Project Discussion (Sent to Customer Contacts) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(633, 'project', 'new-project-file-uploaded-to-customer', 'greek', 'New Project File(s) Uploaded (Sent to Customer Contacts) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(634, 'project', 'new-project-file-uploaded-to-staff', 'greek', 'New Project File(s) Uploaded (Sent to Project Members) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(635, 'project', 'new-project-discussion-comment-to-customer', 'greek', 'New Discussion Comment  (Sent to Customer Contacts) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(636, 'project', 'new-project-discussion-comment-to-staff', 'greek', 'New Discussion Comment (Sent to Project Members) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(637, 'project', 'staff-added-as-project-member', 'greek', 'Staff Added as Project Member [greek]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(638, 'estimate', 'estimate-expiry-reminder', 'greek', 'Estimate Expiration Reminder [greek]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(639, 'proposals', 'proposal-expiry-reminder', 'greek', 'Proposal Expiration Reminder [greek]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(640, 'staff', 'new-staff-created', 'greek', 'New Staff Created (Welcome Email) [greek]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(641, 'client', 'contact-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(642, 'client', 'contact-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(643, 'client', 'contact-set-password', 'greek', 'Set New Password [greek]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(644, 'staff', 'staff-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(645, 'staff', 'staff-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(646, 'project', 'assigned-to-project', 'greek', 'New Project Created (Sent to Customer Contacts) [greek]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(647, 'tasks', 'task-added-attachment-to-contacts', 'greek', 'New Attachment(s) on Task (Sent to Customer Contacts) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(648, 'tasks', 'task-commented-to-contacts', 'greek', 'New Comment on Task (Sent to Customer Contacts) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(649, 'leads', 'new-lead-assigned', 'greek', 'New Lead Assigned to Staff Member [greek]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(650, 'client', 'client-statement', 'greek', 'Statement - Account Summary [greek]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(651, 'ticket', 'ticket-assigned-to-admin', 'greek', 'New Ticket Assigned (Sent to Staff) [greek]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(652, 'client', 'new-client-registered-to-admin', 'greek', 'New Customer Registration (Sent to admins) [greek]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(653, 'leads', 'new-web-to-lead-form-submitted', 'greek', 'Web to lead form submitted - Sent to lead [greek]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(654, 'staff', 'two-factor-authentication', 'greek', 'Two Factor Authentication [greek]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(655, 'project', 'project-finished-to-customer', 'greek', 'Project Marked as Finished (Sent to Customer Contacts) [greek]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(656, 'credit_note', 'credit-note-send-to-client', 'greek', 'Send Credit Note To Email [greek]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(657, 'tasks', 'task-status-change-to-staff', 'greek', 'Task Status Changed (Sent to Staff) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(658, 'tasks', 'task-status-change-to-contacts', 'greek', 'Task Status Changed (Sent to Customer Contacts) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(659, 'staff', 'reminder-email-staff', 'greek', 'Staff Reminder Email [greek]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(660, 'contract', 'contract-comment-to-client', 'greek', 'New Comment  (Sent to Customer Contacts) [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(661, 'contract', 'contract-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(662, 'subscriptions', 'send-subscription', 'greek', 'Send Subscription to Customer [greek]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(663, 'subscriptions', 'subscription-payment-failed', 'greek', 'Subscription Payment Failed [greek]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(664, 'subscriptions', 'subscription-canceled', 'greek', 'Subscription Canceled (Sent to customer primary contact) [greek]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(665, 'subscriptions', 'subscription-payment-succeeded', 'greek', 'Subscription Payment Succeeded (Sent to customer primary contact) [greek]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(666, 'contract', 'contract-expiration-to-staff', 'greek', 'Contract Expiration Reminder (Sent to Staff) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(667, 'gdpr', 'gdpr-removal-request', 'greek', 'Removal Request From Contact (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(668, 'gdpr', 'gdpr-removal-request-lead', 'greek', 'Removal Request From Lead (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(669, 'client', 'client-registration-confirmed', 'greek', 'Customer Registration Confirmed [greek]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(670, 'contract', 'contract-signed-to-staff', 'greek', 'Contract Signed (Sent to Staff) [greek]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(671, 'subscriptions', 'customer-subscribed-to-staff', 'greek', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [greek]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(672, 'client', 'contact-verification-email', 'greek', 'Email Verification (Sent to Contact After Registration) [greek]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(673, 'client', 'new-customer-profile-file-uploaded-to-staff', 'greek', 'New Customer Profile File(s) Uploaded (Sent to Staff) [greek]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(674, 'staff', 'event-notification-to-staff', 'greek', 'Event Notification (Calendar) [greek]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(675, 'subscriptions', 'subscription-payment-requires-action', 'greek', 'Credit Card Authorization Required - SCA [greek]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(676, 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(677, 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(678, 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(679, 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(680, 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(681, 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(682, 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(683, 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(684, 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(685, 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(686, 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(687, 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(688, 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration Reminder (Sent to Customer Contacts) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(689, 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(690, 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task (Sent to Staff) [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(691, 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(692, 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment(s) on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(693, 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(694, 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(695, 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(696, 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(697, 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(698, 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(699, 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment  (Sent to Customer/Lead) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(700, 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(701, 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(702, 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(703, 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(704, 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(705, 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(706, 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(707, 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(708, 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File(s) Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(709, 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File(s) Uploaded (Sent to Project Members) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(710, 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(711, 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(712, 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(713, 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(714, 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(715, 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(716, 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(717, 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(718, 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(719, 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(720, 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(721, 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(722, 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment(s) on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(723, 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(724, 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(725, 'client', 'client-statement', 'indonesia', 'Statement - Account Summary [indonesia]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(726, 'ticket', 'ticket-assigned-to-admin', 'indonesia', 'New Ticket Assigned (Sent to Staff) [indonesia]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(727, 'client', 'new-client-registered-to-admin', 'indonesia', 'New Customer Registration (Sent to admins) [indonesia]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(728, 'leads', 'new-web-to-lead-form-submitted', 'indonesia', 'Web to lead form submitted - Sent to lead [indonesia]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(729, 'staff', 'two-factor-authentication', 'indonesia', 'Two Factor Authentication [indonesia]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(730, 'project', 'project-finished-to-customer', 'indonesia', 'Project Marked as Finished (Sent to Customer Contacts) [indonesia]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(731, 'credit_note', 'credit-note-send-to-client', 'indonesia', 'Send Credit Note To Email [indonesia]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(732, 'tasks', 'task-status-change-to-staff', 'indonesia', 'Task Status Changed (Sent to Staff) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(733, 'tasks', 'task-status-change-to-contacts', 'indonesia', 'Task Status Changed (Sent to Customer Contacts) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(734, 'staff', 'reminder-email-staff', 'indonesia', 'Staff Reminder Email [indonesia]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(735, 'contract', 'contract-comment-to-client', 'indonesia', 'New Comment  (Sent to Customer Contacts) [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(736, 'contract', 'contract-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(737, 'subscriptions', 'send-subscription', 'indonesia', 'Send Subscription to Customer [indonesia]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(738, 'subscriptions', 'subscription-payment-failed', 'indonesia', 'Subscription Payment Failed [indonesia]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(739, 'subscriptions', 'subscription-canceled', 'indonesia', 'Subscription Canceled (Sent to customer primary contact) [indonesia]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(740, 'subscriptions', 'subscription-payment-succeeded', 'indonesia', 'Subscription Payment Succeeded (Sent to customer primary contact) [indonesia]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(741, 'contract', 'contract-expiration-to-staff', 'indonesia', 'Contract Expiration Reminder (Sent to Staff) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(742, 'gdpr', 'gdpr-removal-request', 'indonesia', 'Removal Request From Contact (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(743, 'gdpr', 'gdpr-removal-request-lead', 'indonesia', 'Removal Request From Lead (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(744, 'client', 'client-registration-confirmed', 'indonesia', 'Customer Registration Confirmed [indonesia]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(745, 'contract', 'contract-signed-to-staff', 'indonesia', 'Contract Signed (Sent to Staff) [indonesia]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(746, 'subscriptions', 'customer-subscribed-to-staff', 'indonesia', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [indonesia]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(747, 'client', 'contact-verification-email', 'indonesia', 'Email Verification (Sent to Contact After Registration) [indonesia]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(748, 'client', 'new-customer-profile-file-uploaded-to-staff', 'indonesia', 'New Customer Profile File(s) Uploaded (Sent to Staff) [indonesia]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(749, 'staff', 'event-notification-to-staff', 'indonesia', 'Event Notification (Calendar) [indonesia]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(750, 'subscriptions', 'subscription-payment-requires-action', 'indonesia', 'Credit Card Authorization Required - SCA [indonesia]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(751, 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(752, 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(753, 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(754, 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(755, 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(756, 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(757, 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(758, 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(759, 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(760, 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(761, 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(762, 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(763, 'contract', 'contract-expiration', 'italian', 'Contract Expiration Reminder (Sent to Customer Contacts) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(764, 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(765, 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task (Sent to Staff) [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(766, 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(767, 'tasks', 'task-added-attachment', 'italian', 'New Attachment(s) on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(768, 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(769, 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(770, 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(771, 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(772, 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(773, 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(774, 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment  (Sent to Customer/Lead) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(775, 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(776, 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(777, 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(778, 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(779, 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(780, 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(781, 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(782, 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(783, 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(784, 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File(s) Uploaded (Sent to Project Members) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(785, 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(786, 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(787, 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(788, 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(789, 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(790, 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(791, 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(792, 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(793, 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(794, 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(795, 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(796, 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(797, 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment(s) on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(798, 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(799, 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(800, 'client', 'client-statement', 'italian', 'Statement - Account Summary [italian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(801, 'ticket', 'ticket-assigned-to-admin', 'italian', 'New Ticket Assigned (Sent to Staff) [italian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(802, 'client', 'new-client-registered-to-admin', 'italian', 'New Customer Registration (Sent to admins) [italian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(803, 'leads', 'new-web-to-lead-form-submitted', 'italian', 'Web to lead form submitted - Sent to lead [italian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(804, 'staff', 'two-factor-authentication', 'italian', 'Two Factor Authentication [italian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(805, 'project', 'project-finished-to-customer', 'italian', 'Project Marked as Finished (Sent to Customer Contacts) [italian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(806, 'credit_note', 'credit-note-send-to-client', 'italian', 'Send Credit Note To Email [italian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(807, 'tasks', 'task-status-change-to-staff', 'italian', 'Task Status Changed (Sent to Staff) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(808, 'tasks', 'task-status-change-to-contacts', 'italian', 'Task Status Changed (Sent to Customer Contacts) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(809, 'staff', 'reminder-email-staff', 'italian', 'Staff Reminder Email [italian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(810, 'contract', 'contract-comment-to-client', 'italian', 'New Comment  (Sent to Customer Contacts) [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(811, 'contract', 'contract-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(812, 'subscriptions', 'send-subscription', 'italian', 'Send Subscription to Customer [italian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(813, 'subscriptions', 'subscription-payment-failed', 'italian', 'Subscription Payment Failed [italian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(814, 'subscriptions', 'subscription-canceled', 'italian', 'Subscription Canceled (Sent to customer primary contact) [italian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(815, 'subscriptions', 'subscription-payment-succeeded', 'italian', 'Subscription Payment Succeeded (Sent to customer primary contact) [italian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(816, 'contract', 'contract-expiration-to-staff', 'italian', 'Contract Expiration Reminder (Sent to Staff) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(817, 'gdpr', 'gdpr-removal-request', 'italian', 'Removal Request From Contact (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(818, 'gdpr', 'gdpr-removal-request-lead', 'italian', 'Removal Request From Lead (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(819, 'client', 'client-registration-confirmed', 'italian', 'Customer Registration Confirmed [italian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(820, 'contract', 'contract-signed-to-staff', 'italian', 'Contract Signed (Sent to Staff) [italian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(821, 'subscriptions', 'customer-subscribed-to-staff', 'italian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [italian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(822, 'client', 'contact-verification-email', 'italian', 'Email Verification (Sent to Contact After Registration) [italian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(823, 'client', 'new-customer-profile-file-uploaded-to-staff', 'italian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [italian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(824, 'staff', 'event-notification-to-staff', 'italian', 'Event Notification (Calendar) [italian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(825, 'subscriptions', 'subscription-payment-requires-action', 'italian', 'Credit Card Authorization Required - SCA [italian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(826, 'client', 'new-client-created', 'japanese', 'New Contact Added/Registered (Welcome Email) [japanese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(827, 'invoice', 'invoice-send-to-client', 'japanese', 'Send Invoice to Customer [japanese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(828, 'ticket', 'new-ticket-opened-admin', 'japanese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(829, 'ticket', 'ticket-reply', 'japanese', 'Ticket Reply (Sent to Customer) [japanese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(830, 'ticket', 'ticket-autoresponse', 'japanese', 'New Ticket Opened - Autoresponse [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(831, 'invoice', 'invoice-payment-recorded', 'japanese', 'Invoice Payment Recorded (Sent to Customer) [japanese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(832, 'invoice', 'invoice-overdue-notice', 'japanese', 'Invoice Overdue Notice [japanese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(833, 'invoice', 'invoice-already-send', 'japanese', 'Invoice Already Sent to Customer [japanese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(834, 'ticket', 'new-ticket-created-staff', 'japanese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(835, 'estimate', 'estimate-send-to-client', 'japanese', 'Send Estimate to Customer [japanese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(836, 'ticket', 'ticket-reply-to-admin', 'japanese', 'Ticket Reply (Sent to Staff) [japanese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(837, 'estimate', 'estimate-already-send', 'japanese', 'Estimate Already Sent to Customer [japanese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(838, 'contract', 'contract-expiration', 'japanese', 'Contract Expiration Reminder (Sent to Customer Contacts) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(839, 'tasks', 'task-assigned', 'japanese', 'New Task Assigned (Sent to Staff) [japanese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(840, 'tasks', 'task-added-as-follower', 'japanese', 'Staff Member Added as Follower on Task (Sent to Staff) [japanese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(841, 'tasks', 'task-commented', 'japanese', 'New Comment on Task (Sent to Staff) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(842, 'tasks', 'task-added-attachment', 'japanese', 'New Attachment(s) on Task (Sent to Staff) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(843, 'estimate', 'estimate-declined-to-staff', 'japanese', 'Estimate Declined (Sent to Staff) [japanese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(844, 'estimate', 'estimate-accepted-to-staff', 'japanese', 'Estimate Accepted (Sent to Staff) [japanese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(845, 'proposals', 'proposal-client-accepted', 'japanese', 'Customer Action - Accepted (Sent to Staff) [japanese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(846, 'proposals', 'proposal-send-to-customer', 'japanese', 'Send Proposal to Customer [japanese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(847, 'proposals', 'proposal-client-declined', 'japanese', 'Customer Action - Declined (Sent to Staff) [japanese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(848, 'proposals', 'proposal-client-thank-you', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(849, 'proposals', 'proposal-comment-to-client', 'japanese', 'New Comment  (Sent to Customer/Lead) [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(850, 'proposals', 'proposal-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(851, 'estimate', 'estimate-thank-you-to-customer', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(852, 'tasks', 'task-deadline-notification', 'japanese', 'Task Deadline Reminder - Sent to Assigned Members [japanese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(853, 'contract', 'send-contract', 'japanese', 'Send Contract to Customer [japanese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(854, 'invoice', 'invoice-payment-recorded-to-staff', 'japanese', 'Invoice Payment Recorded (Sent to Staff) [japanese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(855, 'ticket', 'auto-close-ticket', 'japanese', 'Auto Close Ticket [japanese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(856, 'project', 'new-project-discussion-created-to-staff', 'japanese', 'New Project Discussion (Sent to Project Members) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(857, 'project', 'new-project-discussion-created-to-customer', 'japanese', 'New Project Discussion (Sent to Customer Contacts) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(858, 'project', 'new-project-file-uploaded-to-customer', 'japanese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(859, 'project', 'new-project-file-uploaded-to-staff', 'japanese', 'New Project File(s) Uploaded (Sent to Project Members) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(860, 'project', 'new-project-discussion-comment-to-customer', 'japanese', 'New Discussion Comment  (Sent to Customer Contacts) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(861, 'project', 'new-project-discussion-comment-to-staff', 'japanese', 'New Discussion Comment (Sent to Project Members) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(862, 'project', 'staff-added-as-project-member', 'japanese', 'Staff Added as Project Member [japanese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(863, 'estimate', 'estimate-expiry-reminder', 'japanese', 'Estimate Expiration Reminder [japanese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(864, 'proposals', 'proposal-expiry-reminder', 'japanese', 'Proposal Expiration Reminder [japanese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(865, 'staff', 'new-staff-created', 'japanese', 'New Staff Created (Welcome Email) [japanese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(866, 'client', 'contact-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(867, 'client', 'contact-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(868, 'client', 'contact-set-password', 'japanese', 'Set New Password [japanese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(869, 'staff', 'staff-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(870, 'staff', 'staff-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(871, 'project', 'assigned-to-project', 'japanese', 'New Project Created (Sent to Customer Contacts) [japanese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(872, 'tasks', 'task-added-attachment-to-contacts', 'japanese', 'New Attachment(s) on Task (Sent to Customer Contacts) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(873, 'tasks', 'task-commented-to-contacts', 'japanese', 'New Comment on Task (Sent to Customer Contacts) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(874, 'leads', 'new-lead-assigned', 'japanese', 'New Lead Assigned to Staff Member [japanese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(875, 'client', 'client-statement', 'japanese', 'Statement - Account Summary [japanese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(876, 'ticket', 'ticket-assigned-to-admin', 'japanese', 'New Ticket Assigned (Sent to Staff) [japanese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(877, 'client', 'new-client-registered-to-admin', 'japanese', 'New Customer Registration (Sent to admins) [japanese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(878, 'leads', 'new-web-to-lead-form-submitted', 'japanese', 'Web to lead form submitted - Sent to lead [japanese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(879, 'staff', 'two-factor-authentication', 'japanese', 'Two Factor Authentication [japanese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(880, 'project', 'project-finished-to-customer', 'japanese', 'Project Marked as Finished (Sent to Customer Contacts) [japanese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(881, 'credit_note', 'credit-note-send-to-client', 'japanese', 'Send Credit Note To Email [japanese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(882, 'tasks', 'task-status-change-to-staff', 'japanese', 'Task Status Changed (Sent to Staff) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(883, 'tasks', 'task-status-change-to-contacts', 'japanese', 'Task Status Changed (Sent to Customer Contacts) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(884, 'staff', 'reminder-email-staff', 'japanese', 'Staff Reminder Email [japanese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(885, 'contract', 'contract-comment-to-client', 'japanese', 'New Comment  (Sent to Customer Contacts) [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(886, 'contract', 'contract-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(887, 'subscriptions', 'send-subscription', 'japanese', 'Send Subscription to Customer [japanese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(888, 'subscriptions', 'subscription-payment-failed', 'japanese', 'Subscription Payment Failed [japanese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(889, 'subscriptions', 'subscription-canceled', 'japanese', 'Subscription Canceled (Sent to customer primary contact) [japanese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(890, 'subscriptions', 'subscription-payment-succeeded', 'japanese', 'Subscription Payment Succeeded (Sent to customer primary contact) [japanese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(891, 'contract', 'contract-expiration-to-staff', 'japanese', 'Contract Expiration Reminder (Sent to Staff) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(892, 'gdpr', 'gdpr-removal-request', 'japanese', 'Removal Request From Contact (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(893, 'gdpr', 'gdpr-removal-request-lead', 'japanese', 'Removal Request From Lead (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(894, 'client', 'client-registration-confirmed', 'japanese', 'Customer Registration Confirmed [japanese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(895, 'contract', 'contract-signed-to-staff', 'japanese', 'Contract Signed (Sent to Staff) [japanese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(896, 'subscriptions', 'customer-subscribed-to-staff', 'japanese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [japanese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(897, 'client', 'contact-verification-email', 'japanese', 'Email Verification (Sent to Contact After Registration) [japanese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(898, 'client', 'new-customer-profile-file-uploaded-to-staff', 'japanese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [japanese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(899, 'staff', 'event-notification-to-staff', 'japanese', 'Event Notification (Calendar) [japanese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(900, 'subscriptions', 'subscription-payment-requires-action', 'japanese', 'Credit Card Authorization Required - SCA [japanese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(901, 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(902, 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(903, 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(904, 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(905, 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(906, 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(907, 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(908, 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(909, 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(910, 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(911, 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(912, 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(913, 'contract', 'contract-expiration', 'persian', 'Contract Expiration Reminder (Sent to Customer Contacts) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(914, 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(915, 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task (Sent to Staff) [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(916, 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(917, 'tasks', 'task-added-attachment', 'persian', 'New Attachment(s) on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(918, 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(919, 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(920, 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(921, 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(922, 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(923, 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(924, 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment  (Sent to Customer/Lead) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(925, 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(926, 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(927, 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(928, 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(929, 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(930, 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(931, 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(932, 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(933, 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(934, 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File(s) Uploaded (Sent to Project Members) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(935, 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(936, 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(937, 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(938, 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(939, 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(940, 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(941, 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(942, 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(943, 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(944, 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(945, 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(946, 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(947, 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment(s) on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(948, 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(949, 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(950, 'client', 'client-statement', 'persian', 'Statement - Account Summary [persian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(951, 'ticket', 'ticket-assigned-to-admin', 'persian', 'New Ticket Assigned (Sent to Staff) [persian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(952, 'client', 'new-client-registered-to-admin', 'persian', 'New Customer Registration (Sent to admins) [persian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(953, 'leads', 'new-web-to-lead-form-submitted', 'persian', 'Web to lead form submitted - Sent to lead [persian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(954, 'staff', 'two-factor-authentication', 'persian', 'Two Factor Authentication [persian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(955, 'project', 'project-finished-to-customer', 'persian', 'Project Marked as Finished (Sent to Customer Contacts) [persian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(956, 'credit_note', 'credit-note-send-to-client', 'persian', 'Send Credit Note To Email [persian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(957, 'tasks', 'task-status-change-to-staff', 'persian', 'Task Status Changed (Sent to Staff) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(958, 'tasks', 'task-status-change-to-contacts', 'persian', 'Task Status Changed (Sent to Customer Contacts) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(959, 'staff', 'reminder-email-staff', 'persian', 'Staff Reminder Email [persian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(960, 'contract', 'contract-comment-to-client', 'persian', 'New Comment  (Sent to Customer Contacts) [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(961, 'contract', 'contract-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(962, 'subscriptions', 'send-subscription', 'persian', 'Send Subscription to Customer [persian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(963, 'subscriptions', 'subscription-payment-failed', 'persian', 'Subscription Payment Failed [persian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(964, 'subscriptions', 'subscription-canceled', 'persian', 'Subscription Canceled (Sent to customer primary contact) [persian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(965, 'subscriptions', 'subscription-payment-succeeded', 'persian', 'Subscription Payment Succeeded (Sent to customer primary contact) [persian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(966, 'contract', 'contract-expiration-to-staff', 'persian', 'Contract Expiration Reminder (Sent to Staff) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(967, 'gdpr', 'gdpr-removal-request', 'persian', 'Removal Request From Contact (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(968, 'gdpr', 'gdpr-removal-request-lead', 'persian', 'Removal Request From Lead (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(969, 'client', 'client-registration-confirmed', 'persian', 'Customer Registration Confirmed [persian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(970, 'contract', 'contract-signed-to-staff', 'persian', 'Contract Signed (Sent to Staff) [persian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(971, 'subscriptions', 'customer-subscribed-to-staff', 'persian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [persian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(972, 'client', 'contact-verification-email', 'persian', 'Email Verification (Sent to Contact After Registration) [persian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(973, 'client', 'new-customer-profile-file-uploaded-to-staff', 'persian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [persian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(974, 'staff', 'event-notification-to-staff', 'persian', 'Event Notification (Calendar) [persian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(975, 'subscriptions', 'subscription-payment-requires-action', 'persian', 'Credit Card Authorization Required - SCA [persian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(976, 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(977, 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(978, 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(979, 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(980, 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(981, 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(982, 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(983, 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(984, 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(985, 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(986, 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(987, 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(988, 'contract', 'contract-expiration', 'polish', 'Contract Expiration Reminder (Sent to Customer Contacts) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(989, 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(990, 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task (Sent to Staff) [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(991, 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(992, 'tasks', 'task-added-attachment', 'polish', 'New Attachment(s) on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(993, 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(994, 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(995, 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(996, 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(997, 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(998, 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(999, 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment  (Sent to Customer/Lead) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1000, 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1001, 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1002, 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1003, 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1004, 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1005, 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1006, 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1007, 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1008, 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1009, 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File(s) Uploaded (Sent to Project Members) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1010, 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1011, 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1012, 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1013, 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1014, 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1015, 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1016, 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1017, 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1018, 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1019, 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1020, 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1021, 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1022, 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment(s) on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1023, 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1024, 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1025, 'client', 'client-statement', 'polish', 'Statement - Account Summary [polish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1026, 'ticket', 'ticket-assigned-to-admin', 'polish', 'New Ticket Assigned (Sent to Staff) [polish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1027, 'client', 'new-client-registered-to-admin', 'polish', 'New Customer Registration (Sent to admins) [polish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1028, 'leads', 'new-web-to-lead-form-submitted', 'polish', 'Web to lead form submitted - Sent to lead [polish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1029, 'staff', 'two-factor-authentication', 'polish', 'Two Factor Authentication [polish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1030, 'project', 'project-finished-to-customer', 'polish', 'Project Marked as Finished (Sent to Customer Contacts) [polish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1031, 'credit_note', 'credit-note-send-to-client', 'polish', 'Send Credit Note To Email [polish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1032, 'tasks', 'task-status-change-to-staff', 'polish', 'Task Status Changed (Sent to Staff) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1033, 'tasks', 'task-status-change-to-contacts', 'polish', 'Task Status Changed (Sent to Customer Contacts) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1034, 'staff', 'reminder-email-staff', 'polish', 'Staff Reminder Email [polish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1035, 'contract', 'contract-comment-to-client', 'polish', 'New Comment  (Sent to Customer Contacts) [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1036, 'contract', 'contract-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1037, 'subscriptions', 'send-subscription', 'polish', 'Send Subscription to Customer [polish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1038, 'subscriptions', 'subscription-payment-failed', 'polish', 'Subscription Payment Failed [polish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1039, 'subscriptions', 'subscription-canceled', 'polish', 'Subscription Canceled (Sent to customer primary contact) [polish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1040, 'subscriptions', 'subscription-payment-succeeded', 'polish', 'Subscription Payment Succeeded (Sent to customer primary contact) [polish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1041, 'contract', 'contract-expiration-to-staff', 'polish', 'Contract Expiration Reminder (Sent to Staff) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1042, 'gdpr', 'gdpr-removal-request', 'polish', 'Removal Request From Contact (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1043, 'gdpr', 'gdpr-removal-request-lead', 'polish', 'Removal Request From Lead (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1044, 'client', 'client-registration-confirmed', 'polish', 'Customer Registration Confirmed [polish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1045, 'contract', 'contract-signed-to-staff', 'polish', 'Contract Signed (Sent to Staff) [polish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1046, 'subscriptions', 'customer-subscribed-to-staff', 'polish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [polish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1047, 'client', 'contact-verification-email', 'polish', 'Email Verification (Sent to Contact After Registration) [polish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1048, 'client', 'new-customer-profile-file-uploaded-to-staff', 'polish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [polish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1049, 'staff', 'event-notification-to-staff', 'polish', 'Event Notification (Calendar) [polish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1050, 'subscriptions', 'subscription-payment-requires-action', 'polish', 'Credit Card Authorization Required - SCA [polish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1051, 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1052, 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1053, 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1054, 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1055, 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1056, 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1057, 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1058, 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1059, 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1060, 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1061, 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1062, 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1063, 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1064, 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1065, 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1066, 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1067, 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment(s) on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1068, 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1069, 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1070, 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1071, 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1072, 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1073, 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1074, 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment  (Sent to Customer/Lead) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1075, 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1076, 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1077, 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1078, 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1079, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1080, 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1081, 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1082, 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1083, 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1084, 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1085, 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1086, 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1087, 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1088, 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1089, 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1090, 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1091, 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1092, 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1093, 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1094, 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1095, 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1096, 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1097, 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1098, 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1099, 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1100, 'client', 'client-statement', 'portuguese', 'Statement - Account Summary [portuguese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1101, 'ticket', 'ticket-assigned-to-admin', 'portuguese', 'New Ticket Assigned (Sent to Staff) [portuguese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1102, 'client', 'new-client-registered-to-admin', 'portuguese', 'New Customer Registration (Sent to admins) [portuguese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1103, 'leads', 'new-web-to-lead-form-submitted', 'portuguese', 'Web to lead form submitted - Sent to lead [portuguese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1104, 'staff', 'two-factor-authentication', 'portuguese', 'Two Factor Authentication [portuguese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1105, 'project', 'project-finished-to-customer', 'portuguese', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1106, 'credit_note', 'credit-note-send-to-client', 'portuguese', 'Send Credit Note To Email [portuguese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1107, 'tasks', 'task-status-change-to-staff', 'portuguese', 'Task Status Changed (Sent to Staff) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1108, 'tasks', 'task-status-change-to-contacts', 'portuguese', 'Task Status Changed (Sent to Customer Contacts) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1109, 'staff', 'reminder-email-staff', 'portuguese', 'Staff Reminder Email [portuguese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1110, 'contract', 'contract-comment-to-client', 'portuguese', 'New Comment  (Sent to Customer Contacts) [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1111, 'contract', 'contract-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1112, 'subscriptions', 'send-subscription', 'portuguese', 'Send Subscription to Customer [portuguese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1113, 'subscriptions', 'subscription-payment-failed', 'portuguese', 'Subscription Payment Failed [portuguese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1114, 'subscriptions', 'subscription-canceled', 'portuguese', 'Subscription Canceled (Sent to customer primary contact) [portuguese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1115, 'subscriptions', 'subscription-payment-succeeded', 'portuguese', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1116, 'contract', 'contract-expiration-to-staff', 'portuguese', 'Contract Expiration Reminder (Sent to Staff) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1117, 'gdpr', 'gdpr-removal-request', 'portuguese', 'Removal Request From Contact (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1118, 'gdpr', 'gdpr-removal-request-lead', 'portuguese', 'Removal Request From Lead (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1119, 'client', 'client-registration-confirmed', 'portuguese', 'Customer Registration Confirmed [portuguese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1120, 'contract', 'contract-signed-to-staff', 'portuguese', 'Contract Signed (Sent to Staff) [portuguese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1121, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1122, 'client', 'contact-verification-email', 'portuguese', 'Email Verification (Sent to Contact After Registration) [portuguese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1123, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1124, 'staff', 'event-notification-to-staff', 'portuguese', 'Event Notification (Calendar) [portuguese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1125, 'subscriptions', 'subscription-payment-requires-action', 'portuguese', 'Credit Card Authorization Required - SCA [portuguese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1126, 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1127, 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1128, 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1129, 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1130, 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1131, 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1132, 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1133, 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1134, 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1135, 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1136, 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1137, 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1138, 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1139, 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1140, 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1141, 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1142, 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment(s) on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1143, 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1144, 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1145, 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1146, 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1147, 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1148, 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1149, 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment  (Sent to Customer/Lead) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1150, 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1151, 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1152, 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1153, 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1154, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1155, 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1156, 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1157, 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1158, 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1159, 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1160, 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1161, 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1162, 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1163, 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1164, 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1165, 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1166, 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1167, 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1168, 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1169, 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1170, 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1171, 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1172, 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1173, 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1174, 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1175, 'client', 'client-statement', 'portuguese_br', 'Statement - Account Summary [portuguese_br]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1176, 'ticket', 'ticket-assigned-to-admin', 'portuguese_br', 'New Ticket Assigned (Sent to Staff) [portuguese_br]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1177, 'client', 'new-client-registered-to-admin', 'portuguese_br', 'New Customer Registration (Sent to admins) [portuguese_br]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1178, 'leads', 'new-web-to-lead-form-submitted', 'portuguese_br', 'Web to lead form submitted - Sent to lead [portuguese_br]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1179, 'staff', 'two-factor-authentication', 'portuguese_br', 'Two Factor Authentication [portuguese_br]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1180, 'project', 'project-finished-to-customer', 'portuguese_br', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese_br]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1181, 'credit_note', 'credit-note-send-to-client', 'portuguese_br', 'Send Credit Note To Email [portuguese_br]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1182, 'tasks', 'task-status-change-to-staff', 'portuguese_br', 'Task Status Changed (Sent to Staff) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1183, 'tasks', 'task-status-change-to-contacts', 'portuguese_br', 'Task Status Changed (Sent to Customer Contacts) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1184, 'staff', 'reminder-email-staff', 'portuguese_br', 'Staff Reminder Email [portuguese_br]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1185, 'contract', 'contract-comment-to-client', 'portuguese_br', 'New Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1186, 'contract', 'contract-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1187, 'subscriptions', 'send-subscription', 'portuguese_br', 'Send Subscription to Customer [portuguese_br]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1188, 'subscriptions', 'subscription-payment-failed', 'portuguese_br', 'Subscription Payment Failed [portuguese_br]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1189, 'subscriptions', 'subscription-canceled', 'portuguese_br', 'Subscription Canceled (Sent to customer primary contact) [portuguese_br]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1190, 'subscriptions', 'subscription-payment-succeeded', 'portuguese_br', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese_br]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1191, 'contract', 'contract-expiration-to-staff', 'portuguese_br', 'Contract Expiration Reminder (Sent to Staff) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1192, 'gdpr', 'gdpr-removal-request', 'portuguese_br', 'Removal Request From Contact (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1193, 'gdpr', 'gdpr-removal-request-lead', 'portuguese_br', 'Removal Request From Lead (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1194, 'client', 'client-registration-confirmed', 'portuguese_br', 'Customer Registration Confirmed [portuguese_br]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1195, 'contract', 'contract-signed-to-staff', 'portuguese_br', 'Contract Signed (Sent to Staff) [portuguese_br]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1196, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese_br', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese_br]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1197, 'client', 'contact-verification-email', 'portuguese_br', 'Email Verification (Sent to Contact After Registration) [portuguese_br]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1198, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese_br', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese_br]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1199, 'staff', 'event-notification-to-staff', 'portuguese_br', 'Event Notification (Calendar) [portuguese_br]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1200, 'subscriptions', 'subscription-payment-requires-action', 'portuguese_br', 'Credit Card Authorization Required - SCA [portuguese_br]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1201, 'client', 'new-client-created', 'romanian', 'New Contact Added/Registered (Welcome Email) [romanian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1202, 'invoice', 'invoice-send-to-client', 'romanian', 'Send Invoice to Customer [romanian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1203, 'ticket', 'new-ticket-opened-admin', 'romanian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1204, 'ticket', 'ticket-reply', 'romanian', 'Ticket Reply (Sent to Customer) [romanian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1205, 'ticket', 'ticket-autoresponse', 'romanian', 'New Ticket Opened - Autoresponse [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1206, 'invoice', 'invoice-payment-recorded', 'romanian', 'Invoice Payment Recorded (Sent to Customer) [romanian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1207, 'invoice', 'invoice-overdue-notice', 'romanian', 'Invoice Overdue Notice [romanian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1208, 'invoice', 'invoice-already-send', 'romanian', 'Invoice Already Sent to Customer [romanian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1209, 'ticket', 'new-ticket-created-staff', 'romanian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [romanian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1210, 'estimate', 'estimate-send-to-client', 'romanian', 'Send Estimate to Customer [romanian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1211, 'ticket', 'ticket-reply-to-admin', 'romanian', 'Ticket Reply (Sent to Staff) [romanian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1212, 'estimate', 'estimate-already-send', 'romanian', 'Estimate Already Sent to Customer [romanian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1213, 'contract', 'contract-expiration', 'romanian', 'Contract Expiration Reminder (Sent to Customer Contacts) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1214, 'tasks', 'task-assigned', 'romanian', 'New Task Assigned (Sent to Staff) [romanian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1215, 'tasks', 'task-added-as-follower', 'romanian', 'Staff Member Added as Follower on Task (Sent to Staff) [romanian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1216, 'tasks', 'task-commented', 'romanian', 'New Comment on Task (Sent to Staff) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1217, 'tasks', 'task-added-attachment', 'romanian', 'New Attachment(s) on Task (Sent to Staff) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1218, 'estimate', 'estimate-declined-to-staff', 'romanian', 'Estimate Declined (Sent to Staff) [romanian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1219, 'estimate', 'estimate-accepted-to-staff', 'romanian', 'Estimate Accepted (Sent to Staff) [romanian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1220, 'proposals', 'proposal-client-accepted', 'romanian', 'Customer Action - Accepted (Sent to Staff) [romanian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1221, 'proposals', 'proposal-send-to-customer', 'romanian', 'Send Proposal to Customer [romanian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1222, 'proposals', 'proposal-client-declined', 'romanian', 'Customer Action - Declined (Sent to Staff) [romanian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1223, 'proposals', 'proposal-client-thank-you', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1224, 'proposals', 'proposal-comment-to-client', 'romanian', 'New Comment  (Sent to Customer/Lead) [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1225, 'proposals', 'proposal-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1226, 'estimate', 'estimate-thank-you-to-customer', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1227, 'tasks', 'task-deadline-notification', 'romanian', 'Task Deadline Reminder - Sent to Assigned Members [romanian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1228, 'contract', 'send-contract', 'romanian', 'Send Contract to Customer [romanian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1229, 'invoice', 'invoice-payment-recorded-to-staff', 'romanian', 'Invoice Payment Recorded (Sent to Staff) [romanian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1230, 'ticket', 'auto-close-ticket', 'romanian', 'Auto Close Ticket [romanian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1231, 'project', 'new-project-discussion-created-to-staff', 'romanian', 'New Project Discussion (Sent to Project Members) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1232, 'project', 'new-project-discussion-created-to-customer', 'romanian', 'New Project Discussion (Sent to Customer Contacts) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1233, 'project', 'new-project-file-uploaded-to-customer', 'romanian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1234, 'project', 'new-project-file-uploaded-to-staff', 'romanian', 'New Project File(s) Uploaded (Sent to Project Members) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1235, 'project', 'new-project-discussion-comment-to-customer', 'romanian', 'New Discussion Comment  (Sent to Customer Contacts) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1236, 'project', 'new-project-discussion-comment-to-staff', 'romanian', 'New Discussion Comment (Sent to Project Members) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1237, 'project', 'staff-added-as-project-member', 'romanian', 'Staff Added as Project Member [romanian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1238, 'estimate', 'estimate-expiry-reminder', 'romanian', 'Estimate Expiration Reminder [romanian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1239, 'proposals', 'proposal-expiry-reminder', 'romanian', 'Proposal Expiration Reminder [romanian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1240, 'staff', 'new-staff-created', 'romanian', 'New Staff Created (Welcome Email) [romanian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1241, 'client', 'contact-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1242, 'client', 'contact-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1243, 'client', 'contact-set-password', 'romanian', 'Set New Password [romanian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1244, 'staff', 'staff-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1245, 'staff', 'staff-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1246, 'project', 'assigned-to-project', 'romanian', 'New Project Created (Sent to Customer Contacts) [romanian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1247, 'tasks', 'task-added-attachment-to-contacts', 'romanian', 'New Attachment(s) on Task (Sent to Customer Contacts) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1248, 'tasks', 'task-commented-to-contacts', 'romanian', 'New Comment on Task (Sent to Customer Contacts) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1249, 'leads', 'new-lead-assigned', 'romanian', 'New Lead Assigned to Staff Member [romanian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1250, 'client', 'client-statement', 'romanian', 'Statement - Account Summary [romanian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1251, 'ticket', 'ticket-assigned-to-admin', 'romanian', 'New Ticket Assigned (Sent to Staff) [romanian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1252, 'client', 'new-client-registered-to-admin', 'romanian', 'New Customer Registration (Sent to admins) [romanian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1253, 'leads', 'new-web-to-lead-form-submitted', 'romanian', 'Web to lead form submitted - Sent to lead [romanian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1254, 'staff', 'two-factor-authentication', 'romanian', 'Two Factor Authentication [romanian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1255, 'project', 'project-finished-to-customer', 'romanian', 'Project Marked as Finished (Sent to Customer Contacts) [romanian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1256, 'credit_note', 'credit-note-send-to-client', 'romanian', 'Send Credit Note To Email [romanian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1257, 'tasks', 'task-status-change-to-staff', 'romanian', 'Task Status Changed (Sent to Staff) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1258, 'tasks', 'task-status-change-to-contacts', 'romanian', 'Task Status Changed (Sent to Customer Contacts) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1259, 'staff', 'reminder-email-staff', 'romanian', 'Staff Reminder Email [romanian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1260, 'contract', 'contract-comment-to-client', 'romanian', 'New Comment  (Sent to Customer Contacts) [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1261, 'contract', 'contract-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1262, 'subscriptions', 'send-subscription', 'romanian', 'Send Subscription to Customer [romanian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1263, 'subscriptions', 'subscription-payment-failed', 'romanian', 'Subscription Payment Failed [romanian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1264, 'subscriptions', 'subscription-canceled', 'romanian', 'Subscription Canceled (Sent to customer primary contact) [romanian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1265, 'subscriptions', 'subscription-payment-succeeded', 'romanian', 'Subscription Payment Succeeded (Sent to customer primary contact) [romanian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1266, 'contract', 'contract-expiration-to-staff', 'romanian', 'Contract Expiration Reminder (Sent to Staff) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1267, 'gdpr', 'gdpr-removal-request', 'romanian', 'Removal Request From Contact (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1268, 'gdpr', 'gdpr-removal-request-lead', 'romanian', 'Removal Request From Lead (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1269, 'client', 'client-registration-confirmed', 'romanian', 'Customer Registration Confirmed [romanian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1270, 'contract', 'contract-signed-to-staff', 'romanian', 'Contract Signed (Sent to Staff) [romanian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1271, 'subscriptions', 'customer-subscribed-to-staff', 'romanian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [romanian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1272, 'client', 'contact-verification-email', 'romanian', 'Email Verification (Sent to Contact After Registration) [romanian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1273, 'client', 'new-customer-profile-file-uploaded-to-staff', 'romanian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [romanian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1274, 'staff', 'event-notification-to-staff', 'romanian', 'Event Notification (Calendar) [romanian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1275, 'subscriptions', 'subscription-payment-requires-action', 'romanian', 'Credit Card Authorization Required - SCA [romanian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1276, 'client', 'new-client-created', 'russian', 'New Contact Added/Registered (Welcome Email) [russian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1277, 'invoice', 'invoice-send-to-client', 'russian', 'Send Invoice to Customer [russian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1278, 'ticket', 'new-ticket-opened-admin', 'russian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1279, 'ticket', 'ticket-reply', 'russian', 'Ticket Reply (Sent to Customer) [russian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1280, 'ticket', 'ticket-autoresponse', 'russian', 'New Ticket Opened - Autoresponse [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1281, 'invoice', 'invoice-payment-recorded', 'russian', 'Invoice Payment Recorded (Sent to Customer) [russian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1282, 'invoice', 'invoice-overdue-notice', 'russian', 'Invoice Overdue Notice [russian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1283, 'invoice', 'invoice-already-send', 'russian', 'Invoice Already Sent to Customer [russian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1284, 'ticket', 'new-ticket-created-staff', 'russian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1285, 'estimate', 'estimate-send-to-client', 'russian', 'Send Estimate to Customer [russian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1286, 'ticket', 'ticket-reply-to-admin', 'russian', 'Ticket Reply (Sent to Staff) [russian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1287, 'estimate', 'estimate-already-send', 'russian', 'Estimate Already Sent to Customer [russian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1288, 'contract', 'contract-expiration', 'russian', 'Contract Expiration Reminder (Sent to Customer Contacts) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1289, 'tasks', 'task-assigned', 'russian', 'New Task Assigned (Sent to Staff) [russian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1290, 'tasks', 'task-added-as-follower', 'russian', 'Staff Member Added as Follower on Task (Sent to Staff) [russian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1291, 'tasks', 'task-commented', 'russian', 'New Comment on Task (Sent to Staff) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1292, 'tasks', 'task-added-attachment', 'russian', 'New Attachment(s) on Task (Sent to Staff) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1293, 'estimate', 'estimate-declined-to-staff', 'russian', 'Estimate Declined (Sent to Staff) [russian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1294, 'estimate', 'estimate-accepted-to-staff', 'russian', 'Estimate Accepted (Sent to Staff) [russian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1295, 'proposals', 'proposal-client-accepted', 'russian', 'Customer Action - Accepted (Sent to Staff) [russian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1296, 'proposals', 'proposal-send-to-customer', 'russian', 'Send Proposal to Customer [russian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1297, 'proposals', 'proposal-client-declined', 'russian', 'Customer Action - Declined (Sent to Staff) [russian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1298, 'proposals', 'proposal-client-thank-you', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1299, 'proposals', 'proposal-comment-to-client', 'russian', 'New Comment  (Sent to Customer/Lead) [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1300, 'proposals', 'proposal-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1301, 'estimate', 'estimate-thank-you-to-customer', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1302, 'tasks', 'task-deadline-notification', 'russian', 'Task Deadline Reminder - Sent to Assigned Members [russian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1303, 'contract', 'send-contract', 'russian', 'Send Contract to Customer [russian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1304, 'invoice', 'invoice-payment-recorded-to-staff', 'russian', 'Invoice Payment Recorded (Sent to Staff) [russian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1305, 'ticket', 'auto-close-ticket', 'russian', 'Auto Close Ticket [russian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1306, 'project', 'new-project-discussion-created-to-staff', 'russian', 'New Project Discussion (Sent to Project Members) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1307, 'project', 'new-project-discussion-created-to-customer', 'russian', 'New Project Discussion (Sent to Customer Contacts) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1308, 'project', 'new-project-file-uploaded-to-customer', 'russian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1309, 'project', 'new-project-file-uploaded-to-staff', 'russian', 'New Project File(s) Uploaded (Sent to Project Members) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1310, 'project', 'new-project-discussion-comment-to-customer', 'russian', 'New Discussion Comment  (Sent to Customer Contacts) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1311, 'project', 'new-project-discussion-comment-to-staff', 'russian', 'New Discussion Comment (Sent to Project Members) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1312, 'project', 'staff-added-as-project-member', 'russian', 'Staff Added as Project Member [russian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1313, 'estimate', 'estimate-expiry-reminder', 'russian', 'Estimate Expiration Reminder [russian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1314, 'proposals', 'proposal-expiry-reminder', 'russian', 'Proposal Expiration Reminder [russian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1315, 'staff', 'new-staff-created', 'russian', 'New Staff Created (Welcome Email) [russian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1316, 'client', 'contact-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1317, 'client', 'contact-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1318, 'client', 'contact-set-password', 'russian', 'Set New Password [russian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1319, 'staff', 'staff-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1320, 'staff', 'staff-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1321, 'project', 'assigned-to-project', 'russian', 'New Project Created (Sent to Customer Contacts) [russian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1322, 'tasks', 'task-added-attachment-to-contacts', 'russian', 'New Attachment(s) on Task (Sent to Customer Contacts) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1323, 'tasks', 'task-commented-to-contacts', 'russian', 'New Comment on Task (Sent to Customer Contacts) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1324, 'leads', 'new-lead-assigned', 'russian', 'New Lead Assigned to Staff Member [russian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1325, 'client', 'client-statement', 'russian', 'Statement - Account Summary [russian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1326, 'ticket', 'ticket-assigned-to-admin', 'russian', 'New Ticket Assigned (Sent to Staff) [russian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1327, 'client', 'new-client-registered-to-admin', 'russian', 'New Customer Registration (Sent to admins) [russian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1328, 'leads', 'new-web-to-lead-form-submitted', 'russian', 'Web to lead form submitted - Sent to lead [russian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1329, 'staff', 'two-factor-authentication', 'russian', 'Two Factor Authentication [russian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1330, 'project', 'project-finished-to-customer', 'russian', 'Project Marked as Finished (Sent to Customer Contacts) [russian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1331, 'credit_note', 'credit-note-send-to-client', 'russian', 'Send Credit Note To Email [russian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1332, 'tasks', 'task-status-change-to-staff', 'russian', 'Task Status Changed (Sent to Staff) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1333, 'tasks', 'task-status-change-to-contacts', 'russian', 'Task Status Changed (Sent to Customer Contacts) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1334, 'staff', 'reminder-email-staff', 'russian', 'Staff Reminder Email [russian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1335, 'contract', 'contract-comment-to-client', 'russian', 'New Comment  (Sent to Customer Contacts) [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1336, 'contract', 'contract-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1337, 'subscriptions', 'send-subscription', 'russian', 'Send Subscription to Customer [russian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1338, 'subscriptions', 'subscription-payment-failed', 'russian', 'Subscription Payment Failed [russian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1339, 'subscriptions', 'subscription-canceled', 'russian', 'Subscription Canceled (Sent to customer primary contact) [russian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1340, 'subscriptions', 'subscription-payment-succeeded', 'russian', 'Subscription Payment Succeeded (Sent to customer primary contact) [russian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1341, 'contract', 'contract-expiration-to-staff', 'russian', 'Contract Expiration Reminder (Sent to Staff) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1342, 'gdpr', 'gdpr-removal-request', 'russian', 'Removal Request From Contact (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1343, 'gdpr', 'gdpr-removal-request-lead', 'russian', 'Removal Request From Lead (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1344, 'client', 'client-registration-confirmed', 'russian', 'Customer Registration Confirmed [russian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1345, 'contract', 'contract-signed-to-staff', 'russian', 'Contract Signed (Sent to Staff) [russian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1346, 'subscriptions', 'customer-subscribed-to-staff', 'russian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [russian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1347, 'client', 'contact-verification-email', 'russian', 'Email Verification (Sent to Contact After Registration) [russian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1348, 'client', 'new-customer-profile-file-uploaded-to-staff', 'russian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [russian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1349, 'staff', 'event-notification-to-staff', 'russian', 'Event Notification (Calendar) [russian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1350, 'subscriptions', 'subscription-payment-requires-action', 'russian', 'Credit Card Authorization Required - SCA [russian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1351, 'client', 'new-client-created', 'slovak', 'New Contact Added/Registered (Welcome Email) [slovak]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1352, 'invoice', 'invoice-send-to-client', 'slovak', 'Send Invoice to Customer [slovak]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1353, 'ticket', 'new-ticket-opened-admin', 'slovak', 'New Ticket Opened (Opened by Staff, Sent to Customer) [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1354, 'ticket', 'ticket-reply', 'slovak', 'Ticket Reply (Sent to Customer) [slovak]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1355, 'ticket', 'ticket-autoresponse', 'slovak', 'New Ticket Opened - Autoresponse [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1356, 'invoice', 'invoice-payment-recorded', 'slovak', 'Invoice Payment Recorded (Sent to Customer) [slovak]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1357, 'invoice', 'invoice-overdue-notice', 'slovak', 'Invoice Overdue Notice [slovak]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1358, 'invoice', 'invoice-already-send', 'slovak', 'Invoice Already Sent to Customer [slovak]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1359, 'ticket', 'new-ticket-created-staff', 'slovak', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [slovak]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1360, 'estimate', 'estimate-send-to-client', 'slovak', 'Send Estimate to Customer [slovak]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1361, 'ticket', 'ticket-reply-to-admin', 'slovak', 'Ticket Reply (Sent to Staff) [slovak]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1362, 'estimate', 'estimate-already-send', 'slovak', 'Estimate Already Sent to Customer [slovak]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1363, 'contract', 'contract-expiration', 'slovak', 'Contract Expiration Reminder (Sent to Customer Contacts) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1364, 'tasks', 'task-assigned', 'slovak', 'New Task Assigned (Sent to Staff) [slovak]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1365, 'tasks', 'task-added-as-follower', 'slovak', 'Staff Member Added as Follower on Task (Sent to Staff) [slovak]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1366, 'tasks', 'task-commented', 'slovak', 'New Comment on Task (Sent to Staff) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1367, 'tasks', 'task-added-attachment', 'slovak', 'New Attachment(s) on Task (Sent to Staff) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1368, 'estimate', 'estimate-declined-to-staff', 'slovak', 'Estimate Declined (Sent to Staff) [slovak]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1369, 'estimate', 'estimate-accepted-to-staff', 'slovak', 'Estimate Accepted (Sent to Staff) [slovak]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1370, 'proposals', 'proposal-client-accepted', 'slovak', 'Customer Action - Accepted (Sent to Staff) [slovak]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1371, 'proposals', 'proposal-send-to-customer', 'slovak', 'Send Proposal to Customer [slovak]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1372, 'proposals', 'proposal-client-declined', 'slovak', 'Customer Action - Declined (Sent to Staff) [slovak]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1373, 'proposals', 'proposal-client-thank-you', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1374, 'proposals', 'proposal-comment-to-client', 'slovak', 'New Comment  (Sent to Customer/Lead) [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1375, 'proposals', 'proposal-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1376, 'estimate', 'estimate-thank-you-to-customer', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1377, 'tasks', 'task-deadline-notification', 'slovak', 'Task Deadline Reminder - Sent to Assigned Members [slovak]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1378, 'contract', 'send-contract', 'slovak', 'Send Contract to Customer [slovak]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1379, 'invoice', 'invoice-payment-recorded-to-staff', 'slovak', 'Invoice Payment Recorded (Sent to Staff) [slovak]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1380, 'ticket', 'auto-close-ticket', 'slovak', 'Auto Close Ticket [slovak]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1381, 'project', 'new-project-discussion-created-to-staff', 'slovak', 'New Project Discussion (Sent to Project Members) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1382, 'project', 'new-project-discussion-created-to-customer', 'slovak', 'New Project Discussion (Sent to Customer Contacts) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1383, 'project', 'new-project-file-uploaded-to-customer', 'slovak', 'New Project File(s) Uploaded (Sent to Customer Contacts) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1384, 'project', 'new-project-file-uploaded-to-staff', 'slovak', 'New Project File(s) Uploaded (Sent to Project Members) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1385, 'project', 'new-project-discussion-comment-to-customer', 'slovak', 'New Discussion Comment  (Sent to Customer Contacts) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1386, 'project', 'new-project-discussion-comment-to-staff', 'slovak', 'New Discussion Comment (Sent to Project Members) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1387, 'project', 'staff-added-as-project-member', 'slovak', 'Staff Added as Project Member [slovak]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1388, 'estimate', 'estimate-expiry-reminder', 'slovak', 'Estimate Expiration Reminder [slovak]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1389, 'proposals', 'proposal-expiry-reminder', 'slovak', 'Proposal Expiration Reminder [slovak]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1390, 'staff', 'new-staff-created', 'slovak', 'New Staff Created (Welcome Email) [slovak]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1391, 'client', 'contact-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1392, 'client', 'contact-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1393, 'client', 'contact-set-password', 'slovak', 'Set New Password [slovak]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1394, 'staff', 'staff-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1395, 'staff', 'staff-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1396, 'project', 'assigned-to-project', 'slovak', 'New Project Created (Sent to Customer Contacts) [slovak]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1397, 'tasks', 'task-added-attachment-to-contacts', 'slovak', 'New Attachment(s) on Task (Sent to Customer Contacts) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1398, 'tasks', 'task-commented-to-contacts', 'slovak', 'New Comment on Task (Sent to Customer Contacts) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1399, 'leads', 'new-lead-assigned', 'slovak', 'New Lead Assigned to Staff Member [slovak]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1400, 'client', 'client-statement', 'slovak', 'Statement - Account Summary [slovak]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1401, 'ticket', 'ticket-assigned-to-admin', 'slovak', 'New Ticket Assigned (Sent to Staff) [slovak]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1402, 'client', 'new-client-registered-to-admin', 'slovak', 'New Customer Registration (Sent to admins) [slovak]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1403, 'leads', 'new-web-to-lead-form-submitted', 'slovak', 'Web to lead form submitted - Sent to lead [slovak]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1404, 'staff', 'two-factor-authentication', 'slovak', 'Two Factor Authentication [slovak]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1405, 'project', 'project-finished-to-customer', 'slovak', 'Project Marked as Finished (Sent to Customer Contacts) [slovak]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1406, 'credit_note', 'credit-note-send-to-client', 'slovak', 'Send Credit Note To Email [slovak]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1407, 'tasks', 'task-status-change-to-staff', 'slovak', 'Task Status Changed (Sent to Staff) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1408, 'tasks', 'task-status-change-to-contacts', 'slovak', 'Task Status Changed (Sent to Customer Contacts) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1409, 'staff', 'reminder-email-staff', 'slovak', 'Staff Reminder Email [slovak]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1410, 'contract', 'contract-comment-to-client', 'slovak', 'New Comment  (Sent to Customer Contacts) [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1411, 'contract', 'contract-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1412, 'subscriptions', 'send-subscription', 'slovak', 'Send Subscription to Customer [slovak]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1413, 'subscriptions', 'subscription-payment-failed', 'slovak', 'Subscription Payment Failed [slovak]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1414, 'subscriptions', 'subscription-canceled', 'slovak', 'Subscription Canceled (Sent to customer primary contact) [slovak]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1415, 'subscriptions', 'subscription-payment-succeeded', 'slovak', 'Subscription Payment Succeeded (Sent to customer primary contact) [slovak]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1416, 'contract', 'contract-expiration-to-staff', 'slovak', 'Contract Expiration Reminder (Sent to Staff) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1417, 'gdpr', 'gdpr-removal-request', 'slovak', 'Removal Request From Contact (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1418, 'gdpr', 'gdpr-removal-request-lead', 'slovak', 'Removal Request From Lead (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1419, 'client', 'client-registration-confirmed', 'slovak', 'Customer Registration Confirmed [slovak]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1420, 'contract', 'contract-signed-to-staff', 'slovak', 'Contract Signed (Sent to Staff) [slovak]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1421, 'subscriptions', 'customer-subscribed-to-staff', 'slovak', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [slovak]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1422, 'client', 'contact-verification-email', 'slovak', 'Email Verification (Sent to Contact After Registration) [slovak]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1423, 'client', 'new-customer-profile-file-uploaded-to-staff', 'slovak', 'New Customer Profile File(s) Uploaded (Sent to Staff) [slovak]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1424, 'staff', 'event-notification-to-staff', 'slovak', 'Event Notification (Calendar) [slovak]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1425, 'subscriptions', 'subscription-payment-requires-action', 'slovak', 'Credit Card Authorization Required - SCA [slovak]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1426, 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1427, 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1428, 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1429, 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1430, 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1431, 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1432, 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1433, 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1434, 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1435, 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1436, 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1437, 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1438, 'contract', 'contract-expiration', 'spanish', 'Contract Expiration Reminder (Sent to Customer Contacts) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1439, 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1440, 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task (Sent to Staff) [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1441, 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1442, 'tasks', 'task-added-attachment', 'spanish', 'New Attachment(s) on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1443, 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1444, 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1445, 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1446, 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1447, 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1448, 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1449, 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment  (Sent to Customer/Lead) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1450, 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1451, 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1452, 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1453, 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1454, 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1455, 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1456, 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1457, 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1458, 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1459, 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File(s) Uploaded (Sent to Project Members) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1460, 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1461, 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1462, 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1463, 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1464, 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1465, 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1466, 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1467, 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1468, 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1469, 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1470, 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1471, 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1472, 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment(s) on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1473, 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1474, 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1475, 'client', 'client-statement', 'spanish', 'Statement - Account Summary [spanish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1476, 'ticket', 'ticket-assigned-to-admin', 'spanish', 'New Ticket Assigned (Sent to Staff) [spanish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1477, 'client', 'new-client-registered-to-admin', 'spanish', 'New Customer Registration (Sent to admins) [spanish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1478, 'leads', 'new-web-to-lead-form-submitted', 'spanish', 'Web to lead form submitted - Sent to lead [spanish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1479, 'staff', 'two-factor-authentication', 'spanish', 'Two Factor Authentication [spanish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1480, 'project', 'project-finished-to-customer', 'spanish', 'Project Marked as Finished (Sent to Customer Contacts) [spanish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1481, 'credit_note', 'credit-note-send-to-client', 'spanish', 'Send Credit Note To Email [spanish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1482, 'tasks', 'task-status-change-to-staff', 'spanish', 'Task Status Changed (Sent to Staff) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1483, 'tasks', 'task-status-change-to-contacts', 'spanish', 'Task Status Changed (Sent to Customer Contacts) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1484, 'staff', 'reminder-email-staff', 'spanish', 'Staff Reminder Email [spanish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1485, 'contract', 'contract-comment-to-client', 'spanish', 'New Comment  (Sent to Customer Contacts) [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1486, 'contract', 'contract-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1487, 'subscriptions', 'send-subscription', 'spanish', 'Send Subscription to Customer [spanish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1488, 'subscriptions', 'subscription-payment-failed', 'spanish', 'Subscription Payment Failed [spanish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1489, 'subscriptions', 'subscription-canceled', 'spanish', 'Subscription Canceled (Sent to customer primary contact) [spanish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1490, 'subscriptions', 'subscription-payment-succeeded', 'spanish', 'Subscription Payment Succeeded (Sent to customer primary contact) [spanish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1491, 'contract', 'contract-expiration-to-staff', 'spanish', 'Contract Expiration Reminder (Sent to Staff) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1492, 'gdpr', 'gdpr-removal-request', 'spanish', 'Removal Request From Contact (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1493, 'gdpr', 'gdpr-removal-request-lead', 'spanish', 'Removal Request From Lead (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1494, 'client', 'client-registration-confirmed', 'spanish', 'Customer Registration Confirmed [spanish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1495, 'contract', 'contract-signed-to-staff', 'spanish', 'Contract Signed (Sent to Staff) [spanish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1496, 'subscriptions', 'customer-subscribed-to-staff', 'spanish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [spanish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1497, 'client', 'contact-verification-email', 'spanish', 'Email Verification (Sent to Contact After Registration) [spanish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1498, 'client', 'new-customer-profile-file-uploaded-to-staff', 'spanish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [spanish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1499, 'staff', 'event-notification-to-staff', 'spanish', 'Event Notification (Calendar) [spanish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1500, 'subscriptions', 'subscription-payment-requires-action', 'spanish', 'Credit Card Authorization Required - SCA [spanish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1501, 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1502, 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1503, 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1504, 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1505, 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1506, 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1507, 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1508, 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1509, 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1510, 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1511, 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1512, 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1513, 'contract', 'contract-expiration', 'swedish', 'Contract Expiration Reminder (Sent to Customer Contacts) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1514, 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1515, 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task (Sent to Staff) [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1516, 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1517, 'tasks', 'task-added-attachment', 'swedish', 'New Attachment(s) on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1518, 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1519, 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1520, 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1521, 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1522, 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1523, 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1524, 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment  (Sent to Customer/Lead) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1525, 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1526, 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1527, 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1528, 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1529, 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1530, 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1531, 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1532, 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1533, 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1534, 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File(s) Uploaded (Sent to Project Members) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1535, 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1536, 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1537, 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1538, 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1539, 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1540, 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1541, 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1542, 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1543, 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1544, 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1545, 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1546, 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1547, 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment(s) on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1548, 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1549, 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1550, 'client', 'client-statement', 'swedish', 'Statement - Account Summary [swedish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1551, 'ticket', 'ticket-assigned-to-admin', 'swedish', 'New Ticket Assigned (Sent to Staff) [swedish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1552, 'client', 'new-client-registered-to-admin', 'swedish', 'New Customer Registration (Sent to admins) [swedish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1553, 'leads', 'new-web-to-lead-form-submitted', 'swedish', 'Web to lead form submitted - Sent to lead [swedish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1554, 'staff', 'two-factor-authentication', 'swedish', 'Two Factor Authentication [swedish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1555, 'project', 'project-finished-to-customer', 'swedish', 'Project Marked as Finished (Sent to Customer Contacts) [swedish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1556, 'credit_note', 'credit-note-send-to-client', 'swedish', 'Send Credit Note To Email [swedish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1557, 'tasks', 'task-status-change-to-staff', 'swedish', 'Task Status Changed (Sent to Staff) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1558, 'tasks', 'task-status-change-to-contacts', 'swedish', 'Task Status Changed (Sent to Customer Contacts) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1559, 'staff', 'reminder-email-staff', 'swedish', 'Staff Reminder Email [swedish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1560, 'contract', 'contract-comment-to-client', 'swedish', 'New Comment  (Sent to Customer Contacts) [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1561, 'contract', 'contract-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1562, 'subscriptions', 'send-subscription', 'swedish', 'Send Subscription to Customer [swedish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1563, 'subscriptions', 'subscription-payment-failed', 'swedish', 'Subscription Payment Failed [swedish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1564, 'subscriptions', 'subscription-canceled', 'swedish', 'Subscription Canceled (Sent to customer primary contact) [swedish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1565, 'subscriptions', 'subscription-payment-succeeded', 'swedish', 'Subscription Payment Succeeded (Sent to customer primary contact) [swedish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1566, 'contract', 'contract-expiration-to-staff', 'swedish', 'Contract Expiration Reminder (Sent to Staff) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1567, 'gdpr', 'gdpr-removal-request', 'swedish', 'Removal Request From Contact (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1568, 'gdpr', 'gdpr-removal-request-lead', 'swedish', 'Removal Request From Lead (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1569, 'client', 'client-registration-confirmed', 'swedish', 'Customer Registration Confirmed [swedish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1570, 'contract', 'contract-signed-to-staff', 'swedish', 'Contract Signed (Sent to Staff) [swedish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1571, 'subscriptions', 'customer-subscribed-to-staff', 'swedish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [swedish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1572, 'client', 'contact-verification-email', 'swedish', 'Email Verification (Sent to Contact After Registration) [swedish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1573, 'client', 'new-customer-profile-file-uploaded-to-staff', 'swedish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [swedish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1574, 'staff', 'event-notification-to-staff', 'swedish', 'Event Notification (Calendar) [swedish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1575, 'subscriptions', 'subscription-payment-requires-action', 'swedish', 'Credit Card Authorization Required - SCA [swedish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1576, 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1577, 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1578, 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1579, 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1580, 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1581, 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1582, 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1583, 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1584, 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1585, 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1586, 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1587, 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1588, 'contract', 'contract-expiration', 'turkish', 'Contract Expiration Reminder (Sent to Customer Contacts) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1589, 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1590, 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task (Sent to Staff) [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1591, 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1592, 'tasks', 'task-added-attachment', 'turkish', 'New Attachment(s) on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1593, 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1594, 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1595, 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1596, 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1597, 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1598, 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1599, 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment  (Sent to Customer/Lead) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1600, 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1601, 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1602, 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1603, 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1604, 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1605, 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1606, 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1607, 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1608, 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1609, 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File(s) Uploaded (Sent to Project Members) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1610, 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1611, 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1612, 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1613, 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1614, 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1615, 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1616, 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1617, 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1618, 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1619, 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1620, 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1621, 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1622, 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment(s) on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1623, 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1624, 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1625, 'client', 'client-statement', 'turkish', 'Statement - Account Summary [turkish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1626, 'ticket', 'ticket-assigned-to-admin', 'turkish', 'New Ticket Assigned (Sent to Staff) [turkish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1627, 'client', 'new-client-registered-to-admin', 'turkish', 'New Customer Registration (Sent to admins) [turkish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1628, 'leads', 'new-web-to-lead-form-submitted', 'turkish', 'Web to lead form submitted - Sent to lead [turkish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1629, 'staff', 'two-factor-authentication', 'turkish', 'Two Factor Authentication [turkish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1630, 'project', 'project-finished-to-customer', 'turkish', 'Project Marked as Finished (Sent to Customer Contacts) [turkish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1631, 'credit_note', 'credit-note-send-to-client', 'turkish', 'Send Credit Note To Email [turkish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1632, 'tasks', 'task-status-change-to-staff', 'turkish', 'Task Status Changed (Sent to Staff) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1633, 'tasks', 'task-status-change-to-contacts', 'turkish', 'Task Status Changed (Sent to Customer Contacts) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1634, 'staff', 'reminder-email-staff', 'turkish', 'Staff Reminder Email [turkish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1635, 'contract', 'contract-comment-to-client', 'turkish', 'New Comment  (Sent to Customer Contacts) [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1636, 'contract', 'contract-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1637, 'subscriptions', 'send-subscription', 'turkish', 'Send Subscription to Customer [turkish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1638, 'subscriptions', 'subscription-payment-failed', 'turkish', 'Subscription Payment Failed [turkish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1639, 'subscriptions', 'subscription-canceled', 'turkish', 'Subscription Canceled (Sent to customer primary contact) [turkish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1640, 'subscriptions', 'subscription-payment-succeeded', 'turkish', 'Subscription Payment Succeeded (Sent to customer primary contact) [turkish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1641, 'contract', 'contract-expiration-to-staff', 'turkish', 'Contract Expiration Reminder (Sent to Staff) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1642, 'gdpr', 'gdpr-removal-request', 'turkish', 'Removal Request From Contact (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1643, 'gdpr', 'gdpr-removal-request-lead', 'turkish', 'Removal Request From Lead (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1644, 'client', 'client-registration-confirmed', 'turkish', 'Customer Registration Confirmed [turkish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1645, 'contract', 'contract-signed-to-staff', 'turkish', 'Contract Signed (Sent to Staff) [turkish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1646, 'subscriptions', 'customer-subscribed-to-staff', 'turkish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [turkish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1647, 'client', 'contact-verification-email', 'turkish', 'Email Verification (Sent to Contact After Registration) [turkish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1648, 'client', 'new-customer-profile-file-uploaded-to-staff', 'turkish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [turkish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1649, 'staff', 'event-notification-to-staff', 'turkish', 'Event Notification (Calendar) [turkish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1650, 'subscriptions', 'subscription-payment-requires-action', 'turkish', 'Credit Card Authorization Required - SCA [turkish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1651, 'client', 'new-client-created', 'ukrainian', 'New Contact Added/Registered (Welcome Email) [ukrainian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1652, 'invoice', 'invoice-send-to-client', 'ukrainian', 'Send Invoice to Customer [ukrainian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1653, 'ticket', 'new-ticket-opened-admin', 'ukrainian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1654, 'ticket', 'ticket-reply', 'ukrainian', 'Ticket Reply (Sent to Customer) [ukrainian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1655, 'ticket', 'ticket-autoresponse', 'ukrainian', 'New Ticket Opened - Autoresponse [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1656, 'invoice', 'invoice-payment-recorded', 'ukrainian', 'Invoice Payment Recorded (Sent to Customer) [ukrainian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1657, 'invoice', 'invoice-overdue-notice', 'ukrainian', 'Invoice Overdue Notice [ukrainian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1658, 'invoice', 'invoice-already-send', 'ukrainian', 'Invoice Already Sent to Customer [ukrainian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1659, 'ticket', 'new-ticket-created-staff', 'ukrainian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [ukrainian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1660, 'estimate', 'estimate-send-to-client', 'ukrainian', 'Send Estimate to Customer [ukrainian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1661, 'ticket', 'ticket-reply-to-admin', 'ukrainian', 'Ticket Reply (Sent to Staff) [ukrainian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1662, 'estimate', 'estimate-already-send', 'ukrainian', 'Estimate Already Sent to Customer [ukrainian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1663, 'contract', 'contract-expiration', 'ukrainian', 'Contract Expiration Reminder (Sent to Customer Contacts) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1664, 'tasks', 'task-assigned', 'ukrainian', 'New Task Assigned (Sent to Staff) [ukrainian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1665, 'tasks', 'task-added-as-follower', 'ukrainian', 'Staff Member Added as Follower on Task (Sent to Staff) [ukrainian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1666, 'tasks', 'task-commented', 'ukrainian', 'New Comment on Task (Sent to Staff) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1667, 'tasks', 'task-added-attachment', 'ukrainian', 'New Attachment(s) on Task (Sent to Staff) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1668, 'estimate', 'estimate-declined-to-staff', 'ukrainian', 'Estimate Declined (Sent to Staff) [ukrainian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1669, 'estimate', 'estimate-accepted-to-staff', 'ukrainian', 'Estimate Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1670, 'proposals', 'proposal-client-accepted', 'ukrainian', 'Customer Action - Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1671, 'proposals', 'proposal-send-to-customer', 'ukrainian', 'Send Proposal to Customer [ukrainian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1672, 'proposals', 'proposal-client-declined', 'ukrainian', 'Customer Action - Declined (Sent to Staff) [ukrainian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1673, 'proposals', 'proposal-client-thank-you', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1674, 'proposals', 'proposal-comment-to-client', 'ukrainian', 'New Comment  (Sent to Customer/Lead) [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1675, 'proposals', 'proposal-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1676, 'estimate', 'estimate-thank-you-to-customer', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1677, 'tasks', 'task-deadline-notification', 'ukrainian', 'Task Deadline Reminder - Sent to Assigned Members [ukrainian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1678, 'contract', 'send-contract', 'ukrainian', 'Send Contract to Customer [ukrainian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1679, 'invoice', 'invoice-payment-recorded-to-staff', 'ukrainian', 'Invoice Payment Recorded (Sent to Staff) [ukrainian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1680, 'ticket', 'auto-close-ticket', 'ukrainian', 'Auto Close Ticket [ukrainian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1681, 'project', 'new-project-discussion-created-to-staff', 'ukrainian', 'New Project Discussion (Sent to Project Members) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1682, 'project', 'new-project-discussion-created-to-customer', 'ukrainian', 'New Project Discussion (Sent to Customer Contacts) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1683, 'project', 'new-project-file-uploaded-to-customer', 'ukrainian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1684, 'project', 'new-project-file-uploaded-to-staff', 'ukrainian', 'New Project File(s) Uploaded (Sent to Project Members) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1685, 'project', 'new-project-discussion-comment-to-customer', 'ukrainian', 'New Discussion Comment  (Sent to Customer Contacts) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1686, 'project', 'new-project-discussion-comment-to-staff', 'ukrainian', 'New Discussion Comment (Sent to Project Members) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1687, 'project', 'staff-added-as-project-member', 'ukrainian', 'Staff Added as Project Member [ukrainian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1688, 'estimate', 'estimate-expiry-reminder', 'ukrainian', 'Estimate Expiration Reminder [ukrainian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1689, 'proposals', 'proposal-expiry-reminder', 'ukrainian', 'Proposal Expiration Reminder [ukrainian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1690, 'staff', 'new-staff-created', 'ukrainian', 'New Staff Created (Welcome Email) [ukrainian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1691, 'client', 'contact-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1692, 'client', 'contact-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1693, 'client', 'contact-set-password', 'ukrainian', 'Set New Password [ukrainian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1694, 'staff', 'staff-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1695, 'staff', 'staff-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1696, 'project', 'assigned-to-project', 'ukrainian', 'New Project Created (Sent to Customer Contacts) [ukrainian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1697, 'tasks', 'task-added-attachment-to-contacts', 'ukrainian', 'New Attachment(s) on Task (Sent to Customer Contacts) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1698, 'tasks', 'task-commented-to-contacts', 'ukrainian', 'New Comment on Task (Sent to Customer Contacts) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1699, 'leads', 'new-lead-assigned', 'ukrainian', 'New Lead Assigned to Staff Member [ukrainian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1700, 'client', 'client-statement', 'ukrainian', 'Statement - Account Summary [ukrainian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1701, 'ticket', 'ticket-assigned-to-admin', 'ukrainian', 'New Ticket Assigned (Sent to Staff) [ukrainian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1702, 'client', 'new-client-registered-to-admin', 'ukrainian', 'New Customer Registration (Sent to admins) [ukrainian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1703, 'leads', 'new-web-to-lead-form-submitted', 'ukrainian', 'Web to lead form submitted - Sent to lead [ukrainian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1704, 'staff', 'two-factor-authentication', 'ukrainian', 'Two Factor Authentication [ukrainian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1705, 'project', 'project-finished-to-customer', 'ukrainian', 'Project Marked as Finished (Sent to Customer Contacts) [ukrainian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1706, 'credit_note', 'credit-note-send-to-client', 'ukrainian', 'Send Credit Note To Email [ukrainian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1707, 'tasks', 'task-status-change-to-staff', 'ukrainian', 'Task Status Changed (Sent to Staff) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1708, 'tasks', 'task-status-change-to-contacts', 'ukrainian', 'Task Status Changed (Sent to Customer Contacts) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1709, 'staff', 'reminder-email-staff', 'ukrainian', 'Staff Reminder Email [ukrainian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1710, 'contract', 'contract-comment-to-client', 'ukrainian', 'New Comment  (Sent to Customer Contacts) [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1711, 'contract', 'contract-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1712, 'subscriptions', 'send-subscription', 'ukrainian', 'Send Subscription to Customer [ukrainian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1713, 'subscriptions', 'subscription-payment-failed', 'ukrainian', 'Subscription Payment Failed [ukrainian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1714, 'subscriptions', 'subscription-canceled', 'ukrainian', 'Subscription Canceled (Sent to customer primary contact) [ukrainian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1715, 'subscriptions', 'subscription-payment-succeeded', 'ukrainian', 'Subscription Payment Succeeded (Sent to customer primary contact) [ukrainian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1716, 'contract', 'contract-expiration-to-staff', 'ukrainian', 'Contract Expiration Reminder (Sent to Staff) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1717, 'gdpr', 'gdpr-removal-request', 'ukrainian', 'Removal Request From Contact (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1718, 'gdpr', 'gdpr-removal-request-lead', 'ukrainian', 'Removal Request From Lead (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1719, 'client', 'client-registration-confirmed', 'ukrainian', 'Customer Registration Confirmed [ukrainian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1720, 'contract', 'contract-signed-to-staff', 'ukrainian', 'Contract Signed (Sent to Staff) [ukrainian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1721, 'subscriptions', 'customer-subscribed-to-staff', 'ukrainian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [ukrainian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1722, 'client', 'contact-verification-email', 'ukrainian', 'Email Verification (Sent to Contact After Registration) [ukrainian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1723, 'client', 'new-customer-profile-file-uploaded-to-staff', 'ukrainian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [ukrainian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1724, 'staff', 'event-notification-to-staff', 'ukrainian', 'Event Notification (Calendar) [ukrainian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1725, 'subscriptions', 'subscription-payment-requires-action', 'ukrainian', 'Credit Card Authorization Required - SCA [ukrainian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1726, 'client', 'new-client-created', 'vietnamese', 'New Contact Added/Registered (Welcome Email) [vietnamese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1727, 'invoice', 'invoice-send-to-client', 'vietnamese', 'Send Invoice to Customer [vietnamese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1728, 'ticket', 'new-ticket-opened-admin', 'vietnamese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1729, 'ticket', 'ticket-reply', 'vietnamese', 'Ticket Reply (Sent to Customer) [vietnamese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1730, 'ticket', 'ticket-autoresponse', 'vietnamese', 'New Ticket Opened - Autoresponse [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1731, 'invoice', 'invoice-payment-recorded', 'vietnamese', 'Invoice Payment Recorded (Sent to Customer) [vietnamese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1732, 'invoice', 'invoice-overdue-notice', 'vietnamese', 'Invoice Overdue Notice [vietnamese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1733, 'invoice', 'invoice-already-send', 'vietnamese', 'Invoice Already Sent to Customer [vietnamese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1734, 'ticket', 'new-ticket-created-staff', 'vietnamese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [vietnamese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1735, 'estimate', 'estimate-send-to-client', 'vietnamese', 'Send Estimate to Customer [vietnamese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1736, 'ticket', 'ticket-reply-to-admin', 'vietnamese', 'Ticket Reply (Sent to Staff) [vietnamese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1737, 'estimate', 'estimate-already-send', 'vietnamese', 'Estimate Already Sent to Customer [vietnamese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1738, 'contract', 'contract-expiration', 'vietnamese', 'Contract Expiration Reminder (Sent to Customer Contacts) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1739, 'tasks', 'task-assigned', 'vietnamese', 'New Task Assigned (Sent to Staff) [vietnamese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1740, 'tasks', 'task-added-as-follower', 'vietnamese', 'Staff Member Added as Follower on Task (Sent to Staff) [vietnamese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1741, 'tasks', 'task-commented', 'vietnamese', 'New Comment on Task (Sent to Staff) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1742, 'tasks', 'task-added-attachment', 'vietnamese', 'New Attachment(s) on Task (Sent to Staff) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1743, 'estimate', 'estimate-declined-to-staff', 'vietnamese', 'Estimate Declined (Sent to Staff) [vietnamese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1744, 'estimate', 'estimate-accepted-to-staff', 'vietnamese', 'Estimate Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1745, 'proposals', 'proposal-client-accepted', 'vietnamese', 'Customer Action - Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1746, 'proposals', 'proposal-send-to-customer', 'vietnamese', 'Send Proposal to Customer [vietnamese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1747, 'proposals', 'proposal-client-declined', 'vietnamese', 'Customer Action - Declined (Sent to Staff) [vietnamese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1748, 'proposals', 'proposal-client-thank-you', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1749, 'proposals', 'proposal-comment-to-client', 'vietnamese', 'New Comment  (Sent to Customer/Lead) [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1750, 'proposals', 'proposal-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1751, 'estimate', 'estimate-thank-you-to-customer', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1752, 'tasks', 'task-deadline-notification', 'vietnamese', 'Task Deadline Reminder - Sent to Assigned Members [vietnamese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1753, 'contract', 'send-contract', 'vietnamese', 'Send Contract to Customer [vietnamese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1754, 'invoice', 'invoice-payment-recorded-to-staff', 'vietnamese', 'Invoice Payment Recorded (Sent to Staff) [vietnamese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1755, 'ticket', 'auto-close-ticket', 'vietnamese', 'Auto Close Ticket [vietnamese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1756, 'project', 'new-project-discussion-created-to-staff', 'vietnamese', 'New Project Discussion (Sent to Project Members) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1757, 'project', 'new-project-discussion-created-to-customer', 'vietnamese', 'New Project Discussion (Sent to Customer Contacts) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1758, 'project', 'new-project-file-uploaded-to-customer', 'vietnamese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1759, 'project', 'new-project-file-uploaded-to-staff', 'vietnamese', 'New Project File(s) Uploaded (Sent to Project Members) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1760, 'project', 'new-project-discussion-comment-to-customer', 'vietnamese', 'New Discussion Comment  (Sent to Customer Contacts) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1761, 'project', 'new-project-discussion-comment-to-staff', 'vietnamese', 'New Discussion Comment (Sent to Project Members) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1762, 'project', 'staff-added-as-project-member', 'vietnamese', 'Staff Added as Project Member [vietnamese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1763, 'estimate', 'estimate-expiry-reminder', 'vietnamese', 'Estimate Expiration Reminder [vietnamese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1764, 'proposals', 'proposal-expiry-reminder', 'vietnamese', 'Proposal Expiration Reminder [vietnamese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1765, 'staff', 'new-staff-created', 'vietnamese', 'New Staff Created (Welcome Email) [vietnamese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1766, 'client', 'contact-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1767, 'client', 'contact-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1768, 'client', 'contact-set-password', 'vietnamese', 'Set New Password [vietnamese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1769, 'staff', 'staff-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1770, 'staff', 'staff-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1771, 'project', 'assigned-to-project', 'vietnamese', 'New Project Created (Sent to Customer Contacts) [vietnamese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1772, 'tasks', 'task-added-attachment-to-contacts', 'vietnamese', 'New Attachment(s) on Task (Sent to Customer Contacts) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1773, 'tasks', 'task-commented-to-contacts', 'vietnamese', 'New Comment on Task (Sent to Customer Contacts) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1774, 'leads', 'new-lead-assigned', 'vietnamese', 'New Lead Assigned to Staff Member [vietnamese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1775, 'client', 'client-statement', 'vietnamese', 'Statement - Account Summary [vietnamese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1776, 'ticket', 'ticket-assigned-to-admin', 'vietnamese', 'New Ticket Assigned (Sent to Staff) [vietnamese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1777, 'client', 'new-client-registered-to-admin', 'vietnamese', 'New Customer Registration (Sent to admins) [vietnamese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1778, 'leads', 'new-web-to-lead-form-submitted', 'vietnamese', 'Web to lead form submitted - Sent to lead [vietnamese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
(1779, 'staff', 'two-factor-authentication', 'vietnamese', 'Two Factor Authentication [vietnamese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1780, 'project', 'project-finished-to-customer', 'vietnamese', 'Project Marked as Finished (Sent to Customer Contacts) [vietnamese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1781, 'credit_note', 'credit-note-send-to-client', 'vietnamese', 'Send Credit Note To Email [vietnamese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1782, 'tasks', 'task-status-change-to-staff', 'vietnamese', 'Task Status Changed (Sent to Staff) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1783, 'tasks', 'task-status-change-to-contacts', 'vietnamese', 'Task Status Changed (Sent to Customer Contacts) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1784, 'staff', 'reminder-email-staff', 'vietnamese', 'Staff Reminder Email [vietnamese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1785, 'contract', 'contract-comment-to-client', 'vietnamese', 'New Comment  (Sent to Customer Contacts) [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1786, 'contract', 'contract-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1787, 'subscriptions', 'send-subscription', 'vietnamese', 'Send Subscription to Customer [vietnamese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1788, 'subscriptions', 'subscription-payment-failed', 'vietnamese', 'Subscription Payment Failed [vietnamese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1789, 'subscriptions', 'subscription-canceled', 'vietnamese', 'Subscription Canceled (Sent to customer primary contact) [vietnamese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1790, 'subscriptions', 'subscription-payment-succeeded', 'vietnamese', 'Subscription Payment Succeeded (Sent to customer primary contact) [vietnamese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1791, 'contract', 'contract-expiration-to-staff', 'vietnamese', 'Contract Expiration Reminder (Sent to Staff) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1792, 'gdpr', 'gdpr-removal-request', 'vietnamese', 'Removal Request From Contact (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1793, 'gdpr', 'gdpr-removal-request-lead', 'vietnamese', 'Removal Request From Lead (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1794, 'client', 'client-registration-confirmed', 'vietnamese', 'Customer Registration Confirmed [vietnamese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1795, 'contract', 'contract-signed-to-staff', 'vietnamese', 'Contract Signed (Sent to Staff) [vietnamese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1796, 'subscriptions', 'customer-subscribed-to-staff', 'vietnamese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [vietnamese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1797, 'client', 'contact-verification-email', 'vietnamese', 'Email Verification (Sent to Contact After Registration) [vietnamese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1798, 'client', 'new-customer-profile-file-uploaded-to-staff', 'vietnamese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [vietnamese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1799, 'staff', 'event-notification-to-staff', 'vietnamese', 'Event Notification (Calendar) [vietnamese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
(1800, 'subscriptions', 'subscription-payment-requires-action', 'vietnamese', 'Credit Card Authorization Required - SCA [vietnamese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
(1801, 'purchase', 'purchase-created', 'english', 'New Purchase Created(Sent to Selected Staffs)', 'New Purchase Created', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New Purchase has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Phase:</strong> {purchase_phase}</span><br /><span style=\"font-size: 12pt;\"><strong>Approval:</strong> {approval}<br /><strong>Customer:</strong> {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the purchase order on the following link: <a href=\"{ticket_public_url}\">#{purchase_link}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 136px; top: 142px;\">\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1802, 'purchase', 'purchase-created', 'bulgarian', 'New Purchase Created(Sent to Selected Staffs) [bulgarian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1803, 'purchase', 'purchase-created', 'catalan', 'New Purchase Created(Sent to Selected Staffs) [catalan]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1804, 'purchase', 'purchase-created', 'chinese', 'New Purchase Created(Sent to Selected Staffs) [chinese]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1805, 'purchase', 'purchase-created', 'czech', 'New Purchase Created(Sent to Selected Staffs) [czech]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1806, 'purchase', 'purchase-created', 'dutch', 'New Purchase Created(Sent to Selected Staffs) [dutch]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1807, 'purchase', 'purchase-created', 'french', 'New Purchase Created(Sent to Selected Staffs) [french]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1808, 'purchase', 'purchase-created', 'german', 'New Purchase Created(Sent to Selected Staffs) [german]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1809, 'purchase', 'purchase-created', 'greek', 'New Purchase Created(Sent to Selected Staffs) [greek]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1810, 'purchase', 'purchase-created', 'indonesia', 'New Purchase Created(Sent to Selected Staffs) [indonesia]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1811, 'purchase', 'purchase-created', 'italian', 'New Purchase Created(Sent to Selected Staffs) [italian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1812, 'purchase', 'purchase-created', 'japanese', 'New Purchase Created(Sent to Selected Staffs) [japanese]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1813, 'purchase', 'purchase-created', 'persian', 'New Purchase Created(Sent to Selected Staffs) [persian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1814, 'purchase', 'purchase-created', 'polish', 'New Purchase Created(Sent to Selected Staffs) [polish]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1815, 'purchase', 'purchase-created', 'portuguese', 'New Purchase Created(Sent to Selected Staffs) [portuguese]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1816, 'purchase', 'purchase-created', 'portuguese_br', 'New Purchase Created(Sent to Selected Staffs) [portuguese_br]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1817, 'purchase', 'purchase-created', 'romanian', 'New Purchase Created(Sent to Selected Staffs) [romanian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1818, 'purchase', 'purchase-created', 'russian', 'New Purchase Created(Sent to Selected Staffs) [russian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1819, 'purchase', 'purchase-created', 'slovak', 'New Purchase Created(Sent to Selected Staffs) [slovak]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1820, 'purchase', 'purchase-created', 'spanish', 'New Purchase Created(Sent to Selected Staffs) [spanish]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1821, 'purchase', 'purchase-created', 'swedish', 'New Purchase Created(Sent to Selected Staffs) [swedish]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1822, 'purchase', 'purchase-created', 'turkish', 'New Purchase Created(Sent to Selected Staffs) [turkish]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1823, 'purchase', 'purchase-created', 'ukrainian', 'New Purchase Created(Sent to Selected Staffs) [ukrainian]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1824, 'purchase', 'purchase-created', 'vietnamese', 'New Purchase Created(Sent to Selected Staffs) [vietnamese]', 'New Purchase Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1825, 'purchase', 'pending_purchase_request-created', 'english', 'New Pending Purchase Request Created(Send to Selected Staffs)', 'New Pending Purchase Request Created', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New Pending Purchase Request has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Phase:</strong> {purchase_phase}</span><span style=\"font-size: 12pt;\"><br /><strong>Customer:</strong> {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the purchase order on the following link: <a href=\"{ticket_public_url}\">#{purchase_link}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -27px; top: 75px;\">\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1826, 'purchase', 'pending_purchase_request-created', 'bulgarian', 'New Pending Purchase Request Created [bulgarian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1827, 'purchase', 'pending_purchase_request-created', 'catalan', 'New Pending Purchase Request Created [catalan]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1828, 'purchase', 'pending_purchase_request-created', 'chinese', 'New Pending Purchase Request Created [chinese]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1829, 'purchase', 'pending_purchase_request-created', 'czech', 'New Pending Purchase Request Created [czech]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1830, 'purchase', 'pending_purchase_request-created', 'dutch', 'New Pending Purchase Request Created [dutch]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1831, 'purchase', 'pending_purchase_request-created', 'french', 'New Pending Purchase Request Created [french]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1832, 'purchase', 'pending_purchase_request-created', 'german', 'New Pending Purchase Request Created [german]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1833, 'purchase', 'pending_purchase_request-created', 'greek', 'New Pending Purchase Request Created [greek]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1834, 'purchase', 'pending_purchase_request-created', 'indonesia', 'New Pending Purchase Request Created [indonesia]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1835, 'purchase', 'pending_purchase_request-created', 'italian', 'New Pending Purchase Request Created [italian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1836, 'purchase', 'pending_purchase_request-created', 'japanese', 'New Pending Purchase Request Created [japanese]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1837, 'purchase', 'pending_purchase_request-created', 'persian', 'New Pending Purchase Request Created [persian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1838, 'purchase', 'pending_purchase_request-created', 'polish', 'New Pending Purchase Request Created [polish]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1839, 'purchase', 'pending_purchase_request-created', 'portuguese', 'New Pending Purchase Request Created [portuguese]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1840, 'purchase', 'pending_purchase_request-created', 'portuguese_br', 'New Pending Purchase Request Created [portuguese_br]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1841, 'purchase', 'pending_purchase_request-created', 'romanian', 'New Pending Purchase Request Created [romanian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1842, 'purchase', 'pending_purchase_request-created', 'russian', 'New Pending Purchase Request Created [russian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1843, 'purchase', 'pending_purchase_request-created', 'slovak', 'New Pending Purchase Request Created [slovak]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1844, 'purchase', 'pending_purchase_request-created', 'spanish', 'New Pending Purchase Request Created [spanish]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1845, 'purchase', 'pending_purchase_request-created', 'swedish', 'New Pending Purchase Request Created [swedish]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1846, 'purchase', 'pending_purchase_request-created', 'turkish', 'New Pending Purchase Request Created [turkish]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1847, 'purchase', 'pending_purchase_request-created', 'ukrainian', 'New Pending Purchase Request Created [ukrainian]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1848, 'purchase', 'pending_purchase_request-created', 'vietnamese', 'New Pending Purchase Request Created [vietnamese]', 'New Pending Purchase Request Created', '', '{companyname} | CRM', '', 0, 1, 0),
(1849, 'sale-order', 'sale-order-opened', 'english', 'New Sale Order Opened(Sent to Selected Staffs)', 'New Sale Order Opened', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New Sale Order <a href=\"{ticket_public_url}\">#{so_num}</a><a href=\"{ticket_public_url}\"></a> has been opened.</span><br /><span style=\"font-size: 12pt;\"><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 222px; top: 66px;\">\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1850, 'sale-order', 'sale-order-opened', 'bulgarian', 'New Sale Order Opened(Sent to Selected Staffs) [bulgarian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1851, 'sale-order', 'sale-order-opened', 'catalan', 'New Sale Order Opened(Sent to Selected Staffs) [catalan]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1852, 'sale-order', 'sale-order-opened', 'chinese', 'New Sale Order Opened(Sent to Selected Staffs) [chinese]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1853, 'sale-order', 'sale-order-opened', 'czech', 'New Sale Order Opened(Sent to Selected Staffs) [czech]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1854, 'sale-order', 'sale-order-opened', 'dutch', 'New Sale Order Opened(Sent to Selected Staffs) [dutch]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1855, 'sale-order', 'sale-order-opened', 'french', 'New Sale Order Opened(Sent to Selected Staffs) [french]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1856, 'sale-order', 'sale-order-opened', 'german', 'New Sale Order Opened(Sent to Selected Staffs) [german]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1857, 'sale-order', 'sale-order-opened', 'greek', 'New Sale Order Opened(Sent to Selected Staffs) [greek]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1858, 'sale-order', 'sale-order-opened', 'indonesia', 'New Sale Order Opened(Sent to Selected Staffs) [indonesia]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1859, 'sale-order', 'sale-order-opened', 'italian', 'New Sale Order Opened(Sent to Selected Staffs) [italian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1860, 'sale-order', 'sale-order-opened', 'japanese', 'New Sale Order Opened(Sent to Selected Staffs) [japanese]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1861, 'sale-order', 'sale-order-opened', 'persian', 'New Sale Order Opened(Sent to Selected Staffs) [persian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1862, 'sale-order', 'sale-order-opened', 'polish', 'New Sale Order Opened(Sent to Selected Staffs) [polish]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1863, 'sale-order', 'sale-order-opened', 'portuguese', 'New Sale Order Opened(Sent to Selected Staffs) [portuguese]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1864, 'sale-order', 'sale-order-opened', 'portuguese_br', 'New Sale Order Opened(Sent to Selected Staffs) [portuguese_br]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1865, 'sale-order', 'sale-order-opened', 'romanian', 'New Sale Order Opened(Sent to Selected Staffs) [romanian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1866, 'sale-order', 'sale-order-opened', 'russian', 'New Sale Order Opened(Sent to Selected Staffs) [russian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1867, 'sale-order', 'sale-order-opened', 'slovak', 'New Sale Order Opened(Sent to Selected Staffs) [slovak]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1868, 'sale-order', 'sale-order-opened', 'spanish', 'New Sale Order Opened(Sent to Selected Staffs) [spanish]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1869, 'sale-order', 'sale-order-opened', 'swedish', 'New Sale Order Opened(Sent to Selected Staffs) [swedish]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1870, 'sale-order', 'sale-order-opened', 'turkish', 'New Sale Order Opened(Sent to Selected Staffs) [turkish]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1871, 'sale-order', 'sale-order-opened', 'ukrainian', 'New Sale Order Opened(Sent to Selected Staffs) [ukrainian]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1872, 'sale-order', 'sale-order-opened', 'vietnamese', 'New Sale Order Opened(Sent to Selected Staffs) [vietnamese]', 'New Sale Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1873, 'sale-order', 'sale-order-updated', 'english', 'Sale Order Updated(Sent to Selected Staff)', 'Sale Order Updated', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Sale Order <a href=\"{ticket_public_url}\">#{so_num}</a> has been updated.</span><br /><span style=\"font-size: 12pt;\"><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1874, 'sale-order', 'sale-order-updated', 'bulgarian', 'Sale Order Updated(Sent to Selected Staff) [bulgarian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1875, 'sale-order', 'sale-order-updated', 'catalan', 'Sale Order Updated(Sent to Selected Staff) [catalan]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1876, 'sale-order', 'sale-order-updated', 'chinese', 'Sale Order Updated(Sent to Selected Staff) [chinese]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1877, 'sale-order', 'sale-order-updated', 'czech', 'Sale Order Updated(Sent to Selected Staff) [czech]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1878, 'sale-order', 'sale-order-updated', 'dutch', 'Sale Order Updated(Sent to Selected Staff) [dutch]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1879, 'sale-order', 'sale-order-updated', 'french', 'Sale Order Updated(Sent to Selected Staff) [french]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1880, 'sale-order', 'sale-order-updated', 'german', 'Sale Order Updated(Sent to Selected Staff) [german]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1881, 'sale-order', 'sale-order-updated', 'greek', 'Sale Order Updated(Sent to Selected Staff) [greek]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1882, 'sale-order', 'sale-order-updated', 'indonesia', 'Sale Order Updated(Sent to Selected Staff) [indonesia]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1883, 'sale-order', 'sale-order-updated', 'italian', 'Sale Order Updated(Sent to Selected Staff) [italian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1884, 'sale-order', 'sale-order-updated', 'japanese', 'Sale Order Updated(Sent to Selected Staff) [japanese]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1885, 'sale-order', 'sale-order-updated', 'persian', 'Sale Order Updated(Sent to Selected Staff) [persian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1886, 'sale-order', 'sale-order-updated', 'polish', 'Sale Order Updated(Sent to Selected Staff) [polish]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1887, 'sale-order', 'sale-order-updated', 'portuguese', 'Sale Order Updated(Sent to Selected Staff) [portuguese]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1888, 'sale-order', 'sale-order-updated', 'portuguese_br', 'Sale Order Updated(Sent to Selected Staff) [portuguese_br]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1889, 'sale-order', 'sale-order-updated', 'romanian', 'Sale Order Updated(Sent to Selected Staff) [romanian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1890, 'sale-order', 'sale-order-updated', 'russian', 'Sale Order Updated(Sent to Selected Staff) [russian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1891, 'sale-order', 'sale-order-updated', 'slovak', 'Sale Order Updated(Sent to Selected Staff) [slovak]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1892, 'sale-order', 'sale-order-updated', 'spanish', 'Sale Order Updated(Sent to Selected Staff) [spanish]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1893, 'sale-order', 'sale-order-updated', 'swedish', 'Sale Order Updated(Sent to Selected Staff) [swedish]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1894, 'sale-order', 'sale-order-updated', 'turkish', 'Sale Order Updated(Sent to Selected Staff) [turkish]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1895, 'sale-order', 'sale-order-updated', 'ukrainian', 'Sale Order Updated(Sent to Selected Staff) [ukrainian]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1896, 'sale-order', 'sale-order-updated', 'vietnamese', 'Sale Order Updated(Sent to Selected Staff) [vietnamese]', 'Sale Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1897, 'work-order', 'work-order-opened', 'english', 'New Work Order Opened(Send to Selected Staffs)', 'New Work Order Opened', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New Work Order <a href=\"{ticket_public_url}\">#{wo_num}</a><a href=\"{ticket_public_url}\"></a> has been opened.</span><br /><span style=\"font-size: 12pt;\"><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1898, 'work-order', 'work-order-opened', 'bulgarian', 'New Work Order Opened(Send to Selected Staffs) [bulgarian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1899, 'work-order', 'work-order-opened', 'catalan', 'New Work Order Opened(Send to Selected Staffs) [catalan]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1900, 'work-order', 'work-order-opened', 'chinese', 'New Work Order Opened(Send to Selected Staffs) [chinese]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1901, 'work-order', 'work-order-opened', 'czech', 'New Work Order Opened(Send to Selected Staffs) [czech]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1902, 'work-order', 'work-order-opened', 'dutch', 'New Work Order Opened(Send to Selected Staffs) [dutch]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1903, 'work-order', 'work-order-opened', 'french', 'New Work Order Opened(Send to Selected Staffs) [french]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1904, 'work-order', 'work-order-opened', 'german', 'New Work Order Opened(Send to Selected Staffs) [german]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1905, 'work-order', 'work-order-opened', 'greek', 'New Work Order Opened(Send to Selected Staffs) [greek]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1906, 'work-order', 'work-order-opened', 'indonesia', 'New Work Order Opened(Send to Selected Staffs) [indonesia]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1907, 'work-order', 'work-order-opened', 'italian', 'New Work Order Opened(Send to Selected Staffs) [italian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1908, 'work-order', 'work-order-opened', 'japanese', 'New Work Order Opened(Send to Selected Staffs) [japanese]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1909, 'work-order', 'work-order-opened', 'persian', 'New Work Order Opened(Send to Selected Staffs) [persian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1910, 'work-order', 'work-order-opened', 'polish', 'New Work Order Opened(Send to Selected Staffs) [polish]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1911, 'work-order', 'work-order-opened', 'portuguese', 'New Work Order Opened(Send to Selected Staffs) [portuguese]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1912, 'work-order', 'work-order-opened', 'portuguese_br', 'New Work Order Opened(Send to Selected Staffs) [portuguese_br]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1913, 'work-order', 'work-order-opened', 'romanian', 'New Work Order Opened(Send to Selected Staffs) [romanian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1914, 'work-order', 'work-order-opened', 'russian', 'New Work Order Opened(Send to Selected Staffs) [russian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1915, 'work-order', 'work-order-opened', 'slovak', 'New Work Order Opened(Send to Selected Staffs) [slovak]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1916, 'work-order', 'work-order-opened', 'spanish', 'New Work Order Opened(Send to Selected Staffs) [spanish]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1917, 'work-order', 'work-order-opened', 'swedish', 'New Work Order Opened(Send to Selected Staffs) [swedish]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1918, 'work-order', 'work-order-opened', 'turkish', 'New Work Order Opened(Send to Selected Staffs) [turkish]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1919, 'work-order', 'work-order-opened', 'ukrainian', 'New Work Order Opened(Send to Selected Staffs) [ukrainian]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1920, 'work-order', 'work-order-opened', 'vietnamese', 'New Work Order Opened(Send to Selected Staffs) [vietnamese]', 'New Work Order Opened', '', '{companyname} | CRM', '', 0, 1, 0),
(1950, 'stock-warning', 'warehouse-overloaded', 'english', 'Warehouse Overloaded(Send to Selected Staffs)', 'Warehouse Out of Stock', 'Hi {staff_firstname} {staff_lastname} <br /><br />\"{stock}\" product has reached minimum stock limit at warehouse of \"{warehouse}\"<br /><br />Kind Regards, {email_signature}\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', 'OBJE | ERP', '', 0, 1, 0),
(1951, 'stock-warning', 'warehouse-overloaded', 'bulgarian', 'Warehouse Overloaded(Send to Selected Staffs) [bulgarian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1952, 'stock-warning', 'warehouse-overloaded', 'catalan', 'Warehouse Overloaded(Send to Selected Staffs) [catalan]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1953, 'stock-warning', 'warehouse-overloaded', 'chinese', 'Warehouse Overloaded(Send to Selected Staffs) [chinese]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1954, 'stock-warning', 'warehouse-overloaded', 'czech', 'Warehouse Overloaded(Send to Selected Staffs) [czech]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1955, 'stock-warning', 'warehouse-overloaded', 'dutch', 'Warehouse Overloaded(Send to Selected Staffs) [dutch]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1956, 'stock-warning', 'warehouse-overloaded', 'french', 'Warehouse Overloaded(Send to Selected Staffs) [french]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1957, 'stock-warning', 'warehouse-overloaded', 'german', 'Warehouse Overloaded(Send to Selected Staffs) [german]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1958, 'stock-warning', 'warehouse-overloaded', 'greek', 'Warehouse Overloaded(Send to Selected Staffs) [greek]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1959, 'stock-warning', 'warehouse-overloaded', 'indonesia', 'Warehouse Overloaded(Send to Selected Staffs) [indonesia]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1960, 'stock-warning', 'warehouse-overloaded', 'italian', 'Warehouse Overloaded(Send to Selected Staffs) [italian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1961, 'stock-warning', 'warehouse-overloaded', 'japanese', 'Warehouse Overloaded(Send to Selected Staffs) [japanese]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1962, 'stock-warning', 'warehouse-overloaded', 'persian', 'Warehouse Overloaded(Send to Selected Staffs) [persian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1963, 'stock-warning', 'warehouse-overloaded', 'polish', 'Warehouse Overloaded(Send to Selected Staffs) [polish]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1964, 'stock-warning', 'warehouse-overloaded', 'portuguese', 'Warehouse Overloaded(Send to Selected Staffs) [portuguese]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1965, 'stock-warning', 'warehouse-overloaded', 'portuguese_br', 'Warehouse Overloaded(Send to Selected Staffs) [portuguese_br]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1966, 'stock-warning', 'warehouse-overloaded', 'romanian', 'Warehouse Overloaded(Send to Selected Staffs) [romanian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1967, 'stock-warning', 'warehouse-overloaded', 'russian', 'Warehouse Overloaded(Send to Selected Staffs) [russian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1968, 'stock-warning', 'warehouse-overloaded', 'slovak', 'Warehouse Overloaded(Send to Selected Staffs) [slovak]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1969, 'stock-warning', 'warehouse-overloaded', 'spanish', 'Warehouse Overloaded(Send to Selected Staffs) [spanish]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1970, 'stock-warning', 'warehouse-overloaded', 'swedish', 'Warehouse Overloaded(Send to Selected Staffs) [swedish]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1971, 'stock-warning', 'warehouse-overloaded', 'turkish', 'Warehouse Overloaded(Send to Selected Staffs) [turkish]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1972, 'stock-warning', 'warehouse-overloaded', 'ukrainian', 'Warehouse Overloaded(Send to Selected Staffs) [ukrainian]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1973, 'stock-warning', 'warehouse-overloaded', 'vietnamese', 'Warehouse Overloaded(Send to Selected Staffs) [vietnamese]', 'Warehouse Overloaded', '', 'OBJE | ERP', '', 0, 1, 0),
(1975, 'work-order', 'work-order-updated', 'english', 'Work Order Updated(Send to Selected Staffs)', 'Work Order Updated', 'Hi {staff_firstname} {staff_lastname} <br /><br />Work Order <span style=\"font-size: 12pt;\"><a href=\"{ticket_public_url}\">#{wo_num}</a></span> has been updated. <br /><br />Kind Regards, {email_signature}\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1976, 'work-order', 'work-order-updated', 'turkish', 'Work Order Updated(Send to Selected Staffs) [turkish]', 'Work Order Updated', '', '{companyname} | CRM', '', 0, 1, 0),
(1977, 'proposals', 'quotation-approval-notification', 'english', 'Quotation Approval Notification (Send to Selected Staffs)', 'Quotation Approval Notification', '<span style=\"font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Quotation <a href=\"{ticket_public_url}\">#{approved_quo_number}</a><a href=\"{ticket_public_url}\"></a> has been approved.</span><br /><span style=\"font-size: 12pt;\"><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>\r\n<div>\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 108px; top: 68.9972px;\">\r\n<div class=\"gtx-trans-icon\"></div>\r\n</div>', '{companyname} | CRM', '', 0, 1, 0),
(1978, 'proposals', 'quotation-approval-notification', 'bulgarian', 'Quotation Approved(Send to Selected Staffs) [bulgarian]', 'Quotation Approval Notification', '', '{companyname} | CRM', '', 0, 1, 0),
(1979, 'proposals', 'quotation-approval-notification', 'catalan', 'Quotation Approved(Send to Selected Staffs) [catalan]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1980, 'proposals', 'quotation-approval-notification', 'chinese', 'Quotation Approved(Send to Selected Staffs) [chinese]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1981, 'proposals', 'quotation-approval-notification', 'czech', 'Quotation Approved(Send to Selected Staffs) [czech]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1982, 'proposals', 'quotation-approval-notification', 'dutch', 'Quotation Approved(Send to Selected Staffs) [dutch]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1983, 'proposals', 'quotation-approval-notification', 'french', 'Quotation Approved(Send to Selected Staffs) [french]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1984, 'proposals', 'quotation-approval-notification', 'german', 'Quotation Approved(Send to Selected Staffs) [german]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1985, 'proposals', 'quotation-approval-notification', 'greek', 'Quotation Approved(Send to Selected Staffs) [greek]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1986, 'proposals', 'quotation-approval-notification', 'indonesia', 'Quotation Approved(Send to Selected Staffs) [indonesia]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1987, 'proposals', 'quotation-approval-notification', 'italian', 'Quotation Approved(Send to Selected Staffs) [italian]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1988, 'proposals', 'quotation-approval-notification', 'japanese', 'Quotation Approved(Send to Selected Staffs) [japanese]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1989, 'proposals', 'quotation-approval-notification', 'persian', 'Quotation Approved(Send to Selected Staffs) [persian]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1990, 'proposals', 'quotation-approval-notification', 'polish', 'Quotation Approved(Send to Selected Staffs) [polish]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1991, 'proposals', 'quotation-approval-notification', 'portuguese', 'Quotation Approved(Send to Selected Staffs) [portuguese]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1992, 'proposals', 'quotation-approval-notification', 'portuguese_br', 'Quotation Approved(Send to Selected Staffs) [portuguese_br]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1993, 'proposals', 'quotation-approval-notification', 'romanian', 'Quotation Approved(Send to Selected Staffs) [romanian]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1994, 'proposals', 'quotation-approval-notification', 'russian', 'Quotation Approved(Send to Selected Staffs) [russian]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1995, 'proposals', 'quotation-approval-notification', 'slovak', 'Quotation Approved(Send to Selected Staffs) [slovak]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1996, 'proposals', 'quotation-approval-notification', 'spanish', 'Quotation Approved(Send to Selected Staffs) [spanish]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1997, 'proposals', 'quotation-approval-notification', 'swedish', 'Quotation Approved(Send to Selected Staffs) [swedish]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(1998, 'proposals', 'quotation-approval-notification', 'turkish', 'Quotation Approval Notification (Send to Selected Staffs)', 'Quotation Approval Notification', '', '{companyname} | CRM', '', 0, 1, 0),
(1999, 'proposals', 'quotation-approval-notification', 'ukrainian', 'Quotation Approved(Send to Selected Staffs) [ukrainian]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0),
(2000, 'proposals', 'quotation-approval-notification', 'vietnamese', 'Quotation Approved(Send to Selected Staffs) [vietnamese]', 'Quotation Approved', '', '{companyname} | CRM', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblenergy_prices`
--

CREATE TABLE `tblenergy_prices` (
  `id` int(11) NOT NULL,
  `energy_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblenergy_prices`
--

INSERT INTO `tblenergy_prices` (`id`, `energy_price`) VALUES
(3, 0.39);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sale_phase_id` int(11) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `rel_quote_id` int(11) DEFAULT NULL,
  `shipping_type` varchar(255) DEFAULT NULL,
  `req_shipping_date` datetime DEFAULT NULL,
  `general_notes` varchar(255) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `sum_volume_m3` float DEFAULT NULL,
  `total_price` decimal(15,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimates`
--

INSERT INTO `tblestimates` (`id`, `sale_phase_id`, `clientid`, `rel_quote_id`, `shipping_type`, `req_shipping_date`, `general_notes`, `addedfrom`, `datecreated`, `updated_user`, `sent`, `datesend`, `deleted_customer_name`, `project_id`, `number`, `prefix`, `number_format`, `hash`, `date`, `expirydate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `status`, `clientnote`, `adminnote`, `discount_percent`, `discount_total`, `discount_type`, `invoiceid`, `invoiced_date`, `terms`, `reference_no`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_estimate`, `show_quantity_as`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `sum_volume_m3`, `total_price`, `active`) VALUES
(81, 2, 1, 104, 'aaaa', '2020-10-23 00:00:00', '', 1, '2020-10-22 05:30:06', 0, 0, NULL, NULL, 0, 104, 'SO-', 1, '41b2acbf4def0fc112fca6ad07bb0b4d', '0000-00-00', NULL, 1, 1000.00, 0.00, 1000.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 87, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.12, 1000.00, 1),
(82, 2, 1, 105, 'dfdf', '2020-10-23 00:00:00', '', 1, '2020-10-22 19:57:41', 0, 0, NULL, NULL, 0, 105, 'SO-', 1, '7430fbc76c622cebad3bdc4f7a10b992', '0000-00-00', NULL, 2, 396.00, 0.00, 396.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 88, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.144, 396.00, 1),
(83, 2, 1, 106, 'TRUCK', '2020-10-30 00:00:00', '', 1, '2020-10-25 13:25:07', 0, 0, NULL, NULL, 0, 106, 'SO-', 1, '5eca9464c20d71f0ab11bc6d229073e8', '0000-00-00', NULL, 2, 300.00, 0.00, 300.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 89, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 300.00, 1),
(84, 2, 1, 107, 'TRUCK', '2020-10-31 00:00:00', '', 1, '2020-10-25 13:31:08', 0, 0, NULL, NULL, 0, 107, 'SO-', 1, '8529050679f51faa68049b6047b4c159', '0000-00-00', NULL, 1, 300.00, 0.00, 300.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 90, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.8, 300.00, 1),
(85, 2, 1, 108, 'TRUCK', '2020-10-31 00:00:00', 'some notes here', 1, '2020-10-26 07:11:39', 0, 0, NULL, NULL, 0, 108, 'SO-', 1, '2a86d593a357c40a2e6d45e8faf233a1', '0000-00-00', NULL, 1, 600.00, 0.00, 600.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 91, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1.6, 600.00, 1),
(86, 2, 1, 109, 'dfadf', '2020-10-29 00:00:00', '', 1, '2020-10-28 07:31:44', 0, 0, NULL, NULL, 0, 109, 'SO-', 1, '8ba20bba4f18635b144b4ac36fcc3cf3', '0000-00-00', NULL, 3, 880.00, 0.00, 880.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 92, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.24, 880.00, 1),
(87, 2, 1, 110, 'TRUCK', '2020-10-31 00:00:00', '', 1, '2020-10-28 16:30:53', 0, 0, NULL, NULL, 0, 110, 'SO-', 1, '9c4730cfc9254fa6ac322dbd0bcf40ce', '0000-00-00', NULL, 1, 6400.00, 0.00, 6400.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 93, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2.4, 6400.00, 1),
(88, 2, 1, 111, 'tır', '2020-11-05 00:00:00', '', 1, '2020-10-31 09:12:40', 0, 0, NULL, NULL, 0, 111, 'SO-', 1, 'fde0c38531eb32dc4ae264a594274654', '0000-00-00', NULL, 3, 571300.00, 0.00, 571300.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 94, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 24, 571300.00, 1),
(89, 2, 1, 112, 'tır', '2020-11-10 00:00:00', '', 1, '2020-10-31 16:11:57', 0, 0, NULL, NULL, 0, 112, 'SO-', 1, 'f6127d360e0504ab22966c4a194c1697', '0000-00-00', NULL, 3, 28500.00, 0.00, 28500.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 95, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1.2, 28500.00, 1),
(90, 2, 1, 113, 'TRUCK', '2020-11-30 00:00:00', '', 1, '2020-11-17 11:26:44', 0, 0, NULL, NULL, 0, 113, 'SO-', 1, 'c7de2433db37e530479322e4514f5bd0', '0000-00-00', NULL, 1, 47400.00, 0.00, 47400.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 96, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4.8, 47400.00, 1),
(91, 2, 2, 114, 'TRUCK', '2020-11-30 00:00:00', '', 1, '2020-11-17 13:01:32', 0, 0, NULL, NULL, 0, 114, 'SO-', 1, '42fea19cbabcf1da7ef582981ddf0303', '0000-00-00', NULL, 1, 31000.00, 0.00, 31000.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 97, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1.2, 31000.00, 1),
(92, 2, 1, 115, 'TRUCK', '2020-11-30 00:00:00', '', 1, '2020-11-17 13:31:18', 0, 0, NULL, NULL, 0, 115, 'SO-', 1, '17680ac2f3ef8f09c553c0190e95ffa9', '0000-00-00', NULL, 3, 131000.00, 0.00, 131000.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 98, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3.9, 131000.00, 1),
(93, 2, 1, 118, 'TRUCK', '2020-11-20 00:00:00', 'some notes here', 1, '2020-11-19 16:32:58', 0, 0, NULL, NULL, 0, 118, 'SO-', 1, 'dd85321295bac5e1a26333687bba7bb9', '0000-00-00', NULL, 1, 5800.00, 0.00, 5800.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 99, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.24, 5800.00, 1),
(94, 2, 1, 119, 'TRUCK', '2020-11-28 00:00:00', 'some notes here', 1, '2020-11-21 10:20:58', 0, 0, NULL, NULL, 0, 119, 'SO-', 1, 'e8aba8f4b428c9ef1a05d9fac238241b', '0000-00-00', NULL, 1, 210.00, 0.00, 210.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 100, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, 210.00, 1),
(95, 2, 1, 120, 'ddd', '2020-11-26 00:00:00', '', 1, '2020-11-30 13:08:11', 0, 0, NULL, NULL, 0, 120, 'SO-', 1, 'f1d2af4a82c38611b2a314e4b7d4d752', '0000-00-00', NULL, 1, 88.00, 0.00, 88.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 101, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.33, 88.00, 1),
(96, 2, 1, 121, 'TRUCK', '2020-12-05 00:00:00', '', 1, '2020-11-30 23:13:52', 0, 0, NULL, NULL, 0, 121, 'SO-', 1, 'dcd90f77d29c849251969dff67508aa7', '0000-00-00', NULL, 3, 15000.00, 0.00, 15000.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 102, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0.15, 15000.00, 1),
(97, 2, 1, 122, 'TRUCK', '2020-12-22 00:00:00', '', 1, '2020-12-06 11:41:39', 0, 0, NULL, NULL, 0, 122, 'SO-', 1, 'f441cb17b1a5a0020c174e7d997312a2', '0000-00-00', NULL, 1, 1900.00, 0.00, 1900.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 103, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1900.00, 1),
(98, 2, 1, 123, 'TRUCK', '2020-12-17 00:00:00', '', 1, '2020-12-06 11:58:49', 0, 0, NULL, NULL, 0, 123, 'SO-', 1, '6c4a126df509b428e33992ecaf05ada6', '0000-00-00', NULL, 1, 3700.00, 0.00, 3700.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 104, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3700.00, 1),
(99, 2, 1, 124, 'TRUCK', '2021-01-28 00:00:00', '', 1, '2021-01-19 12:53:01', 0, 0, NULL, NULL, 0, 124, 'SO-', 1, 'a5a44b7f933588f07e83446a2cd068a2', '0000-00-00', NULL, 1, 19000.00, 0.00, 19000.00, 0.00, 3, NULL, NULL, 0.00, 0.00, '', 105, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1.2, 19000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `production_calculate` varchar(30) DEFAULT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `mould_id` int(11) DEFAULT NULL,
  `title` mediumtext,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL,
  `total_production_qty` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`eventid`, `recipe_id`, `production_calculate`, `machine_id`, `mould_id`, `title`, `description`, `userid`, `start`, `end`, `public`, `color`, `isstartnotified`, `reminder_before`, `reminder_before_type`, `total_production_qty`) VALUES
(74, 183, '1', 12, 23, 'wo-88-411', NULL, 1, '2020-10-20', '2020-10-24', 0, '#fb3b3b', 1, 0, NULL, 12.00),
(75, 212, '1', 15, 25, 'wo-92-293', NULL, 1, '2020-10-13', '2020-10-16', 0, '#84C529', 1, 0, NULL, 20.00),
(76, 221, '1', 15, 25, 'wo-93-293', NULL, 1, '2020-10-19', '2020-10-21', 0, '#28B8DA', 1, 0, NULL, 200.00),
(77, 220, '1', 14, 23, 'wo-93-411', NULL, 1, '2020-10-19', '2020-10-21', 0, '#28B8DA', 1, 0, NULL, 200.00),
(78, 229, '1', 15, 25, 'wo-94-293', NULL, 1, '2020-10-31', '2020-11-01', 0, '#28B8DA', 1, 0, NULL, 1000.00),
(79, 247, '1', 16, 23, 'wo-95-411', NULL, 1, '2020-10-31', '2020-11-01', 0, '#28B8DA', 1, 0, NULL, 1000.00),
(80, 248, '1', 15, 25, 'wo-95-293', NULL, 1, '2020-11-01', '2020-11-02', 0, '#28B8DA', 1, 0, NULL, 1000.00),
(81, 256, '1', 16, 25, 'wo-96-293', NULL, 1, '2020-11-24', '2020-11-26', 0, '#28B8DA', 1, 0, NULL, 150.00),
(82, 258, '1', 16, 23, 'wo-96-411', NULL, 1, '2020-11-26', '2020-11-28', 0, '#28B8DA', 1, 0, NULL, 150.00),
(83, 286, '1', 12, 22, 'wo-100-Test', NULL, 1, '2020-11-22', '2020-11-25', 0, '#28B8DA', 1, 0, NULL, 10.00),
(84, 288, '1', 12, 22, 'wo-101-Test', NULL, 1, '2020-11-06', '2020-11-08', 0, '#8e24aa', 1, 0, NULL, 22.00),
(85, 290, '1', 12, 22, 'wo-102-Test', NULL, 1, '2020-12-01', '2020-12-03', 0, '#28B8DA', 1, 0, NULL, 10.00),
(86, 294, '1', 14, 23, 'wo-103-411', NULL, 1, '2020-12-07', '2020-12-09', 0, '#28B8DA', 1, 0, NULL, 40.00),
(87, 297, '1', 16, 23, 'wo-104-411', NULL, 1, '2020-12-07', '2020-12-10', 0, '#28B8DA', 1, 0, NULL, 100.00),
(88, 301, '1', 14, 23, 'wo-105-411', NULL, 1, '2021-01-20', '2021-01-23', 0, '#28B8DA', 1, 0, NULL, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblevents_installation`
--

CREATE TABLE `tblevents_installation` (
  `eventid` int(11) NOT NULL,
  `wo_item_id` int(11) DEFAULT NULL,
  `title` mediumtext,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL,
  `rel_wo_id` int(11) DEFAULT NULL,
  `installation_calculate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblevents_installation`
--

INSERT INTO `tblevents_installation` (`eventid`, `wo_item_id`, `title`, `description`, `userid`, `start`, `end`, `public`, `color`, `isstartnotified`, `reminder_before`, `reminder_before_type`, `rel_wo_id`, `installation_calculate`) VALUES
(17, 124, 'wo-88-OW-201', NULL, 1, '2020-10-20', '2020-10-23', 0, '#fb3b3b', 0, 0, NULL, NULL, 1),
(18, 132, 'wo-95-MG-05', NULL, 1, '2020-10-31', '2020-11-01', 0, '#28B8DA', 0, 0, NULL, NULL, 1),
(19, 135, 'wo-97-MG-05', NULL, 1, '2020-11-18', '2020-11-20', 0, '#28B8DA', 0, 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

CREATE TABLE `tblexpenses_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `task_comment_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

CREATE TABLE `tblform_questions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

CREATE TABLE `tblform_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

CREATE TABLE `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

CREATE TABLE `tblform_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

CREATE TABLE `tblgdpr_requests` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinstallation`
--

CREATE TABLE `tblinstallation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `take_from` int(20) NOT NULL,
  `export_to` int(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinstallation`
--

INSERT INTO `tblinstallation` (`id`, `name`, `take_from`, `export_to`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 16, 14, 0, '2020-09-03 06:23:13', '2020-10-31 15:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblinstallation_time`
--

CREATE TABLE `tblinstallation_time` (
  `id` int(11) NOT NULL,
  `rel_product_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) NOT NULL,
  `product_recipe_id` int(25) NOT NULL,
  `consumed_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinstallation_time`
--

INSERT INTO `tblinstallation_time` (`id`, `rel_product_id`, `ingredient_id`, `product_recipe_id`, `consumed_time`) VALUES
(56, 114, 0, 0, '2'),
(57, 113, 0, 0, '2'),
(58, 115, 0, 0, '3'),
(59, 119, 0, 0, '0'),
(60, 120, 0, 0, '0'),
(61, 121, 0, 0, '0'),
(62, 118, 0, 0, '15'),
(63, 126, 0, 0, '0'),
(64, 127, 0, 0, '0'),
(65, 125, 0, 0, '15'),
(66, 133, 0, 0, '0'),
(67, 134, 0, 0, '0'),
(68, 135, 0, 0, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `rel_sale_id` int(11) DEFAULT NULL,
  `wo_phase_id` int(11) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `sum_volume_wo` decimal(15,10) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `wo_item_edited` int(11) DEFAULT '0',
  `plan_recipe_edited` int(11) DEFAULT '0',
  `transfered_plus` tinyint(1) DEFAULT '0',
  `transfered_minus` tinyint(1) DEFAULT '0',
  `rel_quote_id` int(11) DEFAULT NULL,
  `datesend` datetime DEFAULT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `updated_user` int(11) DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblinvoices`
--

INSERT INTO `tblinvoices` (`id`, `rel_sale_id`, `wo_phase_id`, `clientid`, `sum_volume_wo`, `addedfrom`, `datecreated`, `wo_item_edited`, `plan_recipe_edited`, `transfered_plus`, `transfered_minus`, `rel_quote_id`, `datesend`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `cycles`, `total_cycles`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`, `subscription_id`, `updated_user`, `sent`, `active`) VALUES
(87, 81, 2, 1, 0.1200000000, 1, '2020-10-22 06:10:57', 0, 1, 0, 0, 104, NULL, NULL, 87, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '4427eae4fdfb50413f12b969131b62ca', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0),
(88, 82, 2, 1, 0.1440000000, 1, '2020-10-22 19:58:16', 0, 1, 0, 0, 105, NULL, NULL, 88, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '7e02feed284179514b2ae022a3202bfa', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(89, 83, 2, 1, 0.0000000000, 1, '2020-10-25 13:25:28', 0, 1, 0, 0, 106, NULL, NULL, 89, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '3e482574064e94c8b2bfdb42e7ef8845', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(90, 84, 2, 1, 0.8000000000, 1, '2020-10-25 13:31:25', 0, 1, 0, 0, 107, NULL, NULL, 90, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'bb14ea9daab44ef7bdfcaa514ee63b2c', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(91, 85, 2, 1, 1.6000000000, 1, '2020-10-26 07:11:52', 0, 1, 0, 0, 108, NULL, NULL, 91, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '6800efa80dba69f4176c51ee92250d16', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(92, 86, 2, 1, 0.2400000000, 1, '2020-10-28 07:32:02', 0, 1, 0, 0, 109, NULL, NULL, 92, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'b8267035e8bf25bf1f2e70cdf856e5cc', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0),
(93, 87, 2, 1, 2.4000000000, 1, '2020-10-28 16:31:15', 0, 1, 0, 0, 110, NULL, NULL, 93, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'bd2e101ac53779febb9159ea6395e736', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 0),
(94, 88, 1, 1, 24.0000000000, 1, '2020-10-31 09:23:09', 0, 1, 0, 0, 111, NULL, NULL, 94, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'c744e88cbb5d6be6015ed4233750d6c5', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(95, 89, 4, 1, 1.2000000000, 1, '2020-10-31 16:12:30', 0, 1, 0, 0, 112, NULL, NULL, 95, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'e829b32c04b75856733e198afeb32326', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(96, 90, 2, 1, 4.8000000000, 1, '2020-11-17 11:27:08', 0, 1, 0, 0, 113, NULL, NULL, 96, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '5412142aeeb235d8426d216a8fafd966', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(97, 91, 2, 2, 1.2000000000, 1, '2020-11-17 13:02:11', 0, 1, 0, 0, 114, NULL, NULL, 97, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'bf5722e7e050f582f2722d5339ff57a8', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(98, 92, 2, 1, 3.9000000000, 1, '2020-11-17 13:32:02', 0, 1, 0, 0, 115, NULL, NULL, 98, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '3404c39faeeb52d2815b02aa97a709f2', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(99, 93, 2, 1, 0.2400000000, 1, '2020-11-19 16:33:20', 0, 1, 0, 0, 118, NULL, NULL, 99, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '4df1022b43d49571b406b6511731b482', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(100, 94, 2, 1, 0.1500000000, 1, '2020-11-21 10:21:12', 0, 1, 0, 0, 119, NULL, NULL, 100, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'ab8e2d9cd00f71681d0217605c23c956', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(101, 95, 2, 1, 0.3300000000, 1, '2020-11-30 13:08:26', 0, 1, 0, 0, 120, NULL, NULL, 101, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'dcf7fca08756c9b11340ce68b6e1c773', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(102, 96, 2, 1, 0.1500000000, 1, '2020-11-30 23:14:23', 0, 1, 0, 0, 121, NULL, NULL, 102, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '238912d5e49055b4d2f8f149aad10687', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(103, 97, 2, 1, 0.0000000000, 1, '2020-12-06 11:43:53', 0, 1, 0, 0, 122, NULL, NULL, 103, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, 'b789c679195d9b6d544d40bdf97f2767', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(104, 98, 2, 1, 0.0000000000, 1, '2020-12-06 11:59:09', 0, 1, 0, 0, 123, NULL, NULL, 104, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '7401dde49ecdaaee547b092d4b6a2e80', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1),
(105, 99, 5, 1, 1.2000000000, 1, '2021-01-19 12:53:30', 0, 1, 0, 0, 124, NULL, NULL, 105, 'WO-', 1, '0000-00-00', NULL, 1, 0.00, 0.00, 0.00, 0.00, '6177513b1852e869f3c4d40ba238963f', 2, NULL, NULL, NULL, 0, 'a:0:{}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

CREATE TABLE `tblitemable` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `item_order` int(11) DEFAULT NULL,
  `rel_product_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `pack_capacity` decimal(15,2) DEFAULT NULL,
  `qty` decimal(15,2) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `original_price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `volume_m3` float DEFAULT NULL,
  `approval_need` int(11) DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `rate` decimal(15,2) NOT NULL,
  `produced_qty` decimal(15,2) DEFAULT NULL,
  `wo_install_transfer_id` int(11) DEFAULT NULL,
  `pack_transfer_id` int(11) DEFAULT NULL,
  `scheduled` tinyint(1) DEFAULT '0',
  `dispatch` int(1) DEFAULT NULL,
  `sending_qty` decimal(15,2) DEFAULT NULL,
  `dispatch_warehouse` int(11) DEFAULT NULL,
  `wo_dispatch_transfer_id` int(11) DEFAULT NULL,
  `pack_dispatch_transfer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblitemable`
--

INSERT INTO `tblitemable` (`id`, `rel_id`, `rel_type`, `item_order`, `rel_product_id`, `product_code`, `product_name`, `pack_capacity`, `qty`, `unit`, `original_price`, `sale_price`, `volume_m3`, `approval_need`, `notes`, `description`, `long_description`, `rate`, `produced_qty`, `wo_install_transfer_id`, `pack_transfer_id`, `scheduled`, `dispatch`, `sending_qty`, `dispatch_warehouse`, `wo_dispatch_transfer_id`, `pack_dispatch_transfer_id`) VALUES
(123, 104, 'proposal', 1, 113, 'OW-200', 'Tray', 20.00, 20.00, 11, 179.95, 50.00, 0.12, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(124, 105, 'proposal', 1, 114, 'OW-201', 'Glass', 10.00, 12.00, 11, 104.57, 33.00, 0.144, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(125, 106, 'proposal', 1, 118, 'MG-04', 'CUP WITH HANDLE AND STRAW', 0.00, 100.00, 11, 2.22, 3.00, 0, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(126, 107, 'proposal', 1, 118, 'MG-04', 'CUP WITH HANDLE AND STRAW', 15.00, 100.00, 11, 2.28, 3.00, 0.8, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(127, 108, 'proposal', 1, 118, 'MG-04', 'CUP WITH HANDLE AND STRAW', 15.00, 200.00, 11, 2.28, 3.00, 1.6, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(128, 109, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 20.00, 11, 148.63, 44.00, 0.24, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(129, 110, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 200.00, 11, 31.26, 32.00, 2.4, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(130, 111, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 1000.00, 11, 286.30, 286.30, 12, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(131, 111, 'proposal', 2, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 1000.00, 11, 286.30, 285.00, 12, 0, 'kutulu', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(132, 112, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 100.00, 11, 286.30, 285.00, 1.2, 0, 'beyaz', '', NULL, 0.00, 100.00, 42, 43, 1, 1, 70.00, 14, 59, 60),
(133, 113, 'proposal', 1, 133, 'OW-222', 'Testing Product', 8.00, 200.00, 11, 11.50, 12.00, 3, 0, '', '', NULL, 0.00, 200.00, 72, 73, 0, 1, 200.00, 14, 83, 84),
(134, 113, 'proposal', 2, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 150.00, 11, 294.51, 300.00, 1.8, 0, '', '', NULL, 0.00, 150.00, 74, 75, 0, 1, 150.00, 15, 85, 86),
(135, 114, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 100.00, 11, 294.51, 310.00, 1.2, 0, '', '', NULL, 0.00, 100.00, 87, 88, 1, 1, 100.00, 14, 95, 96),
(136, 115, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 200.00, 11, 294.51, 300.00, 2.4, 0, '', '', NULL, 0.00, 200.00, 97, 98, 0, 1, 200.00, 14, 107, 108),
(137, 115, 'proposal', 2, 133, 'OW-222', 'Testing Product', 8.00, 100.00, 11, 700.05, 710.00, 1.5, 0, '', '', NULL, 0.00, 100.00, 99, 100, 0, 1, 100.00, 14, 109, 110),
(138, 116, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 30.00, 11, 286.30, 286.00, 0.36, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(139, 117, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 100.00, 11, 286.30, 285.00, 1.2, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(140, 118, 'proposal', 1, 125, 'MG-05', 'BREAD BIN WITH TRAY', 10.00, 20.00, 11, 294.51, 290.00, 0.24, 0, '', '', NULL, 0.00, 10.00, 116, 117, 0, 1, 20.00, 15, 125, NULL),
(141, 119, 'proposal', 1, 133, 'OW-222', 'Testing Product', 8.00, 10.00, 11, 20.57, 21.00, 0.15, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(142, 120, 'proposal', 1, 133, 'OW-222', 'Testing Product', 8.00, 22.00, 11, 20.57, 4.00, 0.33, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, 1, 10.00, 15, 136, NULL),
(143, 121, 'proposal', 1, 133, 'OW-222', 'Testing Product', 8.00, 10.00, 11, 1491.97, 1500.00, 0.15, 0, '', '', NULL, 0.00, 10.00, 148, 149, 0, 1, 10.00, 15, 147, NULL),
(144, 122, 'proposal', 1, 135, 'BRD-002', 'Tray and Glass', 0.00, 10.00, 11, 186.96, 190.00, 0, 0, '', '', NULL, 0.00, 10.00, 156, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(145, 123, 'proposal', 1, 134, 'BRD-001', 'Glass', 0.00, 100.00, 11, 36.25, 37.00, 0, 0, '', '', NULL, 0.00, 50.00, 162, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(146, 124, 'proposal', 1, 135, 'BRD-002', 'Tray and Glass', 0.00, 100.00, 11, 186.96, 190.00, 1.2, 0, '', '', NULL, 0.00, NULL, NULL, NULL, 0, 1, 100.00, 14, 198, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

CREATE TABLE `tblitem_tax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

CREATE TABLE `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

CREATE TABLE `tblknowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

CREATE TABLE `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` text,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `lead_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

CREATE TABLE `tblleads_email_integration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `create_task_if_customer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'inbox', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

CREATE TABLE `tblleads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(2, 'Facebook'),
(1, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

CREATE TABLE `tblleads_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

CREATE TABLE `tbllead_activity_log` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

CREATE TABLE `tbllead_integration_emails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmachines_list`
--

CREATE TABLE `tblmachines_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `power_usage` decimal(15,2) DEFAULT NULL,
  `profit_expectation` decimal(15,2) DEFAULT NULL,
  `take_from` int(11) DEFAULT NULL,
  `export_to` int(11) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmachines_list`
--

INSERT INTO `tblmachines_list` (`id`, `name`, `power_usage`, `profit_expectation`, `take_from`, `export_to`, `order_no`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(12, '10kW', 200.00, 1500.00, 14, 15, 1, 1, 1, '2020-08-24 11:45:59', '2020-10-18 21:05:19'),
(13, '22W', 22.00, 17500.00, 15, 16, 2, 1, 1, '2020-08-25 10:02:40', '2020-10-07 13:03:12'),
(14, '150TON', 24.40, 15000.00, 16, 15, 3, 1, 1, '2020-10-26 02:36:11', NULL),
(15, '160TON', 50.00, 1750.00, 16, 15, 4, 1, 1, '2020-10-26 02:36:35', '2020-10-27 11:07:34'),
(16, '150TON 2', 24.00, 15000.00, 14, 16, 5, 0, 1, '2020-10-31 15:29:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

CREATE TABLE `tblmail_queue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text,
  `bcc` text,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text,
  `attachments` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(260);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'menu_setup', '2.3.0', 1),
(2, 'theme_style', '2.3.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmoulds`
--

CREATE TABLE `tblmoulds` (
  `id` int(11) NOT NULL,
  `mould_name` varchar(255) NOT NULL,
  `mould_cavity` decimal(15,2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmoulds`
--

INSERT INTO `tblmoulds` (`id`, `mould_name`, `mould_cavity`, `active`) VALUES
(22, 'Test', 25.00, 1),
(23, '411', 24.00, 1),
(24, '412', 12.00, 1),
(25, '293', 2.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmould_suitability`
--

CREATE TABLE `tblmould_suitability` (
  `id` int(11) NOT NULL,
  `default_machine` varchar(255) DEFAULT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `mould_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmould_suitability`
--

INSERT INTO `tblmould_suitability` (`id`, `default_machine`, `machine_id`, `mould_id`, `user_id`, `created_at`, `updated_at`) VALUES
(55, '0', 12, 22, 1, '2020-08-24 11:54:22', '2020-10-07 13:08:02'),
(57, '1', 13, 22, 1, '2020-10-07 13:03:48', '2020-10-07 13:08:08'),
(59, '1', 15, 25, 1, '2020-10-26 02:37:40', NULL),
(60, '1', 14, 24, 1, '2020-10-26 02:37:47', '2020-10-26 02:38:01'),
(61, '1', 14, 23, 1, '2020-10-26 02:38:15', NULL),
(62, '0', 16, 23, 1, '2020-10-31 15:31:44', NULL),
(63, '0', 16, 24, 1, '2020-10-31 15:31:59', NULL),
(64, '0', 16, 25, 1, '2020-10-31 15:32:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

CREATE TABLE `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

CREATE TABLE `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

CREATE TABLE `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

CREATE TABLE `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnotifications`
--

INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
(1, 1, 1, '2020-08-06 16:26:46', 'not_proposal_proposal_accepted', 0, 1, '', 1, 1, 'proposals/list_proposals/35', 'a:1:{i:0;s:10:\"QOT-000035\";}'),
(2, 1, 1, '2020-08-11 05:31:47', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/48', 'a:1:{i:0;s:10:\"QOT-000048\";}'),
(3, 1, 1, '2020-08-12 03:51:05', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/49', 'a:1:{i:0;s:10:\"QOT-000049\";}'),
(4, 1, 1, '2020-08-12 18:36:19', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/52', 'a:1:{i:0;s:10:\"QOT-000052\";}'),
(5, 1, 1, '2020-08-12 18:52:07', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/56', 'a:1:{i:0;s:10:\"QOT-000056\";}'),
(6, 1, 1, '2020-08-13 05:04:48', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/57', 'a:1:{i:0;s:10:\"QOT-000057\";}'),
(7, 1, 1, '2020-08-13 12:32:26', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/58', 'a:1:{i:0;s:10:\"QOT-000058\";}'),
(8, 1, 1, '2020-08-16 11:13:33', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/59', 'a:1:{i:0;s:10:\"QOT-000059\";}'),
(9, 1, 1, '2020-08-17 09:43:53', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/60', 'a:1:{i:0;s:10:\"QOT-000060\";}'),
(10, 1, 1, '2020-08-19 04:27:34', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/61', 'a:1:{i:0;s:10:\"QOT-000061\";}'),
(11, 1, 1, '2020-08-20 04:48:46', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/62', 'a:1:{i:0;s:10:\"QOT-000062\";}'),
(12, 1, 1, '2020-08-23 10:57:47', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/64', 'a:1:{i:0;s:10:\"QOT-000064\";}'),
(13, 1, 1, '2020-09-04 17:41:14', 'not_proposal_proposal_accepted', 0, 0, '', 1, 1, 'proposals/list_proposals/74', 'a:1:{i:0;s:10:\"QOT-000074\";}'),
(14, 1, 1, '2020-10-05 05:51:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=53', 'a:1:{i:0;s:10:\"wo-67-Test\";}'),
(15, 1, 1, '2020-10-06 12:31:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=55', 'a:1:{i:0;s:13:\"wo-70-Test411\";}'),
(16, 1, 1, '2020-10-08 09:26:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=64', 'a:1:{i:0;s:13:\"wo-73-Test411\";}'),
(17, 1, 1, '2020-10-08 22:03:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=57', 'a:1:{i:0;s:13:\"wo-70-Test411\";}'),
(18, 1, 1, '2020-10-10 22:00:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=58', 'a:1:{i:0;s:13:\"wo-70-Test411\";}'),
(19, 1, 1, '2020-10-11 22:02:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=63', 'a:1:{i:0;s:13:\"wo-72-Test411\";}'),
(20, 1, 1, '2020-10-22 20:24:03', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=74', 'a:1:{i:0;s:9:\"wo-88-411\";}'),
(21, 1, 1, '2020-10-28 12:19:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=75', 'a:1:{i:0;s:9:\"wo-92-293\";}'),
(22, 1, 1, '2020-10-28 16:37:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=76', 'a:1:{i:0;s:9:\"wo-93-293\";}'),
(23, 1, 1, '2020-10-28 16:37:07', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=77', 'a:1:{i:0;s:9:\"wo-93-411\";}'),
(24, 1, 1, '2020-10-31 10:05:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=78', 'a:1:{i:0;s:9:\"wo-94-293\";}'),
(25, 1, 1, '2020-10-31 16:15:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=79', 'a:1:{i:0;s:9:\"wo-95-411\";}'),
(26, 1, 1, '2020-10-31 23:02:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=80', 'a:1:{i:0;s:9:\"wo-95-293\";}'),
(27, 1, 1, '2020-11-21 21:01:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=83', 'a:1:{i:0;s:11:\"wo-100-Test\";}'),
(28, 1, 1, '2020-11-23 21:02:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=81', 'a:1:{i:0;s:9:\"wo-96-293\";}'),
(29, 1, 1, '2020-11-25 21:00:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=82', 'a:1:{i:0;s:9:\"wo-96-411\";}'),
(30, 1, 1, '2020-11-30 13:14:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=84', 'a:1:{i:0;s:11:\"wo-101-Test\";}'),
(31, 1, 1, '2020-11-30 23:18:01', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=85', 'a:1:{i:0;s:11:\"wo-102-Test\";}'),
(32, 1, 1, '2020-12-06 21:02:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=86', 'a:1:{i:0;s:10:\"wo-103-411\";}'),
(33, 1, 1, '2020-12-06 21:02:07', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=87', 'a:1:{i:0;s:10:\"wo-104-411\";}'),
(34, 1, 1, '2021-01-20 12:20:02', 'not_event', 0, 0, '', 1, 1, 'utilities/calendar?eventid=88', 'a:1:{i:0;s:10:\"wo-105-411\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbloperation_cost`
--

CREATE TABLE `tbloperation_cost` (
  `id` int(11) NOT NULL,
  `op_cost_per_sec` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloperation_cost`
--

INSERT INTO `tbloperation_cost` (`id`, `op_cost_per_sec`) VALUES
(1, 2.0000);

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'd-m-Y|%d-%m-%Y', 1),
(2, 'companyname', '', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', 'admin@objeplastik.work', 1),
(9, 'smtp_password', '5b31dcd5d3d57ef7b09e613c62c805dc301ae052be78facc8d794d126b4fbdca17c0bc6c8c34651af5d4eb0b6a5a330fb8471f4e20372f4eaf2413efa26c3e26GZlc/TUoNclOrPeJdGNrcK+R3DRYXajZIzDwGxAwXLg=', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '465', 1),
(12, 'smtp_host', 'n3plcpnl0130.prod.ams3.secureserver.net', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'Europe/Istanbul', 1),
(15, 'clients_default_theme', 'perfex', 1),
(16, 'company_logo', '', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', '', 1),
(19, 'allow_registration', '0', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'WO-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', 'Test LTD', 1),
(29, 'invoice_company_address', '', 1),
(30, 'invoice_company_city', '', 1),
(31, 'invoice_company_country_code', '', 1),
(32, 'invoice_company_postal_code', '', 1),
(33, 'invoice_company_phonenumber', '', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '1', 1),
(36, 'next_invoice_number', '106', 0),
(37, 'active_language', 'english', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(41, 'expenses_auto_operations_hour', '21', 1),
(42, 'delete_only_on_last_invoice', '1', 1),
(43, 'delete_only_on_last_estimate', '1', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'SO-', 1),
(49, 'next_estimate_number', '94', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '1', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '1611348781', 1),
(56, 'show_sale_agent_on_estimates', '1', 1),
(57, 'show_sale_agent_on_invoices', '1', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', '', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '4', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '4', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '1', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'month', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '1', 1),
(96, 'total_to_words_enabled', '0', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '0', 1),
(99, 'media_max_file_size_upload', '10', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '2', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'leadorder', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '0', 1),
(114, 'recaptcha_secret_key', '', 1),
(115, 'show_help_on_setup_menu', '1', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', 'ssl', 1),
(118, 'recaptcha_site_key', '', 1),
(119, 'smtp_username', 'admin@objeplastik.work', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#FF6F00', 1),
(123, 'calendar_estimate_color', '#FF6F00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03A9F4', 1),
(127, 'calendar_contract_color', '#B72974', 1),
(128, 'calendar_project_color', '#B72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '0', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '0', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '1', 1),
(151, 'hide_cron_is_required_message', '0', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '1', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'QOT-', 1),
(160, 'number_padding_prefixes', '6', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '1', 1),
(165, 'company_is_required', '1', 1),
(166, 'allow_contact_to_delete_files', '0', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1594294341', 1),
(169, 'invoice_auto_operations_hour', '21', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '0', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
(173, 'estimate_due_after', '7', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '24', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '0', 1),
(178, 'company_state', '', 1),
(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'scroll_responsive_tables', '0', 1),
(184, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(185, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(186, 'pusher_app_key', '', 1),
(187, 'pusher_app_secret', '', 1),
(188, 'pusher_app_id', '', 1),
(189, 'pusher_realtime_notifications', '0', 1),
(190, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(191, 'pusher_cluster', '', 1),
(192, 'show_table_export_button', 'to_all', 1),
(193, 'allow_staff_view_proposals_assigned', '1', 1),
(194, 'show_cloudflare_notice', '1', 0),
(195, 'task_modal_class', 'modal-lg', 1),
(196, 'lead_modal_class', 'modal-lg', 1),
(197, 'show_timesheets_overview_all_members_notice_admins', '1', 0),
(198, 'desktop_notifications', '0', 1),
(199, 'hide_notified_reminders_from_calendar', '1', 0),
(200, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(201, 'timer_started_change_status_in_progress', '1', 0),
(202, 'default_ticket_reply_status', '3', 1),
(203, 'default_task_status', 'auto', 1),
(204, 'email_queue_skip_with_attachments', '1', 1),
(205, 'email_queue_enabled', '0', 1),
(206, 'last_email_queue_retry', '1611348781', 1),
(207, 'auto_dismiss_desktop_notifications_after', '0', 1),
(208, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(209, 'ticket_replies_order', 'asc', 1),
(210, 'new_recurring_invoice_action', 'generate_and_send', 0),
(211, 'bcc_emails', '', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(212, 'email_templates_language_checks', 'a:1932:{s:28:\"new-client-created-bulgarian\";i:1;s:32:\"invoice-send-to-client-bulgarian\";i:1;s:33:\"new-ticket-opened-admin-bulgarian\";i:1;s:22:\"ticket-reply-bulgarian\";i:1;s:29:\"ticket-autoresponse-bulgarian\";i:1;s:34:\"invoice-payment-recorded-bulgarian\";i:1;s:32:\"invoice-overdue-notice-bulgarian\";i:1;s:30:\"invoice-already-send-bulgarian\";i:1;s:34:\"new-ticket-created-staff-bulgarian\";i:1;s:33:\"estimate-send-to-client-bulgarian\";i:1;s:31:\"ticket-reply-to-admin-bulgarian\";i:1;s:31:\"estimate-already-send-bulgarian\";i:1;s:29:\"contract-expiration-bulgarian\";i:1;s:23:\"task-assigned-bulgarian\";i:1;s:32:\"task-added-as-follower-bulgarian\";i:1;s:24:\"task-commented-bulgarian\";i:1;s:31:\"task-added-attachment-bulgarian\";i:1;s:36:\"estimate-declined-to-staff-bulgarian\";i:1;s:36:\"estimate-accepted-to-staff-bulgarian\";i:1;s:34:\"proposal-client-accepted-bulgarian\";i:1;s:35:\"proposal-send-to-customer-bulgarian\";i:1;s:34:\"proposal-client-declined-bulgarian\";i:1;s:35:\"proposal-client-thank-you-bulgarian\";i:1;s:36:\"proposal-comment-to-client-bulgarian\";i:1;s:35:\"proposal-comment-to-admin-bulgarian\";i:1;s:40:\"estimate-thank-you-to-customer-bulgarian\";i:1;s:36:\"task-deadline-notification-bulgarian\";i:1;s:23:\"send-contract-bulgarian\";i:1;s:43:\"invoice-payment-recorded-to-staff-bulgarian\";i:1;s:27:\"auto-close-ticket-bulgarian\";i:1;s:49:\"new-project-discussion-created-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-created-to-customer-bulgarian\";i:1;s:47:\"new-project-file-uploaded-to-customer-bulgarian\";i:1;s:44:\"new-project-file-uploaded-to-staff-bulgarian\";i:1;s:52:\"new-project-discussion-comment-to-customer-bulgarian\";i:1;s:49:\"new-project-discussion-comment-to-staff-bulgarian\";i:1;s:39:\"staff-added-as-project-member-bulgarian\";i:1;s:34:\"estimate-expiry-reminder-bulgarian\";i:1;s:34:\"proposal-expiry-reminder-bulgarian\";i:1;s:27:\"new-staff-created-bulgarian\";i:1;s:33:\"contact-forgot-password-bulgarian\";i:1;s:34:\"contact-password-reseted-bulgarian\";i:1;s:30:\"contact-set-password-bulgarian\";i:1;s:31:\"staff-forgot-password-bulgarian\";i:1;s:32:\"staff-password-reseted-bulgarian\";i:1;s:29:\"assigned-to-project-bulgarian\";i:1;s:43:\"task-added-attachment-to-contacts-bulgarian\";i:1;s:36:\"task-commented-to-contacts-bulgarian\";i:1;s:27:\"new-lead-assigned-bulgarian\";i:1;s:26:\"client-statement-bulgarian\";i:1;s:34:\"ticket-assigned-to-admin-bulgarian\";i:1;s:40:\"new-client-registered-to-admin-bulgarian\";i:1;s:40:\"new-web-to-lead-form-submitted-bulgarian\";i:1;s:35:\"two-factor-authentication-bulgarian\";i:1;s:38:\"project-finished-to-customer-bulgarian\";i:1;s:36:\"credit-note-send-to-client-bulgarian\";i:1;s:37:\"task-status-change-to-staff-bulgarian\";i:1;s:40:\"task-status-change-to-contacts-bulgarian\";i:1;s:30:\"reminder-email-staff-bulgarian\";i:1;s:36:\"contract-comment-to-client-bulgarian\";i:1;s:35:\"contract-comment-to-admin-bulgarian\";i:1;s:27:\"send-subscription-bulgarian\";i:1;s:37:\"subscription-payment-failed-bulgarian\";i:1;s:31:\"subscription-canceled-bulgarian\";i:1;s:40:\"subscription-payment-succeeded-bulgarian\";i:1;s:38:\"contract-expiration-to-staff-bulgarian\";i:1;s:30:\"gdpr-removal-request-bulgarian\";i:1;s:35:\"gdpr-removal-request-lead-bulgarian\";i:1;s:39:\"client-registration-confirmed-bulgarian\";i:1;s:34:\"contract-signed-to-staff-bulgarian\";i:1;s:38:\"customer-subscribed-to-staff-bulgarian\";i:1;s:36:\"contact-verification-email-bulgarian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-bulgarian\";i:1;s:37:\"event-notification-to-staff-bulgarian\";i:1;s:46:\"subscription-payment-requires-action-bulgarian\";i:1;s:26:\"new-client-created-catalan\";i:1;s:30:\"invoice-send-to-client-catalan\";i:1;s:31:\"new-ticket-opened-admin-catalan\";i:1;s:20:\"ticket-reply-catalan\";i:1;s:27:\"ticket-autoresponse-catalan\";i:1;s:32:\"invoice-payment-recorded-catalan\";i:1;s:30:\"invoice-overdue-notice-catalan\";i:1;s:28:\"invoice-already-send-catalan\";i:1;s:32:\"new-ticket-created-staff-catalan\";i:1;s:31:\"estimate-send-to-client-catalan\";i:1;s:29:\"ticket-reply-to-admin-catalan\";i:1;s:29:\"estimate-already-send-catalan\";i:1;s:27:\"contract-expiration-catalan\";i:1;s:21:\"task-assigned-catalan\";i:1;s:30:\"task-added-as-follower-catalan\";i:1;s:22:\"task-commented-catalan\";i:1;s:29:\"task-added-attachment-catalan\";i:1;s:34:\"estimate-declined-to-staff-catalan\";i:1;s:34:\"estimate-accepted-to-staff-catalan\";i:1;s:32:\"proposal-client-accepted-catalan\";i:1;s:33:\"proposal-send-to-customer-catalan\";i:1;s:32:\"proposal-client-declined-catalan\";i:1;s:33:\"proposal-client-thank-you-catalan\";i:1;s:34:\"proposal-comment-to-client-catalan\";i:1;s:33:\"proposal-comment-to-admin-catalan\";i:1;s:38:\"estimate-thank-you-to-customer-catalan\";i:1;s:34:\"task-deadline-notification-catalan\";i:1;s:21:\"send-contract-catalan\";i:1;s:41:\"invoice-payment-recorded-to-staff-catalan\";i:1;s:25:\"auto-close-ticket-catalan\";i:1;s:47:\"new-project-discussion-created-to-staff-catalan\";i:1;s:50:\"new-project-discussion-created-to-customer-catalan\";i:1;s:45:\"new-project-file-uploaded-to-customer-catalan\";i:1;s:42:\"new-project-file-uploaded-to-staff-catalan\";i:1;s:50:\"new-project-discussion-comment-to-customer-catalan\";i:1;s:47:\"new-project-discussion-comment-to-staff-catalan\";i:1;s:37:\"staff-added-as-project-member-catalan\";i:1;s:32:\"estimate-expiry-reminder-catalan\";i:1;s:32:\"proposal-expiry-reminder-catalan\";i:1;s:25:\"new-staff-created-catalan\";i:1;s:31:\"contact-forgot-password-catalan\";i:1;s:32:\"contact-password-reseted-catalan\";i:1;s:28:\"contact-set-password-catalan\";i:1;s:29:\"staff-forgot-password-catalan\";i:1;s:30:\"staff-password-reseted-catalan\";i:1;s:27:\"assigned-to-project-catalan\";i:1;s:41:\"task-added-attachment-to-contacts-catalan\";i:1;s:34:\"task-commented-to-contacts-catalan\";i:1;s:25:\"new-lead-assigned-catalan\";i:1;s:24:\"client-statement-catalan\";i:1;s:32:\"ticket-assigned-to-admin-catalan\";i:1;s:38:\"new-client-registered-to-admin-catalan\";i:1;s:38:\"new-web-to-lead-form-submitted-catalan\";i:1;s:33:\"two-factor-authentication-catalan\";i:1;s:36:\"project-finished-to-customer-catalan\";i:1;s:34:\"credit-note-send-to-client-catalan\";i:1;s:35:\"task-status-change-to-staff-catalan\";i:1;s:38:\"task-status-change-to-contacts-catalan\";i:1;s:28:\"reminder-email-staff-catalan\";i:1;s:34:\"contract-comment-to-client-catalan\";i:1;s:33:\"contract-comment-to-admin-catalan\";i:1;s:25:\"send-subscription-catalan\";i:1;s:35:\"subscription-payment-failed-catalan\";i:1;s:29:\"subscription-canceled-catalan\";i:1;s:38:\"subscription-payment-succeeded-catalan\";i:1;s:36:\"contract-expiration-to-staff-catalan\";i:1;s:28:\"gdpr-removal-request-catalan\";i:1;s:33:\"gdpr-removal-request-lead-catalan\";i:1;s:37:\"client-registration-confirmed-catalan\";i:1;s:32:\"contract-signed-to-staff-catalan\";i:1;s:36:\"customer-subscribed-to-staff-catalan\";i:1;s:34:\"contact-verification-email-catalan\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-catalan\";i:1;s:35:\"event-notification-to-staff-catalan\";i:1;s:44:\"subscription-payment-requires-action-catalan\";i:1;s:26:\"new-client-created-chinese\";i:1;s:30:\"invoice-send-to-client-chinese\";i:1;s:31:\"new-ticket-opened-admin-chinese\";i:1;s:20:\"ticket-reply-chinese\";i:1;s:27:\"ticket-autoresponse-chinese\";i:1;s:32:\"invoice-payment-recorded-chinese\";i:1;s:30:\"invoice-overdue-notice-chinese\";i:1;s:28:\"invoice-already-send-chinese\";i:1;s:32:\"new-ticket-created-staff-chinese\";i:1;s:31:\"estimate-send-to-client-chinese\";i:1;s:29:\"ticket-reply-to-admin-chinese\";i:1;s:29:\"estimate-already-send-chinese\";i:1;s:27:\"contract-expiration-chinese\";i:1;s:21:\"task-assigned-chinese\";i:1;s:30:\"task-added-as-follower-chinese\";i:1;s:22:\"task-commented-chinese\";i:1;s:29:\"task-added-attachment-chinese\";i:1;s:34:\"estimate-declined-to-staff-chinese\";i:1;s:34:\"estimate-accepted-to-staff-chinese\";i:1;s:32:\"proposal-client-accepted-chinese\";i:1;s:33:\"proposal-send-to-customer-chinese\";i:1;s:32:\"proposal-client-declined-chinese\";i:1;s:33:\"proposal-client-thank-you-chinese\";i:1;s:34:\"proposal-comment-to-client-chinese\";i:1;s:33:\"proposal-comment-to-admin-chinese\";i:1;s:38:\"estimate-thank-you-to-customer-chinese\";i:1;s:34:\"task-deadline-notification-chinese\";i:1;s:21:\"send-contract-chinese\";i:1;s:41:\"invoice-payment-recorded-to-staff-chinese\";i:1;s:25:\"auto-close-ticket-chinese\";i:1;s:47:\"new-project-discussion-created-to-staff-chinese\";i:1;s:50:\"new-project-discussion-created-to-customer-chinese\";i:1;s:45:\"new-project-file-uploaded-to-customer-chinese\";i:1;s:42:\"new-project-file-uploaded-to-staff-chinese\";i:1;s:50:\"new-project-discussion-comment-to-customer-chinese\";i:1;s:47:\"new-project-discussion-comment-to-staff-chinese\";i:1;s:37:\"staff-added-as-project-member-chinese\";i:1;s:32:\"estimate-expiry-reminder-chinese\";i:1;s:32:\"proposal-expiry-reminder-chinese\";i:1;s:25:\"new-staff-created-chinese\";i:1;s:31:\"contact-forgot-password-chinese\";i:1;s:32:\"contact-password-reseted-chinese\";i:1;s:28:\"contact-set-password-chinese\";i:1;s:29:\"staff-forgot-password-chinese\";i:1;s:30:\"staff-password-reseted-chinese\";i:1;s:27:\"assigned-to-project-chinese\";i:1;s:41:\"task-added-attachment-to-contacts-chinese\";i:1;s:34:\"task-commented-to-contacts-chinese\";i:1;s:25:\"new-lead-assigned-chinese\";i:1;s:24:\"client-statement-chinese\";i:1;s:32:\"ticket-assigned-to-admin-chinese\";i:1;s:38:\"new-client-registered-to-admin-chinese\";i:1;s:38:\"new-web-to-lead-form-submitted-chinese\";i:1;s:33:\"two-factor-authentication-chinese\";i:1;s:36:\"project-finished-to-customer-chinese\";i:1;s:34:\"credit-note-send-to-client-chinese\";i:1;s:35:\"task-status-change-to-staff-chinese\";i:1;s:38:\"task-status-change-to-contacts-chinese\";i:1;s:28:\"reminder-email-staff-chinese\";i:1;s:34:\"contract-comment-to-client-chinese\";i:1;s:33:\"contract-comment-to-admin-chinese\";i:1;s:25:\"send-subscription-chinese\";i:1;s:35:\"subscription-payment-failed-chinese\";i:1;s:29:\"subscription-canceled-chinese\";i:1;s:38:\"subscription-payment-succeeded-chinese\";i:1;s:36:\"contract-expiration-to-staff-chinese\";i:1;s:28:\"gdpr-removal-request-chinese\";i:1;s:33:\"gdpr-removal-request-lead-chinese\";i:1;s:37:\"client-registration-confirmed-chinese\";i:1;s:32:\"contract-signed-to-staff-chinese\";i:1;s:36:\"customer-subscribed-to-staff-chinese\";i:1;s:34:\"contact-verification-email-chinese\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-chinese\";i:1;s:35:\"event-notification-to-staff-chinese\";i:1;s:44:\"subscription-payment-requires-action-chinese\";i:1;s:24:\"new-client-created-czech\";i:1;s:28:\"invoice-send-to-client-czech\";i:1;s:29:\"new-ticket-opened-admin-czech\";i:1;s:18:\"ticket-reply-czech\";i:1;s:25:\"ticket-autoresponse-czech\";i:1;s:30:\"invoice-payment-recorded-czech\";i:1;s:28:\"invoice-overdue-notice-czech\";i:1;s:26:\"invoice-already-send-czech\";i:1;s:30:\"new-ticket-created-staff-czech\";i:1;s:29:\"estimate-send-to-client-czech\";i:1;s:27:\"ticket-reply-to-admin-czech\";i:1;s:27:\"estimate-already-send-czech\";i:1;s:25:\"contract-expiration-czech\";i:1;s:19:\"task-assigned-czech\";i:1;s:28:\"task-added-as-follower-czech\";i:1;s:20:\"task-commented-czech\";i:1;s:27:\"task-added-attachment-czech\";i:1;s:32:\"estimate-declined-to-staff-czech\";i:1;s:32:\"estimate-accepted-to-staff-czech\";i:1;s:30:\"proposal-client-accepted-czech\";i:1;s:31:\"proposal-send-to-customer-czech\";i:1;s:30:\"proposal-client-declined-czech\";i:1;s:31:\"proposal-client-thank-you-czech\";i:1;s:32:\"proposal-comment-to-client-czech\";i:1;s:31:\"proposal-comment-to-admin-czech\";i:1;s:36:\"estimate-thank-you-to-customer-czech\";i:1;s:32:\"task-deadline-notification-czech\";i:1;s:19:\"send-contract-czech\";i:1;s:39:\"invoice-payment-recorded-to-staff-czech\";i:1;s:23:\"auto-close-ticket-czech\";i:1;s:45:\"new-project-discussion-created-to-staff-czech\";i:1;s:48:\"new-project-discussion-created-to-customer-czech\";i:1;s:43:\"new-project-file-uploaded-to-customer-czech\";i:1;s:40:\"new-project-file-uploaded-to-staff-czech\";i:1;s:48:\"new-project-discussion-comment-to-customer-czech\";i:1;s:45:\"new-project-discussion-comment-to-staff-czech\";i:1;s:35:\"staff-added-as-project-member-czech\";i:1;s:30:\"estimate-expiry-reminder-czech\";i:1;s:30:\"proposal-expiry-reminder-czech\";i:1;s:23:\"new-staff-created-czech\";i:1;s:29:\"contact-forgot-password-czech\";i:1;s:30:\"contact-password-reseted-czech\";i:1;s:26:\"contact-set-password-czech\";i:1;s:27:\"staff-forgot-password-czech\";i:1;s:28:\"staff-password-reseted-czech\";i:1;s:25:\"assigned-to-project-czech\";i:1;s:39:\"task-added-attachment-to-contacts-czech\";i:1;s:32:\"task-commented-to-contacts-czech\";i:1;s:23:\"new-lead-assigned-czech\";i:1;s:22:\"client-statement-czech\";i:1;s:30:\"ticket-assigned-to-admin-czech\";i:1;s:36:\"new-client-registered-to-admin-czech\";i:1;s:36:\"new-web-to-lead-form-submitted-czech\";i:1;s:31:\"two-factor-authentication-czech\";i:1;s:34:\"project-finished-to-customer-czech\";i:1;s:32:\"credit-note-send-to-client-czech\";i:1;s:33:\"task-status-change-to-staff-czech\";i:1;s:36:\"task-status-change-to-contacts-czech\";i:1;s:26:\"reminder-email-staff-czech\";i:1;s:32:\"contract-comment-to-client-czech\";i:1;s:31:\"contract-comment-to-admin-czech\";i:1;s:23:\"send-subscription-czech\";i:1;s:33:\"subscription-payment-failed-czech\";i:1;s:27:\"subscription-canceled-czech\";i:1;s:36:\"subscription-payment-succeeded-czech\";i:1;s:34:\"contract-expiration-to-staff-czech\";i:1;s:26:\"gdpr-removal-request-czech\";i:1;s:31:\"gdpr-removal-request-lead-czech\";i:1;s:35:\"client-registration-confirmed-czech\";i:1;s:30:\"contract-signed-to-staff-czech\";i:1;s:34:\"customer-subscribed-to-staff-czech\";i:1;s:32:\"contact-verification-email-czech\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-czech\";i:1;s:33:\"event-notification-to-staff-czech\";i:1;s:42:\"subscription-payment-requires-action-czech\";i:1;s:24:\"new-client-created-dutch\";i:1;s:28:\"invoice-send-to-client-dutch\";i:1;s:29:\"new-ticket-opened-admin-dutch\";i:1;s:18:\"ticket-reply-dutch\";i:1;s:25:\"ticket-autoresponse-dutch\";i:1;s:30:\"invoice-payment-recorded-dutch\";i:1;s:28:\"invoice-overdue-notice-dutch\";i:1;s:26:\"invoice-already-send-dutch\";i:1;s:30:\"new-ticket-created-staff-dutch\";i:1;s:29:\"estimate-send-to-client-dutch\";i:1;s:27:\"ticket-reply-to-admin-dutch\";i:1;s:27:\"estimate-already-send-dutch\";i:1;s:25:\"contract-expiration-dutch\";i:1;s:19:\"task-assigned-dutch\";i:1;s:28:\"task-added-as-follower-dutch\";i:1;s:20:\"task-commented-dutch\";i:1;s:27:\"task-added-attachment-dutch\";i:1;s:32:\"estimate-declined-to-staff-dutch\";i:1;s:32:\"estimate-accepted-to-staff-dutch\";i:1;s:30:\"proposal-client-accepted-dutch\";i:1;s:31:\"proposal-send-to-customer-dutch\";i:1;s:30:\"proposal-client-declined-dutch\";i:1;s:31:\"proposal-client-thank-you-dutch\";i:1;s:32:\"proposal-comment-to-client-dutch\";i:1;s:31:\"proposal-comment-to-admin-dutch\";i:1;s:36:\"estimate-thank-you-to-customer-dutch\";i:1;s:32:\"task-deadline-notification-dutch\";i:1;s:19:\"send-contract-dutch\";i:1;s:39:\"invoice-payment-recorded-to-staff-dutch\";i:1;s:23:\"auto-close-ticket-dutch\";i:1;s:45:\"new-project-discussion-created-to-staff-dutch\";i:1;s:48:\"new-project-discussion-created-to-customer-dutch\";i:1;s:43:\"new-project-file-uploaded-to-customer-dutch\";i:1;s:40:\"new-project-file-uploaded-to-staff-dutch\";i:1;s:48:\"new-project-discussion-comment-to-customer-dutch\";i:1;s:45:\"new-project-discussion-comment-to-staff-dutch\";i:1;s:35:\"staff-added-as-project-member-dutch\";i:1;s:30:\"estimate-expiry-reminder-dutch\";i:1;s:30:\"proposal-expiry-reminder-dutch\";i:1;s:23:\"new-staff-created-dutch\";i:1;s:29:\"contact-forgot-password-dutch\";i:1;s:30:\"contact-password-reseted-dutch\";i:1;s:26:\"contact-set-password-dutch\";i:1;s:27:\"staff-forgot-password-dutch\";i:1;s:28:\"staff-password-reseted-dutch\";i:1;s:25:\"assigned-to-project-dutch\";i:1;s:39:\"task-added-attachment-to-contacts-dutch\";i:1;s:32:\"task-commented-to-contacts-dutch\";i:1;s:23:\"new-lead-assigned-dutch\";i:1;s:22:\"client-statement-dutch\";i:1;s:30:\"ticket-assigned-to-admin-dutch\";i:1;s:36:\"new-client-registered-to-admin-dutch\";i:1;s:36:\"new-web-to-lead-form-submitted-dutch\";i:1;s:31:\"two-factor-authentication-dutch\";i:1;s:34:\"project-finished-to-customer-dutch\";i:1;s:32:\"credit-note-send-to-client-dutch\";i:1;s:33:\"task-status-change-to-staff-dutch\";i:1;s:36:\"task-status-change-to-contacts-dutch\";i:1;s:26:\"reminder-email-staff-dutch\";i:1;s:32:\"contract-comment-to-client-dutch\";i:1;s:31:\"contract-comment-to-admin-dutch\";i:1;s:23:\"send-subscription-dutch\";i:1;s:33:\"subscription-payment-failed-dutch\";i:1;s:27:\"subscription-canceled-dutch\";i:1;s:36:\"subscription-payment-succeeded-dutch\";i:1;s:34:\"contract-expiration-to-staff-dutch\";i:1;s:26:\"gdpr-removal-request-dutch\";i:1;s:31:\"gdpr-removal-request-lead-dutch\";i:1;s:35:\"client-registration-confirmed-dutch\";i:1;s:30:\"contract-signed-to-staff-dutch\";i:1;s:34:\"customer-subscribed-to-staff-dutch\";i:1;s:32:\"contact-verification-email-dutch\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-dutch\";i:1;s:33:\"event-notification-to-staff-dutch\";i:1;s:42:\"subscription-payment-requires-action-dutch\";i:1;s:25:\"new-client-created-french\";i:1;s:29:\"invoice-send-to-client-french\";i:1;s:30:\"new-ticket-opened-admin-french\";i:1;s:19:\"ticket-reply-french\";i:1;s:26:\"ticket-autoresponse-french\";i:1;s:31:\"invoice-payment-recorded-french\";i:1;s:29:\"invoice-overdue-notice-french\";i:1;s:27:\"invoice-already-send-french\";i:1;s:31:\"new-ticket-created-staff-french\";i:1;s:30:\"estimate-send-to-client-french\";i:1;s:28:\"ticket-reply-to-admin-french\";i:1;s:28:\"estimate-already-send-french\";i:1;s:26:\"contract-expiration-french\";i:1;s:20:\"task-assigned-french\";i:1;s:29:\"task-added-as-follower-french\";i:1;s:21:\"task-commented-french\";i:1;s:28:\"task-added-attachment-french\";i:1;s:33:\"estimate-declined-to-staff-french\";i:1;s:33:\"estimate-accepted-to-staff-french\";i:1;s:31:\"proposal-client-accepted-french\";i:1;s:32:\"proposal-send-to-customer-french\";i:1;s:31:\"proposal-client-declined-french\";i:1;s:32:\"proposal-client-thank-you-french\";i:1;s:33:\"proposal-comment-to-client-french\";i:1;s:32:\"proposal-comment-to-admin-french\";i:1;s:37:\"estimate-thank-you-to-customer-french\";i:1;s:33:\"task-deadline-notification-french\";i:1;s:20:\"send-contract-french\";i:1;s:40:\"invoice-payment-recorded-to-staff-french\";i:1;s:24:\"auto-close-ticket-french\";i:1;s:46:\"new-project-discussion-created-to-staff-french\";i:1;s:49:\"new-project-discussion-created-to-customer-french\";i:1;s:44:\"new-project-file-uploaded-to-customer-french\";i:1;s:41:\"new-project-file-uploaded-to-staff-french\";i:1;s:49:\"new-project-discussion-comment-to-customer-french\";i:1;s:46:\"new-project-discussion-comment-to-staff-french\";i:1;s:36:\"staff-added-as-project-member-french\";i:1;s:31:\"estimate-expiry-reminder-french\";i:1;s:31:\"proposal-expiry-reminder-french\";i:1;s:24:\"new-staff-created-french\";i:1;s:30:\"contact-forgot-password-french\";i:1;s:31:\"contact-password-reseted-french\";i:1;s:27:\"contact-set-password-french\";i:1;s:28:\"staff-forgot-password-french\";i:1;s:29:\"staff-password-reseted-french\";i:1;s:26:\"assigned-to-project-french\";i:1;s:40:\"task-added-attachment-to-contacts-french\";i:1;s:33:\"task-commented-to-contacts-french\";i:1;s:24:\"new-lead-assigned-french\";i:1;s:23:\"client-statement-french\";i:1;s:31:\"ticket-assigned-to-admin-french\";i:1;s:37:\"new-client-registered-to-admin-french\";i:1;s:37:\"new-web-to-lead-form-submitted-french\";i:1;s:32:\"two-factor-authentication-french\";i:1;s:35:\"project-finished-to-customer-french\";i:1;s:33:\"credit-note-send-to-client-french\";i:1;s:34:\"task-status-change-to-staff-french\";i:1;s:37:\"task-status-change-to-contacts-french\";i:1;s:27:\"reminder-email-staff-french\";i:1;s:33:\"contract-comment-to-client-french\";i:1;s:32:\"contract-comment-to-admin-french\";i:1;s:24:\"send-subscription-french\";i:1;s:34:\"subscription-payment-failed-french\";i:1;s:28:\"subscription-canceled-french\";i:1;s:37:\"subscription-payment-succeeded-french\";i:1;s:35:\"contract-expiration-to-staff-french\";i:1;s:27:\"gdpr-removal-request-french\";i:1;s:32:\"gdpr-removal-request-lead-french\";i:1;s:36:\"client-registration-confirmed-french\";i:1;s:31:\"contract-signed-to-staff-french\";i:1;s:35:\"customer-subscribed-to-staff-french\";i:1;s:33:\"contact-verification-email-french\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-french\";i:1;s:34:\"event-notification-to-staff-french\";i:1;s:43:\"subscription-payment-requires-action-french\";i:1;s:25:\"new-client-created-german\";i:1;s:29:\"invoice-send-to-client-german\";i:1;s:30:\"new-ticket-opened-admin-german\";i:1;s:19:\"ticket-reply-german\";i:1;s:26:\"ticket-autoresponse-german\";i:1;s:31:\"invoice-payment-recorded-german\";i:1;s:29:\"invoice-overdue-notice-german\";i:1;s:27:\"invoice-already-send-german\";i:1;s:31:\"new-ticket-created-staff-german\";i:1;s:30:\"estimate-send-to-client-german\";i:1;s:28:\"ticket-reply-to-admin-german\";i:1;s:28:\"estimate-already-send-german\";i:1;s:26:\"contract-expiration-german\";i:1;s:20:\"task-assigned-german\";i:1;s:29:\"task-added-as-follower-german\";i:1;s:21:\"task-commented-german\";i:1;s:28:\"task-added-attachment-german\";i:1;s:33:\"estimate-declined-to-staff-german\";i:1;s:33:\"estimate-accepted-to-staff-german\";i:1;s:31:\"proposal-client-accepted-german\";i:1;s:32:\"proposal-send-to-customer-german\";i:1;s:31:\"proposal-client-declined-german\";i:1;s:32:\"proposal-client-thank-you-german\";i:1;s:33:\"proposal-comment-to-client-german\";i:1;s:32:\"proposal-comment-to-admin-german\";i:1;s:37:\"estimate-thank-you-to-customer-german\";i:1;s:33:\"task-deadline-notification-german\";i:1;s:20:\"send-contract-german\";i:1;s:40:\"invoice-payment-recorded-to-staff-german\";i:1;s:24:\"auto-close-ticket-german\";i:1;s:46:\"new-project-discussion-created-to-staff-german\";i:1;s:49:\"new-project-discussion-created-to-customer-german\";i:1;s:44:\"new-project-file-uploaded-to-customer-german\";i:1;s:41:\"new-project-file-uploaded-to-staff-german\";i:1;s:49:\"new-project-discussion-comment-to-customer-german\";i:1;s:46:\"new-project-discussion-comment-to-staff-german\";i:1;s:36:\"staff-added-as-project-member-german\";i:1;s:31:\"estimate-expiry-reminder-german\";i:1;s:31:\"proposal-expiry-reminder-german\";i:1;s:24:\"new-staff-created-german\";i:1;s:30:\"contact-forgot-password-german\";i:1;s:31:\"contact-password-reseted-german\";i:1;s:27:\"contact-set-password-german\";i:1;s:28:\"staff-forgot-password-german\";i:1;s:29:\"staff-password-reseted-german\";i:1;s:26:\"assigned-to-project-german\";i:1;s:40:\"task-added-attachment-to-contacts-german\";i:1;s:33:\"task-commented-to-contacts-german\";i:1;s:24:\"new-lead-assigned-german\";i:1;s:23:\"client-statement-german\";i:1;s:31:\"ticket-assigned-to-admin-german\";i:1;s:37:\"new-client-registered-to-admin-german\";i:1;s:37:\"new-web-to-lead-form-submitted-german\";i:1;s:32:\"two-factor-authentication-german\";i:1;s:35:\"project-finished-to-customer-german\";i:1;s:33:\"credit-note-send-to-client-german\";i:1;s:34:\"task-status-change-to-staff-german\";i:1;s:37:\"task-status-change-to-contacts-german\";i:1;s:27:\"reminder-email-staff-german\";i:1;s:33:\"contract-comment-to-client-german\";i:1;s:32:\"contract-comment-to-admin-german\";i:1;s:24:\"send-subscription-german\";i:1;s:34:\"subscription-payment-failed-german\";i:1;s:28:\"subscription-canceled-german\";i:1;s:37:\"subscription-payment-succeeded-german\";i:1;s:35:\"contract-expiration-to-staff-german\";i:1;s:27:\"gdpr-removal-request-german\";i:1;s:32:\"gdpr-removal-request-lead-german\";i:1;s:36:\"client-registration-confirmed-german\";i:1;s:31:\"contract-signed-to-staff-german\";i:1;s:35:\"customer-subscribed-to-staff-german\";i:1;s:33:\"contact-verification-email-german\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-german\";i:1;s:34:\"event-notification-to-staff-german\";i:1;s:43:\"subscription-payment-requires-action-german\";i:1;s:24:\"new-client-created-greek\";i:1;s:28:\"invoice-send-to-client-greek\";i:1;s:29:\"new-ticket-opened-admin-greek\";i:1;s:18:\"ticket-reply-greek\";i:1;s:25:\"ticket-autoresponse-greek\";i:1;s:30:\"invoice-payment-recorded-greek\";i:1;s:28:\"invoice-overdue-notice-greek\";i:1;s:26:\"invoice-already-send-greek\";i:1;s:30:\"new-ticket-created-staff-greek\";i:1;s:29:\"estimate-send-to-client-greek\";i:1;s:27:\"ticket-reply-to-admin-greek\";i:1;s:27:\"estimate-already-send-greek\";i:1;s:25:\"contract-expiration-greek\";i:1;s:19:\"task-assigned-greek\";i:1;s:28:\"task-added-as-follower-greek\";i:1;s:20:\"task-commented-greek\";i:1;s:27:\"task-added-attachment-greek\";i:1;s:32:\"estimate-declined-to-staff-greek\";i:1;s:32:\"estimate-accepted-to-staff-greek\";i:1;s:30:\"proposal-client-accepted-greek\";i:1;s:31:\"proposal-send-to-customer-greek\";i:1;s:30:\"proposal-client-declined-greek\";i:1;s:31:\"proposal-client-thank-you-greek\";i:1;s:32:\"proposal-comment-to-client-greek\";i:1;s:31:\"proposal-comment-to-admin-greek\";i:1;s:36:\"estimate-thank-you-to-customer-greek\";i:1;s:32:\"task-deadline-notification-greek\";i:1;s:19:\"send-contract-greek\";i:1;s:39:\"invoice-payment-recorded-to-staff-greek\";i:1;s:23:\"auto-close-ticket-greek\";i:1;s:45:\"new-project-discussion-created-to-staff-greek\";i:1;s:48:\"new-project-discussion-created-to-customer-greek\";i:1;s:43:\"new-project-file-uploaded-to-customer-greek\";i:1;s:40:\"new-project-file-uploaded-to-staff-greek\";i:1;s:48:\"new-project-discussion-comment-to-customer-greek\";i:1;s:45:\"new-project-discussion-comment-to-staff-greek\";i:1;s:35:\"staff-added-as-project-member-greek\";i:1;s:30:\"estimate-expiry-reminder-greek\";i:1;s:30:\"proposal-expiry-reminder-greek\";i:1;s:23:\"new-staff-created-greek\";i:1;s:29:\"contact-forgot-password-greek\";i:1;s:30:\"contact-password-reseted-greek\";i:1;s:26:\"contact-set-password-greek\";i:1;s:27:\"staff-forgot-password-greek\";i:1;s:28:\"staff-password-reseted-greek\";i:1;s:25:\"assigned-to-project-greek\";i:1;s:39:\"task-added-attachment-to-contacts-greek\";i:1;s:32:\"task-commented-to-contacts-greek\";i:1;s:23:\"new-lead-assigned-greek\";i:1;s:22:\"client-statement-greek\";i:1;s:30:\"ticket-assigned-to-admin-greek\";i:1;s:36:\"new-client-registered-to-admin-greek\";i:1;s:36:\"new-web-to-lead-form-submitted-greek\";i:1;s:31:\"two-factor-authentication-greek\";i:1;s:34:\"project-finished-to-customer-greek\";i:1;s:32:\"credit-note-send-to-client-greek\";i:1;s:33:\"task-status-change-to-staff-greek\";i:1;s:36:\"task-status-change-to-contacts-greek\";i:1;s:26:\"reminder-email-staff-greek\";i:1;s:32:\"contract-comment-to-client-greek\";i:1;s:31:\"contract-comment-to-admin-greek\";i:1;s:23:\"send-subscription-greek\";i:1;s:33:\"subscription-payment-failed-greek\";i:1;s:27:\"subscription-canceled-greek\";i:1;s:36:\"subscription-payment-succeeded-greek\";i:1;s:34:\"contract-expiration-to-staff-greek\";i:1;s:26:\"gdpr-removal-request-greek\";i:1;s:31:\"gdpr-removal-request-lead-greek\";i:1;s:35:\"client-registration-confirmed-greek\";i:1;s:30:\"contract-signed-to-staff-greek\";i:1;s:34:\"customer-subscribed-to-staff-greek\";i:1;s:32:\"contact-verification-email-greek\";i:1;s:49:\"new-customer-profile-file-uploaded-to-staff-greek\";i:1;s:33:\"event-notification-to-staff-greek\";i:1;s:42:\"subscription-payment-requires-action-greek\";i:1;s:28:\"new-client-created-indonesia\";i:1;s:32:\"invoice-send-to-client-indonesia\";i:1;s:33:\"new-ticket-opened-admin-indonesia\";i:1;s:22:\"ticket-reply-indonesia\";i:1;s:29:\"ticket-autoresponse-indonesia\";i:1;s:34:\"invoice-payment-recorded-indonesia\";i:1;s:32:\"invoice-overdue-notice-indonesia\";i:1;s:30:\"invoice-already-send-indonesia\";i:1;s:34:\"new-ticket-created-staff-indonesia\";i:1;s:33:\"estimate-send-to-client-indonesia\";i:1;s:31:\"ticket-reply-to-admin-indonesia\";i:1;s:31:\"estimate-already-send-indonesia\";i:1;s:29:\"contract-expiration-indonesia\";i:1;s:23:\"task-assigned-indonesia\";i:1;s:32:\"task-added-as-follower-indonesia\";i:1;s:24:\"task-commented-indonesia\";i:1;s:31:\"task-added-attachment-indonesia\";i:1;s:36:\"estimate-declined-to-staff-indonesia\";i:1;s:36:\"estimate-accepted-to-staff-indonesia\";i:1;s:34:\"proposal-client-accepted-indonesia\";i:1;s:35:\"proposal-send-to-customer-indonesia\";i:1;s:34:\"proposal-client-declined-indonesia\";i:1;s:35:\"proposal-client-thank-you-indonesia\";i:1;s:36:\"proposal-comment-to-client-indonesia\";i:1;s:35:\"proposal-comment-to-admin-indonesia\";i:1;s:40:\"estimate-thank-you-to-customer-indonesia\";i:1;s:36:\"task-deadline-notification-indonesia\";i:1;s:23:\"send-contract-indonesia\";i:1;s:43:\"invoice-payment-recorded-to-staff-indonesia\";i:1;s:27:\"auto-close-ticket-indonesia\";i:1;s:49:\"new-project-discussion-created-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-created-to-customer-indonesia\";i:1;s:47:\"new-project-file-uploaded-to-customer-indonesia\";i:1;s:44:\"new-project-file-uploaded-to-staff-indonesia\";i:1;s:52:\"new-project-discussion-comment-to-customer-indonesia\";i:1;s:49:\"new-project-discussion-comment-to-staff-indonesia\";i:1;s:39:\"staff-added-as-project-member-indonesia\";i:1;s:34:\"estimate-expiry-reminder-indonesia\";i:1;s:34:\"proposal-expiry-reminder-indonesia\";i:1;s:27:\"new-staff-created-indonesia\";i:1;s:33:\"contact-forgot-password-indonesia\";i:1;s:34:\"contact-password-reseted-indonesia\";i:1;s:30:\"contact-set-password-indonesia\";i:1;s:31:\"staff-forgot-password-indonesia\";i:1;s:32:\"staff-password-reseted-indonesia\";i:1;s:29:\"assigned-to-project-indonesia\";i:1;s:43:\"task-added-attachment-to-contacts-indonesia\";i:1;s:36:\"task-commented-to-contacts-indonesia\";i:1;s:27:\"new-lead-assigned-indonesia\";i:1;s:26:\"client-statement-indonesia\";i:1;s:34:\"ticket-assigned-to-admin-indonesia\";i:1;s:40:\"new-client-registered-to-admin-indonesia\";i:1;s:40:\"new-web-to-lead-form-submitted-indonesia\";i:1;s:35:\"two-factor-authentication-indonesia\";i:1;s:38:\"project-finished-to-customer-indonesia\";i:1;s:36:\"credit-note-send-to-client-indonesia\";i:1;s:37:\"task-status-change-to-staff-indonesia\";i:1;s:40:\"task-status-change-to-contacts-indonesia\";i:1;s:30:\"reminder-email-staff-indonesia\";i:1;s:36:\"contract-comment-to-client-indonesia\";i:1;s:35:\"contract-comment-to-admin-indonesia\";i:1;s:27:\"send-subscription-indonesia\";i:1;s:37:\"subscription-payment-failed-indonesia\";i:1;s:31:\"subscription-canceled-indonesia\";i:1;s:40:\"subscription-payment-succeeded-indonesia\";i:1;s:38:\"contract-expiration-to-staff-indonesia\";i:1;s:30:\"gdpr-removal-request-indonesia\";i:1;s:35:\"gdpr-removal-request-lead-indonesia\";i:1;s:39:\"client-registration-confirmed-indonesia\";i:1;s:34:\"contract-signed-to-staff-indonesia\";i:1;s:38:\"customer-subscribed-to-staff-indonesia\";i:1;s:36:\"contact-verification-email-indonesia\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-indonesia\";i:1;s:37:\"event-notification-to-staff-indonesia\";i:1;s:46:\"subscription-payment-requires-action-indonesia\";i:1;s:26:\"new-client-created-italian\";i:1;s:30:\"invoice-send-to-client-italian\";i:1;s:31:\"new-ticket-opened-admin-italian\";i:1;s:20:\"ticket-reply-italian\";i:1;s:27:\"ticket-autoresponse-italian\";i:1;s:32:\"invoice-payment-recorded-italian\";i:1;s:30:\"invoice-overdue-notice-italian\";i:1;s:28:\"invoice-already-send-italian\";i:1;s:32:\"new-ticket-created-staff-italian\";i:1;s:31:\"estimate-send-to-client-italian\";i:1;s:29:\"ticket-reply-to-admin-italian\";i:1;s:29:\"estimate-already-send-italian\";i:1;s:27:\"contract-expiration-italian\";i:1;s:21:\"task-assigned-italian\";i:1;s:30:\"task-added-as-follower-italian\";i:1;s:22:\"task-commented-italian\";i:1;s:29:\"task-added-attachment-italian\";i:1;s:34:\"estimate-declined-to-staff-italian\";i:1;s:34:\"estimate-accepted-to-staff-italian\";i:1;s:32:\"proposal-client-accepted-italian\";i:1;s:33:\"proposal-send-to-customer-italian\";i:1;s:32:\"proposal-client-declined-italian\";i:1;s:33:\"proposal-client-thank-you-italian\";i:1;s:34:\"proposal-comment-to-client-italian\";i:1;s:33:\"proposal-comment-to-admin-italian\";i:1;s:38:\"estimate-thank-you-to-customer-italian\";i:1;s:34:\"task-deadline-notification-italian\";i:1;s:21:\"send-contract-italian\";i:1;s:41:\"invoice-payment-recorded-to-staff-italian\";i:1;s:25:\"auto-close-ticket-italian\";i:1;s:47:\"new-project-discussion-created-to-staff-italian\";i:1;s:50:\"new-project-discussion-created-to-customer-italian\";i:1;s:45:\"new-project-file-uploaded-to-customer-italian\";i:1;s:42:\"new-project-file-uploaded-to-staff-italian\";i:1;s:50:\"new-project-discussion-comment-to-customer-italian\";i:1;s:47:\"new-project-discussion-comment-to-staff-italian\";i:1;s:37:\"staff-added-as-project-member-italian\";i:1;s:32:\"estimate-expiry-reminder-italian\";i:1;s:32:\"proposal-expiry-reminder-italian\";i:1;s:25:\"new-staff-created-italian\";i:1;s:31:\"contact-forgot-password-italian\";i:1;s:32:\"contact-password-reseted-italian\";i:1;s:28:\"contact-set-password-italian\";i:1;s:29:\"staff-forgot-password-italian\";i:1;s:30:\"staff-password-reseted-italian\";i:1;s:27:\"assigned-to-project-italian\";i:1;s:41:\"task-added-attachment-to-contacts-italian\";i:1;s:34:\"task-commented-to-contacts-italian\";i:1;s:25:\"new-lead-assigned-italian\";i:1;s:24:\"client-statement-italian\";i:1;s:32:\"ticket-assigned-to-admin-italian\";i:1;s:38:\"new-client-registered-to-admin-italian\";i:1;s:38:\"new-web-to-lead-form-submitted-italian\";i:1;s:33:\"two-factor-authentication-italian\";i:1;s:36:\"project-finished-to-customer-italian\";i:1;s:34:\"credit-note-send-to-client-italian\";i:1;s:35:\"task-status-change-to-staff-italian\";i:1;s:38:\"task-status-change-to-contacts-italian\";i:1;s:28:\"reminder-email-staff-italian\";i:1;s:34:\"contract-comment-to-client-italian\";i:1;s:33:\"contract-comment-to-admin-italian\";i:1;s:25:\"send-subscription-italian\";i:1;s:35:\"subscription-payment-failed-italian\";i:1;s:29:\"subscription-canceled-italian\";i:1;s:38:\"subscription-payment-succeeded-italian\";i:1;s:36:\"contract-expiration-to-staff-italian\";i:1;s:28:\"gdpr-removal-request-italian\";i:1;s:33:\"gdpr-removal-request-lead-italian\";i:1;s:37:\"client-registration-confirmed-italian\";i:1;s:32:\"contract-signed-to-staff-italian\";i:1;s:36:\"customer-subscribed-to-staff-italian\";i:1;s:34:\"contact-verification-email-italian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-italian\";i:1;s:35:\"event-notification-to-staff-italian\";i:1;s:44:\"subscription-payment-requires-action-italian\";i:1;s:27:\"new-client-created-japanese\";i:1;s:31:\"invoice-send-to-client-japanese\";i:1;s:32:\"new-ticket-opened-admin-japanese\";i:1;s:21:\"ticket-reply-japanese\";i:1;s:28:\"ticket-autoresponse-japanese\";i:1;s:33:\"invoice-payment-recorded-japanese\";i:1;s:31:\"invoice-overdue-notice-japanese\";i:1;s:29:\"invoice-already-send-japanese\";i:1;s:33:\"new-ticket-created-staff-japanese\";i:1;s:32:\"estimate-send-to-client-japanese\";i:1;s:30:\"ticket-reply-to-admin-japanese\";i:1;s:30:\"estimate-already-send-japanese\";i:1;s:28:\"contract-expiration-japanese\";i:1;s:22:\"task-assigned-japanese\";i:1;s:31:\"task-added-as-follower-japanese\";i:1;s:23:\"task-commented-japanese\";i:1;s:30:\"task-added-attachment-japanese\";i:1;s:35:\"estimate-declined-to-staff-japanese\";i:1;s:35:\"estimate-accepted-to-staff-japanese\";i:1;s:33:\"proposal-client-accepted-japanese\";i:1;s:34:\"proposal-send-to-customer-japanese\";i:1;s:33:\"proposal-client-declined-japanese\";i:1;s:34:\"proposal-client-thank-you-japanese\";i:1;s:35:\"proposal-comment-to-client-japanese\";i:1;s:34:\"proposal-comment-to-admin-japanese\";i:1;s:39:\"estimate-thank-you-to-customer-japanese\";i:1;s:35:\"task-deadline-notification-japanese\";i:1;s:22:\"send-contract-japanese\";i:1;s:42:\"invoice-payment-recorded-to-staff-japanese\";i:1;s:26:\"auto-close-ticket-japanese\";i:1;s:48:\"new-project-discussion-created-to-staff-japanese\";i:1;s:51:\"new-project-discussion-created-to-customer-japanese\";i:1;s:46:\"new-project-file-uploaded-to-customer-japanese\";i:1;s:43:\"new-project-file-uploaded-to-staff-japanese\";i:1;s:51:\"new-project-discussion-comment-to-customer-japanese\";i:1;s:48:\"new-project-discussion-comment-to-staff-japanese\";i:1;s:38:\"staff-added-as-project-member-japanese\";i:1;s:33:\"estimate-expiry-reminder-japanese\";i:1;s:33:\"proposal-expiry-reminder-japanese\";i:1;s:26:\"new-staff-created-japanese\";i:1;s:32:\"contact-forgot-password-japanese\";i:1;s:33:\"contact-password-reseted-japanese\";i:1;s:29:\"contact-set-password-japanese\";i:1;s:30:\"staff-forgot-password-japanese\";i:1;s:31:\"staff-password-reseted-japanese\";i:1;s:28:\"assigned-to-project-japanese\";i:1;s:42:\"task-added-attachment-to-contacts-japanese\";i:1;s:35:\"task-commented-to-contacts-japanese\";i:1;s:26:\"new-lead-assigned-japanese\";i:1;s:25:\"client-statement-japanese\";i:1;s:33:\"ticket-assigned-to-admin-japanese\";i:1;s:39:\"new-client-registered-to-admin-japanese\";i:1;s:39:\"new-web-to-lead-form-submitted-japanese\";i:1;s:34:\"two-factor-authentication-japanese\";i:1;s:37:\"project-finished-to-customer-japanese\";i:1;s:35:\"credit-note-send-to-client-japanese\";i:1;s:36:\"task-status-change-to-staff-japanese\";i:1;s:39:\"task-status-change-to-contacts-japanese\";i:1;s:29:\"reminder-email-staff-japanese\";i:1;s:35:\"contract-comment-to-client-japanese\";i:1;s:34:\"contract-comment-to-admin-japanese\";i:1;s:26:\"send-subscription-japanese\";i:1;s:36:\"subscription-payment-failed-japanese\";i:1;s:30:\"subscription-canceled-japanese\";i:1;s:39:\"subscription-payment-succeeded-japanese\";i:1;s:37:\"contract-expiration-to-staff-japanese\";i:1;s:29:\"gdpr-removal-request-japanese\";i:1;s:34:\"gdpr-removal-request-lead-japanese\";i:1;s:38:\"client-registration-confirmed-japanese\";i:1;s:33:\"contract-signed-to-staff-japanese\";i:1;s:37:\"customer-subscribed-to-staff-japanese\";i:1;s:35:\"contact-verification-email-japanese\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-japanese\";i:1;s:36:\"event-notification-to-staff-japanese\";i:1;s:45:\"subscription-payment-requires-action-japanese\";i:1;s:26:\"new-client-created-persian\";i:1;s:30:\"invoice-send-to-client-persian\";i:1;s:31:\"new-ticket-opened-admin-persian\";i:1;s:20:\"ticket-reply-persian\";i:1;s:27:\"ticket-autoresponse-persian\";i:1;s:32:\"invoice-payment-recorded-persian\";i:1;s:30:\"invoice-overdue-notice-persian\";i:1;s:28:\"invoice-already-send-persian\";i:1;s:32:\"new-ticket-created-staff-persian\";i:1;s:31:\"estimate-send-to-client-persian\";i:1;s:29:\"ticket-reply-to-admin-persian\";i:1;s:29:\"estimate-already-send-persian\";i:1;s:27:\"contract-expiration-persian\";i:1;s:21:\"task-assigned-persian\";i:1;s:30:\"task-added-as-follower-persian\";i:1;s:22:\"task-commented-persian\";i:1;s:29:\"task-added-attachment-persian\";i:1;s:34:\"estimate-declined-to-staff-persian\";i:1;s:34:\"estimate-accepted-to-staff-persian\";i:1;s:32:\"proposal-client-accepted-persian\";i:1;s:33:\"proposal-send-to-customer-persian\";i:1;s:32:\"proposal-client-declined-persian\";i:1;s:33:\"proposal-client-thank-you-persian\";i:1;s:34:\"proposal-comment-to-client-persian\";i:1;s:33:\"proposal-comment-to-admin-persian\";i:1;s:38:\"estimate-thank-you-to-customer-persian\";i:1;s:34:\"task-deadline-notification-persian\";i:1;s:21:\"send-contract-persian\";i:1;s:41:\"invoice-payment-recorded-to-staff-persian\";i:1;s:25:\"auto-close-ticket-persian\";i:1;s:47:\"new-project-discussion-created-to-staff-persian\";i:1;s:50:\"new-project-discussion-created-to-customer-persian\";i:1;s:45:\"new-project-file-uploaded-to-customer-persian\";i:1;s:42:\"new-project-file-uploaded-to-staff-persian\";i:1;s:50:\"new-project-discussion-comment-to-customer-persian\";i:1;s:47:\"new-project-discussion-comment-to-staff-persian\";i:1;s:37:\"staff-added-as-project-member-persian\";i:1;s:32:\"estimate-expiry-reminder-persian\";i:1;s:32:\"proposal-expiry-reminder-persian\";i:1;s:25:\"new-staff-created-persian\";i:1;s:31:\"contact-forgot-password-persian\";i:1;s:32:\"contact-password-reseted-persian\";i:1;s:28:\"contact-set-password-persian\";i:1;s:29:\"staff-forgot-password-persian\";i:1;s:30:\"staff-password-reseted-persian\";i:1;s:27:\"assigned-to-project-persian\";i:1;s:41:\"task-added-attachment-to-contacts-persian\";i:1;s:34:\"task-commented-to-contacts-persian\";i:1;s:25:\"new-lead-assigned-persian\";i:1;s:24:\"client-statement-persian\";i:1;s:32:\"ticket-assigned-to-admin-persian\";i:1;s:38:\"new-client-registered-to-admin-persian\";i:1;s:38:\"new-web-to-lead-form-submitted-persian\";i:1;s:33:\"two-factor-authentication-persian\";i:1;s:36:\"project-finished-to-customer-persian\";i:1;s:34:\"credit-note-send-to-client-persian\";i:1;s:35:\"task-status-change-to-staff-persian\";i:1;s:38:\"task-status-change-to-contacts-persian\";i:1;s:28:\"reminder-email-staff-persian\";i:1;s:34:\"contract-comment-to-client-persian\";i:1;s:33:\"contract-comment-to-admin-persian\";i:1;s:25:\"send-subscription-persian\";i:1;s:35:\"subscription-payment-failed-persian\";i:1;s:29:\"subscription-canceled-persian\";i:1;s:38:\"subscription-payment-succeeded-persian\";i:1;s:36:\"contract-expiration-to-staff-persian\";i:1;s:28:\"gdpr-removal-request-persian\";i:1;s:33:\"gdpr-removal-request-lead-persian\";i:1;s:37:\"client-registration-confirmed-persian\";i:1;s:32:\"contract-signed-to-staff-persian\";i:1;s:36:\"customer-subscribed-to-staff-persian\";i:1;s:34:\"contact-verification-email-persian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-persian\";i:1;s:35:\"event-notification-to-staff-persian\";i:1;s:44:\"subscription-payment-requires-action-persian\";i:1;s:25:\"new-client-created-polish\";i:1;s:29:\"invoice-send-to-client-polish\";i:1;s:30:\"new-ticket-opened-admin-polish\";i:1;s:19:\"ticket-reply-polish\";i:1;s:26:\"ticket-autoresponse-polish\";i:1;s:31:\"invoice-payment-recorded-polish\";i:1;s:29:\"invoice-overdue-notice-polish\";i:1;s:27:\"invoice-already-send-polish\";i:1;s:31:\"new-ticket-created-staff-polish\";i:1;s:30:\"estimate-send-to-client-polish\";i:1;s:28:\"ticket-reply-to-admin-polish\";i:1;s:28:\"estimate-already-send-polish\";i:1;s:26:\"contract-expiration-polish\";i:1;s:20:\"task-assigned-polish\";i:1;s:29:\"task-added-as-follower-polish\";i:1;s:21:\"task-commented-polish\";i:1;s:28:\"task-added-attachment-polish\";i:1;s:33:\"estimate-declined-to-staff-polish\";i:1;s:33:\"estimate-accepted-to-staff-polish\";i:1;s:31:\"proposal-client-accepted-polish\";i:1;s:32:\"proposal-send-to-customer-polish\";i:1;s:31:\"proposal-client-declined-polish\";i:1;s:32:\"proposal-client-thank-you-polish\";i:1;s:33:\"proposal-comment-to-client-polish\";i:1;s:32:\"proposal-comment-to-admin-polish\";i:1;s:37:\"estimate-thank-you-to-customer-polish\";i:1;s:33:\"task-deadline-notification-polish\";i:1;s:20:\"send-contract-polish\";i:1;s:40:\"invoice-payment-recorded-to-staff-polish\";i:1;s:24:\"auto-close-ticket-polish\";i:1;s:46:\"new-project-discussion-created-to-staff-polish\";i:1;s:49:\"new-project-discussion-created-to-customer-polish\";i:1;s:44:\"new-project-file-uploaded-to-customer-polish\";i:1;s:41:\"new-project-file-uploaded-to-staff-polish\";i:1;s:49:\"new-project-discussion-comment-to-customer-polish\";i:1;s:46:\"new-project-discussion-comment-to-staff-polish\";i:1;s:36:\"staff-added-as-project-member-polish\";i:1;s:31:\"estimate-expiry-reminder-polish\";i:1;s:31:\"proposal-expiry-reminder-polish\";i:1;s:24:\"new-staff-created-polish\";i:1;s:30:\"contact-forgot-password-polish\";i:1;s:31:\"contact-password-reseted-polish\";i:1;s:27:\"contact-set-password-polish\";i:1;s:28:\"staff-forgot-password-polish\";i:1;s:29:\"staff-password-reseted-polish\";i:1;s:26:\"assigned-to-project-polish\";i:1;s:40:\"task-added-attachment-to-contacts-polish\";i:1;s:33:\"task-commented-to-contacts-polish\";i:1;s:24:\"new-lead-assigned-polish\";i:1;s:23:\"client-statement-polish\";i:1;s:31:\"ticket-assigned-to-admin-polish\";i:1;s:37:\"new-client-registered-to-admin-polish\";i:1;s:37:\"new-web-to-lead-form-submitted-polish\";i:1;s:32:\"two-factor-authentication-polish\";i:1;s:35:\"project-finished-to-customer-polish\";i:1;s:33:\"credit-note-send-to-client-polish\";i:1;s:34:\"task-status-change-to-staff-polish\";i:1;s:37:\"task-status-change-to-contacts-polish\";i:1;s:27:\"reminder-email-staff-polish\";i:1;s:33:\"contract-comment-to-client-polish\";i:1;s:32:\"contract-comment-to-admin-polish\";i:1;s:24:\"send-subscription-polish\";i:1;s:34:\"subscription-payment-failed-polish\";i:1;s:28:\"subscription-canceled-polish\";i:1;s:37:\"subscription-payment-succeeded-polish\";i:1;s:35:\"contract-expiration-to-staff-polish\";i:1;s:27:\"gdpr-removal-request-polish\";i:1;s:32:\"gdpr-removal-request-lead-polish\";i:1;s:36:\"client-registration-confirmed-polish\";i:1;s:31:\"contract-signed-to-staff-polish\";i:1;s:35:\"customer-subscribed-to-staff-polish\";i:1;s:33:\"contact-verification-email-polish\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-polish\";i:1;s:34:\"event-notification-to-staff-polish\";i:1;s:43:\"subscription-payment-requires-action-polish\";i:1;s:29:\"new-client-created-portuguese\";i:1;s:33:\"invoice-send-to-client-portuguese\";i:1;s:34:\"new-ticket-opened-admin-portuguese\";i:1;s:23:\"ticket-reply-portuguese\";i:1;s:30:\"ticket-autoresponse-portuguese\";i:1;s:35:\"invoice-payment-recorded-portuguese\";i:1;s:33:\"invoice-overdue-notice-portuguese\";i:1;s:31:\"invoice-already-send-portuguese\";i:1;s:35:\"new-ticket-created-staff-portuguese\";i:1;s:34:\"estimate-send-to-client-portuguese\";i:1;s:32:\"ticket-reply-to-admin-portuguese\";i:1;s:32:\"estimate-already-send-portuguese\";i:1;s:30:\"contract-expiration-portuguese\";i:1;s:24:\"task-assigned-portuguese\";i:1;s:33:\"task-added-as-follower-portuguese\";i:1;s:25:\"task-commented-portuguese\";i:1;s:32:\"task-added-attachment-portuguese\";i:1;s:37:\"estimate-declined-to-staff-portuguese\";i:1;s:37:\"estimate-accepted-to-staff-portuguese\";i:1;s:35:\"proposal-client-accepted-portuguese\";i:1;s:36:\"proposal-send-to-customer-portuguese\";i:1;s:35:\"proposal-client-declined-portuguese\";i:1;s:36:\"proposal-client-thank-you-portuguese\";i:1;s:37:\"proposal-comment-to-client-portuguese\";i:1;s:36:\"proposal-comment-to-admin-portuguese\";i:1;s:41:\"estimate-thank-you-to-customer-portuguese\";i:1;s:37:\"task-deadline-notification-portuguese\";i:1;s:24:\"send-contract-portuguese\";i:1;s:44:\"invoice-payment-recorded-to-staff-portuguese\";i:1;s:28:\"auto-close-ticket-portuguese\";i:1;s:50:\"new-project-discussion-created-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-created-to-customer-portuguese\";i:1;s:48:\"new-project-file-uploaded-to-customer-portuguese\";i:1;s:45:\"new-project-file-uploaded-to-staff-portuguese\";i:1;s:53:\"new-project-discussion-comment-to-customer-portuguese\";i:1;s:50:\"new-project-discussion-comment-to-staff-portuguese\";i:1;s:40:\"staff-added-as-project-member-portuguese\";i:1;s:35:\"estimate-expiry-reminder-portuguese\";i:1;s:35:\"proposal-expiry-reminder-portuguese\";i:1;s:28:\"new-staff-created-portuguese\";i:1;s:34:\"contact-forgot-password-portuguese\";i:1;s:35:\"contact-password-reseted-portuguese\";i:1;s:31:\"contact-set-password-portuguese\";i:1;s:32:\"staff-forgot-password-portuguese\";i:1;s:33:\"staff-password-reseted-portuguese\";i:1;s:30:\"assigned-to-project-portuguese\";i:1;s:44:\"task-added-attachment-to-contacts-portuguese\";i:1;s:37:\"task-commented-to-contacts-portuguese\";i:1;s:28:\"new-lead-assigned-portuguese\";i:1;s:27:\"client-statement-portuguese\";i:1;s:35:\"ticket-assigned-to-admin-portuguese\";i:1;s:41:\"new-client-registered-to-admin-portuguese\";i:1;s:41:\"new-web-to-lead-form-submitted-portuguese\";i:1;s:36:\"two-factor-authentication-portuguese\";i:1;s:39:\"project-finished-to-customer-portuguese\";i:1;s:37:\"credit-note-send-to-client-portuguese\";i:1;s:38:\"task-status-change-to-staff-portuguese\";i:1;s:41:\"task-status-change-to-contacts-portuguese\";i:1;s:31:\"reminder-email-staff-portuguese\";i:1;s:37:\"contract-comment-to-client-portuguese\";i:1;s:36:\"contract-comment-to-admin-portuguese\";i:1;s:28:\"send-subscription-portuguese\";i:1;s:38:\"subscription-payment-failed-portuguese\";i:1;s:32:\"subscription-canceled-portuguese\";i:1;s:41:\"subscription-payment-succeeded-portuguese\";i:1;s:39:\"contract-expiration-to-staff-portuguese\";i:1;s:31:\"gdpr-removal-request-portuguese\";i:1;s:36:\"gdpr-removal-request-lead-portuguese\";i:1;s:40:\"client-registration-confirmed-portuguese\";i:1;s:35:\"contract-signed-to-staff-portuguese\";i:1;s:39:\"customer-subscribed-to-staff-portuguese\";i:1;s:37:\"contact-verification-email-portuguese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-portuguese\";i:1;s:38:\"event-notification-to-staff-portuguese\";i:1;s:47:\"subscription-payment-requires-action-portuguese\";i:1;s:32:\"new-client-created-portuguese_br\";i:1;s:36:\"invoice-send-to-client-portuguese_br\";i:1;s:37:\"new-ticket-opened-admin-portuguese_br\";i:1;s:26:\"ticket-reply-portuguese_br\";i:1;s:33:\"ticket-autoresponse-portuguese_br\";i:1;s:38:\"invoice-payment-recorded-portuguese_br\";i:1;s:36:\"invoice-overdue-notice-portuguese_br\";i:1;s:34:\"invoice-already-send-portuguese_br\";i:1;s:38:\"new-ticket-created-staff-portuguese_br\";i:1;s:37:\"estimate-send-to-client-portuguese_br\";i:1;s:35:\"ticket-reply-to-admin-portuguese_br\";i:1;s:35:\"estimate-already-send-portuguese_br\";i:1;s:33:\"contract-expiration-portuguese_br\";i:1;s:27:\"task-assigned-portuguese_br\";i:1;s:36:\"task-added-as-follower-portuguese_br\";i:1;s:28:\"task-commented-portuguese_br\";i:1;s:35:\"task-added-attachment-portuguese_br\";i:1;s:40:\"estimate-declined-to-staff-portuguese_br\";i:1;s:40:\"estimate-accepted-to-staff-portuguese_br\";i:1;s:38:\"proposal-client-accepted-portuguese_br\";i:1;s:39:\"proposal-send-to-customer-portuguese_br\";i:1;s:38:\"proposal-client-declined-portuguese_br\";i:1;s:39:\"proposal-client-thank-you-portuguese_br\";i:1;s:40:\"proposal-comment-to-client-portuguese_br\";i:1;s:39:\"proposal-comment-to-admin-portuguese_br\";i:1;s:44:\"estimate-thank-you-to-customer-portuguese_br\";i:1;s:40:\"task-deadline-notification-portuguese_br\";i:1;s:27:\"send-contract-portuguese_br\";i:1;s:47:\"invoice-payment-recorded-to-staff-portuguese_br\";i:1;s:31:\"auto-close-ticket-portuguese_br\";i:1;s:53:\"new-project-discussion-created-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-created-to-customer-portuguese_br\";i:1;s:51:\"new-project-file-uploaded-to-customer-portuguese_br\";i:1;s:48:\"new-project-file-uploaded-to-staff-portuguese_br\";i:1;s:56:\"new-project-discussion-comment-to-customer-portuguese_br\";i:1;s:53:\"new-project-discussion-comment-to-staff-portuguese_br\";i:1;s:43:\"staff-added-as-project-member-portuguese_br\";i:1;s:38:\"estimate-expiry-reminder-portuguese_br\";i:1;s:38:\"proposal-expiry-reminder-portuguese_br\";i:1;s:31:\"new-staff-created-portuguese_br\";i:1;s:37:\"contact-forgot-password-portuguese_br\";i:1;s:38:\"contact-password-reseted-portuguese_br\";i:1;s:34:\"contact-set-password-portuguese_br\";i:1;s:35:\"staff-forgot-password-portuguese_br\";i:1;s:36:\"staff-password-reseted-portuguese_br\";i:1;s:33:\"assigned-to-project-portuguese_br\";i:1;s:47:\"task-added-attachment-to-contacts-portuguese_br\";i:1;s:40:\"task-commented-to-contacts-portuguese_br\";i:1;s:31:\"new-lead-assigned-portuguese_br\";i:1;s:30:\"client-statement-portuguese_br\";i:1;s:38:\"ticket-assigned-to-admin-portuguese_br\";i:1;s:44:\"new-client-registered-to-admin-portuguese_br\";i:1;s:44:\"new-web-to-lead-form-submitted-portuguese_br\";i:1;s:39:\"two-factor-authentication-portuguese_br\";i:1;s:42:\"project-finished-to-customer-portuguese_br\";i:1;s:40:\"credit-note-send-to-client-portuguese_br\";i:1;s:41:\"task-status-change-to-staff-portuguese_br\";i:1;s:44:\"task-status-change-to-contacts-portuguese_br\";i:1;s:34:\"reminder-email-staff-portuguese_br\";i:1;s:40:\"contract-comment-to-client-portuguese_br\";i:1;s:39:\"contract-comment-to-admin-portuguese_br\";i:1;s:31:\"send-subscription-portuguese_br\";i:1;s:41:\"subscription-payment-failed-portuguese_br\";i:1;s:35:\"subscription-canceled-portuguese_br\";i:1;s:44:\"subscription-payment-succeeded-portuguese_br\";i:1;s:42:\"contract-expiration-to-staff-portuguese_br\";i:1;s:34:\"gdpr-removal-request-portuguese_br\";i:1;s:39:\"gdpr-removal-request-lead-portuguese_br\";i:1;s:43:\"client-registration-confirmed-portuguese_br\";i:1;s:38:\"contract-signed-to-staff-portuguese_br\";i:1;s:42:\"customer-subscribed-to-staff-portuguese_br\";i:1;s:40:\"contact-verification-email-portuguese_br\";i:1;s:57:\"new-customer-profile-file-uploaded-to-staff-portuguese_br\";i:1;s:41:\"event-notification-to-staff-portuguese_br\";i:1;s:50:\"subscription-payment-requires-action-portuguese_br\";i:1;s:27:\"new-client-created-romanian\";i:1;s:31:\"invoice-send-to-client-romanian\";i:1;s:32:\"new-ticket-opened-admin-romanian\";i:1;s:21:\"ticket-reply-romanian\";i:1;s:28:\"ticket-autoresponse-romanian\";i:1;s:33:\"invoice-payment-recorded-romanian\";i:1;s:31:\"invoice-overdue-notice-romanian\";i:1;s:29:\"invoice-already-send-romanian\";i:1;s:33:\"new-ticket-created-staff-romanian\";i:1;s:32:\"estimate-send-to-client-romanian\";i:1;s:30:\"ticket-reply-to-admin-romanian\";i:1;s:30:\"estimate-already-send-romanian\";i:1;s:28:\"contract-expiration-romanian\";i:1;s:22:\"task-assigned-romanian\";i:1;s:31:\"task-added-as-follower-romanian\";i:1;s:23:\"task-commented-romanian\";i:1;s:30:\"task-added-attachment-romanian\";i:1;s:35:\"estimate-declined-to-staff-romanian\";i:1;s:35:\"estimate-accepted-to-staff-romanian\";i:1;s:33:\"proposal-client-accepted-romanian\";i:1;s:34:\"proposal-send-to-customer-romanian\";i:1;s:33:\"proposal-client-declined-romanian\";i:1;s:34:\"proposal-client-thank-you-romanian\";i:1;s:35:\"proposal-comment-to-client-romanian\";i:1;s:34:\"proposal-comment-to-admin-romanian\";i:1;s:39:\"estimate-thank-you-to-customer-romanian\";i:1;s:35:\"task-deadline-notification-romanian\";i:1;s:22:\"send-contract-romanian\";i:1;s:42:\"invoice-payment-recorded-to-staff-romanian\";i:1;s:26:\"auto-close-ticket-romanian\";i:1;s:48:\"new-project-discussion-created-to-staff-romanian\";i:1;s:51:\"new-project-discussion-created-to-customer-romanian\";i:1;s:46:\"new-project-file-uploaded-to-customer-romanian\";i:1;s:43:\"new-project-file-uploaded-to-staff-romanian\";i:1;s:51:\"new-project-discussion-comment-to-customer-romanian\";i:1;s:48:\"new-project-discussion-comment-to-staff-romanian\";i:1;s:38:\"staff-added-as-project-member-romanian\";i:1;s:33:\"estimate-expiry-reminder-romanian\";i:1;s:33:\"proposal-expiry-reminder-romanian\";i:1;s:26:\"new-staff-created-romanian\";i:1;s:32:\"contact-forgot-password-romanian\";i:1;s:33:\"contact-password-reseted-romanian\";i:1;s:29:\"contact-set-password-romanian\";i:1;s:30:\"staff-forgot-password-romanian\";i:1;s:31:\"staff-password-reseted-romanian\";i:1;s:28:\"assigned-to-project-romanian\";i:1;s:42:\"task-added-attachment-to-contacts-romanian\";i:1;s:35:\"task-commented-to-contacts-romanian\";i:1;s:26:\"new-lead-assigned-romanian\";i:1;s:25:\"client-statement-romanian\";i:1;s:33:\"ticket-assigned-to-admin-romanian\";i:1;s:39:\"new-client-registered-to-admin-romanian\";i:1;s:39:\"new-web-to-lead-form-submitted-romanian\";i:1;s:34:\"two-factor-authentication-romanian\";i:1;s:37:\"project-finished-to-customer-romanian\";i:1;s:35:\"credit-note-send-to-client-romanian\";i:1;s:36:\"task-status-change-to-staff-romanian\";i:1;s:39:\"task-status-change-to-contacts-romanian\";i:1;s:29:\"reminder-email-staff-romanian\";i:1;s:35:\"contract-comment-to-client-romanian\";i:1;s:34:\"contract-comment-to-admin-romanian\";i:1;s:26:\"send-subscription-romanian\";i:1;s:36:\"subscription-payment-failed-romanian\";i:1;s:30:\"subscription-canceled-romanian\";i:1;s:39:\"subscription-payment-succeeded-romanian\";i:1;s:37:\"contract-expiration-to-staff-romanian\";i:1;s:29:\"gdpr-removal-request-romanian\";i:1;s:34:\"gdpr-removal-request-lead-romanian\";i:1;s:38:\"client-registration-confirmed-romanian\";i:1;s:33:\"contract-signed-to-staff-romanian\";i:1;s:37:\"customer-subscribed-to-staff-romanian\";i:1;s:35:\"contact-verification-email-romanian\";i:1;s:52:\"new-customer-profile-file-uploaded-to-staff-romanian\";i:1;s:36:\"event-notification-to-staff-romanian\";i:1;s:45:\"subscription-payment-requires-action-romanian\";i:1;s:26:\"new-client-created-russian\";i:1;s:30:\"invoice-send-to-client-russian\";i:1;s:31:\"new-ticket-opened-admin-russian\";i:1;s:20:\"ticket-reply-russian\";i:1;s:27:\"ticket-autoresponse-russian\";i:1;s:32:\"invoice-payment-recorded-russian\";i:1;s:30:\"invoice-overdue-notice-russian\";i:1;s:28:\"invoice-already-send-russian\";i:1;s:32:\"new-ticket-created-staff-russian\";i:1;s:31:\"estimate-send-to-client-russian\";i:1;s:29:\"ticket-reply-to-admin-russian\";i:1;s:29:\"estimate-already-send-russian\";i:1;s:27:\"contract-expiration-russian\";i:1;s:21:\"task-assigned-russian\";i:1;s:30:\"task-added-as-follower-russian\";i:1;s:22:\"task-commented-russian\";i:1;s:29:\"task-added-attachment-russian\";i:1;s:34:\"estimate-declined-to-staff-russian\";i:1;s:34:\"estimate-accepted-to-staff-russian\";i:1;s:32:\"proposal-client-accepted-russian\";i:1;s:33:\"proposal-send-to-customer-russian\";i:1;s:32:\"proposal-client-declined-russian\";i:1;s:33:\"proposal-client-thank-you-russian\";i:1;s:34:\"proposal-comment-to-client-russian\";i:1;s:33:\"proposal-comment-to-admin-russian\";i:1;s:38:\"estimate-thank-you-to-customer-russian\";i:1;s:34:\"task-deadline-notification-russian\";i:1;s:21:\"send-contract-russian\";i:1;s:41:\"invoice-payment-recorded-to-staff-russian\";i:1;s:25:\"auto-close-ticket-russian\";i:1;s:47:\"new-project-discussion-created-to-staff-russian\";i:1;s:50:\"new-project-discussion-created-to-customer-russian\";i:1;s:45:\"new-project-file-uploaded-to-customer-russian\";i:1;s:42:\"new-project-file-uploaded-to-staff-russian\";i:1;s:50:\"new-project-discussion-comment-to-customer-russian\";i:1;s:47:\"new-project-discussion-comment-to-staff-russian\";i:1;s:37:\"staff-added-as-project-member-russian\";i:1;s:32:\"estimate-expiry-reminder-russian\";i:1;s:32:\"proposal-expiry-reminder-russian\";i:1;s:25:\"new-staff-created-russian\";i:1;s:31:\"contact-forgot-password-russian\";i:1;s:32:\"contact-password-reseted-russian\";i:1;s:28:\"contact-set-password-russian\";i:1;s:29:\"staff-forgot-password-russian\";i:1;s:30:\"staff-password-reseted-russian\";i:1;s:27:\"assigned-to-project-russian\";i:1;s:41:\"task-added-attachment-to-contacts-russian\";i:1;s:34:\"task-commented-to-contacts-russian\";i:1;s:25:\"new-lead-assigned-russian\";i:1;s:24:\"client-statement-russian\";i:1;s:32:\"ticket-assigned-to-admin-russian\";i:1;s:38:\"new-client-registered-to-admin-russian\";i:1;s:38:\"new-web-to-lead-form-submitted-russian\";i:1;s:33:\"two-factor-authentication-russian\";i:1;s:36:\"project-finished-to-customer-russian\";i:1;s:34:\"credit-note-send-to-client-russian\";i:1;s:35:\"task-status-change-to-staff-russian\";i:1;s:38:\"task-status-change-to-contacts-russian\";i:1;s:28:\"reminder-email-staff-russian\";i:1;s:34:\"contract-comment-to-client-russian\";i:1;s:33:\"contract-comment-to-admin-russian\";i:1;s:25:\"send-subscription-russian\";i:1;s:35:\"subscription-payment-failed-russian\";i:1;s:29:\"subscription-canceled-russian\";i:1;s:38:\"subscription-payment-succeeded-russian\";i:1;s:36:\"contract-expiration-to-staff-russian\";i:1;s:28:\"gdpr-removal-request-russian\";i:1;s:33:\"gdpr-removal-request-lead-russian\";i:1;s:37:\"client-registration-confirmed-russian\";i:1;s:32:\"contract-signed-to-staff-russian\";i:1;s:36:\"customer-subscribed-to-staff-russian\";i:1;s:34:\"contact-verification-email-russian\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-russian\";i:1;s:35:\"event-notification-to-staff-russian\";i:1;s:44:\"subscription-payment-requires-action-russian\";i:1;s:25:\"new-client-created-slovak\";i:1;s:29:\"invoice-send-to-client-slovak\";i:1;s:30:\"new-ticket-opened-admin-slovak\";i:1;s:19:\"ticket-reply-slovak\";i:1;s:26:\"ticket-autoresponse-slovak\";i:1;s:31:\"invoice-payment-recorded-slovak\";i:1;s:29:\"invoice-overdue-notice-slovak\";i:1;s:27:\"invoice-already-send-slovak\";i:1;s:31:\"new-ticket-created-staff-slovak\";i:1;s:30:\"estimate-send-to-client-slovak\";i:1;s:28:\"ticket-reply-to-admin-slovak\";i:1;s:28:\"estimate-already-send-slovak\";i:1;s:26:\"contract-expiration-slovak\";i:1;s:20:\"task-assigned-slovak\";i:1;s:29:\"task-added-as-follower-slovak\";i:1;s:21:\"task-commented-slovak\";i:1;s:28:\"task-added-attachment-slovak\";i:1;s:33:\"estimate-declined-to-staff-slovak\";i:1;s:33:\"estimate-accepted-to-staff-slovak\";i:1;s:31:\"proposal-client-accepted-slovak\";i:1;s:32:\"proposal-send-to-customer-slovak\";i:1;s:31:\"proposal-client-declined-slovak\";i:1;s:32:\"proposal-client-thank-you-slovak\";i:1;s:33:\"proposal-comment-to-client-slovak\";i:1;s:32:\"proposal-comment-to-admin-slovak\";i:1;s:37:\"estimate-thank-you-to-customer-slovak\";i:1;s:33:\"task-deadline-notification-slovak\";i:1;s:20:\"send-contract-slovak\";i:1;s:40:\"invoice-payment-recorded-to-staff-slovak\";i:1;s:24:\"auto-close-ticket-slovak\";i:1;s:46:\"new-project-discussion-created-to-staff-slovak\";i:1;s:49:\"new-project-discussion-created-to-customer-slovak\";i:1;s:44:\"new-project-file-uploaded-to-customer-slovak\";i:1;s:41:\"new-project-file-uploaded-to-staff-slovak\";i:1;s:49:\"new-project-discussion-comment-to-customer-slovak\";i:1;s:46:\"new-project-discussion-comment-to-staff-slovak\";i:1;s:36:\"staff-added-as-project-member-slovak\";i:1;s:31:\"estimate-expiry-reminder-slovak\";i:1;s:31:\"proposal-expiry-reminder-slovak\";i:1;s:24:\"new-staff-created-slovak\";i:1;s:30:\"contact-forgot-password-slovak\";i:1;s:31:\"contact-password-reseted-slovak\";i:1;s:27:\"contact-set-password-slovak\";i:1;s:28:\"staff-forgot-password-slovak\";i:1;s:29:\"staff-password-reseted-slovak\";i:1;s:26:\"assigned-to-project-slovak\";i:1;s:40:\"task-added-attachment-to-contacts-slovak\";i:1;s:33:\"task-commented-to-contacts-slovak\";i:1;s:24:\"new-lead-assigned-slovak\";i:1;s:23:\"client-statement-slovak\";i:1;s:31:\"ticket-assigned-to-admin-slovak\";i:1;s:37:\"new-client-registered-to-admin-slovak\";i:1;s:37:\"new-web-to-lead-form-submitted-slovak\";i:1;s:32:\"two-factor-authentication-slovak\";i:1;s:35:\"project-finished-to-customer-slovak\";i:1;s:33:\"credit-note-send-to-client-slovak\";i:1;s:34:\"task-status-change-to-staff-slovak\";i:1;s:37:\"task-status-change-to-contacts-slovak\";i:1;s:27:\"reminder-email-staff-slovak\";i:1;s:33:\"contract-comment-to-client-slovak\";i:1;s:32:\"contract-comment-to-admin-slovak\";i:1;s:24:\"send-subscription-slovak\";i:1;s:34:\"subscription-payment-failed-slovak\";i:1;s:28:\"subscription-canceled-slovak\";i:1;s:37:\"subscription-payment-succeeded-slovak\";i:1;s:35:\"contract-expiration-to-staff-slovak\";i:1;s:27:\"gdpr-removal-request-slovak\";i:1;s:32:\"gdpr-removal-request-lead-slovak\";i:1;s:36:\"client-registration-confirmed-slovak\";i:1;s:31:\"contract-signed-to-staff-slovak\";i:1;s:35:\"customer-subscribed-to-staff-slovak\";i:1;s:33:\"contact-verification-email-slovak\";i:1;s:50:\"new-customer-profile-file-uploaded-to-staff-slovak\";i:1;s:34:\"event-notification-to-staff-slovak\";i:1;s:43:\"subscription-payment-requires-action-slovak\";i:1;s:26:\"new-client-created-spanish\";i:1;s:30:\"invoice-send-to-client-spanish\";i:1;s:31:\"new-ticket-opened-admin-spanish\";i:1;s:20:\"ticket-reply-spanish\";i:1;s:27:\"ticket-autoresponse-spanish\";i:1;s:32:\"invoice-payment-recorded-spanish\";i:1;s:30:\"invoice-overdue-notice-spanish\";i:1;s:28:\"invoice-already-send-spanish\";i:1;s:32:\"new-ticket-created-staff-spanish\";i:1;s:31:\"estimate-send-to-client-spanish\";i:1;s:29:\"ticket-reply-to-admin-spanish\";i:1;s:29:\"estimate-already-send-spanish\";i:1;s:27:\"contract-expiration-spanish\";i:1;s:21:\"task-assigned-spanish\";i:1;s:30:\"task-added-as-follower-spanish\";i:1;s:22:\"task-commented-spanish\";i:1;s:29:\"task-added-attachment-spanish\";i:1;s:34:\"estimate-declined-to-staff-spanish\";i:1;s:34:\"estimate-accepted-to-staff-spanish\";i:1;s:32:\"proposal-client-accepted-spanish\";i:1;s:33:\"proposal-send-to-customer-spanish\";i:1;s:32:\"proposal-client-declined-spanish\";i:1;s:33:\"proposal-client-thank-you-spanish\";i:1;s:34:\"proposal-comment-to-client-spanish\";i:1;s:33:\"proposal-comment-to-admin-spanish\";i:1;s:38:\"estimate-thank-you-to-customer-spanish\";i:1;s:34:\"task-deadline-notification-spanish\";i:1;s:21:\"send-contract-spanish\";i:1;s:41:\"invoice-payment-recorded-to-staff-spanish\";i:1;s:25:\"auto-close-ticket-spanish\";i:1;s:47:\"new-project-discussion-created-to-staff-spanish\";i:1;s:50:\"new-project-discussion-created-to-customer-spanish\";i:1;s:45:\"new-project-file-uploaded-to-customer-spanish\";i:1;s:42:\"new-project-file-uploaded-to-staff-spanish\";i:1;s:50:\"new-project-discussion-comment-to-customer-spanish\";i:1;s:47:\"new-project-discussion-comment-to-staff-spanish\";i:1;s:37:\"staff-added-as-project-member-spanish\";i:1;s:32:\"estimate-expiry-reminder-spanish\";i:1;s:32:\"proposal-expiry-reminder-spanish\";i:1;s:25:\"new-staff-created-spanish\";i:1;s:31:\"contact-forgot-password-spanish\";i:1;s:32:\"contact-password-reseted-spanish\";i:1;s:28:\"contact-set-password-spanish\";i:1;s:29:\"staff-forgot-password-spanish\";i:1;s:30:\"staff-password-reseted-spanish\";i:1;s:27:\"assigned-to-project-spanish\";i:1;s:41:\"task-added-attachment-to-contacts-spanish\";i:1;s:34:\"task-commented-to-contacts-spanish\";i:1;s:25:\"new-lead-assigned-spanish\";i:1;s:24:\"client-statement-spanish\";i:1;s:32:\"ticket-assigned-to-admin-spanish\";i:1;s:38:\"new-client-registered-to-admin-spanish\";i:1;s:38:\"new-web-to-lead-form-submitted-spanish\";i:1;s:33:\"two-factor-authentication-spanish\";i:1;s:36:\"project-finished-to-customer-spanish\";i:1;s:34:\"credit-note-send-to-client-spanish\";i:1;s:35:\"task-status-change-to-staff-spanish\";i:1;s:38:\"task-status-change-to-contacts-spanish\";i:1;s:28:\"reminder-email-staff-spanish\";i:1;s:34:\"contract-comment-to-client-spanish\";i:1;s:33:\"contract-comment-to-admin-spanish\";i:1;s:25:\"send-subscription-spanish\";i:1;s:35:\"subscription-payment-failed-spanish\";i:1;s:29:\"subscription-canceled-spanish\";i:1;s:38:\"subscription-payment-succeeded-spanish\";i:1;s:36:\"contract-expiration-to-staff-spanish\";i:1;s:28:\"gdpr-removal-request-spanish\";i:1;s:33:\"gdpr-removal-request-lead-spanish\";i:1;s:37:\"client-registration-confirmed-spanish\";i:1;s:32:\"contract-signed-to-staff-spanish\";i:1;s:36:\"customer-subscribed-to-staff-spanish\";i:1;s:34:\"contact-verification-email-spanish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-spanish\";i:1;s:35:\"event-notification-to-staff-spanish\";i:1;s:44:\"subscription-payment-requires-action-spanish\";i:1;s:26:\"new-client-created-swedish\";i:1;s:30:\"invoice-send-to-client-swedish\";i:1;s:31:\"new-ticket-opened-admin-swedish\";i:1;s:20:\"ticket-reply-swedish\";i:1;s:27:\"ticket-autoresponse-swedish\";i:1;s:32:\"invoice-payment-recorded-swedish\";i:1;s:30:\"invoice-overdue-notice-swedish\";i:1;s:28:\"invoice-already-send-swedish\";i:1;s:32:\"new-ticket-created-staff-swedish\";i:1;s:31:\"estimate-send-to-client-swedish\";i:1;s:29:\"ticket-reply-to-admin-swedish\";i:1;s:29:\"estimate-already-send-swedish\";i:1;s:27:\"contract-expiration-swedish\";i:1;s:21:\"task-assigned-swedish\";i:1;s:30:\"task-added-as-follower-swedish\";i:1;s:22:\"task-commented-swedish\";i:1;s:29:\"task-added-attachment-swedish\";i:1;s:34:\"estimate-declined-to-staff-swedish\";i:1;s:34:\"estimate-accepted-to-staff-swedish\";i:1;s:32:\"proposal-client-accepted-swedish\";i:1;s:33:\"proposal-send-to-customer-swedish\";i:1;s:32:\"proposal-client-declined-swedish\";i:1;s:33:\"proposal-client-thank-you-swedish\";i:1;s:34:\"proposal-comment-to-client-swedish\";i:1;s:33:\"proposal-comment-to-admin-swedish\";i:1;s:38:\"estimate-thank-you-to-customer-swedish\";i:1;s:34:\"task-deadline-notification-swedish\";i:1;s:21:\"send-contract-swedish\";i:1;s:41:\"invoice-payment-recorded-to-staff-swedish\";i:1;s:25:\"auto-close-ticket-swedish\";i:1;s:47:\"new-project-discussion-created-to-staff-swedish\";i:1;s:50:\"new-project-discussion-created-to-customer-swedish\";i:1;s:45:\"new-project-file-uploaded-to-customer-swedish\";i:1;s:42:\"new-project-file-uploaded-to-staff-swedish\";i:1;s:50:\"new-project-discussion-comment-to-customer-swedish\";i:1;s:47:\"new-project-discussion-comment-to-staff-swedish\";i:1;s:37:\"staff-added-as-project-member-swedish\";i:1;s:32:\"estimate-expiry-reminder-swedish\";i:1;s:32:\"proposal-expiry-reminder-swedish\";i:1;s:25:\"new-staff-created-swedish\";i:1;s:31:\"contact-forgot-password-swedish\";i:1;s:32:\"contact-password-reseted-swedish\";i:1;s:28:\"contact-set-password-swedish\";i:1;s:29:\"staff-forgot-password-swedish\";i:1;s:30:\"staff-password-reseted-swedish\";i:1;s:27:\"assigned-to-project-swedish\";i:1;s:41:\"task-added-attachment-to-contacts-swedish\";i:1;s:34:\"task-commented-to-contacts-swedish\";i:1;s:25:\"new-lead-assigned-swedish\";i:1;s:24:\"client-statement-swedish\";i:1;s:32:\"ticket-assigned-to-admin-swedish\";i:1;s:38:\"new-client-registered-to-admin-swedish\";i:1;s:38:\"new-web-to-lead-form-submitted-swedish\";i:1;s:33:\"two-factor-authentication-swedish\";i:1;s:36:\"project-finished-to-customer-swedish\";i:1;s:34:\"credit-note-send-to-client-swedish\";i:1;s:35:\"task-status-change-to-staff-swedish\";i:1;s:38:\"task-status-change-to-contacts-swedish\";i:1;s:28:\"reminder-email-staff-swedish\";i:1;s:34:\"contract-comment-to-client-swedish\";i:1;s:33:\"contract-comment-to-admin-swedish\";i:1;s:25:\"send-subscription-swedish\";i:1;s:35:\"subscription-payment-failed-swedish\";i:1;s:29:\"subscription-canceled-swedish\";i:1;s:38:\"subscription-payment-succeeded-swedish\";i:1;s:36:\"contract-expiration-to-staff-swedish\";i:1;s:28:\"gdpr-removal-request-swedish\";i:1;s:33:\"gdpr-removal-request-lead-swedish\";i:1;s:37:\"client-registration-confirmed-swedish\";i:1;s:32:\"contract-signed-to-staff-swedish\";i:1;s:36:\"customer-subscribed-to-staff-swedish\";i:1;s:34:\"contact-verification-email-swedish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-swedish\";i:1;s:35:\"event-notification-to-staff-swedish\";i:1;s:44:\"subscription-payment-requires-action-swedish\";i:1;s:26:\"new-client-created-turkish\";i:1;s:30:\"invoice-send-to-client-turkish\";i:1;s:31:\"new-ticket-opened-admin-turkish\";i:1;s:20:\"ticket-reply-turkish\";i:1;s:27:\"ticket-autoresponse-turkish\";i:1;s:32:\"invoice-payment-recorded-turkish\";i:1;s:30:\"invoice-overdue-notice-turkish\";i:1;s:28:\"invoice-already-send-turkish\";i:1;s:32:\"new-ticket-created-staff-turkish\";i:1;s:31:\"estimate-send-to-client-turkish\";i:1;s:29:\"ticket-reply-to-admin-turkish\";i:1;s:29:\"estimate-already-send-turkish\";i:1;s:27:\"contract-expiration-turkish\";i:1;s:21:\"task-assigned-turkish\";i:1;s:30:\"task-added-as-follower-turkish\";i:1;s:22:\"task-commented-turkish\";i:1;s:29:\"task-added-attachment-turkish\";i:1;s:34:\"estimate-declined-to-staff-turkish\";i:1;s:34:\"estimate-accepted-to-staff-turkish\";i:1;s:32:\"proposal-client-accepted-turkish\";i:1;s:33:\"proposal-send-to-customer-turkish\";i:1;s:32:\"proposal-client-declined-turkish\";i:1;s:33:\"proposal-client-thank-you-turkish\";i:1;s:34:\"proposal-comment-to-client-turkish\";i:1;s:33:\"proposal-comment-to-admin-turkish\";i:1;s:38:\"estimate-thank-you-to-customer-turkish\";i:1;s:34:\"task-deadline-notification-turkish\";i:1;s:21:\"send-contract-turkish\";i:1;s:41:\"invoice-payment-recorded-to-staff-turkish\";i:1;s:25:\"auto-close-ticket-turkish\";i:1;s:47:\"new-project-discussion-created-to-staff-turkish\";i:1;s:50:\"new-project-discussion-created-to-customer-turkish\";i:1;s:45:\"new-project-file-uploaded-to-customer-turkish\";i:1;s:42:\"new-project-file-uploaded-to-staff-turkish\";i:1;s:50:\"new-project-discussion-comment-to-customer-turkish\";i:1;s:47:\"new-project-discussion-comment-to-staff-turkish\";i:1;s:37:\"staff-added-as-project-member-turkish\";i:1;s:32:\"estimate-expiry-reminder-turkish\";i:1;s:32:\"proposal-expiry-reminder-turkish\";i:1;s:25:\"new-staff-created-turkish\";i:1;s:31:\"contact-forgot-password-turkish\";i:1;s:32:\"contact-password-reseted-turkish\";i:1;s:28:\"contact-set-password-turkish\";i:1;s:29:\"staff-forgot-password-turkish\";i:1;s:30:\"staff-password-reseted-turkish\";i:1;s:27:\"assigned-to-project-turkish\";i:1;s:41:\"task-added-attachment-to-contacts-turkish\";i:1;s:34:\"task-commented-to-contacts-turkish\";i:1;s:25:\"new-lead-assigned-turkish\";i:1;s:24:\"client-statement-turkish\";i:1;s:32:\"ticket-assigned-to-admin-turkish\";i:1;s:38:\"new-client-registered-to-admin-turkish\";i:1;s:38:\"new-web-to-lead-form-submitted-turkish\";i:1;s:33:\"two-factor-authentication-turkish\";i:1;s:36:\"project-finished-to-customer-turkish\";i:1;s:34:\"credit-note-send-to-client-turkish\";i:1;s:35:\"task-status-change-to-staff-turkish\";i:1;s:38:\"task-status-change-to-contacts-turkish\";i:1;s:28:\"reminder-email-staff-turkish\";i:1;s:34:\"contract-comment-to-client-turkish\";i:1;s:33:\"contract-comment-to-admin-turkish\";i:1;s:25:\"send-subscription-turkish\";i:1;s:35:\"subscription-payment-failed-turkish\";i:1;s:29:\"subscription-canceled-turkish\";i:1;s:38:\"subscription-payment-succeeded-turkish\";i:1;s:36:\"contract-expiration-to-staff-turkish\";i:1;s:28:\"gdpr-removal-request-turkish\";i:1;s:33:\"gdpr-removal-request-lead-turkish\";i:1;s:37:\"client-registration-confirmed-turkish\";i:1;s:32:\"contract-signed-to-staff-turkish\";i:1;s:36:\"customer-subscribed-to-staff-turkish\";i:1;s:34:\"contact-verification-email-turkish\";i:1;s:51:\"new-customer-profile-file-uploaded-to-staff-turkish\";i:1;s:35:\"event-notification-to-staff-turkish\";i:1;s:44:\"subscription-payment-requires-action-turkish\";i:1;s:28:\"new-client-created-ukrainian\";i:1;s:32:\"invoice-send-to-client-ukrainian\";i:1;s:33:\"new-ticket-opened-admin-ukrainian\";i:1;s:22:\"ticket-reply-ukrainian\";i:1;s:29:\"ticket-autoresponse-ukrainian\";i:1;s:34:\"invoice-payment-recorded-ukrainian\";i:1;s:32:\"invoice-overdue-notice-ukrainian\";i:1;s:30:\"invoice-already-send-ukrainian\";i:1;s:34:\"new-ticket-created-staff-ukrainian\";i:1;s:33:\"estimate-send-to-client-ukrainian\";i:1;s:31:\"ticket-reply-to-admin-ukrainian\";i:1;s:31:\"estimate-already-send-ukrainian\";i:1;s:29:\"contract-expiration-ukrainian\";i:1;s:23:\"task-assigned-ukrainian\";i:1;s:32:\"task-added-as-follower-ukrainian\";i:1;s:24:\"task-commented-ukrainian\";i:1;s:31:\"task-added-attachment-ukrainian\";i:1;s:36:\"estimate-declined-to-staff-ukrainian\";i:1;s:36:\"estimate-accepted-to-staff-ukrainian\";i:1;s:34:\"proposal-client-accepted-ukrainian\";i:1;s:35:\"proposal-send-to-customer-ukrainian\";i:1;s:34:\"proposal-client-declined-ukrainian\";i:1;s:35:\"proposal-client-thank-you-ukrainian\";i:1;s:36:\"proposal-comment-to-client-ukrainian\";i:1;s:35:\"proposal-comment-to-admin-ukrainian\";i:1;s:40:\"estimate-thank-you-to-customer-ukrainian\";i:1;s:36:\"task-deadline-notification-ukrainian\";i:1;s:23:\"send-contract-ukrainian\";i:1;s:43:\"invoice-payment-recorded-to-staff-ukrainian\";i:1;s:27:\"auto-close-ticket-ukrainian\";i:1;s:49:\"new-project-discussion-created-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-created-to-customer-ukrainian\";i:1;s:47:\"new-project-file-uploaded-to-customer-ukrainian\";i:1;s:44:\"new-project-file-uploaded-to-staff-ukrainian\";i:1;s:52:\"new-project-discussion-comment-to-customer-ukrainian\";i:1;s:49:\"new-project-discussion-comment-to-staff-ukrainian\";i:1;s:39:\"staff-added-as-project-member-ukrainian\";i:1;s:34:\"estimate-expiry-reminder-ukrainian\";i:1;s:34:\"proposal-expiry-reminder-ukrainian\";i:1;s:27:\"new-staff-created-ukrainian\";i:1;s:33:\"contact-forgot-password-ukrainian\";i:1;s:34:\"contact-password-reseted-ukrainian\";i:1;s:30:\"contact-set-password-ukrainian\";i:1;s:31:\"staff-forgot-password-ukrainian\";i:1;s:32:\"staff-password-reseted-ukrainian\";i:1;s:29:\"assigned-to-project-ukrainian\";i:1;s:43:\"task-added-attachment-to-contacts-ukrainian\";i:1;s:36:\"task-commented-to-contacts-ukrainian\";i:1;s:27:\"new-lead-assigned-ukrainian\";i:1;s:26:\"client-statement-ukrainian\";i:1;s:34:\"ticket-assigned-to-admin-ukrainian\";i:1;s:40:\"new-client-registered-to-admin-ukrainian\";i:1;s:40:\"new-web-to-lead-form-submitted-ukrainian\";i:1;s:35:\"two-factor-authentication-ukrainian\";i:1;s:38:\"project-finished-to-customer-ukrainian\";i:1;s:36:\"credit-note-send-to-client-ukrainian\";i:1;s:37:\"task-status-change-to-staff-ukrainian\";i:1;s:40:\"task-status-change-to-contacts-ukrainian\";i:1;s:30:\"reminder-email-staff-ukrainian\";i:1;s:36:\"contract-comment-to-client-ukrainian\";i:1;s:35:\"contract-comment-to-admin-ukrainian\";i:1;s:27:\"send-subscription-ukrainian\";i:1;s:37:\"subscription-payment-failed-ukrainian\";i:1;s:31:\"subscription-canceled-ukrainian\";i:1;s:40:\"subscription-payment-succeeded-ukrainian\";i:1;s:38:\"contract-expiration-to-staff-ukrainian\";i:1;s:30:\"gdpr-removal-request-ukrainian\";i:1;s:35:\"gdpr-removal-request-lead-ukrainian\";i:1;s:39:\"client-registration-confirmed-ukrainian\";i:1;s:34:\"contract-signed-to-staff-ukrainian\";i:1;s:38:\"customer-subscribed-to-staff-ukrainian\";i:1;s:36:\"contact-verification-email-ukrainian\";i:1;s:53:\"new-customer-profile-file-uploaded-to-staff-ukrainian\";i:1;s:37:\"event-notification-to-staff-ukrainian\";i:1;s:46:\"subscription-payment-requires-action-ukrainian\";i:1;s:29:\"new-client-created-vietnamese\";i:1;s:33:\"invoice-send-to-client-vietnamese\";i:1;s:34:\"new-ticket-opened-admin-vietnamese\";i:1;s:23:\"ticket-reply-vietnamese\";i:1;s:30:\"ticket-autoresponse-vietnamese\";i:1;s:35:\"invoice-payment-recorded-vietnamese\";i:1;s:33:\"invoice-overdue-notice-vietnamese\";i:1;s:31:\"invoice-already-send-vietnamese\";i:1;s:35:\"new-ticket-created-staff-vietnamese\";i:1;s:34:\"estimate-send-to-client-vietnamese\";i:1;s:32:\"ticket-reply-to-admin-vietnamese\";i:1;s:32:\"estimate-already-send-vietnamese\";i:1;s:30:\"contract-expiration-vietnamese\";i:1;s:24:\"task-assigned-vietnamese\";i:1;s:33:\"task-added-as-follower-vietnamese\";i:1;s:25:\"task-commented-vietnamese\";i:1;s:32:\"task-added-attachment-vietnamese\";i:1;s:37:\"estimate-declined-to-staff-vietnamese\";i:1;s:37:\"estimate-accepted-to-staff-vietnamese\";i:1;s:35:\"proposal-client-accepted-vietnamese\";i:1;s:36:\"proposal-send-to-customer-vietnamese\";i:1;s:35:\"proposal-client-declined-vietnamese\";i:1;s:36:\"proposal-client-thank-you-vietnamese\";i:1;s:37:\"proposal-comment-to-client-vietnamese\";i:1;s:36:\"proposal-comment-to-admin-vietnamese\";i:1;s:41:\"estimate-thank-you-to-customer-vietnamese\";i:1;s:37:\"task-deadline-notification-vietnamese\";i:1;s:24:\"send-contract-vietnamese\";i:1;s:44:\"invoice-payment-recorded-to-staff-vietnamese\";i:1;s:28:\"auto-close-ticket-vietnamese\";i:1;s:50:\"new-project-discussion-created-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-created-to-customer-vietnamese\";i:1;s:48:\"new-project-file-uploaded-to-customer-vietnamese\";i:1;s:45:\"new-project-file-uploaded-to-staff-vietnamese\";i:1;s:53:\"new-project-discussion-comment-to-customer-vietnamese\";i:1;s:50:\"new-project-discussion-comment-to-staff-vietnamese\";i:1;s:40:\"staff-added-as-project-member-vietnamese\";i:1;s:35:\"estimate-expiry-reminder-vietnamese\";i:1;s:35:\"proposal-expiry-reminder-vietnamese\";i:1;s:28:\"new-staff-created-vietnamese\";i:1;s:34:\"contact-forgot-password-vietnamese\";i:1;s:35:\"contact-password-reseted-vietnamese\";i:1;s:31:\"contact-set-password-vietnamese\";i:1;s:32:\"staff-forgot-password-vietnamese\";i:1;s:33:\"staff-password-reseted-vietnamese\";i:1;s:30:\"assigned-to-project-vietnamese\";i:1;s:44:\"task-added-attachment-to-contacts-vietnamese\";i:1;s:37:\"task-commented-to-contacts-vietnamese\";i:1;s:28:\"new-lead-assigned-vietnamese\";i:1;s:27:\"client-statement-vietnamese\";i:1;s:35:\"ticket-assigned-to-admin-vietnamese\";i:1;s:41:\"new-client-registered-to-admin-vietnamese\";i:1;s:41:\"new-web-to-lead-form-submitted-vietnamese\";i:1;s:36:\"two-factor-authentication-vietnamese\";i:1;s:39:\"project-finished-to-customer-vietnamese\";i:1;s:37:\"credit-note-send-to-client-vietnamese\";i:1;s:38:\"task-status-change-to-staff-vietnamese\";i:1;s:41:\"task-status-change-to-contacts-vietnamese\";i:1;s:31:\"reminder-email-staff-vietnamese\";i:1;s:37:\"contract-comment-to-client-vietnamese\";i:1;s:36:\"contract-comment-to-admin-vietnamese\";i:1;s:28:\"send-subscription-vietnamese\";i:1;s:38:\"subscription-payment-failed-vietnamese\";i:1;s:32:\"subscription-canceled-vietnamese\";i:1;s:41:\"subscription-payment-succeeded-vietnamese\";i:1;s:39:\"contract-expiration-to-staff-vietnamese\";i:1;s:31:\"gdpr-removal-request-vietnamese\";i:1;s:36:\"gdpr-removal-request-lead-vietnamese\";i:1;s:40:\"client-registration-confirmed-vietnamese\";i:1;s:35:\"contract-signed-to-staff-vietnamese\";i:1;s:39:\"customer-subscribed-to-staff-vietnamese\";i:1;s:37:\"contact-verification-email-vietnamese\";i:1;s:54:\"new-customer-profile-file-uploaded-to-staff-vietnamese\";i:1;s:38:\"event-notification-to-staff-vietnamese\";i:1;s:47:\"subscription-payment-requires-action-vietnamese\";i:1;s:26:\"purchase-created-bulgarian\";i:1;s:24:\"purchase-created-catalan\";i:1;s:24:\"purchase-created-chinese\";i:1;s:22:\"purchase-created-czech\";i:1;s:22:\"purchase-created-dutch\";i:1;s:23:\"purchase-created-french\";i:1;s:23:\"purchase-created-german\";i:1;s:22:\"purchase-created-greek\";i:1;s:26:\"purchase-created-indonesia\";i:1;s:24:\"purchase-created-italian\";i:1;s:25:\"purchase-created-japanese\";i:1;s:24:\"purchase-created-persian\";i:1;s:23:\"purchase-created-polish\";i:1;s:27:\"purchase-created-portuguese\";i:1;s:30:\"purchase-created-portuguese_br\";i:1;s:25:\"purchase-created-romanian\";i:1;s:24:\"purchase-created-russian\";i:1;s:23:\"purchase-created-slovak\";i:1;s:24:\"purchase-created-spanish\";i:1;s:24:\"purchase-created-swedish\";i:1;s:24:\"purchase-created-turkish\";i:1;s:26:\"purchase-created-ukrainian\";i:1;s:27:\"purchase-created-vietnamese\";i:1;s:42:\"pending_purchase_request-created-bulgarian\";i:1;s:40:\"pending_purchase_request-created-catalan\";i:1;s:40:\"pending_purchase_request-created-chinese\";i:1;s:38:\"pending_purchase_request-created-czech\";i:1;s:38:\"pending_purchase_request-created-dutch\";i:1;s:39:\"pending_purchase_request-created-french\";i:1;s:39:\"pending_purchase_request-created-german\";i:1;s:38:\"pending_purchase_request-created-greek\";i:1;s:42:\"pending_purchase_request-created-indonesia\";i:1;s:40:\"pending_purchase_request-created-italian\";i:1;s:41:\"pending_purchase_request-created-japanese\";i:1;s:40:\"pending_purchase_request-created-persian\";i:1;s:39:\"pending_purchase_request-created-polish\";i:1;s:43:\"pending_purchase_request-created-portuguese\";i:1;s:46:\"pending_purchase_request-created-portuguese_br\";i:1;s:41:\"pending_purchase_request-created-romanian\";i:1;s:40:\"pending_purchase_request-created-russian\";i:1;s:39:\"pending_purchase_request-created-slovak\";i:1;s:40:\"pending_purchase_request-created-spanish\";i:1;s:40:\"pending_purchase_request-created-swedish\";i:1;s:40:\"pending_purchase_request-created-turkish\";i:1;s:42:\"pending_purchase_request-created-ukrainian\";i:1;s:43:\"pending_purchase_request-created-vietnamese\";i:1;s:27:\"sale-order-opened-bulgarian\";i:1;s:25:\"sale-order-opened-catalan\";i:1;s:25:\"sale-order-opened-chinese\";i:1;s:23:\"sale-order-opened-czech\";i:1;s:23:\"sale-order-opened-dutch\";i:1;s:24:\"sale-order-opened-french\";i:1;s:24:\"sale-order-opened-german\";i:1;s:23:\"sale-order-opened-greek\";i:1;s:27:\"sale-order-opened-indonesia\";i:1;s:25:\"sale-order-opened-italian\";i:1;s:26:\"sale-order-opened-japanese\";i:1;s:25:\"sale-order-opened-persian\";i:1;s:24:\"sale-order-opened-polish\";i:1;s:28:\"sale-order-opened-portuguese\";i:1;s:31:\"sale-order-opened-portuguese_br\";i:1;s:26:\"sale-order-opened-romanian\";i:1;s:25:\"sale-order-opened-russian\";i:1;s:24:\"sale-order-opened-slovak\";i:1;s:25:\"sale-order-opened-spanish\";i:1;s:25:\"sale-order-opened-swedish\";i:1;s:25:\"sale-order-opened-turkish\";i:1;s:27:\"sale-order-opened-ukrainian\";i:1;s:28:\"sale-order-opened-vietnamese\";i:1;s:28:\"sale-order-updated-bulgarian\";i:1;s:26:\"sale-order-updated-catalan\";i:1;s:26:\"sale-order-updated-chinese\";i:1;s:24:\"sale-order-updated-czech\";i:1;s:24:\"sale-order-updated-dutch\";i:1;s:25:\"sale-order-updated-french\";i:1;s:25:\"sale-order-updated-german\";i:1;s:24:\"sale-order-updated-greek\";i:1;s:28:\"sale-order-updated-indonesia\";i:1;s:26:\"sale-order-updated-italian\";i:1;s:27:\"sale-order-updated-japanese\";i:1;s:26:\"sale-order-updated-persian\";i:1;s:25:\"sale-order-updated-polish\";i:1;s:29:\"sale-order-updated-portuguese\";i:1;s:32:\"sale-order-updated-portuguese_br\";i:1;s:27:\"sale-order-updated-romanian\";i:1;s:26:\"sale-order-updated-russian\";i:1;s:25:\"sale-order-updated-slovak\";i:1;s:26:\"sale-order-updated-spanish\";i:1;s:26:\"sale-order-updated-swedish\";i:1;s:26:\"sale-order-updated-turkish\";i:1;s:28:\"sale-order-updated-ukrainian\";i:1;s:29:\"sale-order-updated-vietnamese\";i:1;s:27:\"work-order-opened-bulgarian\";i:1;s:25:\"work-order-opened-catalan\";i:1;s:25:\"work-order-opened-chinese\";i:1;s:23:\"work-order-opened-czech\";i:1;s:23:\"work-order-opened-dutch\";i:1;s:24:\"work-order-opened-french\";i:1;s:24:\"work-order-opened-german\";i:1;s:23:\"work-order-opened-greek\";i:1;s:27:\"work-order-opened-indonesia\";i:1;s:25:\"work-order-opened-italian\";i:1;s:26:\"work-order-opened-japanese\";i:1;s:25:\"work-order-opened-persian\";i:1;s:24:\"work-order-opened-polish\";i:1;s:28:\"work-order-opened-portuguese\";i:1;s:31:\"work-order-opened-portuguese_br\";i:1;s:26:\"work-order-opened-romanian\";i:1;s:25:\"work-order-opened-russian\";i:1;s:24:\"work-order-opened-slovak\";i:1;s:25:\"work-order-opened-spanish\";i:1;s:25:\"work-order-opened-swedish\";i:1;s:25:\"work-order-opened-turkish\";i:1;s:27:\"work-order-opened-ukrainian\";i:1;s:28:\"work-order-opened-vietnamese\";i:1;s:28:\"work-order-updated-bulgarian\";i:1;s:26:\"work-order-updated-catalan\";i:1;s:26:\"work-order-updated-chinese\";i:1;s:24:\"work-order-updated-czech\";i:1;s:24:\"work-order-updated-dutch\";i:1;s:25:\"work-order-updated-french\";i:1;s:25:\"work-order-updated-german\";i:1;s:24:\"work-order-updated-greek\";i:1;s:28:\"work-order-updated-indonesia\";i:1;s:26:\"work-order-updated-italian\";i:1;s:27:\"work-order-updated-japanese\";i:1;s:26:\"work-order-updated-persian\";i:1;s:25:\"work-order-updated-polish\";i:1;s:29:\"work-order-updated-portuguese\";i:1;s:32:\"work-order-updated-portuguese_br\";i:1;s:27:\"work-order-updated-romanian\";i:1;s:26:\"work-order-updated-russian\";i:1;s:25:\"work-order-updated-slovak\";i:1;s:26:\"work-order-updated-spanish\";i:1;s:26:\"work-order-updated-swedish\";i:1;s:26:\"work-order-updated-turkish\";i:1;s:28:\"work-order-updated-ukrainian\";i:1;s:29:\"work-order-updated-vietnamese\";i:1;s:30:\"warehouse-overloaded-bulgarian\";i:1;s:28:\"warehouse-overloaded-catalan\";i:1;s:28:\"warehouse-overloaded-chinese\";i:1;s:26:\"warehouse-overloaded-czech\";i:1;s:26:\"warehouse-overloaded-dutch\";i:1;s:27:\"warehouse-overloaded-french\";i:1;s:27:\"warehouse-overloaded-german\";i:1;s:26:\"warehouse-overloaded-greek\";i:1;s:30:\"warehouse-overloaded-indonesia\";i:1;s:28:\"warehouse-overloaded-italian\";i:1;s:29:\"warehouse-overloaded-japanese\";i:1;s:28:\"warehouse-overloaded-persian\";i:1;s:27:\"warehouse-overloaded-polish\";i:1;s:31:\"warehouse-overloaded-portuguese\";i:1;s:34:\"warehouse-overloaded-portuguese_br\";i:1;s:29:\"warehouse-overloaded-romanian\";i:1;s:28:\"warehouse-overloaded-russian\";i:1;s:27:\"warehouse-overloaded-slovak\";i:1;s:28:\"warehouse-overloaded-spanish\";i:1;s:28:\"warehouse-overloaded-swedish\";i:1;s:28:\"warehouse-overloaded-turkish\";i:1;s:30:\"warehouse-overloaded-ukrainian\";i:1;s:31:\"warehouse-overloaded-vietnamese\";i:1;s:28:\"quotation-approved-bulgarian\";i:1;s:26:\"quotation-approved-catalan\";i:1;s:26:\"quotation-approved-chinese\";i:1;s:24:\"quotation-approved-czech\";i:1;s:24:\"quotation-approved-dutch\";i:1;s:25:\"quotation-approved-french\";i:1;s:25:\"quotation-approved-german\";i:1;s:24:\"quotation-approved-greek\";i:1;s:28:\"quotation-approved-indonesia\";i:1;s:26:\"quotation-approved-italian\";i:1;s:27:\"quotation-approved-japanese\";i:1;s:26:\"quotation-approved-persian\";i:1;s:25:\"quotation-approved-polish\";i:1;s:29:\"quotation-approved-portuguese\";i:1;s:32:\"quotation-approved-portuguese_br\";i:1;s:27:\"quotation-approved-romanian\";i:1;s:26:\"quotation-approved-russian\";i:1;s:25:\"quotation-approved-slovak\";i:1;s:26:\"quotation-approved-spanish\";i:1;s:26:\"quotation-approved-swedish\";i:1;s:26:\"quotation-approved-turkish\";i:1;s:28:\"quotation-approved-ukrainian\";i:1;s:29:\"quotation-approved-vietnamese\";i:1;s:41:\"quotation-approval-notification-bulgarian\";i:1;s:39:\"quotation-approval-notification-catalan\";i:1;s:39:\"quotation-approval-notification-chinese\";i:1;s:37:\"quotation-approval-notification-czech\";i:1;s:37:\"quotation-approval-notification-dutch\";i:1;s:38:\"quotation-approval-notification-french\";i:1;s:38:\"quotation-approval-notification-german\";i:1;s:37:\"quotation-approval-notification-greek\";i:1;s:41:\"quotation-approval-notification-indonesia\";i:1;s:39:\"quotation-approval-notification-italian\";i:1;s:40:\"quotation-approval-notification-japanese\";i:1;s:39:\"quotation-approval-notification-persian\";i:1;s:38:\"quotation-approval-notification-polish\";i:1;s:42:\"quotation-approval-notification-portuguese\";i:1;s:45:\"quotation-approval-notification-portuguese_br\";i:1;s:40:\"quotation-approval-notification-romanian\";i:1;s:39:\"quotation-approval-notification-russian\";i:1;s:38:\"quotation-approval-notification-slovak\";i:1;s:39:\"quotation-approval-notification-spanish\";i:1;s:39:\"quotation-approval-notification-swedish\";i:1;s:39:\"quotation-approval-notification-turkish\";i:1;s:41:\"quotation-approval-notification-ukrainian\";i:1;s:42:\"quotation-approval-notification-vietnamese\";i:1;}', 0);
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(213, 'proposal_accept_identity_confirmation', '1', 0),
(214, 'estimate_accept_identity_confirmation', '1', 0),
(215, 'new_task_auto_follower_current_member', '0', 1),
(216, 'task_biillable_checked_on_creation', '1', 1),
(217, 'predefined_clientnote_credit_note', '', 1),
(218, 'predefined_terms_credit_note', '', 1),
(219, 'next_credit_note_number', '1', 1),
(220, 'credit_note_prefix', 'CN-', 1),
(221, 'credit_note_number_decrement_on_delete', '1', 1),
(222, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(223, 'show_pdf_signature_credit_note', '1', 0),
(224, 'show_credit_note_reminders_on_calendar', '1', 1),
(225, 'show_amount_due_on_invoice', '1', 1),
(226, 'show_total_paid_on_invoice', '1', 1),
(227, 'show_credits_applied_on_invoice', '1', 1),
(228, 'staff_members_create_inline_lead_status', '1', 1),
(229, 'staff_members_create_inline_customer_groups', '1', 1),
(230, 'staff_members_create_inline_ticket_services', '1', 1),
(231, 'staff_members_save_tickets_predefined_replies', '1', 1),
(232, 'staff_members_create_inline_contract_types', '1', 1),
(233, 'staff_members_create_inline_expense_categories', '1', 1),
(234, 'show_project_on_credit_note', '1', 1),
(235, 'proposals_auto_operations_hour', '21', 1),
(236, 'estimates_auto_operations_hour', '21', 1),
(237, 'contracts_auto_operations_hour', '21', 1),
(238, 'credit_note_number_format', '1', 1),
(239, 'allow_non_admin_members_to_import_leads', '0', 1),
(240, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(241, 'show_pdf_signature_contract', '1', 1),
(242, 'view_contract_only_logged_in', '0', 1),
(243, 'show_subscriptions_in_customers_area', '1', 1),
(244, 'calendar_only_assigned_tasks', '0', 1),
(245, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(246, 'mail_engine', 'phpmailer', 1),
(247, 'gdpr_enable_terms_and_conditions', '0', 1),
(248, 'privacy_policy', '', 1),
(249, 'terms_and_conditions', '', 1),
(250, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(251, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(252, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(253, 'show_gdpr_in_customers_menu', '1', 1),
(254, 'show_gdpr_link_in_footer', '1', 1),
(255, 'enable_gdpr', '0', 1),
(256, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(257, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(258, 'gdpr_enable_consent_for_contacts', '0', 1),
(259, 'gdpr_consent_public_page_top_block', '', 1),
(260, 'gdpr_page_top_information_block', '', 1),
(261, 'gdpr_enable_lead_public_form', '0', 1),
(262, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(263, 'gdpr_lead_attachments_on_public_form', '0', 1),
(264, 'gdpr_enable_consent_for_leads', '0', 1),
(265, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(266, 'allow_staff_view_invoices_assigned', '1', 1),
(267, 'gdpr_data_portability_leads', '0', 1),
(268, 'gdpr_lead_data_portability_allowed', '', 1),
(269, 'gdpr_contact_data_portability_allowed', '', 1),
(270, 'gdpr_data_portability_contacts', '0', 1),
(271, 'allow_staff_view_estimates_assigned', '1', 1),
(272, 'gdpr_after_lead_converted_delete', '0', 1),
(273, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(274, 'save_last_order_for_tables', '0', 1),
(275, 'company_logo_dark', '', 1),
(276, 'customers_register_require_confirmation', '0', 1),
(277, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(278, 'receive_notification_on_new_ticket_replies', '1', 0),
(279, 'google_client_id', '', 1),
(280, 'enable_google_picker', '1', 1),
(281, 'show_ticket_reminders_on_calendar', '1', 1),
(282, 'ticket_import_reply_only', '0', 1),
(283, 'visible_customer_profile_tabs', 'all', 0),
(284, 'show_project_on_invoice', '1', 1),
(285, 'show_project_on_estimate', '1', 1),
(286, 'staff_members_create_inline_lead_source', '1', 1),
(287, 'lead_unique_validation', '[\"email\"]', 1),
(288, 'last_upgrade_copy_data', '', 1),
(289, 'custom_js_admin_scripts', '', 1),
(290, 'custom_js_customer_scripts', '0', 1),
(291, 'stripe_webhook_id', '', 1),
(292, 'stripe_webhook_signing_secret', '', 1),
(293, 'stripe_ideal_webhook_id', '', 1),
(294, 'stripe_ideal_webhook_signing_secret', '', 1),
(295, 'show_php_version_notice', '1', 0),
(296, 'recaptcha_ignore_ips', '', 1),
(297, 'show_task_reminders_on_calendar', '1', 1),
(298, 'customer_settings', 'true', 1),
(299, 'upgraded_from_version', '', 0),
(300, 'sms_clickatell_api_key', '', 1),
(301, 'sms_clickatell_active', '0', 1),
(302, 'sms_clickatell_initialized', '1', 1),
(303, 'sms_msg91_sender_id', '', 1),
(304, 'sms_msg91_api_type', 'api', 1),
(305, 'sms_msg91_auth_key', '', 1),
(306, 'sms_msg91_active', '0', 1),
(307, 'sms_msg91_initialized', '1', 1),
(308, 'sms_twilio_account_sid', '', 1),
(309, 'sms_twilio_auth_token', '', 1),
(310, 'sms_twilio_phone_number', '', 1),
(311, 'sms_twilio_active', '0', 1),
(312, 'sms_twilio_initialized', '1', 1),
(313, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(314, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(315, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(316, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(317, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(318, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(319, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(320, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(321, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(322, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(323, 'paymentmethod_authorize_aim_active', '0', 1),
(324, 'paymentmethod_authorize_aim_label', 'Authorize.net AIM', 1),
(325, 'paymentmethod_authorize_aim_api_login_id', '', 0),
(326, 'paymentmethod_authorize_aim_api_transaction_key', '', 0),
(327, 'paymentmethod_authorize_aim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(328, 'paymentmethod_authorize_aim_currencies', 'USD', 0),
(329, 'paymentmethod_authorize_aim_test_mode_enabled', '0', 0),
(330, 'paymentmethod_authorize_aim_developer_mode_enabled', '1', 0),
(331, 'paymentmethod_authorize_aim_default_selected', '1', 1),
(332, 'paymentmethod_authorize_aim_initialized', '1', 1),
(333, 'paymentmethod_authorize_sim_active', '0', 1),
(334, 'paymentmethod_authorize_sim_label', 'Authorize.net SIM', 1),
(335, 'paymentmethod_authorize_sim_api_login_id', '', 0),
(336, 'paymentmethod_authorize_sim_api_transaction_key', '', 0),
(337, 'paymentmethod_authorize_sim_api_secret_key', '', 0),
(338, 'paymentmethod_authorize_sim_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(339, 'paymentmethod_authorize_sim_currencies', 'USD', 0),
(340, 'paymentmethod_authorize_sim_test_mode_enabled', '0', 0),
(341, 'paymentmethod_authorize_sim_developer_mode_enabled', '1', 0),
(342, 'paymentmethod_authorize_sim_default_selected', '1', 1),
(343, 'paymentmethod_authorize_sim_initialized', '1', 1),
(344, 'paymentmethod_instamojo_active', '0', 1),
(345, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(346, 'paymentmethod_instamojo_api_key', '', 0),
(347, 'paymentmethod_instamojo_auth_token', '', 0),
(348, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(349, 'paymentmethod_instamojo_currencies', 'INR', 0),
(350, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(351, 'paymentmethod_instamojo_default_selected', '1', 1),
(352, 'paymentmethod_instamojo_initialized', '1', 1),
(353, 'paymentmethod_mollie_active', '0', 1),
(354, 'paymentmethod_mollie_label', 'Mollie', 1),
(355, 'paymentmethod_mollie_api_key', '', 0),
(356, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(357, 'paymentmethod_mollie_currencies', 'EUR', 0),
(358, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(359, 'paymentmethod_mollie_default_selected', '1', 1),
(360, 'paymentmethod_mollie_initialized', '1', 1),
(361, 'paymentmethod_paypal_braintree_active', '0', 1),
(362, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(363, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(364, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(365, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(366, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(367, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(368, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(369, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(370, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(371, 'paymentmethod_paypal_checkout_active', '0', 1),
(372, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(373, 'paymentmethod_paypal_checkout_client_id', '', 0),
(374, 'paymentmethod_paypal_checkout_secret', '', 0),
(375, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(376, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
(377, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(378, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(379, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(380, 'paymentmethod_paypal_active', '0', 1),
(381, 'paymentmethod_paypal_label', 'Paypal', 1),
(382, 'paymentmethod_paypal_username', '', 0),
(383, 'paymentmethod_paypal_password', '', 0),
(384, 'paymentmethod_paypal_signature', '', 0),
(385, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(386, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(387, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(388, 'paymentmethod_paypal_default_selected', '1', 1),
(389, 'paymentmethod_paypal_initialized', '1', 1),
(390, 'paymentmethod_payu_money_active', '0', 1),
(391, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(392, 'paymentmethod_payu_money_key', '', 0),
(393, 'paymentmethod_payu_money_salt', '', 0),
(394, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(395, 'paymentmethod_payu_money_currencies', 'INR', 0),
(396, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(397, 'paymentmethod_payu_money_default_selected', '1', 1),
(398, 'paymentmethod_payu_money_initialized', '1', 1),
(399, 'paymentmethod_stripe_active', '0', 1),
(400, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(401, 'paymentmethod_stripe_api_secret_key', '', 0),
(402, 'paymentmethod_stripe_api_publishable_key', '', 0),
(403, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(404, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(405, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(406, 'paymentmethod_stripe_default_selected', '1', 1),
(407, 'paymentmethod_stripe_initialized', '1', 1),
(408, 'paymentmethod_stripe_ideal_active', '0', 1),
(409, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(410, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(411, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(412, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(413, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(414, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(415, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(416, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(417, 'paymentmethod_two_checkout_active', '0', 1),
(418, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(419, 'paymentmethod_two_checkout_account_number', '', 0),
(420, 'paymentmethod_two_checkout_private_key', '', 0),
(421, 'paymentmethod_two_checkout_publishable_key', '', 0),
(422, 'paymentmethod_two_checkout_currencies', 'USD,EUR', 0),
(423, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(424, 'paymentmethod_two_checkout_default_selected', '1', 1),
(425, 'paymentmethod_two_checkout_initialized', '1', 1),
(426, 'setup_menu_active', '[]', 1),
(427, 'aside_menu_active', '{\"dashboard\":{\"id\":\"dashboard\",\"icon\":\"\",\"disabled\":\"false\",\"position\":1},\"warehouse\":{\"id\":\"warehouse\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"10\",\"children\":{\"stock_list\":{\"disabled\":\"false\",\"id\":\"stock_list\",\"icon\":\"\",\"position\":\"5\"},\"transfers\":{\"disabled\":\"false\",\"id\":\"transfers\",\"icon\":\"\",\"position\":\"10\"},\"allocated_items\":{\"disabled\":\"false\",\"id\":\"allocated_items\",\"icon\":\"\",\"position\":\"15\"},\"packing_list\":{\"disabled\":\"false\",\"id\":\"packing_list\",\"icon\":\"\",\"position\":\"20\"},\"packing_group\":{\"disabled\":\"false\",\"id\":\"packing_group\",\"icon\":\"\",\"position\":\"25\"},\"purchase_receiving_bay\":{\"disabled\":\"false\",\"id\":\"purchase_receiving_bay\",\"icon\":\"\",\"position\":\"30\"},\"purchase_request\":{\"disabled\":\"false\",\"id\":\"purchase_request\",\"icon\":\"\",\"position\":\"35\"},\"barcode_list\":{\"disabled\":\"false\",\"id\":\"barcode_list\",\"icon\":\"\",\"position\":\"40\"},\"dispatching_bay\":{\"disabled\":\"false\",\"id\":\"dispatching_bay\",\"icon\":\"\",\"position\":\"45\"}}},\"purchase\":{\"id\":\"purchase\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"15\",\"children\":{\"purchase_orders\":{\"disabled\":\"false\",\"id\":\"purchase_orders\",\"icon\":\"\",\"position\":\"5\"},\"pending_purchase_request\":{\"disabled\":\"false\",\"id\":\"pending_purchase_request\",\"icon\":\"\",\"position\":\"10\"}}},\"finance\":{\"id\":\"finance\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"20\",\"children\":{\"currency\":{\"disabled\":\"false\",\"id\":\"currency\",\"icon\":\"\",\"position\":\"5\"},\"ready_to_invoice\":{\"disabled\":\"false\",\"id\":\"ready_to_invoice\",\"icon\":\"\",\"position\":\"10\"}}},\"products\":{\"id\":\"products\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"25\",\"children\":{\"product_list\":{\"disabled\":\"false\",\"id\":\"product_list\",\"icon\":\"\",\"position\":\"5\"},\"product_recipe\":{\"disabled\":\"false\",\"id\":\"product_recipe\",\"icon\":\"\",\"position\":\"10\"}}},\"customers\":{\"id\":\"customers\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"30\"},\"manufacturing_settings\":{\"id\":\"manufacturing_settings\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"35\",\"children\":{\"list_of_machinery\":{\"disabled\":\"false\",\"id\":\"list_of_machinery\",\"icon\":\"\",\"position\":\"5\"},\"list_of_moulds\":{\"disabled\":\"false\",\"id\":\"list_of_moulds\",\"icon\":\"\",\"position\":\"10\"},\"moulds_suitability\":{\"disabled\":\"false\",\"id\":\"moulds_suitability\",\"icon\":\"\",\"position\":\"15\"},\"energy_prices\":{\"disabled\":\"false\",\"id\":\"energy_prices\",\"icon\":\"\",\"position\":\"20\"},\"work_hours_capacity\":{\"disabled\":\"false\",\"id\":\"work_hours_capacity\",\"icon\":\"\",\"position\":\"25\"},\"installation\":{\"disabled\":\"false\",\"id\":\"installation\",\"icon\":\"\",\"position\":\"30\"},\"op_cost_per_sec\":{\"disabled\":\"false\",\"id\":\"op_cost_per_sec\",\"icon\":\"\",\"position\":\"35\"}}},\"sales\":{\"id\":\"sales\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"40\",\"children\":{\"proposals\":{\"disabled\":\"false\",\"id\":\"proposals\",\"icon\":\"\",\"position\":\"5\"},\"quotation_approval\":{\"disabled\":\"false\",\"id\":\"quotation_approval\",\"icon\":\"\",\"position\":\"10\"},\"estimates\":{\"disabled\":\"false\",\"id\":\"estimates\",\"icon\":\"\",\"position\":\"15\"}}},\"planning\":{\"id\":\"planning\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"45\",\"children\":{\"pending_sale_order\":{\"disabled\":\"false\",\"id\":\"pending_sale_order\",\"icon\":\"\",\"position\":\"5\"},\"work_orders\":{\"disabled\":\"false\",\"id\":\"work_orders\",\"icon\":\"\",\"position\":\"10\"}}},\"production\":{\"id\":\"production\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"50\",\"children\":{\"production_work_order\":{\"disabled\":\"false\",\"id\":\"production_work_order\",\"icon\":\"\",\"position\":\"5\"},\"production_machine_list\":{\"disabled\":\"false\",\"id\":\"production_machine_list\",\"icon\":\"\",\"position\":\"10\"}}},\"installation\":{\"id\":\"installation\",\"icon\":\"fa fa-delicious\",\"disabled\":\"false\",\"position\":\"55\",\"children\":{\"installation_work_order\":{\"disabled\":\"false\",\"id\":\"installation_work_order\",\"icon\":\"\",\"position\":\"5\"}}},\"reports\":{\"id\":\"reports\",\"icon\":\"\",\"disabled\":\"false\",\"position\":\"60\",\"children\":{\"profit-reports\":{\"disabled\":\"false\",\"id\":\"profit-reports\",\"icon\":\"\",\"position\":\"5\"},\"sale-reports\":{\"disabled\":\"false\",\"id\":\"sale-reports\",\"icon\":\"\",\"position\":\"10\"},\"work_orders-reports\":{\"disabled\":\"false\",\"id\":\"work_orders-reports\",\"icon\":\"\",\"position\":\"15\"},\"warehouse-reports\":{\"disabled\":\"false\",\"id\":\"warehouse-reports\",\"icon\":\"\",\"position\":\"20\"}}}}', 1),
(428, 'theme_style', '[]', 1),
(429, 'theme_style_custom_admin_area', '', 1),
(430, 'theme_style_custom_clients_area', '', 1),
(431, 'theme_style_custom_clients_and_admin_area', '', 1),
(432, 'sms_trigger_invoice_overdue_notice', '', 0),
(433, 'sms_trigger_invoice_payment_recorded', '', 0),
(434, 'sms_trigger_estimate_expiration_reminder', '', 0),
(435, 'sms_trigger_proposal_expiration_reminder', '', 0),
(436, 'sms_trigger_proposal_new_comment_to_customer', '', 0),
(437, 'sms_trigger_proposal_new_comment_to_staff', '', 0),
(438, 'sms_trigger_contract_new_comment_to_customer', '', 0),
(439, 'sms_trigger_contract_new_comment_to_staff', '', 0),
(440, 'sms_trigger_contract_expiration_reminder', '', 0),
(441, 'sms_trigger_staff_reminder', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpackage_group`
--

CREATE TABLE `tblpackage_group` (
  `id` int(11) NOT NULL,
  `packing_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `default_pack` int(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `pack_capacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpackage_group`
--

INSERT INTO `tblpackage_group` (`id`, `packing_id`, `product_id`, `product_name`, `product_code`, `default_pack`, `order`, `pack_capacity`) VALUES
(180, 150, 114, 'Glass', 'OW-201', 1, 1, 10),
(181, 150, 113, 'Tray', 'OW-200', 1, 2, 20),
(182, 151, 114, 'Glass', 'OW-201', 0, 1, 40),
(183, 150, 118, 'CUP WITH HANDLE AND STRAW', 'MG-04', 1, 3, 15),
(184, 150, 125, 'BREAD BIN WITH TRAY', 'MG-05', 1, 4, 10),
(185, 150, 133, 'Testing Product', 'OW-222', 1, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblpack_list`
--

CREATE TABLE `tblpack_list` (
  `id` int(11) NOT NULL,
  `stock_product_code` int(200) DEFAULT NULL,
  `packing_type` varchar(50) DEFAULT NULL,
  `box_quality` float NOT NULL,
  `box_type` float NOT NULL,
  `l_size` float NOT NULL,
  `w_size` float NOT NULL,
  `h_size` float NOT NULL,
  `volume` float NOT NULL,
  `pack_price` decimal(15,2) NOT NULL,
  `price_per_item` decimal(15,2) NOT NULL,
  `stock_qty` decimal(15,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pack_photo` varchar(100) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpack_list`
--

INSERT INTO `tblpack_list` (`id`, `stock_product_code`, `packing_type`, `box_quality`, `box_type`, `l_size`, `w_size`, `h_size`, `volume`, `pack_price`, `price_per_item`, `stock_qty`, `user_id`, `created_at`, `updated_at`, `pack_photo`, `unit`, `category`, `currency_id`) VALUES
(150, NULL, '500X400X600', 0, 0, 500, 400, 600, 0.12, 20.00, 0.00, -56.00, 1, '2020-11-30 20:19:31', '2020-11-17 18:22:47', NULL, 12, 1, 1),
(151, NULL, 'bbb', 20, 0, 200, 300, 400, 0.024, 20.00, 0.00, 40.00, 1, '2020-10-22 21:02:29', NULL, NULL, 11, 1, 2),
(152, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:10', NULL, NULL, 11, 1, 3),
(153, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:11', NULL, NULL, 11, 1, 3),
(154, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:17', NULL, NULL, 11, 1, 3),
(155, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:17', NULL, NULL, 11, 1, 3),
(156, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:17', NULL, NULL, 11, 1, 3),
(157, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:17', NULL, NULL, 11, 1, 3),
(158, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:18', NULL, NULL, 11, 1, 3),
(159, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:19', NULL, NULL, 11, 1, 3),
(160, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:19', NULL, NULL, 11, 1, 3),
(161, NULL, '9999', 0, 0, 50, 50, 50, 0.000125, 5.00, 0.00, 0.00, 1, '2021-01-20 18:46:19', NULL, NULL, 11, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

CREATE TABLE `tblpayment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', NULL, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

CREATE TABLE `tblpinned_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblplan_recipe`
--

CREATE TABLE `tblplan_recipe` (
  `id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `ingredient_item_id` int(25) DEFAULT NULL,
  `pre_produced` tinyint(1) DEFAULT '0',
  `product_used_qty` decimal(15,4) DEFAULT NULL,
  `used_qty` decimal(15,4) DEFAULT NULL,
  `rate_of_waste` decimal(15,2) DEFAULT NULL,
  `default_machine` varchar(255) DEFAULT NULL,
  `mould` int(25) DEFAULT NULL,
  `is_planned` int(11) NOT NULL DEFAULT '1',
  `rel_wo_id` int(11) DEFAULT NULL,
  `scheduled` int(1) DEFAULT '0',
  `wo_product_id` varchar(50) DEFAULT NULL,
  `cycle_time` decimal(15,2) DEFAULT NULL,
  `mould_cavity` decimal(15,2) DEFAULT NULL,
  `recipe_install_transfer_id` int(11) DEFAULT NULL,
  `quick_purchased` int(1) NOT NULL,
  `arrival_date` varchar(50) DEFAULT NULL,
  `connected_pair` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblplan_recipe`
--

INSERT INTO `tblplan_recipe` (`id`, `product_code`, `product_name`, `ingredient_item_id`, `pre_produced`, `product_used_qty`, `used_qty`, `rate_of_waste`, `default_machine`, `mould`, `is_planned`, `rel_wo_id`, `scheduled`, `wo_product_id`, `cycle_time`, `mould_cavity`, `recipe_install_transfer_id`, `quick_purchased`, `arrival_date`, `connected_pair`) VALUES
(183, 'A-70', 'A-70', 111, 0, NULL, 24.0000, 4.00, NULL, 23, 1, 88, 1, '114', 2.00, 34.00, NULL, 0, NULL, NULL),
(184, 'MG-04-001', 'Body', 119, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 89, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(185, 'MG-04-002', 'KAPAK', 120, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 89, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(186, 'MG-04-003', 'TIPA', 121, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 89, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(187, 'PD-001', 'PIPET', 123, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 89, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(188, 'PD-111', 'Polypropylene(PP)', 112, 0, NULL, 6.0000, 2.00, NULL, 25, 1, 89, 0, '119', 22.00, 2.00, NULL, 0, NULL, NULL),
(189, 'I-20', 'I-20', 122, 0, NULL, 1.0000, 2.00, NULL, 23, 1, 89, 0, '120', 25.00, 4.00, NULL, 0, NULL, NULL),
(190, 'I-20', 'I-20', 122, 0, NULL, 0.0000, 2.00, NULL, 24, 1, 89, 0, '121', 20.00, 12.00, NULL, 0, NULL, NULL),
(191, 'MG-04-001', 'Body', 119, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 90, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(192, 'MG-04-002', 'KAPAK', 120, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 90, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(193, 'MG-04-003', 'TIPA', 121, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 90, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(194, 'PD-001', 'PIPET', 123, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 90, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(195, 'PD-111', 'Polypropylene(PP)', 112, 0, NULL, 6.0000, 2.00, NULL, 25, 1, 90, 0, '119', 22.00, 2.00, NULL, 0, NULL, NULL),
(196, 'I-20', 'I-20', 122, 0, NULL, 1.0000, 2.00, NULL, 23, 1, 90, 0, '120', 25.00, 4.00, NULL, 0, NULL, NULL),
(197, 'I-20', 'I-20', 122, 0, NULL, 0.0000, 2.00, NULL, 24, 1, 90, 0, '121', 20.00, 12.00, NULL, 0, NULL, NULL),
(198, 'MG-04-001', 'Body', 119, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 91, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(199, 'MG-04-002', 'KAPAK', 120, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 91, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(200, 'MG-04-003', 'TIPA', 121, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 91, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(201, 'PD-001', 'PIPET', 123, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 91, 0, '118', 0.00, 0.00, NULL, 0, NULL, NULL),
(202, 'I-20', 'I-20', 122, 0, NULL, 2.0000, 2.00, NULL, 23, 1, 91, 0, '120', 25.00, 4.00, NULL, 0, NULL, NULL),
(203, 'PD-111', 'Polypropylene(PP)', 112, 0, NULL, 12.0000, 2.00, NULL, 25, 1, 91, 0, '119', 22.00, 2.00, NULL, 0, NULL, NULL),
(204, 'I-20', 'I-20', 122, 0, NULL, 0.0000, 2.00, NULL, 24, 1, 91, 0, '121', 20.00, 12.00, NULL, 0, NULL, NULL),
(205, 'MG-05-001', 'BODY', 126, 1, NULL, 20.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(206, 'MG-05-002', 'TRAY', 127, 1, NULL, 20.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(207, 'MG-05-003', 'AYAK', 128, 0, NULL, 80.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(208, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(209, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(210, 'PD-022', 'INSERT', 132, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 92, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(211, 'PD-111', 'PS', 112, 0, NULL, 4.2000, 2.00, NULL, 23, 1, 92, 0, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(212, 'PD-111', 'PS', 112, 0, NULL, 11.6000, 5.00, NULL, 25, 1, 92, 1, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(213, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.0400, 0.00, NULL, 0, 1, 92, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(214, 'MG-05-001', 'BODY', 126, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(215, 'MG-05-002', 'TRAY', 127, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(216, 'MG-05-003', 'AYAK', 128, 0, NULL, 800.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(217, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(218, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(219, 'PD-022', 'INSERT', 132, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 93, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(220, 'PD-111', 'PS', 112, 0, NULL, 42.0000, 2.00, NULL, 23, 1, 93, 1, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(221, 'PD-111', 'PS', 112, 0, NULL, 116.0000, 5.00, NULL, 25, 1, 93, 1, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(222, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.4000, 0.00, NULL, 0, 1, 93, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(223, 'MG-05-001', 'BODY', 126, 1, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(224, 'MG-05-002', 'TRAY', 127, 1, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(225, 'MG-05-003', 'AYAK', 128, 0, NULL, 4000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(226, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 1, '2020-11-13', NULL),
(227, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(228, 'PD-022', 'INSERT', 132, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(229, 'PD-111', 'PS', 112, 0, NULL, 580.0000, 5.00, NULL, 25, 1, 94, 1, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(230, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 2.0000, 0.00, NULL, 0, 1, 94, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(231, 'PD-111', 'PS', 112, 0, NULL, 210.0000, 2.00, NULL, 23, 1, 94, 0, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(232, 'MG-05-001', 'BODY', 126, 1, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(233, 'MG-05-002', 'TRAY', 127, 1, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(234, 'MG-05-003', 'AYAK', 128, 0, NULL, 4000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(235, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(236, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(237, 'PD-022', 'INSERT', 132, 0, NULL, 1000.0000, 0.00, NULL, 0, 1, 94, 0, '125', 0.00, 24.00, NULL, 0, NULL, NULL),
(238, 'PD-111', 'PS', 112, 0, NULL, 210.0000, 2.00, NULL, 23, 1, 94, 0, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(239, 'PD-111', 'PS', 112, 0, NULL, 580.0000, 5.00, NULL, 25, 1, 94, 0, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(240, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 2.0000, 0.00, NULL, 0, 1, 94, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(241, 'MG-05-001', 'BODY', 126, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 44, 0, NULL, NULL),
(242, 'MG-05-002', 'TRAY', 127, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 45, 0, NULL, NULL),
(243, 'MG-05-003', 'AYAK', 128, 0, NULL, 400.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 46, 1, '2020-11-17', NULL),
(244, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 47, 1, '2020-11-17', NULL),
(245, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 48, 0, NULL, NULL),
(246, 'PD-022', 'INSERT', 132, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 95, 0, '125', 0.00, 24.00, 49, 0, NULL, NULL),
(247, 'PD-111', 'PS', 112, 0, NULL, 21.0000, 2.00, NULL, 23, 1, 95, 1, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(248, 'PD-111', 'PS', 112, 0, NULL, 58.0000, 5.00, NULL, 25, 1, 95, 1, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(249, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.2000, 0.00, NULL, 0, 1, 95, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(250, 'MG-05-001', 'BODY', 126, 1, NULL, 150.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 76, 0, NULL, NULL),
(251, 'MG-05-002', 'TRAY', 127, 1, NULL, 150.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 77, 0, NULL, NULL),
(252, 'MG-05-003', 'AYAK', 128, 0, NULL, 600.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 78, 0, NULL, NULL),
(253, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 150.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 79, 0, NULL, NULL),
(254, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 150.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 80, 1, '2020-11-17', NULL),
(255, 'PD-022', 'INSERT', 132, 0, NULL, 150.0000, 0.00, NULL, 0, 1, 96, 0, '125', 0.00, 24.00, 81, 1, '2020-11-17', NULL),
(256, 'PD-111', 'PS', 112, 0, NULL, 87.0000, 5.00, NULL, 25, 1, 96, 1, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(257, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.3000, 0.00, NULL, 0, 1, 96, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(258, 'PD-111', 'PS', 112, 0, NULL, 31.5000, 2.00, NULL, 23, 1, 96, 1, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(259, 'MG-05-001', 'BODY', 126, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 89, 0, NULL, NULL),
(260, 'MG-05-002', 'TRAY', 127, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 90, 0, NULL, NULL),
(261, 'MG-05-003', 'AYAK', 128, 0, NULL, 400.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 91, 0, '', NULL),
(262, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 92, 0, '', NULL),
(263, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 93, 0, '', NULL),
(264, 'PD-022', 'INSERT', 132, 0, NULL, 100.0000, 0.00, NULL, 0, 1, 97, 0, '125', 0.00, 24.00, 94, 0, '', NULL),
(265, 'PD-111', 'PS', 112, 0, NULL, 58.0000, 5.00, NULL, 25, 1, 97, 0, '126', 40.00, 24.00, NULL, 0, '', NULL),
(266, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.2000, 0.00, NULL, 0, 1, 97, 0, '126', 0.00, 24.00, NULL, 0, '', NULL),
(267, 'PD-111', 'PS', 112, 0, NULL, 21.0000, 2.00, NULL, 23, 1, 97, 0, '127', 35.00, 24.00, NULL, 0, '', NULL),
(268, 'MG-05-001', 'BODY', 126, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 101, 0, NULL, NULL),
(269, 'MG-05-002', 'TRAY', 127, 1, NULL, 200.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 102, 0, NULL, NULL),
(270, 'MG-05-003', 'AYAK', 128, 0, NULL, 800.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 103, 0, NULL, NULL),
(271, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 104, 0, NULL, NULL),
(272, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 105, 0, NULL, NULL),
(273, 'PD-022', 'INSERT', 132, 0, NULL, 200.0000, 0.00, NULL, 0, 1, 98, 0, '125', 0.00, 24.00, 106, 0, NULL, NULL),
(274, 'PD-111', 'PS', 112, 0, NULL, 116.0000, 5.00, NULL, 25, 1, 98, 0, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(275, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.4000, 0.00, NULL, 0, 1, 98, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(276, 'PD-111', 'PS', 112, 0, NULL, 42.0000, 2.00, NULL, 23, 1, 98, 0, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(277, 'MG-05-001', 'BODY', 126, 1, NULL, 20.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 118, 0, NULL, NULL),
(278, 'MG-05-002', 'TRAY', 127, 1, NULL, 20.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 119, 0, NULL, NULL),
(279, 'MG-05-003', 'AYAK', 128, 0, NULL, 80.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 120, 167, '2020-11-24', NULL),
(280, 'PD-012', 'FILE/KOPCA', 130, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 121, 0, NULL, NULL),
(281, 'PD-013', 'MG-05 BOX', 131, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 122, 0, NULL, NULL),
(282, 'PD-022', 'INSERT', 132, 0, NULL, 20.0000, 0.00, NULL, 0, 1, 99, 0, '125', 0.00, 24.00, 123, 168, '2020-12-01', NULL),
(283, 'PD-111', 'PS', 112, 0, NULL, 11.6000, 5.00, NULL, 25, 1, 99, 0, '126', 40.00, 24.00, NULL, 0, NULL, NULL),
(284, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 0.0400, 0.00, NULL, 0, 1, 99, 0, '126', 0.00, 24.00, NULL, 0, NULL, NULL),
(285, 'PD-111', 'PS', 112, 0, NULL, 4.2000, 2.00, NULL, 23, 1, 99, 0, '127', 35.00, 24.00, NULL, 0, NULL, NULL),
(286, 'PD-111', 'PS', 112, 0, NULL, 1.0000, 2.00, NULL, 22, 1, 100, 1, '133', 20.00, 25.00, NULL, 0, '', NULL),
(287, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 1.0000, 0.00, NULL, 0, 1, 100, 0, '133', 0.00, 0.00, NULL, 0, '', NULL),
(288, 'PD-111', 'PS', 112, 0, NULL, 2.2000, 2.00, NULL, 22, 1, 101, 1, '133', 20.00, 25.00, NULL, 0, NULL, 0),
(289, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 2.2000, 0.00, NULL, 0, 1, 101, 0, '133', 0.00, 0.00, NULL, 169, '2020-12-04', 112),
(290, 'PD-111', 'PS', 112, 0, NULL, 100.0000, 2.00, NULL, 22, 1, 102, 1, '133', 20.00, 25.00, 150, 0, '', 0),
(291, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 10.0000, 0.00, NULL, 0, 1, 102, 0, '133', 0.00, 0.00, 151, 0, '', 112),
(292, 'BRD-001', 'Glass', 134, 1, NULL, 40.0000, 0.00, NULL, 0, 1, 103, 0, '135', 0.00, 0.00, 157, 0, NULL, 0),
(293, 'MG-05-002', 'TRAY', 127, 1, NULL, 10.0000, 0.00, NULL, 0, 1, 103, 0, '135', 0.00, 0.00, 158, 0, NULL, 0),
(294, 'PD-111', 'PS', 112, 0, NULL, 8.0000, 2.00, NULL, 23, 1, 103, 1, '134', 25.00, 24.00, NULL, 0, '', 0),
(295, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 4.0000, 0.00, NULL, 0, 1, 103, 0, '134', 0.00, 0.00, NULL, 0, '', 112),
(296, 'PD-111', 'PS', 112, 0, NULL, 2.1000, 2.00, NULL, 23, 1, 103, 0, '127', 35.00, 24.00, NULL, 0, '', 0),
(297, 'PD-111', 'PS', 112, 0, NULL, 20.0000, 2.00, NULL, 23, 1, 104, 1, '134', 25.00, 24.00, 163, 0, '', 0),
(298, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 10.0000, 0.00, NULL, 0, 1, 104, 0, '134', 0.00, 0.00, 164, 0, '', 112),
(299, 'BRD-001', 'Glass', 134, 1, NULL, 400.0000, 0.00, NULL, 0, 1, 105, 0, '135', 0.00, 0.00, NULL, 0, NULL, 0),
(300, 'MG-05-002', 'TRAY', 127, 1, NULL, 100.0000, 0.00, NULL, 0, 1, 105, 0, '135', 0.00, 0.00, NULL, 0, NULL, 0),
(301, 'PD-111', 'PS', 112, 0, NULL, 80.0000, 2.00, NULL, 23, 1, 105, 1, '134', 25.00, 24.00, NULL, 0, NULL, 0),
(302, 'PD-BOYA', 'MASTER BATCH', 129, 0, NULL, 40.0000, 0.00, NULL, 0, 1, 105, 0, '134', 0.00, 0.00, NULL, 0, NULL, 112),
(303, 'PD-111', 'PS', 112, 0, NULL, 21.0000, 2.00, NULL, 23, 1, 105, 0, '127', 35.00, 24.00, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblprice_category_permission`
--

CREATE TABLE `tblprice_category_permission` (
  `id` int(11) NOT NULL,
  `staff_id` int(20) DEFAULT NULL,
  `price_category_id` varchar(200) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblprice_category_permission`
--

INSERT INTO `tblprice_category_permission` (`id`, `staff_id`, `price_category_id`, `role_id`) VALUES
(5, 4, '[\"8\"]', NULL),
(6, 5, '[\"8\"]', NULL),
(7, 6, '[]', NULL),
(8, 7, '[]', NULL),
(9, 8, '[]', NULL),
(10, 9, '[]', NULL),
(11, 10, '[]', NULL),
(12, 11, '[]', NULL),
(13, 12, '[]', NULL),
(14, 13, '[]', NULL),
(15, 14, '[]', NULL),
(16, 15, '[\"8\",\"9\"]', NULL),
(17, 16, '[\"9\"]', NULL),
(18, 17, '[\"9\"]', NULL),
(19, 18, '[\"9\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpricing_calculation`
--

CREATE TABLE `tblpricing_calculation` (
  `id` int(11) NOT NULL,
  `rel_product_recipe_id` int(11) DEFAULT NULL,
  `rel_price_category` int(25) DEFAULT NULL,
  `rel_product_id` int(11) DEFAULT NULL,
  `other_cost_details` varchar(255) DEFAULT NULL,
  `other_cost` decimal(15,2) DEFAULT NULL,
  `op_cost_per_sec` decimal(15,2) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `last_calc_date` timestamp NULL DEFAULT NULL,
  `ins_cost` decimal(15,2) DEFAULT NULL,
  `ins_time` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpricing_calculation`
--

INSERT INTO `tblpricing_calculation` (`id`, `rel_product_recipe_id`, `rel_price_category`, `rel_product_id`, `other_cost_details`, `other_cost`, `op_cost_per_sec`, `price`, `last_calc_date`, `ins_cost`, `ins_time`) VALUES
(60, NULL, NULL, 114, 'aa', 4.00, NULL, 673.77, '2020-10-23 00:16:23', 4.00, 2.00),
(61, NULL, NULL, 113, '222', 34.00, NULL, 437.73, '2020-10-23 00:25:36', 4.00, 2.00),
(62, NULL, NULL, 115, 'sss', 2.00, NULL, 8.00, '2020-10-23 00:26:09', 6.00, 3.00),
(63, NULL, NULL, 119, '-', 0.00, NULL, 9.88, '2020-10-26 03:13:01', 0.00, 0.00),
(64, NULL, NULL, 120, '-', 0.00, NULL, 4.38, '2020-10-26 03:13:50', 0.00, 0.00),
(65, NULL, NULL, 121, '-', 0.00, NULL, 2.37, '2020-10-26 03:14:26', 0.00, 0.00),
(66, NULL, NULL, 118, '-', 0.00, NULL, 30.00, '2020-10-25 16:29:39', 30.00, 15.00),
(67, NULL, NULL, 126, '-', 0.00, NULL, 82.72, '2020-10-26 22:41:31', 0.00, 0.00),
(68, NULL, NULL, 127, '-', 0.00, NULL, 31.99, '2020-10-26 22:44:45', 0.00, 0.00),
(69, NULL, NULL, 125, 'Baski', 2.50, NULL, 259.71, '2020-10-26 10:16:28', 30.00, 15.00),
(70, NULL, NULL, 133, '-', 0.00, NULL, 1353.38, '2020-11-30 18:11:28', 0.00, 0.00),
(71, NULL, NULL, 134, '-', 0.00, NULL, 31.97, '2020-12-06 18:53:46', 0.00, 0.00),
(72, NULL, NULL, 135, 'Holder 123', 1.00, NULL, 164.87, '2020-12-06 18:34:24', 4.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblpricing_categories`
--

CREATE TABLE `tblpricing_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `default_currency` varchar(20) NOT NULL,
  `calc_value1` float NOT NULL,
  `calc_value2` float NOT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpricing_categories`
--

INSERT INTO `tblpricing_categories` (`id`, `name`, `default_currency`, `calc_value1`, `calc_value2`, `order_no`) VALUES
(8, 'Export Sales', '1', 1.08, 1.05, 1),
(9, 'Internal Sales', '3', 1.06, 1.04, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduced_qty`
--

CREATE TABLE `tblproduced_qty` (
  `p_qty_id` int(11) NOT NULL,
  `produced_quantity` decimal(15,2) DEFAULT NULL,
  `current_time_selection` date DEFAULT NULL,
  `rel_event_id` int(11) DEFAULT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `minus_transfer_id` int(11) DEFAULT NULL,
  `plus_transfer_id` int(11) DEFAULT NULL,
  `waste_production_quantity` decimal(15,2) DEFAULT NULL,
  `waste_transfer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproduced_qty`
--

INSERT INTO `tblproduced_qty` (`p_qty_id`, `produced_quantity`, `current_time_selection`, `rel_event_id`, `machine_id`, `userid`, `minus_transfer_id`, `plus_transfer_id`, `waste_production_quantity`, `waste_transfer_id`) VALUES
(65, 10.00, '2020-10-20', 74, 12, 1, 423, 425, 5.00, 424),
(66, 7.00, '2020-10-21', 74, 12, 1, NULL, NULL, 4.00, NULL),
(67, 5.00, '2020-10-13', 75, 15, 1, NULL, NULL, 5.00, NULL),
(68, 10.00, '2020-10-13', 75, 15, 1, 15, 17, 5.00, 16),
(69, 20.00, '2020-10-19', 76, 15, 1, 19, 21, 10.00, 20),
(70, 40.00, '2020-10-20', 76, 15, 1, 22, 24, 10.00, 23),
(71, 450.00, '2020-10-31', 78, 15, 1, 27, 29, 0.00, 28),
(72, 7.00, '2020-10-14', 75, 15, 1, 30, 31, 0.00, NULL),
(73, 100.00, '2020-10-31', 79, 16, 1, 32, 33, 10.00, NULL),
(74, 1000.00, '2020-10-31', 79, 16, 1, 34, 35, 0.00, NULL),
(75, 1000.00, '2020-10-31', 79, 16, 1, 36, 37, 0.00, NULL),
(76, 1000.00, '2020-11-01', 80, 15, 1, 38, 39, 0.00, NULL),
(77, 100.00, '2020-10-20', 77, 14, 1, 56, 58, 20.00, 57),
(78, 50.00, '2020-11-24', 81, 16, 1, 64, 66, 10.00, 65),
(79, 100.00, '2020-11-25', 81, 16, 1, 67, 68, 0.00, NULL),
(80, 150.00, '2020-11-26', 82, 16, 1, 69, 71, 10.00, 70),
(81, 10.00, '2020-11-22', 83, 12, 1, 128, 129, 0.00, NULL),
(82, 6.00, '2020-11-06', 84, 12, 1, 131, 134, 2.00, 133),
(83, 5.00, '2020-12-01', 85, 12, 1, 138, 141, 2.00, 140),
(84, 5.00, '2020-12-02', 85, 12, 1, 143, 146, 2.00, 145),
(85, 20.00, '2020-12-07', 86, 14, 1, 154, 155, 0.00, NULL),
(86, 50.00, '2020-12-07', 87, 16, 1, 160, 161, 0.00, NULL),
(87, 20.00, '2020-12-08', 86, 14, 1, 166, 169, 2.00, 168),
(88, 50.00, '2020-12-09', 87, 16, 1, 171, 172, 0.00, NULL),
(89, 50.00, '2020-12-09', 87, 16, 1, 174, 175, 0.00, NULL),
(90, 50.00, '2020-12-09', 87, 16, 1, 177, 178, 0.00, NULL),
(91, 50.00, '2020-12-09', 87, 16, 1, 180, 181, 0.00, NULL),
(92, 50.00, '2020-12-09', 87, 16, 1, 183, 184, 0.00, NULL),
(93, 100.00, '2021-01-20', 88, 14, 1, 187, 188, 0.00, NULL),
(94, 100.00, '2021-01-20', 88, 14, 1, 190, 191, 0.00, NULL),
(95, 100.00, '2021-01-20', 88, 14, 1, 193, 194, 0.00, NULL),
(96, 75.00, '2021-01-21', 88, 14, 1, 200, 201, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct_recipe`
--

CREATE TABLE `tblproduct_recipe` (
  `id` int(11) NOT NULL,
  `rel_product_id` int(25) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `pre_produced` tinyint(1) DEFAULT '0',
  `ingredient_item_id` int(25) DEFAULT NULL,
  `ingredient_price` decimal(15,2) DEFAULT NULL,
  `ingredient_currency_id` int(11) DEFAULT NULL,
  `ingredient_currency_rate` decimal(15,2) DEFAULT NULL,
  `used_qty` decimal(15,4) DEFAULT NULL,
  `rate_of_waste` decimal(15,2) DEFAULT NULL,
  `default_machine` varchar(255) DEFAULT NULL,
  `mould` int(25) DEFAULT NULL,
  `material_cost` decimal(15,2) DEFAULT NULL,
  `production_cost` decimal(15,2) DEFAULT NULL,
  `expected_profit` decimal(15,2) DEFAULT NULL,
  `ins_cost` decimal(15,2) DEFAULT NULL,
  `cycle_time` decimal(15,2) DEFAULT NULL,
  `mould_cavity` decimal(15,2) DEFAULT NULL,
  `machine_id_expected` int(11) DEFAULT NULL,
  `machine_profit_expected` decimal(15,2) DEFAULT NULL,
  `machine_power_expected` decimal(15,2) DEFAULT NULL,
  `work_hour_capacity` decimal(15,2) DEFAULT NULL,
  `energy_price_value` decimal(15,2) DEFAULT NULL,
  `recipe_install_transfer_id` int(11) DEFAULT NULL,
  `connected_pair` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproduct_recipe`
--

INSERT INTO `tblproduct_recipe` (`id`, `rel_product_id`, `product_code`, `product_name`, `pre_produced`, `ingredient_item_id`, `ingredient_price`, `ingredient_currency_id`, `ingredient_currency_rate`, `used_qty`, `rate_of_waste`, `default_machine`, `mould`, `material_cost`, `production_cost`, `expected_profit`, `ins_cost`, `cycle_time`, `mould_cavity`, `machine_id_expected`, `machine_profit_expected`, `machine_power_expected`, `work_hour_capacity`, `energy_price_value`, `recipe_install_transfer_id`, `connected_pair`) VALUES
(180, 114, 'A-70', 'A-70', 0, 111, 70.87, 1, 100.00, 2.0000, 4.00, '12', 23, 665.60, 0.17, 0.00, NULL, 2.00, 24.00, 12, 1500.00, 200.00, 10.00, 0.39, NULL, NULL),
(181, 113, 'OW-200', 'Polypropylene', 0, 112, 76.95, 1, 100.00, 3.0000, 2.00, '12', 23, 397.80, 1.89, 0.04, NULL, 22.00, 24.00, 12, 1500.00, 200.00, 10.00, 0.39, NULL, NULL),
(182, 115, 'OW-202', 'Glass', 1, 114, 57.83, 1, 100.00, 2.0000, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(183, 115, 'OW-202', 'Tray', 1, 113, 2.02, 1, 100.00, 4.0000, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(184, 119, 'PD-111', 'Polypropylene(PP)', 0, 112, 2.85, 1, 100.00, 0.0600, 2.00, '15', 25, 7.96, 1.88, 0.04, NULL, 22.00, 24.00, 15, 1750.00, 50.00, 10.00, 0.39, NULL, NULL),
(185, 120, 'MG-04-002', 'I-20', 0, 122, 1.35, 1, 100.00, 0.0100, 2.00, '14', 23, 1.43, 2.52, 0.43, NULL, 25.00, 24.00, 14, 15000.00, 24.40, 10.00, 0.39, NULL, NULL),
(186, 121, 'MG-04-003', 'I-20', 0, 122, 0.32, 1, 100.00, 0.0000, 2.00, '14', 24, 0.00, 2.02, 0.35, NULL, 20.00, 24.00, 14, 15000.00, 24.40, 10.00, 0.39, NULL, NULL),
(187, 118, 'MG-04-001', 'Body', 1, 119, 1.01, 3, 1.00, 1.0000, 0.00, '', 0, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(188, 118, 'MG-04-002', 'KAPAK', 1, 120, 0.38, 3, 1.00, 1.0000, 0.00, '', 0, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(189, 118, 'MG-04-003', 'TIPA', 1, 121, 0.07, 3, 1.00, 1.0000, 0.00, '', 0, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(191, 118, NULL, 'PIPET', 0, 123, 0.10, 3, 1.00, 1.0000, 0.00, 'null', 0, 0.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(192, 126, 'MG-05-001', 'PS', 0, 112, 1.30, 1, 100.00, 0.5800, 5.00, '15', 25, 79.17, 3.42, 0.08, NULL, 40.00, 24.00, 15, 1750.00, 50.00, 10.00, 0.39, NULL, NULL),
(193, 126, 'MG-05-001', 'MASTER BATCH', 0, 129, 11.69, 3, 1.00, 0.0020, 0.00, '13', 0, 0.05, 0.00, 0.00, NULL, 0.00, 24.00, 13, 17500.00, 22.00, 10.00, 0.39, NULL, NULL),
(194, 127, 'MG-05-002', 'PS', 0, 112, 4.47, 1, 100.00, 0.2100, 2.00, '14', 23, 27.85, 3.53, 0.61, NULL, 35.00, 24.00, 14, 15000.00, 24.40, 10.00, 0.39, NULL, NULL),
(195, 125, 'MG-05-001', 'BODY', 1, 126, 8.83, 3, 1.00, 1.0000, 0.00, '', 0, 82.72, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(196, 125, 'MG-05-002', 'TRAY', 1, 127, 3.72, 3, 1.00, 1.0000, 0.00, '', 0, 31.99, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(197, 125, 'MG-05-003', 'AYAK', 0, 128, 0.25, 3, 1.00, 4.0000, 0.00, '', 0, 1.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(198, 125, 'PD-012', 'FILE/KOPCA', 0, 130, 0.10, 1, 100.00, 1.0000, 0.00, '', 0, 100.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(199, 125, 'PD-013', 'MG-05 BOX', 0, 131, 1.50, 3, 1.00, 1.0000, 0.00, '', 0, 1.50, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(200, 125, 'PD-022', 'INSERT', 0, 132, 21.46, 1, 100.00, 1.0000, 0.00, '', 0, 10.00, 0.00, 0.00, NULL, 0.00, 24.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, NULL),
(203, 133, 'PD-111', 'PS', 0, 112, 1.30, 1, 100.00, 10.0000, 2.00, '13', 22, 1326.00, 1.99, 0.39, NULL, 20.00, 25.00, 13, 17500.00, 22.00, 10.00, 0.39, NULL, 0),
(204, 133, 'PD-BOYA', 'MASTER BATCH', 0, 129, 25.00, 3, 1.00, 1.0000, 0.00, '', 0, 25.00, 0.00, 0.00, NULL, 0.00, 0.00, 13, 17500.00, 22.00, 10.00, 0.39, NULL, 112),
(205, 134, 'PD-111', 'PS', 0, 112, 1.30, 1, 100.00, 0.2000, 2.00, '14', 23, 26.52, 2.52, 0.43, NULL, 25.00, 24.00, 14, 15000.00, 24.40, 10.00, 0.39, NULL, 0),
(206, 134, 'PD-BOYA', 'MASTER BATCH', 0, 129, 25.00, 3, 1.00, 0.1000, 0.00, '', 0, 2.50, 0.00, 0.00, NULL, 0.00, 0.00, 14, 15000.00, 24.40, 10.00, 0.39, NULL, 112),
(207, 135, 'BRD-001', 'Glass', 1, 134, 31.97, 3, 1.00, 4.0000, 0.00, NULL, NULL, 127.88, 0.00, 0.00, NULL, 0.00, 0.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, 0),
(208, 135, 'MG-05-002', 'TRAY', 1, 127, 31.99, 3, 1.00, 1.0000, 0.00, NULL, NULL, 31.99, 0.00, 0.00, NULL, 0.00, 0.00, 0, 0.00, 0.00, 10.00, 0.39, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

CREATE TABLE `tblproject_activity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

CREATE TABLE `tblproject_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

CREATE TABLE `tblproject_members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_members`
--

INSERT INTO `tblproject_members` (`id`, `project_id`, `staff_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

CREATE TABLE `tblproject_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

CREATE TABLE `tblproject_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproject_settings`
--

INSERT INTO `tblproject_settings` (`id`, `project_id`, `name`, `value`) VALUES
(1, 1, 'available_features', 'a:16:{s:16:\"project_overview\";i:1;s:13:\"project_tasks\";i:1;s:18:\"project_timesheets\";i:1;s:18:\"project_milestones\";i:1;s:13:\"project_files\";i:1;s:19:\"project_discussions\";i:1;s:13:\"project_gantt\";i:1;s:15:\"project_tickets\";i:1;s:17:\"project_contracts\";i:1;s:16:\"project_invoices\";i:1;s:17:\"project_estimates\";i:1;s:16:\"project_expenses\";i:1;s:20:\"project_credit_notes\";i:1;s:21:\"project_subscriptions\";i:1;s:13:\"project_notes\";i:1;s:16:\"project_activity\";i:1;}'),
(2, 1, 'view_tasks', '1'),
(3, 1, 'create_tasks', '1'),
(4, 1, 'edit_tasks', '1'),
(5, 1, 'comment_on_tasks', '1'),
(6, 1, 'view_task_comments', '1'),
(7, 1, 'view_task_attachments', '1'),
(8, 1, 'view_task_checklist_items', '1'),
(9, 1, 'upload_on_tasks', '1'),
(10, 1, 'view_task_total_logged_time', '1'),
(11, 1, 'view_finance_overview', '1'),
(12, 1, 'upload_files', '1'),
(13, 1, 'open_discussions', '1'),
(14, 1, 'view_milestones', '1'),
(15, 1, 'view_gantt', '1'),
(16, 1, 'view_timesheets', '1'),
(17, 1, 'view_activity_log', '1'),
(18, 1, 'view_team_members', '1'),
(19, 1, 'hide_tasks_on_main_tasks_table', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `quote_phase_id` int(11) DEFAULT NULL,
  `pricing_category_id` int(11) DEFAULT NULL,
  `sum_volume_m3` float DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `shipping_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproposals`
--

INSERT INTO `tblproposals` (`id`, `subject`, `content`, `addedfrom`, `datecreated`, `total`, `subtotal`, `total_tax`, `adjustment`, `discount_percent`, `discount_total`, `discount_type`, `show_quantity_as`, `currency`, `open_till`, `date`, `rel_id`, `rel_type`, `assigned`, `hash`, `proposal_to`, `country`, `zip`, `state`, `city`, `address`, `email`, `phone`, `allow_comments`, `status`, `estimate_id`, `invoice_id`, `date_converted`, `pipeline_order`, `is_expiry_notified`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `signature`, `quote_phase_id`, `pricing_category_id`, `sum_volume_m3`, `updated_user`, `active`, `shipping_type`) VALUES
(104, 'test', '{proposal_items}', 1, '2020-10-22 05:29:16', 1000.00, 1000.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, '7434b94f71a14e644d1ea0d63ef58213', 'raf company', 0, '', '', '', '', 'cutewolf4575@gmail.com', '', 0, 3, 81, 87, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.12, 1, 1, 'aaaa'),
(105, 'fgfg', '{proposal_items}', 1, '2020-10-22 19:56:57', 396.00, 396.00, 0.00, 0.00, 0.00, 0.00, '', 1, 2, NULL, '0000-00-00', 1, 'customer', 0, '646b93e7e61e09f82f9af8f619adc6b9', 'raf company', 0, '', '', '', '', 'cutewolf4575@gmail.com', '', 0, 3, 82, 88, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 0.144, 1, 1, 'dfdf'),
(106, 'test sale', '{proposal_items}', 1, '2020-10-25 13:24:41', 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, '', 1, 2, NULL, '0000-00-00', 1, 'customer', 0, '1d46f685c18261f8524ae548db78c329', 'raf company', 0, '', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 83, 89, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0, 1, 1, 'TRUCK'),
(107, 'test sale', '{proposal_items}', 1, '2020-10-25 13:30:50', 300.00, 300.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, '055b2860a6a3a8d5b242ef661794e74a', 'raf company', 0, '', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 84, 90, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0.8, 1, 1, 'TRUCK'),
(108, 'test sale', '{proposal_items}', 1, '2020-10-26 07:10:31', 600.00, 600.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'd69dce95f65d6e5dc02e5db544b814c8', 'raf company', 0, '', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 85, 91, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1.6, 1, 1, 'TRUCK'),
(109, 'test', '{proposal_items}', 1, '2020-10-28 07:29:51', 880.00, 880.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, '269217cd86387282cb04becd159d4795', 'raf company', 0, '', '', '', '', 'cutewolf4575@gmail.com', '', 0, 4, 86, 92, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0.24, 1, 1, 'dfadf'),
(110, 'ALMANYA', '{proposal_items}', 1, '2020-10-28 16:30:33', 6400.00, 6400.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'f3bb1cc54f477d0ecef00efb8ffe5bb8', 'raf company', 0, '', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 87, 93, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 2.4, 1, 1, 'TRUCK'),
(111, 'sok ksmpsnys', '{proposal_items}', 1, '2020-10-31 08:53:04', 571300.00, 571300.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, '2861f5e61f0a5d4ad502693315e4d95a', 'raf company', 14, '34000', '', 'ist', 'xxxxxxxxxxxxxxx', 'kiremet@gmail.com', '1111111111', 0, 3, 88, 94, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 24, 1, 1, 'tır'),
(112, 'sok deneme', '{proposal_items}', 1, '2020-10-31 16:09:04', 28500.00, 28500.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, '06d12dfba15df6ce31e803610ecafe52', 'raf company', 14, '34000', '', 'ist', 'xxxxxxxxxxxxxxx', 'mehmet.yucel@gorsel.net', '1111111111', 0, 3, 89, 95, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1.2, 1, 1, 'tır'),
(113, 'NEW SALE', '{proposal_items}', 1, '2020-11-17 11:26:20', 47400.00, 47400.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'c9599414cc48bc003d975b34a4bffdc4', 'raf company', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 90, 96, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 4.8, 1, 1, 'TRUCK'),
(114, 'NEW SALE', '{proposal_items}', 1, '2020-11-17 13:00:52', 31000.00, 31000.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 2, 'customer', 0, 'fb5cfb2ab1343cb7db0456e583e3bc14', 'test', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+905336825192', 0, 3, 91, 97, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1.2, 1, 1, 'TRUCK'),
(115, 'NEW SALE', '{proposal_items}', 1, '2020-11-17 13:26:16', 131000.00, 131000.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, '02cb3ee486e73e220d7ff29aa80a3ad7', 'raf company', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+615336825192', 0, 3, 92, 98, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 3.9, 1, 1, 'TRUCK'),
(116, 'NEW SALE', '{proposal_items}', 17, '2020-11-17 13:48:16', 8580.00, 8580.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, '50e1adada600edab4601cdc907761b4e', 'raf company', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+615336825192', 0, 3, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0.36, 1, 1, 'TRUCK'),
(117, 'NEW SALE', '{proposal_items}', 17, '2020-11-17 13:55:10', 28500.00, 28500.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, 'a4b61994126261d32c49ab47681e75d6', 'raf company', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+615336825192', 0, 4, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1.2, 17, 1, 'TRUCK'),
(118, 'NEW SALE', '{proposal_items}', 1, '2020-11-19 16:19:58', 5800.00, 5800.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'f01c9f2aac969ceff47b5d586b67db18', 'raf company', 14, '34000', 'Edremit', 'Balıkesir', 'Sarıkız Mah. 125. Sk. Atam Apt. B giriş. No:11/1 D:10', 'birkan_s@yahoo.com', '+615336825192', 0, 3, 93, 99, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0.24, 1, 1, 'TRUCK'),
(119, 'NEW SALE', '{proposal_items}', 1, '2020-11-21 10:20:34', 210.00, 210.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'a7b854536c1adc83733be0607e3f7b61', 'raf company', 228, '34000', 'Edremit', 'Istanbul', 'Fevzicakmak Mh.Fevzicakmak Cd. No 7', 'birkan_s@yahoo.com', '05336825192', 0, 3, 94, 100, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0.15, 1, 1, 'TRUCK'),
(120, 'aaaa', '{proposal_items}', 1, '2020-11-30 13:07:14', 88.00, 88.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, '205c4ad84e646e6bc6837a99157cf5b8', 'raf company', 14, '34000', '', 'ist', 'xxxxxxxxxxxxxxx', 'cutewolf4575@gmail.com', '1111111111', 0, 3, 95, 101, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0.33, 1, 1, 'ddd'),
(121, '2 NEW SALE', '{proposal_items}', 1, '2020-11-30 23:13:02', 15000.00, 15000.00, 0.00, 0.00, 0.00, 0.00, '', 1, 3, NULL, '0000-00-00', 1, 'customer', 0, 'c706c4fd02456ef987f66f7d78040b17', 'raf company', 228, '34000', 'Edremit', 'Istanbul', 'Fevzicakmak Mh.Fevzicakmak Cd. No 7', 'birkan_s@yahoo.com', '05336825192', 0, 3, 96, 102, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0.15, 1, 1, 'TRUCK'),
(122, 'NEW SALE', '{proposal_items}', 1, '2020-12-06 11:41:20', 1900.00, 1900.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, '0799decf42a7793c8058264e7a562f00', 'raf company', 228, '34000', 'Edremit', 'Istanbul', 'Fevzicakmak Mh.Fevzicakmak Cd. No 7', 'birkan_s@yahoo.com', '05336825192', 0, 3, 97, 103, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1, 1, 'TRUCK'),
(123, 'ALMANYA', '{proposal_items}', 1, '2020-12-06 11:58:30', 3700.00, 3700.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, 'b0d39d9842eed963a3e972d5205b5b9d', 'raf company', 228, '34000', 'Edremit', 'Istanbul', 'Fevzicakmak Mh.Fevzicakmak Cd. No 7', 'birkan_s@yahoo.com', '05336825192', 0, 3, 98, 104, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1, 1, 'TRUCK'),
(124, 'NEW SALE', '{proposal_items}', 1, '2021-01-19 12:52:25', 19000.00, 19000.00, 0.00, 0.00, 0.00, 0.00, '', 1, 1, NULL, '0000-00-00', 1, 'customer', 0, '73e81c5848a00c9f3efcaa63c31b7d65', 'birkan şahi', 228, '34000', 'Edremit', 'Istanbul', 'Fevzicakmak Mh.Fevzicakmak Cd. No 7', 'birkan_s@yahoo.com', '05336825192', 0, 3, 99, 105, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1.2, 1, 1, 'TRUCK');

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

CREATE TABLE `tblproposal_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_order`
--

CREATE TABLE `tblpurchase_order` (
  `id` int(11) NOT NULL,
  `purchase_phase_id` int(11) DEFAULT NULL,
  `approval` int(11) DEFAULT NULL,
  `acc_list` int(11) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `date_and_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transfered` tinyint(1) DEFAULT '0',
  `approval_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpurchase_order`
--

INSERT INTO `tblpurchase_order` (`id`, `purchase_phase_id`, `approval`, `acc_list`, `note`, `created_user`, `updated_user`, `date_and_time`, `created_at`, `updated_at`, `transfered`, `approval_date`) VALUES
(156, 9, 0, 1, 'Test', 1, 1, '2020-10-17 13:11:23', '2020-10-17 01:10:33', '2020-10-17 01:11:23', 0, '2020-10-16'),
(157, 10, 0, 1, 'paletli olacak', 1, 1, '2020-10-26 15:38:13', '2020-10-26 23:35:13', '2020-10-26 23:38:13', 0, NULL),
(158, 9, 0, 1, '', 1, 1, '2020-10-26 16:09:44', '2020-10-27 00:08:54', '2020-10-27 00:09:44', 0, '2020-10-27'),
(159, 10, 0, 2, 'plaetl', 1, 1, '2020-10-31 08:28:27', '2020-10-31 16:26:22', '2020-10-31 16:28:27', 0, NULL),
(160, 11, 1, 0, '', 1, 1, '2020-11-17 07:42:42', '2020-10-31 16:53:40', '2020-11-17 17:42:42', 0, '2020-11-21'),
(161, 11, 1, NULL, NULL, 1, NULL, '2020-11-13 19:02:18', '2020-11-13 17:02:18', '2020-11-13 17:02:18', 0, '2020-11-13'),
(162, 9, 0, 1, '', 1, 1, '2020-11-17 08:01:29', '2020-11-17 17:57:16', '2020-11-17 18:01:29', 0, '2020-11-30'),
(163, 11, 1, 0, '', 1, 1, '2020-11-17 08:14:03', '2020-11-17 18:13:19', '2020-11-17 18:14:03', 0, '2020-11-28'),
(164, 11, 1, 2, '', 1, 1, '2020-11-20 18:14:26', '2020-11-17 18:17:33', '2020-11-20 16:14:26', 0, NULL),
(165, 10, 0, 1, '', 1, 1, '2020-11-17 08:29:00', '2020-11-17 18:27:59', '2020-11-17 18:29:00', 0, NULL),
(166, 10, 0, 1, '', 1, 1, '2020-11-17 08:35:37', '2020-11-17 18:33:24', '2020-11-17 18:35:37', 0, NULL),
(167, 9, 0, 0, '', 1, 1, '2020-11-19 13:41:52', '2020-11-19 11:36:21', '2020-11-19 11:41:52', 0, '2020-11-24'),
(168, 10, 0, 1, '', 1, 1, '2020-11-19 14:10:11', '2020-11-19 12:06:21', '2020-11-19 12:10:11', 0, '2020-12-01'),
(169, 9, 0, 0, '', 1, 1, '2020-11-30 19:57:11', '2020-11-30 17:34:06', '2020-11-30 17:57:11', 0, '2020-12-04'),
(170, 9, 0, 1, '', 1, 0, '2021-01-20 05:24:09', '2021-01-20 15:24:09', '2021-01-20 15:24:09', 0, '2021-01-21'),
(171, 9, 0, 1, '', 1, 1, '2021-01-20 10:09:10', '2021-01-20 08:08:36', '2021-01-20 08:09:10', 0, '2021-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_order_item`
--

CREATE TABLE `tblpurchase_order_item` (
  `id` int(11) NOT NULL,
  `rel_purchase_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `ordered_qty` varchar(255) DEFAULT NULL,
  `received_qty` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpurchase_order_item`
--

INSERT INTO `tblpurchase_order_item` (`id`, `rel_purchase_id`, `product_id`, `product_name`, `ordered_qty`, `received_qty`, `unit`, `price`, `volume`, `notes`, `order`, `description`, `transfer_id`) VALUES
(241, 156, 113, 'Tray', '20', '', '11', '10', '', '', '', '', NULL),
(242, 157, 128, 'AYAK', '1000', '1000', '11', '0.25', '', '', '', 'siyah', 7),
(243, 157, 111, 'A-70', '500', '500', '12', '3.20', '', '', '', '', 8),
(244, 157, 112, 'PS', '1000', '1000', '12', '1.30', '', '', '', '', 9),
(245, 158, 128, 'AYAK', '3000', '', '11', '0.26', '', '', '', '', NULL),
(246, 159, 128, 'AYAK', '3000', '3000', '11', '0.25', '', '', '', '', 26),
(248, 160, 122, 'I-20', '1000', '', '12', '1.40', '', '', '', '', NULL),
(249, 161, NULL, 'FILE/KOPCA', '1000.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 162, 0, 'AYAK', '400.0000', '', '', '', '', '', '', '', NULL),
(251, 163, 0, 'FILE/KOPCA', '100.0000', '', '', '', '', '', '', '', NULL),
(252, 164, 117, '200X300X400', '10', '', '11', NULL, '', '', '', '', NULL),
(253, 165, 0, 'MG-05 BOX', '150.0000', '150', '', '', '', '', '', '', 62),
(254, 166, 0, 'INSERT', '150.0000', '150', '', '', '', '', '', '', 63),
(255, 167, 128, 'AYAK', '2000', '2000', '', '', '', '', '', '', 124),
(256, 168, 132, 'INSERT', '20.0000', '20', '', '', '', '', '', '', 126),
(257, 169, 129, 'MASTER BATCH', '2.2000', '', '', '', '', '', '', '', NULL),
(258, 170, 111, 'A-70', '100', '', '12', '3.20', '', '', '1', '', NULL),
(259, 171, 122, 'I-20', '100', '', '12', '1.40', '', '', '1', '', NULL),
(260, 171, 111, 'A-70', '200', '', '12', '3.20', '', '', '2', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase_order_phases`
--

CREATE TABLE `tblpurchase_order_phases` (
  `id` int(11) NOT NULL,
  `phase` varchar(255) NOT NULL,
  `order_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpurchase_order_phases`
--

INSERT INTO `tblpurchase_order_phases` (`id`, `phase`, `order_no`) VALUES
(9, 'Pending for Arrival', 1),
(10, 'Items Received', 2),
(11, 'Pending Purchase Request', 3),
(12, 'test', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblquote_phase`
--

CREATE TABLE `tblquote_phase` (
  `id` int(11) NOT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquote_phase`
--

INSERT INTO `tblquote_phase` (`id`, `phase`, `order_no`, `created_at`) VALUES
(10, 'Price Approved', 2, NULL),
(11, 'Pending For Approval', 1, NULL),
(12, 'Price Rejected', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

CREATE TABLE `tblrelated_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrel_wo_items`
--

CREATE TABLE `tblrel_wo_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `item_order` int(11) DEFAULT NULL,
  `rel_product_id` int(11) DEFAULT NULL,
  `rel_wo_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `pack_capacity` decimal(15,2) DEFAULT NULL,
  `qty` decimal(15,2) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `original_price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `volume_m3` float DEFAULT NULL,
  `approval_need` int(11) DEFAULT '0',
  `notes` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `rate` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Employee', 'a:1:{s:5:\"roles\";a:2:{i:0;s:4:\"view\";i:1;s:6:\"create\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

CREATE TABLE `tblsales_activity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsales_activity`
--

INSERT INTO `tblsales_activity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
(234, 'estimate', 81, 'estimate_activity_created', '', '1', 'admin user', '2020-10-22 05:30:06'),
(235, 'invoice', 87, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-22 06:10:58'),
(236, 'invoice', 87, 'invoice_activity_created', '', '1', 'admin user', '2020-10-22 06:10:58'),
(237, 'estimate', 82, 'estimate_activity_created', '', '1', 'admin user', '2020-10-22 19:57:41'),
(238, 'invoice', 88, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-22 19:58:16'),
(239, 'invoice', 88, 'invoice_activity_created', '', '1', 'admin user', '2020-10-22 19:58:16'),
(240, 'estimate', 83, 'estimate_activity_created', '', '1', 'admin user', '2020-10-25 13:25:07'),
(241, 'invoice', 89, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-25 13:25:28'),
(242, 'invoice', 89, 'invoice_activity_created', '', '1', 'admin user', '2020-10-25 13:25:28'),
(243, 'estimate', 84, 'estimate_activity_created', '', '1', 'admin user', '2020-10-25 13:31:08'),
(244, 'invoice', 90, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-25 13:31:25'),
(245, 'invoice', 90, 'invoice_activity_created', '', '1', 'admin user', '2020-10-25 13:31:25'),
(246, 'estimate', 85, 'estimate_activity_created', '', '1', 'admin user', '2020-10-26 07:11:39'),
(247, 'invoice', 91, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-26 07:11:52'),
(248, 'invoice', 91, 'invoice_activity_created', '', '1', 'admin user', '2020-10-26 07:11:52'),
(249, 'estimate', 86, 'estimate_activity_created', '', '1', 'admin user', '2020-10-28 07:31:44'),
(250, 'invoice', 92, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-28 07:32:02'),
(251, 'invoice', 92, 'invoice_activity_created', '', '1', 'admin user', '2020-10-28 07:32:02'),
(252, 'estimate', 87, 'estimate_activity_created', '', '1', 'admin user', '2020-10-28 16:30:53'),
(253, 'invoice', 93, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-28 16:31:15'),
(254, 'invoice', 93, 'invoice_activity_created', '', '1', 'admin user', '2020-10-28 16:31:15'),
(255, 'estimate', 88, 'estimate_activity_created', '', '1', 'admin user', '2020-10-31 09:12:40'),
(256, 'invoice', 94, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-31 09:23:09'),
(257, 'invoice', 94, 'invoice_activity_created', '', '1', 'admin user', '2020-10-31 09:23:09'),
(258, 'estimate', 89, 'estimate_activity_created', '', '1', 'admin user', '2020-10-31 16:11:57'),
(259, 'invoice', 95, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-10-31 16:12:31'),
(260, 'invoice', 95, 'invoice_activity_created', '', '1', 'admin user', '2020-10-31 16:12:31'),
(261, 'estimate', 90, 'estimate_activity_created', '', '1', 'admin user', '2020-11-17 11:26:44'),
(262, 'invoice', 96, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-17 11:27:08'),
(263, 'invoice', 96, 'invoice_activity_created', '', '1', 'admin user', '2020-11-17 11:27:08'),
(264, 'estimate', 91, 'estimate_activity_created', '', '1', 'admin user', '2020-11-17 13:01:32'),
(265, 'invoice', 97, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-17 13:02:11'),
(266, 'invoice', 97, 'invoice_activity_created', '', '1', 'admin user', '2020-11-17 13:02:11'),
(267, 'estimate', 92, 'estimate_activity_created', '', '1', 'admin user', '2020-11-17 13:31:18'),
(268, 'invoice', 98, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-17 13:32:02'),
(269, 'invoice', 98, 'invoice_activity_created', '', '1', 'admin user', '2020-11-17 13:32:02'),
(270, 'estimate', 93, 'estimate_activity_created', '', '1', 'admin user', '2020-11-19 16:32:58'),
(271, 'invoice', 99, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-19 16:33:20'),
(272, 'invoice', 99, 'invoice_activity_created', '', '1', 'admin user', '2020-11-19 16:33:20'),
(273, 'estimate', 94, 'estimate_activity_created', '', '1', 'admin user', '2020-11-21 10:20:58'),
(274, 'invoice', 100, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-21 10:21:12'),
(275, 'invoice', 100, 'invoice_activity_created', '', '1', 'admin user', '2020-11-21 10:21:12'),
(276, 'estimate', 95, 'estimate_activity_created', '', '1', 'admin user', '2020-11-30 13:08:11'),
(277, 'invoice', 101, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-30 13:08:26'),
(278, 'invoice', 101, 'invoice_activity_created', '', '1', 'admin user', '2020-11-30 13:08:26'),
(279, 'estimate', 96, 'estimate_activity_created', '', '1', 'admin user', '2020-11-30 23:13:52'),
(280, 'invoice', 102, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-11-30 23:14:23'),
(281, 'invoice', 102, 'invoice_activity_created', '', '1', 'admin user', '2020-11-30 23:14:23'),
(282, 'estimate', 97, 'estimate_activity_created', '', '1', 'admin user', '2020-12-06 11:41:39'),
(283, 'invoice', 103, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-12-06 11:43:53'),
(284, 'invoice', 103, 'invoice_activity_created', '', '1', 'admin user', '2020-12-06 11:43:53'),
(285, 'estimate', 98, 'estimate_activity_created', '', '1', 'admin user', '2020-12-06 11:58:49'),
(286, 'invoice', 104, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2020-12-06 11:59:09'),
(287, 'invoice', 104, 'invoice_activity_created', '', '1', 'admin user', '2020-12-06 11:59:09'),
(288, 'estimate', 99, 'estimate_activity_created', '', '1', 'admin user', '2021-01-19 12:53:01'),
(289, 'invoice', 105, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:\"<original_status>1</original_status>\";i:1;s:26:\"<new_status>2</new_status>\";}', '1', 'admin user', '2021-01-19 12:53:30'),
(290, 'invoice', 105, 'invoice_activity_created', '', '1', 'admin user', '2021-01-19 12:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblsale_phases`
--

CREATE TABLE `tblsale_phases` (
  `id` int(11) NOT NULL,
  `phase` varchar(255) NOT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsale_phases`
--

INSERT INTO `tblsale_phases` (`id`, `phase`, `order_no`) VALUES
(11, 'Pending for Planing', 1),
(12, 'In Production', 2),
(13, 'Cancelled', 3),
(14, 'Completed', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

CREATE TABLE `tblscheduled_emails` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(197) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('000b9f866e00091c46284914e4a64878704c3c11', '160.153.133.88', 1611310682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303638313b),
('00359c7bcaf598eaaca69e6a6ca316e81f09b697', '160.153.133.88', 1611321781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313738313b),
('01b200b880238c451c23040b238feeee927a1aa7', '160.153.133.88', 1611328982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383938323b),
('01d68b54ffed2b22796dc2eeacf40157fb193155', '160.153.133.88', 1611297421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373432313b),
('01e0910eb8de394e87a48271c8331d07ea3ff0a1', '160.153.133.88', 1611321361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313336313b),
('023a3dc012f8a5147d7d91a77cfc0d440ede2b87', '160.153.133.88', 1611309541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393534313b),
('0241f26aadc1f0f447818da701191c5c87ffa77b', '160.153.133.88', 1611325921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353932313b),
('0245ca80f66b6c9b12c71ef3c539e800623a3f52', '160.153.133.88', 1611313142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333134313b),
('0270f6b8de5fba317290e40594ff56dbd4efd876', '160.153.133.88', 1611292801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323830313b),
('029fc667335ce4266b3a755eba9be3bcbb595089', '160.153.133.88', 1611290041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303034313b),
('02a942ef1a1d660655cead868c82964f9212baaa', '160.153.133.88', 1611289742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393734313b),
('02a9678ce7a3d06b707c7626674e405c828fb1a2', '160.153.133.88', 1611341821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313832313b),
('02b56c4ebed79c97f72be7a4439387fba33919ec', '160.153.133.88', 1611348421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383432313b),
('02f1cf82940d8b58f1e3d7da7632348c96a9dee3', '160.153.133.88', 1611300121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303132313b),
('036f8ef73f39f00e997e2338aa840ea715a4bf48', '160.153.133.88', 1611307081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373038313b),
('0374ed6310b70ceadb73dcd7d030e92c1ac226a0', '160.153.133.88', 1611301322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313332323b),
('03f6a1bce106ada1bf6305917b42a623e45b35f5', '160.153.133.88', 1611291361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313336313b),
('041041b0e4c14196691f7243cfdeeb2ad89289b8', '160.153.133.88', 1611343861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333836313b),
('0430783a17249ab616e671e6e1f3d250de5acd20', '160.153.133.88', 1611345008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353030383b),
('044f784045c99c51715a7b173bef473f81428328', '160.153.133.88', 1611318781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383738313b),
('0452f313603ba01ee9c9c76c5086e9de0613b4d8', '160.153.133.88', 1611343021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333032313b),
('0486e2a7b1d62fab83aac142f656fa907eebc077', '160.153.133.88', 1611333482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333438323b),
('04ab5eff69474d805a80c6e3d993c8e230646e1e', '160.153.133.88', 1611336302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363330323b),
('04af0a501e429942ce543a6ce3d7f347c0466dec', '160.153.133.88', 1611303603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333630313b),
('04b6b06a71547e9fa665f1a7c2d76f63cd814992', '160.153.133.88', 1611346621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363632313b),
('04b776c8669399fa49940e8d867d1bdaf0e4b161', '160.153.133.88', 1611330181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303138313b),
('04d78335e9534c431532544bba82b81dbfaae8ab', '160.153.133.88', 1611319441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393434313b),
('050899d64154ea810738f36dc82bbfef37ec2894', '160.153.133.88', 1611306302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363330323b),
('0557c8fbab38c558af5a7e6ae31c33a8d9f9be88', '160.153.133.88', 1611313539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333530323b),
('05919baa969afd591e76759f53126fb405b60f60', '160.153.133.88', 1611292502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323530323b),
('059a8ed43b647a458ec8a2e321c098f624fa0e92', '160.153.133.88', 1611317942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373934323b),
('059ff0b81f315b4ec8bbd2251d04e908c6241244', '160.153.133.88', 1611310261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303236313b),
('05b1d2caacd6b273446859583d381f01ed0ffc73', '160.153.133.88', 1611290762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303736323b),
('05b1dcd52aaf78ee9d6a9a0c497194d26503e7b6', '160.153.133.88', 1611278581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383538313b),
('05ec23d419ed1c1eb40a8cd3b87f853104e5e7e4', '160.153.133.88', 1611279661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393636313b),
('065d86097f77980d154374fb713ea05d21537f47', '160.153.133.88', 1611346801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363830313b),
('066efc28ee744103b7e199f13744b599673e8786', '160.153.133.88', 1611347221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373232313b),
('0670a3ddeb044a0453d931859c80967c8b1f167e', '160.153.133.88', 1611297841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373834313b),
('067c5788c8f651062907a742add8769fe1756677', '160.153.133.88', 1611341881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313838313b),
('06b126414f3c86f61210daf67b00e1c6e5a4570c', '160.153.133.88', 1611307143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373134313b),
('06dae04dce11f1c7ca439811abbf36fddc04c439', '160.153.133.88', 1611290641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303634313b),
('06efc02da5ce350291f46845e3fa3c8c7d6f8ac4', '160.153.133.88', 1611334561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343536313b),
('070b574f8f7ac71367fc0e2677532c21451dcf34', '160.153.133.88', 1611288121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383132313b),
('070ed6f52ab12be496443e750f87c88c512f6b8a', '160.153.133.88', 1611295261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353236313b),
('071f2641b888d1289dfe53e9cd0188c139946424', '160.153.133.88', 1611301561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313536313b),
('07238c9373cc1afe3d94cf7e9a5c34de9597f8a2', '160.153.133.88', 1611331081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313038313b),
('083e30f50ae0f69911371a6382ff1ebdd53f68ff', '160.153.133.88', 1611312301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323330313b),
('085047ef59c41c2972facd361825f0230d199cab', '160.153.133.88', 1611285721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353732313b),
('09295cb41d6e0bc7fa2a09549c08fc26150228a9', '160.153.133.88', 1611338102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383130313b),
('09a5aba1c41a43522fa9071298379a44c8ccfb81', '160.153.133.88', 1611315001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353030313b),
('09c55d44d1c4c526b1e1f28daf3de9c6d8043a42', '160.153.133.88', 1611296521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363532313b),
('09d7b8ba142f4cf14871e31cc7ed17734a7022c6', '160.153.133.88', 1611341281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313238313b),
('0a4dad7cf6e1903a36acd298c9b81de64bd52dd5', '160.153.133.88', 1611285541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353534313b),
('0a7782f13524c06035988514c8b5fc101e024508', '160.153.133.88', 1611308882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383838323b),
('0a9ad7f596a7b2d0754528052a8e0299a5000b74', '160.153.133.88', 1611297541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373534313b),
('0b12187a9999bae4701a19f90680735a80a82002', '160.153.133.88', 1611285901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353930313b),
('0b538e7e0d03dd55d2c296e1898e6013a27a9b75', '160.153.133.88', 1611284041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343034313b),
('0b75e9c3b6a2cc1b5d2caa03af9480a1825dc12c', '160.153.133.88', 1611276542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363534323b),
('0ba8ed76c8e7433e9f7af206e3fa53d982102d21', '160.153.133.88', 1611345482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353438313b),
('0bdce6c565157b83060008eee356d1350f2d8adf', '160.153.133.88', 1611305341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353334313b),
('0c4d0d313597a8cb4a5fd909c8d792d31a11a951', '160.153.133.88', 1611318121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383132313b),
('0c809a39efb6ec31de1c209a6dca986e47f9e925', '160.153.133.88', 1611274621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343632313b),
('0ca0a0be9a269ac7585800b4109369738fe11a73', '160.153.133.88', 1611326761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363736313b),
('0cdd441d5ef716baad15ed18ba253fe4d315f5bd', '160.153.133.88', 1611341461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313436313b),
('0ce1b3b1ea3c28789755b1f98cf931c3e076df25', '160.153.133.88', 1611314041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343034313b),
('0cf4354ea0c23bb0c8463a7ce082efd9e851a4be', '160.153.133.88', 1611294181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343138313b),
('0d134891121eec5d1e0285214feeb70a3d1b1234', '160.153.133.88', 1611347161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373136313b),
('0d174ca40c0fd03c7dd6f587edc784689b0ee12a', '160.153.133.88', 1611323591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333538313b),
('0d317ede148819ec45f115047758a75590d47ae9', '160.153.133.88', 1611325442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353434313b),
('0d76000aa3b9371bd7c75e066087097c75081656', '160.153.133.88', 1611326701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363730313b),
('0dc83ccb67a75fc3c24939f3aaa40eee69310caa', '160.153.133.88', 1611286081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363038313b),
('0e0461882498a62ed1b2c0cb5ab1926a2cee5da7', '160.153.133.88', 1611310981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303938313b),
('0e25ec78577f676406eb3d1a56758db8da1e13bd', '160.153.133.88', 1611340321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303332313b),
('0f36b272d550aeba8f7e4d04fb174118301772a6', '160.153.133.88', 1611301921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313932313b),
('0f4f2a746886667a0a8f0299f734f550783a08bd', '160.153.133.88', 1611289441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393434313b),
('0fb5bacc09f4b4ea41843bfb7b2016144d3c8484', '160.153.133.88', 1611331561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313536313b),
('0fedec1764c6fe16889f8b6b70f0c9a9c68d78e6', '160.153.133.88', 1611277261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373236313b),
('106b0cea84e00daa9cda46c0fcffaa9277c6f741', '160.153.133.88', 1611284581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343538313b),
('10a3fe5fd88af6a3e7b9d3a7f9197f80195eb231', '160.153.133.88', 1611308161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383136313b),
('1117531c707b399795ec6250ed37f5e9e4cd976e', '160.153.133.88', 1611290402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303430313b),
('1118ab769ae34c65203a17f6e89f7cbe92d312e9', '160.153.133.88', 1611300841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303834313b),
('112348e3106081c226641ae6d7220ff234138a9c', '160.153.133.88', 1611315302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353330313b),
('113a9c0d9c14775173533e1e9c888dd7c00fc7f1', '160.153.133.88', 1611298562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383536323b),
('113bf75c389a98bd246cbe9fe3c347ba517e3c66', '160.153.133.88', 1611327541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373534313b),
('115217ada7505a7bde0d27b2ff83e088278f6aaa', '160.153.133.88', 1611314701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343730313b),
('11c9e1d043ff7d162b55df856416b09384339637', '160.153.133.88', 1611335342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353334323b),
('126d65652253e8c3f38ae0f8d125f69ed447b2ce', '160.153.133.88', 1611288361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383336313b),
('1292c56e29f77120c6efc332fb4b9d5e88d721f8', '160.153.133.88', 1611330962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303936323b),
('12b9ea1a06582b3bd3a1424ef6944fdc3a3092cc', '160.153.133.88', 1611292081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323038313b),
('13b1579727b62a12288060f9545f4bc680f3bb40', '160.153.133.88', 1611289802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393830323b),
('1426336f2bf7fdff2be6ac4fd809c471512d7b03', '160.153.133.88', 1611326281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363238313b),
('14378d3131f26b296999291d526aecdd3b7a2229', '160.153.133.88', 1611316021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363032313b),
('1480aca7410b32a8bab38b5b0350a1fa5089d9e2', '160.153.133.88', 1611337562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373536323b),
('15078a86afea2f20fc296d624a96fb2a8707f76b', '160.153.133.88', 1611286681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363638313b),
('1541ccdb689ae8c04053ebf189bf65ca34a5db6f', '160.153.133.88', 1611283141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333134313b),
('154977f2eb03c51c8e31560b06dcd715ec877050', '160.153.133.88', 1611276601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363630313b),
('16040fcb89933240b411ee655103837d3ba49510', '160.153.133.88', 1611346861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363836313b),
('160e20675074147b1f64a0e182e938db4de332a7', '160.153.133.88', 1611338461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383436313b),
('165544f92cb50cfed55a96eca49351604c681cf2', '160.153.133.88', 1611317461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373436313b),
('16f1094322b58ad2475f0c1da45918d7c1439baf', '160.153.133.88', 1611317282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373238313b),
('172bd95edd56742ebdb556e04172f32de15d0918', '160.153.133.88', 1611300722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303732323b),
('178271f774bbfabf5762e0caed26aa8c23c85bef', '160.153.133.88', 1611324849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343834393b),
('17ef1297a9875aef8c36927ff5e4afee08e15282', '160.153.133.88', 1611291961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313936313b),
('18140595aa786cb7b33e671e8b688cab23b64be5', '160.153.133.88', 1611309481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393438313b),
('182aac233da3080482b62ecc63ddd716ae1905a8', '160.153.133.88', 1611287161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373136313b),
('188e0c03ec933f6e748d5372d28fb9515cca1889', '160.153.133.88', 1611345781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353738313b),
('18a57e0bb88eaa73850ed0446d50a654340ac1a0', '160.153.133.88', 1611310621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303632313b),
('195c97c06fe84bf4f6943ada3fdd2a5c30acd2ef', '160.153.133.88', 1611324421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343432313b),
('19a16902ed0c9db46ae83da06c8c4dfe5db8baca', '160.153.133.88', 1611306901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363930313b),
('19aec387f33e7d8b6c1e613fcfca65376d466443', '160.153.133.88', 1611331021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313032313b),
('1a24599eca7fbdfe453fe64839d615611f9ef600', '160.153.133.88', 1611293581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333538313b),
('1a823b44e4a83aba7e968d3031f0a3e61b4bc929', '160.153.133.88', 1611282241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323234313b),
('1aa6fb9d39df8763d82ea5cd05869873f598b6eb', '160.153.133.88', 1611288302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383330313b),
('1accd266fd19cf33f7c25cb1417a9059f2119020', '160.153.133.88', 1611311101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313130313b),
('1ae2d084fb8068d6b9ba6ec8d358732ca808d25d', '160.153.133.88', 1611320102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303130313b),
('1ae323e0e77364a46c88607f01b59828a2ebb634', '160.153.133.88', 1611339721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393732313b),
('1b092eea841653433181f37d758fdcc02f1dfcbf', '160.153.133.88', 1611315122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353132323b),
('1b29f7fb9599c32e45fbb9d4827a61bc1cd32c5a', '160.153.133.88', 1611302341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323334313b),
('1b8220595c69c1c90d388f1efe5cf06fda00c97c', '160.153.133.88', 1611310502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303530323b),
('1c25ea4cf5a7d7f03435595417ce5db92abb14b3', '160.153.133.88', 1611287282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373238323b),
('1c7d734393e2b5d3fad49535d38b671baad8cfad', '160.153.133.88', 1611304981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343938313b),
('1c981a2d129d89a1b6848ec6e6dce6444eeaa065', '160.153.133.88', 1611283981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333938313b),
('1d15b9fd141ee0dc10b8153be78c980efd113e49', '160.153.133.88', 1611329941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393934313b),
('1d1be9de6371180d9ef3f7309660f3ea28ed2ef3', '160.153.133.88', 1611328321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383332313b),
('1d1e5dc3c181ef04f31771316899768a60db75f0', '160.153.133.88', 1611295921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353932313b),
('1d56710103999a78c1963a82c86d28dda3de910d', '160.153.133.88', 1611323881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333838313b),
('1d7c8523754bc5209e6be0dfe75d165fc5cb025a', '160.153.133.88', 1611274741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343734313b),
('1dc44c53f39a9bbe5b087a165296d6f0d6c878ba', '160.153.133.88', 1611319501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393530313b),
('1e1dbf61e936e4209b214586b7f5851ec62002e5', '160.153.133.88', 1611294602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343630323b),
('1e2fa45a192542b826d3ab34bab00c3f0392ee4b', '160.153.133.88', 1611300901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303930313b),
('1e6bac293436d7250b6ac501268018c7f4d7a089', '160.153.133.88', 1611315961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353936313b),
('1e854a329624a34130c6e866fa289858f9b2f25a', '160.153.133.88', 1611343201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333230313b),
('1e88dbf4b4822b06eec6d8ab8cbbcde84aec9f56', '160.153.133.88', 1611283861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333836313b),
('1e9d90add6d57968cb6f44b57e1a8d682b4bde65', '160.153.133.88', 1611302941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323934313b),
('1eaa30f81e2649c144069eb9c1f770e04d508b37', '160.153.133.88', 1611328261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383236313b),
('1ed540d2a89a02a781ceff1ee1e0caa0bc882087', '160.153.133.88', 1611281461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313436313b),
('1f4a963448a40324250b3e9b95f6095ce0479bae', '160.153.133.88', 1611322201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323230313b),
('1fa18ec284f93b9e46e03341e5eb9cfc8f285835', '160.153.133.88', 1611327121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373132313b),
('1fa78e707fa8e005c40007a995214b982c40840a', '160.153.133.88', 1611335161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353136313b),
('1fce7c6c3fe2734121a999deeacbbcda0cd825a8', '160.153.133.88', 1611335702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353730323b),
('1fe3c23b56cd926f0abee088eb9b968817a4dc7e', '160.153.133.88', 1611339241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393234313b),
('1ff7cc3f921ee740e899db123a15c468414d347f', '160.153.133.88', 1611328501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383530313b),
('2026a58654f2597c84f5b9951df1dee836ae0384', '160.153.133.88', 1611326462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363436313b),
('2046b8e8d5395a0b380af3e05acd6c6f4fd0d03a', '160.153.133.88', 1611345301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353330313b),
('205114f7868f7fd892bff8a13d0b7fd2a2c7e518', '160.153.133.88', 1611312781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323738313b),
('205419c6589d04ceb2f564ef371dc0d48bf92334', '160.153.133.88', 1611347941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373934313b),
('205e80f51c0d8f8c9c8e032b00fb4dac0c45f33d', '160.153.133.88', 1611299222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393232323b),
('20cafe9129a8d8eeacb4468c0bb9054b2911a2d3', '160.153.133.88', 1611338821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383832313b),
('20fd4ef3a9cb43f63c62c190e6b604a8bb292bb4', '160.153.133.88', 1611332701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323730313b),
('2160f8320323b8f696c39ddcec14600bdf689d26', '160.153.133.88', 1611275281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353238313b),
('216a67b2914c250611106b7cf52060d197a6724c', '160.153.133.88', 1611300482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303438323b),
('217e767a072edb35977c263b285fa0e6d8a83c8d', '160.153.133.88', 1611287401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373430313b),
('219515157c429b811365c32b1940d3ccb85c6636', '160.153.133.88', 1611318302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383330313b),
('21966e7ae4f04dbdb3a3678c5f6fd0ad03645f7c', '160.153.133.88', 1611313081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333038313b),
('2229f56c6f1368a1736e65b336daec4a4d47ab0d', '160.153.133.88', 1611299761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393736313b),
('224567cade234e7c64e5f4f5b3e1c37b1404145a', '160.153.133.88', 1611312740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323734303b),
('224eb72235fd3958f2a0d53128336fca15af7d4b', '160.153.133.88', 1611308222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383232323b),
('22df715406aea8475345e72dcc73c28afeb15997', '160.153.133.88', 1611288901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383930313b),
('2348eb527bd26565832d630589ee5953c52028b2', '160.153.133.88', 1611329401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393430313b),
('2357fb66f081e660b856e67c5593830f81d5c3ca', '160.153.133.88', 1611332522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323532323b),
('237794ee3f846b64ad5bf988d0fd67223b5f32a0', '160.153.133.88', 1611297962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373936323b),
('23c6619ce80ced882596e63bd62c72cea9e887f0', '160.153.133.88', 1611317701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373730313b),
('23c9e94d85b9dccfbc2db94e79eaf565923751a4', '160.153.133.88', 1611298081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383038313b),
('23d0a17fc33a12887e41d938766bd1b6d3442499', '160.153.133.88', 1611300962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303936323b),
('23e5dc5db91516574a04d47d23a1a435c55bcac7', '160.153.133.88', 1611304561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343536313b),
('23f316e61d97c8f00b3b10b80107820dc7ce9559', '160.153.133.88', 1611295381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353338313b),
('2436dfba30c181331299deec8949dbcd130d5b43', '160.153.133.88', 1611332642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323634313b),
('2470fd52265a5b12dc0f6fc57c04e8e0a589e02c', '160.153.133.88', 1611346082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363038323b),
('248123875d45c2123911b9754e551ce868423536', '160.153.133.88', 1611328621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383632313b),
('249a90d6002697d1f2fa46c66b0fb476d2bef2eb', '160.153.133.88', 1611323101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333130313b),
('25366e33a981b273ee131274c0a1243cb7521bc6', '160.153.133.88', 1611345361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353336313b),
('255b726eeaa41ef9ae415378ae28a3f1374136d7', '160.153.133.88', 1611276121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363132313b),
('25969e53c7caf8782a0991548373c79f6a3bdf32', '160.153.133.88', 1611317041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373034313b),
('25a06645e083a0f04265fcd00d06319cca43aaa8', '160.153.133.88', 1611277021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373032313b),
('25c6bb2fc15bc4314fb3f499620bd963deb22c57', '160.153.133.88', 1611342662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323636323b),
('25e57aac1f8877bdc51ee0c0836bf0fdb24c0820', '160.153.133.88', 1611310381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303338313b),
('261610c0efea2db7ec35a5288d39fc23906ef9e8', '160.153.133.88', 1611317161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373136313b),
('2695c392ea0104758cb38db0b77ca07d21bcfb6e', '160.153.133.88', 1611275581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353538313b),
('26afa51a40c97ad994adabc1ef49a37c029c9a62', '160.153.133.88', 1611302221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323232313b),
('279adda6067acacab13f70fab68d29bdee090cb4', '160.153.133.88', 1611276481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363438313b),
('27a6163c57d3f1985b6528dbd72bf51a33ba0dda', '160.153.133.88', 1611305821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353832313b),
('27bcc5fa1c2e5fd98503f20cc56ed69631981320', '160.153.133.88', 1611343621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333632313b),
('2812992fe8648d1bc4a18865bfe86692b015e86f', '160.153.133.88', 1611293941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333934313b),
('283a68d13ecff1fa81ec569c4635cd973835c114', '160.153.133.88', 1611326521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363532313b),
('2864cc453c9b6f6fc942e2ba1aff1591c6738429', '160.153.133.88', 1611344641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343634313b),
('286d06595c061631daadad2f289ff1a93ec8fdd9', '160.153.133.88', 1611300361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303336313b),
('28756fdd705e84f32817ee559dc37c27cdf9d865', '160.153.133.88', 1611336121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363132313b),
('29060ae90f8c58a3f3b9acd8279168821d897eed', '160.153.133.88', 1611293041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333034313b),
('2931133151bad1ee9641f6d0f0db99bf7d49c31b', '160.153.133.88', 1611303242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333234323b),
('296654a6b835254b11969e41d8ac6d24ae49679f', '160.153.133.88', 1611283382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333338323b),
('2968785ba89c647548af1b4175916997c4b4c98f', '160.153.133.88', 1611274801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343830313b),
('2981b328a1d5739eb3306662cd11f4f8dc085761', '160.153.133.88', 1611289982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393938323b),
('29d45e9f4f4fea97df9d74d9ce71109d565ff653', '160.153.133.88', 1611340501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303530313b),
('2a3b83831e99d861d2bfe8679e22ff0743557c13', '160.153.133.88', 1611336002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363030323b),
('2a76a2851c663665c81c32de31aafb7a09f2f593', '160.153.133.88', 1611322621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323632313b),
('2a7ec30da2a4d527f28e73812327dd5b0d92cc54', '160.153.133.88', 1611346681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363638313b),
('2a930df6d183b63405043465b3de658d4e850a9a', '160.153.133.88', 1611288001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383030313b),
('2aefec0bb7db4d0a30c979862ac020225082c5d6', '160.153.133.88', 1611277321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373332313b),
('2b1bcd9326b3771a2600da4359cf10459e5dd21a', '160.153.133.88', 1611328021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383032313b),
('2b47edbc9cde73e8d2935676dcab5a199a4b5a2c', '160.153.133.88', 1611290161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303136313b),
('2b6e8f141c8c9b5b8b8ce2aabe33f9457046e494', '160.153.133.88', 1611309122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393132323b),
('2b7ac4c794aef75b9c045ba3dc6eca23a761a874', '160.153.133.88', 1611276301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363330313b),
('2b927135546c095c9ecdd05a26bfb5c3e986522d', '160.153.133.88', 1611302821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323832313b),
('2bbe737fb4302919345ea82b2a07953f9825e9d3', '160.153.133.88', 1611295141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353134313b),
('2bc0a40958d4da3fef72943cb86193a5dcae70bf', '160.153.133.88', 1611277921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373932313b),
('2bd85b09f52b4246d3cacc938e77ab74c040dfd0', '160.153.133.88', 1611316801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363830313b),
('2c02430ee27227a75c50143db4ffef15885a08b1', '160.153.133.88', 1611341641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313634313b),
('2c0901c52fc2037cae399fdccf6178b0d62927b1', '160.153.133.88', 1611343441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333434313b),
('2c43b91d36bf8a48c59c9b994a8f08e91e0ab653', '160.153.133.88', 1611287701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373730313b),
('2cd91e76abfb812049cc06e08b094b63ed64206b', '160.153.133.88', 1611330601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303630313b),
('2d0de479f4d82c107109cc6cf724cc3ca07d1a19', '160.153.133.88', 1611329881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393838313b),
('2d5cbb2746c328260abcf6f5c4eedde384796a66', '160.153.133.88', 1611312852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323835313b),
('2d7877e6314ee7a79fb868a25ce902f445fe0962', '160.153.133.88', 1611303122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333132313b),
('2d84aa376fd5fbb3749d3c49d5fae1fb3f1cc5d0', '160.153.133.88', 1611324601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343630313b),
('2e033a67cecf67e7e5a218bba94c115bb3a97785', '160.153.133.88', 1611303421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333432313b),
('2ecd2d82af0b732683dbf219939987028c8a252c', '160.153.133.88', 1611338282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383238313b),
('2f1237a2f04e08dd9587ff2c1ddc364ee6b3c7c9', '160.153.133.88', 1611345541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353534313b),
('2f37e62ae45cc799ec6fe52f1f2bffef51224926', '160.153.133.88', 1611303061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333036313b),
('2f6e46ed5f66a5e844957771386e711fa900d643', '160.153.133.88', 1611333061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333036313b),
('2f7041e02a9b612d1b0392a98b5e90b65da14376', '160.153.133.88', 1611337681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373638313b),
('2fd70d4715d6fcf7eb8e1ebe0e7b298152fdfaa9', '160.153.133.88', 1611341041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313034313b),
('2ff428533a91cab97f3382da4dbed9875bebb6b9', '160.153.133.88', 1611315482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353438323b),
('30427967ad912e3cb23ed56a132497fa58e030f8', '160.153.133.88', 1611331981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313938313b),
('30841784181d45c588a92030058afdac4785b94d', '160.153.133.88', 1611309001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393030313b),
('30c4330c4e399755188bc8eba57fd77928d3e6f7', '160.153.133.88', 1611311521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313532313b),
('30ed118311669f842b07b0743a5e00aa26460018', '160.153.133.88', 1611338341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383334313b),
('30f70ad1633c2583443a6610758c8b3c40d12690', '160.153.133.88', 1611320881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303838313b),
('31050308685e2e3af9a29d644a0dfe071a64cd66', '160.153.133.88', 1611299942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393934323b),
('31cef9b1c711c8f96983d1eb5eb9d879fc05d0e7', '160.153.133.88', 1611311041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313034313b),
('31d9b81883cf42c977f0c9b346e0435cb24ce44a', '160.153.133.88', 1611338761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383736313b),
('3205f5a5a94dd4f6022d9589247b4732eb45951b', '160.153.133.88', 1611282421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323432313b),
('321ad118c7b58220667674ccdf24b9576bfb89ba', '160.153.133.88', 1611335642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353634323b),
('322a008f85e250928b48480bb9f80f3169b397e2', '160.153.133.88', 1611311941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313934313b),
('32cc1e43641f502e2f387a5316ca782f2467dff1', '160.153.133.88', 1611336061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363036313b),
('32e727b108d04b763a63197f58b5d8922969923d', '160.153.133.88', 1611324361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343336313b),
('331b48dbf88f2508dfd8a4fc8d78ed2f256f92c4', '160.153.133.88', 1611294541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343534313b),
('331f131f1be849e1d616a200bdd52dd9e1c3207e', '160.153.133.88', 1611307622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373632323b),
('336227a6fa21c83b023a4fa0b3c12d973f2854d3', '160.153.133.88', 1611286801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363830313b),
('33c063500ef1d955182cabdad7d69659ce64f52e', '160.153.133.88', 1611274681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343638313b),
('340d64d48520be3b1cd0598aae1418e75b75e9f1', '160.153.133.88', 1611305881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353838313b),
('342849269d7c3dad7a8cf1851c923d891eb9a973', '160.153.133.88', 1611287641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373634313b),
('347eb3843f81ca1b814ec252b46852ed0e71a5fd', '160.153.133.88', 1611279302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393330313b),
('34930938c52711f8d5e4213862bb022f8e7a1efb', '160.153.133.88', 1611343501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333530313b),
('34b643df5259509b4eb3ae0d2115fe5c3de632ff', '160.153.133.88', 1611277501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373530313b),
('3519486e959faded7d77d3facf61a76925c3e957', '160.153.133.88', 1611339781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393738313b),
('351a5d7add22f05c614d8734302a3a1d631adcdf', '160.153.133.88', 1611287581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373538313b),
('353f7d15fb70f731ffce4b59fafa5c5de6440f9e', '160.153.133.88', 1611320641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303634313b),
('35ab2cdc1825e44834511651a93eff07fc88d46b', '160.153.133.88', 1611341221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313232313b),
('35caa63b35e64fcf9cbbafe1f25e1898e6fb0f6e', '160.153.133.88', 1611282902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323930313b),
('35d226d132a2b7a346a6cd360529770f7a88a24f', '160.153.133.88', 1611338702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383730323b),
('35e1ed45c08ab6629788a24277bf68375e48b88c', '160.153.133.88', 1611334861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343836313b),
('35fe884bf1d4ae0000fd93db4ae28a8d7c4c3be0', '160.153.133.88', 1611307321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373332313b),
('365ccce528f2753f84da4118a49f5f9806e000d0', '160.153.133.88', 1611339421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393432313b),
('366a61f95d6e8e7a37ba53250630b9d5deefce09', '160.153.133.88', 1611292981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323938313b),
('366d394a8127f8a3938465058c2474a6e51a25e9', '160.153.133.88', 1611327901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373930313b),
('36a2bec4bc77528942f6b864281b3859bbf45f25', '160.153.133.88', 1611344162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343136323b),
('36a5e32d72944dba47236ec71b2aec9e4ee0be44', '160.153.133.88', 1611292022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323032323b),
('36cff792f5907fd3c1b0ea30c42ca75422a51cf0', '160.153.133.88', 1611320581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303538313b),
('3782970bf66e48064ccf5aa703dbec58019063f7', '160.153.133.88', 1611294782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343738313b),
('3787157fb1a0a4eae66d755b7e74b87cb4c6affe', '160.153.133.88', 1611284162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343136323b),
('37a5e787fea52312f947df3c52618f78e7123d0e', '160.153.133.88', 1611277081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373038313b),
('381b45f890719275e5a941d7298369c066a3cb95', '160.153.133.88', 1611285302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353330323b),
('3825961ff6c1ae594b20d2517590c6423fa8ccd7', '160.153.133.88', 1611285782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353738323b),
('38b15493d5e10cf61b8c7d7efac8282acffc22e8', '160.153.133.88', 1611285182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353138313b),
('38b44cf50be2c255fb741eaf9384597b4d266f0f', '160.153.133.88', 1611339541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393534313b),
('395792919f463014a71e832cd716294d8fcce52f', '160.153.133.88', 1611326042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363034323b),
('39763f732336c28454ce702267e6ecd35a2a60c3', '160.153.133.88', 1611298862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383836313b),
('39acb04572f406db6a759f393a7c7be1ebbc6556', '160.153.133.88', 1611346741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363734313b),
('39c1efbeaf6a4b77a3dada132ede26c558653703', '160.153.133.88', 1611294361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343336313b),
('39d3febf3156dd63968d792009ac97ce5b6ce4b5', '160.153.133.88', 1611286141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363134313b),
('39e4f86167255c9966ad888741d2f4efc7b40d59', '160.153.133.88', 1611325321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353332313b),
('39f3349816cc118edea1e134649da8d666f38ec7', '160.153.133.88', 1611339121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393132313b),
('3a13aabf2ffc68796feb10a4801ace66dadc674d', '160.153.133.88', 1611316502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363530323b),
('3a45cf5fd2d1380efdd31522426b244000829a27', '160.153.133.88', 1611289261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393236313b),
('3a880d13658b48fbb6e2edc9328460e8d85b2dd1', '160.153.133.88', 1611323762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333736323b),
('3b07736f6c0e551fa0f733384c6c96cb8e1e457a', '160.153.133.88', 1611319801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393830313b),
('3b0d812a7de9a833a922c747b6325e447ff1563a', '160.153.133.88', 1611323282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333238323b),
('3b11062f1863b8ca7071b0b75721488d4205fae4', '160.153.133.88', 1611344221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343232313b),
('3b2445646efa534b68879ecad9dd91d22dad1cdc', '160.153.133.88', 1611305402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353430323b),
('3b7da35f94ed4d1d84b561e8cbf9ec31c4f6c99a', '160.153.133.88', 1611299041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393034313b),
('3bd4931684d7959c763739493f6af5cd08dfbc56', '160.153.133.88', 1611295321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353332313b),
('3be0c134d089ef98f717da70ddb3e7d9907970ec', '160.153.133.88', 1611293221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333232313b),
('3c2226491b767ec2d9d28ae8c30963eb3a9f547d', '160.153.133.88', 1611302281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323238313b),
('3c58b12175cbc21ff8c92094205d055d7c64f620', '160.153.133.88', 1611303542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333534323b),
('3ca26e5cf75600eec01438116c1720300a62464e', '160.153.133.88', 1611295741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353734313b),
('3cb9fd58b6e90059b5e003d41e57d5a5a9eb8a07', '160.153.133.88', 1611300422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303432323b),
('3cdcd60c8554019560583ec4d8c48468a031f515', '160.153.133.88', 1611276962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363936323b),
('3d173fac910456241251d6c6b37f786631af93ac', '160.153.133.88', 1611310201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303230313b),
('3d3340df71432bf65bcd44c0825b701648e1f606', '160.153.133.88', 1611329821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393832313b),
('3d48aa41448f36d468c391547007a4bf737520e9', '160.153.133.88', 1611334621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343632313b),
('3d9c5a1bbf47eedc306a779c0a29bea6917d23cc', '160.153.133.88', 1611309421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393432313b),
('3dc0e98a019cdef9ec62518ea7f41b528a50e20a', '160.153.133.88', 1611304921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343932313b),
('3e105b7312ae48c56f57f5ccbcca37ce624fa857', '160.153.133.88', 1611290942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303934323b),
('3e792a39254e9c60d0cbec206e6e2ea89d1cb523', '160.153.133.88', 1611281701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313730313b),
('3ecae26ecb1a1045d6b50e770888841436927a12', '160.153.133.88', 1611315901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353930313b),
('3ef213d194133cddcd58210e7d68021be36f5449', '160.153.133.88', 1611331201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313230313b),
('3f0042d6a50f98a9e4d2dc9b18e56a6da5a3e4e4', '160.153.133.88', 1611315541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353534313b),
('3f22aaf276f90ce0e3f9899d4fb9ff857dc8ebbe', '160.153.133.88', 1611295201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353230313b),
('3f3c676cce72b51c1d35a4e484530d78abc3e644', '160.153.133.88', 1611288601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383630313b),
('3f431cac98ea0240e38462770c5e4176a3cd55ef', '160.153.133.88', 1611289621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393632313b),
('3f898da4ead4413289ddb18059af7709fa1b6718', '160.153.133.88', 1611338041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383034313b),
('3faf1942a8ac01063e2762a1bb68b1b2cd90786c', '160.153.133.88', 1611320461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303436313b),
('3fb87f0122ffd31485c69c65a05bc888e43db2ac', '160.153.133.88', 1611341941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313934313b),
('3fd3467d26e03878ef159d7b738e7d17b45861c3', '160.153.133.88', 1611282661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323636313b),
('3fda44fc06d9ef7f6aa2c1534caca4d0100e4ef6', '160.153.133.88', 1611300302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303330313b),
('3ff6c7719a4766e4b094e6c3735a26e23e3eebc2', '160.153.133.88', 1611340801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303830313b),
('4053e8316a0f6dd5678b178ceb77809f32dbdd27', '160.153.133.88', 1611282361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323336313b),
('4079e865c829248df729ac9e6d15519828aea70d', '160.153.133.88', 1611288541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383534313b),
('408d38435ca34c8d0990eda3cce7b1ea16e266d4', '160.153.133.88', 1611342181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323138313b),
('4090cffe5107bd7f0198340e39730fa9f7f6e497', '160.153.133.88', 1611347821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373832313b),
('40b3d2530c5d8269999ab3c4d50020b385a21a84', '160.153.133.88', 1611297361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373336313b),
('40b55df099a948e45ff3c3d07156361d20d805bc', '160.153.133.88', 1611281221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313232313b),
('40bacdd0fda07a407f93e0dc397987df1659966d', '160.153.133.88', 1611312421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323432313b),
('4146ffe7fce421d8e87add31eadf701b59077c79', '160.153.133.88', 1611328201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383230313b),
('417194a634f9e067e84a46ce27cecb23909fe19e', '160.153.133.88', 1611279241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393234313b),
('41b4ec4c4ac13b259f9203064d1e794c16be4127', '160.153.133.88', 1611338521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383532313b),
('41b691439fa530325200d796ebb13b264215b80c', '160.153.133.88', 1611283441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333434313b),
('4205a1ddc004e60a611531a782f1af273bd8822c', '160.153.133.88', 1611302881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323838313b),
('420d38dbc5cde24ec5e029e8d988c6ab7733440c', '160.153.133.88', 1611288241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383234313b),
('420e75caba2b5f6cbae5e7a4b3328bea1000a3db', '160.153.133.88', 1611306482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363438323b),
('422253a27ccc67afb2e09c62f5ed1453e9aced99', '160.153.133.88', 1611279061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393036313b),
('4222a26acd1ac540140b04f567e08ed068906d9e', '160.153.133.88', 1611340561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303536313b),
('4225b95d3307edb92a8b9c8ca07f6f8ae502ff85', '160.153.133.88', 1611340381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303338313b),
('422e2ca38213845cb559f3805d10aac2e58b04c6', '160.153.133.88', 1611347041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373034313b),
('423b2d2b67144ea51706eb76306a938009eebfb3', '160.153.133.88', 1611305582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353538313b),
('4244041eb13c5eaa597195c389d91eaef4de4d3e', '160.153.133.88', 1611285001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353030313b),
('42771148e7f5e42c4e8274c83e9a109cf649eda2', '160.153.133.88', 1611309721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393732313b),
('429f52f4f8ec2e3e429b9f09528de73136347928', '160.153.133.88', 1611295082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353038323b),
('42ae7ee717f67fb3374c891624df899a4ea7e587', '160.153.133.88', 1611339841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393834313b),
('42cb8f4946d87340a9eca58dd9b2a8809dd063f9', '160.153.133.88', 1611328742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383734323b),
('42e87f641d1bf3edc53c966e7b5efb83ba693afb', '160.153.133.88', 1611343921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333932313b),
('42f5a792d8f333d1ee6d6ff2672c89f5dcc1890f', '160.153.133.88', 1611283801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333830313b),
('43a99541af2a483e2a214a4617b6615ada5ea5bd', '160.153.133.88', 1611288961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383936313b),
('43b415a8efd6a923c609c7dbc31fd928dddf33e4', '160.153.133.88', 1611282121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323132313b),
('442805f5ecd905b7ed17c4e4a851cbf5c0a70e8f', '160.153.133.88', 1611291181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313138313b),
('4443e89a8b1a111fed533aaa66dfdddce54d8280', '160.153.133.88', 1611311768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313736313b),
('446142df94dc1e7576c3b3ed83dd74687acafda3', '160.153.133.88', 1611276241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363234313b),
('44c0843686b10bdbd62093874f14bf8806428344', '160.153.133.88', 1611336481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363438313b),
('44d8e85a52b487424311832da79f311e90429e6a', '160.153.133.88', 1611348121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383132313b),
('4641b2f747b69c744c9425b8a0c8ec2d3a30cb8d', '160.153.133.88', 1611341701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313730313b),
('4652c9cc6dc3857ec3c260a75e231fc140ac8ec1', '160.153.133.88', 1611321722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313732323b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('467a7703eabcc74ecb663b92114e60ce7890229f', '160.153.133.88', 1611303181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333138313b),
('468d2f9bad0dda4d1e4ba80a2373160757161b52', '160.153.133.88', 1611319202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393230313b),
('47165cb16424a770ac0af4c514cf21d71625f459', '160.153.133.88', 1611312181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323138313b),
('471e8a5c2f289115793e9c7f2df2588b1c365d1d', '160.153.133.88', 1611312001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323030313b),
('47471e3c2d40a3980b4d39567d979afe68fe8162', '160.153.133.88', 1611299161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393136313b),
('474d8d29fe4c5cfbb2b1579fbb810c3f3b31e18b', '160.153.133.88', 1611285361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353336313b),
('47562df9747b89d9e41deaaf6d09e499cb691bf5', '160.153.133.88', 1611305701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353730313b),
('476a4aa2f9a29c48eca2482b5af18c9e058e4a31', '160.153.133.88', 1611326341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363334313b),
('47b86f7ca5a5a02861bc94538b5a3263350d14e6', '160.153.133.88', 1611334926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343932313b),
('47ddb41144357cf47f353bf7f2ebd0148a7d2c7c', '160.153.133.88', 1611320221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303232313b),
('48573c73e2655262ee4db14c4f6627f5daadd50c', '160.153.133.88', 1611322021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323032313b),
('4884929afc45122ad89f927e9b1ea1782e2df328', '160.153.133.88', 1611323701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333730313b),
('48a48989013a45a9c350e4b0e140b6afb8656ffe', '160.153.133.88', 1611317401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373430313b),
('48b2d445e3c4e1f222fe6c4e270fbf7997cc96a1', '160.153.133.88', 1611327721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373732313b),
('48e483189d0430d262352b44b1fef3c1ae6d04ed', '160.153.133.88', 1611321422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313432323b),
('4987734f072267ae7ebf7d31242640646c23648d', '160.153.133.88', 1611340202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303230323b),
('4999034352be5644806a50363e6a5554044482df', '160.153.133.88', 1611343082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333038323b),
('49d3c9dd4ee2f4228147682174032b357f5103ef', '160.153.133.88', 1611309302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393330323b),
('4a218b1c4ad4f5d018f1258115788d9b18e647bc', '160.153.133.88', 1611291062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313036323b),
('4a2fcf76b3cb521daeef673055f239456ada45b2', '160.153.133.88', 1611344881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343838313b),
('4a43418d05caa444e0b677caae00072f8a56fa54', '160.153.133.88', 1611346021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363032313b),
('4a50b866abc32dcfa99409e7b61646062f36f4d5', '160.153.133.88', 1611311701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313730313b),
('4a8aa9b87648ebbef035bf8428a35cb04ab364d8', '160.153.133.88', 1611339061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393036313b),
('4ab7ecb7e0ea4b64e0b36f308c4d4995283728ea', '160.153.133.88', 1611338582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383538323b),
('4b1a8ec65bc1256a91a37ab3202c4c0bf65811f9', '160.153.133.88', 1611333722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333732323b),
('4b3a2f28591253ab87ef4a186b4de4bc1e67b361', '160.153.133.88', 1611288421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383432313b),
('4b4a4fbf8d420cc2a4589e7270877e2e223d11fc', '160.153.133.88', 1611336362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363336323b),
('4bc8dcbe694f2c41c3129a3bd80f5bf823612926', '160.153.133.88', 1611301261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313236313b),
('4cc9c8a1299e8c6577010c46354734c5abd6b1e7', '160.153.133.88', 1611343261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333236313b),
('4cf51a747d5c2d4f1ade7582700d5046ea1b887e', '160.153.133.88', 1611285061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353036313b),
('4db13a55e346652e345ac018f025c50bf054bd05', '160.153.133.88', 1611348001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383030313b),
('4dee91650e70f3a53e918fd7f8d3991d414ddbab', '160.153.133.88', 1611306541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363534313b),
('4e1c54e25edc0b85a3a7b91c116a411fb466dec3', '160.153.133.88', 1611337741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373734313b),
('4e1fc91b09dea4063b842b1a5e6a48b8f91c4514', '160.153.133.88', 1611339662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393636313b),
('4e27084cfd5fa099fcb4ea6ad35069abef02b047', '160.153.133.88', 1611345124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353132343b),
('4e29e06ceda9bc65a0a2cd2cf1511d1f27724ac2', '160.153.133.88', 1611275641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353634313b),
('4e3a5e3a43c9010657e1e6ace69776510a90b7b6', '160.153.133.88', 1611314821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343832313b),
('4e4bcc3476c3daae4f2708be162627d66c858bcf', '160.153.133.88', 1611294242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343234323b),
('4e7bcb62795756fd7ae4bfc64b4cf1fe787e2e73', '160.153.133.88', 1611299401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393430313b),
('4e85c9288f4ed73f53c1bb4cca885e6123984f72', '160.153.133.88', 1611333368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333336383b),
('4e9aaa7f82a63d8301964621ca679e8672582075', '160.153.133.88', 1611276721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363732313b),
('4ed118643b031e5affc71109b2ff3f88f17eec5d', '160.153.133.88', 1611278102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383130323b),
('4f02421d9cf47efc8a76a2b84738703b867685f3', '160.153.133.88', 1611291242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313234313b),
('4f0733062529d3ef50442ae8733980e0ddbb4337', '160.153.133.88', 1611318481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383438313b),
('4f0de08bbee70ec8f80e5dc3552658fab5dbb3df', '160.153.133.88', 1611283202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333230323b),
('4f1f0dc94f0f64faab6ce64ffd6f7fad6c38e77a', '160.153.133.88', 1611331861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313836313b),
('4f23a6ebc7df8bb34d3b942de0de915faca142aa', '160.153.133.88', 1611311281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313238313b),
('4f3444b3225a53a4e2cbb803cc373f57e79d08ca', '160.153.133.88', 1611290282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303238323b),
('4f5f3b737e93a64efa8af60f0852c15630e5c944', '160.153.133.88', 1611280621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303632313b),
('4f9322bb34734c5ba174b46b6f72feb1c98a14b1', '160.153.133.88', 1611289021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393032313b),
('4fa5845999277ad55905969b8f74aae0ac897125', '160.153.133.88', 1611328562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383536313b),
('4fc45ccf61b0f0f0d1faeb12b131e57c9405ad08', '160.153.133.88', 1611281161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313136313b),
('5058daf13fb7a6aefea9c4bf67fd7d66d068ac90', '160.153.133.88', 1611301441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313434313b),
('5087d8df8a73f2430f17045b779fd04f0a47257c', '160.153.133.88', 1611325502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353530313b),
('508a87204279f45c6d48990dd0178ebfc44d40bc', '160.153.133.88', 1611313382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333338313b),
('5093071b731fa64f2198c30aa767797d0e467915', '160.153.133.88', 1611306782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363738313b),
('50b54fde516d586ef122fa2ef100511a453baf5e', '160.153.133.88', 1611335042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353034323b),
('50dcbb985104c6126d760057747bcabee2703ea6', '160.153.133.88', 1611347581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373538313b),
('50eab4cef52e6c5b91138cca6397d3236c085ffc', '160.153.133.88', 1611304261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343236313b),
('50f6af5bb64aee80ccdfc1292ad58636fd81eb06', '160.153.133.88', 1611315602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353630323b),
('50fb416db8ee0f48265cbd6dbac90de6374a51ff', '160.153.133.88', 1611313321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333332313b),
('510cef8bc1395d2998764a92161eacdb21dd4635', '160.153.133.88', 1611290221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303232313b),
('512e9e778c9a12d1c55c77a279630198c6cf7a62', '160.153.133.88', 1611296342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363334313b),
('51597e78801eb290c590a7c8e5b35a02bf6aeab8', '160.153.133.88', 1611328141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383134313b),
('517892f26b8da065d4a2fe576e1cb1adbaf3e5bc', '160.153.133.88', 1611303841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333834313b),
('51931a92ab844dcc52265cf5fc3e8da6b00e69be', '160.153.133.88', 1611345902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353930313b),
('51b5e09f89d32a7153f728a0f1f60659c11d223d', '160.153.133.88', 1611282301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323330313b),
('51c52acb78446c6af9629605b6c9e154fa8f6102', '160.153.133.88', 1611331502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313530323b),
('520c0a17ac26173c6ad87aaf21ba368118d6597a', '160.153.133.88', 1611314521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343532313b),
('52429472c621129534a587023f2dbf9278b7a212', '160.153.133.88', 1611341582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313538323b),
('5258df6d53eed97809c5819ec720b14b5578c2e6', '160.153.133.88', 1611315422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353432313b),
('5264282dd854bc6a590b45a9ec845299fb23adb0', '160.153.133.88', 1611342841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323834313b),
('52d4319e019f413740e975185215c17a9fce086a', '160.153.133.88', 1611337441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373434313b),
('52e35c0192596836cb2ca450b826fc70eff28a83', '160.153.133.88', 1611305941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353934313b),
('52ffd5316b4ca7b7ef5178c37c5489efbc107e4d', '160.153.133.88', 1611344770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343736323b),
('531561b8070c9fdb68baa236ecfdef4cea8676ff', '160.153.133.88', 1611310562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303536323b),
('5385811238e09faf8eb528b7683eaf5772b486eb', '160.153.133.88', 1611345844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353834313b),
('53a2cde13dadb9c8cc77a007099c066f8bb11f5e', '160.153.133.88', 1611346922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363932323b),
('5414e71f4f3db6c83297ee2fef4aef4efca46c95', '160.153.133.88', 1611324669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343636313b),
('54d4b96200bf8067566bee686a6382dcc5cf1c99', '160.153.133.88', 1611325981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353938313b),
('554ba4786191db3256437aca46358cb81bfaf992', '160.153.133.88', 1611284521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343532313b),
('55771331420bc0d03822aeb866657e0804525b5e', '160.153.133.88', 1611322981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323938313b),
('55bf0ecc9aadea1f7d399423aebcf79d627e0723', '160.153.133.88', 1611276901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363930313b),
('564c6c7c6549619bf141d668d276767c84afc7bc', '160.153.133.88', 1611306601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363630313b),
('56f8a432fe421bf38338b5daaa60a322c3d368f3', '160.153.133.88', 1611348242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383234323b),
('5735580255baf9c983d0202665890a478094fcda', '160.153.133.88', 1611295862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353836313b),
('573b55881101bb87969157b01523e26b15035b5f', '160.153.133.88', 1611286321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363332313b),
('5750422f39c07656a1a9ab887fa6ea1b589e04f8', '160.153.133.88', 1611324901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343930313b),
('5763d9a063d51d267c551c88eceb84d70cde6398', '160.153.133.88', 1611301201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313230313b),
('5767c40aae3e7bdd054ba1a55fa2ede33f8c385d', '160.153.133.88', 1611312542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323534323b),
('57e938e5d129c2c1c3a0d3f67599746a5f18ff3a', '160.153.133.88', 1611322502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323530323b),
('580531ae11c8a494d800d189df34b570323a2c81', '160.153.133.88', 1611326402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363430313b),
('584b635f4da7bb14c0e37ebb31334fa34bd34165', '160.153.133.88', 1611274922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343932323b),
('5893505cebc8feccef623bfc717c4c4f69e99e9b', '160.153.133.88', 1611301382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313338313b),
('589f0b1b21a8a0a90bc15f6ee51b005ec7886784', '160.153.133.88', 1611287101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373130313b),
('591c9dcd1a0d9a799082fa5d5a3a51c0ee55ddff', '160.153.133.88', 1611291301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313330313b),
('59603ed015571fa8c0cfde245722ea0e2ca387ae', '160.153.133.88', 1611347282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373238323b),
('5973f7ad0dc25237d9434d18886caeb1f90f4683', '160.153.133.88', 1611330902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303930323b),
('597bb54bc1d37372bc539136133e7c2255a2bbf4', '160.153.133.88', 1611300001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303030313b),
('59998cb64de4421cd051ff3e21fa2d7c54408166', '160.153.133.88', 1611307741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373734313b),
('5a0adfc65d93d9f1386abf7ee381b9157e512331', '160.153.133.88', 1611275401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353430313b),
('5a1ffd412c5c5a15f8f2294f9744ff7ddfa06832', '160.153.133.88', 1611300661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303636313b),
('5a55399f918bea1af1042e155850242079b3f6c1', '160.153.133.88', 1611280981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303938313b),
('5ab152b343f12f237b07753fe510bcb2f5640b05', '160.153.133.88', 1611316381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363338313b),
('5ab95f03bb3861804c81071bad28bcfdd2d8fde8', '160.153.133.88', 1611321841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313834313b),
('5acdee10a2f56ef1945b1b2ab138dbd467f3716f', '160.153.133.88', 1611304326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343332313b),
('5aee1ed9e36cc7d7d745eaffee479e7c98101004', '160.153.133.88', 1611328682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383638323b),
('5b67bd79f1e2f9f1fb9acbda1ffb6d801640f70e', '160.153.133.88', 1611280141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303134313b),
('5ba9d4fc35b1bf22e793e418572647695a13e8ab', '160.153.133.88', 1611321601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313630313b),
('5bc45eb48339dc2e0b0496a5ba0aa6adceb92811', '160.153.133.88', 1611347101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373130313b),
('5be4d696ea81e1276980beea172a727732356f7a', '160.153.133.88', 1611292381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323338313b),
('5c29e60fb7b34bd1decd025396b2bde1f7259250', '160.153.133.88', 1611314341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343334313b),
('5c5b43c385bda49955c85f15584b158cd82159bc', '160.153.133.88', 1611325382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353338323b),
('5c5c9039f58142218831fb036cb9f7dafe2e4bf5', '160.153.133.88', 1611297661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373636313b),
('5cbd588f7ef9d0fa07e0d08f713b3dfd87c21ade', '160.153.133.88', 1611278221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383232313b),
('5d029fb2ad49096e3c4dbea06365071bb089d024', '160.153.133.88', 1611330541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303534313b),
('5d7320a58afdc2cb043454f6652e5da3bf2a9c55', '160.153.133.88', 1611282841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323834313b),
('5d8fec7f271f90256c9ffc75be3fcb6cd31290c2', '160.153.133.88', 1611291481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313438313b),
('5d90ee3ae8d7b52efe8b163e121295bdce0e3ce2', '160.153.133.88', 1611287041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373034313b),
('5e789e4a50e2eaa89ba0f6606042683ad25dadcb', '160.153.133.88', 1611279841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393834313b),
('5e7dd596d8a79cf3fd6ce6bd918147a82bc301dc', '160.153.133.88', 1611312602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323630323b),
('5e80a5cbb99713e0066d67ad44fd241541353b60', '160.153.133.88', 1611329701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393730313b),
('5e95e4d089391966877e3e148dce2f3ec2317be2', '160.153.133.88', 1611319741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393734313b),
('5edce081656572ffe203bfcccb2dc54a4454551f', '160.153.133.88', 1611306661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363636313b),
('5ee4d525eb81d4a6beb2b2ed313ae0ae1f57ce98', '160.153.133.88', 1611343982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333938323b),
('5f424e236ace30ccf1f4458c1881c1429fc1ef93', '160.153.133.88', 1611282601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323630313b),
('5f4fd1de280ca61d6cf4661005b4c7d7cc11ca53', '160.153.133.88', 1611321062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313036323b),
('5f7db185e67da4ecf65fd600ad453585535c16fd', '160.153.133.88', 1611335401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353430313b),
('5f9be47dc172453326703a2fd7d85299f4085b0d', '160.153.133.88', 1611338642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383634323b),
('5fdb7e4bc6ec85931f3362a2fb5004632b2d6779', '160.153.133.88', 1611311581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313538313b),
('601c813286378d0554ea0d3b3a0a28906a93b380', '160.153.133.88', 1611277861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373836313b),
('6051e608496e89cfd5fd2592a64c4f4f77c758e4', '160.153.133.88', 1611313261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333236313b),
('609e9c7cf058bdde1e03b0723680372128afe8ef', '160.153.133.88', 1611321182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313138323b),
('60c5cd7277ccdc22055b90b2f636e0b66fed8f90', '160.153.133.88', 1611335461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353436313b),
('61006c5995115969f87de3e7f08f9685419027cb', '160.153.133.88', 1611336602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363630313b),
('6103c4556cbbdb0fe9c36e6e6188f3fe0508160c', '160.153.133.88', 1611305161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353136313b),
('613250baf1e7812184de9008a7ac5c24fc88dd91', '160.153.133.88', 1611316682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363638313b),
('614203d669bb5ec50a5367b570d425b32c9566f8', '160.153.133.88', 1611329288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393238313b),
('6157460c10d5a4ed3a1d38e7fc1c41b6b1c483ee', '160.153.133.88', 1611306721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363732313b),
('617d5d8b5c9299fc9e46dd533750f4f0317066fa', '160.153.133.88', 1611323821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333832313b),
('617d7228176d1f50d237bb4c7b0177619c15d8ee', '160.153.133.88', 1611325861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353836313b),
('61c619048da27d3d33796771d37ae9e36057e4fd', '160.153.133.88', 1611297121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373132313b),
('61f967d8e16edc5005f72986bb023f04beebf3b1', '160.153.133.88', 1611304382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343338323b),
('620939e52b288df3ff794fdb0a789db9349bb87d', '160.153.133.88', 1611318841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383834313b),
('620fdcca37b24b0bc8a5d404ed5cf44ddb16ce2d', '160.153.133.88', 1611280261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303236313b),
('62471150a2eece88eb8d53be964b9a2c3ec1e64b', '160.153.133.88', 1611275521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353532313b),
('6259d4fafd12a2a9527e194fede326f1acaf967f', '160.153.133.88', 1611281941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313934313b),
('62f84a4007f255d76b647253edbc9d99866d80bf', '160.153.133.88', 1611329522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393532313b),
('63026b16d0ea6ebc19994a89f44d5befbbc21232', '160.153.133.88', 1611343322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333332313b),
('634ecefe06fc1e0083632be9dd3dc78aa39a7f05', '160.153.133.88', 1611287941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373934313b),
('642565cd0d8416e46c39dd7f9745ff25ba531b30', '160.153.133.88', 1611286441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363434313b),
('64a3da130476aa423ed3d3141e72ff6c3142cf4d', '160.153.133.88', 1611305761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353736313b),
('64cc19eafa8d0bbe46ffae9b22900d0771cc69a4', '160.153.133.88', 1611298321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383332313b),
('64f25c7fbd9a6a576ca48c06cb81e7158a6f5c05', '160.153.133.88', 1611335821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353832313b),
('65a178e9a946c12c43ae1420f73dfecd9cb9b57c', '160.153.133.88', 1611346981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363938313b),
('65f239ca92a94191e124c49b7a5192bad291ee09', '160.153.133.88', 1611321541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313534313b),
('6686813d290cb66eb511d88bf9f0ac12725ac002', '160.153.133.88', 1611324002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343030313b),
('66b40304b8721777cb951d3075a1c6862cad201d', '160.153.133.88', 1611293521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333532313b),
('66f131adae64304640c84dcfb83f9297c4bfed04', '160.153.133.88', 1611308041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383034313b),
('679ad8850335b824d10cbe92f713985e29873276', '160.153.133.88', 1611282962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323936323b),
('67a11b0e1f2658db27d6d5c8ed5fdb9e53f61907', '160.153.133.88', 1611317882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373838323b),
('681be2fb734dbc5ce9656cc635e19a0ee47da4d5', '160.153.133.88', 1611303482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333438323b),
('68e62ebe963e515d3c6f3296fd20cb0aff9ee3f5', '160.153.133.88', 1611294481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343438313b),
('6937fd0aec7c37590cb6f70b23ca6afde98e3f76', '160.153.133.88', 1611285601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353630313b),
('695789a1a4146b97c336bf8a5d6cfb43fd977027', '160.153.133.88', 1611327781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373738313b),
('6957b984783daf97454ebdda845bf25e2c1268dc', '160.153.133.88', 1611344702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343730313b),
('69aab812460e80a76e84b32f198254ee536b70a8', '160.153.133.88', 1611280741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303734313b),
('69d5c4b19de8b818cc66ac9bdd9b13c5145841f6', '160.153.133.88', 1611327241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373234313b),
('6a510eef81401648e093a7f73e477c4e504ac748', '160.153.133.88', 1611325562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353536323b),
('6ab8acf7363e03d981eeca08c08fd96ce842c3e2', '160.153.133.88', 1611312362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323336313b),
('6b00829b823fdee65d7b42307eea81ad7a8934c5', '160.153.133.88', 1611290582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303538323b),
('6b11d9fd7cea1405f125b3d41929b8392a170fcf', '160.153.133.88', 1611279362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393336313b),
('6b19ad8e0c55fa85f809e00f5ed2e2b5c04d8a98', '160.153.133.88', 1611325681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353638313b),
('6b40496eb59509d2fa509834c6170e2d31995eab', '160.153.133.88', 1611318421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383432313b),
('6b48a0d7139525b7cbc9d0ecfc520619a6409987', '160.153.133.88', 1611275882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353838313b),
('6b766589cf24bac76dbf1a56364d6d376e57211f', '160.153.133.88', 1611297302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373330313b),
('6b97f188653d9792236e5179d93e0f3bcafe96f7', '160.153.133.88', 1611289501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393530313b),
('6bb79673617bc6a164c18efb717bde00c725280b', '160.153.133.88', 1611294901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343930313b),
('6bce8ed20bff4671de1b4a3acedce35d303cf2c2', '160.153.133.88', 1611328441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383434313b),
('6bf6ffdde3f81e62ae05607ec0f12e94e70f63ce', '160.153.133.88', 1611297061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373036313b),
('6c095aca56387066b0694ac285015a9b1cafde63', '160.153.133.88', 1611313869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333836383b),
('6c20b65a669c27758003b5a9aae6291c03a3f898', '160.153.133.88', 1611336962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363936323b),
('6c7ed903dcd94bcb6bd7d38ac1e869217cb5b253', '160.153.133.88', 1611317521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373532313b),
('6cb5ffaa60479f4fc75509ff5114d7b2e3256aff', '160.153.133.88', 1611294301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343330313b),
('6cc685f227bceff01c306dad8bdab3322f96b2aa', '160.153.133.88', 1611347342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373334323b),
('6cc697af574fcb3a499f691c7b09c1c922a44b1d', '160.153.133.88', 1611319561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393536313b),
('6cd44cb27af6ce9885b1341798ad146053c0074c', '160.153.133.88', 1611314281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343238313b),
('6da2b790b6b78aa142dcaa99ce243708d2cd75e6', '160.153.133.88', 1611320341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303334313b),
('6e415647b1cb6fef5e3bd259b71c521ffe0ce73a', '160.153.133.88', 1611286501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363530313b),
('6eb41f06e7d2b06dfa23e4bed213cae4bcea9720', '160.153.133.88', 1611283321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333332313b),
('6eb5b7353056bd2b104eca9fb13b553fa4097628', '160.153.133.88', 1611289561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393536313b),
('6ed6cb441e6b0ee9b4f26cd7fd7c363a3d1fdd83', '160.153.133.88', 1611285241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353234313b),
('6f0b93d781878be9083fd24091ca65a61fcb305b', '160.153.133.88', 1611281281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313238313b),
('6fa0d8d0823c7fa826fefbb2d8f9f15eb90488e5', '160.153.133.88', 1611329341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393334313b),
('7047a6b17c9036c9e94e97c68f89e9a3738dca7b', '160.153.133.88', 1611283922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333932323b),
('70ad5d1bc5cbfcb0bc9af5de745cca578d4306de', '160.153.133.88', 1611324302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343330323b),
('70eb32470ea2044b241e098ad190cda166f3747e', '160.153.133.88', 1611296042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363034313b),
('710db62879d49400b08fadec4b99e2f48a2d7868', '160.153.133.88', 1611291602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313630323b),
('7126597535006d3cf42172aa8e4a5cd4944414ec', '160.153.133.88', 1611335101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353130313b),
('716d6be8aa75727bc0282bbdee473846f9e6a587', '160.153.133.88', 1611331141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313134313b),
('71909904967d226bd1800e0bf87f04c18a074d10', '160.153.133.88', 1611333987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333938373b),
('71a8acbef0345845ec375b2ce9c08f2b38659509', '160.153.133.88', 1611306121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363132313b),
('71f9fb95626b01352388ac857a83290e9a700e86', '160.153.133.88', 1611309181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393138313b),
('726129240fdc035534e88b99b12767ca7d8859eb', '160.153.133.88', 1611280861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303836313b),
('7265b9ec8e45a21ac5d4bd043c3becce9596c630', '160.153.133.88', 1611347402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373430323b),
('726f4549acf9780bc13fe42829681250e7d6e3fc', '160.153.133.88', 1611279601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393630313b),
('72958317fbd6edf3f0a21d844078537f0949ba49', '160.153.133.88', 1611346561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363536313b),
('72a5cf1247427c24910232fce4e36588103d68d2', '160.153.133.88', 1611279722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393732313b),
('7310288e35dbb8241676db6048a65c12d3256326', '160.153.133.88', 1611283081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333038313b),
('732064495b997e4533fba04cf0f0974d7b3aff94', '160.153.133.88', 1611322382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323338323b),
('7354c13de3fd025eb0735ed69420ac4adbe618a0', '160.153.133.88', 1611312901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323930313b),
('738241fe108c4cacc9aba83d324f31fd6d727b37', '160.153.133.88', 1611344521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343532313b),
('73cb9a70896394efb5d336ae244f27ee2c377e0f', '160.153.133.88', 1611292261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323236313b),
('7440affe1b214400da0de3aaed63e6ebfdc96e3d', '160.153.133.88', 1611340261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303236313b),
('744481a08ffb578f6e0557d518f708299e1b03d0', '160.153.133.88', 1611325802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353830323b),
('744ea7ee762bbde2f89d7c5d0f3f64fcf3003150', '160.153.133.88', 1611307801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373830313b),
('745f7f3776ab747ecfa97bfbea4c6e8a63171235', '160.153.133.88', 1611275941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353934313b),
('7489c4af7e86ee73a79211edb30209ac6faa8cc3', '160.153.133.88', 1611345182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353138323b),
('74d9cfe2f389f11de917cc4a9becf538b9baeede', '160.153.133.88', 1611341761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313736313b),
('74dd24f2f55c27b1309c57e4d67ab6ded94d58f9', '160.153.133.88', 1611289201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393230313b),
('74e597d48052f30f1bd086feecff67515d4ffac9', '160.153.133.88', 1611298441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383434313b),
('7506c06a29be6c5b077991c85965926d39e2d8aa', '160.153.133.88', 1611340022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303032323b),
('758c96b9b1ff91fe8ce15a7441c5ee3cde010283', '160.153.133.88', 1611298261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383236313b),
('75cd166016014639b28e1933506e591beecb56c0', '160.153.133.88', 1611321901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313930313b),
('75d99e851572afc0f83ac167f13e3a1a43ab6cc3', '160.153.133.88', 1611310442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303434323b),
('75e615d2a84b93f87ea38145d71c0f2c876523a8', '160.153.133.88', 1611308401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383430313b),
('7645362340e728b3f6f33e24acba7974e736ee56', '160.153.133.88', 1611280201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303230313b),
('766510a8225cd8737fa17bd629fee6eed07ded33', '160.153.133.88', 1611290821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303832313b),
('766798eb2059f9287133bba92fa93e56250c4312', '160.153.133.88', 1611337081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373038313b),
('766f2bec85b844053f014ff407d4dd07a4a54164', '160.153.133.88', 1611298921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383932313b),
('7679f927102632d5883b82fbbc7c3f84d6b207d7', '160.153.133.88', 1611343742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333734323b),
('769a107769224214c01da8e5cde2b7620781d942', '160.153.133.88', 1611348061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383036313b),
('76a8b72093bc73e64ae7c5c896b9e6ead593755c', '160.153.133.88', 1611281761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313736313b),
('76f1b7892a4a3231be93726318cd910c68e57d23', '160.153.133.88', 1611308461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383436313b),
('7734407bfc0eff8c633ce1183885199b23ac4790', '160.153.133.88', 1611297601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373630313b),
('77505705d734865e62271c5b51c9e1ec232d9f5d', '160.153.133.88', 1611318902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383930323b),
('7812b4971e988ece91a8b6e46359a2e64b9f7bfd', '160.153.133.88', 1611283561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333536313b),
('784cdcee8245aa873661304c4ff265363034a709', '160.153.133.88', 1611315241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353234313b),
('786a840bd7db3eacc59ab8bd3b0bb6e0963419b6', '160.153.133.88', 1611327362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373336313b),
('789ba43016606aa43b73f6aee59fa3cce498ca72', '160.153.133.88', 1611316562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363536323b),
('78faabf4e8303bb06319ef1ca025563c3f6d0f22', '160.153.133.88', 1611280802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303830323b),
('793e1455d59b7c2e35419b4421c65a1642329693', '160.153.133.88', 1611326221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363232313b),
('7949f55785617a588e80633b37a8a66d70ea531b', '160.153.133.88', 1611284761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343736313b),
('7982d36120cd075b8beb2375f11d7d7479d5b22f', '160.153.133.88', 1611344041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343034313b),
('79d22c6ee7f46c6f854030e7e813eb2506e37c4d', '160.153.133.88', 1611312683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323638333b),
('7a0a4435a9ed50274bf1c711ead7f3b757fbfbbb', '160.153.133.88', 1611301141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313134313b),
('7a11f89cc31e976acb48e4a6adfbfbcd8f8b89f1', '160.153.133.88', 1611339961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393936313b),
('7a4b710c2e23379daa38981a632c8a3e512e4804', '160.153.133.88', 1611336181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363138313b),
('7a694ea2e9e66c86402158d49b01760789623cfe', '160.153.133.88', 1611318181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383138313b),
('7adf0fa57cf78f42ca85714b185892e9dc12411f', '160.153.133.88', 1611275761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353736313b),
('7bb922f602bcea841c6f1c7e1917f4199c443099', '160.153.133.88', 1611319321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393332313b),
('7c3679f68220641685ea1099d47bc5744125574b', '160.153.133.88', 1611280322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303332323b),
('7c3f174c49902ccc5e1f6e80393d82c0160ce3cf', '160.153.133.88', 1611340982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303938313b),
('7c9316d4d8442376839e712e854918683108d297', '160.153.133.88', 1611287821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373832313b),
('7cbd31d5f351a936543add86abbf78511098c8e4', '160.153.133.88', 1611327481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373438313b),
('7d33a4a4f0e8319752c4ec654d674417b31a6dab', '160.153.133.88', 1611280502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303530323b),
('7d4e92eefa0b001b8a04e91216ca61730301142b', '160.153.133.88', 1611321481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313438313b),
('7d533eeb11ec373c056392125bb17b9972532ae1', '160.153.133.88', 1611306062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363036313b),
('7df5a829b7060689d47def6cb6e22b442c9e7e2f', '160.153.133.88', 1611348541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383534313b),
('7e2153f635428e5b9c984c3c5c1fe239622e191d', '160.153.133.88', 1611326822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363832313b),
('7e4fc81c51a100d96300399a5a4da6583a93a5c0', '160.153.133.88', 1611315181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353138313b),
('7e80ab012f78d0daa8e25a596234ac6eb327802f', '160.153.133.88', 1611283021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333032313b),
('7ee4a351ceb9657fba7ce7606acedbd66b8f3d23', '160.153.133.88', 1611295681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353638313b),
('7ef1968629743952c9b280e41cc9f7f6edd5b056', '160.153.133.88', 1611291121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313132313b),
('7f40f65ac20986683b3a7c7d6c771ce530bf6ca1', '160.153.133.88', 1611301981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313938313b),
('7f6d0f563946afd1cf2a22e365c921ec3a2e72f8', '160.153.133.88', 1611288662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383636323b),
('7f99ed46b61c19efa6ecb233668d1ca53f71b35c', '160.153.133.88', 1611277441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373434313b),
('7fad5de77fad484414a7412fee8c4c3040ded1a8', '160.153.133.88', 1611307982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373938323b),
('7fde873210e25f6f1276549a346ce400a384183a', '160.153.133.88', 1611328921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383932313b),
('7fe0775e295341400c09ff6f8c18b7f19536260e', '160.153.133.88', 1611281581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313538313b),
('7fe1201fd9245b9d78fd7caa11078127ca279285', '160.153.133.88', 1611274861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343836313b),
('7fe6c4d4a8362a757dd9e243b61914cb354522ef', '160.153.133.88', 1611300182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303138323b),
('801e267c237175c2dca7125fad6a18897bdc1679', '160.153.133.88', 1611311221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313232313b),
('8037a5a3e34564f55fc0dde9fc25df85a2745e54', '160.153.133.88', 1611316441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363434313b),
('803c213c7ea837a072241cf9d174a0d70ceccac8', '160.153.133.88', 1611288721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383732313b),
('804cd2df28dd9847e0fbda70fae64c00ae970adf', '160.153.133.88', 1611307502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373530323b),
('80504e0e233348c463171bd3df8950897ffee8ac', '160.153.133.88', 1611314230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343232323b),
('80e857b1ce3c4067092866f07abcf59f0d8b39c0', '160.153.133.88', 1611327610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373631303b),
('8118bce90edd3eee71a82e060ac37a2818396d26', '160.153.133.88', 1611344341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343334313b),
('81584551da33c35e82e1954a19fc712459d8b530', '160.153.133.88', 1611304801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343830313b),
('81d01acdc98bdecb77e2c135d2254f4857b75457', '160.153.133.88', 1611303901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333930313b),
('81d9176664aa89dff3c0c3857be4b73fcb4d6d1b', '160.153.133.88', 1611295801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353830313b),
('81f721b7ee0761d37a53d27df67fdb1338ce208c', '160.153.133.88', 1611313742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333734323b),
('82b599b02b9112a24611b07ae59a8d783e60af21', '160.153.133.88', 1611296101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363130313b),
('82e47c3324b57a46e01d64795761c7a7443870e9', '160.153.133.88', 1611288062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383036313b),
('834605f03e9529d4952ae76abbad233cd992d87a', '160.153.133.88', 1611301862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313836313b),
('83495d7c635df3f8c1d18acbce7f081a68c5d9e2', '160.153.133.88', 1611342361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323336313b),
('83682c3c7245afd4f8d8e425f9d8871b21fe5cb4', '160.153.133.88', 1611277561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373536313b),
('84309c40ec9093e699db02d4ce354f9eee41a494', '160.153.133.88', 1611311161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313136313b),
('843c679317f35b17c7b3e1debc56585a1f57b28b', '160.153.133.88', 1611314881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343838313b),
('8468dd2cbc5b51b30a50edb5b76d5d879dc7b757', '160.153.133.88', 1611296822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363832313b),
('84f122ef6ee139133b23b889716ba946adf1b8f4', '160.153.133.88', 1611291661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313636313b),
('84f433bc6ed3add4cf0c33c6fda39561744eae17', '160.153.133.88', 1611294721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343732313b),
('8522aaad4dd814b12db4b7b7af50c0516191f4f3', '160.153.133.88', 1611335282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353238313b),
('853bb91ae861a40216c2ab1737b6d3c30156fba0', '160.153.133.88', 1611321661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313636313b),
('856745fc52a185cceb3f931f358be97581f12761', '160.153.133.88', 1611325741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353734313b),
('85b258e628f42c6b0c65c0659778a618e2e9720a', '160.153.133.88', 1611278462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383436323b),
('861269223058a2a16a5892042fb99cf5f8fa4412', '160.153.133.88', 1611286741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363734313b),
('864ffc643ef30bbb15a8d67e88ef242a8c507213', '160.153.133.88', 1611323521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333532313b),
('86502b1c36e2c898b02afc8b6c37615a3504702f', '160.153.133.88', 1611333001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333030313b),
('86555b8db06678a11d7977e330a0fd4541e4903a', '160.153.133.88', 1611311401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313430313b),
('86701610d9788db095c72f84972d87e31ec14568', '160.153.133.88', 1611307261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373236313b),
('867ae420eb34be560c0ec2da23db7dcc61635613', '160.153.133.88', 1611323221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333232313b),
('86ad2aa173634147a4d761e73dccfd71f669d1dd', '160.153.133.88', 1611281641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313634313b),
('86c598737b1fe84417c155942b5edb525a6a68e1', '160.153.133.88', 1611316202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363230323b),
('86ddd146866a8c7eff8bcc65b3f9235aba7f9e34', '160.153.133.88', 1611333242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333234323b),
('87201cce348688172c68d0fe94d8a909aa3771b6', '160.153.133.88', 1611296941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363934313b),
('87972ace2bfc1bde8938fab0b673b02ade672d57', '160.153.133.88', 1611277142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373134313b),
('87a1d889bd82842bbcbedb4d534fe67f44bfed79', '160.153.133.88', 1611339481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393438313b),
('87c2b3b0e01e91926f26b425c4e749b7a0b77992', '160.153.133.88', 1611303361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333336313b),
('885740edef2315fea005f5e2ab35724527b2ac32', '160.153.133.88', 1611285842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353834313b),
('891a9df19d4429ef10e9ac62d8bd61ce78885b34', '160.153.133.88', 1611333781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333738313b),
('896166c0c1d8403be48ca51bc860883ed600050e', '160.153.133.88', 1611346141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363134313b),
('89ae44fce027cb42b13af4ee047d567d9854da42', '160.153.133.88', 1611333901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333930313b),
('89d4b0fcae766b45162fb744b05274cf35d9f808', '160.153.133.88', 1611302641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323634313b),
('89f214b58770df76db334fb388e075f7f02a7f7f', '160.153.133.88', 1611298802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383830313b),
('8a13f31b53cc96f3a84f70557197746f129703e0', '160.153.133.88', 1611281881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313838313b),
('8a3b41a3a7a117fab42241a92738c2a4765e557f', '160.153.133.88', 1611318662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383636313b),
('8a65daa618605889e4841ac3d9a95dc830483255', '160.153.133.88', 1611284102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343130323b),
('8a72aa03550a07e64f027e123f7d8f70014eebcd', '160.153.133.88', 1611339361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393336313b),
('8a9aac95bfa71a65d81ceb9cdd9918a7c8c66408', '160.153.133.88', 1611308522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383532313b),
('8a9ad4dc8ce716c154a1a7d3a5891a76c6c1d086', '160.153.133.88', 1611314581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343538313b),
('8a9c4e46fcf84b4d0cb3bf9e2ab57d60885b5bd5', '160.153.133.88', 1611319082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393038313b),
('8ac2f130b0228cd0027ae4163165d94eccca63b9', '160.153.133.88', 1611299461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393436313b),
('8ad92e3dd74a4d5aa952f59f531120f9a0b2fc1e', '160.153.133.88', 1611317582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373538323b),
('8ae446dd50d4c27258bcb0f4bf30cc3bfa2e403b', '160.153.133.88', 1611339302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393330323b),
('8af2ffc28a1f01cbac74a21bcc3249a1c20a6baa', '160.153.133.88', 1611305521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353532313b),
('8b64a1585ddd3aadd7ee28e5712e7c44516625f9', '160.153.133.88', 1611344581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343538313b),
('8b7aad469aea643715f2915c9703ca7086f6420f', '160.153.133.88', 1611348721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383732313b),
('8bb25840dd7e7f2a61cf5e416be7c03264eefc04', '160.153.133.88', 1611313201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333230313b),
('8bfb6519140d76db70a9fbc144dd866e609f0a40', '160.153.133.88', 1611333601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333630313b),
('8c1511bfc67a5ea13a28bc598469e643ee1783fe', '160.153.133.88', 1611335942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353934313b),
('8c1a1c876e79466540d7c1f3a5e2038cbd1f6fc4', '160.153.133.88', 1611347641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373634313b),
('8c1d197d9b2cc7512b3853869844a6da6ec7e0b6', '160.153.133.88', 1611327842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373834313b),
('8c48fece8af0c72acfcbd9fcd88ca475f8b1c5f0', '160.153.133.88', 1611292201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323230313b),
('8c5724af4464910395a26a6d206dde0bf1890ef3', '160.153.133.88', 1611303964, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333936313b),
('8c89fb61318b50de2a7a3e1f5501bf2fc2072b6f', '160.153.133.88', 1611311341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313334313b),
('8cfacd5b5f21055ecf5dfd9ec832f18297a57457', '160.153.133.88', 1611326882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363838313b),
('8d17288acd6d20bc7cda5dd412bf1c66767d3042', '160.153.133.88', 1611332041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323034313b),
('8d36cbad0194085fdf1e075553af5f2278a3cb44', '160.153.133.88', 1611346261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363236313b),
('8d385ccf37c0e2750363fe7a1e52534327d651c5', '160.153.133.88', 1611287341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373334313b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8d466a9cb9c9944308ab2c3ef424b9b19f83dc34', '160.153.133.88', 1611325201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353230313b),
('8d4bd7a97c2e1c1504df97790721432cb0a9c6de', '160.153.133.88', 1611341401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313430313b),
('8da400113d68a25ed7426a9eda18d66586783ef4', '160.153.133.88', 1611308941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383934313b),
('8dcea9da4f915715599d6a739d525f2480f76721', '160.153.133.88', 1611331621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313632313b),
('8e59ee8817d98e3bfd8559c8ad0eeafc2bceb989', '160.153.133.88', 1611315661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353636313b),
('8e974f17e45efd4981de6d7031656031e50eb638', '160.153.133.88', 1611337381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373338313b),
('8ed82ee57d9a1d7095684732e17f1244450c0b9e', '160.153.133.88', 1611313021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333032313b),
('8ef91ffe8a96f8bd39093009089e1dd164ce4d24', '160.153.133.88', 1611303302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333330313b),
('8f10810f2e4d0233819b02b4dcc1d498fe037c98', '160.153.133.88', 1611306423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363432313b),
('8f1116d19cca93972e02278977609588a6f06d11', '160.153.133.88', 1611309901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393930313b),
('8f28523ea86e7ba2c489ebab9c07d0f99645cf36', '160.153.133.88', 1611321301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313330313b),
('8fb1e9690d848524bf5bd46eff40576204536cf4', '160.153.133.88', 1611343682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333638313b),
('8ff26ee2d1526f0becb63a5eb8cca48d32832251', '160.153.133.88', 1611280441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303434313b),
('900954e26e483faf2e873b0ad03596f5ef3021ea', '160.153.133.88', 1611299102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393130323b),
('9030d28d766844618fcb54661babaa8be901efcd', '160.153.133.88', 1611308341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383334313b),
('90ad46c5489b5fce834bd77b9a264c3ef24bad43', '160.153.133.88', 1611281101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313130313b),
('90b06fa8edf303abc268b667dabc09897e3412c1', '160.153.133.88', 1611293402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333430323b),
('90b15ed57aba163d7d0f0421ca5b8eb3bf71c4a4', '160.153.133.88', 1611296881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363838313b),
('90e7ce9cda691f6489857a83f33e85652a9d4e86', '160.153.133.88', 1611323341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333334313b),
('90e7f8e1cf88ebf1297448eb0ba501a546f3f688', '160.153.133.88', 1611334081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343038313b),
('9140371a7c81ad977ab067f1e4de99cec4b216e3', '160.153.133.88', 1611313621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333632313b),
('91492c18afb236bfafe728f62bbb3a262cb22f21', '160.153.133.88', 1611299581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393538313b),
('914e5630dc5159d4e618396121fd549b200e731f', '160.153.133.88', 1611322561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323536313b),
('9177026ca0e68224d5b475ec21d3d6fa845f5007', '160.153.133.88', 1611286382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363338323b),
('91901b59eced10e9550b1c876a11257b5e07d51d', '160.153.133.88', 1611330781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303738313b),
('91931929b704108660113794e5ae396718460f77', '160.153.133.88', 1611298741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383734313b),
('91a41ae6d918c66a2731dd563dd05957a606903c', '160.153.133.88', 1611289681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393638313b),
('91ace072f8bfb96483f8ab39b7b3d03fbd9221a8', '160.153.133.88', 1611332282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323238313b),
('91bad177b78706390a97bb0ca1b44e36cb35ed0d', '160.153.133.88', 1611344281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343238313b),
('91c99625164e53b62ec68d68e3357aca2d25f167', '160.153.133.88', 1611320701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303730313b),
('9218212f5ef15eef0b5e50a0d8fbea934b735592', '160.153.133.88', 1611334381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343338313b),
('922a662182c2e01453cab31b13fa77ff01bb45d4', '160.153.133.88', 1611304741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343734313b),
('9256a0943ff9c3cb856c75c51815e305042ce28e', '160.153.133.88', 1611291721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313732313b),
('925cf1b2de22b20f18a13c9ec3e4c6af70375636', '160.153.133.88', 1611293881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333838313b),
('9267b57a62c4a33b3665e3ad07d8e8eff18f9b6c', '160.153.133.88', 1611342602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323630323b),
('9272e27c6b0c3b2546ac1e44387093c981cd33a3', '160.153.133.88', 1611314101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343130313b),
('92a8bf79ae28da464f6b690b7e6481650170f405', '160.153.133.88', 1611309962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393936313b),
('92df1a3314f49f0d009ff7a5a71f7e91f6b00726', '160.153.133.88', 1611288781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383738313b),
('934170e40bd22b03df93562e2174fd9bb2264525', '160.153.133.88', 1611307442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373434313b),
('9343d2de50eb5ae43941ad4a64c7925e8dc22c01', '160.153.133.88', 1611296162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363136323b),
('93555c1eb634bab64c74279a57fd42c4bc87f3cd', '160.153.133.88', 1611308281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383238313b),
('936c65cd4226d4c8bf8dc12361b6d05d7f3bf6d5', '160.153.133.88', 1611284882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343838323b),
('9376bead0a1b25fbb287b04d6bbf655c11f5a884', '160.153.133.88', 1611292862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323836313b),
('9457636048219facb528aba8a7f66307f7cd516a', '160.153.133.88', 1611320042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303034313b),
('948398868a0010554fc905adc755091036f4710f', '160.153.133.88', 1611333304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333330343b),
('94922adfacde7e5f36ab0a25af286ec0c2b79b64', '160.153.133.88', 1611306001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363030313b),
('9499c364888e52a06656accdbb5bc73c34645fae', '160.153.133.88', 1611297001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373030313b),
('94c82f658de56c526fa648930a859ccb6db0fc03', '160.153.133.88', 1611333661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333636313b),
('94f7e1bf80c98b6273f63a86acc8eb15f6b3022d', '160.153.133.88', 1611329042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393034313b),
('9564ed728b428cab4ed4989a12ff47849de1c8e3', '160.153.133.88', 1611323161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333136313b),
('956b4ba9f11a9d1b6e3ba8b5c82779850e521736', '160.153.133.88', 1611303722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333732323b),
('957131d08f7378da1895e7c01cdda9126a964f7a', '160.153.133.88', 1611326641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363634313b),
('95d664399daffc6f598226a2ade9e562b8cacfaa', '160.153.133.88', 1611323941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333934313b),
('963413c6c7b2cdc1510242bb6463e0a02da00c7d', '160.153.133.88', 1611291421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313432313b),
('9641007f3d753353977ae62424855c9c09670538', '160.153.133.88', 1611319921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393932313b),
('96a8a5e68a0178fea257fc7566701a31cce962be', '160.153.133.88', 1611295441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353434313b),
('96aafd615c78a586b175858a4bd5240846609548', '160.153.133.88', 1611293281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333238313b),
('96d4a71b125a056e85bc1def01736714f7fedb33', '160.153.133.88', 1611296281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363238313b),
('96febfffc0678b3da5120a968d5aad1d874612da', '160.153.133.88', 1611290461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303436313b),
('97625fb029bcea5d4152666e098f220acaa82e0d', '160.153.133.88', 1611309241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393234313b),
('97e092d4f61c3784bb92ae3cebc3e88c4ae4261c', '160.153.133.88', 1611332341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323334313b),
('97ecd9abea906d2137715c50196b853ae708f297', '160.153.133.88', 1611307921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373932313b),
('97ef7a1032249e2eb7514a97c10d2729a55366c9', '160.153.133.88', 1611297722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373732323b),
('97fee3d6fac02d07dbcfe7e581386830a1aee334', '160.153.133.88', 1611296642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363634313b),
('983b3a9672c33023187ca3c2707eafc0701685ec', '160.153.133.88', 1611295501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353530313b),
('9899d543aac5cfc86d7ec3c5b4d31dcba55f2760', '160.153.133.88', 1611309601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393630313b),
('98a867e6bb8499ca74287288a0323f4501a51c23', '160.153.133.88', 1611323412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333431323b),
('992c5333f73c90da4eb0557726067b3bc231bdd4', '160.153.133.88', 1611295021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353032313b),
('9938438d51fb536b2957f6f14662ec4e8683aaab', '160.153.133.88', 1611285482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353438323b),
('99481c312e18df10988961e4f275da01877944d2', '160.153.133.88', 1611348181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383138313b),
('995f0007838f878cd57836121cb9ccf4c5c4360e', '160.153.133.88', 1611281341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313334313b),
('99797eab189d026f0d7e17d66c3f0a791f7b2dfa', '160.153.133.88', 1611314761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343736313b),
('99be4930671bea627e6e3a3fb767d0318c3ca3e8', '160.153.133.88', 1611301622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313632323b),
('99dab9294e57a67d451ea503f819e17e007b8e86', '160.153.133.88', 1611328082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383038313b),
('9a161e93efa0f8de1aaa5ecf88cdd8d5f65c4047', '160.153.133.88', 1611275342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353334323b),
('9a17bb68687f95a76384e5272921bee89f3ea833', '160.153.133.88', 1611327661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373636313b),
('9a4396b72b63fddaf6c8842a2c9f6c42e935ff08', '160.153.133.88', 1611312241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323234313b),
('9a5af7c6df69d791dcf9eb8cc0ae8f50b49be9f8', '160.153.133.88', 1611334741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343734313b),
('9a72b32e277bc74bab38d7d0031f07054cd3fe16', '160.153.133.88', 1611292441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323434313b),
('9aa7ca14a3e81cd24777c3b879a8a3bbbf815923', '160.153.133.88', 1611310861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303836313b),
('9ab277b2802831cb2a58af6dead1caffdba000d9', '160.153.133.88', 1611330241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303234313b),
('9ab6fd1d6356d99bbe6007316d4222a1abf6f012', '160.153.133.88', 1611316741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363734313b),
('9ab932b0e519486f4c0f676ba1c571e2343681b0', '160.153.133.88', 1611278521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383532313b),
('9ab9f8fa4f65920bc03d992621eb2eae4ded923e', '160.153.133.88', 1611279962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393936313b),
('9ac1b65b3a454abe64482b9bc3b6b234f11bb4fa', '160.153.133.88', 1611315781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353738313b),
('9af696c3dad39dad7b21822432dfe48571f62d71', '160.153.133.88', 1611307021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373032313b),
('9b1edabce6734614fc89def2e802f35a9c33a23c', '160.153.133.88', 1611280682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303638313b),
('9b6a69b0f247ee949db2ead38a2ff195f29d20c9', '160.153.133.88', 1611339181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393138313b),
('9b8a3ff36f4691cd9397a2a87ad301924e854026', '160.153.133.88', 1611346441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363434313b),
('9bec2b13ae24823469bb12303c0eb6c2f84e90f1', '160.153.133.88', 1611293641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333634313b),
('9c5a9292bc61584e93f4d29129a698a5f7363f0a', '160.153.133.88', 1611301681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313638313b),
('9c70079ff7189eb734beb93bfab68a25a360eff3', '160.153.133.88', 1611281401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313430313b),
('9c8ecb7dd23e8d5692de593dd776a28a1b4ddb19', '160.153.133.88', 1611330421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303432313b),
('9cb2d47f713255596cfc60ce75edd760e0abeaca', '160.153.133.88', 1611332941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323934313b),
('9cfa204247f6facae8935e86fdcc7c7c19dce47d', '160.153.133.88', 1611295561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353536313b),
('9d166e9eda4135b511b35a3905d367b9f54d975d', '160.153.133.88', 1611332102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323130323b),
('9d44ea0786d78cb3e8fbdf60e2326d94418d08eb', '160.153.133.88', 1611316261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363236313b),
('9d6940345486746928e03140ef8cde3a9c3a5b81', '160.153.133.88', 1611331321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313332313b),
('9d72c200578c4e397e3be8f44e3ef4feaa7529fa', '160.153.133.88', 1611282541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323534313b),
('9d80f86c199877d3c2e83c38f9a95d5f80779251', '160.153.133.88', 1611293821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333832313b),
('9da9e07a684a4ad04047bb3d7beed158ae5aa09f', '160.153.133.88', 1611319681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393638313b),
('9e064059d45a038e06c282bed18d199ab3d338c9', '160.153.133.88', 1611319141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393134313b),
('9e38ab0e9940e579679039f8bd0cd7c090b2c311', '160.153.133.88', 1611317101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373130313b),
('9e5e083baaf5fa27578b628a99bd84f05f9b7561', '160.153.133.88', 1611294421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343432313b),
('9e60ce37b48847ba743afe294b81425f9eaea6fb', '160.153.133.88', 1611275701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353730313b),
('9ee6dfb7139178b84bc2289131ee02ab477fbcd9', '160.153.133.88', 1611283741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333734313b),
('9ee8d95d82b4a333ff501847772966fbbfa46488', '160.153.133.88', 1611291901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313930313b),
('9f1025d435d4a917ec52dcfc03269df1b92ce234', '160.153.133.88', 1611286021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363032313b),
('9f2888ca3ca3ede98b13f8037c0186dcf931fbd9', '160.153.133.88', 1611304442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343434313b),
('9f490cb08f6a9a9370a75b6c81011771ca6953ad', '160.153.133.88', 1611313574, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333537343b),
('9f51c077428ee082969b2dd72b10edc49c8c7cef', '160.153.133.88', 1611345961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353936313b),
('9f71005172330d7cc6081e000bc7bf6dc55fc481', '160.153.133.88', 1611316141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363134313b),
('9f76ec3fb82ea3ed036f68726fe907660dd4d38c', '160.153.133.88', 1611294001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343030313b),
('9f83987c9e98d34aec3a9f49a2a7a10ec7a6b98b', '160.153.133.88', 1611282781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323738313b),
('9fc2eaa7f3103f3035b1c073612520d787f26dda', '160.153.133.88', 1611334228, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343230323b),
('9fc68a0e668acd96f175308aef8942def4df8d2c', '160.153.133.88', 1611277381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373338313b),
('9fd92bd2987144c322cef9dbf1216fe76739f69b', '160.153.133.88', 1611296401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363430313b),
('a007aa671f254b84d96c392801056a8c988000dc', '160.153.133.88', 1611322441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323434313b),
('a0265a5c9e155e856bb700e6e891b6c6985288ae', '160.153.133.88', 1611348481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383438313b),
('a05a3ebcd9f811c0ce885c759828a7a666b2b507', '160.153.133.88', 1611319021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393032313b),
('a0a0c17ae58b5f806b56dfb64c95e6a9c7407f93', '160.153.133.88', 1611276782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363738313b),
('a109afb2750b949b6564ade7114f61ffafaf363f', '160.153.133.88', 1611277741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373734313b),
('a10d47c78c6d59dba68b65eaef245e047d7ed1bf', '160.153.133.88', 1611280921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303932313b),
('a14d4144a88e09e5b737bd8fb599c8afb68a4a13', '160.153.133.88', 1611327421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373432313b),
('a1506bbe5d8efde613c3ad2a1c3c7f909b322d07', '160.153.133.88', 1611313981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333938313b),
('a16d624299dec551e02e4ac5181c017dbfe8ea12', '160.153.133.88', 1611298201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383230313b),
('a1ad5cd3571b7d346d09e7b36066c7f91c1876bc', '160.153.133.88', 1611336242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363234323b),
('a1bd7ec133c371c9df859f2881bebdf279104b11', '160.153.133.88', 1611276361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363336313b),
('a1e6b74203414f5c78ad7320b053fd2fe5cd84e6', '160.153.133.88', 1611276002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363030313b),
('a27a573df6a896e8d9050bb7b11f079c7ba6c9fb', '160.153.133.88', 1611309061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393036313b),
('a2ca1d4cc28a3ccfc1d431ed44904b38334683bf', '160.153.133.88', 1611278701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383730313b),
('a2ce33aab0a1a9b3094db1044b99bd50b89732d5', '160.153.133.88', 1611345601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353630313b),
('a32046ac07ea54ad1727e1e691bad6a90547a3cd', '160.153.133.88', 1611329221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393232313b),
('a33c22bc189822b3ccff899a0c917a032f95d4fb', '160.153.133.88', 1611308641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383634313b),
('a36df77d91c597832325e10fdb630d73ed5ab0ae', '160.153.133.88', 1611320161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303136313b),
('a3a815dffb7a947f3ae98b0ed7aaced36a9bf61c', '160.153.133.88', 1611303001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333030313b),
('a3d34016f58df7a04bd9d015f2b9776da40fd66f', '160.153.133.88', 1611296581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363538313b),
('a3ee37e6b69b1bd612933ea0c49736caee37a9b8', '160.153.133.88', 1611346381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363338313b),
('a4065aa055dc8c30de9f88fd3825ef7df75492a5', '160.153.133.88', 1611320521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303532313b),
('a472b4ed4107b497c6bddf67819db63fce9bf84f', '160.153.133.88', 1611279002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393030323b),
('a4891cc50e41cb91a39f594576409229232eafde', '160.153.133.88', 1611278881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383838313b),
('a4aefaddbbf64899f313a9345ea77000542eb82a', '160.153.133.88', 1611277622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373632313b),
('a4b4b7c27637a5af012a75cb79efb75f9e8f2917', '160.153.133.88', 1611290521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303532313b),
('a55c040881b9a2ab85fcf8a8bc921e641290650a', '160.153.133.88', 1611306961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363936313b),
('a5eec3be0b88d8cd0e55e0fd0c81929b1fc1f36f', '160.153.133.88', 1611332401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323430313b),
('a5fdcb3d25eb21d73cb92d8c51b9024d0c14ed4c', '160.153.133.88', 1611337201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373230313b),
('a616547db2ca6ae1eed0d739e1f3674659a5dda4', '160.153.133.88', 1611278401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383430313b),
('a6208456441b0457a2b21a1bd9a765bfc51ddd5f', '160.153.133.88', 1611330722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303732323b),
('a64ce1ff5fd70282fbf7a43fbb5dd8d30bd8fbd8', '160.153.133.88', 1611305221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353232313b),
('a6771bfdded986babf3b8c13fc5fe2603dd7cb76', '160.153.133.88', 1611313442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333434323b),
('a6907a5d92191d9a65cdd768bf77681d7d84e8c3', '160.153.133.88', 1611282482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323438323b),
('a6ae5f8eaa5077103544831abe06deed077236a2', '160.153.133.88', 1611317761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373736313b),
('a6d492c182949a6602e157321d8d9373e03ef060', '160.153.133.88', 1611346201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363230313b),
('a71c1cfecee04c4ea67d1433255e7b214a0d0952', '160.153.133.88', 1611348302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383330313b),
('a77c6ec2c3dda36e58322862ac6a6fc1cda2f622', '160.153.133.88', 1611305641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353634313b),
('a789b615cfba91107ed7fdffd1c48ebf5c42320f', '160.153.133.88', 1611305281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353238313b),
('a78a65e809fcb36c1166271209f87918976a2455', '160.153.133.88', 1611347761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373736313b),
('a79d4af5aa2e7350ea21b1e1d63ee59e44d9874d', '160.153.133.88', 1611318721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383732313b),
('a7b7911a67572867f55d67cdfc4021bf738f8250', '160.153.133.88', 1611294061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343036313b),
('a7cccc6bc5c4a99d8c2e21eb98055b6b745150d2', '160.153.133.88', 1611279481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393438313b),
('a7e97652909245a9b17fa26003e069ea9898cace', '160.153.133.88', 1611275461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353436313b),
('a82a31087ecf5763bda188c62007610f76e72afe', '160.153.133.88', 1611310742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303734323b),
('a842ec4c992920b00514201bff17546b843698ec', '160.153.133.88', 1611316982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363938313b),
('a88e5f7e50fea960e1617244cab1aab6e12d3c3a', '160.153.133.88', 1611334501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343530313b),
('a8d8baacc241cafb9d80c56097cdac01105f1a35', '160.153.133.88', 1611279541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393534313b),
('a8e45ebdac2d6fcba00dbb3dd7350930c436d274', '160.153.133.88', 1611282061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323036313b),
('a938bccf4d68f9cf7f301e666e61d480db6b3491', '160.153.133.88', 1611293161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333136313b),
('a93d5bb3a4c7771aa1bd78bd07672794c64e94e1', '160.153.133.88', 1611293461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333436313b),
('a9eeecfa72838f0733b8d3532deab7edf003f84f', '160.153.133.88', 1611306181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363138313b),
('a9f4b589c945c413f7f59b1f1f956724f17a9378', '160.153.133.88', 1611304021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343032313b),
('aa65950d8d0a4d1476493190af8694058708c253', '160.153.133.88', 1611325621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353632313b),
('aac6bc83e0ec8ca04661f9d4700432f9305ff776', '160.153.133.88', 1611274502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343530323b),
('aac9fe90e4ad234b6852533722f26916c6b45594', '160.153.133.88', 1611335582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353538323b),
('aad8b34b5bdff77ea53638b731813c8007fbb124', '160.153.133.88', 1611315362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353336323b),
('ab41748a8a83aff8daa0115d298d6833f53c04ba', '160.153.133.88', 1611322681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323638313b),
('ab4a099a06ef7d031859651eb463313b0e9f85b0', '160.153.133.88', 1611276062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363036313b),
('ab630114026a6d2cde95556553082d5aff042429', '160.153.133.88', 1611344102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343130323b),
('ab6537c340c891d6819686e2c92de8652be4b3b9', '160.153.133.88', 1611300542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303534323b),
('ab8d8d291edd5f82fe88b1c13254967103055ac2', '160.153.133.88', 1611324122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343132313b),
('aba429213d5d99353f81cba6300abe5a4c11d618', '160.153.133.88', 1611307681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373638313b),
('abb16ac86a404e5f217578a7710394c34086d6cc', '160.153.133.88', 1611298142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383134323b),
('abb8bbbcfa642c4742adfd103d04f099b1a19df3', '160.153.133.88', 1611311821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313832313b),
('abca50a8ec548a2fe7df4d4c2df7449a70a0e5e2', '160.153.133.88', 1611341101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313130313b),
('abfcdc4e1c90d5a0fc09176b5b0c88ab42e7a3f7', '160.153.133.88', 1611310321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303332313b),
('ac37fc06ebf1b8f586b62d28d929d63649ab6b9f', '160.153.133.88', 1611345241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353234313b),
('ac662e4b91a20d2510e0d71ce413fe4f114d0f54', '160.153.133.88', 1611279421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393432313b),
('ac8fbd00453ddf47b8f76feb0ccea6a20ef4c00a', '160.153.133.88', 1611289862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393836313b),
('ac92a52d32d740b787133521c922215533f9fca4', '160.153.133.88', 1611342422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323432313b),
('ac9f7fd6470c3dabc2f3b5baec2ff7724969bf4a', '160.153.133.88', 1611319262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393236323b),
('ad135a06678794c0bafd79a4b0ce5dfa534aea7f', '160.153.133.88', 1611347702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373730323b),
('ad1f616b1dc025f3a351e54adcb595cdaf7ab564', '160.153.133.88', 1611330361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303336313b),
('ad289dd4c5d99e6f12095a44a6de81cdff9e54f4', '160.153.133.88', 1611302402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323430323b),
('ad2b83898f09fa29d1a0ee259d593e1650ea4a7f', '160.153.133.88', 1611332221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323232313b),
('ad64d70e8ac2aa2b5b79d5f7a94c8a94d7245266', '160.153.133.88', 1611278342, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383334323b),
('ad68891c44c73337f55429a0f4682cc87aa5af22', '160.153.133.88', 1611334801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343830313b),
('ad7a131d1445bd33bcf3dbe73c8c19c2cb3ea716', '160.153.133.88', 1611302521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323532313b),
('ad8ea21e1b961b7d33f1f2edbe71549ed90d7fc7', '160.153.133.88', 1611291781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313738313b),
('adbc02b823a6bf5ed5b89e0d994116354ae96ddd', '160.153.133.88', 1611275041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353034313b),
('adfa3ed56f0daddb4258377edb56728d7711bdf5', '160.153.133.88', 1611304201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343230313b),
('ae65f225f118e92eaa4015ec33cf1c3c4a3181e5', '160.153.133.88', 1611322141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323134313b),
('aeb682aee9aba4093754dbea552889d0cef4c12c', '160.153.133.88', 1611298022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383032323b),
('af0a0667e06ee4da29521c9b0e50cd607a4ce5f0', '160.153.133.88', 1611284461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343436313b),
('af4be4034376f404a221471cea1d641d5f5f1713', '160.153.133.88', 1611301081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313038313b),
('af5f6beb281f77dfd85e3252878daf596c096440', '160.153.133.88', 1611344461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343436313b),
('af8a53505801d2e61af23724bc57448eb6accada', '160.153.133.88', 1611299281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393238313b),
('afa6299d7334579f6e5d967b3cf9a65ced10d3a6', '160.153.133.88', 1611332841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323834313b),
('afe5d5d6e14a77340f8e596b69c9bc6c4a02973c', '160.153.133.88', 1611348361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383336313b),
('b06ccc25cb66c23b668458696b10b80d6ec5146a', '160.153.133.88', 1611283262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333236313b),
('b07bd3014352760bd01f57c9261218ce1da576a1', '160.153.133.88', 1611344941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343934313b),
('b07f896d052e577188a4ff0f525b32f4f0dd3103', '160.153.133.88', 1611332461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323436313b),
('b08fdc4431c69ddd032d388be8f0897ef52857f6', '160.153.133.88', 1611288842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383834323b),
('b095e585580ccb0f04896855ca86fc8ffe7034ec', '160.153.133.88', 1611336421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363432313b),
('b0a235f336b3a670a5d8ae2a8f716a077a3171a4', '160.153.133.88', 1611306361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363336313b),
('b0dd78f77e1598f25ee4e9de9538c971a285e850', '160.153.133.88', 1611275221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353232313b),
('b156623b65a88ed0f99b3f719cc939cc0a202cbc', '160.153.133.88', 1611337921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373932313b),
('b1d6619c093de4effdefe5598abc8d5b731c7427', '160.153.133.88', 1611317222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373232323b),
('b26e57f05e01845986685aeee18410112f039a67', '160.153.133.88', 1611340921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303932313b),
('b2b3e7a0b7830ed9103064330c34c59a676eb80f', '160.153.133.88', 1611276182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363138323b),
('b2d2988610902a40de1d0d43a29d32e772213765', '160.153.133.88', 1611338401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383430313b),
('b335d0fb7bd8bf03f841ebdc9e4063a7d3111be3', '160.153.133.88', 1611286861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363836313b),
('b3ceaf9dc71a151035582c7670c09e4dca7f7a91', '160.153.133.88', 1611285661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353636313b),
('b41122469b35114967e2e649fdf18760be065e47', '160.153.133.88', 1611343801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333830313b),
('b49d5bf8918bf3d9e06016772392d382a4007c11', '160.153.133.88', 1611340441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303434313b),
('b4aaa5fdbde4cc433082a1835f4f6f22d0f6149b', '160.153.133.88', 1611303671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333637303b),
('b4c7906dc6ddc2413a393ebe4019d658ce82c95a', '160.153.133.88', 1611324961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343936313b),
('b5874adc9bd387c7d54e377c823f0aa5ceb5d674', '160.153.133.88', 1611333421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333432313b),
('b5b9553779b3039d284ab2da36db53086963fef3', '160.153.133.88', 1611305101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353130313b),
('b5c7bd655cc9a99a078c49a0b3093ca141eafd44', '160.153.133.88', 1611311881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313838313b),
('b5e6fe16e128a25db8c7b5d5df9124214f8bbaa7', '160.153.133.88', 1611300601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303630313b),
('b63398e4492adda3bc99a46012219079a23ff551', '160.153.133.88', 1611342301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323330313b),
('b69870a89b9cec2e32606fdb2143b0189ed70c2c', '160.153.133.88', 1611297481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373438313b),
('b72d1bfdd8b71d1a90dcf6d06fcefaa9f9c93417', '160.153.133.88', 1611322741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323734313b),
('b74e7293524cb173a32cc054c37582125a3f8dd3', '160.153.133.88', 1611339602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393630323b),
('b76ab67615e53d11f25a373a8eb201521d16db80', '160.153.133.88', 1611328381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383338313b),
('b76b29f214ba93b6397261db4903d4f6333959ae', '160.153.133.88', 1611278642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383634323b),
('b7a6b9ebd78257e47a2443d9ef972fec82bc7254', '160.153.133.88', 1611290101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303130313b),
('b7c64366da59617becadd1fc020b4c54907631aa', '160.153.133.88', 1611288481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383438313b),
('b7d2913366463cb9832ad6629e366f93dddb7c08', '160.153.133.88', 1611279181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393138313b),
('b7d2982f358aa9987f4d1e574b9f5f2c6e402bc8', '160.153.133.88', 1611275101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353130313b),
('b8087ddfc128ba428f3fab5e104f61e0ea20a71e', '160.153.133.88', 1611297902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373930323b),
('b8521cb35231366360738b518576f30ffdf3da49', '160.153.133.88', 1611336901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363930313b),
('b88f7c807b81fac2f11d6600cddfc260be9e8f1a', '160.153.133.88', 1611287762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373736323b),
('b8a7149253d9dd0bf0a492c36b326f9898c4d6e5', '160.153.133.88', 1611313921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333932313b),
('b8c03413f0a03dcdd72149c3803677ccb8119f6c', '160.153.133.88', 1611316321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363332313b),
('b92c3e0b268a4153537764309040b8ad01125750', '160.153.133.88', 1611280562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303536313b),
('b94f591935bdf3a26e5f64337f014c3c478d5c3b', '160.153.133.88', 1611322261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323236313b),
('b99247c95e858368db3da62f4dad5e4fceca7204', '160.153.133.88', 1611346321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363332313b),
('b9c91fe002288e1a824bf53a293f8eb57180502b', '160.153.133.88', 1611329761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393736313b),
('ba394b59c4e70ed6a96741f862b67945f06f4d7c', '160.153.133.88', 1611337021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373032313b),
('ba4e5e5f04973a75f309dd4e7ad8e76e24a3cdd4', '160.153.133.88', 1611329581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393538313b),
('ba7d44c169e193332bc914fdfeee5ffb4eef0dd6', '160.153.133.88', 1611292742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323734313b),
('bac1db3f8549cf7c061bd818c1f0b4362118f08a', '160.153.133.88', 1611278761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383736313b),
('bb3969d9d628028a334b8c97c5b890a5fb225ad2', '160.153.133.88', 1611294841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343834313b),
('bb74673379d1e889e9a2a30f0952231423af80df', '160.153.133.88', 1611334981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343938313b),
('bb914678fc063cfd1340e3f4a7da76b6cb45a9df', '160.153.133.88', 1611302581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323538313b),
('bba4543b961b026b6c217708a426d0975277624f', '160.153.133.88', 1611298981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383938313b),
('bbcea6f0cdf1e85e2baa80b1134b94b232d6f4b3', '160.153.133.88', 1611303781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330333738313b),
('bc556aef60f9808f713fb3df05d0073aeca660e9', '160.153.133.88', 1611327061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373036313b),
('bc63871cc39bd998a5f2a942bce093021edde764', '160.153.133.88', 1611322321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323332313b),
('bcdd043cca3d251386aab1290cc82379df69a9f8', '160.153.133.88', 1611334681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343638313b),
('bd2a8a565093465c8af82e6f123441c8196e575e', '160.153.133.88', 1611321961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313936313b),
('bd42ed68464bfeaaf31831605b16bf6b82a2c234', '160.153.133.88', 1611278281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383238313b),
('bd4deb2c562b28d72b2e8603e51c67a83838aa7c', '160.153.133.88', 1611286922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363932313b),
('bd6358168b2083389d446404367474de8da99f41', '160.153.133.88', 1611274981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343938313b),
('bdcf54df63799b324b66a80e1819cae4c1d3a389', '160.153.133.88', 1611284282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343238313b),
('bdff504989698ad29740597544a90365a1e7de44', '160.153.133.88', 1611293762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333736313b),
('be08ce993ea10c296ae2860edeb1764ff2838c05', '160.153.133.88', 1611318361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383336313b),
('beaf1ba59f27dbff72ef591aa607df4781e1bcbb', '85.106.117.209', 1611298360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383336303b7265645f75726c7c733a33343a22687474703a2f2f6f626a65706c617374696b2e776f726b2f726166662f61646d696e223b),
('beeee58e4811ce94f1a44bff3f9b3f9a3f21a916', '160.153.133.88', 1611341162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313136313b),
('bf2b8d3787288f38b20ac102fe80470c1cac21c2', '160.153.133.88', 1611275821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353832313b),
('bf39d437fb73be77aeb98f6754b9afadaaa4cd10', '160.153.133.88', 1611326161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363136313b),
('bf941499e789293325a8b7aa7ea18f889089697c', '160.153.133.88', 1611333157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333132313b),
('bfce862551912a92877efcff6dde54a761cd0c5f', '160.153.133.88', 1611319621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393632313b),
('bff525ac73f0c44c1ea328205900ae6a5ecfd240', '160.153.133.88', 1611337621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373632313b),
('c04e94c0dec970d6d4f9886f934f98c1a20183a9', '160.153.133.88', 1611325141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353134313b),
('c058b89a1013d74eb2680b436f485386d480e41d', '160.153.133.88', 1611291001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313030313b),
('c0ba413da3cb5fc804540188eb1a2c0c7d011441', '160.153.133.88', 1611346501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334363530313b),
('c15161d762728ef81b2ae63fefd2c0c8e09206c6', '160.153.133.88', 1611300061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303036313b),
('c152669700a034be5aded40e5dc9f89fe5aa3af1', '160.153.133.88', 1611347461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373436313b),
('c17b878b348fb47eae8298eaea8bca29d750b1e3', '160.153.133.88', 1611348661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383636313b),
('c1dfa47395466d736d1f0d241fadcab448e88db5', '160.153.133.88', 1611299641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393634313b),
('c279d0ac58c79e5ba1b11807ee5907ca1d2b19c6', '160.153.133.88', 1611319381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393338313b),
('c28e8668a8f52253bb4e44155f948e60b5e7e7d5', '160.153.133.88', 1611340142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303134313b),
('c2c5ebb6474425e824c5228df547b4913e826122', '160.153.133.88', 1611320282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303238313b),
('c3077a7e289d72b96044d2fe403b206941b4bd1f', '160.153.133.88', 1611333186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333138353b),
('c30d73561becba1e6d40da3ed058a01a072a43c0', '160.153.133.88', 1611329462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393436323b),
('c35774562784e5e8ba4ecaa31ea554dd7e4418ce', '160.153.133.88', 1611290701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303730313b),
('c3ac34484934d538889241a93f6070ecbc1a3397', '160.153.133.88', 1611297181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373138313b),
('c42b52a38129b4ec73ec6e0ce83b52f3efb6c4bf', '160.153.133.88', 1611310921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303932313b),
('c591d3413184a089f9f81a173daedc554ae1cf15', '160.153.133.88', 1611345421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353432313b),
('c5a1db13a8b18db68e0fc8df435e8ea17183716d', '160.153.133.88', 1611309362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393336313b),
('c5b915e217079aeded2e2a32050f72b12f0a2f1e', '160.153.133.88', 1611318002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383030323b),
('c5c929add70d24bde866ebf22ff70e1bd1aed515', '160.153.133.88', 1611308761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383736313b),
('c5c9e9ffd126496906bd377f859e764a1216bb18', '160.153.133.88', 1611313681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333638313b),
('c5ee701b0f7eb6b42f5ef12bfff705a64debccfe', '160.153.133.88', 1611304621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343632313b),
('c65d4bf3003684973fd06068a6ec478c5d9df459', '160.153.133.88', 1611298502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383530323b),
('c68b1868d11905e4b3de57dc0f4f4d5d082adcac', '160.153.133.88', 1611342241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323234313b),
('c6da7af93428816ab1a4c38f7df30556e657b4b3', '160.153.133.88', 1611301802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313830323b),
('c75016e87d784a73b9ca088cb777ad00af6b4f4d', '160.153.133.88', 1611333842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333834313b),
('c77e8f7e62a5d21412bebf6ae5520df1eb829f5e', '160.153.133.88', 1611309661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393636313b),
('c77f33c14416f513ba0f5a6d73a0cc149addc030', '160.153.133.88', 1611302462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323436323b),
('c7809f18fa42c890172c800c43bb05667d035dec', '160.153.133.88', 1611316081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363038313b),
('c824af7b4ebf20fd99c9c510ca332304afbf75c6', '160.153.133.88', 1611302702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323730323b),
('c83bdb4aa46ac3530350331dae1cb438539ebd14', '160.153.133.88', 1611337262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373236313b),
('c845b4a547ed62e626acfb2bd8455ddb946cfed3', '160.153.133.88', 1611296701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363730313b),
('c87f726f1de3c08b92db6dc8019632d8a4ae2c2e', '160.153.133.88', 1611324241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343234313b),
('c92ad5c99da6b513647b5329b2d0df4b30e9432d', '160.153.133.88', 1611307381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373338313b),
('c9768d58e36c4e9f238978ad16389f15b2d320d3', '160.153.133.88', 1611290881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303838313b),
('c97ab721bc6c0e56f8f919930893e9592d847cc9', '160.153.133.88', 1611340741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303734313b),
('ca0b8412f291b140077c6e58a00e85986cfcdbc8', '160.153.133.88', 1611308702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383730323b),
('ca4aac92c46495e239d2e27a70deb917e6c70a62', '160.153.133.88', 1611298621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383632313b),
('ca7be9758096980666d9c886f53d464f93284be2', '160.153.133.88', 1611284941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343934313b),
('ca8635cdd400cf2ccea941d2a088757f5e57643b', '160.153.133.88', 1611324721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343732313b),
('ca868866b1d919ccefa7737c9f743b561e1f5989', '160.153.133.88', 1611298681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383638313b),
('ca9bf76e999eb97658f67761aa93a89c9f3e97e8', '160.153.133.88', 1611332162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323136323b),
('caed3d6e4a93e3ffeb8a64f6dc1455909d3abcb0', '160.153.133.88', 1611311461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313436313b),
('cb43d44b4bb2ee0dc0ca9e8d6c7a082d9c734345', '160.153.133.88', 1611345722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353732313b),
('cb81668638779fcae9ebbb32478aa4ad874b12b2', '160.153.133.88', 1611337861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373836313b),
('cb98c3e46356f0fea6e8683797d399b1be95a374', '160.153.133.88', 1611340081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303038313b),
('cbdac100185e52ea41d453f36f648326cb9a33de', '160.153.133.88', 1611315722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353732323b),
('cc5639230da5ff3c94adb648a5b00b375b8520d7', '160.153.133.88', 1611284642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343634313b),
('cca4f0d7207a4e7ceb3e7a7d22996e6c51152b72', '160.153.133.88', 1611293341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333334313b),
('cd5e8a27e40db14126a1a3aee89ac4bac7995c9b', '160.153.133.88', 1611299821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393832313b),
('cda3554394659e38b626e725a08b44fa6cc34425', '160.153.133.88', 1611333541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333333534313b),
('cdc5fb214b4c6f6eb0f0da69c5a5eb00685e6766', '160.153.133.88', 1611308101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383130313b),
('cdd4423b1ab433fbe187b38352e8416d2608be52', '160.153.133.88', 1611278942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383934313b),
('cf31840e527e701948e5ec56a2a1d3121b5de21b', '160.153.133.88', 1611312121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323132313b),
('cf3d5211e812d8be18965f9055229234521f353f', '160.153.133.88', 1611322082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323038323b),
('cf6f511e73cf55a448ab12c3054c56b7cda0c785', '160.153.133.88', 1611332881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323838313b),
('cf74cf6d4d9f2abc6614c4610448d7a100ba851d', '160.153.133.88', 1611292142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323134313b),
('d029982f81fa78b8b1c4149e3f2fe9c88f3a8aef', '160.153.133.88', 1611280081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303038313b),
('d05d7c757665824965e6304feb7a865ade68685d', '160.153.133.88', 1611286201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363230313b),
('d06ae1528b06e18b54f87978a8f805254a09003d', '160.153.133.88', 1611320822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303832323b),
('d0a503a0ea858d9bd8211c101e2109daf3dd2c6b', '160.153.133.88', 1611279782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393738323b),
('d0dad2814ce9aef2d8e799c7499a3ae2f6ecb8fd', '160.153.133.88', 1611332582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323538313b),
('d1093d49a6ba2981db7d82b2730db22b70b1b64c', '160.153.133.88', 1611331741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313734313b),
('d13c218728f4af4931dfcc84b6210459093f4c44', '160.153.133.88', 1611331441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313434313b),
('d15edea58c3bf4b57ab80f3df1e4788baa78ee56', '160.153.133.88', 1611327962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373936313b),
('d1cd61fd11e3dc147dea5503caad1b453405b167', '160.153.133.88', 1611326941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363934313b),
('d20af800d4fb4d810117e1488bc0479ed616e621', '160.153.133.88', 1611338162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383136313b),
('d24b51a1eb8363a9279a89d9d45b94e6df8316c1', '160.153.133.88', 1611284402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343430323b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d3e5835832381a0f9dc7da012fa2f38245dfdd12', '160.153.133.88', 1611304094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343039343b),
('d40e96724a53a13a8a0bba63050163793ebb4bcb', '160.153.133.88', 1611320941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303934313b),
('d41253eb659496c74b00d91d2ed9e8f23d9e4b89', '160.153.133.88', 1611335762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353736313b),
('d41e68db332ffa43e39cfb2d5f03629e51b3191d', '160.153.133.88', 1611339001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393030313b),
('d4856f653c96d353ac760beee58d006c05559bb3', '160.153.133.88', 1611315062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353036323b),
('d487f17933a11e786a287b7625510b0d51340c79', '160.153.133.88', 1611307561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373536313b),
('d5002df7bc9e34b788c95cc87caae6e1a46f6491', '160.153.133.88', 1611289921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393932313b),
('d5798dd01d04b326e8fd2a83a841976f32eccf5f', '160.153.133.88', 1611344821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343832313b),
('d5c09a0f5facb6624e577bdee38cf6bd9a7931d7', '160.153.133.88', 1611283621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333632313b),
('d5c7085fa45e499f830782e22e8ece618994b338', '160.153.133.88', 1611280021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303032313b),
('d5fd028e27aa79497fb1d4a438332b9644d3919c', '160.153.133.88', 1611298381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383338313b),
('d60360190e208b6e7f90a978aec6b5352b0b9629', '160.153.133.88', 1611274561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237343536313b),
('d60e862689ebbe53d77672c9314ad44c99c3d84f', '160.153.133.88', 1611321121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313132313b),
('d614fca843f691e2eba2c565e6fb1ea526f584ef', '160.153.133.88', 1611283682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333638323b),
('d61ffcefd4405a89866a2170d164a9d3c2fef3a1', '160.153.133.88', 1611292921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323932313b),
('d68390eb0e00921ba42823576f5ff4f51efc8e6e', '160.153.133.88', 1611286622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363632323b),
('d68e6ccc697d0220bfc2db3f763d4cb6af8101e2', '160.153.133.88', 1611299701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393730313b),
('d6ba66e41eceee6eb3db3a65c8e8050eba994e8f', '160.153.133.88', 1611325262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353236323b),
('d6d6566c02863799ad957fa7722f78a58c72fab1', '160.153.133.88', 1611307201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373230313b),
('d6da22dd835b948873eaa371056c0804515a221d', '160.153.133.88', 1611280381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238303338313b),
('d70a3cd99333251bcda3137fa0e78d2acce34f73', '160.153.133.88', 1611337502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373530323b),
('d738f35e1dd6fa29a84705022117210cd216e839', '160.153.133.88', 1611284821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343832313b),
('d74de462fbd793e98ed68f91c1313ec7d61edd22', '160.153.133.88', 1611310141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303134313b),
('d7b7d30286742ca249ad9bce361af0d30bcea55d', '160.153.133.88', 1611310021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303032313b),
('d7e87aa5ad1021e57977e5bde6dd8782e5c77b22', '160.153.133.88', 1611296222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363232323b),
('d834b7656830e1707187e9c55fca033b5347fdc4', '160.153.133.88', 1611334322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343332313b),
('d869440e783d6092dd5a2d9969ada821905f415a', '160.153.133.88', 1611328862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383836313b),
('d89469b19f2f2974d6a1f95e729e1ea5bba87806', '160.153.133.88', 1611305461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353436313b),
('d8b6f3acb1c5de47a2bcfaeae090fbbcf3d183ad', '160.153.133.88', 1611328801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332383830313b),
('d8bd66a9c55382a8b4af7e5dd236ea21e3dff87d', '160.153.133.88', 1611330841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303834313b),
('d8e920ebcc22b37101f308f5ffb843d402c0d996', '160.153.133.88', 1611281821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313832313b),
('d900b210b12ddb1a6de617d36244cd02da449fad', '160.153.133.88', 1611293101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333130313b),
('d94bc6d3099aeb4b4cf1a26ab8575d8995b6c342', '160.153.133.88', 1611326581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363538313b),
('da1135e9fef354113b0fd2c56cffb09a95c18033', '160.153.133.88', 1611318061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383036313b),
('da15ff68b199cbf1fd35610170e46be0cfb56737', '85.106.117.209', 1611298360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239383336303b),
('da2c702a8834b84f1b439a99227dfada8532f1b7', '160.153.133.88', 1611320402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303430323b),
('da34c4adc8132dea274e7e187e4d296a6ef6d39d', '160.153.133.88', 1611279122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393132323b),
('da51eba9775acbe1670dea17327dbdec038e7cb6', '160.153.133.88', 1611342481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323438313b),
('da63fdc255a54cb05c358ea746b4e676e7201bcb', '160.153.133.88', 1611308821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383832313b),
('da644f2f3e1d6dd901f8f4194853afe5aed2de2c', '160.153.133.88', 1611282722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323732313b),
('da98a404e146d8e2fa701027698f1958c7bc8486', '160.153.133.88', 1611327302, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373330313b),
('dbd8f029b48c225e35208175a92e053fdc546afa', '160.153.133.88', 1611304681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343638313b),
('dc58bd99a735bd3afcc54574c30445c2093d437a', '160.153.133.88', 1611317341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373334313b),
('dc624ccfd2db79ea81c3b36792c509e9c9596e02', '160.153.133.88', 1611301021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313032313b),
('dc701a99626ef25626eebd5bd1b0a69f89e8143a', '160.153.133.88', 1611295982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353938323b),
('dcb3cd50f01d947aa3e14297dc915f10fce63353', '160.153.133.88', 1611343561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333536313b),
('dcd3f767ec9dc08816a7ab97f1ad1937548208bc', '160.153.133.88', 1611316862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363836323b),
('dd250e95f7abd677350da7caba3fdf41c0b0e291', '160.153.133.88', 1611314162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343136313b),
('dd27ba9d2894406875faac917414d0f40a32f539', '160.153.133.88', 1611300781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303738313b),
('dd813aa31463b428f58b27a0053030bb10ca5297', '160.153.133.88', 1611305072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330353034383b),
('dd9f4580c53b2922dd05a10a7408c04b982a2c54', '160.153.133.88', 1611301501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313530313b),
('ddc462d0aa8d817bf8831d50db4b047ebbe80732', '160.153.133.88', 1611316621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363632313b),
('de59b49dbb2de65a644be739e1179c6080f6e12f', '160.153.133.88', 1611277682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373638323b),
('de739d3d07140aa3bf906d9dd1ce6d8eece46c32', '160.153.133.88', 1611285121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353132313b),
('de754c10b35cf76ea2c565981f3f104838ed4e5d', '160.153.133.88', 1611290341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239303334313b),
('ded1b39a154638415f35156c9b0be9045f5222e8', '160.153.133.88', 1611330482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303438313b),
('def3d4ae885a12fe87dd0c98f1a0e71e1a28bd69', '160.153.133.88', 1611341341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313334313b),
('def8b6800801280019faf72d6bf124003109a33e', '160.153.133.88', 1611315841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331353834313b),
('df1441534d7abd5769db491a61b4b7250e51c851', '160.153.133.88', 1611292681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323638313b),
('df22a027bb85071e49ea697ecead4b156cb61cbf', '160.153.133.88', 1611311655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331313635353b),
('df4330405118f8b206cd3c0ff4f883d713010f46', '160.153.133.88', 1611313801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331333830313b),
('df8c4898c34c58bf3373abc5ab0db6c77bfedfb4', '160.153.133.88', 1611337801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373830313b),
('df901b7677ce6d8a59b94431d21f3213e39f6718', '160.153.133.88', 1611336661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363636313b),
('dfb00904ed5e5aa4d3c5664ed81cc8215bf3b7a2', '160.153.133.88', 1611287882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373838323b),
('dfccd5c247cd4caf121c1343020387a2ea912a60', '160.153.133.88', 1611276421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363432313b),
('dfd003dc2d2c01f1a88aa610d7f592a7f0f9c9b4', '160.153.133.88', 1611345661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353636313b),
('dfea73c65bfca5ceb922af82ec9be8872407486e', '160.153.133.88', 1611289082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393038313b),
('dfea8b8f4483a0a4ae288ce9c1711c99ca6a1c46', '160.153.133.88', 1611329101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393130313b),
('dff0148a0cfb6b43bd8a2bf804bfc0fbccc78e92', '160.153.133.88', 1611284221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343232313b),
('e03248881eded69f750988df8a50f4d2dc57f5c1', '160.153.133.88', 1611292562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323536313b),
('e0cf889cffa955dd6cf0103ac8c541c71c2672ca', '160.153.133.88', 1611325093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353039333b),
('e122455513cef424537717e94b316c1879c6d944', '160.153.133.88', 1611323042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333034313b),
('e14775912f4ab77ed6a3a033477438e4ca8efbc4', '160.153.133.88', 1611331261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313236313b),
('e2135c0c9eec8b8eff122eebc26390f20860c701', '160.153.133.88', 1611319861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393836313b),
('e25320f148ec6241edcc64dba473817bd46ee580', '160.153.133.88', 1611318242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383234323b),
('e2783c851ca7db8a4ebe1ced110ffff489a8ea97', '160.153.133.88', 1611342001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323030313b),
('e28e7dbc1bc09a49a963db1436c6526428afd1bc', '160.153.133.88', 1611330122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303132313b),
('e29e964520ca552f6d22fee4185473dc83be141b', '160.153.133.88', 1611330062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303036323b),
('e2a8a885e731c94db0cc2523521b01df46e985ec', '160.153.133.88', 1611324181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343138313b),
('e2b2aed51f4a6e306e85e776f74f4d0cee5f696a', '160.153.133.88', 1611334141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343134313b),
('e2b5127d3fd86b6c1f2dfd68a8da56ac2391391d', '160.153.133.88', 1611294661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343636313b),
('e2cb0fd94118bbe9046238d599f64e62bf695442', '160.153.133.88', 1611331381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313338313b),
('e3014b5adf07856a82e9ee79fb6f81e4071bbcf3', '38.107.114.10', 1611348516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383437383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('e36a30a722f41dd9e40e75240c9580eef870e523', '160.153.133.88', 1611342121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323132313b),
('e380c2a8daf28c6aa425c2311470329eca0928ca', '160.153.133.88', 1611299341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393334313b),
('e38abc2178c224f56598c2a73f907ac5906f6cbb', '160.153.133.88', 1611288181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238383138313b),
('e3c25bf987f970d0fe26f1c99e7e2e6cb01decac', '160.153.133.88', 1611302761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323736313b),
('e3da858ffc89c980c1acfe9706882fb6143abb61', '160.153.133.88', 1611347522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373532313b),
('e3f515c406b69473f0058900e49bf317238ecea5', '160.153.133.88', 1611286982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363938323b),
('e472b8819ec819cfeaaf1ae0ff8c58be46c152fc', '160.153.133.88', 1611334285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343238353b),
('e4b6a964532b1e29e7117122e70808322037e348', '160.153.133.88', 1611299881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393838313b),
('e4c9d015c229970e65318cabe5a4446c121e470d', '160.153.133.88', 1611318601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383630313b),
('e4db00821639dadcc8b8edfe014257370d1b1ad7', '160.153.133.88', 1611287521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373532313b),
('e4db888194266d367555be934867953931d9e1cf', '160.153.133.88', 1611278161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383136313b),
('e4ede5801c845810d9d592fb9711a32745d03d95', '160.153.133.88', 1611276661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363636313b),
('e50bf6d960c23eb0ded2d214bc69c15643244fa0', '160.153.133.88', 1611312061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323036313b),
('e51c47c4bc813160be1f77eee42a7f98d972c96b', '160.153.133.88', 1611287221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373232313b),
('e55be7285b25d0a13c1a0bc76d12e27f4e5eb72d', '160.153.133.88', 1611317641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373634313b),
('e55e576fb188f6db7917aff93406e0f9e6fb7afd', '160.153.133.88', 1611299521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239393532313b),
('e56cc7ff1e920bc8b0aecf46fd8393a9fc767219', '160.153.133.88', 1611330002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303030323b),
('e5800036a7bcd740bbedb7f6e0fd4c3eea1bf60e', '160.153.133.88', 1611338881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383838313b),
('e59a028dbfe1ed94cd6346638a2fa04893d22e96', '160.153.133.88', 1611284341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343334313b),
('e5bb4a08cfcd79143a64a938f7bf9a4d3c99b464', '160.153.133.88', 1611337141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373134313b),
('e5c6d79801db05110ab0cebeafc3f0fbd2e6615f', '160.153.133.88', 1611318542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383534313b),
('e623f25bdb51ac040246e2fd4bee3181b515aff8', '160.153.133.88', 1611342541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323534313b),
('e63879c4a3a354318620c9a9cd5fd60953bdb78b', '160.153.133.88', 1611348602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383630323b),
('e6764c63f442a4cc57f3731d5a7d17d2eac05163', '160.153.133.88', 1611334442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343434313b),
('e6d9032411b3302f60616e8fd76f48e62b6700bf', '160.153.133.88', 1611338221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383232313b),
('e6f64ad5a15c5311e19fe265b309b646d991ec98', '160.153.133.88', 1611314941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343934313b),
('e747015a52fa6fca698abf4f5c0b5ca1bd4e828a', '160.153.133.88', 1611322921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323932313b),
('e7b10d40cfd5d186718d7fec87ef7a03c0418561', '160.153.133.88', 1611345124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334353038363b),
('e7cfb439facfb2b7a540f34e390a197717c34f7c', '160.153.133.88', 1611297781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373738313b),
('e872e5f1db1f8504a65c6aaeebbb66e632e52eec', '160.153.133.88', 1611287461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238373436313b),
('e8e6b286bc26535cfc1acae75d8c612221fcb20f', '160.153.133.88', 1611296761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363736313b),
('e90d874d868eb05edc3eb8d230106914501fddc8', '160.153.133.88', 1611309841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393834313b),
('e9830a068b64e3bc015316d3e5aea0af69b72170', '160.153.133.88', 1611316921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331363932313b),
('e9a52bf2e68f5beb052a7f1803787c6fcbcc83e9', '160.153.133.88', 1611310802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303830323b),
('e9fafc6409397e9029bda71b80add88b7439b778', '160.153.133.88', 1611306241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363234313b),
('ea7a9779b4c235ec96fefcafff8b0ae61fa00fa1', '160.153.133.88', 1611342722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323732313b),
('eab187990939ae119011bf87d9232e21e2d94d85', '160.153.133.88', 1611334022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333343032323b),
('eab2b04d349520e2997a3baf3908f1d461a1a539', '160.153.133.88', 1611331921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313932313b),
('eab715ba09e8bd9247cd258450ba4098d1837e52', '160.153.133.88', 1611275161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237353136313b),
('eac4096256bc1f97d9dd4c9c45fffac8fe652fba', '160.153.133.88', 1611277802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373830313b),
('eb190fe00e421bae8e930896ac7038f387c34ab0', '160.153.133.88', 1611336841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363834313b),
('eb3c431c7d7aa4f20dd22e3d9167452a7cc715b5', '160.153.133.88', 1611321001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313030313b),
('eb81442d948b36b525081a5013adcf536a27335b', '160.153.133.88', 1611292321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323332313b),
('ebb9cf1079db6d35cbec48025eb799dabd0ac321', '160.153.133.88', 1611317822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331373832323b),
('ebbafe2520ad0c2f48984c7da021f53b56e7aa78', '160.153.133.88', 1611300241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330303234313b),
('ebc56be717d2de2e21dd556a817c5e3d6ee7c093', '160.153.133.88', 1611319981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331393938313b),
('ec7649df1908a60f7e4ba0ffc7d8e1ac2f1362f7', '160.153.133.88', 1611322861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323836313b),
('ed29d3e5158335df299034490b960845a6b498e2', '160.153.133.88', 1611314401, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343430313b),
('ed66a9c04cfd3a09c057107268981c85898cebf4', '160.153.133.88', 1611336541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363534313b),
('ed6f23448db15d5284ef2c76462251e386d48d34', '160.153.133.88', 1611286261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363236313b),
('edeba023728271b504784fd3a89da5a4e4b1c608', '160.153.133.88', 1611304141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343134313b),
('edec3f25223dc7cef77d9e3aab8bb59f006656b4', '160.153.133.88', 1611289141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393134313b),
('eded2d87b69061c04b4a389d69f699ebc44a8b28', '160.153.133.88', 1611304861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343836313b),
('eed804e71c4f0aa1b86454bd43db1624ee915aa0', '160.153.133.88', 1611336782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363738313b),
('eedf022ae19cce8d978c659aeff036a740170788', '160.153.133.88', 1611302162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323136323b),
('eef18951d51a325a7e8f2afbd37fd5bd914828f6', '160.153.133.88', 1611277201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373230313b),
('ef3906b1512de8ad61c94b6e62daf9357b0341fb', '160.153.133.88', 1611335221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353232313b),
('ef3a06cc5214e67f12d76f72cafd0b46ec5a622a', '160.153.133.88', 1611321242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332313234323b),
('ef7fda0007fddde83d4279402509e60abf49765f', '160.153.133.88', 1611307863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330373836313b),
('ef83398ea23cddbe5fefb22a9a77b545237f48e1', '160.153.133.88', 1611289322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393332323b),
('ef9aed28ee19f041e8a8f749380fd4a0aa48e83c', '160.153.133.88', 1611324781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343738313b),
('ef9b7c99d3c345a5ec0851d11b82bcd7fd713c6e', '160.153.133.88', 1611286561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238363536313b),
('eff10ed562ef1615a5366e31a55b92f2a6b017b6', '160.153.133.88', 1611302041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323034313b),
('f00bd90b18340fa140107ad7e35e65991bfbf33b', '160.153.133.88', 1611309781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330393738313b),
('f080ec51964325c8a27c793e249a7b5db59938b5', '160.153.133.88', 1611320762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332303736323b),
('f0fe23595fc6cdf5550b466a3530665169ef1d64', '160.153.133.88', 1611324481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343438313b),
('f10e84e36ba67c2026080e3e1a10d63926dd484c', '160.153.133.88', 1611341522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334313532313b),
('f16710e52e0c404004da9dc505692f8fa3562faf', '160.153.133.88', 1611344402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334343430323b),
('f18f64c2d43a0cac9d879851bc396ab6fe81b2a7', '160.153.133.88', 1611343142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333134323b),
('f19b4634b96470aaa1851241aa2fa63b06ecd16a', '160.153.133.88', 1611337981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373938313b),
('f2455fde98b9c8c95b473b67c113826ca8f42bf0', '160.153.133.88', 1611323642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333634323b),
('f25783ae7de145b1dab79b41a2541a31ccfb1c69', '160.153.133.88', 1611289381, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238393338313b),
('f26084670c99bc92867a0404831506f379c34757', '160.153.133.88', 1611335882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353838323b),
('f2b13c16e30be047c63b8ec75015550d50481739', '160.153.133.88', 1611278821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383832313b),
('f2cae8b617c0937d85de4331428d1f4bf255deb4', '160.153.133.88', 1611310082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331303038323b),
('f316dd71723238233b9c2b301761a1cc64a31de7', '160.153.133.88', 1611324061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343036313b),
('f32038bbdd58d183fb4cd7ca783b5900ee154ba5', '160.153.133.88', 1611342061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323036313b),
('f34e8b8791b3d939fd91a491469a2001736485de', '160.153.133.88', 1611318961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331383936313b),
('f379b9fa214d41e858054f4f07856ee96806eed1', '160.153.133.88', 1611324541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332343534313b),
('f401742321799f82a4e8e16a6d9134be0950b018', '160.153.133.88', 1611340682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303638323b),
('f4787647a2f97afce3f896f18305a38d55587dc6', '160.153.133.88', 1611340621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303632313b),
('f48bd0204e9cd736170c02bc8afdaa7870136690', '160.153.133.88', 1611327181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373138313b),
('f4bf98f6dc632ada39db292e9c30528bbc809db9', '160.153.133.88', 1611342961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323936313b),
('f4d046315837bc3a136cb45b8efef7e6f6e8adf6', '160.153.133.88', 1611308581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330383538313b),
('f4f12e786abefebe1e02823dc5512fd73aa38387', '160.153.133.88', 1611330661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303636313b),
('f4f641698d6cf0f97a8e53f1113ee434360b580a', '160.153.133.88', 1611282181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323138313b),
('f59e9bfd3c360be0d572e61bbcb2d47ec3336802', '160.153.133.88', 1611295621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239353632313b),
('f5c05107b131e5c12f643b2e6835fe8e0928cb11', '160.153.133.88', 1611297241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239373234313b),
('f5df9ac26520af43e46776b8801164135622837f', '160.153.133.88', 1611337322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333373332313b),
('f676faac6c4d17a3cd998d4299502bb99f9beec5', '160.153.133.88', 1611322801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332323830313b),
('f6a69aa82af292336228cf1429568acc228f313f', '160.153.133.88', 1611314462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343436313b),
('f6be6d62f68d95cbf369cb9f40a27c6849ee7826', '160.153.133.88', 1611326101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332363130313b),
('f6cdf2fe1d51f9382b3497ccacb0f7516ac658bc', '160.153.133.88', 1611302102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330323130323b),
('f760c00defbdb1a84fd1159a9663ca0807a3f03a', '160.153.133.88', 1611301741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330313734313b),
('f7988bb95551f54319469b4f1fbe0db85c2aa94b', '160.153.133.88', 1611331681, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313638313b),
('f7a25ebf08d509a7441cd8841a87667ecfa00390', '160.153.133.88', 1611293701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239333730313b),
('f7a43a200a69a7d38433051ffe047cd0d9996989', '160.153.133.88', 1611339901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333393930313b),
('f7ec56b47feaceabf1e98daf18f06c5dc21bf351', '160.153.133.88', 1611281521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313532313b),
('f83a1094b4b77e6a946b580e73ab839a7fec19d6', '160.153.133.88', 1611283501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238333530313b),
('f88bb4041f22b7994e01354a1d2a548b3e01d73c', '160.153.133.88', 1611276841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237363834313b),
('f8bb846d62060bc0c01026ae6c7421823ad11eaf', '160.153.133.88', 1611312494, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323438313b),
('f903e0d45d0d244860cf00fa380360d429c7401e', '160.153.133.88', 1611330301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333303330313b),
('f91d7cee2fb50ef5746cb519768c122072a57c56', '160.153.133.88', 1611312962, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331323936323b),
('f94f74b9e48dbaf240a474ad78fe66bd9da3a0f4', '160.153.133.88', 1611327001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332373030313b),
('f978cd79988ec81b5333ae1394e4e7da8d67051b', '160.153.133.88', 1611282002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238323030323b),
('f99ccca4ae5279d711eb76823f0e4a5ae0e1a522', '160.153.133.88', 1611342781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323738313b),
('f9c3aa2cbb85a2872ad1f3ad65104ab2d48e03ef', '160.153.133.88', 1611285961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353936313b),
('f9d8e95c7244f8233f9b0243008e96cb6e245035', '160.153.133.88', 1611291542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313534313b),
('fa0b36d522304cdf8775e098779281fa393e49f6', '160.153.133.88', 1611348781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334383738313b),
('fa19081e89f16681029279b43f61a281c6f15431', '160.153.133.88', 1611285421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238353432313b),
('fa3197c7128c7bd673416556a74ca26ad85fac67', '160.153.133.88', 1611336721, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333363732313b),
('fa4c484129da1e742a36c0a5323de652ad6dae2f', '160.153.133.88', 1611335521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333353532313b),
('fa8cf8cf3a7b6b9b954f092eb05c6a37bfc7694f', '160.153.133.88', 1611329161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393136313b),
('fafb17b477ea7e444c6a33839157132e22042b2f', '160.153.133.88', 1611329641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332393634313b),
('fb32759445d2366939de4efebf1c2a8ae0a4a6a2', '160.153.133.88', 1611325037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332353033373b),
('fb42fe377e63c90b0c0c0ad4fc7d06ea9448b109', '160.153.133.88', 1611294122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343132323b),
('fbddc9582b9fda01c3dd3efb9a8bb7b3ddb16194', '160.153.133.88', 1611314641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313331343634313b),
('fbf9268a46a8f7775eb786ff736d33d6798ab85e', '160.153.133.88', 1611296462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239363436323b),
('fc1db6f695beb0224c835a1e5eb0a075c399f4a5', '160.153.133.88', 1611294961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239343936313b),
('fc5db4249267fb9400e658dc6c6c8f63a5ba6938', '160.153.133.88', 1611347882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334373838313b),
('fced3e5ab9785e3da3c8008d5d860c2b25d9226c', '160.153.133.88', 1611323485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313332333438353b),
('fcf9753e9da4c283e3ad917a3254d0281ab0e35c', '160.153.133.88', 1611306841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330363834313b),
('fd7878561d78f29094290d06bc5398ea89975c2f', '160.153.133.88', 1611338941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333383934313b),
('fdaa770cdf99429102901a6298183762d8006a52', '160.153.133.88', 1611331801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333313830313b),
('fdcca3a97b3cf4e59e210c6e8b59bf519efe6344', '160.153.133.88', 1611279901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237393930313b),
('fdddb8ac9ccdc5025f04e0f0e80c87f44e4f0be4', '160.153.133.88', 1611281041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238313034313b),
('fe3078e729a365bbffa7c28eee6daebcf8be3a58', '160.153.133.88', 1611277981, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237373938313b),
('fe3c27d10d8356731bc4e1abf4f1c449bc654ae9', '160.153.133.88', 1611291841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239313834313b),
('fe8d875818aa5be427dc3d0bd1a0bab7ff9ace76', '160.153.133.88', 1611292621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313239323632313b),
('fed7b42110daee21aba9d0c94ca5a2bbed691fe9', '160.153.133.88', 1611340861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334303836313b),
('ff393357caeb2f347a601e0e537517ca9e00f65a', '160.153.133.88', 1611342902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334323930323b),
('ff6df275d2b53cd912114c1547a8183f6466f356', '160.153.133.88', 1611343395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313334333339353b),
('ff8cb9592cc7130a6d668b45d4aa6cf6a9ea3ca2', '160.153.133.88', 1611332770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313333323736323b),
('ffa90003a5ad7db04343fd50c57fa73f7ed124b7', '160.153.133.88', 1611278041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313237383034313b),
('ffbb77b8a15990647f515a244335576eb97f3777', '160.153.133.88', 1611284701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313238343730313b),
('ffe7a6e0d308a76f55cd6669f004380c474e86dd', '160.153.133.88', 1611304501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631313330343530313b);

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

CREATE TABLE `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

CREATE TABLE `tblspam_filters` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `two_factor_auth_enabled` tinyint(1) DEFAULT '0',
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text,
  `stock_warning_email_permission` tinyint(1) NOT NULL DEFAULT '0',
  `so_email_permission` tinyint(1) DEFAULT '0',
  `purchase_email_permission` tinyint(1) DEFAULT '0',
  `wo_email_permission` tinyint(1) DEFAULT '0',
  `quotation_email_permission` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `stock_warning_email_permission`, `so_email_permission`, `purchase_email_permission`, `wo_email_permission`, `quotation_email_permission`) VALUES
(1, 'admin@user.com', 'admin', 'user', NULL, NULL, NULL, NULL, '$2a$08$tgOvvynmG5apvIX3EvIDV.L3omAGArFmYbpEElIATuar3Sv7lJrM2', '2020-07-09 13:32:21', NULL, '38.107.114.10', '2021-01-22 23:48:26', '2021-01-22 23:48:36', NULL, NULL, NULL, 1, NULL, 1, 'english', NULL, NULL, 0, 0.00, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0),
(10, 'johnmic222@yandex.com', 'john', 'mic', '', '', '', '', '$2a$08$SvPaq5bN5nsvC71S9dPRy.awlmH7u8krjqQp7eykdxx6FIuIqPdEq', '2020-09-02 18:39:20', NULL, '127.0.0.1', '2020-09-29 05:08:44', '2020-09-29 05:09:34', NULL, NULL, NULL, 0, 1, 1, '', '', 'john-mic', 0, 0.00, 0, NULL, NULL, '', 0, 0, 0, 0, 0),
(12, 'cutewolf45@yandex.com', 'cutew', 'wolf', '', '', '', '', '$2a$08$5QLGpYOJhiktaABxD7Q42.nUB6sEG63PzXGa0WTBlYH8udXh0B3Bu', '2020-09-02 18:47:58', NULL, '127.0.0.1', '2020-10-05 04:20:23', '2020-10-05 05:08:24', NULL, NULL, NULL, 0, 1, 1, '', '', 'cutew-wolf', 0, 0.00, 0, NULL, NULL, '', 0, 0, 0, 0, 0),
(16, 'test@test.com', 'test', 'test', '', '', '', '', '$2a$08$Y1P2kqTRCfOcsNTk8ASRO.Rjmjn9iKiF0fOxyA47EIll7wMb.Hfqu', '2020-09-05 16:17:33', NULL, '127.0.0.1', '2020-09-21 05:07:08', '2020-09-21 05:07:22', NULL, NULL, NULL, 0, 1, 1, '', '', 'test-test', 0, 0.00, 0, NULL, NULL, '', 0, 0, 0, 0, 0),
(17, 'mehmet@kiremet.com', 'mEHMET', 'SA', '', '', '', '', '$2a$08$ne2Uy/kfSMhwXaXH5YUVHe.dEOkLZ2WTLS4iToCFpSZQdVHpSvf/m', '2020-10-05 17:13:10', NULL, '88.225.255.160', '2020-11-25 09:59:25', '2020-11-25 09:59:46', NULL, NULL, NULL, 0, 1, 1, '', '', 'mehmet-sa', 0, 0.00, 0, NULL, NULL, '', 0, 0, 0, 0, 0),
(18, 'birkan_s@yahoo.com', 'Birkan', 'Sahi', '', '', '05336825192', '', '$2a$08$L749qr6X8q1VMTMy9o/xTutMTuSuFB7qKllD7E.zFA30LhlascYei', '2020-10-06 07:22:33', NULL, '85.106.115.176', '2020-10-06 14:25:34', '2020-10-06 14:25:44', NULL, NULL, NULL, 0, 1, 1, '', '', 'birkan-sahi', 0, 0.00, 0, NULL, NULL, '', 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

CREATE TABLE `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

CREATE TABLE `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff_permissions`
--

INSERT INTO `tblstaff_permissions` (`staff_id`, `feature`, `capability`) VALUES
(16, 'dashboard', 'view'),
(16, 'warehouse', 'stock_list'),
(16, 'warehouse', 'transfers'),
(16, 'warehouse', 'allocated_items'),
(16, 'warehouse', 'packing_list'),
(16, 'warehouse', 'packing_group'),
(16, 'warehouse', 'purchase_receiving_bay'),
(16, 'warehouse', 'purchase_request'),
(16, 'warehouse', 'barcode_list'),
(16, 'purchase', 'purchase_orders'),
(16, 'purchase', 'pending_purchase_request'),
(16, 'finance', 'currency'),
(16, 'finance', 'ready_to_invoice'),
(16, 'products', 'product_list'),
(16, 'products', 'product_recipe'),
(16, 'manufacturing_settings', 'list_of_machinery'),
(16, 'manufacturing_settings', 'list_of_moulds'),
(16, 'manufacturing_settings', 'moulds_of_suitability'),
(16, 'manufacturing_settings', 'energy_prices'),
(16, 'manufacturing_settings', 'work_hours_capacity'),
(16, 'manufacturing_settings', 'installation'),
(16, 'manufacturing_settings', 'op_cost_per_sec'),
(16, 'sales', 'quotation/offer'),
(16, 'sales', 'quotation_approval'),
(16, 'sales', 'sale_order'),
(16, 'planning', 'pending_sale_order'),
(16, 'planning', 'work_orders'),
(16, 'production', 'production_work_order'),
(16, 'production', 'production_machine_list'),
(16, 'installation', 'installation_work_order'),
(16, 'bulk_pdf_exporter', 'view'),
(16, 'contracts', 'view_own'),
(16, 'contracts', 'create'),
(16, 'contracts', 'edit'),
(16, 'contracts', 'delete'),
(16, 'customers', 'view'),
(16, 'customers', 'create'),
(16, 'customers', 'edit'),
(16, 'customers', 'delete'),
(16, 'email_templates', 'view'),
(16, 'email_templates', 'edit'),
(16, 'estimates', 'view_own'),
(16, 'estimates', 'create'),
(16, 'estimates', 'edit'),
(16, 'estimates', 'delete'),
(16, 'invoices', 'view_own'),
(16, 'invoices', 'create'),
(16, 'invoices', 'edit'),
(16, 'invoices', 'delete'),
(16, 'proposals', 'view_own'),
(16, 'proposals', 'create'),
(16, 'proposals', 'edit'),
(16, 'proposals', 'delete'),
(16, 'roles', 'view'),
(16, 'roles', 'create'),
(10, 'warehouse', 'stock_list'),
(10, 'warehouse', 'stock_price_view'),
(12, 'dashboard', 'view'),
(12, 'warehouse', 'stock_list'),
(12, 'warehouse', 'stock_price_view'),
(12, 'warehouse', 'transfers'),
(12, 'warehouse', 'allocated_items'),
(12, 'warehouse', 'packing_list'),
(12, 'warehouse', 'packing_group'),
(12, 'warehouse', 'purchase_receiving_bay'),
(12, 'warehouse', 'purchase_request'),
(12, 'warehouse', 'barcode_list'),
(12, 'purchase', 'purchase_orders'),
(12, 'purchase', 'pending_purchase_request'),
(12, 'finance', 'currency'),
(12, 'finance', 'ready_to_invoice'),
(12, 'products', 'product_list'),
(12, 'products', 'product_recipe'),
(12, 'manufacturing_settings', 'list_of_machinery'),
(12, 'manufacturing_settings', 'list_of_moulds'),
(12, 'manufacturing_settings', 'moulds_of_suitability'),
(12, 'manufacturing_settings', 'energy_prices'),
(12, 'manufacturing_settings', 'work_hours_capacity'),
(12, 'manufacturing_settings', 'installation'),
(12, 'manufacturing_settings', 'op_cost_per_sec'),
(12, 'sales', 'quotation/offer'),
(12, 'sales', 'quotation_approval'),
(12, 'sales', 'sale_order'),
(12, 'planning', 'pending_sale_order'),
(12, 'planning', 'work_orders'),
(12, 'production', 'production_work_order'),
(12, 'production', 'production_machine_list'),
(12, 'installation', 'installation_work_order'),
(12, 'bulk_pdf_exporter', 'view'),
(12, 'contracts', 'view_own'),
(12, 'contracts', 'create'),
(12, 'contracts', 'edit'),
(12, 'contracts', 'delete'),
(12, 'customers', 'view'),
(12, 'customers', 'create'),
(12, 'customers', 'edit'),
(12, 'customers', 'delete'),
(12, 'email_templates', 'view'),
(12, 'email_templates', 'edit'),
(12, 'estimates', 'view'),
(12, 'estimates', 'create'),
(12, 'estimates', 'edit'),
(12, 'estimates', 'delete'),
(12, 'invoices', 'view'),
(12, 'invoices', 'create'),
(12, 'invoices', 'edit'),
(12, 'invoices', 'delete'),
(12, 'proposals', 'view'),
(12, 'proposals', 'create'),
(12, 'proposals', 'edit'),
(12, 'proposals', 'delete'),
(12, 'reports', 'view'),
(12, 'roles', 'view'),
(12, 'roles', 'create'),
(12, 'roles', 'edit'),
(12, 'roles', 'delete'),
(12, 'settings', 'view'),
(12, 'settings', 'edit'),
(12, 'staff', 'view'),
(12, 'staff', 'create'),
(12, 'staff', 'edit'),
(12, 'staff', 'delete'),
(18, 'warehouse', 'stock_list'),
(18, 'warehouse', 'stock_price_view'),
(18, 'products', 'product_list'),
(18, 'sales', 'quotation/offer'),
(18, 'sales', 'quotation_approval'),
(18, 'sales', 'sale_order'),
(18, 'estimates', 'view'),
(18, 'estimates', 'create'),
(18, 'estimates', 'edit'),
(18, 'proposals', 'view'),
(18, 'proposals', 'create'),
(18, 'proposals', 'edit'),
(17, 'dashboard', 'view'),
(17, 'warehouse', 'stock_list'),
(17, 'warehouse', 'stock_price_view'),
(17, 'warehouse', 'transfers'),
(17, 'warehouse', 'allocated_items'),
(17, 'warehouse', 'packing_list'),
(17, 'warehouse', 'packing_group'),
(17, 'warehouse', 'purchase_receiving_bay'),
(17, 'warehouse', 'purchase_request'),
(17, 'warehouse', 'barcode_list'),
(17, 'warehouse', 'dispatching_bay'),
(17, 'purchase', 'purchase_orders'),
(17, 'purchase', 'pending_purchase_request'),
(17, 'finance', 'currency'),
(17, 'finance', 'ready_to_invoice'),
(17, 'products', 'product_list'),
(17, 'products', 'product_recipe'),
(17, 'sales', 'quotation/offer'),
(17, 'sales', 'sale_order'),
(17, 'customers', 'view'),
(17, 'estimates', 'view_own'),
(17, 'estimates', 'create'),
(17, 'invoices', 'view_own'),
(17, 'proposals', 'view_own'),
(17, 'proposals', 'create'),
(17, 'proposals', 'edit'),
(17, 'proposals', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_categories`
--

CREATE TABLE `tblstock_categories` (
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstock_categories`
--

INSERT INTO `tblstock_categories` (`cate_id`, `name`, `order_no`, `created_at`) VALUES
(6, 'Semi-Finished Item', '2', NULL),
(8, 'RAW Item', '1', NULL),
(9, 'Finished Item', '3', NULL),
(10, '5555', '4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_level_warning`
--

CREATE TABLE `tblstock_level_warning` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstock_level_warning`
--

INSERT INTO `tblstock_level_warning` (`id`, `stock_id`, `warehouse_id`, `limit`) VALUES
(5, 111, 15, 1250),
(6, 111, 16, 500),
(10, 128, 16, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tblstock_lists`
--

CREATE TABLE `tblstock_lists` (
  `id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_photo` varchar(191) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock_level` double NOT NULL DEFAULT '0',
  `unit` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `product_list_price` decimal(15,2) DEFAULT '0.00',
  `original_price` decimal(15,2) DEFAULT '0.00',
  `currency_id` int(20) NOT NULL,
  `created_by` int(20) NOT NULL,
  `updated_by` int(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pack_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstock_lists`
--

INSERT INTO `tblstock_lists` (`id`, `product_code`, `product_photo`, `product_name`, `stock_level`, `unit`, `category`, `price`, `product_list_price`, `original_price`, `currency_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `pack_id`) VALUES
(111, 'A-70', '', 'A-70', 2133, 12, 1, 3.20, 0.00, 3.63, 1, 1, 1, '2020-10-16 08:53:04', '2020-10-28 04:14:56', NULL),
(112, 'PD-111', '', 'PS', -554.7, 12, 1, 1.30, 0.00, 1.47, 1, 1, 1, '2020-10-16 08:54:22', '2020-11-07 09:15:17', NULL),
(116, '500X400X600', '', '500X400X600', -56, 12, 1, 20.00, 0.00, 22.68, 1, 1, 1, '2020-10-16 09:09:39', '2020-11-17 11:22:47', 150),
(117, 'bbb', '', '200X300X400', 0, 11, 1, 0.00, 0.00, 0.00, 2, 1, 0, '2020-10-22 05:02:29', '0000-00-00 00:00:00', 151),
(122, 'I-20', '', 'I-20', 0, 12, 1, 1.40, 0.00, 1.59, 1, 1, 0, '2020-10-25 12:02:16', '0000-00-00 00:00:00', NULL),
(125, 'MG-05', '', 'BREAD BIN WITH TRAY', 1100, 11, 3, 259.71, 0.00, 294.51, 3, 1, 0, '2020-10-26 07:25:38', '0000-00-00 00:00:00', NULL),
(126, 'MG-05-001', '', 'BODY', 5107, 11, 2, 82.72, 0.00, 93.80, 3, 1, 0, '2020-10-26 07:26:50', '0000-00-00 00:00:00', NULL),
(127, 'MG-05-002', '', 'TRAY', 2670, 11, 2, 31.99, 0.00, 36.28, 3, 1, 0, '2020-10-26 07:27:19', '0000-00-00 00:00:00', NULL),
(128, 'MG-05-003', '', 'AYAK', 4120, 11, 1, 0.25, 0.00, 0.28, 3, 1, 1, '2020-10-26 07:28:04', '2020-11-19 04:41:33', NULL),
(129, 'PD-BOYA', '', 'MASTER BATCH', -6.5, 12, 1, 25.00, 0.00, 28.35, 3, 1, 0, '2020-10-26 07:34:08', '0000-00-00 00:00:00', NULL),
(130, 'PD-012', '', 'FILE/KOPCA', -570, 11, 1, 1.00, 0.00, 1.13, 1, 1, 1, '2020-10-26 07:50:26', '2020-10-28 07:23:22', NULL),
(131, 'PD-013', '', 'MG-05 BOX', -570, 11, 1, 1.50, 0.00, 1.70, 3, 1, 0, '2020-10-26 07:52:12', '0000-00-00 00:00:00', NULL),
(132, 'PD-022', '', 'INSERT', -550, 11, 1, 0.10, 0.00, 0.11, 1, 1, 1, '2020-10-26 07:53:04', '2020-10-28 07:21:46', NULL),
(133, 'OW-222', '', 'Testing Product', 656, 11, 3, 1353.38, 0.00, 1534.73, 1, 1, 0, '2020-11-17 11:21:50', '0000-00-00 00:00:00', NULL),
(134, 'BRD-001', '', 'Glass', 725, 11, 3, 31.97, 0.00, 36.25, 3, 1, 1, '2020-12-02 11:27:12', '2020-12-06 11:56:16', NULL),
(135, 'BRD-002', '', 'Tray and Glass', 335, 11, 3, 164.87, 0.00, 186.96, 3, 1, 0, '2020-12-03 08:10:21', '0000-00-00 00:00:00', NULL),
(136, 'TESTx', '', 'testx', 0, 11, 1, 2.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:44:03', '0000-00-00 00:00:00', NULL),
(137, 'TESTx', '', 'testx', 0, 11, 1, 2.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:44:04', '0000-00-00 00:00:00', NULL),
(138, 'TESTx', '', 'testx', 0, 11, 1, 2.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:44:04', '0000-00-00 00:00:00', NULL),
(139, 'TESTx', '', 'testx', 0, 11, 1, 2.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:44:04', '0000-00-00 00:00:00', NULL),
(140, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:10', '0000-00-00 00:00:00', 152),
(141, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:11', '0000-00-00 00:00:00', 153),
(142, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:17', '0000-00-00 00:00:00', 154),
(143, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:17', '0000-00-00 00:00:00', 155),
(144, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:17', '0000-00-00 00:00:00', 156),
(145, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:17', '0000-00-00 00:00:00', 157),
(146, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:18', '0000-00-00 00:00:00', 158),
(147, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:19', '0000-00-00 00:00:00', 159),
(148, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:19', '0000-00-00 00:00:00', 160),
(149, '9999', '', '50X50X50', 0, 11, 1, 5.00, 0.00, 0.00, 3, 1, 0, '2021-01-20 11:46:19', '0000-00-00 00:00:00', 161);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_in_item` tinyint(1) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

CREATE TABLE `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltaggables`
--

INSERT INTO `tbltaggables` (`rel_id`, `rel_type`, `tag_id`, `tag_order`) VALUES
(5, 'invoice', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltags`
--

INSERT INTO `tbltags` (`id`, `name`) VALUES
(1, 'sdfsf');

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

CREATE TABLE `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

CREATE TABLE `tbltask_assigned` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

CREATE TABLE `tbltask_checklist_items` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

CREATE TABLE `tbltask_comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

CREATE TABLE `tbltask_followers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

CREATE TABLE `tbltickets_pipe_log` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

CREATE TABLE `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

CREATE TABLE `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

CREATE TABLE `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#84c529', 2),
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

CREATE TABLE `tblticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

CREATE TABLE `tblticket_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

CREATE TABLE `tbltodos` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

CREATE TABLE `tbltracked_mails` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltracked_mails`
--

INSERT INTO `tbltracked_mails` (`id`, `uid`, `rel_id`, `rel_type`, `date`, `email`, `opened`, `date_opened`, `subject`) VALUES
(1, 'e87398f6682d65657bb009858a98053a', 109, 'proposal', '2020-10-31 08:41:48', 'cutewolf4575@gmail.com', 1, '2020-10-31 08:42:52', 'Proposal With Number QOT-000109 Created'),
(2, '7e32a6edbc93e21df6e7af898bf10be5', 111, 'proposal', '2020-10-31 09:03:02', 'kiremet@gmail.com', 1, '2020-10-31 11:45:37', 'Proposal With Number QOT-000111 Created'),
(3, 'd214f4728e59cc3481302e202f394a2a', 112, 'proposal', '2020-10-31 16:09:58', 'mehmet.yucel@gorsel.net', 0, NULL, 'Proposal With Number QOT-000112 Created');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransfer_lists`
--

CREATE TABLE `tbltransfer_lists` (
  `id` int(11) NOT NULL,
  `stock_product_code` int(11) NOT NULL,
  `transaction_from` int(11) DEFAULT NULL,
  `transaction_to` int(11) DEFAULT NULL,
  `transaction_notes` varchar(255) DEFAULT NULL,
  `transaction_qty` decimal(15,2) DEFAULT NULL,
  `allocation` tinyint(1) DEFAULT '0',
  `allocation_reason` varchar(255) DEFAULT NULL,
  `date_and_time` datetime DEFAULT NULL,
  `wo_no` int(11) DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `allocation_id` int(11) DEFAULT NULL,
  `dispatch` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltransfer_lists`
--

INSERT INTO `tbltransfer_lists` (`id`, `stock_product_code`, `transaction_from`, `transaction_to`, `transaction_notes`, `transaction_qty`, `allocation`, `allocation_reason`, `date_and_time`, `wo_no`, `purchase_id`, `description`, `created_user`, `updated_user`, `allocation_id`, `dispatch`, `created_at`, `updated_at`) VALUES
(2, 111, 13, 14, 'S.AL-157', 500.00, 0, NULL, '2020-10-26 08:36:25', NULL, 157, NULL, 1, NULL, NULL, NULL, '2020-10-26 08:36:25', '2020-10-26 08:36:25'),
(5, 111, 13, 14, 'S.AL-157', 0.00, 0, NULL, '2020-10-26 08:37:30', NULL, 157, NULL, 1, NULL, NULL, NULL, '2020-10-26 08:37:30', '2020-10-26 08:37:30'),
(8, 111, 13, 14, 'S.AL-157', 0.00, 0, NULL, '2020-10-26 08:38:13', NULL, 157, NULL, 1, NULL, NULL, NULL, '2020-10-26 08:38:13', '2020-10-26 08:38:13'),
(11, 111, 13, 14, '', 1300.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-28 04:55:38', '2020-10-28 04:55:38'),
(13, 111, 14, 15, '', 1300.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-28 04:58:46', '2020-10-28 04:58:46'),
(17, 126, NULL, 15, 'WO-92', 10.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-28 07:50:49', '2020-10-28 07:50:49'),
(18, 111, 14, 16, '', 500.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-28 04:09:55', '2020-10-28 04:09:55'),
(21, 126, NULL, 15, 'WO-93', 20.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-28 04:33:17', '2020-10-28 04:33:17'),
(24, 126, NULL, 15, 'WO-93', 40.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-28 04:36:58', '2020-10-28 04:36:58'),
(25, 111, 15, 14, '', 100.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-28 07:18:02', '2020-10-28 07:18:02'),
(29, 126, NULL, 15, 'WO-94', 450.00, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-10-31 10:20:57', '2020-10-31 04:17:14'),
(31, 126, NULL, 15, 'WO-92', 7.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-31 10:27:43', '2020-10-31 10:27:43'),
(33, 127, NULL, 16, 'WO-95', 1000.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-31 04:16:45', '2020-10-31 04:16:45'),
(35, 127, NULL, 16, 'WO-95', 1000.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-31 04:16:50', '2020-10-31 04:16:50'),
(37, 127, NULL, 16, 'WO-95', 1000.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-31 04:16:55', '2020-10-31 04:16:55'),
(39, 126, NULL, 15, 'WO-95', 1000.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-10-31 04:18:42', '2020-10-31 04:18:42'),
(40, 126, 15, 14, '', 1527.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-31 04:21:55', '2020-10-31 04:21:55'),
(41, 126, 14, 16, '', 1527.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-10-31 04:22:56', '2020-10-31 04:22:56'),
(42, 125, NULL, 14, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, 'Installed Item', 1, 1, NULL, NULL, '2020-10-31 04:27:01', '2021-01-19 01:29:49'),
(43, 116, 14, NULL, 'WO-95', 10.00, 0, NULL, NULL, NULL, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-11-04 10:56:17', '2021-01-19 01:29:49'),
(44, 126, 16, NULL, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-11-04 10:56:17', '2021-01-19 01:29:49'),
(45, 127, 16, NULL, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-11-04 10:56:17', '2021-01-19 01:29:49'),
(47, 130, 16, NULL, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-04 10:56:17', '2020-11-04 10:56:17'),
(48, 131, 16, NULL, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-04 10:56:17', '2020-11-04 10:56:17'),
(49, 132, 16, NULL, 'WO-95', 100.00, 0, NULL, NULL, 95, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-04 10:56:17', '2020-11-04 10:56:17'),
(50, 111, 16, 14, 'Stock transfer', 200.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-11-07 08:04:22', '2020-11-07 08:04:22'),
(55, 112, 13, 14, 'Purchase Stock in', 500.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-11-07 09:16:28', '2020-11-07 09:16:28'),
(56, 112, 16, NULL, 'WO-93', 21.00, 0, NULL, NULL, 93, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-07 02:40:05', '2020-11-07 02:40:05'),
(57, 112, 16, NULL, 'WO-93', 4.20, 0, NULL, NULL, 93, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-07 02:40:05', '2020-11-07 02:40:05'),
(58, 127, NULL, 15, 'WO-93', 100.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-07 02:40:05', '2020-11-07 02:40:05'),
(59, 125, 14, NULL, 'WO-95', 70.00, 0, NULL, NULL, 95, NULL, 'Dispatch', 1, 1, NULL, NULL, '2020-11-13 10:02:57', '2020-11-17 11:06:03'),
(60, 116, 14, NULL, 'WO-95', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2020-11-13 10:02:57', '2020-11-17 11:06:03'),
(61, 0, 13, 14, 'S.AL-165', 150.00, 0, NULL, '2020-11-17 11:28:51', NULL, 165, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:28:51', '2020-11-17 11:28:51'),
(62, 0, 13, 14, 'S.AL-165', 0.00, 0, NULL, '2020-11-17 11:29:00', NULL, 165, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:29:00', '2020-11-17 11:29:00'),
(63, 0, 13, 14, 'S.AL-166', 150.00, 0, NULL, '2020-11-17 11:35:37', NULL, 166, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:35:37', '2020-11-17 11:35:37'),
(64, 112, 14, NULL, 'WO-96', 29.00, 0, NULL, NULL, 96, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-17 11:43:34', '2020-11-17 11:43:34'),
(65, 112, 14, NULL, 'WO-96', 5.80, 0, NULL, NULL, 96, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-17 11:43:34', '2020-11-17 11:43:34'),
(66, 126, NULL, 16, 'WO-96', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-17 11:43:34', '2020-11-17 11:43:34'),
(67, 112, 14, NULL, 'WO-96', 58.00, 0, NULL, NULL, 96, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-17 11:48:10', '2020-11-17 11:48:10'),
(68, 126, NULL, 16, 'WO-96', 100.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-17 11:48:10', '2020-11-17 11:48:10'),
(69, 112, 14, NULL, 'WO-96', 31.50, 0, NULL, NULL, 96, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-17 11:49:04', '2020-11-17 11:49:04'),
(70, 112, 14, NULL, 'WO-96', 2.10, 0, NULL, NULL, 96, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-17 11:49:04', '2020-11-17 11:49:04'),
(71, 127, NULL, 16, 'WO-96', 150.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-17 11:49:04', '2020-11-17 11:49:04'),
(72, 133, NULL, 14, 'WO-96', 200.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(73, 116, 14, NULL, 'WO-96', 25.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(74, 125, NULL, 14, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(75, 116, 14, NULL, 'WO-96', 15.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(76, 126, 16, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(77, 127, 16, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(78, 128, 16, NULL, 'WO-96', 600.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(79, 130, 16, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(80, 131, 16, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:09', '2020-11-17 11:51:09'),
(81, 132, 16, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 11:51:10', '2020-11-17 11:51:10'),
(82, 125, 14, 15, 'Stock transfer', 180.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-11-17 12:01:07', '2020-11-17 12:01:07'),
(83, 133, 14, NULL, 'WO-96', 200.00, 0, NULL, NULL, 96, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-17 12:01:49', '2020-11-17 12:01:49'),
(84, 116, 14, NULL, 'WO-96', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 12:01:49', '2020-11-17 12:01:49'),
(85, 125, 15, NULL, 'WO-96', 150.00, 0, NULL, NULL, 96, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-17 12:01:49', '2020-11-17 12:01:49'),
(86, 116, 14, NULL, 'WO-96', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 12:01:50', '2020-11-17 12:01:50'),
(87, 125, NULL, 14, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(88, 116, 14, NULL, 'WO-97', 10.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(89, 126, 16, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(90, 127, 16, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(91, 128, 16, NULL, 'WO-97', 400.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(92, 130, 16, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(93, 131, 16, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(94, 132, 16, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:04:33', '2020-11-17 01:04:33'),
(95, 125, 14, NULL, 'WO-97', 100.00, 0, NULL, NULL, 97, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-17 01:24:54', '2020-11-17 01:24:54'),
(96, 116, 14, NULL, 'WO-97', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:24:54', '2020-11-17 01:24:54'),
(97, 125, NULL, 14, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(98, 116, 14, NULL, 'WO-98', 20.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(99, 133, NULL, 14, 'WO-98', 100.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(100, 116, 14, NULL, 'WO-98', 13.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(101, 126, 16, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(102, 127, 16, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(103, 128, 16, NULL, 'WO-98', 800.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(104, 130, 16, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(105, 131, 16, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(106, 132, 16, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:33:23', '2020-11-17 01:33:23'),
(107, 125, 14, NULL, 'WO-98', 200.00, 0, NULL, NULL, 98, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-17 01:34:17', '2020-11-17 01:34:17'),
(108, 116, 14, NULL, 'WO-98', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:34:17', '2020-11-17 01:34:17'),
(109, 133, 14, NULL, 'WO-98', 100.00, 0, NULL, NULL, 98, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-17 01:34:17', '2020-11-17 01:34:17'),
(110, 116, 14, NULL, 'WO-98', 0.00, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-17 01:34:17', '2020-11-17 01:34:17'),
(111, 126, 13, 14, 'Stock in', 1000.00, 0, '', NULL, 0, 0, '', 17, 0, NULL, NULL, '2020-11-17 02:15:12', '2020-11-17 02:15:12'),
(112, 126, 13, 14, '', 1000.00, 0, '', NULL, 0, 0, '', 17, 0, NULL, NULL, '2020-11-17 02:15:44', '2020-11-17 02:15:44'),
(113, 126, 13, 14, '', 1000.00, 0, '', NULL, 0, 0, '', 17, 0, NULL, NULL, '2020-11-17 02:15:44', '2020-11-17 02:15:44'),
(114, 126, 13, 14, '', 1000.00, 0, '', NULL, 0, 0, '', 17, 0, NULL, NULL, '2020-11-17 02:15:45', '2020-11-17 02:15:45'),
(116, 125, NULL, 14, 'WO-99', 10.00, 0, NULL, NULL, 99, NULL, 'Installed Item', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(117, 116, 14, NULL, 'WO-99', 1.00, 0, NULL, NULL, NULL, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(118, 126, 16, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(119, 127, 16, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(120, 128, 16, NULL, 'WO-99', 80.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(121, 130, 16, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(122, 131, 16, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(123, 132, 16, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-19 04:34:09', '2020-11-19 04:34:09'),
(124, 128, 13, 14, 'S.AL-167', 2000.00, 0, NULL, '2020-11-19 04:41:52', NULL, 167, NULL, 1, NULL, NULL, NULL, '2020-11-19 04:41:52', '2020-11-19 04:41:52'),
(125, 125, 15, NULL, 'WO-99', 20.00, 0, NULL, NULL, 99, NULL, 'Dispatch', 1, NULL, NULL, NULL, '2020-11-19 05:00:49', '2020-11-19 05:00:49'),
(126, 132, 13, 14, 'S.AL-168', 20.00, 0, NULL, '2020-11-19 05:10:11', NULL, 168, NULL, 1, NULL, NULL, NULL, '2020-11-19 05:10:11', '2020-11-19 05:10:11'),
(127, 111, 13, 14, 'Stock in', 333.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-11-19 05:31:45', '2020-11-19 05:31:45'),
(128, 112, 14, NULL, 'WO-100', 1.00, 0, NULL, NULL, 100, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-21 10:22:30', '2020-11-21 10:22:30'),
(129, 133, NULL, 15, 'WO-100', 10.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-21 10:22:30', '2020-11-21 10:22:30'),
(130, 112, 14, NULL, 'WO-101', 0.60, 0, NULL, NULL, 101, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 01:09:44', '2020-11-30 01:09:44'),
(131, 129, 14, NULL, 'WO-101', 0.60, 0, NULL, NULL, 101, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 01:09:44', '2020-11-30 01:09:44'),
(132, 112, 14, NULL, 'WO-101', 0.20, 0, NULL, NULL, 101, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 01:09:44', '2020-11-30 01:09:44'),
(133, 129, 14, NULL, 'WO-101', 0.20, 0, NULL, NULL, 101, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 01:09:44', '2020-11-30 01:09:44'),
(134, 133, NULL, 15, 'WO-101', 6.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-30 01:09:44', '2020-11-30 01:09:44'),
(136, 133, 15, NULL, 'WO-101', 10.00, 0, NULL, NULL, 101, NULL, 'Dispatch', 1, NULL, NULL, 1, '2020-11-30 10:54:22', '2020-11-30 10:54:22'),
(137, 112, 14, NULL, 'WO-102', 50.00, 0, NULL, NULL, 102, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:14', '2020-11-30 11:15:14'),
(138, 129, 14, NULL, 'WO-102', 5.00, 0, NULL, NULL, 102, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:14', '2020-11-30 11:15:14'),
(139, 112, 14, NULL, 'WO-102', 20.00, 0, NULL, NULL, 102, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:14', '2020-11-30 11:15:14'),
(140, 129, 14, NULL, 'WO-102', 2.00, 0, NULL, NULL, 102, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:14', '2020-11-30 11:15:14'),
(141, 133, NULL, 15, 'WO-102', 5.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-30 11:15:14', '2020-11-30 11:15:14'),
(142, 112, 14, NULL, 'WO-102', 50.00, 0, NULL, NULL, 102, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:26', '2020-11-30 11:15:26'),
(143, 129, 14, NULL, 'WO-102', 5.00, 0, NULL, NULL, 102, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:26', '2020-11-30 11:15:26'),
(144, 112, 14, NULL, 'WO-102', 20.00, 0, NULL, NULL, 102, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:26', '2020-11-30 11:15:26'),
(145, 129, 14, NULL, 'WO-102', 2.00, 0, NULL, NULL, 102, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2020-11-30 11:15:26', '2020-11-30 11:15:26'),
(146, 133, NULL, 15, 'WO-102', 5.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-11-30 11:15:26', '2020-11-30 11:15:26'),
(147, 133, 15, NULL, 'WO-102', 10.00, 0, NULL, NULL, 102, NULL, 'Dispatch', 1, NULL, NULL, 1, '2020-11-30 11:18:32', '2020-11-30 11:18:32'),
(148, 133, NULL, 14, 'WO-102', 10.00, 0, NULL, NULL, 102, NULL, 'Installed Item', 1, NULL, NULL, NULL, '2020-11-30 11:19:31', '2020-11-30 11:19:31'),
(149, 116, 14, NULL, 'WO-102', 2.00, 0, NULL, NULL, NULL, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-30 11:19:31', '2020-11-30 11:19:31'),
(150, 112, 16, NULL, 'WO-102', 100.00, 0, NULL, NULL, 102, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-30 11:19:31', '2020-11-30 11:19:31'),
(151, 129, 16, NULL, 'WO-102', 10.00, 0, NULL, NULL, 102, NULL, 'Used for Installation', 1, NULL, NULL, NULL, '2020-11-30 11:19:31', '2020-11-30 11:19:31'),
(152, 129, 13, 14, 'Purchase Stock in', 100.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2020-12-06 11:44:40', '2020-12-06 11:44:40'),
(153, 112, 16, NULL, 'WO-103', 4.00, 0, NULL, NULL, 103, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-12-06 11:49:37', '2020-12-06 11:49:37'),
(154, 129, 16, NULL, 'WO-103', 2.00, 0, NULL, NULL, 103, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-12-06 11:49:37', '2020-12-06 11:49:37'),
(155, 134, NULL, 15, 'WO-103', 20.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-12-06 11:49:37', '2020-12-06 11:49:37'),
(156, 135, NULL, 14, 'WO-103', 10.00, 0, NULL, NULL, 103, NULL, 'Installed Item', 1, 1, NULL, NULL, '2020-12-06 11:50:30', '2020-12-06 12:04:25'),
(157, 134, 16, NULL, 'WO-103', 40.00, 0, NULL, NULL, 103, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-12-06 11:50:30', '2020-12-06 12:04:25'),
(158, 127, 16, NULL, 'WO-103', 10.00, 0, NULL, NULL, 103, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-12-06 11:50:30', '2020-12-06 12:04:25'),
(159, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-12-06 12:01:43', '2020-12-06 12:01:43'),
(160, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2020-12-06 12:01:43', '2020-12-06 12:01:43'),
(161, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2020-12-06 12:01:43', '2020-12-06 12:01:43'),
(162, 134, NULL, 14, 'WO-104', 50.00, 0, NULL, NULL, 104, NULL, 'Installed Item', 1, 1, NULL, NULL, '2020-12-06 12:02:37', '2020-12-06 12:02:44'),
(163, 112, 16, NULL, 'WO-104', 20.00, 0, NULL, NULL, 104, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-12-06 12:02:37', '2020-12-06 12:02:44'),
(164, 129, 16, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Installation', 1, 1, NULL, NULL, '2020-12-06 12:02:37', '2020-12-06 12:02:44'),
(165, 112, 16, NULL, 'WO-103', 4.00, 0, NULL, NULL, 103, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:02:30', '2021-01-19 01:02:30'),
(166, 129, 16, NULL, 'WO-103', 2.00, 0, NULL, NULL, 103, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:02:30', '2021-01-19 01:02:30'),
(167, 112, 16, NULL, 'WO-103', 0.40, 0, NULL, NULL, 103, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2021-01-19 01:02:30', '2021-01-19 01:02:30'),
(168, 129, 16, NULL, 'WO-103', 0.20, 0, NULL, NULL, 103, NULL, 'Waste Production', 1, NULL, NULL, NULL, '2021-01-19 01:02:30', '2021-01-19 01:02:30'),
(169, 134, NULL, 15, 'WO-103', 20.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:02:30', '2021-01-19 01:02:30'),
(170, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(171, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(172, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(173, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(174, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(175, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:03:04', '2021-01-19 01:03:04'),
(176, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(177, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(178, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(179, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(180, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(181, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(182, 112, 14, NULL, 'WO-104', 10.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(183, 129, 14, NULL, 'WO-104', 5.00, 0, NULL, NULL, 104, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(184, 134, NULL, 16, 'WO-104', 50.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-19 01:03:05', '2021-01-19 01:03:05'),
(185, 111, 15, 0, '', 500.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2021-01-19 01:13:08', '2021-01-19 01:13:08'),
(186, 112, 16, NULL, 'WO-105', 20.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:06', '2021-01-20 12:17:06'),
(187, 129, 16, NULL, 'WO-105', 10.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:06', '2021-01-20 12:17:06'),
(188, 134, NULL, 15, 'WO-105', 100.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-20 12:17:06', '2021-01-20 12:17:06'),
(189, 112, 16, NULL, 'WO-105', 20.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(190, 129, 16, NULL, 'WO-105', 10.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(191, 134, NULL, 15, 'WO-105', 100.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(192, 112, 16, NULL, 'WO-105', 20.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(193, 129, 16, NULL, 'WO-105', 10.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(194, 134, NULL, 15, 'WO-105', 100.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-20 12:17:07', '2021-01-20 12:17:07'),
(195, 111, 14, 15, '', 33.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2021-01-20 12:19:35', '2021-01-20 12:19:35'),
(196, 111, 14, 0, '', 100.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2021-01-20 12:47:44', '2021-01-20 12:47:44'),
(197, 135, 13, 14, '', 225.00, 0, '', NULL, 0, 0, '', 1, 0, NULL, NULL, '2021-01-20 12:55:52', '2021-01-20 12:55:52'),
(198, 135, 14, NULL, 'WO-105', 100.00, 0, NULL, NULL, 105, NULL, 'Dispatch', 1, NULL, NULL, 1, '2021-01-20 12:59:53', '2021-01-20 12:59:53'),
(199, 112, 16, NULL, 'WO-105', 15.00, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 02:02:08', '2021-01-20 02:02:08'),
(200, 129, 16, NULL, 'WO-105', 7.50, 0, NULL, NULL, 105, NULL, 'Used for Production', 1, NULL, NULL, NULL, '2021-01-20 02:02:08', '2021-01-20 02:02:08'),
(201, 134, NULL, 15, 'WO-105', 75.00, 0, NULL, NULL, NULL, NULL, 'Produced Item', 1, NULL, NULL, NULL, '2021-01-20 02:02:08', '2021-01-20 02:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblunits`
--

CREATE TABLE `tblunits` (
  `unitid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblunits`
--

INSERT INTO `tblunits` (`unitid`, `name`, `active`, `created_at`) VALUES
(11, 'Quantity', 1, NULL),
(12, 'KGA', 1, NULL),
(13, 'Test_Unit1', 1, NULL),
(14, 'aaa', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

CREATE TABLE `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_auto_login`
--

INSERT INTO `tbluser_auto_login` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`, `staff`) VALUES
('f72aa1bc725b737bd53c4d2998f2c894', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', '38.107.114.10', '2021-01-22 20:48:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

CREATE TABLE `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(1, 0, 0, 1, 'consent_key', 'af1f13046b47b58e492f95500b475693-08783768253e75afc0a23978c82fa69f'),
(2, 1, 0, 0, 'recent_searches', '[\"mehme\",\"Birkan\",\"birka\",\"birkan\",\"birk\"]');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `share_in_projects` tinyint(1) NOT NULL DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

CREATE TABLE `tblviews_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwarehouses`
--

CREATE TABLE `tblwarehouses` (
  `id` int(11) NOT NULL,
  `warehouse_name` varchar(255) NOT NULL,
  `order_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwarehouses`
--

INSERT INTO `tblwarehouses` (`id`, `warehouse_name`, `order_no`) VALUES
(13, 'Supplier Warehouse', '1'),
(14, 'Main Warehouse', '2'),
(15, 'Smaller Warehouse', '3'),
(16, 'Production Warehouse', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

CREATE TABLE `tblweb_to_lead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblwork_hours`
--

CREATE TABLE `tblwork_hours` (
  `id` int(11) NOT NULL,
  `capacity_hours` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwork_hours`
--

INSERT INTO `tblwork_hours` (`id`, `capacity_hours`) VALUES
(3, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblwork_order_phases`
--

CREATE TABLE `tblwork_order_phases` (
  `id` int(11) NOT NULL,
  `phase` varchar(255) NOT NULL,
  `order_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblwork_order_phases`
--

INSERT INTO `tblwork_order_phases` (`id`, `phase`, `order_no`) VALUES
(4, 'Pending for Production', 1),
(5, 'On Production', 2),
(6, 'Ready to dispatch', 3),
(7, 'Invoicing Completed', 4),
(8, 'Completed', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccount_list`
--
ALTER TABLE `tblaccount_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tblallocated_items`
--
ALTER TABLE `tblallocated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `tblbarcode_list`
--
ALTER TABLE `tblbarcode_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`);

--
-- Indexes for table `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indexes for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indexes for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies_exchange`
--
ALTER TABLE `tblcurrencies_exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblcustomer_admins`
--
ALTER TABLE `tblcustomer_admins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indexes for table `tblenergy_prices`
--
ALTER TABLE `tblenergy_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblevents_installation`
--
ALTER TABLE `tblevents_installation`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indexes for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblform_results`
--
ALTER TABLE `tblform_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinstallation`
--
ALTER TABLE `tblinstallation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinstallation_time`
--
ALTER TABLE `tblinstallation_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblitemable`
--
ALTER TABLE `tblitemable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `rel_id` (`rel_id`);

--
-- Indexes for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `company` (`company`),
  ADD KEY `email` (`email`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Indexes for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmachines_list`
--
ALTER TABLE `tblmachines_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmoulds`
--
ALTER TABLE `tblmoulds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmould_suitability`
--
ALTER TABLE `tblmould_suitability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloperation_cost`
--
ALTER TABLE `tbloperation_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblpackage_group`
--
ALTER TABLE `tblpackage_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpack_list`
--
ALTER TABLE `tblpack_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblplan_recipe`
--
ALTER TABLE `tblplan_recipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprice_category_permission`
--
ALTER TABLE `tblprice_category_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpricing_calculation`
--
ALTER TABLE `tblpricing_calculation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpricing_categories`
--
ALTER TABLE `tblpricing_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduced_qty`
--
ALTER TABLE `tblproduced_qty`
  ADD PRIMARY KEY (`p_qty_id`);

--
-- Indexes for table `tblproduct_recipe`
--
ALTER TABLE `tblproduct_recipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurchase_order`
--
ALTER TABLE `tblpurchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurchase_order_item`
--
ALTER TABLE `tblpurchase_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurchase_order_phases`
--
ALTER TABLE `tblpurchase_order_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblquote_phase`
--
ALTER TABLE `tblquote_phase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrel_wo_items`
--
ALTER TABLE `tblrel_wo_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Indexes for table `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsale_phases`
--
ALTER TABLE `tblsale_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Indexes for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indexes for table `tblstock_categories`
--
ALTER TABLE `tblstock_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `tblstock_level_warning`
--
ALTER TABLE `tblstock_level_warning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstock_lists`
--
ALTER TABLE `tblstock_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `tbltaggables`
--
ALTER TABLE `tbltaggables`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indexes for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indexes for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodos`
--
ALTER TABLE `tbltodos`
  ADD PRIMARY KEY (`todoid`);

--
-- Indexes for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransfer_lists`
--
ALTER TABLE `tbltransfer_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblunits`
--
ALTER TABLE `tblunits`
  ADD PRIMARY KEY (`unitid`);

--
-- Indexes for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwarehouses`
--
ALTER TABLE `tblwarehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwork_hours`
--
ALTER TABLE `tblwork_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwork_order_phases`
--
ALTER TABLE `tblwork_order_phases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccount_list`
--
ALTER TABLE `tblaccount_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblallocated_items`
--
ALTER TABLE `tblallocated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbarcode_list`
--
ALTER TABLE `tblbarcode_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcurrencies_exchange`
--
ALTER TABLE `tblcurrencies_exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2001;

--
-- AUTO_INCREMENT for table `tblenergy_prices`
--
ALTER TABLE `tblenergy_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tblevents_installation`
--
ALTER TABLE `tblevents_installation`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_results`
--
ALTER TABLE `tblform_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinstallation`
--
ALTER TABLE `tblinstallation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinstallation_time`
--
ALTER TABLE `tblinstallation_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tblitemable`
--
ALTER TABLE `tblitemable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmachines_list`
--
ALTER TABLE `tblmachines_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmoulds`
--
ALTER TABLE `tblmoulds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblmould_suitability`
--
ALTER TABLE `tblmould_suitability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbloperation_cost`
--
ALTER TABLE `tbloperation_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `tblpackage_group`
--
ALTER TABLE `tblpackage_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tblpack_list`
--
ALTER TABLE `tblpack_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblplan_recipe`
--
ALTER TABLE `tblplan_recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `tblprice_category_permission`
--
ALTER TABLE `tblprice_category_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpricing_calculation`
--
ALTER TABLE `tblpricing_calculation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tblpricing_categories`
--
ALTER TABLE `tblpricing_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblproduced_qty`
--
ALTER TABLE `tblproduced_qty`
  MODIFY `p_qty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tblproduct_recipe`
--
ALTER TABLE `tblproduct_recipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpurchase_order`
--
ALTER TABLE `tblpurchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `tblpurchase_order_item`
--
ALTER TABLE `tblpurchase_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `tblpurchase_order_phases`
--
ALTER TABLE `tblpurchase_order_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblquote_phase`
--
ALTER TABLE `tblquote_phase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrel_wo_items`
--
ALTER TABLE `tblrel_wo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `tblsale_phases`
--
ALTER TABLE `tblsale_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstock_categories`
--
ALTER TABLE `tblstock_categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstock_level_warning`
--
ALTER TABLE `tblstock_level_warning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstock_lists`
--
ALTER TABLE `tblstock_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltodos`
--
ALTER TABLE `tbltodos`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltransfer_lists`
--
ALTER TABLE `tbltransfer_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `tblunits`
--
ALTER TABLE `tblunits`
  MODIFY `unitid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwarehouses`
--
ALTER TABLE `tblwarehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblwork_hours`
--
ALTER TABLE `tblwork_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblwork_order_phases`
--
ALTER TABLE `tblwork_order_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
