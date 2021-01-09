-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 04:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mensa_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `customer_id`, `supplier_id`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('502000001', '1-BLUE MACHINE MEHEDI-3', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 1, '0.00', '1', '2020-10-21 04:09:00', '', '0000-00-00 00:00:00'),
('502040001', '1-RifatMia', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-25 02:05:43', '', '0000-00-00 00:00:00'),
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 1, NULL, '0.00', '1', '2019-11-16 08:44:42', '', '0000-00-00 00:00:00'),
('502000009', '10-Nokia company', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 10, '0.00', '1', '2020-11-22 06:26:02', '', '0000-00-00 00:00:00'),
('502040010', '10-RifatMia', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-11-03 00:16:34', '', '0000-00-00 00:00:00'),
('102030000009', '10-shuvo', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 10, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-04 01:37:46', '', '0000-00-00 00:00:00'),
('406', '100', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2020-10-29 02:49:20', '', '0000-00-00 00:00:00'),
('502000010', '11-borsa mobil', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 11, '0.00', '1', '2020-11-23 08:17:59', '', '0000-00-00 00:00:00'),
('102030000010', '11-Hridoy', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 11, NULL, '0.00', '1', '2020-11-10 07:45:48', '', '0000-00-00 00:00:00'),
('102030000011', '12-sumon', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 12, NULL, '0.00', '1', '2020-11-22 02:44:09', '', '0000-00-00 00:00:00'),
('502000011', '12-vivo', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 12, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-26 00:34:04', '', '0000-00-00 00:00:00'),
('502000012', '13-Grayland', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 13, '0.00', '1', '2020-12-03 00:23:59', '', '0000-00-00 00:00:00'),
('102030000012', '13-sohag1', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 13, NULL, '0.00', '1', '2020-11-22 06:36:17', '', '0000-00-00 00:00:00'),
('102030000013', '14-Farid Uddin', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 14, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-22 11:55:22', '', '0000-00-00 00:00:00'),
('502000013', '14-RAK', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 14, '0.00', '1', '2020-12-14 06:52:28', '', '0000-00-00 00:00:00'),
('102030000014', '15-Bahar Sabeb', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 15, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-23 01:50:16', '', '0000-00-00 00:00:00'),
('102030000015', '16-kamal', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 16, NULL, '0.00', '1', '2020-11-23 08:22:21', '', '0000-00-00 00:00:00'),
('102030000016', '17-sabbir1', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 17, NULL, '0.00', '1', '2020-11-23 23:44:36', '', '0000-00-00 00:00:00'),
('102030000017', '18-rased', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 18, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-24 02:45:27', '', '0000-00-00 00:00:00'),
('102030000018', '19-Habib', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 19, NULL, '0.00', '1', '2020-12-03 00:16:30', '', '0000-00-00 00:00:00'),
('102030000002', '2-Daffodil prass', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 2, NULL, '0.00', '1', '2020-10-21 04:12:27', '', '0000-00-00 00:00:00'),
('502040002', '2-samimMia', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-25 05:39:05', '', '0000-00-00 00:00:00'),
('102030000019', '20-Al-Deen', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 20, NULL, '0.00', '1', '2020-12-25 20:48:42', '', '0000-00-00 00:00:00'),
('102030000020', '21-sad', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 21, NULL, '0.00', '1', '2020-12-27 13:08:55', '', '0000-00-00 00:00:00'),
('102030000021', '22-shamim', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 22, NULL, '0.00', '1', '2020-12-28 08:14:23', '', '0000-00-00 00:00:00'),
('102030000022', '23-sumon mia', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 23, NULL, '0.00', '1', '2020-12-28 08:16:38', '', '0000-00-00 00:00:00'),
('102030000023', '24-Shamim', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 24, NULL, '0.00', '1', '2021-01-07 08:17:19', '', '0000-00-00 00:00:00'),
('102030000024', '25-Shareef', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 25, NULL, '0.00', '1', '2021-01-07 12:06:46', '', '0000-00-00 00:00:00'),
('102030000025', '26-khalek', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 26, NULL, '0.00', '1', '2021-01-07 12:13:24', '', '0000-00-00 00:00:00'),
('502000003', '3-BLUE MACHINE MEHEDI-1', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 3, '0.00', '1', '2020-10-25 04:54:41', '', '0000-00-00 00:00:00'),
('102030000003', '3-jamuna industrires', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 3, NULL, '0.00', '1', '2020-10-25 04:58:08', '', '0000-00-00 00:00:00'),
('502040003', '3-MD.FORHAD HOSSAINREZA', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-10-26 04:48:42', '', '0000-00-00 00:00:00'),
('410', '3/4 pipe', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2020-11-25 02:52:22', '', '0000-00-00 00:00:00'),
('502000004', '4-BLUE MACHINE MEHEDI-2', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 4, '0.00', '1', '2020-10-25 05:01:20', '', '0000-00-00 00:00:00'),
('502040004', '4-SAMIMHOSSAIN', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 03:50:53', '', '0000-00-00 00:00:00'),
('102030000004', '5-HAMZA LABORATORIES', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 5, NULL, '0.00', '1', '2020-10-29 03:11:56', '', '0000-00-00 00:00:00'),
('502040005', '5-HASANMIA', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 04:30:00', '', '0000-00-00 00:00:00'),
('502000005', '6-Fran Company', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 6, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-04 01:14:02', '', '0000-00-00 00:00:00'),
('102030000005', '6-HAMZA LABORATORIES', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 6, NULL, '0.00', '1', '2020-10-29 03:12:35', '', '0000-00-00 00:00:00'),
('502040006', '6-sabbirMia', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 05:53:53', '1', '2020-10-27 06:28:15'),
('502000006', '7-EON Animal Health', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 7, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-21 10:59:47', '', '0000-00-00 00:00:00'),
('102030000006', '7-EXCELANT SURVICE', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 7, NULL, '0.00', '1', '2020-10-29 08:48:40', '', '0000-00-00 00:00:00'),
('502040007', '7-ishfaqhaque', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 07:12:53', '', '0000-00-00 00:00:00'),
('502000007', '8-EON Animal Health', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 8, '0.00', 'X4GxFoOrU19zZ0D', '2020-11-21 10:59:48', '', '0000-00-00 00:00:00'),
('502040008', '8-MD.RAHMANHOSSAIN', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 09:41:49', '', '0000-00-00 00:00:00'),
('102030000007', '8-SADI VAI', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 8, NULL, '0.00', '1', '2020-10-29 09:22:21', '', '0000-00-00 00:00:00'),
('502000008', '9-amir Group', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, NULL, 9, '0.00', '1', '2020-11-22 02:37:45', '', '0000-00-00 00:00:00'),
('502040009', '9-harunmia', 'Employee Ledger', 3, 1, 1, 0, 'L', 0, 0, NULL, NULL, '0.00', '1', '2020-10-28 04:22:50', '', '0000-00-00 00:00:00'),
('102030000008', '9-sohag', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 0, 9, NULL, '0.00', '1', '2020-10-29 09:23:03', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-09-05 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-06-25 13:47:29', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('401', 'Default expense', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2019-12-21 09:00:55', '', '0000-00-00 00:00:00'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, NULL, NULL, '0.00', '1', '2019-04-08 10:36:32', '', '2019-09-05 00:00:00'),
('403', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2019-06-17 11:44:52', '', '2019-09-05 00:00:00'),
('10203020003', 'EPC25HPA4O-RAHMAN HOSSAIN', 'Loan Receivable', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2020-10-29 03:00:10', '', '0000-00-00 00:00:00'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10203020002', 'IN1OH3DO7F-SAMIM', 'Loan Receivable', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2020-10-27 03:55:52', '', '0000-00-00 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', '', '2019-09-05 00:00:00'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 15:21:58', '', '2019-09-05 00:00:00'),
('102010201', 'ISLAMI BANK ', 'Cash At Bank', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', '1', '2020-10-28 02:31:49', '', '0000-00-00 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, NULL, NULL, '0.00', '1', '2019-01-26 07:37:20', '', '2019-09-05 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, NULL, NULL, '0.00', '', '2019-09-05 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, NULL, NULL, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('405', 'OFFICE', 'Expence', 1, 1, 1, 0, 'E', 0, 1, NULL, NULL, '1.00', '1', '2020-10-29 09:00:14', '', '0000-00-00 00:00:00'),
('408', 'ofiice', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2020-11-22 02:59:17', '', '0000-00-00 00:00:00'),
('407', 'Pot', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', 'X4GxFoOrU19zZ0D', '2020-11-15 03:00:22', '', '0000-00-00 00:00:00'),
('402', 'Product Purchase', 'Expence', 1, 1, 0, 0, 'E', 0, 0, NULL, NULL, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('303', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 08:22:42', '', '2019-09-05 00:00:00'),
('10203020001', 'QOVMUDZ2Z4-sohag', 'Loan Receivable', 4, 1, 1, 0, 'A', 0, 0, NULL, NULL, '0.00', 'X4GxFoOrU19zZ0D', '2020-10-25 07:14:36', '', '0000-00-00 00:00:00'),
('304', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, 0, NULL, NULL, '0.00', '1', '2019-06-17 11:31:11', '', '2019-09-05 00:00:00'),
('409', 'trasport', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2020-11-23 08:27:59', '', '0000-00-00 00:00:00'),
('404', 'water', 'Expence', 1, 1, 1, 0, 'E', 1, 1, NULL, NULL, '1.00', '1', '2020-10-25 07:05:44', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_transaction`
--

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(1, '20201021041101', 'Purchase', '2020-10-21', '10107', 'Inventory Debit For Supplier Royel Pet industries', '40000.00', '0.00', '1', '1', '2020-10-21 04:11:01', NULL, NULL, '1'),
(2, '20201021041101', 'Purchase', '2020-10-21', '502000001', 'Supplier .Royel Pet industries', '0.00', '40000.00', '1', '1', '2020-10-21 00:00:00', NULL, NULL, '1'),
(3, '20201021041101', 'Purchase', '2020-10-21', '402', 'Company Credit For  Royel Pet industries', '40000.00', '0.00', '1', '1', '2020-10-21 04:11:01', NULL, NULL, '1'),
(4, '20201021041101', 'Purchase', '2020-10-21', '1020101', 'Cash in Hand For Supplier Royel Pet industries', '0.00', '40000.00', '1', '1', '2020-10-21 04:11:01', NULL, NULL, '1'),
(5, '20201021041101', 'Purchase', '2020-10-21', '502000001', 'Supplier .Royel Pet industries', '40000.00', '0.00', '1', '1', '2020-10-21 00:00:00', NULL, NULL, '1'),
(6, '2363186846', 'INV', '2020-10-21', '10107', 'Inventory credit For Invoice No1000', '0.00', '4000.00', '1', '1', '2020-10-21 04:13:40', NULL, NULL, '1'),
(7, '2363186846', 'INV', '2020-10-21', '102030000002', 'Customer debit For Invoice No -  1000 Customer Daffodil prass', '5000.00', '0.00', '1', '1', '2020-10-21 04:13:40', NULL, NULL, '1'),
(8, '2363186846', 'INVOICE', '2020-10-21', '303', 'Sale Income For Invoice NO - 1000 Customer Daffodil prass', '0.00', '5000.00', '1', '1', '2020-10-21 04:13:40', NULL, NULL, '1'),
(9, '2363186846', 'INV', '2020-10-21', '102030000002', 'Customer credit for Paid Amount For Customer Invoice NO- 1000 Customer- Daffodil prass', '0.00', '4000.00', '1', '1', '2020-10-21 04:13:40', NULL, NULL, '1'),
(10, '2363186846', 'INV', '2020-10-21', '1020101', 'Cash in Hand in Sale for Invoice No - 1000 customer- Daffodil prass', '4000.00', '0.00', '1', '1', '2020-10-21 04:13:40', NULL, NULL, '1'),
(11, 'I1ZBE5FN5H', 'Advance', '2020-10-21', '502000001', 'supplier Advance For Royel Pet industries', '0.00', '1000.00', '1', '1', '2020-10-21 04:24:39', NULL, NULL, '1'),
(12, 'I1ZBE5FN5H', 'Advance', '2020-10-21', '1020101', 'Cash in Hand  For Royel Pet industries Advance', '0.00', '1000.00', '1', '1', '2020-10-21 04:24:39', NULL, NULL, '1'),
(13, '20201024050010', 'Purchase', '2020-10-24', '10107', 'Inventory Debit For Supplier Royel Pet industries', '6750.00', '0.00', '1', '1', '2020-10-24 05:00:10', NULL, NULL, '1'),
(14, '20201024050010', 'Purchase', '2020-10-24', '502000001', 'Supplier .Royel Pet industries', '0.00', '6750.00', '1', '1', '2020-10-24 00:00:00', NULL, NULL, '1'),
(15, '20201024050010', 'Purchase', '2020-10-24', '402', 'Company Credit For  Royel Pet industries', '6750.00', '0.00', '1', '1', '2020-10-24 05:00:10', NULL, NULL, '1'),
(16, '8584599954', 'INV', '2020-10-24', '10107', 'Inventory credit For Invoice No1001', '0.00', '1350.00', '1', '1', '2020-10-24 05:03:42', NULL, NULL, '1'),
(17, '8584599954', 'INV', '2020-10-24', '102030000001', 'Customer debit For Invoice No -  1001 Customer Walking Customer', '5000.00', '0.00', '1', '1', '2020-10-24 05:03:42', NULL, NULL, '1'),
(18, '8584599954', 'INVOICE', '2020-10-24', '303', 'Sale Income For Invoice NO - 1001 Customer Walking Customer', '0.00', '5000.00', '1', '1', '2020-10-24 05:03:42', NULL, NULL, '1'),
(19, '7273469659', 'INV', '2020-10-24', '10107', 'Inventory credit For Invoice No1002', '0.00', '135.00', '1', '1', '2020-10-24 05:11:01', NULL, NULL, '1'),
(20, '7273469659', 'INV', '2020-10-24', '102030000001', 'Customer debit For Invoice No -  1002 Customer Walking Customer', '500.00', '0.00', '1', '1', '2020-10-24 05:11:01', NULL, NULL, '1'),
(21, '7273469659', 'INVOICE', '2020-10-24', '303', 'Sale Income For Invoice NO - 1002 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-10-24 05:11:01', NULL, NULL, '1'),
(27, '6376653238', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1003', '0.00', '2567.50', '1', '1', '2020-10-25 05:00:30', NULL, NULL, '1'),
(28, '6376653238', 'INV', '2020-10-25', '102030000003', 'Customer debit For Invoice No -  1003 Customer jamuna industrires', '5250.00', '0.00', '1', '1', '2020-10-25 05:00:30', NULL, NULL, '1'),
(29, '6376653238', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1003 Customer jamuna industrires', '0.00', '5250.00', '1', '1', '2020-10-25 05:00:30', NULL, NULL, '1'),
(30, '6376653238', 'INV', '2020-10-25', '102030000003', 'Customer credit for Paid Amount For Customer Invoice NO- 1003 Customer- jamuna industrires', '0.00', '5250.00', '1', '1', '2020-10-25 05:00:30', NULL, NULL, '1'),
(31, '6376653238', 'INV', '2020-10-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1003 customer- jamuna industrires', '5250.00', '0.00', '1', '1', '2020-10-25 05:00:30', NULL, NULL, '1'),
(35, '20201025045727', 'Purchase', '2020-10-25', '10107', 'Inventory Devit Supplier Machine-1', '250000.00', '0.00', '1', '1', '2020-10-25 05:07:48', NULL, NULL, '1'),
(36, '20201025045727', 'Purchase', '2020-10-25', '502000003', 'Supplier -Machine-1', '0.00', '250000.00', '1', '1', '2020-10-25 00:00:00', NULL, NULL, '1'),
(37, '20201025045727', 'Purchase', '2020-10-25', '402', 'Company Credit For SupplierMachine-1', '250000.00', '0.00', '1', '1', '2020-10-25 05:07:48', NULL, NULL, '1'),
(38, '20201025045727', 'Purchase', '2020-10-25', '1020101', 'Cash in Hand For Supplier Machine-1', '0.00', '250000.00', '1', '1', '2020-10-25 05:07:48', NULL, NULL, '1'),
(39, '20201025045727', 'Purchase', '2020-10-25', '502000003', 'Supplier . Machine-1', '250000.00', '0.00', '1', '1', '2020-10-25 00:00:00', NULL, NULL, '1'),
(40, '20201025050736', 'Purchase', '2020-10-25', '10107', 'Inventory Devit Supplier Machine-2', '100000.00', '0.00', '1', '1', '2020-10-25 05:08:07', NULL, NULL, '1'),
(41, '20201025050736', 'Purchase', '2020-10-25', '502000004', 'Supplier -Machine-2', '0.00', '100000.00', '1', '1', '2020-10-25 00:00:00', NULL, NULL, '1'),
(42, '20201025050736', 'Purchase', '2020-10-25', '402', 'Company Credit For SupplierMachine-2', '100000.00', '0.00', '1', '1', '2020-10-25 05:08:07', NULL, NULL, '1'),
(43, '20201025050736', 'Purchase', '2020-10-25', '1020101', 'Cash in Hand For Supplier Machine-2', '0.00', '100000.00', '1', '1', '2020-10-25 05:08:07', NULL, NULL, '1'),
(44, '20201025050736', 'Purchase', '2020-10-25', '502000004', 'Supplier . Machine-2', '100000.00', '0.00', '1', '1', '2020-10-25 00:00:00', NULL, NULL, '1'),
(45, '1321211416', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1004', '0.00', '11500.00', '1', '1', '2020-10-25 05:09:30', NULL, NULL, '1'),
(46, '1321211416', 'INV', '2020-10-25', '102030000003', 'Customer debit For Invoice No -  1004 Customer jamuna industrires', '20000.00', '0.00', '1', '1', '2020-10-25 05:09:30', NULL, NULL, '1'),
(47, '1321211416', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1004 Customer jamuna industrires', '0.00', '20000.00', '1', '1', '2020-10-25 05:09:30', NULL, NULL, '1'),
(48, '1321211416', 'INV', '2020-10-25', '102030000003', 'Customer credit for Paid Amount For Customer Invoice NO- 1004 Customer- jamuna industrires', '0.00', '20000.00', '1', '1', '2020-10-25 05:09:30', NULL, NULL, '1'),
(49, '1321211416', 'INV', '2020-10-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1004 customer- jamuna industrires', '20000.00', '0.00', '1', '1', '2020-10-25 05:09:30', NULL, NULL, '1'),
(58, '4886688543', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1006', '0.00', '5000.00', '1', '1', '2020-10-25 05:16:51', NULL, NULL, '1'),
(59, '4886688543', 'INV', '2020-10-25', '102030000003', 'Customer debit For Invoice No -  1006 Customer jamuna industrires', '10000.00', '0.00', '1', '1', '2020-10-25 05:16:51', NULL, NULL, '1'),
(60, '4886688543', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1006 Customer jamuna industrires', '0.00', '10000.00', '1', '1', '2020-10-25 05:16:51', NULL, NULL, '1'),
(61, '4886688543', 'INV', '2020-10-25', '102030000003', 'Customer credit for Paid Amount For Customer Invoice NO- 1006 Customer- jamuna industrires', '0.00', '3000.00', '1', '1', '2020-10-25 05:16:51', NULL, NULL, '1'),
(62, '4886688543', 'INV', '2020-10-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1006 customer- jamuna industrires', '3000.00', '0.00', '1', '1', '2020-10-25 05:16:51', NULL, NULL, '1'),
(63, '7752617954', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1007', '0.00', '15000.00', '1', '1', '2020-10-25 05:18:52', NULL, NULL, '1'),
(64, '7752617954', 'INV', '2020-10-25', '102030000003', 'Customer debit For Invoice No -  1007 Customer jamuna industrires', '30000.00', '0.00', '1', '1', '2020-10-25 05:18:52', NULL, NULL, '1'),
(65, '7752617954', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1007 Customer jamuna industrires', '0.00', '30000.00', '1', '1', '2020-10-25 05:18:52', NULL, NULL, '1'),
(66, '5175288459', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1008', '0.00', '750.00', '1', '1', '2020-10-25 05:25:11', NULL, NULL, '1'),
(67, '5175288459', 'INV', '2020-10-25', '102030000001', 'Customer debit For Invoice No -  1008 Customer Walking Customer', '1560.00', '0.00', '1', '1', '2020-10-25 05:25:11', NULL, NULL, '1'),
(68, '5175288459', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1008 Customer Walking Customer', '0.00', '1560.00', '1', '1', '2020-10-25 05:25:11', NULL, NULL, '1'),
(69, 'CR-1', 'CR', '2020-10-25', '102030000001', '', '0.00', '1560.00', '1', '1', '2020-10-25 05:26:33', NULL, NULL, '1'),
(70, 'CR-1', 'CR', '2020-10-25', '1020101', 'Cash in Hand For  Walking Customer', '1560.00', '0.00', '1', '1', '2020-10-25 05:26:33', NULL, NULL, '1'),
(71, '2316443249', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1009', '0.00', '1050.00', '1', '1', '2020-10-25 05:31:25', NULL, NULL, '1'),
(72, '2316443249', 'INV', '2020-10-25', '102030000001', 'Customer debit For Invoice No -  1009 Customer Walking Customer', '2100.00', '0.00', '1', '1', '2020-10-25 05:31:25', NULL, NULL, '1'),
(73, '2316443249', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1009 Customer Walking Customer', '0.00', '2100.00', '1', '1', '2020-10-25 05:31:25', NULL, NULL, '1'),
(74, '2316443249', 'INV', '2020-10-25', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1009 Customer- Walking Customer', '0.00', '2100.00', '1', '1', '2020-10-25 05:31:25', NULL, NULL, '1'),
(75, '2316443249', 'INV', '2020-10-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1009 customer- Walking Customer', '2100.00', '0.00', '1', '1', '2020-10-25 05:31:25', NULL, NULL, '1'),
(76, 'CR-2', 'CR', '2020-10-25', '102030000003', '', '0.00', '10000.00', '1', '1', '2020-10-25 05:47:51', NULL, NULL, '1'),
(77, 'CR-2', 'CR', '2020-10-25', '1020101', 'Cash in Hand For  jamuna industrires', '10000.00', '0.00', '1', '1', '2020-10-25 05:47:51', NULL, NULL, '1'),
(78, 'CR-3', 'CR', '2020-10-25', '102030000003', '', '0.00', '27000.00', '1', '1', '2020-10-25 05:50:10', NULL, NULL, '1'),
(79, 'CR-3', 'CR', '2020-10-25', '1020101', 'Cash in Hand For  jamuna industrires', '27000.00', '0.00', '1', '1', '2020-10-25 05:50:10', NULL, NULL, '1'),
(80, 'CR-4', 'CR', '2020-10-25', '102030000002', '', '0.00', '1000.00', '1', '1', '2020-10-25 05:56:33', NULL, NULL, '1'),
(81, 'CR-4', 'CR', '2020-10-25', '1020101', 'Cash in Hand For  Daffodil prass', '1000.00', '0.00', '1', '1', '2020-10-25 05:56:33', NULL, NULL, '1'),
(82, '4266252999', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1010', '0.00', '2500.00', '1', '1', '2020-10-25 07:00:01', NULL, NULL, '1'),
(83, '4266252999', 'INV', '2020-10-25', '102030000001', 'Customer debit For Invoice No -  1010 Customer Walking Customer', '5000.00', '0.00', '1', '1', '2020-10-25 07:00:01', NULL, NULL, '1'),
(84, '4266252999', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1010 Customer Walking Customer', '0.00', '5000.00', '1', '1', '2020-10-25 07:00:01', NULL, NULL, '1'),
(85, '4266252999', 'INV', '2020-10-25', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1010 Customer- Walking Customer', '0.00', '5000.00', '1', '1', '2020-10-25 07:00:01', NULL, NULL, '1'),
(86, '4266252999', 'INV', '2020-10-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1010 customer- Walking Customer', '5000.00', '0.00', '1', '1', '2020-10-25 07:00:01', NULL, NULL, '1'),
(87, '1138914547', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1011', '0.00', '10000.00', '1', '1', '2020-10-25 07:01:44', NULL, NULL, '1'),
(88, '1138914547', 'INV', '2020-10-25', '102030000001', 'Customer debit For Invoice No -  1011 Customer Walking Customer', '20000.00', '0.00', '1', '1', '2020-10-25 07:01:44', NULL, NULL, '1'),
(89, '1138914547', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1011 Customer Walking Customer', '0.00', '20000.00', '1', '1', '2020-10-25 07:01:44', NULL, NULL, '1'),
(92, 'CR-5', 'CR', '2020-10-25', '102030000001', '', '0.00', '21000.00', '1', '1', '2020-10-25 07:04:19', NULL, NULL, '1'),
(93, 'CR-5', 'CR', '2020-10-25', '1020101', 'Cash in Hand For  Walking Customer', '21000.00', '0.00', '1', '1', '2020-10-25 07:04:19', NULL, NULL, '1'),
(94, '20201025071010', 'Expense', '2020-10-25', '404', 'water Expense 20201025071010', '2000.00', '0.00', '1', '1', '2020-10-25 07:10:10', NULL, NULL, '1'),
(95, '20201025071010', 'Expense', '2020-10-25', '1020101', 'water Expense20201025071010', '0.00', '2000.00', '1', '1', '2020-10-25 07:10:10', NULL, NULL, '1'),
(96, '5F51FHN2ZQ', 'LNR', '2020-10-25', '10203020001', 'Loan for .sohag', '1000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-25 07:14:55', NULL, NULL, '1'),
(97, '5F51FHN2ZQ', 'LNR', '2020-10-25', '1020101', 'Cash in Hand Credit For sohag', '0.00', '1000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-25 07:14:55', NULL, NULL, '1'),
(98, '7243921388', 'INV', '2020-10-25', '10107', 'Inventory credit For Invoice No1012', '0.00', '65000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-25 11:42:28', NULL, NULL, '1'),
(99, '7243921388', 'INV', '2020-10-25', '102030000001', 'Customer debit For Invoice No -  1012 Customer Walking Customer', '124500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-25 11:42:28', NULL, NULL, '1'),
(100, '7243921388', 'INVOICE', '2020-10-25', '303', 'Sale Income For Invoice NO - 1012 Customer Walking Customer', '0.00', '124500.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-25 11:42:28', NULL, NULL, '1'),
(101, '5678991416', 'INV', '2020-10-26', '10107', 'Inventory credit For Invoice No1013', '0.00', '50000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 04:22:44', NULL, NULL, '1'),
(102, '5678991416', 'INV', '2020-10-26', '102030000001', 'Customer debit For Invoice No -  1013 Customer Walking Customer', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 04:22:44', NULL, NULL, '1'),
(103, '5678991416', 'INVOICE', '2020-10-26', '303', 'Sale Income For Invoice NO - 1013 Customer Walking Customer', '0.00', '100000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 04:22:44', NULL, NULL, '1'),
(104, 'October 2020', 'Salary', '2020-10-26', '502040001', 'Employee Salary Generate Month of October 2020', '0.00', NULL, '1', 'X4GxFoOrU19zZ0D', '2020-10-26 04:42:28', NULL, NULL, '1'),
(105, '9562825466', 'INV', '2020-10-26', '10107', 'Inventory credit For Invoice No1014', '0.00', '50000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 08:16:22', NULL, NULL, '1'),
(106, '9562825466', 'INV', '2020-10-26', '102030000003', 'Customer debit For Invoice No -  1014 Customer jamuna industrires', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 08:16:22', NULL, NULL, '1'),
(107, '9562825466', 'INVOICE', '2020-10-26', '303', 'Sale Income For Invoice NO - 1014 Customer jamuna industrires', '0.00', '100000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 08:16:22', NULL, NULL, '1'),
(108, '20201026092501', 'Purchase', '2020-10-26', '10107', 'Inventory Debit For Supplier Machine-2', '9500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 09:25:01', NULL, NULL, '1'),
(109, '20201026092501', 'Purchase', '2020-10-26', '502000004', 'Supplier .Machine-2', '0.00', '9500.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 00:00:00', NULL, NULL, '1'),
(110, '20201026092501', 'Purchase', '2020-10-26', '402', 'Company Credit For  Machine-2', '9500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-26 09:25:01', NULL, NULL, '1'),
(111, '20201027012313', 'Purchase', '2020-10-27', '10107', 'Inventory Debit For Supplier Machine-1', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-27 01:23:13', NULL, NULL, '1'),
(112, '20201027012313', 'Purchase', '2020-10-27', '502000003', 'Supplier .Machine-1', '0.00', '100000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-27 00:00:00', NULL, NULL, '1'),
(113, '20201027012313', 'Purchase', '2020-10-27', '402', 'Company Credit For  Machine-1', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-27 01:23:13', NULL, NULL, '1'),
(114, '20201027012313', 'Purchase', '2020-10-27', '1020101', 'Cash in Hand For Supplier Machine-1', '0.00', '100000.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-27 01:23:13', NULL, NULL, '1'),
(115, '20201027012313', 'Purchase', '2020-10-27', '502000003', 'Supplier .Machine-1', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-10-27 00:00:00', NULL, NULL, '1'),
(116, '20201027031912', 'Purchase', '2020-10-20', '10107', 'Inventory Debit For Supplier BLUE MACHINE MEHEDI-1', '45000.00', '0.00', '1', '1', '2020-10-27 03:19:12', NULL, NULL, '1'),
(117, '20201027031912', 'Purchase', '2020-10-20', '502000003', 'Supplier .BLUE MACHINE MEHEDI-1', '0.00', '45000.00', '1', '1', '2020-10-27 00:00:00', NULL, NULL, '1'),
(118, '20201027031912', 'Purchase', '2020-10-20', '402', 'Company Credit For  BLUE MACHINE MEHEDI-1', '45000.00', '0.00', '1', '1', '2020-10-27 03:19:12', NULL, NULL, '1'),
(119, '20201027031912', 'Purchase', '2020-10-20', '1020101', 'Cash in Hand For Supplier BLUE MACHINE MEHEDI-1', '0.00', '45000.00', '1', '1', '2020-10-27 03:19:12', NULL, NULL, '1'),
(120, '20201027031912', 'Purchase', '2020-10-20', '502000003', 'Supplier .BLUE MACHINE MEHEDI-1', '45000.00', '0.00', '1', '1', '2020-10-27 00:00:00', NULL, NULL, '1'),
(121, '6718785423', 'INV', '2020-10-27', '10107', 'Inventory credit For Invoice No1015', '0.00', '450.00', '1', '1', '2020-10-27 03:23:51', NULL, NULL, '1'),
(122, '6718785423', 'INV', '2020-10-27', '102030000003', 'Customer debit For Invoice No -  1015 Customer jamuna industrires', '550.00', '0.00', '1', '1', '2020-10-27 03:23:51', NULL, NULL, '1'),
(123, '6718785423', 'INVOICE', '2020-10-27', '303', 'Sale Income For Invoice NO - 1015 Customer jamuna industrires', '0.00', '550.00', '1', '1', '2020-10-27 03:23:51', NULL, NULL, '1'),
(124, '6718785423', 'INV', '2020-10-27', '102030000003', 'Customer credit for Paid Amount For Customer Invoice NO- 1015 Customer- jamuna industrires', '0.00', '100550.00', '1', '1', '2020-10-27 03:23:51', NULL, NULL, '1'),
(125, '6718785423', 'INV', '2020-10-27', '1020101', 'Cash in Hand in Sale for Invoice No - 1015 customer- jamuna industrires', '100550.00', '0.00', '1', '1', '2020-10-27 03:23:51', NULL, NULL, '1'),
(126, '5772288334', 'INV', '2020-10-27', '10107', 'Inventory credit For Invoice No1016', '0.00', '2.70', '1', '1', '2020-10-27 03:34:30', NULL, NULL, '1'),
(127, '5772288334', 'INV', '2020-10-27', '102030000001', 'Customer debit For Invoice No -  1016 Customer Walking Customer', '10.00', '0.00', '1', '1', '2020-10-27 03:34:30', NULL, NULL, '1'),
(128, '5772288334', 'INVOICE', '2020-10-27', '303', 'Sale Income For Invoice NO - 1016 Customer Walking Customer', '0.00', '10.00', '1', '1', '2020-10-27 03:34:30', NULL, NULL, '1'),
(129, '6718785423', 'Return', '2020-10-27', '102030000003', 'Customer debit For Return jamuna industrires', '0.00', '275.00', '1', '1', '2020-10-27 03:44:53', NULL, NULL, '1'),
(130, 'CR-6', 'CR', '2020-10-27', '102030000003', '', '0.00', '10000.00', '1', '1', '2020-10-27 03:46:31', NULL, NULL, '1'),
(131, 'CR-6', 'CR', '2020-10-27', '1020101', 'Cash in Hand For  jamuna industrires', '10000.00', '0.00', '1', '1', '2020-10-27 03:46:31', NULL, NULL, '1'),
(132, 'WRUAMSJZSZ', 'LNR', '2020-10-27', '10203020002', 'Loan for .SAMIM', '1000.00', '0.00', '1', '1', '2020-10-27 03:56:34', NULL, NULL, '1'),
(133, 'WRUAMSJZSZ', 'LNR', '2020-10-27', '1020101', 'Cash in Hand Credit For SAMIM', '0.00', '1000.00', '1', '1', '2020-10-27 03:56:34', NULL, NULL, '1'),
(134, '20201027040250', 'Expense', '2020-10-27', '405', 'OFFICE Expense 20201027040250', '200.00', '0.00', '1', '1', '2020-10-27 04:02:50', NULL, NULL, '1'),
(135, '20201027040250', 'Expense', '2020-10-27', '1020101', 'OFFICE Expense20201027040250', '0.00', '200.00', '1', '1', '2020-10-27 04:02:50', NULL, NULL, '1'),
(136, '10000', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of 10000', '0.00', NULL, '1', '1', '2020-10-27 04:05:54', NULL, NULL, '1'),
(137, '10000', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of 10000', '0.00', '13860.00', '1', '1', '2020-10-27 04:05:54', NULL, NULL, '1'),
(138, '40000', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of 40000', '0.00', NULL, '1', '1', '2020-10-27 04:17:56', NULL, NULL, '1'),
(139, '40000', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of 40000', '0.00', '0.00', '1', '1', '2020-10-27 04:17:56', NULL, NULL, '1'),
(140, '40000', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of 40000', '0.00', '13860.00', '1', '1', '2020-10-27 04:17:56', NULL, NULL, '1'),
(141, '2', 'Salary', '2020-10-27', '1020101', 'Cash in hand Credit For Employee Salary for-  MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-27 04:20:17', NULL, NULL, '1'),
(142, '2', 'Salary', '2020-10-27', '403', 'Salary paid For- MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-27 04:20:17', NULL, NULL, '1'),
(143, '2', 'Salary', '2020-10-27', '502040003', 'Salary paid For- MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-27 04:20:17', NULL, NULL, '1'),
(144, '3', 'Salary', '2020-10-27', '1020101', 'Cash in hand Credit For Employee Salary for-  SAMIM HOSSAIN', '0.00', '13860.00', '1', 'Admin User', '2020-10-27 04:23:39', NULL, NULL, '1'),
(145, '3', 'Salary', '2020-10-27', '403', 'Salary paid For- SAMIM HOSSAIN', '13860.00', '0.00', '1', 'Admin User', '2020-10-27 04:23:39', NULL, NULL, '1'),
(146, '3', 'Salary', '2020-10-27', '502040004', 'Salary paid For- SAMIM HOSSAIN', '13860.00', '0.00', '1', 'Admin User', '2020-10-27 04:23:39', NULL, NULL, '1'),
(147, '15000', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of 15000', '0.00', NULL, '1', '1', '2020-10-27 04:31:05', NULL, NULL, '1'),
(148, '15000', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of 15000', '0.00', '0.00', '1', '1', '2020-10-27 04:31:05', NULL, NULL, '1'),
(149, '15000', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of 15000', '0.00', '13860.00', '1', '1', '2020-10-27 04:31:05', NULL, NULL, '1'),
(150, '15000', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of 15000', '0.00', '13860.00', '1', '1', '2020-10-27 04:31:05', NULL, NULL, '1'),
(151, 'October 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of October 2020', '0.00', NULL, '1', '1', '2020-10-27 06:01:18', NULL, NULL, '1'),
(152, 'October 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:01:18', NULL, NULL, '1'),
(153, 'October 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of October 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:01:18', NULL, NULL, '1'),
(154, 'October 2020', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of October 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:01:18', NULL, NULL, '1'),
(155, 'October 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:01:18', NULL, NULL, '1'),
(156, 'October 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of October 2020', '0.00', NULL, '1', '1', '2020-10-27 06:11:32', NULL, NULL, '1'),
(157, 'October 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:11:32', NULL, NULL, '1'),
(158, 'October 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of October 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:11:32', NULL, NULL, '1'),
(159, 'October 2020', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of October 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:11:32', NULL, NULL, '1'),
(160, 'October 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:11:32', NULL, NULL, '1'),
(161, 'June 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of June 2020', '0.00', NULL, '1', '1', '2020-10-27 06:18:00', NULL, NULL, '1'),
(162, 'June 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of June 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:18:00', NULL, NULL, '1'),
(163, 'June 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of June 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:18:00', NULL, NULL, '1'),
(164, 'June 2020', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of June 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:18:00', NULL, NULL, '1'),
(165, 'June 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of June 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:18:00', NULL, NULL, '1'),
(166, '17', 'Salary', '2020-10-27', '1020101', 'Cash in hand Credit For Employee Salary for-  HASAN MIA', '0.00', '13860.00', '1', 'Admin User', '2020-10-27 06:18:42', NULL, NULL, '1'),
(167, '17', 'Salary', '2020-10-27', '403', 'Salary paid For- HASAN MIA', '13860.00', '0.00', '1', 'Admin User', '2020-10-27 06:18:42', NULL, NULL, '1'),
(168, '17', 'Salary', '2020-10-27', '502040005', 'Salary paid For- HASAN MIA', '13860.00', '0.00', '1', 'Admin User', '2020-10-27 06:18:42', NULL, NULL, '1'),
(169, 'January 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of January 2020', '0.00', NULL, '1', '1', '2020-10-27 06:22:35', NULL, NULL, '1'),
(170, 'January 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of January 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:22:35', NULL, NULL, '1'),
(171, 'January 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of January 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:22:35', NULL, NULL, '1'),
(172, 'January 2020', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of January 2020', '0.00', '13860.00', '1', '1', '2020-10-27 06:22:35', NULL, NULL, '1'),
(173, 'January 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of January 2020', '0.00', '0.00', '1', '1', '2020-10-27 06:22:35', NULL, NULL, '1'),
(174, '100000', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of 100000', '0.00', NULL, '1', '1', '2020-10-27 06:29:15', NULL, NULL, '1'),
(175, '100000', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of 100000', '0.00', '0.00', '1', '1', '2020-10-27 06:29:15', NULL, NULL, '1'),
(176, '100000', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of 100000', '0.00', '13860.00', '1', '1', '2020-10-27 06:29:15', NULL, NULL, '1'),
(177, '100000', 'Salary', '2020-10-27', '502040005', 'Employee Salary Generate Month of 100000', '0.00', '13860.00', '1', '1', '2020-10-27 06:29:15', NULL, NULL, '1'),
(178, '100000', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of 100000', '0.00', '0.00', '1', '1', '2020-10-27 06:29:15', NULL, NULL, '1'),
(179, 'February 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of February 2020', '0.00', NULL, '1', '1', '2020-10-27 07:13:38', NULL, NULL, '1'),
(180, 'February 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of February 2020', '0.00', '0.00', '1', '1', '2020-10-27 07:13:38', NULL, NULL, '1'),
(181, 'February 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of February 2020', '0.00', '13860.00', '1', '1', '2020-10-27 07:13:38', NULL, NULL, '1'),
(182, 'February 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of February 2020', '0.00', '0.00', '1', '1', '2020-10-27 07:13:38', NULL, NULL, '1'),
(183, 'November 2020', 'Salary', '2020-10-27', '502040001', 'Employee Salary Generate Month of November 2020', '0.00', NULL, '1', '1', '2020-10-27 08:45:39', NULL, NULL, '1'),
(184, 'November 2020', 'Salary', '2020-10-27', '502040003', 'Employee Salary Generate Month of November 2020', '0.00', '0.00', '1', '1', '2020-10-27 08:45:39', NULL, NULL, '1'),
(185, 'November 2020', 'Salary', '2020-10-27', '502040004', 'Employee Salary Generate Month of November 2020', '0.00', '13860.00', '1', '1', '2020-10-27 08:45:39', NULL, NULL, '1'),
(186, 'November 2020', 'Salary', '2020-10-27', '502040006', 'Employee Salary Generate Month of November 2020', '0.00', '0.00', '1', '1', '2020-10-27 08:45:39', NULL, NULL, '1'),
(187, 'October 2020', 'Salary', '2020-10-28', '502040001', 'Employee Salary Generate Month of October 2020', '0.00', NULL, '1', '1', '2020-10-28 04:30:04', NULL, NULL, '1'),
(188, 'October 2020', 'Salary', '2020-10-28', '502040003', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-28 04:30:04', NULL, NULL, '1'),
(189, 'October 2020', 'Salary', '2020-10-28', '502040004', 'Employee Salary Generate Month of October 2020', '0.00', '13860.00', '1', '1', '2020-10-28 04:30:04', NULL, NULL, '1'),
(190, 'October 2020', 'Salary', '2020-10-28', '502040006', 'Employee Salary Generate Month of October 2020', '0.00', '0.00', '1', '1', '2020-10-28 04:30:04', NULL, NULL, '1'),
(191, '35', 'Salary', '2020-10-28', '1020101', 'Cash in hand Credit For Employee Salary for-  sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:30:30', NULL, NULL, '1'),
(192, '35', 'Salary', '2020-10-28', '403', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:30:30', NULL, NULL, '1'),
(193, '35', 'Salary', '2020-10-28', '502040006', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:30:30', NULL, NULL, '1'),
(194, '33', 'Salary', '2020-10-28', '1020101', 'Cash in hand Credit For Employee Salary for-  MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:31:35', NULL, NULL, '1'),
(195, '33', 'Salary', '2020-10-28', '403', 'Salary paid For- MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:31:35', NULL, NULL, '1'),
(196, '33', 'Salary', '2020-10-28', '502040003', 'Salary paid For- MD.FORHAD HOSSAIN REZA', '0.00', '0.00', '1', 'Admin User', '2020-10-28 04:31:35', NULL, NULL, '1'),
(197, '29', 'Salary', '2020-10-28', '1020101', 'Cash in hand Credit For Employee Salary for-  sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:52:31', NULL, NULL, '1'),
(198, '29', 'Salary', '2020-10-28', '403', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:52:31', NULL, NULL, '1'),
(199, '29', 'Salary', '2020-10-28', '502040006', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:52:31', NULL, NULL, '1'),
(200, '34', 'Salary', '2020-10-28', '1020101', 'Cash in hand Credit For Employee Salary for-  SAMIM HOSSAIN', '0.00', '13860.00', '1', 'Admin User', '2020-10-28 05:54:57', NULL, NULL, '1'),
(201, '34', 'Salary', '2020-10-28', '403', 'Salary paid For- SAMIM HOSSAIN', '13860.00', '0.00', '1', 'Admin User', '2020-10-28 05:54:57', NULL, NULL, '1'),
(202, '34', 'Salary', '2020-10-28', '502040004', 'Salary paid For- SAMIM HOSSAIN', '13860.00', '0.00', '1', 'Admin User', '2020-10-28 05:54:57', NULL, NULL, '1'),
(203, '32', 'Salary', '2020-10-28', '1020101', 'Cash in hand Credit For Employee Salary for-  sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:57:54', NULL, NULL, '1'),
(204, '32', 'Salary', '2020-10-28', '403', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:57:54', NULL, NULL, '1'),
(205, '32', 'Salary', '2020-10-28', '502040006', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-10-28 05:57:54', NULL, NULL, '1'),
(206, '1000', 'Salary', '2020-10-29', '502040001', 'Employee Salary Generate Month of 1000', '0.00', NULL, '1', '1', '2020-10-29 03:03:14', NULL, NULL, '1'),
(207, '1000', 'Salary', '2020-10-29', '502040003', 'Employee Salary Generate Month of 1000', '0.00', '0.00', '1', '1', '2020-10-29 03:03:14', NULL, NULL, '1'),
(208, '1000', 'Salary', '2020-10-29', '502040004', 'Employee Salary Generate Month of 1000', '0.00', '13860.00', '1', '1', '2020-10-29 03:03:14', NULL, NULL, '1'),
(209, '1000', 'Salary', '2020-10-29', '502040006', 'Employee Salary Generate Month of 1000', '0.00', '0.00', '1', '1', '2020-10-29 03:03:14', NULL, NULL, '1'),
(210, '9IASDTBJSP', 'LNP', '2020-10-29', '10203020003', 'Loan Payment from .RAHMAN HOSSAIN', '0.00', '1000.00', '1', '1', '2020-10-29 03:03:56', NULL, NULL, '1'),
(211, '9IASDTBJSP', 'LNR', '2020-10-29', '1020101', 'Cash in Hand Debit For RAHMAN HOSSAIN', '1000.00', '0.00', '1', '1', '2020-10-29 03:03:56', NULL, NULL, '1'),
(212, 'CR-7', 'CR', '2020-10-29', '102030000003', '', '0.00', '100000.00', '1', '1', '2020-10-29 03:07:36', NULL, NULL, '1'),
(213, 'CR-7', 'CR', '2020-10-29', '1020101', 'Cash in Hand For  jamuna industrires', '100000.00', '0.00', '1', '1', '2020-10-29 03:07:36', NULL, NULL, '1'),
(214, 'NN861FCWCF', 'PR Balance', '2020-10-29', '102030000005', 'Customer debit For HAMZA LABORATORIES', '1500000.00', '0.00', '1', '1', '2020-10-29 03:12:35', NULL, NULL, '1'),
(215, 'NN861FCWCF', 'PR Balance', '2020-10-29', '10107', 'Inventory credit For Old sale ForHAMZA LABORATORIES', '0.00', '1500000.00', '1', '1', '2020-10-29 03:12:35', NULL, NULL, '1'),
(216, '5326622445', 'INV', '2020-10-29', '10107', 'Inventory credit For Invoice No1017', '0.00', '10000.00', '1', '1', '2020-10-29 03:14:59', NULL, NULL, '1'),
(217, '5326622445', 'INV', '2020-10-29', '102030000005', 'Customer debit For Invoice No -  1017 Customer HAMZA LABORATORIES', '20000.00', '0.00', '1', '1', '2020-10-29 03:14:59', NULL, NULL, '1'),
(218, '5326622445', 'INVOICE', '2020-10-29', '303', 'Sale Income For Invoice NO - 1017 Customer HAMZA LABORATORIES', '0.00', '20000.00', '1', '1', '2020-10-29 03:14:59', NULL, NULL, '1'),
(219, '5326622445', 'INV', '2020-10-29', '102030000005', 'Customer credit for Paid Amount For Customer Invoice NO- 1017 Customer- HAMZA LABORATORIES', '0.00', '1520000.00', '1', '1', '2020-10-29 03:14:59', NULL, NULL, '1'),
(220, '5326622445', 'INV', '2020-10-29', '1020101', 'Cash in Hand in Sale for Invoice No - 1017 customer- HAMZA LABORATORIES', '1520000.00', '0.00', '1', '1', '2020-10-29 03:14:59', NULL, NULL, '1'),
(221, '20201029032152', 'Purchase', '2020-10-29', '10107', 'Inventory Debit For Supplier BLUE MACHINE MEHEDI-3', '160000.00', '0.00', '1', '1', '2020-10-29 03:21:52', NULL, NULL, '1'),
(222, '20201029032152', 'Purchase', '2020-10-29', '502000001', 'Supplier .BLUE MACHINE MEHEDI-3', '0.00', '160000.00', '1', '1', '2020-10-29 00:00:00', NULL, NULL, '1'),
(223, '20201029032152', 'Purchase', '2020-10-29', '402', 'Company Credit For  BLUE MACHINE MEHEDI-3', '160000.00', '0.00', '1', '1', '2020-10-29 03:21:52', NULL, NULL, '1'),
(224, '20201029032152', 'Purchase', '2020-10-29', '1020101', 'Cash in Hand For Supplier BLUE MACHINE MEHEDI-3', '0.00', '160000.00', '1', '1', '2020-10-29 03:21:52', NULL, NULL, '1'),
(225, '20201029032152', 'Purchase', '2020-10-29', '502000001', 'Supplier .BLUE MACHINE MEHEDI-3', '160000.00', '0.00', '1', '1', '2020-10-29 00:00:00', NULL, NULL, '1'),
(226, '5UOPVE2GCU', 'PR Balance', '2020-10-29', '102030000006', 'Customer debit For EXCELANT SURVICE', '24459.00', '0.00', '1', '1', '2020-10-29 08:48:40', NULL, NULL, '1'),
(227, '5UOPVE2GCU', 'PR Balance', '2020-10-29', '10107', 'Inventory credit For Old sale ForEXCELANT SURVICE', '0.00', '24459.00', '1', '1', '2020-10-29 08:48:40', NULL, NULL, '1'),
(228, 'CR-8', 'CR', '2020-10-29', '102030000006', 'MAKING BILL 10.gram by', '0.00', '24459.00', '1', '1', '2020-10-29 08:49:23', NULL, NULL, '1'),
(229, 'CR-8', 'CR', '2020-10-29', '1020101', 'Cash in Hand For  EXCELANT SURVICE', '24459.00', '0.00', '1', '1', '2020-10-29 08:49:23', NULL, NULL, '1'),
(230, 'CR-9', 'CR', '2020-10-29', '102030000006', 'making bill', '0.00', '24460.00', '1', '1', '2020-10-29 08:51:09', NULL, NULL, '1'),
(231, 'CR-9', 'CR', '2020-10-29', '1020101', 'Cash in Hand For  EXCELANT SURVICE', '24460.00', '0.00', '1', '1', '2020-10-29 08:51:09', NULL, NULL, '1'),
(234, 'PM-1', 'PM', '2020-10-29', '502000004', '', '111000.00', '0.00', '1', '1', '2020-10-29 09:04:40', NULL, NULL, '1'),
(235, 'PM-1', 'PM', '2020-10-29', '102010201', 'Supplier Payment To BLUE MACHINE MEHEDI-2', '0.00', '111000.00', '1', '1', '2020-10-29 09:04:40', NULL, NULL, '1'),
(236, '9989479428', 'INV', '2020-10-29', '10107', 'Inventory credit For Invoice No1018', '0.00', '80000.00', '1', '1', '2020-10-29 09:16:30', NULL, NULL, '1'),
(237, '9989479428', 'INV', '2020-10-29', '102030000004', 'Customer debit For Invoice No -  1018 Customer HAMZA LABORATORIES', '20800.00', '0.00', '1', '1', '2020-10-29 09:16:30', NULL, NULL, '1'),
(238, '9989479428', 'INVOICE', '2020-10-29', '303', 'Sale Income For Invoice NO - 1018 Customer HAMZA LABORATORIES', '0.00', '20800.00', '1', '1', '2020-10-29 09:16:30', NULL, NULL, '1'),
(239, '9989479428', 'INV', '2020-10-29', '102030000004', 'Customer credit for Paid Amount For Customer Invoice NO- 1018 Customer- HAMZA LABORATORIES', '0.00', '20800.00', '1', '1', '2020-10-29 09:16:30', NULL, NULL, '1'),
(240, '9989479428', 'INV', '2020-10-29', '1020101', 'Cash in Hand in Sale for Invoice No - 1018 customer- HAMZA LABORATORIES', '20800.00', '0.00', '1', '1', '2020-10-29 09:16:30', NULL, NULL, '1'),
(241, '2QKL1CZDEA', 'LNR', '2020-10-29', '10203020003', 'Loan for .RAHMAN HOSSAIN', '17000.00', '0.00', '1', '1', '2020-10-29 09:17:56', NULL, NULL, '1'),
(242, '2QKL1CZDEA', 'LNR', '2020-10-29', '1020101', 'Cash in Hand Credit For RAHMAN HOSSAIN', '0.00', '17000.00', '1', '1', '2020-10-29 09:17:56', NULL, NULL, '1'),
(243, 'CR-10', 'CR', '2020-10-29', '102030000006', 'MAKING BILL', '0.00', '24460.00', '1', '1', '2020-10-29 09:19:08', NULL, NULL, '1'),
(244, 'CR-10', 'CR', '2020-10-29', '1020101', 'Cash in Hand For  EXCELANT SURVICE', '24460.00', '0.00', '1', '1', '2020-10-29 09:19:08', NULL, NULL, '1'),
(245, '6455499426', 'INV', '2020-10-29', '10107', 'Inventory credit For Invoice No1019', '0.00', '10000.00', '1', '1', '2020-10-29 09:23:27', NULL, NULL, '1'),
(246, '6455499426', 'INV', '2020-10-29', '102030000008', 'Customer debit For Invoice No -  1019 Customer sohag', '20000.00', '0.00', '1', '1', '2020-10-29 09:23:27', NULL, NULL, '1'),
(247, '6455499426', 'INVOICE', '2020-10-29', '303', 'Sale Income For Invoice NO - 1019 Customer sohag', '0.00', '20000.00', '1', '1', '2020-10-29 09:23:27', NULL, NULL, '1'),
(248, '5323585988', 'INV', '2020-11-02', '10107', 'Inventory credit For Invoice No1020', '0.00', '310.50', '1', 'op1aw75qMlS1et8', '2020-11-02 02:49:34', NULL, NULL, '1'),
(249, '5323585988', 'INV', '2020-11-02', '102030000001', 'Customer debit For Invoice No -  1020 Customer Walking Customer', '1150.00', '0.00', '1', 'op1aw75qMlS1et8', '2020-11-02 02:49:34', NULL, NULL, '1'),
(250, '5323585988', 'INVOICE', '2020-11-02', '303', 'Sale Income For Invoice NO - 1020 Customer Walking Customer', '0.00', '1150.00', '1', 'op1aw75qMlS1et8', '2020-11-02 02:49:34', NULL, NULL, '1'),
(251, '5323585988', 'INV', '2020-11-02', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1020 Customer- Walking Customer', '0.00', '1150.00', '1', 'op1aw75qMlS1et8', '2020-11-02 02:49:34', NULL, NULL, '1'),
(252, '5323585988', 'INV', '2020-11-02', '1020101', 'Cash in Hand in Sale for Invoice No - 1020 customer- Walking Customer', '1150.00', '0.00', '1', 'op1aw75qMlS1et8', '2020-11-02 02:49:34', NULL, NULL, '1'),
(253, '8711293228', 'INV', '2020-11-04', '10107', 'Inventory credit For Invoice No1021', '0.00', '50.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 00:54:12', NULL, NULL, '1'),
(254, '8711293228', 'INV', '2020-11-04', '102030000001', 'Customer debit For Invoice No -  1021 Customer Walking Customer', '0.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 00:54:12', NULL, NULL, '1'),
(255, '8711293228', 'INVOICE', '2020-11-04', '303', 'Sale Income For Invoice NO - 1021 Customer Walking Customer', '0.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 00:54:12', NULL, NULL, '1'),
(256, '20201104012122', 'Purchase', '2020-11-04', '10107', 'Inventory Debit For Supplier Fran Company', '4500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:21:22', NULL, NULL, '1'),
(257, '20201104012122', 'Purchase', '2020-11-04', '502000005', 'Supplier .Fran Company', '0.00', '4500.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 00:00:00', NULL, NULL, '1'),
(258, '20201104012122', 'Purchase', '2020-11-04', '402', 'Company Credit For  Fran Company', '4500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:21:22', NULL, NULL, '1'),
(259, '20201104012122', 'Purchase', '2020-11-04', '1020101', 'Cash in Hand For Supplier Fran Company', '0.00', '4500.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:21:22', NULL, NULL, '1'),
(260, '20201104012122', 'Purchase', '2020-11-04', '502000005', 'Supplier .Fran Company', '4500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 00:00:00', NULL, NULL, '1'),
(261, '3949193149', 'INV', '2020-11-04', '10107', 'Inventory credit For Invoice No1022', '0.00', '450.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:29:12', NULL, NULL, '1'),
(262, '3949193149', 'INV', '2020-11-04', '102030000001', 'Customer debit For Invoice No -  1022 Customer Walking Customer', '500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:29:12', NULL, NULL, '1'),
(263, '3949193149', 'INVOICE', '2020-11-04', '303', 'Sale Income For Invoice NO - 1022 Customer Walking Customer', '0.00', '500.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:29:12', NULL, NULL, '1'),
(264, '3949193149', 'INV', '2020-11-04', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1022 Customer- Walking Customer', '0.00', '500.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:29:12', NULL, NULL, '1'),
(265, '3949193149', 'INV', '2020-11-04', '1020101', 'Cash in Hand in Sale for Invoice No - 1022 customer- Walking Customer', '500.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:29:12', NULL, NULL, '1'),
(266, '3949193149', 'Return', '2020-11-04', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '200.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-04 01:32:50', NULL, NULL, '1'),
(267, '4692693835', 'INV', '2020-11-08', '10107', 'Inventory credit For Invoice No1023', '0.00', '135.00', '1', '1', '2020-11-08 06:33:27', NULL, NULL, '1'),
(268, '4692693835', 'INV', '2020-11-08', '102030000001', 'Customer debit For Invoice No -  1023 Customer Walking Customer', '500.00', '0.00', '1', '1', '2020-11-08 06:33:27', NULL, NULL, '1'),
(269, '4692693835', 'INVOICE', '2020-11-08', '303', 'Sale Income For Invoice NO - 1023 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-11-08 06:33:27', NULL, NULL, '1'),
(270, '3223181446', 'INV', '2020-11-08', '10107', 'Inventory credit For Invoice No1024', '0.00', '9000.00', '1', '1', '2020-11-08 06:34:57', NULL, NULL, '1'),
(271, '3223181446', 'INV', '2020-11-08', '102030000004', 'Customer debit For Invoice No -  1024 Customer HAMZA LABORATORIES', '11000.00', '0.00', '1', '1', '2020-11-08 06:34:57', NULL, NULL, '1'),
(272, '3223181446', 'INVOICE', '2020-11-08', '303', 'Sale Income For Invoice NO - 1024 Customer HAMZA LABORATORIES', '0.00', '11000.00', '1', '1', '2020-11-08 06:34:57', NULL, NULL, '1'),
(273, 'N34P4G4Z1H', 'PR Balance', '2020-11-10', '102030000010', 'Customer debit For Hridoy', '6000.00', '0.00', '1', '1', '2020-11-10 07:45:48', NULL, NULL, '1'),
(274, 'N34P4G4Z1H', 'PR Balance', '2020-11-10', '10107', 'Inventory credit For Old sale ForHridoy', '0.00', '6000.00', '1', '1', '2020-11-10 07:45:48', NULL, NULL, '1'),
(275, '20201112064251', 'Expense', '2020-11-12', '405', 'OFFICE Expense 20201112064251', '1000.00', '0.00', '1', '1', '2020-11-12 06:42:51', NULL, NULL, '1'),
(276, '20201112064251', 'Expense', '2020-11-12', '1020101', 'OFFICE Expense20201112064251', '0.00', '1000.00', '1', '1', '2020-11-12 06:42:51', NULL, NULL, '1'),
(277, '20201115030041', 'Expense', '2020-11-15', '407', 'Pot Expense 20201115030041', '1000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-15 03:00:41', NULL, NULL, '1'),
(278, '20201115030041', 'Expense', '2020-11-15', '1020101', 'Pot Expense20201115030041', '0.00', '1000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-15 03:00:41', NULL, NULL, '1'),
(279, 'D39M8TS26F', 'Advance', '2020-11-15', '102030000002', 'Customer Advance For  Daffodil prass', '1000.00', '0.00', '1', '1', '2020-11-15 06:32:34', NULL, NULL, '1'),
(280, 'D39M8TS26F', 'Advance', '2020-11-15', '1020101', 'Cash in Hand  For Daffodil prass Advance', '1000.00', '0.00', '1', '1', '2020-11-15 06:32:34', NULL, NULL, '1'),
(281, '4667421119', 'INV', '2020-11-15', '10107', 'Inventory credit For Invoice No1025', '0.00', '2500.00', '1', '1', '2020-11-15 06:41:07', NULL, NULL, '1'),
(282, '4667421119', 'INV', '2020-11-15', '102030000002', 'Customer debit For Invoice No -  1025 Customer Daffodil prass', '5000.00', '0.00', '1', '1', '2020-11-15 06:41:07', NULL, NULL, '1'),
(283, '4667421119', 'INVOICE', '2020-11-15', '303', 'Sale Income For Invoice NO - 1025 Customer Daffodil prass', '0.00', '5000.00', '1', '1', '2020-11-15 06:41:07', NULL, NULL, '1'),
(284, '9RPFF9XBMI', 'Advance', '2020-11-15', '102030000002', 'Customer Advance For  Daffodil prass', '1000.00', '0.00', '1', '1', '2020-11-15 06:42:55', NULL, NULL, '1'),
(285, '9RPFF9XBMI', 'Advance', '2020-11-15', '1020101', 'Cash in Hand  For Daffodil prass Advance', '1000.00', '0.00', '1', '1', '2020-11-15 06:42:55', NULL, NULL, '1'),
(286, 'RZHJLVAYEE', 'Advance', '2020-11-15', '102030000002', 'Customer Advance For  Daffodil prass', '0.00', '2000.00', '1', '1', '2020-11-15 06:54:17', NULL, NULL, '1'),
(287, 'RZHJLVAYEE', 'Advance', '2020-11-15', '1020101', 'Cash in Hand  For Daffodil prass Advance', '0.00', '2000.00', '1', '1', '2020-11-15 06:54:17', NULL, NULL, '1'),
(288, 'CR-11', 'CR', '2020-11-18', '102030000003', '', '0.00', '10000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-18 01:46:48', NULL, NULL, '1'),
(289, 'CR-11', 'CR', '2020-11-18', '1020101', 'Cash in Hand For  jamuna industrires', '10000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-18 01:46:48', NULL, NULL, '1'),
(290, 'CR-12', 'CR', '2020-11-21', '102030000001', '', '0.00', '50000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-21 10:58:34', NULL, NULL, '1'),
(291, 'CR-12', 'CR', '2020-11-21', '1020101', 'Cash in Hand For  Walking Customer', '50000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-21 10:58:34', NULL, NULL, '1'),
(292, '20201122024218', 'Purchase', '2020-11-22', '10107', 'Inventory Debit For Supplier amir Group', '86000.00', '0.00', '1', '1', '2020-11-22 02:42:18', NULL, NULL, '1'),
(293, '20201122024218', 'Purchase', '2020-11-22', '502000008', 'Supplier .amir Group', '0.00', '86000.00', '1', '1', '2020-11-22 00:00:00', NULL, NULL, '1'),
(294, '20201122024218', 'Purchase', '2020-11-22', '402', 'Company Credit For  amir Group', '86000.00', '0.00', '1', '1', '2020-11-22 02:42:18', NULL, NULL, '1'),
(295, '20201122024218', 'Purchase', '2020-11-22', '1020101', 'Cash in Hand For Supplier amir Group', '0.00', '86000.00', '1', '1', '2020-11-22 02:42:18', NULL, NULL, '1'),
(296, '20201122024218', 'Purchase', '2020-11-22', '502000008', 'Supplier .amir Group', '86000.00', '0.00', '1', '1', '2020-11-22 00:00:00', NULL, NULL, '1'),
(303, '20201122025946', 'Expense', '2020-11-22', '408', 'ofiice Expense 20201122025946', '200.00', '0.00', '1', '1', '2020-11-22 02:59:46', NULL, NULL, '1'),
(304, '20201122025946', 'Expense', '2020-11-22', '1020101', 'ofiice Expense20201122025946', '0.00', '200.00', '1', '1', '2020-11-22 02:59:46', NULL, NULL, '1'),
(305, '20201122063440', 'Purchase', '2020-11-22', '10107', 'Inventory Debit For Supplier Nokia company', '400000.00', '0.00', '1', '1', '2020-11-22 06:34:40', NULL, NULL, '1'),
(306, '20201122063440', 'Purchase', '2020-11-22', '502000009', 'Supplier .Nokia company', '0.00', '400000.00', '1', '1', '2020-11-22 00:00:00', NULL, NULL, '1'),
(307, '20201122063440', 'Purchase', '2020-11-22', '402', 'Company Credit For  Nokia company', '400000.00', '0.00', '1', '1', '2020-11-22 06:34:40', NULL, NULL, '1'),
(308, '20201122063440', 'Purchase', '2020-11-22', '1020101', 'Cash in Hand For Supplier Nokia company', '0.00', '400000.00', '1', '1', '2020-11-22 06:34:40', NULL, NULL, '1'),
(309, '20201122063440', 'Purchase', '2020-11-22', '502000009', 'Supplier .Nokia company', '400000.00', '0.00', '1', '1', '2020-11-22 00:00:00', NULL, NULL, '1'),
(310, '8712662993', 'INV', '2020-11-22', '10107', 'Inventory credit For Invoice No1027', '0.00', '40000.00', '1', '1', '2020-11-22 06:44:56', NULL, NULL, '1'),
(311, '8712662993', 'INV', '2020-11-22', '102030000012', 'Customer debit For Invoice No -  1027 Customer sohag1', '49800.00', '0.00', '1', '1', '2020-11-22 06:44:56', NULL, NULL, '1'),
(312, '8712662993', 'INVOICE', '2020-11-22', '303', 'Sale Income For Invoice NO - 1027 Customer sohag1', '0.00', '49800.00', '1', '1', '2020-11-22 06:44:56', NULL, NULL, '1'),
(313, '8712662993', 'INV', '2020-11-22', '102030000012', 'Customer credit for Paid Amount For Customer Invoice NO- 1027 Customer- sohag1', '0.00', '49800.00', '1', '1', '2020-11-22 06:44:56', NULL, NULL, '1'),
(314, '8712662993', 'INV', '2020-11-22', '1020101', 'Cash in Hand in Sale for Invoice No - 1027 customer- sohag1', '49800.00', '0.00', '1', '1', '2020-11-22 06:44:56', NULL, NULL, '1'),
(315, '8712662993', 'Return', '2020-11-22', '102030000012', 'Customer debit For Return sohag1', '0.00', '25000.00', '1', '1', '2020-11-22 06:48:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(316, '8712662993', 'Return', '2020-11-22', '102030000012', 'Customer debit For Return sohag1', '0.00', '25000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-22 10:19:28', NULL, NULL, '1'),
(317, 'PM-2', 'PM', '2020-11-22', '502000005', '', '50000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-22 11:52:34', NULL, NULL, '1'),
(318, 'YKWOXGM5SC', 'PR Balance', '2020-11-22', '102030000013', 'Customer debit For Farid Uddin', '100000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-22 11:55:22', NULL, NULL, '1'),
(319, 'YKWOXGM5SC', 'PR Balance', '2020-11-22', '10107', 'Inventory credit For Old sale ForFarid Uddin', '0.00', '100000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-22 11:55:22', NULL, NULL, '1'),
(320, '20201123082040', 'Purchase', '2020-11-23', '10107', 'Inventory Debit For Supplier borsa mobil', '44900.00', '0.00', '1', '1', '2020-11-23 08:20:40', NULL, NULL, '1'),
(321, '20201123082040', 'Purchase', '2020-11-23', '502000010', 'Supplier .borsa mobil', '0.00', '44900.00', '1', '1', '2020-11-23 00:00:00', NULL, NULL, '1'),
(322, '20201123082040', 'Purchase', '2020-11-23', '402', 'Company Credit For  borsa mobil', '44900.00', '0.00', '1', '1', '2020-11-23 08:20:40', NULL, NULL, '1'),
(323, '20201123082040', 'Purchase', '2020-11-23', '1020101', 'Cash in Hand For Supplier borsa mobil', '0.00', '44900.00', '1', '1', '2020-11-23 08:20:40', NULL, NULL, '1'),
(324, '20201123082040', 'Purchase', '2020-11-23', '502000010', 'Supplier .borsa mobil', '44900.00', '0.00', '1', '1', '2020-11-23 00:00:00', NULL, NULL, '1'),
(325, '9246766563', 'INV', '2020-11-23', '10107', 'Inventory credit For Invoice No1028', '0.00', '2250.00', '1', '1', '2020-11-23 08:23:27', NULL, NULL, '1'),
(326, '9246766563', 'INV', '2020-11-23', '102030000015', 'Customer debit For Invoice No -  1028 Customer kamal', '2500.00', '0.00', '1', '1', '2020-11-23 08:23:27', NULL, NULL, '1'),
(327, '9246766563', 'INVOICE', '2020-11-23', '303', 'Sale Income For Invoice NO - 1028 Customer kamal', '0.00', '2500.00', '1', '1', '2020-11-23 08:23:27', NULL, NULL, '1'),
(328, '9246766563', 'INV', '2020-11-23', '102030000015', 'Customer credit for Paid Amount For Customer Invoice NO- 1028 Customer- kamal', '0.00', '2500.00', '1', '1', '2020-11-23 08:23:27', NULL, NULL, '1'),
(329, '9246766563', 'INV', '2020-11-23', '1020101', 'Cash in Hand in Sale for Invoice No - 1028 customer- kamal', '2500.00', '0.00', '1', '1', '2020-11-23 08:23:27', NULL, NULL, '1'),
(330, '9246766563', 'Return', '2020-11-23', '102030000015', 'Customer debit For Return kamal', '0.00', '1000.00', '1', '1', '2020-11-23 08:25:25', NULL, NULL, '1'),
(331, '20201123082822', 'Expense', '2020-11-23', '409', 'trasport Expense 20201123082822', '1000.00', '0.00', '1', '1', '2020-11-23 08:28:22', NULL, NULL, '1'),
(332, '20201123082822', 'Expense', '2020-11-23', '1020101', 'trasport Expense20201123082822', '0.00', '1000.00', '1', '1', '2020-11-23 08:28:22', NULL, NULL, '1'),
(333, '4966851419', 'INV', '2020-11-23', '10107', 'Inventory credit For Invoice No1026', '0.00', '0.00', '1', '1', '2020-11-23 23:41:00', NULL, NULL, '1'),
(334, '4966851419', 'INVOICE', '2020-11-23', '303', 'Sale Income From Invoice NO - 1026 Customer sumon', '0.00', '0.00', '1', '1', '2020-11-23 23:41:00', NULL, NULL, '1'),
(335, '4966851419', 'INV', '2020-11-23', '102030000011', 'Customer debit For Invoice NO - 1026 customer-  sumon', '0.00', '0.00', '1', '1', '2020-11-23 23:41:00', NULL, NULL, '1'),
(336, '4966851419', 'INV', '2020-11-23', '102030000011', 'Customer credit for Paid Amount For Invoice No -1026 Customer sumon', '0.00', '0.00', '1', '1', '2020-11-23 23:41:00', NULL, NULL, '1'),
(337, '4966851419', 'INV', '2020-11-23', '1020101', 'Cash in Hand for sale for Invoice No -1026 Customer sumon', '0.00', '0.00', '1', '1', '2020-11-23 23:41:00', NULL, NULL, '1'),
(341, '9411521384', 'INV', '2020-11-23', '10107', 'Inventory credit For Invoice No1029', '0.00', '0.00', '1', '1', '2020-11-23 23:50:10', NULL, NULL, '1'),
(342, '9411521384', 'INVOICE', '2020-11-23', '303', 'Sale Income From Invoice NO - 1029 Customer sabbir1', '0.00', '0.00', '1', '1', '2020-11-23 23:50:10', NULL, NULL, '1'),
(343, '9411521384', 'INV', '2020-11-23', '102030000016', 'Customer debit For Invoice NO - 1029 customer-  sabbir1', '0.00', '0.00', '1', '1', '2020-11-23 23:50:10', NULL, NULL, '1'),
(344, '2279386661', 'INV', '2020-11-23', '10107', 'Inventory credit For Invoice No1030', '0.00', '1700.00', '1', '1', '2020-11-23 23:54:58', NULL, NULL, '1'),
(345, '2279386661', 'INV', '2020-11-23', '102030000016', 'Customer debit For Invoice No -  1030 Customer sabbir1', '3400.00', '0.00', '1', '1', '2020-11-23 23:54:58', NULL, NULL, '1'),
(346, '2279386661', 'INVOICE', '2020-11-23', '303', 'Sale Income For Invoice NO - 1030 Customer sabbir1', '0.00', '3400.00', '1', '1', '2020-11-23 23:54:58', NULL, NULL, '1'),
(350, '3391187832', 'INV', '2020-11-23', '10107', 'Inventory credit For Invoice No1031', '0.00', '0.00', '1', '1', '2020-11-23 23:57:31', NULL, NULL, '1'),
(351, '3391187832', 'INVOICE', '2020-11-23', '303', 'Sale Income From Invoice NO - 1031 Customer sabbir1', '0.00', '0.00', '1', '1', '2020-11-23 23:57:31', NULL, NULL, '1'),
(352, '3391187832', 'INV', '2020-11-23', '102030000016', 'Customer debit For Invoice NO - 1031 customer-  sabbir1', '0.00', '0.00', '1', '1', '2020-11-23 23:57:31', NULL, NULL, '1'),
(353, '20201124024120', 'Purchase', '2020-11-24', '10107', 'Inventory Debit For Supplier Nokia company', '201000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-24 02:41:20', NULL, NULL, '1'),
(354, '20201124024120', 'Purchase', '2020-11-24', '502000009', 'Supplier .Nokia company', '0.00', '201000.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-24 00:00:00', NULL, NULL, '1'),
(355, '20201124024120', 'Purchase', '2020-11-24', '402', 'Company Credit For  Nokia company', '201000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-24 02:41:20', NULL, NULL, '1'),
(356, '5176693167', 'INV', '2020-11-25', '10107', 'Inventory credit For Invoice No1032', '0.00', '17200.00', '1', '1', '2020-11-25 03:07:24', NULL, NULL, '1'),
(357, '5176693167', 'INV', '2020-11-25', '102030000001', 'Customer debit For Invoice No -  1032 Customer Walking Customer', '19500.00', '0.00', '1', '1', '2020-11-25 03:07:24', NULL, NULL, '1'),
(358, '5176693167', 'INVOICE', '2020-11-25', '303', 'Sale Income For Invoice NO - 1032 Customer Walking Customer', '0.00', '19500.00', '1', '1', '2020-11-25 03:07:24', NULL, NULL, '1'),
(359, '5176693167', 'INV', '2020-11-25', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1032 Customer- Walking Customer', '0.00', '19500.00', '1', '1', '2020-11-25 03:07:24', NULL, NULL, '1'),
(360, '5176693167', 'INV', '2020-11-25', '1020101', 'Cash in Hand in Sale for Invoice No - 1032 customer- Walking Customer', '19500.00', '0.00', '1', '1', '2020-11-25 03:07:24', NULL, NULL, '1'),
(361, 'R6QDI9KBE9', 'Advance', '2020-11-25', '102030000004', 'Customer Advance For  HAMZA LABORATORIES', '0.00', '50000.00', '1', '1', '2020-11-25 03:16:44', NULL, NULL, '1'),
(362, 'R6QDI9KBE9', 'Advance', '2020-11-25', '1020101', 'Cash in Hand  For HAMZA LABORATORIES Advance', '0.00', '50000.00', '1', '1', '2020-11-25 03:16:44', NULL, NULL, '1'),
(363, '20201126004949', 'Purchase', '2020-11-26', '10107', 'Inventory Debit For Supplier vivo', '91400.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-26 00:49:49', NULL, NULL, '1'),
(364, '20201126004949', 'Purchase', '2020-11-26', '502000011', 'Supplier .vivo', '0.00', '91400.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-26 00:00:00', NULL, NULL, '1'),
(365, '20201126004949', 'Purchase', '2020-11-26', '402', 'Company Credit For  vivo', '91400.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-26 00:49:49', NULL, NULL, '1'),
(366, '20201126004949', 'Purchase', '2020-11-26', '1020101', 'Cash in Hand For Supplier vivo', '0.00', '91400.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-26 00:49:49', NULL, NULL, '1'),
(367, '20201126004949', 'Purchase', '2020-11-26', '502000011', 'Supplier .vivo', '91400.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-11-26 00:00:00', NULL, NULL, '1'),
(368, 'November 2020', 'Salary', '2020-11-27', '502040001', 'Employee Salary Generate Month of November 2020', '0.00', NULL, '1', '1', '2020-11-27 09:01:32', NULL, NULL, '1'),
(369, 'November 2020', 'Salary', '2020-11-27', '502040003', 'Employee Salary Generate Month of November 2020', '0.00', '0.00', '1', '1', '2020-11-27 09:01:32', NULL, NULL, '1'),
(370, 'November 2020', 'Salary', '2020-11-27', '502040004', 'Employee Salary Generate Month of November 2020', '0.00', '13860.00', '1', '1', '2020-11-27 09:01:32', NULL, NULL, '1'),
(371, 'November 2020', 'Salary', '2020-11-27', '502040006', 'Employee Salary Generate Month of November 2020', '0.00', '0.00', '1', '1', '2020-11-27 09:01:33', NULL, NULL, '1'),
(372, 'November 2020', 'Salary', '2020-11-27', '502040008', 'Employee Salary Generate Month of November 2020', '0.00', '8500.00', '1', '1', '2020-11-27 09:01:33', NULL, NULL, '1'),
(373, '42', 'Salary', '2020-11-27', '1020101', 'Cash in hand Credit For Employee Salary for-  MD.RAHMAN HOSSAIN', '0.00', '8500.00', '1', 'Admin User', '2020-11-27 09:03:16', NULL, NULL, '1'),
(374, '42', 'Salary', '2020-11-27', '403', 'Salary paid For- MD.RAHMAN HOSSAIN', '8500.00', '0.00', '1', 'Admin User', '2020-11-27 09:03:16', NULL, NULL, '1'),
(375, '42', 'Salary', '2020-11-27', '502040008', 'Salary paid For- MD.RAHMAN HOSSAIN', '8500.00', '0.00', '1', 'Admin User', '2020-11-27 09:03:16', NULL, NULL, '1'),
(376, '41', 'Salary', '2020-11-27', '1020101', 'Cash in hand Credit For Employee Salary for-  sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-11-27 09:03:31', NULL, NULL, '1'),
(377, '41', 'Salary', '2020-11-27', '403', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-11-27 09:03:31', NULL, NULL, '1'),
(378, '41', 'Salary', '2020-11-27', '502040006', 'Salary paid For- sabbir Mia', '0.00', '0.00', '1', 'Admin User', '2020-11-27 09:03:31', NULL, NULL, '1'),
(379, 'November 2020', 'Salary', '2020-11-27', '502040001', 'Employee Salary Generate Month of November 2020', '0.00', NULL, '1', '1', '2020-11-27 09:10:12', NULL, NULL, '1'),
(380, 'November 2020', 'Salary', '2020-11-27', '502040003', 'Employee Salary Generate Month of November 2020', '0.00', '40000.00', '1', '1', '2020-11-27 09:10:12', NULL, NULL, '1'),
(381, 'November 2020', 'Salary', '2020-11-27', '502040004', 'Employee Salary Generate Month of November 2020', '0.00', '14000.00', '1', '1', '2020-11-27 09:10:12', NULL, NULL, '1'),
(382, 'November 2020', 'Salary', '2020-11-27', '502040006', 'Employee Salary Generate Month of November 2020', '0.00', '20000.00', '1', '1', '2020-11-27 09:10:12', NULL, NULL, '1'),
(383, 'November 2020', 'Salary', '2020-11-27', '502040008', 'Employee Salary Generate Month of November 2020', '0.00', '8500.00', '1', '1', '2020-11-27 09:10:12', NULL, NULL, '1'),
(384, '8946493153', 'INV', '2020-11-29', '10107', 'Inventory credit For Invoice No1033', '0.00', '1350.00', '1', '1', '2020-11-29 00:45:24', NULL, NULL, '1'),
(385, '8946493153', 'INV', '2020-11-29', '102030000011', 'Customer debit For Invoice No -  1033 Customer sumon', '5000.00', '0.00', '1', '1', '2020-11-29 00:45:24', NULL, NULL, '1'),
(386, '8946493153', 'INVOICE', '2020-11-29', '303', 'Sale Income For Invoice NO - 1033 Customer sumon', '0.00', '5000.00', '1', '1', '2020-11-29 00:45:24', NULL, NULL, '1'),
(387, 'CR-13', 'CR', '2020-11-29', '102030000011', '', '0.00', '3000.00', '1', '1', '2020-11-29 00:48:17', NULL, NULL, '1'),
(388, 'CR-13', 'CR', '2020-11-29', '1020101', 'Cash in Hand For  sumon', '3000.00', '0.00', '1', '1', '2020-11-29 00:48:17', NULL, NULL, '1'),
(389, '20201203003037', 'Purchase', '2020-12-03', '10107', 'Inventory Debit For Supplier Grayland', '302000.00', '0.00', '1', '1', '2020-12-03 00:30:37', NULL, NULL, '1'),
(390, '20201203003037', 'Purchase', '2020-12-03', '502000012', 'Supplier .Grayland', '0.00', '302000.00', '1', '1', '2020-12-03 00:00:00', NULL, NULL, '1'),
(391, '20201203003037', 'Purchase', '2020-12-03', '402', 'Company Credit For  Grayland', '302000.00', '0.00', '1', '1', '2020-12-03 00:30:37', NULL, NULL, '1'),
(392, '20201203003037', 'Purchase', '2020-12-03', '1020101', 'Cash in Hand For Supplier Grayland', '0.00', '302000.00', '1', '1', '2020-12-03 00:30:37', NULL, NULL, '1'),
(393, '20201203003037', 'Purchase', '2020-12-03', '502000012', 'Supplier .Grayland', '302000.00', '0.00', '1', '1', '2020-12-03 00:00:00', NULL, NULL, '1'),
(394, '2896726969', 'INV', '2020-12-03', '10107', 'Inventory credit For Invoice No1034', '0.00', '3020.00', '1', '1', '2020-12-03 00:33:40', NULL, NULL, '1'),
(395, '2896726969', 'INV', '2020-12-03', '102030000018', 'Customer debit For Invoice No -  1034 Customer Habib', '3580.00', '0.00', '1', '1', '2020-12-03 00:33:40', NULL, NULL, '1'),
(396, '2896726969', 'INVOICE', '2020-12-03', '303', 'Sale Income For Invoice NO - 1034 Customer Habib', '0.00', '3580.00', '1', '1', '2020-12-03 00:33:40', NULL, NULL, '1'),
(397, '2896726969', 'INV', '2020-12-03', '102030000018', 'Customer credit for Paid Amount For Customer Invoice NO- 1034 Customer- Habib', '0.00', '3000.00', '1', '1', '2020-12-03 00:33:40', NULL, NULL, '1'),
(398, '2896726969', 'INV', '2020-12-03', '1020101', 'Cash in Hand in Sale for Invoice No - 1034 customer- Habib', '3000.00', '0.00', '1', '1', '2020-12-03 00:33:40', NULL, NULL, '1'),
(399, '2896726969', 'Return', '2020-12-03', '102030000018', 'Customer debit For Return Habib', '0.00', '720.00', '1', '1', '2020-12-03 00:38:45', NULL, NULL, '1'),
(400, '20201207042422', 'Purchase', '2020-12-07', '10107', 'Inventory Debit For Supplier Nokia company', '78200.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:24:22', NULL, NULL, '1'),
(401, '20201207042422', 'Purchase', '2020-12-07', '502000009', 'Supplier .Nokia company', '0.00', '78200.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 00:00:00', NULL, NULL, '1'),
(402, '20201207042422', 'Purchase', '2020-12-07', '402', 'Company Credit For  Nokia company', '78200.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:24:22', NULL, NULL, '1'),
(403, '8644352651', 'INV', '2020-12-07', '10107', 'Inventory credit For Invoice No1035', '0.00', '49300.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:27:01', NULL, NULL, '1'),
(404, '8644352651', 'INV', '2020-12-07', '102030000001', 'Customer debit For Invoice No -  1035 Customer Walking Customer', '51620.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:27:01', NULL, NULL, '1'),
(405, '8644352651', 'INVOICE', '2020-12-07', '303', 'Sale Income For Invoice NO - 1035 Customer Walking Customer', '0.00', '51620.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:27:01', NULL, NULL, '1'),
(406, '8644352651', 'INV', '2020-12-07', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1035 Customer- Walking Customer', '0.00', '51620.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:27:01', NULL, NULL, '1'),
(407, '8644352651', 'INV', '2020-12-07', '1020101', 'Cash in Hand in Sale for Invoice No - 1035 customer- Walking Customer', '51620.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 04:27:01', NULL, NULL, '1'),
(408, '8227776138', 'INV', '2020-12-07', '10107', 'Inventory credit For Invoice No1036', '0.00', '850.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 05:26:28', NULL, NULL, '1'),
(409, '8227776138', 'INV', '2020-12-07', '102030000001', 'Customer debit For Invoice No -  1036 Customer Walking Customer', '1000.00', '0.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 05:26:28', NULL, NULL, '1'),
(410, '8227776138', 'INVOICE', '2020-12-07', '303', 'Sale Income For Invoice NO - 1036 Customer Walking Customer', '0.00', '1000.00', '1', 'X4GxFoOrU19zZ0D', '2020-12-07 05:26:28', NULL, NULL, '1'),
(411, '20201213065846', 'Purchase', '2020-12-13', '10107', 'Inventory Debit For Supplier Grayland', '375.00', '0.00', '1', '1', '2020-12-13 06:58:46', NULL, NULL, '1'),
(412, '20201213065846', 'Purchase', '2020-12-13', '502000012', 'Supplier .Grayland', '0.00', '375.00', '1', '1', '2020-12-13 00:00:00', NULL, NULL, '1'),
(413, '20201213065846', 'Purchase', '2020-12-13', '402', 'Company Credit For  Grayland', '375.00', '0.00', '1', '1', '2020-12-13 06:58:46', NULL, NULL, '1'),
(414, '20201213065846', 'Purchase', '2020-12-13', '1020101', 'Cash in Hand For Supplier Grayland', '0.00', '375.00', '1', '1', '2020-12-13 06:58:46', NULL, NULL, '1'),
(415, '20201213065846', 'Purchase', '2020-12-13', '502000012', 'Supplier .Grayland', '375.00', '0.00', '1', '1', '2020-12-13 00:00:00', NULL, NULL, '1'),
(416, '7537172341', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1037', '0.00', '150.00', '1', '1', '2020-12-14 01:33:23', NULL, NULL, '1'),
(417, '7537172341', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1037 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-14 01:33:23', NULL, NULL, '1'),
(418, '7537172341', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1037 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-14 01:33:23', NULL, NULL, '1'),
(419, '7914248122', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1038', '0.00', '150.00', '1', '1', '2020-12-14 01:33:24', NULL, NULL, '1'),
(420, '7914248122', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1038 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-14 01:33:24', NULL, NULL, '1'),
(421, '7914248122', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1038 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-14 01:33:24', NULL, NULL, '1'),
(422, '3216944281', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1039', '0.00', '150.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(423, '3216944281', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1039 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(424, '3216944281', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1039 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(425, '2835633842', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1040', '0.00', '150.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(426, '2835633842', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1040 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(427, '2835633842', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1040 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-14 01:41:40', NULL, NULL, '1'),
(428, '1555176442', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1041', '0.00', '10000.00', '1', '1', '2020-12-14 01:43:15', NULL, NULL, '1'),
(429, '1555176442', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1041 Customer Walking Customer', '20000.00', '0.00', '1', '1', '2020-12-14 01:43:15', NULL, NULL, '1'),
(430, '1555176442', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1041 Customer Walking Customer', '0.00', '20000.00', '1', '1', '2020-12-14 01:43:15', NULL, NULL, '1'),
(431, '8911652418', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1042', '0.00', '10000.00', '1', '1', '2020-12-14 01:43:32', NULL, NULL, '1'),
(432, '8911652418', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1042 Customer Walking Customer', '20150.00', '0.00', '1', '1', '2020-12-14 01:43:32', NULL, NULL, '1'),
(433, '8911652418', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1042 Customer Walking Customer', '0.00', '20150.00', '1', '1', '2020-12-14 01:43:32', NULL, NULL, '1'),
(434, '4799127213', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1043', '0.00', '1770.00', '1', '1', '2020-12-14 01:55:30', NULL, NULL, '1'),
(435, '4799127213', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1043 Customer Walking Customer', '2210.00', '0.00', '1', '1', '2020-12-14 01:55:30', NULL, NULL, '1'),
(436, '4799127213', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1043 Customer Walking Customer', '0.00', '2210.00', '1', '1', '2020-12-14 01:55:30', NULL, NULL, '1'),
(440, '3197978851', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1044', '0.00', '1771.35', '1', '1', '2020-12-14 01:57:52', NULL, NULL, '1'),
(441, '3197978851', 'INVOICE', '2020-12-14', '303', 'Sale Income From Invoice NO - 1044 Customer Walking Customer', '0.00', '2055.00', '1', '1', '2020-12-14 01:57:52', NULL, NULL, '1'),
(442, '3197978851', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice NO - 1044 customer-  Walking Customer', '2055.00', '0.00', '1', '1', '2020-12-14 01:57:52', NULL, NULL, '1'),
(443, '3197978851', 'Return', '2020-12-14', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1950.00', '1', '1', '2020-12-14 01:58:41', NULL, NULL, '1'),
(444, '20201214020226', 'Expense', '2020-12-14', '409', 'trasport Expense 20201214020226', '1000.00', '0.00', '1', '1', '2020-12-14 02:02:26', NULL, NULL, '1'),
(445, '20201214020226', 'Expense', '2020-12-14', '1020101', 'trasport Expense20201214020226', '0.00', '1000.00', '1', '1', '2020-12-14 02:02:26', NULL, NULL, '1'),
(446, '5839676657', 'INV', '2020-12-14', '10107', 'Inventory credit For Invoice No1045', '0.00', '1000.00', '1', '1', '2020-12-14 06:31:23', NULL, NULL, '1'),
(447, '5839676657', 'INV', '2020-12-14', '102030000001', 'Customer debit For Invoice No -  1045 Customer Walking Customer', '2000.00', '0.00', '1', '1', '2020-12-14 06:31:23', NULL, NULL, '1'),
(448, '5839676657', 'INVOICE', '2020-12-14', '303', 'Sale Income For Invoice NO - 1045 Customer Walking Customer', '0.00', '2000.00', '1', '1', '2020-12-14 06:31:23', NULL, NULL, '1'),
(449, '5839676657', 'INV', '2020-12-14', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1045 Customer- Walking Customer', '0.00', '1500.00', '1', '1', '2020-12-14 06:31:23', NULL, NULL, '1'),
(450, '5839676657', 'INV', '2020-12-14', '1020101', 'Cash in Hand in Sale for Invoice No - 1045 customer- Walking Customer', '1500.00', '0.00', '1', '1', '2020-12-14 06:31:23', NULL, NULL, '1'),
(451, '5839676657', 'Return', '2020-12-14', '102030000001', 'Customer debit For Return Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-14 06:32:36', NULL, NULL, '1'),
(452, '8SZOPNJN56', 'Advance', '2020-12-14', '502000013', 'supplier Advance For RAK', '5000.00', '0.00', '1', '1', '2020-12-14 06:54:07', NULL, NULL, '1'),
(453, '8SZOPNJN56', 'Advance', '2020-12-14', '1020101', 'Cash in Hand  For RAK Advance', '5000.00', '0.00', '1', '1', '2020-12-14 06:54:07', NULL, NULL, '1'),
(454, 'CHV-1', 'AD', '2020-12-14', '1020101', '', '0.00', '5000.00', '1', '1', '2020-12-14 07:02:37', NULL, NULL, '1'),
(455, '7545864176', 'INV', '2020-12-22', '10107', 'Inventory credit For Invoice No1046', '0.00', '50.00', '1', '1', '2020-12-22 01:10:10', NULL, NULL, '1'),
(456, '7545864176', 'INV', '2020-12-22', '102030000001', 'Customer debit For Invoice No -  1046 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-22 01:10:10', NULL, NULL, '1'),
(457, '7545864176', 'INVOICE', '2020-12-22', '303', 'Sale Income For Invoice NO - 1046 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-22 01:10:10', NULL, NULL, '1'),
(458, '7545864176', 'INV', '2020-12-22', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1046 Customer- Walking Customer', '0.00', '100.00', '1', '1', '2020-12-22 01:10:10', NULL, NULL, '1'),
(459, '7545864176', 'INV', '2020-12-22', '1020101', 'Cash in Hand in Sale for Invoice No - 1046 customer- Walking Customer', '100.00', '0.00', '1', '1', '2020-12-22 01:10:10', NULL, NULL, '1'),
(472, '5979566491', 'INV', '2020-12-25', '10107', 'Inventory credit For Invoice No1005', '0.00', '675.00', '1', '1', '2020-12-25 21:19:51', NULL, NULL, '1'),
(473, '5979566491', 'INVOICE', '2020-12-25', '303', 'Sale Income From Invoice NO - 1005 Customer Walking Customer', '0.00', '2500.00', '1', '1', '2020-12-25 21:19:51', NULL, NULL, '1'),
(474, '5979566491', 'INV', '2020-12-25', '102030000001', 'Customer debit For Invoice NO - 1005 customer-  Walking Customer', '2500.00', '0.00', '1', '1', '2020-12-25 21:19:51', NULL, NULL, '1'),
(475, '5979566491', 'INV', '2020-12-25', '102030000001', 'Customer credit for Paid Amount For Invoice No -1005 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-25 21:19:51', NULL, NULL, '1'),
(476, '7388317142', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1006', '0.00', '250.00', '1', '1', '2020-12-26 05:27:56', NULL, NULL, '1'),
(477, '7388317142', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1006 Customer Walking Customer', '500.00', '0.00', '1', '1', '2020-12-26 05:27:56', NULL, NULL, '1'),
(478, '7388317142', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1006 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:27:56', NULL, NULL, '1'),
(479, '7388317142', 'INV', '2020-12-26', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1006 Customer- Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:27:56', NULL, NULL, '1'),
(480, '6531846192', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1007', '0.00', '250.00', '1', '1', '2020-12-26 05:28:05', NULL, NULL, '1'),
(481, '6531846192', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1007 Customer Walking Customer', '500.00', '0.00', '1', '1', '2020-12-26 05:28:05', NULL, NULL, '1'),
(482, '6531846192', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1007 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:28:05', NULL, NULL, '1'),
(483, '6531846192', 'INV', '2020-12-26', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1007 Customer- Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:28:05', NULL, NULL, '1'),
(488, '9983443691', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1008', '0.00', '250.00', '1', '1', '2020-12-26 05:30:55', NULL, NULL, '1'),
(489, '9983443691', 'INVOICE', '2020-12-26', '303', 'Sale Income From Invoice NO - 1008 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:30:55', NULL, NULL, '1'),
(490, '9983443691', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice NO - 1008 customer-  Walking Customer', '500.00', '0.00', '1', '1', '2020-12-26 05:30:55', NULL, NULL, '1'),
(491, '9983443691', 'INV', '2020-12-26', '102030000001', 'Customer credit for Paid Amount For Invoice No -1008 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-12-26 05:30:55', NULL, NULL, '1'),
(492, '7223521844', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1009', '0.00', '200.00', '1', '1', '2020-12-26 05:31:49', NULL, NULL, '1'),
(493, '7223521844', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1009 Customer Walking Customer', '400.00', '0.00', '1', '1', '2020-12-26 05:31:49', NULL, NULL, '1'),
(494, '7223521844', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1009 Customer Walking Customer', '0.00', '400.00', '1', '1', '2020-12-26 05:31:49', NULL, NULL, '1'),
(495, '1643174843', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1010', '0.00', '200.00', '1', '1', '2020-12-26 05:31:56', NULL, NULL, '1'),
(496, '1643174843', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1010 Customer Walking Customer', '400.00', '0.00', '1', '1', '2020-12-26 05:31:56', NULL, NULL, '1'),
(497, '1643174843', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1010 Customer Walking Customer', '0.00', '400.00', '1', '1', '2020-12-26 05:31:56', NULL, NULL, '1'),
(498, '6235725837', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1011', '0.00', '200.00', '1', '1', '2020-12-26 05:32:03', NULL, NULL, '1'),
(499, '6235725837', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1011 Customer Walking Customer', '400.00', '0.00', '1', '1', '2020-12-26 05:32:03', NULL, NULL, '1'),
(500, '6235725837', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1011 Customer Walking Customer', '0.00', '400.00', '1', '1', '2020-12-26 05:32:03', NULL, NULL, '1'),
(501, '2339229348', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1012', '0.00', '100.00', '1', '1', '2020-12-26 05:32:24', NULL, NULL, '1'),
(502, '2339229348', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1012 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-26 05:32:24', NULL, NULL, '1'),
(503, '2339229348', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1012 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-26 05:32:24', NULL, NULL, '1'),
(504, '2339229348', 'INV', '2020-12-26', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1012 Customer- Walking Customer', '0.00', '200.00', '1', '1', '2020-12-26 05:32:24', NULL, NULL, '1'),
(505, '2339229348', 'INV', '2020-12-26', '1020101', 'Cash in Hand in Sale for Invoice No - 1012 customer- Walking Customer', '200.00', '0.00', '1', '1', '2020-12-26 05:32:24', NULL, NULL, '1'),
(506, '5774228663', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1013', '0.00', '100.00', '1', '1', '2020-12-26 05:41:57', NULL, NULL, '1'),
(507, '5774228663', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1013 Customer Walking Customer', '200.00', '0.00', '1', '1', '2020-12-26 05:41:57', NULL, NULL, '1'),
(508, '5774228663', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1013 Customer Walking Customer', '0.00', '200.00', '1', '1', '2020-12-26 05:41:57', NULL, NULL, '1'),
(512, '5238752347', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1014', '0.00', '50.00', '1', '1', '2020-12-26 07:06:41', NULL, NULL, '1'),
(513, '5238752347', 'INVOICE', '2020-12-26', '303', 'Sale Income From Invoice NO - 1014 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-26 07:06:41', NULL, NULL, '1'),
(514, '5238752347', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice NO - 1014 customer-  Walking Customer', '100.00', '0.00', '1', '1', '2020-12-26 07:06:41', NULL, NULL, '1'),
(515, '6237745565', 'INV', '2020-12-26', '10107', 'Inventory credit For Invoice No1015', '0.00', '1000.00', '1', '1', '2020-12-26 12:52:45', NULL, NULL, '1'),
(516, '6237745565', 'INV', '2020-12-26', '102030000001', 'Customer debit For Invoice No -  1015 Customer Walking Customer', '2000.00', '0.00', '1', '1', '2020-12-26 12:52:45', NULL, NULL, '1'),
(517, '6237745565', 'INVOICE', '2020-12-26', '303', 'Sale Income For Invoice NO - 1015 Customer Walking Customer', '0.00', '2000.00', '1', '1', '2020-12-26 12:52:45', NULL, NULL, '1'),
(518, '6237745565', 'INV', '2020-12-26', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1015 Customer- Walking Customer', '0.00', '2000.00', '1', '1', '2020-12-26 12:52:45', NULL, NULL, '1'),
(519, '5936267562', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1016', '0.00', '500.00', '1', '1', '2020-12-27 06:11:40', NULL, NULL, '1'),
(520, '5936267562', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1016 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 06:11:40', NULL, NULL, '1'),
(521, '5936267562', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1016 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 06:11:40', NULL, NULL, '1'),
(522, '2928923843', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1017', '0.00', '500.00', '1', '1', '2020-12-27 06:15:54', NULL, NULL, '1'),
(523, '2928923843', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1017 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 06:15:54', NULL, NULL, '1'),
(524, '2928923843', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1017 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 06:15:54', NULL, NULL, '1'),
(525, '3781862834', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1018', '0.00', '50.00', '1', '1', '2020-12-27 06:16:21', NULL, NULL, '1'),
(526, '3781862834', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1018 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 06:16:21', NULL, NULL, '1'),
(527, '3781862834', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1018 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 06:16:21', NULL, NULL, '1'),
(528, '1259493773', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1019', '0.00', '500.00', '1', '1', '2020-12-27 06:52:05', NULL, NULL, '1'),
(529, '1259493773', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1019 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 06:52:05', NULL, NULL, '1'),
(530, '1259493773', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1019 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 06:52:05', NULL, NULL, '1'),
(531, '9469978311', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1020', '0.00', '50.00', '1', '1', '2020-12-27 06:56:39', NULL, NULL, '1'),
(532, '9469978311', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1020 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 06:56:39', NULL, NULL, '1'),
(533, '9469978311', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1020 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 06:56:39', NULL, NULL, '1'),
(534, '2619219477', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1021', '0.00', '50.00', '1', '1', '2020-12-27 06:59:36', NULL, NULL, '1'),
(535, '2619219477', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1021 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 06:59:36', NULL, NULL, '1'),
(536, '2619219477', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1021 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 06:59:36', NULL, NULL, '1'),
(537, '7536337725', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1022', '0.00', '500.00', '1', '1', '2020-12-27 07:00:58', NULL, NULL, '1'),
(538, '7536337725', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1022 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 07:00:58', NULL, NULL, '1'),
(539, '7536337725', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1022 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 07:00:58', NULL, NULL, '1'),
(540, '1513854528', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1023', '0.00', '50.00', '1', '1', '2020-12-27 07:18:54', NULL, NULL, '1'),
(541, '1513854528', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1023 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 07:18:54', NULL, NULL, '1'),
(542, '1513854528', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1023 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 07:18:54', NULL, NULL, '1'),
(543, '1743457155', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1024', '0.00', '500.00', '1', '1', '2020-12-27 07:49:35', NULL, NULL, '1'),
(544, '1743457155', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1024 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 07:49:35', NULL, NULL, '1'),
(545, '1743457155', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1024 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 07:49:35', NULL, NULL, '1'),
(546, '5519151112', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1025', '0.00', '50.00', '1', '1', '2020-12-27 07:51:53', NULL, NULL, '1'),
(547, '5519151112', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1025 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 07:51:53', NULL, NULL, '1'),
(548, '5519151112', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1025 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 07:51:53', NULL, NULL, '1'),
(549, '9858526781', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1026', '0.00', '500.00', '1', '1', '2020-12-27 08:01:29', NULL, NULL, '1'),
(550, '9858526781', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1026 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 08:01:29', NULL, NULL, '1'),
(551, '9858526781', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1026 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 08:01:29', NULL, NULL, '1'),
(552, '4733252239', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1027', '0.00', '50.00', '1', '1', '2020-12-27 08:12:58', NULL, NULL, '1'),
(553, '4733252239', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1027 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 08:12:58', NULL, NULL, '1'),
(554, '4733252239', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1027 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 08:12:58', NULL, NULL, '1'),
(555, '9619822711', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1028', '0.00', '50.00', '1', '1', '2020-12-27 08:20:01', NULL, NULL, '1'),
(556, '9619822711', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1028 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 08:20:01', NULL, NULL, '1'),
(557, '9619822711', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1028 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 08:20:01', NULL, NULL, '1'),
(558, '6246251629', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1029', '0.00', '50.00', '1', '1', '2020-12-27 08:20:07', NULL, NULL, '1'),
(559, '6246251629', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1029 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 08:20:07', NULL, NULL, '1'),
(560, '6246251629', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1029 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 08:20:07', NULL, NULL, '1'),
(561, '5754665974', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1030', '0.00', '50.00', '1', '1', '2020-12-27 08:20:17', NULL, NULL, '1'),
(562, '5754665974', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1030 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 08:20:17', NULL, NULL, '1'),
(563, '5754665974', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1030 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 08:20:17', NULL, NULL, '1'),
(564, '6996479694', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1031', '0.00', '50.00', '1', '1', '2020-12-27 10:00:18', NULL, NULL, '1'),
(565, '6996479694', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1031 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 10:00:18', NULL, NULL, '1'),
(566, '6996479694', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1031 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 10:00:18', NULL, NULL, '1'),
(567, '6991158413', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1032', '0.00', '500.00', '1', '1', '2020-12-27 10:18:10', NULL, NULL, '1'),
(568, '6991158413', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1032 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 10:18:10', NULL, NULL, '1'),
(569, '6991158413', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1032 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 10:18:10', NULL, NULL, '1'),
(570, '3477537887', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1033', '0.00', '750.00', '1', '1', '2020-12-27 10:20:25', NULL, NULL, '1'),
(571, '3477537887', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1033 Customer Walking Customer', '1500.00', '0.00', '1', '1', '2020-12-27 10:20:25', NULL, NULL, '1'),
(572, '3477537887', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1033 Customer Walking Customer', '0.00', '1500.00', '1', '1', '2020-12-27 10:20:25', NULL, NULL, '1'),
(573, '1349196837', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1034', '0.00', '500.00', '1', '1', '2020-12-27 10:22:40', NULL, NULL, '1'),
(574, '1349196837', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1034 Customer Walking Customer', '990.00', '0.00', '1', '1', '2020-12-27 10:22:40', NULL, NULL, '1'),
(575, '1349196837', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1034 Customer Walking Customer', '0.00', '990.00', '1', '1', '2020-12-27 10:22:40', NULL, NULL, '1'),
(576, '1349196837', 'INV', '2020-12-27', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1034 Customer- Walking Customer', '0.00', '200.00', '1', '1', '2020-12-27 10:22:40', NULL, NULL, '1'),
(577, '1349196837', 'INVOICE', '2020-12-27', '102010201', 'Paid amount for customer  Invoice No - 1034 customer -Walking Customer', '200.00', '0.00', '1', '1', '2020-12-27 10:22:40', NULL, NULL, '1'),
(578, '2517313841', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1035', '0.00', '750.00', '1', '1', '2020-12-27 10:54:20', NULL, NULL, '1'),
(579, '2517313841', 'INV', '2020-12-27', '102030000019', 'Customer debit For Invoice No -  1035 Customer Al-Deen', '1500.00', '0.00', '1', '1', '2020-12-27 10:54:20', NULL, NULL, '1'),
(580, '2517313841', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1035 Customer Al-Deen', '0.00', '1500.00', '1', '1', '2020-12-27 10:54:20', NULL, NULL, '1'),
(581, '5636157226', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1000', '0.00', '500.00', '1', '1', '2020-12-27 10:56:18', NULL, NULL, '1'),
(582, '5636157226', 'INV', '2020-12-27', '102030000019', 'Customer debit For Invoice No -  1000 Customer Al-Deen', '1000.00', '0.00', '1', '1', '2020-12-27 10:56:18', NULL, NULL, '1'),
(583, '5636157226', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1000 Customer Al-Deen', '0.00', '1000.00', '1', '1', '2020-12-27 10:56:18', NULL, NULL, '1'),
(584, '6677479219', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1001', '0.00', '250.00', '1', '1', '2020-12-27 11:04:41', NULL, NULL, '1'),
(585, '6677479219', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1001 Customer Walking Customer', '500.00', '0.00', '1', '1', '2020-12-27 11:04:41', NULL, NULL, '1'),
(586, '6677479219', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1001 Customer Walking Customer', '0.00', '500.00', '1', '1', '2020-12-27 11:04:41', NULL, NULL, '1'),
(587, '6677479219', 'INV', '2020-12-27', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1001 Customer- Walking Customer', '0.00', '500.00', '1', '1', '2020-12-27 11:04:41', NULL, NULL, '1'),
(588, '6677479219', 'INV', '2020-12-27', '1020101', 'Cash in Hand in Sale for Invoice No - 1001 customer- Walking Customer', '500.00', '0.00', '1', '1', '2020-12-27 11:04:41', NULL, NULL, '1'),
(589, '8625593325', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1002', '0.00', '50.00', '1', '1', '2020-12-27 11:07:04', NULL, NULL, '1'),
(590, '8625593325', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1002 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 11:07:04', NULL, NULL, '1'),
(591, '8625593325', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1002 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 11:07:04', NULL, NULL, '1'),
(592, '9376336456', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1003', '0.00', '50.00', '1', '1', '2020-12-27 11:14:39', NULL, NULL, '1'),
(593, '9376336456', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1003 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 11:14:39', NULL, NULL, '1'),
(594, '9376336456', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1003 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 11:14:39', NULL, NULL, '1'),
(595, '5413352494', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1004', '0.00', '50.00', '1', '1', '2020-12-27 11:15:07', NULL, NULL, '1'),
(596, '5413352494', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1004 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 11:15:07', NULL, NULL, '1'),
(597, '5413352494', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1004 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 11:15:07', NULL, NULL, '1'),
(598, '1329879611', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1005', '0.00', '50.00', '1', '1', '2020-12-27 12:13:13', NULL, NULL, '1'),
(599, '1329879611', 'INV', '2020-12-27', '102030000019', 'Customer debit For Invoice No -  1005 Customer Al-Deen', '100.00', '0.00', '1', '1', '2020-12-27 12:13:13', NULL, NULL, '1'),
(600, '1329879611', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1005 Customer Al-Deen', '0.00', '100.00', '1', '1', '2020-12-27 12:13:13', NULL, NULL, '1'),
(601, '2138384728', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1006', '0.00', '750.00', '1', '1', '2020-12-27 13:09:15', NULL, NULL, '1'),
(602, '2138384728', 'INV', '2020-12-27', '102030000020', 'Customer debit For Invoice No -  1006 Customer sad', '1500.00', '0.00', '1', '1', '2020-12-27 13:09:15', NULL, NULL, '1'),
(603, '2138384728', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1006 Customer sad', '0.00', '1500.00', '1', '1', '2020-12-27 13:09:15', NULL, NULL, '1'),
(604, '6494814163', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1007', '0.00', '50.00', '1', '1', '2020-12-27 18:11:41', NULL, NULL, '1'),
(605, '6494814163', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1007 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 18:11:41', NULL, NULL, '1'),
(606, '6494814163', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1007 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 18:11:41', NULL, NULL, '1'),
(607, '8844386999', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1008', '0.00', '50.00', '1', '1', '2020-12-27 18:12:35', NULL, NULL, '1'),
(608, '8844386999', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1008 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 18:12:35', NULL, NULL, '1'),
(609, '8844386999', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1008 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 18:12:35', NULL, NULL, '1'),
(610, '4952748277', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1009', '0.00', '50.00', '1', '1', '2020-12-27 18:19:56', NULL, NULL, '1'),
(611, '4952748277', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1009 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 18:19:56', NULL, NULL, '1'),
(612, '4952748277', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1009 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 18:19:56', NULL, NULL, '1'),
(613, '7555465721', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1010', '0.00', '500.00', '1', '1', '2020-12-27 19:21:36', NULL, NULL, '1'),
(614, '7555465721', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1010 Customer Walking Customer', '1000.00', '0.00', '1', '1', '2020-12-27 19:21:36', NULL, NULL, '1'),
(615, '7555465721', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1010 Customer Walking Customer', '0.00', '1000.00', '1', '1', '2020-12-27 19:21:36', NULL, NULL, '1'),
(616, '6227833165', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1011', '0.00', '50.00', '1', '1', '2020-12-27 19:22:27', NULL, NULL, '1'),
(617, '6227833165', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1011 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:22:27', NULL, NULL, '1'),
(618, '6227833165', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1011 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:22:27', NULL, NULL, '1'),
(619, '6566679428', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1012', '0.00', '50.00', '1', '1', '2020-12-27 19:26:32', NULL, NULL, '1'),
(620, '6566679428', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1012 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:26:32', NULL, NULL, '1'),
(621, '6566679428', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1012 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:26:32', NULL, NULL, '1'),
(622, '3432777646', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1013', '0.00', '50.00', '1', '1', '2020-12-27 19:26:51', NULL, NULL, '1'),
(623, '3432777646', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1013 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:26:51', NULL, NULL, '1'),
(624, '3432777646', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1013 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:26:51', NULL, NULL, '1'),
(625, '9598148611', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1014', '0.00', '50.00', '1', '1', '2020-12-27 19:27:25', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES
(626, '9598148611', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1014 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:27:25', NULL, NULL, '1'),
(627, '9598148611', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1014 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:27:25', NULL, NULL, '1'),
(628, '5291764223', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1015', '0.00', '50.00', '1', '1', '2020-12-27 19:28:09', NULL, NULL, '1'),
(629, '5291764223', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1015 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:28:09', NULL, NULL, '1'),
(630, '5291764223', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1015 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:28:09', NULL, NULL, '1'),
(631, '2628477248', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1016', '0.00', '50.00', '1', '1', '2020-12-27 19:28:27', NULL, NULL, '1'),
(632, '2628477248', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1016 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:28:27', NULL, NULL, '1'),
(633, '2628477248', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1016 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:28:27', NULL, NULL, '1'),
(634, '5564756149', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1017', '0.00', '50.00', '1', '1', '2020-12-27 19:28:52', NULL, NULL, '1'),
(635, '5564756149', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1017 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:28:52', NULL, NULL, '1'),
(636, '5564756149', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1017 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:28:52', NULL, NULL, '1'),
(637, '6652926473', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1018', '0.00', '50.00', '1', '1', '2020-12-27 19:29:41', NULL, NULL, '1'),
(638, '6652926473', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1018 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:29:41', NULL, NULL, '1'),
(639, '6652926473', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1018 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:29:41', NULL, NULL, '1'),
(640, '1765719771', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1019', '0.00', '50.00', '1', '1', '2020-12-27 19:29:59', NULL, NULL, '1'),
(641, '1765719771', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1019 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:29:59', NULL, NULL, '1'),
(642, '1765719771', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1019 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:29:59', NULL, NULL, '1'),
(643, '8869815738', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1020', '0.00', '50.00', '1', '1', '2020-12-27 19:30:25', NULL, NULL, '1'),
(644, '8869815738', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1020 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:30:25', NULL, NULL, '1'),
(645, '8869815738', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1020 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:30:25', NULL, NULL, '1'),
(646, '8756838151', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1021', '0.00', '50.00', '1', '1', '2020-12-27 19:30:49', NULL, NULL, '1'),
(647, '8756838151', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1021 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:30:49', NULL, NULL, '1'),
(648, '8756838151', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1021 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:30:49', NULL, NULL, '1'),
(649, '1188643817', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1022', '0.00', '50.00', '1', '1', '2020-12-27 19:31:49', NULL, NULL, '1'),
(650, '1188643817', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1022 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:31:49', NULL, NULL, '1'),
(651, '1188643817', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1022 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:31:49', NULL, NULL, '1'),
(652, '1129166689', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1023', '0.00', '50.00', '1', '1', '2020-12-27 19:32:11', NULL, NULL, '1'),
(653, '1129166689', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1023 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:32:11', NULL, NULL, '1'),
(654, '1129166689', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1023 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:32:11', NULL, NULL, '1'),
(655, '5615768113', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1024', '0.00', '50.00', '1', '1', '2020-12-27 19:32:41', NULL, NULL, '1'),
(656, '5615768113', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1024 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:32:41', NULL, NULL, '1'),
(657, '5615768113', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1024 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:32:41', NULL, NULL, '1'),
(658, '8117225273', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1025', '0.00', '50.00', '1', '1', '2020-12-27 19:33:02', NULL, NULL, '1'),
(659, '8117225273', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1025 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:33:02', NULL, NULL, '1'),
(660, '8117225273', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1025 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:33:02', NULL, NULL, '1'),
(661, '2995433938', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1026', '0.00', '50.00', '1', '1', '2020-12-27 19:33:17', NULL, NULL, '1'),
(662, '2995433938', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1026 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:33:17', NULL, NULL, '1'),
(663, '2995433938', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1026 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:33:17', NULL, NULL, '1'),
(664, '1754753789', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1027', '0.00', '50.00', '1', '1', '2020-12-27 19:34:20', NULL, NULL, '1'),
(665, '1754753789', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1027 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:34:20', NULL, NULL, '1'),
(666, '1754753789', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1027 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:34:20', NULL, NULL, '1'),
(667, '3341111896', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1028', '0.00', '50.00', '1', '1', '2020-12-27 19:34:38', NULL, NULL, '1'),
(668, '3341111896', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1028 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:34:38', NULL, NULL, '1'),
(669, '3341111896', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1028 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:34:38', NULL, NULL, '1'),
(670, '2637216532', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1029', '0.00', '50.00', '1', '1', '2020-12-27 19:34:55', NULL, NULL, '1'),
(671, '2637216532', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1029 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:34:55', NULL, NULL, '1'),
(672, '2637216532', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1029 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:34:55', NULL, NULL, '1'),
(673, '5318165889', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1030', '0.00', '50.00', '1', '1', '2020-12-27 19:35:45', NULL, NULL, '1'),
(674, '5318165889', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1030 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:35:45', NULL, NULL, '1'),
(675, '5318165889', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1030 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:35:45', NULL, NULL, '1'),
(676, '9465699843', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1031', '0.00', '50.00', '1', '1', '2020-12-27 19:36:18', NULL, NULL, '1'),
(677, '9465699843', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1031 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:36:18', NULL, NULL, '1'),
(678, '9465699843', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1031 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:36:18', NULL, NULL, '1'),
(679, '6112215271', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1032', '0.00', '50.00', '1', '1', '2020-12-27 19:36:36', NULL, NULL, '1'),
(680, '6112215271', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1032 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:36:36', NULL, NULL, '1'),
(681, '6112215271', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1032 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:36:36', NULL, NULL, '1'),
(682, '7111824887', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1033', '0.00', '50.00', '1', '1', '2020-12-27 19:39:07', NULL, NULL, '1'),
(683, '7111824887', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1033 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:39:07', NULL, NULL, '1'),
(684, '7111824887', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1033 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:39:07', NULL, NULL, '1'),
(685, '9731651863', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1034', '0.00', '50.00', '1', '1', '2020-12-27 19:39:20', NULL, NULL, '1'),
(686, '9731651863', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1034 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:39:20', NULL, NULL, '1'),
(687, '9731651863', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1034 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:39:20', NULL, NULL, '1'),
(688, '6662941321', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1035', '0.00', '50.00', '1', '1', '2020-12-27 19:43:18', NULL, NULL, '1'),
(689, '6662941321', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1035 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:43:18', NULL, NULL, '1'),
(690, '6662941321', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1035 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:43:18', NULL, NULL, '1'),
(691, '2842419166', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1036', '0.00', '50.00', '1', '1', '2020-12-27 19:44:54', NULL, NULL, '1'),
(692, '2842419166', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1036 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:44:54', NULL, NULL, '1'),
(693, '2842419166', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1036 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:44:54', NULL, NULL, '1'),
(694, '3154259644', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1037', '0.00', '50.00', '1', '1', '2020-12-27 19:46:49', NULL, NULL, '1'),
(695, '3154259644', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1037 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 19:46:49', NULL, NULL, '1'),
(696, '3154259644', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1037 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 19:46:49', NULL, NULL, '1'),
(697, '8316137164', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1038', '0.00', '50.00', '1', '1', '2020-12-27 20:30:52', NULL, NULL, '1'),
(698, '8316137164', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1038 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 20:30:52', NULL, NULL, '1'),
(699, '8316137164', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1038 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 20:30:52', NULL, NULL, '1'),
(700, '3348756981', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1039', '0.00', '50.00', '1', '1', '2020-12-27 20:31:08', NULL, NULL, '1'),
(701, '3348756981', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1039 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 20:31:08', NULL, NULL, '1'),
(702, '3348756981', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1039 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 20:31:08', NULL, NULL, '1'),
(703, '3863151534', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1040', '0.00', '50.00', '1', '1', '2020-12-27 20:31:35', NULL, NULL, '1'),
(704, '3863151534', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1040 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 20:31:35', NULL, NULL, '1'),
(705, '3863151534', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1040 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 20:31:35', NULL, NULL, '1'),
(706, '3863151534', 'INV', '2020-12-27', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1040 Customer- Walking Customer', '0.00', '10.00', '1', '1', '2020-12-27 20:31:35', NULL, NULL, '1'),
(707, '3863151534', 'INV', '2020-12-27', '1020101', 'Cash in Hand in Sale for Invoice No - 1040 customer- Walking Customer', '10.00', '0.00', '1', '1', '2020-12-27 20:31:35', NULL, NULL, '1'),
(708, '9799398559', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1041', '0.00', '50.00', '1', '1', '2020-12-27 20:35:33', NULL, NULL, '1'),
(709, '9799398559', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1041 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 20:35:33', NULL, NULL, '1'),
(710, '9799398559', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1041 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 20:35:33', NULL, NULL, '1'),
(711, '9799398559', 'INV', '2020-12-27', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1041 Customer- Walking Customer', '0.00', '10.00', '1', '1', '2020-12-27 20:35:33', NULL, NULL, '1'),
(712, '9799398559', 'INV', '2020-12-27', '1020101', 'Cash in Hand in Sale for Invoice No - 1041 customer- Walking Customer', '10.00', '0.00', '1', '1', '2020-12-27 20:35:33', NULL, NULL, '1'),
(713, '8716955536', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1042', '0.00', '50.00', '1', '1', '2020-12-27 20:38:06', NULL, NULL, '1'),
(714, '8716955536', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1042 Customer Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 20:38:06', NULL, NULL, '1'),
(715, '8716955536', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1042 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 20:38:06', NULL, NULL, '1'),
(716, '8716955536', 'INV', '2020-12-27', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1042 Customer- Walking Customer', '0.00', '10.00', '1', '1', '2020-12-27 20:38:06', NULL, NULL, '1'),
(717, '8716955536', 'INV', '2020-12-27', '1020101', 'Cash in Hand in Sale for Invoice No - 1042 customer- Walking Customer', '10.00', '0.00', '1', '1', '2020-12-27 20:38:06', NULL, NULL, '1'),
(718, '8186129163', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1043', '0.00', '50.00', '1', '1', '2020-12-27 20:55:25', NULL, NULL, '1'),
(719, '8186129163', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice No -  1043 Customer Walking Customer', '110.00', '0.00', '1', '1', '2020-12-27 20:55:25', NULL, NULL, '1'),
(720, '8186129163', 'INVOICE', '2020-12-27', '303', 'Sale Income For Invoice NO - 1043 Customer Walking Customer', '0.00', '110.00', '1', '1', '2020-12-27 20:55:25', NULL, NULL, '1'),
(730, '4692712959', 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No1044', '0.00', '50.00', '1', '1', '2020-12-27 21:17:02', NULL, NULL, '1'),
(731, '4692712959', 'INVOICE', '2020-12-27', '303', 'Sale Income From Invoice NO - 1044 Customer Walking Customer', '0.00', '100.00', '1', '1', '2020-12-27 21:17:02', NULL, NULL, '1'),
(732, '4692712959', 'INV', '2020-12-27', '102030000001', 'Customer debit For Invoice NO - 1044 customer-  Walking Customer', '100.00', '0.00', '1', '1', '2020-12-27 21:17:02', NULL, NULL, '1'),
(735, NULL, 'INV', '2020-12-27', '10107', 'Inventory credit For Invoice No', '0.00', '0.00', '1', '1', '2020-12-27 21:18:58', NULL, NULL, '1'),
(736, NULL, 'INVOICE', '2020-12-27', '303', 'Sale Income From Invoice NO -  Customer ', '0.00', '0.00', '1', '1', '2020-12-27 21:18:58', NULL, NULL, '1'),
(737, '20201228075952', 'Purchase', '2020-12-28', '10107', 'Inventory Debit For Supplier amir Group', '2500.00', '0.00', '1', '1', '2020-12-28 07:59:52', NULL, NULL, '1'),
(738, '20201228075952', 'Purchase', '2020-12-28', '502000008', 'Supplier .amir Group', '0.00', '2500.00', '1', '1', '2020-12-28 00:00:00', NULL, NULL, '1'),
(739, '20201228075952', 'Purchase', '2020-12-28', '402', 'Company Credit For  amir Group', '2500.00', '0.00', '1', '1', '2020-12-28 07:59:52', NULL, NULL, '1'),
(740, '20201228075952', 'Purchase', '2020-12-28', '1020101', 'Cash in Hand For Supplier amir Group', '0.00', '2500.00', '1', '1', '2020-12-28 07:59:52', NULL, NULL, '1'),
(741, '20201228075952', 'Purchase', '2020-12-28', '502000008', 'Supplier .amir Group', '2500.00', '0.00', '1', '1', '2020-12-28 00:00:00', NULL, NULL, '1'),
(742, '7891851813', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1045', '0.00', '250.00', '1', '1', '2020-12-28 08:00:54', NULL, NULL, '1'),
(743, '7891851813', 'INV', '2020-12-28', '102030000001', 'Customer debit For Invoice No -  1045 Customer Walking Customer', '300.00', '0.00', '1', '1', '2020-12-28 08:00:54', NULL, NULL, '1'),
(744, '7891851813', 'INVOICE', '2020-12-28', '303', 'Sale Income For Invoice NO - 1045 Customer Walking Customer', '0.00', '300.00', '1', '1', '2020-12-28 08:00:54', NULL, NULL, '1'),
(745, '7891851813', 'INV', '2020-12-28', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1045 Customer- Walking Customer', '0.00', '300.00', '1', '1', '2020-12-28 08:00:54', NULL, NULL, '1'),
(746, '7891851813', 'INV', '2020-12-28', '1020101', 'Cash in Hand in Sale for Invoice No - 1045 customer- Walking Customer', '300.00', '0.00', '1', '1', '2020-12-28 08:00:54', NULL, NULL, '1'),
(747, '5558499924', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1046', '0.00', '250.00', '1', '1', '2020-12-28 08:07:11', NULL, NULL, '1'),
(748, '5558499924', 'INV', '2020-12-28', '102030000001', 'Customer debit For Invoice No -  1046 Customer Walking Customer', '300.00', '0.00', '1', '1', '2020-12-28 08:07:11', NULL, NULL, '1'),
(749, '5558499924', 'INVOICE', '2020-12-28', '303', 'Sale Income For Invoice NO - 1046 Customer Walking Customer', '0.00', '300.00', '1', '1', '2020-12-28 08:07:11', NULL, NULL, '1'),
(750, '5558499924', 'INV', '2020-12-28', '102030000001', 'Customer credit for Paid Amount For Customer Invoice NO- 1046 Customer- Walking Customer', '0.00', '300.00', '1', '1', '2020-12-28 08:07:11', NULL, NULL, '1'),
(751, '5558499924', 'INV', '2020-12-28', '1020101', 'Cash in Hand in Sale for Invoice No - 1046 customer- Walking Customer', '300.00', '0.00', '1', '1', '2020-12-28 08:07:11', NULL, NULL, '1'),
(752, '4746528194', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1047', '0.00', '2050.00', '1', '1', '2020-12-28 08:17:53', NULL, NULL, '1'),
(753, '4746528194', 'INV', '2020-12-28', '102030000022', 'Customer debit For Invoice No -  1047 Customer sumon mia', '4100.00', '0.00', '1', '1', '2020-12-28 08:17:53', NULL, NULL, '1'),
(754, '4746528194', 'INVOICE', '2020-12-28', '303', 'Sale Income For Invoice NO - 1047 Customer sumon mia', '0.00', '4100.00', '1', '1', '2020-12-28 08:17:53', NULL, NULL, '1'),
(755, '4746528194', 'INV', '2020-12-28', '102030000022', 'Customer credit for Paid Amount For Customer Invoice NO- 1047 Customer- sumon mia', '0.00', '4100.00', '1', '1', '2020-12-28 08:17:53', NULL, NULL, '1'),
(756, '4746528194', 'INV', '2020-12-28', '1020101', 'Cash in Hand in Sale for Invoice No - 1047 customer- sumon mia', '4100.00', '0.00', '1', '1', '2020-12-28 08:17:53', NULL, NULL, '1'),
(757, '8262278417', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1048', '0.00', '190.00', '1', '1', '2020-12-28 08:24:42', NULL, NULL, '1'),
(758, '8262278417', 'INV', '2020-12-28', '102030000001', 'Customer debit For Invoice No -  1048 Customer Walking Customer', '160.00', '0.00', '1', '1', '2020-12-28 08:24:42', NULL, NULL, '1'),
(759, '8262278417', 'INVOICE', '2020-12-28', '303', 'Sale Income For Invoice NO - 1048 Customer Walking Customer', '0.00', '160.00', '1', '1', '2020-12-28 08:24:42', NULL, NULL, '1'),
(760, '9482589494', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1049', '0.00', '190.00', '1', '1', '2020-12-28 08:24:44', NULL, NULL, '1'),
(761, '9482589494', 'INV', '2020-12-28', '102030000001', 'Customer debit For Invoice No -  1049 Customer Walking Customer', '160.00', '0.00', '1', '1', '2020-12-28 08:24:44', NULL, NULL, '1'),
(762, '9482589494', 'INVOICE', '2020-12-28', '303', 'Sale Income For Invoice NO - 1049 Customer Walking Customer', '0.00', '160.00', '1', '1', '2020-12-28 08:24:44', NULL, NULL, '1'),
(769, '1115735675', 'INV', '2020-12-28', '10107', 'Inventory credit For Invoice No1050', '0.00', '500.00', '1', '1', '2020-12-28 11:05:46', NULL, NULL, '1'),
(770, '1115735675', 'INVOICE', '2020-12-28', '303', 'Sale Income From Invoice NO - 1050 Customer Al-Deen', '0.00', '1000.00', '1', '1', '2020-12-28 11:05:46', NULL, NULL, '1'),
(771, '1115735675', 'INV', '2020-12-28', '102030000019', 'Customer debit For Invoice NO - 1050 customer-  Al-Deen', '1000.00', '0.00', '1', '1', '2020-12-28 11:05:46', NULL, NULL, '1'),
(772, '20210103090418', 'Purchase', '2021-01-03', '10107', 'Inventory Debit For Supplier Nokia company', '2500000.00', '0.00', '1', '1', '2021-01-03 09:04:18', NULL, NULL, '1'),
(773, '20210103090418', 'Purchase', '2021-01-03', '502000009', 'Supplier .Nokia company', '0.00', '2500000.00', '1', '1', '2021-01-03 00:00:00', NULL, NULL, '1'),
(774, '20210103090418', 'Purchase', '2021-01-03', '402', 'Company Credit For  Nokia company', '2500000.00', '0.00', '1', '1', '2021-01-03 09:04:18', NULL, NULL, '1'),
(775, '20210103090418', 'Purchase', '2021-01-03', '1020101', 'Cash in Hand For Supplier Nokia company', '0.00', '2500000.00', '1', '1', '2021-01-03 09:04:18', NULL, NULL, '1'),
(776, '20210103090418', 'Purchase', '2021-01-03', '502000009', 'Supplier .Nokia company', '2500000.00', '0.00', '1', '1', '2021-01-03 00:00:00', NULL, NULL, '1'),
(777, '5823659932', 'INV', '2021-01-03', '10107', 'Inventory credit For Invoice No1051', '0.00', '50.00', '1', '1', '2021-01-03 11:54:18', NULL, NULL, '1'),
(778, '5823659932', 'INV', '2021-01-03', '102030000001', 'Customer debit For Invoice No -  1051 Customer Walking Customer', '100.00', '0.00', '1', '1', '2021-01-03 11:54:18', NULL, NULL, '1'),
(779, '5823659932', 'INVOICE', '2021-01-03', '303', 'Sale Income For Invoice NO - 1051 Customer Walking Customer', '0.00', '100.00', '1', '1', '2021-01-03 11:54:18', NULL, NULL, '1'),
(780, '20210107081626', 'Purchase', '2021-01-07', '10107', 'Inventory Debit For Supplier EON Animal Health', '10000000.00', '0.00', '1', '1', '2021-01-07 08:16:26', NULL, NULL, '1'),
(781, '20210107081626', 'Purchase', '2021-01-07', '502000007', 'Supplier .EON Animal Health', '0.00', '10000000.00', '1', '1', '2021-01-07 00:00:00', NULL, NULL, '1'),
(782, '20210107081626', 'Purchase', '2021-01-07', '402', 'Company Credit For  EON Animal Health', '10000000.00', '0.00', '1', '1', '2021-01-07 08:16:26', NULL, NULL, '1'),
(783, '3135823336', 'INV', '2021-01-07', '10107', 'Inventory credit For Invoice No1000', '0.00', '40000.00', '1', '1', '2021-01-07 08:17:51', NULL, NULL, '1'),
(784, '3135823336', 'INV', '2021-01-07', '102030000023', 'Customer debit For Invoice No -  1000 Customer Shamim', '55000.00', '0.00', '1', '1', '2021-01-07 08:17:51', NULL, NULL, '1'),
(785, '3135823336', 'INVOICE', '2021-01-07', '303', 'Sale Income For Invoice NO - 1000 Customer Shamim', '0.00', '55000.00', '1', '1', '2021-01-07 08:17:51', NULL, NULL, '1'),
(786, '3141687466', 'INV', '2021-01-07', '10107', 'Inventory credit For Invoice No1001', '0.00', '20000.00', '1', '1', '2021-01-07 22:35:41', NULL, NULL, '1'),
(787, '3141687466', 'INV', '2021-01-07', '102030000024', 'Customer debit For Invoice No -  1001 Customer Shareef', '27500.00', '0.00', '1', '1', '2021-01-07 22:35:41', NULL, NULL, '1'),
(788, '3141687466', 'INVOICE', '2021-01-07', '303', 'Sale Income For Invoice NO - 1001 Customer Shareef', '0.00', '27500.00', '1', '1', '2021-01-07 22:35:41', NULL, NULL, '1'),
(789, '3141687466', 'INV', '2021-01-07', '102030000024', 'Customer credit for Paid Amount For Customer Invoice NO- 1001 Customer- Shareef', '0.00', '27500.00', '1', '1', '2021-01-07 22:35:41', NULL, NULL, '1'),
(790, '3141687466', 'INV', '2021-01-07', '1020101', 'Cash in Hand in Sale for Invoice No - 1001 customer- Shareef', '27500.00', '0.00', '1', '1', '2021-01-07 22:35:41', NULL, NULL, '1'),
(791, '8198534179', 'INV', '2021-01-07', '10107', 'Inventory credit For Invoice No1002', '0.00', '20000.00', '1', '1', '2021-01-07 22:46:44', NULL, NULL, '1'),
(792, '8198534179', 'INV', '2021-01-07', '102030000025', 'Customer debit For Invoice No -  1002 Customer khalek', '27500.00', '0.00', '1', '1', '2021-01-07 22:46:44', NULL, NULL, '1'),
(793, '8198534179', 'INVOICE', '2021-01-07', '303', 'Sale Income For Invoice NO - 1002 Customer khalek', '0.00', '27500.00', '1', '1', '2021-01-07 22:46:44', NULL, NULL, '1'),
(794, '8198534179', 'INV', '2021-01-07', '102030000025', 'Customer credit for Paid Amount For Customer Invoice NO- 1002 Customer- khalek', '0.00', '27500.00', '1', '1', '2021-01-07 22:46:44', NULL, NULL, '1'),
(795, '8198534179', 'INV', '2021-01-07', '1020101', 'Cash in Hand in Sale for Invoice No - 1002 customer- khalek', '27500.00', '0.00', '1', '1', '2021-01-07 22:46:44', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id` int(11) NOT NULL,
  `localhserver` varchar(250) DEFAULT NULL,
  `onlineserver` varchar(250) DEFAULT NULL,
  `hotspot` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id`, `localhserver`, `onlineserver`, `hotspot`) VALUES
(1, 'https://192.168.1.153/saleserp_sas_v-2', 'https://saleserpnew.bdtask.com/saleserp_v9.3-demo', 'https://192.168.1.167/saleserp');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `employee_id`, `date`, `sign_in`, `sign_out`, `staytime`) VALUES
(1, 1, '2020-10-25', '03:34 PM', '03:35 PM', '00:01'),
(2, 2, '2020-10-01', '03:39 pm', '10:00 pm', '06:21'),
(3, 4, '2020-10-27', '09:00 PM', '04:48 AM', '16:12'),
(4, 6, '2020-10-27', '04:26 PM', '07:26 PM', '03:00'),
(5, 6, '2020-01-26', '04:33 pm', '10:00 pm', '05:27'),
(6, 7, '2020-10-27', '05:14 PM', '09:14 PM', '04:00'),
(7, 7, '2020-01-27', '06:02 pm', '06:00 am', '12:02'),
(8, 8, '2020-10-27', '08:00 AM', '09:00 PM', '13:00'),
(9, 8, '2020-10-26', '07:45 PM', '', ''),
(10, 8, '2020-10-25', ' ', '', ''),
(11, 4, '2020-10-28', '12 : ', '', ''),
(12, 0, '1969-12-31', '07:00:00 pm', '07:00:00 pm', '00:00:00'),
(13, 0, '1969-12-31', '07:00:00 pm', '07:00:00 pm', '00:00:00'),
(14, 1, '1969-12-31', '12:00:00 am', '12:00:00 pm', '12:00:00'),
(15, 2, '1969-12-31', '12:00:00 am', '07:00:00 pm', '19:00:00'),
(16, 3, '1969-12-31', '12:00:00 am', '07:45:00 pm', '19:45:00'),
(17, 4, '1969-12-31', '12:00:00 am', '08:00:00 am', '08:00:00'),
(18, 5, '1969-12-31', '12:00:00 am', '06:02:00 pm', '18:02:00'),
(19, 6, '1969-12-31', '12:00:00 am', '05:14:00 pm', '17:14:00'),
(20, 7, '1969-12-31', '12:00:00 am', '04:33:00 pm', '16:33:00'),
(21, 8, '1969-12-31', '12:00:00 am', '04:26:00 pm', '16:26:00'),
(22, 9, '1969-12-31', '12:00:00 am', '09:00:00 pm', '21:00:00'),
(23, 10, '1969-12-31', '12:00:00 am', '03:34:00 pm', '15:34:00'),
(24, 3, '2020-10-29', '9. 00', '', ''),
(26, 6, '2020-11-11', '07:04 PM', '10:04 PM', '03:00'),
(28, 3, '2020-11-27', '07:59 PM', '09:00 AM', '10:59'),
(29, 4, '2020-11-27', '09:00 AM', '08:00 PM', '11:00'),
(30, 8, '2020-11-27', '09:00 AM', '08:00 PM', '11:00'),
(31, 3, '2020-11-26', '09:00 am', '09:00 pm', '12:00'),
(32, 4, '2020-11-26', '09:00 am', '08:00 pm', '11:00'),
(33, 6, '2020-11-26', '09:00 am', '08:00 pm', '11:00'),
(34, 8, '2020-11-26', '09:00 pm', '06:00 am', '15:00'),
(35, 10, '2020-11-26', '09:00 am', '09:00 pm', '12:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_add`
--

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES
(1, 'S1YJ699BB4', 'ISLAMI BANK ', 'ROYAL PET INDUSTRIES', '152102011577001', 'LALBAGH DHAKA-1211', '', 1),
(2, 'QHKMT4FCH2', 'BRAK BANK', 'ANOWAR HOSSAIN', '15221020115771001', 'IMAMGANG BR', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(250) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('1', 'GG', 'Info@mensadigiworld.com', 'RH Home Center,Level 3, Suite - 340, 74/B/1, Green Road, Dhaka - 1215, Bangladesh.', '01730589870', 'https://mensadigiworld.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Dollar', '$'),
(2, 'BDT', '৳');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `district` varchar(55) DEFAULT NULL,
  `area` varchar(55) DEFAULT NULL,
  `areaid` varchar(55) DEFAULT NULL,
  `division` varchar(55) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `district`, `area`, `areaid`, `division`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(24, 'Shamim', 'dhaka', '', '01738298666', 'deen@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 07:17:19', NULL),
(25, 'Shareef', 'fdsafsaf', NULL, '017382986666', 'shareef@gmail.com', 'Dhakaa', 'dhakaa', 'dhakaa', 'Dhakaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:06:46', '1'),
(26, 'khalek', 'dhaka', NULL, '01549548598', 'khalek@gmail.com', 'dhaka', 'dhaka', '56', 'dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:13:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_banking_add`
--

CREATE TABLE `daily_banking_add` (
  `banking_id` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `description` text,
  `amount` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_closing`
--

INSERT INTO `daily_closing` (`closing_id`, `last_day_closing`, `cash_in`, `cash_out`, `date`, `amount`, `adjustment`, `status`) VALUES
('pSii1a3MD5DTfhu', 0, 1669920, 160000, '2020-10-29', 1509920, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `details`) VALUES
(1, 'It officer', ''),
(2, 'BLUE MACHINE MEN', ''),
(3, 'INJEKTION MECHINE MEN', ''),
(4, 'BLUE MACHINE MEN', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  `isinvoice` tinyint(4) NOT NULL,
  `isservice` tinyint(4) NOT NULL,
  `isquotation` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `isinvoice`, `isservice`, `isquotation`) VALUES
(1, 'ssmtp', 'ssl://ssmtp.gmail.com', '25', 'demo@gmail.com', 'demo123456', 'html', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `last_name`, `designation`, `phone`, `rate_type`, `hrate`, `email`, `blood_group`, `address_line_1`, `address_line_2`, `image`, `country`, `city`, `zip`) VALUES
(1, 'Rifat', 'Mia', '1', '12345', 0, 10000, '', '', '', '', '', '', '', ''),
(3, 'MD.FORHAD HOSSAIN', 'REZA', '1', '01846286417', 2, 40000, '', 'O+', '', '', 'https://inventory3.mensait.xyz/my-assets/image/employee/3e771404444206857eabaac19a7d6755.jpg', 'Bangladesh', '', ''),
(4, 'SAMIM', 'HOSSAIN', '2', '01756844721', 2, 14000, '', '', '', '', '', 'Bangladesh', '', ''),
(6, 'sabbir', 'Mia', '2', '3652', 2, 20000, '', '', '', '', '', '', '', ''),
(7, 'ishfaq', 'haque', '2', '321523', 2, 30000, '', '', '', '', '', '', '', ''),
(8, 'MD.RAHMAN', 'HOSSAIN', '2', '01756884721', 2, 8500, '', 'O+', 'SOSAN GAT ', '', '', 'Bangladesh', 'DHAKA-1211', ''),
(9, 'harun', 'mia', '2', '546', 2, 15000, '', '', '', '', '', '', '', ''),
(10, 'Rifat', 'Mia', '2', '142', 2, 12000, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_payment`
--

INSERT INTO `employee_salary_payment` (`emp_sal_pay_id`, `generate_id`, `employee_id`, `total_salary`, `total_working_minutes`, `working_period`, `payment_due`, `payment_date`, `paid_by`, `salary_month`) VALUES
(43, 15, '3', '40000.00', '22.983333333333', '2', '', '', '', 'November 2020'),
(44, 15, '4', '14000.00', '22', '2', '', '', '', 'November 2020'),
(45, 15, '6', '20000.00', '14', '2', '', '', '', 'November 2020'),
(46, 15, '8', '8500.00', '26', '2', '', '', '', 'November 2020');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary_setup`
--

INSERT INTO `employee_salary_setup` (`e_s_s_id`, `employee_id`, `sal_type`, `salary_type_id`, `amount`, `create_date`, `update_date`, `update_id`, `gross_salary`) VALUES
(1, '1', '0', '0', '0.00', '2020-10-25', NULL, '', 10000),
(2, '4', '2', '1', '0.00', '2020-10-27', NULL, '', 14000),
(3, '4', '2', '2', '0.00', '2020-10-27', NULL, '', 14000),
(4, '3', '2', '1', '0.00', '2020-10-27', NULL, '', 40000),
(5, '3', '2', '2', '0.00', '2020-10-27', NULL, '', 40000),
(8, '6', '2', '1', '0.00', '2020-10-27', NULL, '', 20000),
(9, '6', '2', '2', '0.00', '2020-10-27', NULL, '', 20000),
(10, '8', '2', '1', '0.00', '2020-11-27', NULL, '', 8500),
(11, '8', '2', '2', '0.00', '2020-11-27', NULL, '', 8500);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `type`, `voucher_no`, `amount`) VALUES
(1, '2020-10-25', 'water', '20201025071010', 2000),
(2, '2020-10-27', 'OFFICE', '20201027040250', 200),
(3, '2020-11-12', 'OFFICE', '20201112064251', 1000),
(4, '2020-11-15', 'Pot', '20201115030041', 1000),
(5, '2020-11-22', 'ofiice', '20201122025946', 200),
(6, '2020-11-23', 'trasport', '20201123082822', 1000),
(7, '2020-12-14', 'trasport', '20201214020226', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense_item`
--

INSERT INTO `expense_item` (`id`, `expense_item_name`) VALUES
(1, 'water'),
(2, 'OFFICE'),
(3, '100'),
(5, 'Pot'),
(6, 'ofiice'),
(7, 'trasport'),
(8, '3/4 pipe');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `prevous_due` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_method` varchar(55) DEFAULT NULL,
  `invoice` bigint(20) NOT NULL,
  `invoice_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'invoice discount',
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `sales_by` varchar(50) NOT NULL,
  `invoice_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `paid_amount`, `due_amount`, `prevous_due`, `shipping_cost`, `shipping_method`, `invoice`, `invoice_discount`, `total_discount`, `total_tax`, `sales_by`, `invoice_details`, `status`, `bank_id`, `payment_type`) VALUES
(132, 8198534179, 26, '2021-01-07', '27500.00', '27500.00', '0.00', '0.00', '0.00', '2', 1002, '0.00', '0.00', '2500.00', '1', 'Thank you for shopping with us', 1, NULL, 1),
(131, 3141687466, 25, '2021-01-07', '27500.00', '27500.00', '0.00', '0.00', '0.00', '5', 1001, '0.00', '0.00', '2500.00', '1', 'Thank you for shopping with us', 1, NULL, 1),
(130, 3135823336, 24, '2021-01-07', '55000.00', '0.00', '55000.00', '0.00', '0.00', '5', 1000, '0.00', '0.00', '5000.00', '1', 'Thank you for shopping with us', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(100) NOT NULL,
  `invoice_id` varchar(100) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `serial_no`, `description`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `discount_per`, `tax`, `paid_amount`, `due_amount`, `status`) VALUES
(1, '655785315996593', '2363186846', '63161523', NULL, '', '100.00', '50.00', 40, '5000.00', '0.00', '', NULL, '4000', '1000.00', 1),
(2, '517658889118495', '8584599954', '32748938', NULL, '', '1000.00', '5.00', 1.35, '5000.00', '0.00', '', NULL, '0', '5000.00', 1),
(3, '973795451576695', '7273469659', '32748938', NULL, '', '100.00', '5.00', 1.35, '500.00', '0.00', '', NULL, '0', '500.00', 1),
(4, '979433191473574', '6376653238', '12671827', NULL, '', '50.00', '100.00', 50, '5000.00', '0.00', '', NULL, '5250', '0.00', 1),
(5, '758378242721542', '6376653238', '32748938', NULL, '', '50.00', '5.00', 1.35, '250.00', '0.00', '', NULL, '5250', '0.00', 1),
(6, '191187331779423', '1321211416', '18157738', NULL, '', '50.00', '100.00', 50, '5000.00', '0.00', '', NULL, '20000', '0.00', 1),
(7, '441488911442228', '1321211416', '12671827', NULL, '', '100.00', '100.00', 50, '10000.00', '0.00', '', NULL, '20000', '0.00', 1),
(8, '725188667638586', '1321211416', '63161523', NULL, '', '100.00', '50.00', 40, '5000.00', '0.00', '', NULL, '20000', '0.00', 1),
(74, '746193639483796', '5979566491', '32748938', NULL, '', '500.00', '5.00', 1.35, '2500.00', '0.00', '', '0.00', '1000', '1500.00', 0),
(11, '337736373663178', '4886688543', '18157738', NULL, '', '100.00', '100.00', 50, '10000.00', '0.00', '', NULL, '3000', '7000.00', 1),
(12, '654487772833285', '7752617954', '18157738', NULL, '', '300.00', '100.00', 50, '30000.00', '0.00', '', NULL, '0', '37000.00', 1),
(13, '256611431817135', '5175288459', '18157738', NULL, '', '15.00', '100.00', 50, '1500.00', '0.00', '', NULL, '0', '1560.00', 1),
(14, '149165431434546', '2316443249', '12671827', NULL, '', '21.00', '100.00', 50, '2100.00', '0.00', '', NULL, '2100', '0.00', 1),
(15, '194893659613889', '4266252999', '18157738', NULL, '', '50.00', '100.00', 50, '5000.00', '0.00', '', NULL, '5000', '0.00', 1),
(16, '813974379971776', '1138914547', '12671827', NULL, '', '200.00', '100.00', 50, '20000.00', '0.00', '', NULL, '0', '20000.00', 1),
(17, '153259795618357', '7243921388', '63161523', NULL, '', '500.00', '50.00', 40, '25000.00', '0.00', '', NULL, '0', '124500.00', 1),
(18, '528757153725496', '7243921388', '12671827', NULL, '', '1000.00', '100.00', 50, '100000.00', '0.00', '', NULL, '0', '124500.00', 1),
(19, '479274831186722', '5678991416', '12671827', NULL, '', '1000.00', '100.00', 50, '100000.00', '0.00', '', NULL, '0', '100000.00', 1),
(20, '942739421245287', '9562825466', '12671827', NULL, '', '1000.00', '100.00', 50, '100000.00', '0.00', '', NULL, '0', '100000.00', 1),
(21, '785247822989251', '6718785423', '87348938', NULL, '', '100.00', '5.50', 4.5, '550.00', '0.00', '', NULL, '100550', '0.00', 1),
(22, '717642769493967', '5772288334', '32748938', NULL, '', '2.00', '5.00', 1.35, '10.00', '0.00', '', NULL, '0', '10.00', 1),
(23, '942342114354558', '5326622445', '91583287', NULL, '', '1000.00', '20.00', 10, '20000.00', '0.00', '', NULL, '1520000', '0.00', 1),
(24, '979623766989153', '9989479428', '91583287', NULL, '', '8000.00', '2.60', 10, '20800.00', '0.00', '', NULL, '20800', '0.00', 1),
(25, '283961272899718', '6455499426', '91583287', NULL, '', '1000.00', '20.00', 10, '20000.00', '0.00', '', NULL, '0', '20000.00', 1),
(26, '948484136661263', '5323585988', '32748938', NULL, '', '230.00', '5.00', 1.35, '1150.00', '0.00', '', NULL, '1150', '0.00', 1),
(27, '574259569584227', '8711293228', '18157738', NULL, '', '1.00', '100.00', 50, '0.00', '0.00', '', NULL, '0', '0.00', 1),
(28, '489538115949924', '3949193149', '58384682', NULL, '', '5.00', '100.00', 90, '500.00', '0.00', '', NULL, '500', '0.00', 1),
(29, '621668655885566', '3949193149', '58384682', NULL, NULL, '-2.00', '100.00', 90, '-200.00', '0.00', NULL, '0.00', '-200', NULL, 1),
(30, '184778364224793', '4692693835', '32748938', NULL, '', '100.00', '5.00', 1.35, '500.00', '0.00', '', NULL, '0', '500.00', 1),
(31, '467214349497625', '3223181446', '87348938', NULL, '', '2000.00', '5.50', 4.5, '11000.00', '0.00', '', NULL, '0', '11000.00', 1),
(32, '955375278487732', '4667421119', '18157738', NULL, '', '50.00', '100.00', 50, '5000.00', '0.00', '', NULL, '0', '6000.00', 1),
(42, '653142664768242', '9411521384', '18157738', NULL, '', '0.00', '100.00', 50, '0.00', '0.00', '', '0.00', '0', '0.00', 0),
(40, '616279252143846', '4966851419', '33592882', NULL, '', '0.00', '1950.00', 1720, '0.00', '0.00', '', '0.00', '0', '0.00', 0),
(35, '646586143694618', '8712662993', '97874327', NULL, '', '2.00', '25000.00', 20000, '49800.00', '0.01', '100', NULL, '49800', '0.00', 1),
(36, '181668589671989', '8712662993', '97874327', NULL, NULL, '-1.00', '25000.00', 20000, '-25000.00', '0.00', NULL, '0.00', '-25000', NULL, 1),
(37, '314824941156129', '8712662993', '97874327', NULL, NULL, '-1.00', '25000.00', 20000, '-25000.00', '0.00', NULL, '0.00', '-25000', NULL, 1),
(38, '764276737631948', '9246766563', '49876384', NULL, '', '5.00', '500.00', 450, '2500.00', '0.00', '', NULL, '2500', '0.00', 1),
(39, '857673243218241', '9246766563', '49876384', NULL, NULL, '-2.00', '500.00', 450, '-1000.00', '0.00', NULL, '0.00', '-1000', NULL, 1),
(43, '144312136977875', '2279386661', '18157738', NULL, '', '34.00', '100.00', 50, '3400.00', '0.00', '', NULL, '0', '3400.00', 1),
(45, '467418125314316', '3391187832', '18157738', NULL, '', '0.00', '100.00', 50, '0.00', '0.00', '', '0.00', '0', '3400.00', 0),
(46, '985653757854597', '5176693167', '33592882', NULL, '', '10.00', '1950.00', 1720, '19500.00', '0.00', '', NULL, '19500', '0.00', 1),
(47, '865133418846639', '8946493153', '32748938', NULL, '', '1000.00', '5.00', 1.35, '5000.00', '0.00', '', NULL, '0', '5000.00', 1),
(48, '413448325589977', '2896726969', '98841275', NULL, '', '10.00', '360.00', 302, '3580.00', '0.01', '2', NULL, '3000', '580.00', 1),
(49, '475997451392385', '2896726969', '98841275', NULL, NULL, '-2.00', '360.00', 302, '-720.00', '0.00', NULL, '0.00', '-720', NULL, 1),
(50, '565836885885369', '8644352651', '1122', '1122', '', '58.00', '890.00', 850, '51620.00', '0.00', '', NULL, '51620', '0.00', 1),
(51, '617355317791395', '8227776138', '1122', '1122', '', '1.00', '1000.00', 850, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(52, '575186277963111', '7537172341', '12234344', NULL, '', '10.00', '20.00', 15, '200.00', '0.00', '', NULL, '0', '200.00', 1),
(53, '588471621485951', '7914248122', '12234344', NULL, '', '10.00', '20.00', 15, '200.00', '0.00', '', NULL, '0', '200.00', 1),
(54, '669579135492711', '3216944281', '12234344', NULL, '', '10.00', '20.00', 15, '200.00', '0.00', '', NULL, '0', '200.00', 1),
(55, '584224638757893', '2835633842', '12234344', NULL, '', '10.00', '20.00', 15, '200.00', '0.00', '', NULL, '0', '200.00', 1),
(56, '854981972811973', '1555176442', '18157738', NULL, '', '200.00', '100.00', 50, '20000.00', '0.00', '', NULL, '0', '20000.00', 1),
(57, '273428138328895', '8911652418', '18157738', NULL, '', '200.00', '100.00', 50, '20000.00', '0.00', '', NULL, '0', '20150.00', 1),
(58, '179843884647734', '4799127213', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '2210.00', 1),
(59, '733359621689919', '4799127213', '33592882', NULL, '', '1.00', '1950.00', 1720, '1950.00', '0.00', '', NULL, '0', '2210.00', 1),
(60, '662399547443867', '4799127213', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '2210.00', 1),
(66, '554866391712169', '3197978851', '32748938', NULL, '', '1.00', '5.00', 1.35, '5.00', '0.00', '', '0.00', '0', '2055.00', 0),
(65, '519963735114813', '3197978851', '33592882', NULL, '', '1.00', '1950.00', 1720, '1950.00', '0.00', '', '0.00', '0', '2055.00', 0),
(64, '633579186822679', '3197978851', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', '0.00', '0', '2055.00', 0),
(67, '995446141321771', '3197978851', '33592882', NULL, NULL, '-1.00', '100.00', 1720, '-1950.00', '0.00', NULL, '0.00', '-1950', NULL, 1),
(68, '471562115144855', '5839676657', '18157738', NULL, '', '20.00', '100.00', 50, '2000.00', '0.00', '', NULL, '1500', '500.00', 1),
(69, '572226963494434', '5839676657', '18157738', NULL, NULL, '-10.00', '100.00', 50, '-1000.00', '0.00', NULL, '0.00', '-1000', NULL, 1),
(70, '283855368957489', '7545864176', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '100', '0.00', 1),
(75, '347568828245899', '7388317142', '18157738', NULL, '', '5.00', '100.00', 50, '500.00', '0.00', '', NULL, '500', '0.00', 1),
(76, '596175184494367', '6531846192', '18157738', NULL, '', '5.00', '100.00', 50, '500.00', '0.00', '', NULL, '500', '0.00', 1),
(78, '688598815366818', '9983443691', '18157738', NULL, '', '5.00', '100.00', 50, '500.00', '0.00', '', '0.00', '500', '0.00', 0),
(79, '376486858851177', '7223521844', '18157738', NULL, '', '4.00', '100.00', 50, '400.00', '0.00', '', NULL, '0', '400.00', 1),
(80, '168865699779586', '1643174843', '18157738', NULL, '', '4.00', '100.00', 50, '400.00', '0.00', '', NULL, '0', '400.00', 1),
(81, '373219214185795', '6235725837', '18157738', NULL, '', '4.00', '100.00', 50, '400.00', '0.00', '', NULL, '0', '400.00', 1),
(82, '852243572889957', '2339229348', '18157738', NULL, '', '2.00', '100.00', 50, '200.00', '0.00', '', NULL, '200', '0.00', 1),
(83, '272121825274965', '5774228663', '18157738', NULL, '', '2.00', '100.00', 50, '200.00', '0.00', '', NULL, '0', '200.00', 1),
(85, '811675734362424', '5238752347', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', '0.00', '0', '100.00', 0),
(86, '214856463518937', '6237745565', '18157738', NULL, '', '20.00', '100.00', 50, '2000.00', '0.00', '', NULL, '2000', '0.00', 1),
(87, '262745968414831', '5936267562', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(88, '244431749756417', '2928923843', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(89, '691555489956785', '3781862834', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(90, '591837551192398', '1259493773', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(91, '118385221359473', '9469978311', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(92, '595832556326391', '2619219477', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(93, '749924416996496', '7536337725', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(94, '676522939618438', '1513854528', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(95, '766672255613893', '1743457155', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(96, '132976839463695', '5519151112', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(97, '167273937264852', '9858526781', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(98, '344483399822197', '4733252239', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(99, '617653248687343', '9619822711', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(100, '435945678423585', '6246251629', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(101, '174649418529874', '5754665974', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(102, '654953289986483', '6996479694', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(103, '342577166121171', '6991158413', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(104, '589128462172277', '3477537887', '18157738', NULL, '', '15.00', '100.00', 50, '1500.00', '0.00', '', NULL, '0', '1500.00', 1),
(105, '148869595328712', '1349196837', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '200', '790.00', 1),
(106, '958463589154534', '2517313841', '18157738', NULL, '', '15.00', '100.00', 50, '1500.00', '0.00', '', NULL, '0', '1500.00', 1),
(107, '728994343855917', '5636157226', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '2500.00', 1),
(108, '132315517639927', '6677479219', '18157738', NULL, '', '5.00', '100.00', 50, '500.00', '0.00', '', NULL, '500', '0.00', 1),
(109, '212627179861289', '8625593325', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(110, '872151761222423', '9376336456', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(111, '681777524225365', '5413352494', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(112, '351754154666185', '1329879611', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '2600.00', 1),
(113, '367938663337692', '2138384728', '18157738', NULL, '', '15.00', '100.00', 50, '1500.00', '0.00', '', NULL, '0', '1500.00', 1),
(114, '295333195351837', '6494814163', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(115, '852274831749859', '8844386999', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(116, '357691273478673', '4952748277', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(117, '134949298962474', '7555465721', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', NULL, '0', '1000.00', 1),
(118, '387654126794585', '6227833165', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(119, '148856667224395', '6566679428', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(120, '455367958511791', '3432777646', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(121, '892422423714783', '9598148611', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(122, '512373345832984', '5291764223', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(123, '989286183799691', '2628477248', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(124, '261775583457485', '5564756149', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(125, '165457616379471', '6652926473', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(126, '997843654191877', '1765719771', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(127, '789591186727459', '8869815738', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(128, '452126323136396', '8756838151', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(129, '414571178792838', '1188643817', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(130, '299245371755115', '1129166689', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(131, '918865998742623', '5615768113', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(132, '446676646698976', '8117225273', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(133, '622218334696815', '2995433938', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(134, '421374229425781', '1754753789', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(135, '217319492269798', '3341111896', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(136, '453761373186623', '2637216532', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(137, '313722145228612', '5318165889', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(138, '697855549967797', '9465699843', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(139, '391892824982582', '6112215271', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(140, '629141678129323', '7111824887', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(141, '491488979435123', '9731651863', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(142, '111774111285364', '8186129163', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '110.00', 1),
(146, '535799162859295', '4692712959', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', '0.00', '0', '100.00', 0),
(147, '231544269517896', '7891851813', '77268351', NULL, '', '5.00', '60.00', 50, '300.00', '0.00', '', NULL, '300', '0.00', 1),
(148, '859145649355483', '5558499924', '77268351', NULL, '', '5.00', '60.00', 50, '300.00', '0.00', '', NULL, '300', '0.00', 1),
(149, '274175367989738', '4746528194', '18157738', NULL, '', '41.00', '100.00', 50, '4100.00', '0.00', '', NULL, '4100', '0.00', 1),
(150, '269654567177752', '8262278417', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '160.00', 1),
(151, '282431845823599', '8262278417', '77268351', NULL, '', '1.00', '60.00', 50, '60.00', '0.00', '', NULL, '0', '160.00', 1),
(152, '223216331837769', '8262278417', '58384682', NULL, '', '1.00', '100.00', 90, '0.00', '0.00', '', NULL, '0', '160.00', 1),
(153, '295696334744927', '9482589494', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '160.00', 1),
(154, '626462593684277', '9482589494', '77268351', NULL, '', '1.00', '60.00', 50, '60.00', '0.00', '', NULL, '0', '160.00', 1),
(155, '666596138666724', '9482589494', '58384682', NULL, '', '1.00', '100.00', 90, '0.00', '0.00', '', NULL, '0', '160.00', 1),
(158, '486358585722341', '1115735675', '18157738', NULL, '', '10.00', '100.00', 50, '1000.00', '0.00', '', '0.00', '0', '3600.00', 0),
(159, '869125635325779', '5823659932', '18157738', NULL, '', '1.00', '100.00', 50, '100.00', '0.00', '', NULL, '0', '100.00', 1),
(160, '474663185912635', '3135823336', '77777', NULL, '', '2.00', '25000.00', 20000, '50000.00', '0.00', '', '5000.00', '0', '55000.00', 1),
(161, '747997396775752', '3141687466', '77777', NULL, '', '1.00', '25000.00', 20000, '25000.00', '0.00', '', '2500.00', '27500', '0.00', 1),
(162, '373861691839739', '8198534179', '77777', NULL, '', '1.00', '25000.00', 20000, '25000.00', '0.00', '', '2500.00', '27500', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES
(1, 'user_profile', 'User Profile', NULL),
(2, 'setting', 'Setting', NULL),
(3, 'language', 'Language', NULL),
(4, 'manage_users', 'Manage Users', NULL),
(5, 'add_user', 'Add User', 'ব্যবহারকারী সংযোজন'),
(6, 'manage_company', 'Manage Company', NULL),
(7, 'web_settings', 'Software Settings', NULL),
(8, 'manage_accounts', 'Manage Accounts', NULL),
(9, 'create_accounts', 'Create Account', NULL),
(10, 'manage_bank', 'Manage Bank', NULL),
(11, 'add_new_bank', 'Add New Bank', 'নতুন ব্যাংক সংযোজন'),
(12, 'settings', 'Settings', NULL),
(13, 'closing_report', 'Closing Report', NULL),
(14, 'closing', 'Closing', NULL),
(15, 'cheque_manager', 'Cheque Manager', 'চেক  ম্যানেজার'),
(16, 'accounts_summary', 'Accounts Summary', 'হিসাব সামারি'),
(17, 'expense', 'Expense', NULL),
(18, 'income', 'Income', NULL),
(19, 'accounts', 'Accounts', 'হিসাবস'),
(20, 'stock_report', 'Stock Report', NULL),
(21, 'stock', 'Stock', NULL),
(22, 'pos_invoice', 'POS Sale', NULL),
(23, 'manage_invoice', 'Manage Sale', NULL),
(24, 'new_invoice', 'New Sale', NULL),
(25, 'invoice', 'Sale', NULL),
(26, 'manage_purchase', 'Manage Purchase', NULL),
(27, 'add_purchase', 'Add Purchase', 'ক্রয় সংযোজন'),
(28, 'purchase', 'Purchase', NULL),
(29, 'paid_customer', 'Paid Customer', NULL),
(30, 'manage_customer', 'Manage Customer', NULL),
(31, 'add_customer', 'Add Customer', 'কাস্টমার যোগ'),
(32, 'customer', 'Customer', NULL),
(33, 'supplier_payment_actual', 'Supplier Payment Ledger', NULL),
(34, 'supplier_sales_summary', 'Supplier Sales Summary', NULL),
(35, 'supplier_sales_details', 'Supplier Sales Details', NULL),
(36, 'supplier_ledger', 'Supplier Ledger', NULL),
(37, 'manage_supplier', 'Manage Supplier', NULL),
(38, 'add_supplier', 'Add Supplier', 'সরবরাহকারী সংযোজন'),
(39, 'supplier', 'Supplier', NULL),
(40, 'product_statement', 'Product Statement', NULL),
(41, 'manage_product', 'Manage Product', NULL),
(42, 'add_product', 'Add Product', 'পণ্য সংযোজন'),
(43, 'product', 'Product', NULL),
(44, 'manage_category', 'Manage Category', NULL),
(45, 'add_category', 'Add Category', 'ক্যাটাগরি যোগ'),
(46, 'category', 'Category', ' বিভাগ'),
(47, 'sales_report_product_wise', 'Sales Report (Product Wise)', NULL),
(48, 'purchase_report', 'Purchase Report', NULL),
(49, 'sales_report', 'Sales Report', NULL),
(50, 'todays_report', 'Todays Report', NULL),
(51, 'report', 'Report', NULL),
(52, 'dashboard', 'Dashboard', NULL),
(53, 'online', 'Online', NULL),
(54, 'logout', 'Logout', NULL),
(55, 'change_password', 'Change Password', ' পাসওয়ার্ড পরিবর্তন করুন'),
(56, 'total_purchase', 'Total Purchase', NULL),
(57, 'total_amount', 'Total Amount', NULL),
(58, 'supplier_name', 'Supplier Name', NULL),
(59, 'invoice_no', 'Invoice No', NULL),
(60, 'purchase_date', 'Purchase Date', NULL),
(61, 'todays_purchase_report', 'Todays Purchase Report', NULL),
(62, 'total_sales', 'Total Sales', NULL),
(63, 'customer_name', 'Customer Name', NULL),
(64, 'sales_date', 'Sales Date', NULL),
(65, 'todays_sales_report', 'Todays Sales Report', NULL),
(66, 'home', 'Home', NULL),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL),
(68, 'total_ammount', 'Total Amount', NULL),
(69, 'rate', 'Rate', NULL),
(70, 'product_model', 'Product Model', NULL),
(71, 'product_name', 'Product Name', NULL),
(72, 'search', 'Search', NULL),
(73, 'end_date', 'End Date', NULL),
(74, 'start_date', 'Start Date', NULL),
(75, 'total_purchase_report', 'Total Purchase Report', NULL),
(76, 'total_sales_report', 'Total Sales Report', NULL),
(77, 'total_seles', 'Total Sales', NULL),
(78, 'all_stock_report', 'All Stock Report', 'সমস্ত স্টক_রিপোর্ট'),
(79, 'search_by_product', 'Search By Product', NULL),
(80, 'date', 'Date', NULL),
(81, 'print', 'Print', NULL),
(82, 'stock_date', 'Stock Date', NULL),
(83, 'print_date', 'Print Date', NULL),
(84, 'sales', 'Sales', NULL),
(85, 'price', 'Price', NULL),
(86, 'sl', 'SL.', NULL),
(87, 'add_new_category', 'Add new category', 'নতুন ক্যাটাগরি সংযোজন'),
(88, 'category_name', 'Category Name', 'ক্যাটাগরি নাম'),
(89, 'save', 'Save', NULL),
(90, 'delete', 'Delete', NULL),
(91, 'update', 'Update', NULL),
(92, 'action', 'Action', 'কর্ম'),
(93, 'manage_your_category', 'Manage your category ', NULL),
(94, 'category_edit', 'Category Edit', 'ক্যাটাগরি সম্পাদনা'),
(95, 'status', 'Status', NULL),
(96, 'active', 'Active', ' সক্রিয়'),
(97, 'inactive', 'Inactive', NULL),
(98, 'save_changes', 'Save Changes', NULL),
(99, 'save_and_add_another', 'Save And Add Another', NULL),
(100, 'model', 'Model', NULL),
(101, 'supplier_price', 'Supplier Price', NULL),
(102, 'sell_price', 'Sale Price', NULL),
(103, 'image', 'Image', NULL),
(104, 'select_one', 'Select One', NULL),
(105, 'details', 'Details', NULL),
(106, 'new_product', 'New Product', NULL),
(107, 'add_new_product', 'Add new product', 'নতুন পণ্য সংযোজন'),
(108, 'barcode', 'Barcode', ' বারকোড'),
(109, 'qr_code', 'Qr-Code', NULL),
(110, 'product_details', 'Product Details', NULL),
(111, 'manage_your_product', 'Manage your product', NULL),
(112, 'product_edit', 'Product Edit', NULL),
(113, 'edit_your_product', 'Edit your product', NULL),
(114, 'cancel', 'Cancel', ' বাতিল'),
(115, 'incl_vat', 'Incl. Vat', NULL),
(116, 'money', 'TK', NULL),
(117, 'grand_total', 'Grand Total', NULL),
(118, 'quantity', 'Qnty', NULL),
(119, 'product_report', 'Product Report', NULL),
(120, 'product_sales_and_purchase_report', 'Product sales and purchase report', NULL),
(121, 'previous_stock', 'Previous Stock', NULL),
(122, 'out', 'Out', NULL),
(123, 'in', 'In', NULL),
(124, 'to', 'To', NULL),
(125, 'previous_balance', 'Previous Credit Balance', NULL),
(126, 'customer_address', 'Customer Address', NULL),
(127, 'customer_mobile', 'Customer Mobile', NULL),
(128, 'customer_email', 'Customer Email', NULL),
(129, 'add_new_customer', 'Add new customer', 'নতুন কাস্টোমার সংযোজন'),
(130, 'balance', 'Balance', 'টাকা'),
(131, 'mobile', 'Mobile', NULL),
(132, 'address', 'Address', 'ঠিকানা'),
(133, 'manage_your_customer', 'Manage your customer', NULL),
(134, 'customer_edit', 'Customer Edit', NULL),
(135, 'paid_customer_list', 'Paid Customer List', NULL),
(136, 'ammount', 'Amount', ' পরিমাণ'),
(137, 'customer_ledger', 'Customer Ledger', NULL),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', NULL),
(139, 'customer_information', 'Customer Information', NULL),
(140, 'debit_ammount', 'Debit Amount', NULL),
(141, 'credit_ammount', 'Credit Amount', NULL),
(142, 'balance_ammount', 'Balance Amount', 'টাকার পরিমান'),
(143, 'receipt_no', 'Receipt NO', NULL),
(144, 'description', 'Description', NULL),
(145, 'debit', 'Debit', NULL),
(146, 'credit', 'Credit', NULL),
(147, 'item_information', 'Item Information', NULL),
(148, 'total', 'Total', NULL),
(149, 'please_select_supplier', 'Please Select Supplier', NULL),
(150, 'submit', 'Submit', NULL),
(151, 'submit_and_add_another', 'Submit And Add Another One', NULL),
(152, 'add_new_item', 'Add New Item', 'নতুন আইটেম সংযোজন'),
(153, 'manage_your_purchase', 'Manage your purchase', NULL),
(154, 'purchase_edit', 'Purchase Edit', NULL),
(155, 'purchase_ledger', 'Purchase Ledger', NULL),
(156, 'invoice_information', 'Sale Information', NULL),
(157, 'paid_ammount', 'Paid Amount', NULL),
(158, 'discount', 'Dis./Pcs.', NULL),
(159, 'save_and_paid', 'Save And Paid', NULL),
(160, 'payee_name', 'Payee Name', NULL),
(161, 'manage_your_invoice', 'Manage your Sale', NULL),
(162, 'invoice_edit', 'Sale Edit', NULL),
(163, 'new_pos_invoice', 'New POS Sale', NULL),
(164, 'add_new_pos_invoice', 'Add new pos Sale', 'নতুন POS ইনভয়েস সংযোজন'),
(165, 'product_id', 'Product ID', NULL),
(166, 'paid_amount', 'Paid Amount', NULL),
(167, 'authorised_by', 'Authorised By', 'অনুমোদিত'),
(168, 'checked_by', 'Checked By', ' দ্বারা পরীক্ষা করা'),
(169, 'received_by', 'Received By', NULL),
(170, 'prepared_by', 'Prepared By', NULL),
(171, 'memo_no', 'Memo No', NULL),
(172, 'website', 'Website', NULL),
(173, 'email', 'Email', NULL),
(174, 'invoice_details', 'Sale Details', NULL),
(175, 'reset', 'Reset', NULL),
(176, 'payment_account', 'Payment Account', NULL),
(177, 'bank_name', 'Bank Name', ' ব্যাংক নাম'),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', ' চেক বা পে অর্ডার নং'),
(179, 'payment_type', 'Payment Type', NULL),
(180, 'payment_from', 'Payment From', NULL),
(181, 'payment_date', 'Payment Date', NULL),
(182, 'add_income', 'Add Income', 'আয় যোগ'),
(183, 'cash', 'Cash', ' নগদ'),
(184, 'cheque', 'Cheque', ' চেক'),
(185, 'pay_order', 'Pay Order', NULL),
(186, 'payment_to', 'Payment To', NULL),
(187, 'total_outflow_ammount', 'Total Expense Amount', NULL),
(188, 'transections', 'Transections', NULL),
(189, 'accounts_name', 'Accounts Name', 'হিসাব নাম'),
(190, 'outflow_report', 'Expense Report', NULL),
(191, 'inflow_report', 'Income Report', NULL),
(192, 'all', 'All', 'all'),
(193, 'account', 'Account', ' হিসাব'),
(194, 'from', 'From', NULL),
(195, 'account_summary_report', 'Account Summary Report', 'হিসাবের সামারি বর্ণনা'),
(196, 'search_by_date', 'Search By Date', NULL),
(197, 'cheque_no', 'Cheque No', ' চেক নং'),
(198, 'name', 'Name', NULL),
(199, 'closing_account', 'Closing Account', NULL),
(200, 'close_your_account', 'Close your account', NULL),
(201, 'last_day_closing', 'Last Day Closing', NULL),
(202, 'cash_in', 'Cash In', ' মজুদ করা'),
(203, 'cash_out', 'Cash Out', ' উত্তোলন'),
(204, 'cash_in_hand', 'Cash In Hand', ' হাতে নগদ'),
(205, 'add_new_bank', 'Add New Bank', 'নতুন ব্যাংক সংযোজন'),
(206, 'day_closing', 'Day Closing', NULL),
(207, 'account_closing_report', 'Account Closing Report', 'হিসাব বন্ধের বর্ণনা'),
(208, 'last_day_ammount', 'Last Day Amount', NULL),
(209, 'adjustment', 'Adjustment', 'সমন্বয়'),
(210, 'pay_type', 'Pay Type', NULL),
(211, 'customer_or_supplier', 'Customer,Supplier Or Others', NULL),
(212, 'transection_id', 'Transections ID', NULL),
(213, 'accounts_summary_report', 'Accounts Summary Report', 'হিসাব সামারি রিপোর্ট'),
(214, 'bank_list', 'Bank List', ' ব্যাংক তালিকা'),
(215, 'bank_edit', 'Bank Edit', ' ব্যাংক সম্পাদনা করুন'),
(216, 'debit_plus', 'Debit (+)', NULL),
(217, 'credit_minus', 'Credit (-)', NULL),
(218, 'account_name', 'Account Name', 'হিসাবের নাম'),
(219, 'account_type', 'Account Type', 'হিসাব টাইপ'),
(220, 'account_real_name', 'Account Real Name', 'হিসাবের রিয়াল নাম'),
(221, 'manage_account', 'Manage Account', NULL),
(222, 'company_name', 'Niha International', NULL),
(223, 'edit_your_company_information', 'Edit your company information', NULL),
(224, 'company_edit', 'Company Edit', NULL),
(225, 'admin', 'Admin', 'admin'),
(226, 'user', 'User', NULL),
(227, 'password', 'Password', NULL),
(228, 'last_name', 'Last Name', NULL),
(229, 'first_name', 'First Name', NULL),
(230, 'add_new_user_information', 'Add new user information', 'নতুন ব্যবহারকারীর তথ্য সংযোজন'),
(231, 'user_type', 'User Type', NULL),
(232, 'user_edit', 'User Edit', NULL),
(233, 'rtr', 'RTR', NULL),
(234, 'ltr', 'LTR', NULL),
(235, 'ltr_or_rtr', 'LTR/RTR', NULL),
(236, 'footer_text', 'Footer Text', NULL),
(237, 'favicon', 'Favicon', NULL),
(238, 'logo', 'Logo', NULL),
(239, 'update_setting', 'Update Setting', NULL),
(240, 'update_your_web_setting', 'Update your web setting', NULL),
(241, 'login', 'Login', NULL),
(242, 'your_strong_password', 'Your strong password', NULL),
(243, 'your_unique_email', 'Your unique email', NULL),
(244, 'please_enter_your_login_information', 'Please enter your login information.', NULL),
(245, 'update_profile', 'Update Profile', NULL),
(246, 'your_profile', 'Your Profile', NULL),
(247, 're_type_password', 'Re-Type Password', NULL),
(248, 'new_password', 'New Password', NULL),
(249, 'old_password', 'Old Password', NULL),
(250, 'new_information', 'New Information', NULL),
(251, 'old_information', 'Old Information', NULL),
(252, 'change_your_information', 'Change your information', ' আপনার তথ্য পরিবর্তন করুন'),
(253, 'change_your_profile', 'Change your profile', ' আপনার প্রোফাইল পরিবর্তন করুন'),
(254, 'profile', 'Profile', NULL),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL),
(256, 'successfully_updated', 'Successfully Updated.', NULL),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', 'খালি জায়গা গ্রহন যোগ্য নয়'),
(258, 'successfully_changed_password', 'Successfully changed password.', NULL),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', NULL),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', NULL),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', ' অ্যামাউন্ট অ্যাসস্টেড চেক করুন'),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', NULL),
(265, 'successfully_added', 'Successfully Added.', NULL),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL),
(267, 'successfully_payment_received', 'Successfully Payment Received.', NULL),
(268, 'already_inserted', 'Already Inserted !', ' ইতিমধ্যে প্রবেশ করা হয়েছে'),
(269, 'successfully_delete', 'Successfully Delete.', NULL),
(270, 'successfully_created', 'Successfully Created.', NULL),
(271, 'logo_not_uploaded', 'Logo not uploaded !', NULL),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', NULL),
(273, 'supplier_mobile', 'Supplier Mobile', NULL),
(274, 'supplier_address', 'Supplier Address', NULL),
(275, 'supplier_details', 'Supplier Details', NULL),
(276, 'add_new_supplier', 'Add New Supplier', 'নতুন সরবরাহকারী সংযোজন'),
(277, 'manage_suppiler', 'Manage Supplier', NULL),
(278, 'manage_your_supplier', 'Manage your supplier', NULL),
(279, 'manage_supplier_ledger', 'Manage supplier ledger', NULL),
(280, 'invoice_id', 'Invoice ID', NULL),
(281, 'deposite_id', 'Deposite ID', NULL),
(282, 'supplier_actual_ledger', 'Supplier Payment Ledger', NULL),
(283, 'supplier_information', 'Supplier Information', NULL),
(284, 'event', 'Event', NULL),
(285, 'add_new_income', 'Add New Income', 'নতুন আয় সংযোজন'),
(286, 'add_expese', 'Add Expense', ' ব্যয় যোগ করুন'),
(287, 'add_new_expense', 'Add New Expense', 'নতুন খরচ সংযোজন'),
(288, 'total_inflow_ammount', 'Total Income Amount', NULL),
(289, 'create_new_invoice', 'Create New Sale', NULL),
(290, 'create_pos_invoice', 'Create POS Sale', NULL),
(291, 'total_profit', 'Total Profit', NULL),
(292, 'monthly_progress_report', 'Monthly Progress Report', NULL),
(293, 'total_invoice', 'Total Sale', NULL),
(294, 'account_summary', 'Account Summary', 'হিসাবের সামারি'),
(295, 'total_supplier', 'Total Supplier', NULL),
(296, 'total_product', 'Total Product', NULL),
(297, 'total_customer', 'Total Customer', NULL),
(298, 'supplier_edit', 'Supplier Edit', NULL),
(299, 'add_new_invoice', 'Add New Sale', 'নতুন চালান সংযোজন'),
(300, 'add_new_purchase', 'Add new purchase', 'নতুন ক্রয় সংযোজন'),
(301, 'currency', 'Currency', NULL),
(302, 'currency_position', 'Currency Position', NULL),
(303, 'left', 'Left', NULL),
(304, 'right', 'Right', NULL),
(305, 'add_tax', 'Add Tax', 'কর সংযোজন'),
(306, 'manage_tax', 'Manage Tax', NULL),
(307, 'add_new_tax', 'Add new tax', 'নতুন কর সংযোজন'),
(308, 'enter_tax', 'Enter Tax', NULL),
(309, 'already_exists', 'Already Exists !', ' আগে থেকেই আছে'),
(310, 'successfully_inserted', 'Successfully Inserted.', NULL),
(311, 'tax', 'Tax', NULL),
(312, 'tax_edit', 'Tax Edit', NULL),
(313, 'product_not_added', 'Product not added !', NULL),
(314, 'total_tax', 'Total Tax', NULL),
(315, 'manage_your_supplier_details', 'Manage your supplier details.', NULL),
(316, 'invoice_description', 'Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is sim ply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', NULL),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL),
(318, 'billing_date', 'Billing Date', ' বিলিং তারিখ'),
(319, 'billing_to', 'Billing To', ' বিলিং প্রতি'),
(320, 'billing_from', 'Billing From', ' বিলিং_ফর্ম'),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this product.This product already used in calculation system!', NULL),
(322, 'old_customer', 'Old Customer', NULL),
(323, 'new_customer', 'New Customer', NULL),
(324, 'new_supplier', 'New Supplier', NULL),
(325, 'old_supplier', 'Old Supplier', NULL),
(326, 'credit_customer', 'Credit Customer', NULL),
(327, 'account_already_exists', 'This Account Already Exists !', 'হিসাব আগে থেকে আছে'),
(328, 'edit_income', 'Edit Income', NULL),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', NULL),
(330, 'account_edit', 'Account Edit', 'হিসাবএডিট'),
(331, 'due', 'Due', NULL),
(332, 'expense_edit', 'Expense Edit', NULL),
(333, 'please_select_customer', 'Please select customer !', NULL),
(334, 'profit_report', 'Profit Report (Sale Wise)', NULL),
(335, 'total_profit_report', 'Total profit report', NULL),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL),
(337, 'category_not_selected', 'Category not selected.', 'অনির্বাচিত ক্যাটাগরি'),
(338, 'supplier_not_selected', 'Supplier not selected.', NULL),
(339, 'please_select_product', 'Please select product.', NULL),
(340, 'product_model_already_exist', 'Product model already exist !', NULL),
(341, 'invoice_logo', 'Sale Logo', NULL),
(342, 'available_qnty', 'Av. Qnty.', 'available_qnty'),
(343, 'you_can_not_buy_greater_than_available_cartoon', 'You can not select grater than available cartoon !', NULL),
(344, 'customer_details', 'Customer details', NULL),
(345, 'manage_customer_details', 'Manage customer details.', NULL),
(346, 'site_key', 'Captcha Site Key', NULL),
(347, 'secret_key', 'Captcha Secret Key', NULL),
(348, 'captcha', 'Captcha', ' ক্যাপচা'),
(349, 'cartoon_quantity', 'Cartoon Quantity', ' কার্টুন পরিমাণ'),
(350, 'total_cartoon', 'Total Cartoon', NULL),
(351, 'cartoon', 'Cartoon', ' কার্টুন'),
(352, 'item_cartoon', 'Item/Cartoon', NULL),
(353, 'product_and_supplier_did_not_match', 'Product and supplier did not match !', NULL),
(354, 'if_you_update_purchase_first_select_supplier_then_product_and_then_quantity', 'If you update purchase,first select supplier then product and then update qnty.', NULL),
(355, 'item', 'Item', NULL),
(356, 'manage_your_credit_customer', 'Manage your credit customer', NULL),
(357, 'total_quantity', 'Total Quantity', NULL),
(358, 'quantity_per_cartoon', 'Quantity per cartoon', NULL),
(359, 'barcode_qrcode_scan_here', 'Barcode or QR-code scan here', ' বারকোড_কিরকোড_স্ক্যান_এখানে'),
(360, 'synchronizer_setting', 'Synchronizer Setting', NULL),
(361, 'data_synchronizer', 'Data Synchronizer', NULL),
(362, 'hostname', 'Host name', NULL),
(363, 'username', 'User Name', NULL),
(364, 'ftp_port', 'FTP Port', NULL),
(365, 'ftp_debug', 'FTP Debug', NULL),
(366, 'project_root', 'Project Root', NULL),
(367, 'please_try_again', 'Please try again', NULL),
(368, 'save_successfully', 'Save successfully', NULL),
(369, 'synchronize', 'Synchronize', NULL),
(370, 'internet_connection', 'Internet Connection', NULL),
(371, 'outgoing_file', 'Outgoing File', NULL),
(372, 'incoming_file', 'Incoming File', NULL),
(373, 'ok', 'Ok', NULL),
(374, 'not_available', 'Not Available', NULL),
(375, 'available', 'Available', ' উপলব্ধ'),
(376, 'download_data_from_server', 'Download data from server', NULL),
(377, 'data_import_to_database', 'Data import to database', NULL),
(378, 'data_upload_to_server', 'Data uplod to server', NULL),
(379, 'please_wait', 'Please Wait', NULL),
(380, 'ooops_something_went_wrong', 'Oooops Something went wrong !', NULL),
(381, 'upload_successfully', 'Upload successfully', NULL),
(382, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file please check configuration', NULL),
(383, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', NULL),
(384, 'download_successfully', 'Download successfully', NULL),
(385, 'unable_to_download_file_please_check_configuration', 'Unable to download file please check configuration', NULL),
(386, 'data_import_first', 'Data import past', NULL),
(387, 'data_import_successfully', 'Data import successfully', NULL),
(388, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file', NULL),
(389, 'total_sale_ctn', 'Total Sale Ctn', NULL),
(390, 'in_qnty', 'In Qnty.', NULL),
(391, 'out_qnty', 'Out Qnty.', NULL),
(392, 'stock_report_supplier_wise', 'Stock Report (Supplier Wise)', NULL),
(393, 'all_stock_report_supplier_wise', 'Stock Report (Suppler Wise)', ' সমস্ত_সম্পর্কিত_বন্দর_সম্পর্কিত_দিকবার'),
(394, 'select_supplier', 'Select Supplier', NULL),
(395, 'stock_report_product_wise', 'Stock Report (Product Wise)', NULL),
(396, 'phone', 'Phone', NULL),
(397, 'select_product', 'Select Product', NULL),
(398, 'in_quantity', 'In Qnty.', NULL),
(399, 'out_quantity', 'Out Qnty.', NULL),
(400, 'in_taka', 'In TK.', NULL),
(401, 'out_taka', 'Out TK.', NULL),
(402, 'commission', 'Commission', NULL),
(403, 'generate_commission', 'Generate Commssion', NULL),
(404, 'commission_rate', 'Commission Rate', NULL),
(405, 'total_ctn', 'Total Ctn.', NULL),
(406, 'per_pcs_commission', 'Per PCS Commission', NULL),
(407, 'total_commission', 'Total Commission', NULL),
(408, 'enter', 'Enter', NULL),
(409, 'please_add_walking_customer_for_default_customer', 'Please add \'Walking Customer\' for default customer.', NULL),
(410, 'supplier_ammount', 'Supplier Amount', NULL),
(411, 'my_sale_ammount', 'My Sale Amount', NULL),
(412, 'signature_pic', 'Signature Picture', NULL),
(413, 'branch', 'Branch', ' শাখা'),
(414, 'ac_no', 'A/C Number', 'এ্যাকাউন্ট নাম্বার'),
(415, 'ac_name', 'A/C Name', 'এ্যাকাউন্ট নাম'),
(416, 'bank_transaction', 'Bank Transaction', ' ব্যাংক লেনদেন'),
(417, 'bank', 'Bank', ' ব্যাংক'),
(418, 'withdraw_deposite_id', 'Withdraw / Deposite ID', NULL),
(419, 'bank_ledger', 'Bank Ledger', ' ব্যাংক খাতা'),
(420, 'note_name', 'Note Name', NULL),
(421, 'pcs', 'Pcs.', NULL),
(422, '1', '1', '১'),
(423, '2', '2', '২'),
(424, '5', '5', '৫'),
(425, '10', '10', '১০'),
(426, '20', '20', '২০'),
(427, '50', '50', '৫০'),
(428, '100', '100', '১০০'),
(429, '500', '500', '৫০০'),
(430, '1000', '1000', '১০০০'),
(431, 'total_discount', 'Total Discount', NULL),
(432, 'product_not_found', 'Product not found !', NULL),
(433, 'this_is_not_credit_customer', 'This is not credit customer !', NULL),
(434, 'personal_loan', 'Personal Loan', NULL),
(435, 'add_person', 'Add Person', 'ব্যক্তি সংযোজন'),
(436, 'add_loan', 'Add Loan', 'লোন যোগ'),
(437, 'add_payment', 'Add Payment', 'খরচ সংযোজন'),
(438, 'manage_person', 'Manage Person', NULL),
(439, 'personal_edit', 'Person Edit', NULL),
(440, 'person_ledger', 'Person Ledger', NULL),
(441, 'backup_restore', 'Backup ', 'ব্যাকআপ  পুনরুদ্ধার'),
(442, 'database_backup', 'Database backup', NULL),
(443, 'file_information', 'File information', NULL),
(444, 'filename', 'Filename', NULL),
(445, 'size', 'Size', NULL),
(446, 'backup_date', 'Backup date', ' ব্যাকআপ তারিখ'),
(447, 'backup_now', 'Backup now', ' এখন ব্যাকআপ '),
(448, 'restore_now', 'Restore now', NULL),
(449, 'are_you_sure', 'Are you sure ?', 'আপনি কি নিশ্চিত'),
(450, 'download', 'Download', NULL),
(451, 'backup_and_restore', 'Backup', ' ব্যাকআপ এবং পুনঃস্থাপন'),
(452, 'backup_successfully', 'Backup successfully', 'সাফল্যের সাথে ব্যাকআপ'),
(453, 'delete_successfully', 'Delete successfully', NULL),
(454, 'stock_ctn', 'Stock/Qnt', NULL),
(455, 'unit', 'Unit', NULL),
(456, 'meter_m', 'Meter (M)', NULL),
(457, 'piece_pc', 'Piece (Pc)', NULL),
(458, 'kilogram_kg', 'Kilogram (Kg)', NULL),
(459, 'stock_cartoon', 'Stock Cartoon', NULL),
(460, 'add_product_csv', 'Add Product (CSV)', 'পণ্য সংযোজন CSV'),
(461, 'import_product_csv', 'Import product (CSV)', NULL),
(462, 'close', 'Close', NULL),
(463, 'download_example_file', 'Download example file.', NULL),
(464, 'upload_csv_file', 'Upload CSV File', NULL),
(465, 'csv_file_informaion', 'CSV File Information', NULL),
(466, 'out_of_stock', 'Out Of Stock', NULL),
(467, 'others', 'Others', NULL),
(468, 'full_paid', 'Full Paid', NULL),
(469, 'successfully_saved', 'Your Data Successfully Saved', NULL),
(470, 'manage_loan', 'Manage Loan', NULL),
(471, 'receipt', 'Receipt', NULL),
(472, 'payment', 'Payment', NULL),
(473, 'cashflow', 'Daily Cash Flow', ' নগদ প্রবাহ'),
(474, 'signature', 'Signature', NULL),
(475, 'supplier_reports', 'Supplier Reports', NULL),
(476, 'generate', 'Generate', NULL),
(477, 'todays_overview', 'Todays Overview', NULL),
(478, 'last_sales', 'Last Sales', NULL),
(479, 'manage_transaction', 'Manage Transaction', NULL),
(480, 'daily_summary', 'Daily Summary', NULL),
(481, 'daily_cash_flow', 'Daily Cash Flow', NULL),
(482, 'custom_report', 'Custom Report', NULL),
(483, 'transaction', 'Transaction', NULL),
(484, 'receipt_amount', 'Receipt Amount', NULL),
(485, 'transaction_details_datewise', 'Transaction Details Datewise', NULL),
(486, 'cash_closing', 'Cash Closing', ' নগদ_ক্লোজিং'),
(487, 'you_can_not_buy_greater_than_available_qnty', 'You can not buy greater than available qnty.', NULL),
(488, 'supplier_id', 'Supplier ID', NULL),
(489, 'category_id', 'Category ID', 'ক্যাটাগরি আইডি'),
(490, 'select_report', 'Select Report', NULL),
(491, 'supplier_summary', 'Supplier summary', NULL),
(492, 'sales_payment_actual', 'Sales payment actual', NULL),
(493, 'today_already_closed', 'Today already closed.', NULL),
(494, 'root_account', 'Root Account', NULL),
(495, 'office', 'Office', NULL),
(496, 'loan', 'Loan', NULL),
(497, 'transaction_mood', 'Transaction Mood', NULL),
(498, 'select_account', 'Select Account', NULL),
(499, 'add_receipt', 'Add Receipt', 'রসিদ সংযোজন'),
(500, 'update_transaction', 'Update Transaction', NULL),
(501, 'no_stock_found', 'No Stock Found !', NULL),
(502, 'admin_login_area', 'Admin Login Area', 'admin_login_area'),
(503, 'print_qr_code', 'Print QR Code', NULL),
(504, 'discount_type', 'Discount Type', NULL),
(505, 'discount_percentage', 'Discount', NULL),
(506, 'fixed_dis', 'Fixed Dis.', NULL),
(507, 'return', 'Return', NULL),
(508, 'stock_return_list', 'Stock Return List', NULL),
(509, 'wastage_return_list', 'Wastage Return List', NULL),
(510, 'return_invoice', 'Sale Return', NULL),
(511, 'sold_qty', 'Sold Qty', NULL),
(512, 'ret_quantity', 'Return Qty', NULL),
(513, 'deduction', 'Deduction', NULL),
(514, 'check_return', 'Check Return', ' চেক রিটার্ন'),
(515, 'reason', 'Reason', NULL),
(516, 'usablilties', 'Usability', NULL),
(517, 'adjs_with_stck', 'Adjust With Stock', 'স্টক সমন্বয়'),
(518, 'return_to_supplier', 'Return To Supplier', NULL),
(519, 'wastage', 'Wastage', NULL),
(520, 'to_deduction', 'Total Deduction ', NULL),
(521, 'nt_return', 'Net Return Amount', NULL),
(522, 'return_list', 'Return List', NULL),
(523, 'add_return', 'Add Return', 'ফেরত সংযোজন'),
(524, 'per_qty', 'Purchase Qty', NULL),
(525, 'return_supplier', 'Supplier Return', NULL),
(526, 'stock_purchase', 'Stock Purchase Price', NULL),
(527, 'stock_sale', 'Stock Sale Price', NULL),
(528, 'supplier_return', 'Supplier Return', NULL),
(529, 'purchase_id', 'Purchase ID', NULL),
(530, 'return_id', 'Return ID', NULL),
(531, 'supplier_return_list', 'Supplier Return List', NULL),
(532, 'c_r_slist', 'Stock Return Stock', NULL),
(533, 'wastage_list', 'Wastage List', NULL),
(534, 'please_input_correct_invoice_id', 'Please Input a Correct Sale ID', NULL),
(535, 'please_input_correct_purchase_id', 'Please Input Your Correct  Purchase ID', NULL),
(536, 'add_more', 'Add More', 'আরও যোগ'),
(537, 'prouct_details', 'Product Details', NULL),
(538, 'prouct_detail', 'Product Details', NULL),
(539, 'stock_return', 'Stock Return', NULL),
(540, 'choose_transaction', 'Select Transaction', ' লেনদেন চয়ন করুন'),
(541, 'transection_category', 'Select  Category', NULL),
(542, 'transaction_categry', 'Select Category', NULL),
(543, 'search_supplier', 'Search Supplier', NULL),
(544, 'customer_id', 'Customer ID', NULL),
(545, 'search_customer', 'Search Customer Invoice', NULL),
(546, 'serial_no', 'SN', NULL),
(547, 'item_discount', 'Item Discount', NULL),
(548, 'invoice_discount', 'Sale Discount', NULL),
(549, 'add_unit', 'Add Unit', 'একক সংযোজন'),
(550, 'manage_unit', 'Manage Unit', NULL),
(551, 'add_new_unit', 'Add New Unit', 'নতুন ইউনিট সংযোজন'),
(552, 'unit_name', 'Unit Name', NULL),
(553, 'payment_amount', 'Payment Amount', NULL),
(554, 'manage_your_unit', 'Manage Your Unit', NULL),
(555, 'unit_id', 'Unit ID', NULL),
(556, 'unit_edit', 'Unit Edit', NULL),
(557, 'vat', 'Vat', NULL),
(558, 'sales_report_category_wise', 'Sales Report (Category wise)', NULL),
(559, 'purchase_report_category_wise', 'Purchase Report (Category wise)', NULL),
(560, 'category_wise_purchase_report', 'Category wise purchase report', 'ক্যাটাগরি বুদ্ধিমান ক্রয়ের রিপোর্ট'),
(561, 'category_wise_sales_report', 'Category wise sales report', 'ক্যাটাগরি বুদ্ধিমান বিক্রয় রিপোর্ট'),
(562, 'best_sale_product', 'Best Sale Product', ' সেরা বিক্রয় পণ্য'),
(563, 'all_best_sales_product', 'All Best Sales Products', 'বেশি বিক্রিত প্রডাক্ট'),
(564, 'todays_customer_receipt', 'Todays Customer Receipt', NULL),
(565, 'not_found', 'Record not found', NULL),
(566, 'collection', 'Collection', NULL),
(567, 'increment', 'Increment', NULL),
(568, 'accounts_tree_view', 'Accounts Tree View', 'হিসাব ট্রি ভিউ'),
(569, 'debit_voucher', 'Debit Voucher', NULL),
(570, 'voucher_no', 'Voucher No', NULL),
(571, 'credit_account_head', 'Credit Account Head', NULL),
(572, 'remark', 'Remark', NULL),
(573, 'code', 'Code', NULL),
(574, 'amount', 'Amount', ' পরিমাণ'),
(575, 'approved', 'Approved', 'অনুমোদিত'),
(576, 'debit_account_head', 'Debit Account Head', NULL),
(577, 'credit_voucher', 'Credit Voucher', NULL),
(578, 'find', 'Find', NULL),
(579, 'transaction_date', 'Transaction Date', NULL),
(580, 'voucher_type', 'Voucher Type', NULL),
(581, 'particulars', 'Particulars', NULL),
(582, 'with_details', 'With Details', NULL),
(583, 'general_ledger', 'General Ledger', NULL),
(584, 'general_ledger_of', 'General ledger of', NULL),
(585, 'pre_balance', 'Pre Balance', NULL),
(586, 'current_balance', 'Current Balance', NULL),
(587, 'to_date', 'To Date', NULL),
(588, 'from_date', 'From Date', NULL),
(589, 'trial_balance', 'Trial Balance', NULL),
(590, 'authorized_signature', 'Authorized Signature', 'অনুমোদিত স্বাক্ষর'),
(591, 'chairman', 'Chairman', ' চেয়ারম্যান'),
(592, 'total_income', 'Total Income', NULL),
(593, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', NULL),
(594, 'profit_loss', 'Profit Loss', NULL),
(595, 'cash_flow_report', 'Cash Flow Report', ' নগদ প্রবাহ রিপোর্ট'),
(596, 'cash_flow_statement', 'Cash Flow Statement', ' নগদ প্রবাহ বিবরণী'),
(597, 'amount_in_dollar', 'Amount In Dollar', ' পরিমাণ_ ইন_ডোলার'),
(598, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL),
(599, 'coa_print', 'Coa Print', NULL),
(600, 'cash_flow', 'Cash Flow', ' নগদ প্রবাহ'),
(601, 'cash_book', 'Cash Book', ' নগদ বই'),
(602, 'bank_book', 'Bank Book', ' ব্যাংক বই'),
(603, 'c_o_a', 'Chart of Account', NULL),
(604, 'journal_voucher', 'Journal Voucher', NULL),
(605, 'contra_voucher', 'Contra Voucher', NULL),
(606, 'voucher_approval', 'Vouchar Approval', NULL),
(607, 'supplier_payment', 'Supplier Payment', NULL),
(608, 'customer_receive', 'Customer Receive', NULL),
(609, 'gl_head', 'General Head', NULL),
(610, 'account_code', 'Account Head', 'হিসাব কোড'),
(611, 'opening_balance', 'Opening Balance', NULL),
(612, 'head_of_account', 'Head of Account', NULL),
(613, 'inventory_ledger', 'Inventory Ledger', NULL),
(614, 'newpassword', 'New Password', NULL),
(615, 'password_recovery', 'Password Recovery', NULL),
(616, 'forgot_password', 'Forgot Password ??', NULL),
(617, 'send', 'Send', NULL),
(618, 'due_report', 'Due Report', NULL),
(619, 'due_amount', 'Due Amount', NULL),
(620, 'download_sample_file', 'Download Sample File', NULL),
(621, 'customer_csv_upload', 'Customer Csv Upload', NULL),
(622, 'csv_supplier', 'Csv Upload Supplier', NULL),
(623, 'csv_upload_supplier', 'Csv Upload Supplier', NULL),
(624, 'previous', 'Previous', NULL),
(625, 'net_total', 'Net Total', NULL),
(626, 'currency_list', 'Currency List', NULL),
(627, 'currency_name', 'Currency Name', NULL),
(628, 'currency_icon', 'Currency Symbol', NULL),
(629, 'add_currency', 'Add Currency', ' মুদ্রা যোগকরন'),
(630, 'role_permission', 'Role Permission', NULL),
(631, 'role_list', 'Role List', NULL),
(632, 'user_assign_role', 'User Assign Role', NULL),
(633, 'permission', 'Permission', NULL),
(634, 'add_role', 'Add Role', 'নিয়ম সংযোজন'),
(635, 'add_module', 'Add Module', ' মডিউল যোগ'),
(636, 'module_name', 'Module Name', NULL),
(637, 'office_loan', 'Office Loan', NULL),
(638, 'add_menu', 'Add Menu', 'তালিকা যোগ'),
(639, 'menu_name', 'Menu Name', NULL),
(640, 'sl_no', 'Sl No', NULL),
(641, 'create', 'Create', NULL),
(642, 'read', 'Read', NULL),
(643, 'role_name', 'Role Name', NULL),
(644, 'qty', 'Quantity', NULL),
(645, 'max_rate', 'Max Rate', NULL),
(646, 'min_rate', 'Min Rate', NULL),
(647, 'avg_rate', 'Average Rate', ' গড়_রেট'),
(648, 'role_permission_added_successfully', 'Role Permission Successfully Added', NULL),
(649, 'update_successfully', 'Successfully Updated', NULL),
(650, 'role_permission_updated_successfully', 'Role Permission Successfully Updated ', NULL),
(651, 'shipping_cost', 'Shipping Cost', NULL),
(652, 'in_word', 'In Word ', NULL),
(653, 'shipping_cost_report', 'Shipping Cost Report', NULL),
(654, 'cash_book_report', 'Cash Book Report', ' নগদ বই রিপোর্ট'),
(655, 'inventory_ledger_report', 'Inventory Ledger Report', NULL),
(656, 'trial_balance_with_opening_as_on', 'Trial Balance With Opening As On', NULL),
(657, 'type', 'Type', NULL),
(658, 'taka_only', 'Taka Only', NULL),
(659, 'item_description', 'Desc', NULL),
(660, 'sold_by', 'Sold By', NULL),
(661, 'user_wise_sales_report', 'User Wise Sales Report', NULL),
(662, 'user_name', 'User Name', NULL),
(663, 'total_sold', 'Total Sold', NULL),
(664, 'user_wise_sale_report', 'User Wise Sales Report', NULL),
(665, 'barcode_or_qrcode', 'Barcode/QR-code', ' বারকোড_আর_কিরকোড'),
(666, 'category_csv_upload', 'Category Csv  Upload', ' বিভাগ সিএসভি আপলোড'),
(667, 'unit_csv_upload', 'Unit Csv Upload', NULL),
(668, 'invoice_return_list', 'Sales Return list', NULL),
(669, 'invoice_return', 'Sales Return', NULL),
(670, 'tax_report', 'Tax Report', NULL),
(671, 'select_tax', 'Select Tax', NULL),
(672, 'hrm', 'HRM', NULL),
(673, 'employee', 'Employee', NULL),
(674, 'add_employee', 'Add Employee', 'কর্মচারী যোগ'),
(675, 'manage_employee', 'Manage Employee', NULL),
(676, 'attendance', 'Attendance', ' উপস্থিতি'),
(677, 'add_attendance', 'Attendance', 'উপস্থিতি যোগ '),
(678, 'manage_attendance', 'Manage Attendance', NULL),
(679, 'payroll', 'Payroll', NULL),
(680, 'add_payroll', 'Payroll', 'বেতন সংযোজন'),
(681, 'manage_payroll', 'Manage Payroll', NULL),
(682, 'employee_type', 'Employee Type', NULL),
(683, 'employee_designation', 'Employee Designation', NULL),
(684, 'designation', 'Designation', NULL),
(685, 'add_designation', 'Add Designation', 'পদবি যোগ'),
(686, 'manage_designation', 'Manage Designation', NULL),
(687, 'designation_update_form', 'Designation Update form', NULL),
(688, 'picture', 'Picture', NULL),
(689, 'country', 'Country', NULL),
(690, 'blood_group', 'Blood Group', ' রক্তের গ্রুপ'),
(691, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন ১'),
(692, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন ২'),
(693, 'zip', 'Zip code', NULL),
(694, 'city', 'City', 'সিটি '),
(695, 'hour_rate_or_salary', 'Houre Rate/Salary', NULL),
(696, 'rate_type', 'Rate Type', NULL),
(697, 'hourly', 'Hourly', NULL),
(698, 'salary', 'Salary', NULL),
(699, 'employee_update', 'Employee Update', NULL),
(700, 'checkin', 'Check In', ' চেকিন'),
(701, 'employee_name', 'Employee Name', NULL),
(702, 'checkout', 'Check Out', ' চেক আউট'),
(703, 'confirm_clock', 'Confirm Clock', NULL),
(704, 'stay', 'Stay Time', NULL),
(705, 'sign_in', 'Sign In', NULL),
(706, 'check_in', 'Check In', ' চেক_ইন'),
(707, 'single_checkin', 'Single Check In', NULL),
(708, 'bulk_checkin', 'Bulk Check In', ' বাল্ক_চেকিন'),
(709, 'successfully_checkout', 'Successfully Checkout', NULL),
(710, 'attendance_report', 'Attendance Report', ' উপস্থিতি_পরিচালনা'),
(711, 'datewise_report', 'Date Wise Report', NULL),
(712, 'employee_wise_report', 'Employee Wise Report', NULL),
(713, 'date_in_time_report', 'Date In Time Report', NULL),
(714, 'request', 'Request', NULL),
(715, 'sign_out', 'Sign Out', NULL),
(716, 'work_hour', 'Work Hours', NULL),
(717, 's_time', 'Start Time', NULL),
(718, 'e_time', 'In Time', NULL),
(719, 'salary_benefits_type', 'Benefits Type', NULL),
(720, 'salary_benefits', 'Salary Benefits', NULL),
(721, 'beneficial_list', 'Benefit List', ' উপকারী_ তালিকা'),
(722, 'add_beneficial', 'Add Benefits', 'উপকারী যোগ'),
(723, 'add_benefits', 'Add Benefits', 'সুবিধা যোগ'),
(724, 'benefits_list', 'Benefit List', ' বেনিফিট_লিস্ট'),
(725, 'benefit_type', 'Benefit Type', ' সুবিধা_প্রকার'),
(726, 'benefits', 'Benefit', ' সুবিধা'),
(727, 'manage_benefits', 'Manage Benefits', NULL),
(728, 'deduct', 'Deduct', NULL),
(729, 'add', 'Add', 'যোগ'),
(730, 'add_salary_setup', 'Add Salary Setup', 'বেতন সেট আপ করা '),
(731, 'manage_salary_setup', 'Manage Salary Setup', NULL),
(732, 'basic', 'Basic', ' মুল'),
(733, 'salary_type', 'Salary Type', NULL),
(734, 'addition', 'Addition', 'সংযোজন'),
(735, 'gross_salary', 'Gross Salary', NULL),
(736, 'set', 'Set', NULL),
(737, 'salary_generate', 'Salary Generate', NULL),
(738, 'manage_salary_generate', 'Manage Salary Generate', NULL),
(739, 'sal_name', 'Salary Name', NULL),
(740, 'gdate', 'Generated Date', NULL),
(741, 'generate_by', 'Generated By', NULL),
(742, 'the_salary_of', 'The Salary of ', NULL),
(743, 'already_generated', ' Already Generated', 'already_generated'),
(744, 'salary_month', 'Salary Month', NULL),
(745, 'successfully_generated', 'Successfully Generated', NULL),
(746, 'salary_payment', 'Salary Payment', NULL),
(747, 'employee_salary_payment', 'Employee Salary Payment', NULL),
(748, 'total_salary', 'Total Salary', NULL),
(749, 'total_working_minutes', 'Total Working Hours', NULL),
(750, 'working_period', 'Working Period', NULL),
(751, 'paid_by', 'Paid By', NULL),
(752, 'pay_now', 'Pay Now ', NULL),
(753, 'confirm', 'Confirm', NULL),
(754, 'successfully_paid', 'Successfully Paid', NULL),
(755, 'add_incometax', 'Add Income Tax', ' আয়কর যোগ'),
(756, 'setup_tax', 'Setup Tax', NULL),
(757, 'start_amount', 'Start Amount', NULL),
(758, 'end_amount', 'End Amount', NULL),
(759, 'tax_rate', 'Tax Rate', NULL),
(760, 'setup', 'Setup', NULL),
(761, 'manage_income_tax', 'Manage Income Tax', NULL),
(762, 'income_tax_updateform', 'Income tax Update form', NULL),
(763, 'positional_information', 'Positional Information', NULL),
(764, 'personal_information', 'Personal Information', NULL),
(765, 'timezone', 'Time Zone', NULL),
(766, 'sms', 'SMS', NULL),
(767, 'sms_configure', 'SMS Configure', NULL),
(768, 'url', 'URL', NULL),
(769, 'sender_id', 'Sender ID', NULL),
(770, 'api_key', 'Api Key', 'এপিআই কে'),
(771, 'gui_pos', 'GUI POS', NULL),
(772, 'manage_service', 'Manage Service', NULL),
(773, 'service', 'Service', NULL),
(774, 'add_service', 'Add Service', ' পরিষেবা সংযোজন'),
(775, 'service_edit', 'Service Edit', NULL),
(776, 'service_csv_upload', 'Service CSV Upload', NULL),
(777, 'service_name', 'Service Name', NULL),
(778, 'charge', 'Charge', ' চার্জ'),
(779, 'service_invoice', 'Service Invoice', NULL),
(780, 'service_discount', 'Service Discount', NULL),
(781, 'hanging_over', 'ETD', NULL),
(782, 'service_details', 'Service Details', NULL),
(783, 'tax_settings', 'Tax Settings', NULL),
(784, 'default_value', 'Default Value', NULL),
(785, 'number_of_tax', 'Number of Tax', NULL),
(786, 'please_select_employee', 'Please Select Employee', NULL),
(787, 'manage_service_invoice', 'Manage Service Invoice', NULL),
(788, 'update_service_invoice', 'Update Service Invoice', NULL),
(789, 'customer_wise_tax_report', 'Customer Wise  Tax Report', NULL),
(790, 'service_id', 'Service Id', NULL),
(791, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL),
(792, 'reg_no', 'Reg No', NULL),
(793, 'update_now', 'Update Now', NULL),
(794, 'import', 'Import', NULL),
(795, 'add_expense_item', 'Add Expense Item', ' ব্যয় আইটেম যোগ করুন'),
(796, 'manage_expense_item', 'Manage Expense Item', NULL),
(797, 'add_expense', 'Add Expense', 'ব্যয় যোগ'),
(798, 'manage_expense', 'Manage Expense', NULL),
(799, 'expense_statement', 'Expense Statement', NULL),
(800, 'expense_type', 'Expense Type', NULL),
(801, 'expense_item_name', 'Expense Item Name', NULL),
(802, 'stock_purchase_price', 'Stock Purchase Price', NULL),
(803, 'purchase_price', 'Purchase Price', NULL),
(804, 'customer_advance', 'Customer Advance', NULL),
(805, 'advance_type', 'Advance Type', 'অগ্রিম_প্রকার'),
(806, 'restore', 'Restore', NULL),
(807, 'supplier_advance', 'Supplier Advance', NULL),
(808, 'please_input_correct_invoice_no', 'Please Input Correct Invoice NO', NULL),
(809, 'backup', 'Back Up', ' ব্যাকআপ'),
(810, 'app_setting', 'App Settings', 'app_setting'),
(811, 'local_server_url', 'Local Server Url', NULL),
(812, 'online_server_url', 'Online Server Url', NULL),
(813, 'connet_url', 'Connected Hotspot Ip/url', NULL),
(814, 'update_your_app_setting', 'Update Your App Setting', NULL),
(815, 'select_category', 'Select Category', NULL),
(816, 'mini_invoice', 'Mini Invoice', NULL),
(817, 'purchase_details', 'Purchase Details', NULL),
(818, 'disc', 'Dis %', NULL),
(819, 'serial', 'Serial', NULL),
(820, 'transaction_head', 'Transaction Head', NULL),
(821, 'transaction_type', 'Transaction Type', NULL),
(822, 'return_details', 'Return Details', NULL),
(823, 'return_to_customer', 'Return To Customer', NULL),
(824, 'sales_and_purchase_report_summary', 'Sales And Purchase Report Summary', NULL),
(825, 'add_person_officeloan', 'Add Person (Office Loan)', 'অফিস লোন যোগ করুন '),
(826, 'add_loan_officeloan', 'Add Loan (Office Loan)', 'অফিস লোন'),
(827, 'add_payment_officeloan', 'Add Payment (Office Loan)', 'অফিস লোন খরচ সংযোজন '),
(828, 'manage_loan_officeloan', 'Manage Loan (Office Loan)', NULL),
(829, 'add_person_personalloan', 'Add Person (Personal Loan)', 'ব্যক্তিগত লোন যোগ করুন '),
(830, 'add_loan_personalloan', 'Add Loan (Personal Loan)', 'ব্যক্তিগত লোন'),
(831, 'add_payment_personalloan', 'Add Payment (Personal Loan)', 'ব্যক্তিগত খরচ সংযোজন'),
(832, 'manage_loan_personalloan', 'Manage Loan (Personal)', NULL),
(833, 'hrm_management', 'Human Resource', NULL),
(834, 'cash_adjustment', 'Cash Adjustment', ' নগদ সমন্বয়'),
(835, 'adjustment_type', 'Adjustment Type', 'সমন্বয় ধরন'),
(836, 'change', 'Change', ' পরিবর্তন'),
(837, 'sale_by', 'Sale By', NULL),
(838, 'salary_date', 'Salary Date', NULL),
(839, 'earnings', 'Earnings', NULL),
(840, 'total_addition', 'Total Addition', NULL),
(841, 'total_deduction', 'Total Deduction', NULL),
(842, 'net_salary', 'Net Salary', NULL),
(843, 'ref_number', 'Reference Number', NULL),
(844, 'name_of_bank', 'Name Of Bank', NULL),
(845, 'salary_slip', 'Salary Slip', NULL),
(846, 'basic_salary', 'Basic Salary', ' মূল বেতন'),
(847, 'return_from_customer', 'Return From Customer', NULL),
(848, 'quotation', 'Quotation', NULL),
(849, 'add_quotation', 'Add Quotation', 'quotation সংযোজন'),
(850, 'manage_quotation', 'Manage Quotation', NULL),
(851, 'terms', 'Terms', NULL),
(852, 'send_to_customer', 'Sent To Customer', NULL),
(853, 'quotation_no', 'Quotation No', NULL),
(854, 'quotation_date', 'Quotation Date', NULL),
(855, 'total_service_tax', 'Total Service Tax', NULL),
(856, 'totalservicedicount', 'Total Service Discount', NULL),
(857, 'item_total', 'Item Total', NULL),
(858, 'service_total', 'Service Total', NULL),
(859, 'quot_description', 'Quotation Description', NULL),
(860, 'sub_total', 'Sub Total', NULL),
(861, 'mail_setting', 'Mail Setting', NULL),
(862, 'mail_configuration', 'Mail Configuration', NULL),
(863, 'mail', 'Mail', NULL),
(864, 'protocol', 'Protocol', NULL),
(865, 'smtp_host', 'SMTP Host', NULL),
(866, 'smtp_port', 'SMTP Port', NULL),
(867, 'sender_mail', 'Sender Mail', NULL),
(868, 'mail_type', 'Mail Type', NULL),
(869, 'html', 'HTML', NULL),
(870, 'text', 'TEXT', NULL),
(871, 'expiry_date', 'Expiry Date', NULL),
(872, 'api_secret', 'Api Secret', 'এপিআই গোপন'),
(873, 'please_config_your_mail_setting', NULL, NULL),
(874, 'quotation_successfully_added', 'Quotation Successfully Added', NULL),
(875, 'add_to_invoice', 'Add To Invoice', ' চালান সংযোজন'),
(876, 'added_to_invoice', 'Added To Invoice', 'ইনভয়েস যুক্ত'),
(877, 'closing_balance', 'Closing Balance', NULL),
(878, 'contact', 'Contact', NULL),
(879, 'fax', 'Fax', NULL),
(880, 'state', 'State', NULL),
(881, 'discounts', 'Discount', NULL),
(882, 'address1', 'Address1', 'ঠিকানা১'),
(883, 'address2', 'Address2', 'ঠিকানা২'),
(884, 'receive', 'Receive', NULL),
(885, 'purchase_history', 'Purchase History', NULL),
(886, 'cash_payment', 'Cash Payment', ' নগদে টাকা প্রদান'),
(887, 'bank_payment', 'Bank Payment', ' ব্যাংক প্রদান'),
(888, 'do_you_want_to_print', 'Do You Want to Print', NULL),
(889, 'yes', 'Yes', NULL),
(890, 'no', 'No', NULL),
(891, 'todays_sale', 'Today\'s Sales', NULL),
(892, 'or', 'OR', NULL),
(893, 'no_result_found', 'No Result Found', NULL),
(894, 'add_service_quotation', 'Add Service Quotation', 'পরিষেবা সংযোজন উদ্ধৃতি'),
(895, 'add_to_invoice', 'Add To Invoice', ' চালান সংযোজন'),
(896, 'item_quotation', 'Item Quotation', NULL),
(897, 'service_quotation', 'Service Quotation', NULL),
(898, 'return_from', 'Return Form', NULL),
(899, 'customer_return_list', 'Customer Return List', NULL),
(900, 'pdf', 'Pdf', NULL),
(901, 'note', 'Note', NULL),
(902, 'update_debit_voucher', 'Update Debit Voucher', NULL),
(903, 'update_credit_voucher', 'Update Credit voucher', NULL),
(904, 'on', 'On', NULL),
(905, '', '', ''),
(906, 'total_expenses', 'Total Expense', NULL),
(907, 'already_exist', 'Already Exist', ' আগে থেকেই আছে'),
(908, 'checked_out', 'Checked Out', ' চেক আউট'),
(909, 'update_salary_setup', 'Update Salary Setup', NULL),
(910, 'employee_signature', 'Employee Signature', NULL),
(911, 'payslip', 'Payslip', NULL),
(912, 'exsisting_role', 'Existing Role', NULL),
(913, 'filter', 'Filter', NULL),
(914, 'testinput', NULL, NULL),
(915, 'update_quotation', 'Update Quotation', NULL),
(916, 'quotation_successfully_updated', 'Quotation Successfully Updated', NULL),
(917, 'successfully_approved', 'Successfully Approved', NULL),
(918, 'expiry', 'Expiry', NULL),
(919, 'creditcard_payment', 'Credit Card', 'ক্রেডিট কার্ড পেমে্ট'),
(920, 'bkash_payment', 'Bkash', 'বিকাশ পেমে্ট'),
(921, 'nagad_payment', 'Nagad', 'নগদ পেমে্ট'),
(922, 'dbblmobile_banking_payment', 'Dbbl Mobile Banking', 'ডিবিবিএল মোবাইল ব্যাংকিং');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'invoice', NULL, NULL, NULL, 1),
(2, 'customer', NULL, NULL, NULL, 1),
(3, 'product', NULL, NULL, NULL, 1),
(4, 'supplier', NULL, NULL, NULL, 1),
(5, 'purchase', NULL, NULL, NULL, 1),
(6, 'stock', NULL, NULL, NULL, 1),
(7, 'return', NULL, NULL, NULL, 1),
(8, 'report', NULL, NULL, NULL, 1),
(9, 'accounts', NULL, NULL, NULL, 1),
(10, 'bank', NULL, NULL, NULL, 1),
(11, 'tax', NULL, NULL, NULL, 1),
(12, 'hrm_management', NULL, NULL, NULL, 1),
(13, 'service', NULL, NULL, NULL, 1),
(14, 'commission', NULL, NULL, NULL, 1),
(15, 'setting', NULL, NULL, NULL, 1),
(16, 'quotation', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payroll_tax_setup`
--

INSERT INTO `payroll_tax_setup` (`tax_setup_id`, `start_amount`, `end_amount`, `rate`, `status`) VALUES
(3, '100.00', '1000.00', '20.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` decimal(12,2) DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person_information`
--

INSERT INTO `person_information` (`id`, `person_id`, `person_name`, `person_phone`, `person_address`, `status`) VALUES
(2, 'IN1OH3DO7F', 'SAMIM', '156146', '', 1),
(3, 'EPC25HPA4O', 'RAHMAN HOSSAIN', '02', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person_ledger`
--

CREATE TABLE `person_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person_ledger`
--

INSERT INTO `person_ledger` (`id`, `transaction_id`, `person_id`, `date`, `debit`, `credit`, `details`, `status`) VALUES
(1, '5F51FHN2ZQ', 'QOVMUDZ2Z4', '2020-10-25', '1000.00', '0.00', '', 1),
(2, 'WRUAMSJZSZ', 'IN1OH3DO7F', '2020-10-27', '1000.00', '0.00', '', 1),
(3, '9IASDTBJSP', 'EPC25HPA4O', '2020-10-29', '0.00', '1000.00', '', 2),
(4, '2QKL1CZDEA', 'EPC25HPA4O', '2020-10-29', '17000.00', '0.00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `category_name`, `status`) VALUES
(5, 'PZD7XQX9OBCYYJD', 'Mobile', 1),
(6, 'GIN2VKF7OOQMHA9', 'exc', 1),
(8, 'SAD6DMSVTHNX661', 'vivo', 1),
(9, 'MDPEJMCW35PHP9A', 'lubricant', 1),
(10, 'OUWNSNDP29O4BSH', 'medicine', 1),
(11, 'ADVB3ND51XZAFNP', 'Unilever', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `tax` float DEFAULT NULL COMMENT 'Tax in %',
  `serial_no` varchar(200) DEFAULT NULL,
  `product_model` varchar(100) DEFAULT NULL,
  `product_details` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `tax0` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `price`, `unit`, `tax`, `serial_no`, `product_model`, `product_details`, `image`, `status`, `tax0`) VALUES
(1, '63161523', 'C7IEN19LZ4NAJZF', '450ml pet bottle ', 50, 'pc', 0, '', 'amber color', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(2, '32748938', 'C7IEN19LZ4NAJZF', '450 ml bottle', 5, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(3, '12671827', 'C7IEN19LZ4NAJZF', '100ml bottle', 100, 'pc', 0, '', '', 'najmul', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(4, '18157738', 'C7IEN19LZ4NAJZF', '1000ml white bottle', 100, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(5, '66335616', 'C7IEN19LZ4NAJZF', '50.ML PET BOTTLE TRANSPARENT CLOUR', 2.2, 'pc', 0, '', '10.GRAM TUBE', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(6, '91583287', 'C7IEN19LZ4NAJZF', '1000 amber clour', 20, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(7, '87348938', 'C7IEN19LZ4NAJZF', '450.ML PET BOTTLE', 5.5, 'pc', 0, '', '30.G', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(8, '87316658', 'C7IEN19LZ4NAJZF', '200.ML PET BOTTLE', 4, 'pc', 0, '', '20.G', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(17, '98841275', 'MDPEJMCW35PHP9A', 'Eiffel 20 w 50', 360, 'Packet', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(10, '58384682', 'X1QL8ZNLA5NX7LL', 'Lactogen', 100, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(11, '33592882', 'GOU9LYF8AS4779X', '30 6 palla', 1950, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(12, '97874327', 'PZD7XQX9OBCYYJD', 'nokia phone', 25000, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(13, '49876384', 'OLZGLBQ5HHDWLNT', 'mobil', 500, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(14, '860363044265432', 'PZD7XQX9OBCYYJD', 'nokia phone', 10270, 'pc', 0, '', 'a12', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(16, '112233445566778', 'PZD7XQX9OBCYYJD', 'vivo', 9340, '10', 0, '', 'a1k', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(18, '1122', 'PZD7XQX9OBCYYJD', 'linix', 890, 'pc', 0, '1122', 'le20', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(19, '12234344', 'OUWNSNDP29O4BSH', 'napa', 20, 'pc', 0, '', '', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(20, '96774463', 'GIN2VKF7OOQMHA9', 'abc', 2500, 'pc', 0, '', '21231', '', 'https://inventory3.mensait.xyz/my-assets/image/product.png', 1, NULL),
(21, '111111', 'PZD7XQX9OBCYYJD', 'test1', 200, 'pc', 0, '11', 'test-11', 'ssdf', 'http://localhost/inventory3/./my-assets/image/product/0f0261e4ddeb79776ea7815efcd6241a.jpg', 1, NULL),
(22, '41645872', 'GIN2VKF7OOQMHA9', 'lifebuoy', 45, 'pc', 0, '', '', '', 'http://localhost/test/my-assets/image/product.png', 1, NULL),
(23, '77268351', 'ADVB3ND51XZAFNP', 'lifebuoy', 60, '', 0, '', '', '', 'http://localhost/test/my-assets/image/product.png', 1, NULL),
(24, '99999', 'PZD7XQX9OBCYYJD', 'mobile', 2000, 'pc', 0, '56', 'mobile', 'its awesome ', 'http://localhost/mensa_inventory/./my-assets/image/product/2c721f537ab0a63b99a497f7fb382258.jpg', 1, NULL),
(25, '77777', '', 'Watch', 25000, 'pc', 0, '59645', '', '', 'http://localhost/mensa_inventory/./my-assets/image/product/97eeb22e8e7a4fc4eab881a956178438.jpg', 1, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) DEFAULT '0.00',
  `due_amount` decimal(10,2) DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `purchase_details` text,
  `status` int(2) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase`
--

INSERT INTO `product_purchase` (`id`, `purchase_id`, `chalan_no`, `supplier_id`, `grand_total_amount`, `paid_amount`, `due_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `bank_id`, `payment_type`) VALUES
(1, 20201021041101, '1', 1, '40000.00', '40000.00', '0.00', '0.00', '2020-10-21', '', 1, '', 1),
(2, 20201024050010, '1', 1, '6750.00', '0.00', '6750.00', '0.00', '2020-10-24', '', 1, '', 1),
(3, 20201025045727, '1', 3, '250000.00', '250000.00', '0.00', '0.00', '2020-10-25', '', 1, '', 1),
(4, 20201025050736, '1', 4, '100000.00', '100000.00', '0.00', '0.00', '2020-10-25', '', 1, '', 1),
(5, 20201026092501, '1', 4, '9500.00', '0.00', '9500.00', '0.00', '2020-10-26', '', 1, '', 1),
(6, 20201027012313, '', 3, '100000.00', '100000.00', '0.00', '0.00', '2020-10-27', '', 1, '', 1),
(7, 20201027031912, '1', 3, '45000.00', '45000.00', '0.00', '0.00', '2020-10-20', 'SUMON/SOHAG', 1, '', 1),
(8, 20201029032152, '1', 1, '160000.00', '160000.00', '0.00', '0.00', '2020-10-29', '', 1, '', 1),
(9, 20201104012122, '', 6, '4500.00', '4500.00', '0.00', '0.00', '2020-11-04', '', 1, '', 1),
(10, 20201122024218, '12', 9, '86000.00', '86000.00', '0.00', '0.00', '2020-11-22', '', 1, '', 1),
(11, 20201122063440, '123', 10, '400000.00', '400000.00', '0.00', '0.00', '2020-11-22', '', 1, '', 1),
(12, 20201123082040, '415', 11, '44900.00', '44900.00', '0.00', '100.00', '2020-11-23', '', 1, '', 1),
(13, 20201124024120, '1234', 10, '201000.00', '0.00', '201000.00', '0.00', '2020-11-24', '', 1, '', 1),
(14, 20201126004949, '1234567890', 12, '91400.00', '91400.00', '0.00', '0.00', '2020-11-26', '', 1, '', 1),
(15, 20201203003037, '', 13, '302000.00', '302000.00', '0.00', '0.00', '2020-12-03', '', 1, '', 1),
(16, 20201207042422, '1122', 10, '78200.00', '0.00', '78200.00', '0.00', '2020-12-07', '', 1, '', 1),
(17, 20201213065846, '', 13, '375.00', '375.00', '0.00', '0.00', '2020-12-13', '', 1, '', 1),
(18, 20201228075952, '', 9, '2500.00', '2500.00', '0.00', '0.00', '2020-12-28', '', 1, '', 1),
(19, 20210103090418, '', 10, '2500000.00', '2500000.00', '0.00', '0.00', '2021-01-03', '', 1, '', 1),
(20, 20210107081626, '', 8, '10000000.00', '0.00', '10000000.00', '0.00', '2021-01-07', '', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_detail_id` varchar(100) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `product_id` varchar(30) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_purchase_details`
--

INSERT INTO `product_purchase_details` (`id`, `purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `discount`, `status`) VALUES
(1, '6kwSVNhbeWV5VFk', 20201021041101, '63161523', '1000.00', '40.00', '40000.00', 0, 1),
(2, 'zNPS1a9Kdrse7uT', 20201024050010, '32748938', '5000.00', '1.35', '6750.00', 0, 1),
(5, '3TvpUi3701XstXm', 20201025045727, '12671827', '5000.00', '50.00', '250000.00', 0, NULL),
(6, 'Df0sBCJd2eTdS4s', 20201025050736, '18157738', '2000.00', '50.00', '100000.00', 0, NULL),
(7, 'CyU4frlHB3QdkOF', 20201026092501, '66335616', '5000.00', '1.90', '9500.00', 0, 1),
(8, 'iSP9mC6YwLkR78K', 20201027012313, '91583287', '10000.00', '10.00', '100000.00', 0, 1),
(9, 'bXoicuPYO1D68bp', 20201027031912, '87348938', '10000.00', '4.50', '45000.00', 0, 1),
(10, 'kSlEZf5NwDx70pR', 20201029032152, '63161523', '4000.00', '40.00', '160000.00', 0, 1),
(11, '32NvKtOtRUZpGAJ', 20201104012122, '58384682', '50.00', '90.00', '4500.00', 0, 1),
(12, 'Y2pOnl9kd26rdP1', 20201122024218, '33592882', '50.00', '1720.00', '86000.00', 0, 1),
(13, '8ywkuFcCpeOEjb6', 20201122063440, '97874327', '20.00', '20000.00', '400000.00', 0, 1),
(14, 'ky9DCztROsA8tgG', 20201123082040, '49876384', '100.00', '450.00', '45000.00', 1, 1),
(15, 'MDKbLxxFC2XyK4a', 20201124024120, '860363044265432', '20.00', '10050.00', '201000.00', 0, 1),
(16, 'iqb2A8VfldD26VL', 20201126004949, '112233445566778', '10.00', '9140.00', '91400.00', 0, 1),
(17, '4JVEu5yIXOXPYhm', 20201203003037, '98841275', '1000.00', '302.00', '302000.00', 0, 1),
(18, 'Q2nDafnIoaTrXfa', 20201207042422, '1122', '92.00', '850.00', '78200.00', 0, 1),
(19, 'wsgf29DVRTjRqvx', 20201213065846, '12234344', '25.00', '15.00', '375.00', 0, 1),
(20, '34dcrFYZc8Ry8ND', 20201228075952, '77268351', '50.00', '50.00', '2500.00', 0, 1),
(21, '1uRD7FawdVmYSsl', 20210103090418, '99999', '1000.00', '2500.00', '2500000.00', 0, 1),
(22, 'JWpjwnZmv6Xnk70', 20210107081626, '77777', '500.00', '20000.00', '10000000.00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `return_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `invoice_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `purchase_id` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `date_purchase` varchar(20) CHARACTER SET latin1 NOT NULL,
  `date_return` varchar(30) CHARACTER SET latin1 NOT NULL,
  `byy_qty` float NOT NULL,
  `ret_qty` float NOT NULL,
  `customer_id` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `product_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction` float NOT NULL,
  `total_deduct` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text CHARACTER SET latin1 NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`return_id`, `product_id`, `invoice_id`, `purchase_id`, `date_purchase`, `date_return`, `byy_qty`, `ret_qty`, `customer_id`, `supplier_id`, `product_rate`, `deduction`, `total_deduct`, `total_tax`, `total_ret_amount`, `net_total_amount`, `reason`, `usablity`) VALUES
('259811656346983', '87348938', '6718785423', NULL, '2020-10-27', '2020-10-27', 100, 50, '3', '', '5.50', 0, '0.00', '0.00', '275.00', '275.00', '', 3),
('187971169554876', '58384682', '3949193149', NULL, '2020-11-04', '2020-11-04', 5, 2, '1', '', '100.00', 0, '0.00', '0.00', '200.00', '200.00', '', 1),
('152472321276193', '33592882', '4966851419', NULL, '2020-11-22', '2020-11-22', 20, 5, '12', '', '1950.00', 0, '0.00', '0.00', '9750.00', '9750.00', '', 1),
('512968389939896', '97874327', '8712662993', NULL, '2020-11-22', '2020-11-22', 2, 1, '13', '', '25000.00', 0, '0.00', '0.00', '25000.00', '25000.00', '', 1),
('352383781696653', '97874327', '8712662993', NULL, '2020-11-22', '2020-11-22', 1, 1, '13', '', '25000.00', 0, '0.00', '0.00', '25000.00', '25000.00', '', 1),
('317856663112664', '49876384', '9246766563', NULL, '2020-11-23', '2020-11-23', 5, 2, '16', '', '500.00', 0, '0.00', '0.00', '1000.00', '1000.00', '', 1),
('921965732545161', '98841275', '2896726969', NULL, '2020-12-03', '2020-12-03', 10, 2, '19', '', '360.00', 0, '0.00', '0.00', '720.00', '720.00', '', 1),
('272564185134115', '33592882', '3197978851', NULL, '2020-12-14', '2020-12-14', 1, 1, '1', '', '100.00', 0, '0.00', '0.00', '1950.00', '1950.00', '', 1),
('959936723998583', '18157738', '5839676657', NULL, '2020-12-14', '2020-12-14', 20, 10, '1', '', '100.00', 0, '0.00', '0.00', '1000.00', '1000.00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax0` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(20) NOT NULL,
  `quotation_id` varchar(30) NOT NULL,
  `quot_description` text NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `quotdate` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `item_total_amount` decimal(12,2) NOT NULL,
  `item_total_dicount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `service_total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_item` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_dis_service` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quot_no` varchar(50) NOT NULL,
  `create_by` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cust_show` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service_used`
--

CREATE TABLE `quotation_service_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_taxinfo`
--

CREATE TABLE `quotation_taxinfo` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  `tax0` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quot_products_used`
--

CREATE TABLE `quot_products_used` (
  `id` int(11) NOT NULL,
  `quot_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `used_qty` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `supplier_rate` float DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_per` varchar(15) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(231, 1, 1, 1, 1, 1, 1),
(232, 2, 1, 1, 1, 1, 1),
(233, 3, 1, 1, 1, 1, 1),
(234, 114, 1, 1, 1, 1, 1),
(235, 25, 1, 1, 1, 1, 1),
(236, 26, 1, 1, 1, 1, 1),
(237, 27, 1, 1, 1, 1, 1),
(238, 28, 1, 1, 1, 1, 1),
(239, 111, 1, 1, 1, 1, 1),
(240, 113, 1, 1, 1, 1, 1),
(241, 21, 1, 1, 1, 1, 1),
(242, 22, 1, 1, 1, 1, 1),
(243, 23, 1, 1, 1, 1, 1),
(244, 24, 1, 1, 1, 1, 1),
(245, 30, 1, 1, 1, 1, 1),
(246, 31, 1, 1, 1, 1, 1),
(247, 32, 1, 1, 1, 1, 1),
(248, 33, 1, 1, 1, 1, 1),
(249, 112, 1, 1, 1, 1, 1),
(250, 35, 1, 1, 1, 1, 1),
(251, 36, 1, 1, 1, 1, 1),
(252, 43, 1, 1, 1, 1, 1),
(253, 37, 1, 1, 1, 1, 1),
(254, 38, 1, 1, 1, 1, 1),
(255, 39, 1, 1, 1, 1, 1),
(256, 40, 1, 1, 1, 1, 1),
(257, 46, 1, 1, 1, 1, 1),
(258, 47, 1, 1, 1, 1, 1),
(259, 48, 1, 1, 1, 1, 1),
(260, 49, 1, 1, 1, 1, 1),
(261, 50, 1, 1, 1, 1, 1),
(262, 51, 1, 1, 1, 1, 1),
(263, 52, 1, 1, 1, 1, 1),
(264, 53, 1, 1, 1, 1, 1),
(265, 54, 1, 1, 1, 1, 1),
(266, 55, 1, 1, 1, 1, 1),
(267, 97, 1, 1, 1, 1, 1),
(268, 98, 1, 1, 1, 1, 1),
(269, 99, 1, 1, 1, 1, 1),
(270, 100, 1, 1, 1, 1, 1),
(271, 101, 1, 1, 1, 1, 1),
(272, 102, 1, 1, 1, 1, 1),
(273, 4, 1, 1, 1, 1, 1),
(274, 5, 1, 1, 1, 1, 1),
(275, 6, 1, 1, 1, 1, 1),
(276, 7, 1, 1, 1, 1, 1),
(277, 8, 1, 1, 1, 1, 1),
(278, 9, 1, 0, 0, 0, 0),
(279, 10, 1, 0, 0, 0, 0),
(280, 11, 1, 1, 1, 1, 1),
(281, 12, 1, 1, 1, 1, 1),
(282, 13, 1, 1, 1, 1, 1),
(283, 14, 1, 1, 1, 1, 1),
(284, 15, 1, 1, 1, 1, 1),
(285, 16, 1, 1, 1, 1, 1),
(286, 17, 1, 0, 0, 0, 0),
(287, 18, 1, 0, 0, 0, 0),
(288, 19, 1, 0, 0, 0, 0),
(289, 56, 1, 1, 1, 1, 1),
(290, 57, 1, 1, 1, 1, 1),
(291, 58, 1, 1, 1, 1, 1),
(292, 41, 1, 1, 1, 1, 1),
(293, 103, 1, 1, 1, 1, 1),
(294, 104, 1, 1, 1, 1, 1),
(295, 109, 1, 1, 1, 1, 1),
(296, 110, 1, 1, 1, 1, 1),
(297, 60, 1, 1, 1, 1, 1),
(298, 61, 1, 1, 1, 1, 1),
(299, 62, 1, 1, 1, 1, 1),
(300, 63, 1, 1, 1, 1, 1),
(301, 64, 1, 1, 1, 1, 1),
(302, 65, 1, 1, 1, 1, 1),
(303, 66, 1, 1, 1, 1, 1),
(304, 67, 1, 1, 1, 1, 1),
(305, 68, 1, 1, 1, 1, 1),
(306, 69, 1, 1, 1, 1, 1),
(307, 70, 1, 1, 1, 1, 1),
(308, 71, 1, 1, 1, 1, 1),
(309, 72, 1, 1, 1, 1, 1),
(310, 73, 1, 1, 1, 1, 1),
(311, 74, 1, 1, 1, 1, 1),
(312, 75, 1, 1, 1, 1, 1),
(313, 76, 1, 1, 1, 1, 1),
(314, 77, 1, 1, 1, 1, 1),
(315, 78, 1, 1, 1, 1, 1),
(316, 79, 1, 1, 1, 1, 1),
(317, 80, 1, 1, 1, 1, 1),
(318, 81, 1, 1, 1, 1, 1),
(319, 82, 1, 1, 1, 1, 1),
(320, 83, 1, 1, 1, 1, 1),
(321, 84, 1, 1, 1, 1, 1),
(322, 85, 1, 1, 1, 1, 1),
(323, 86, 1, 1, 1, 1, 1),
(324, 105, 1, 1, 1, 1, 1),
(325, 106, 1, 1, 1, 1, 1),
(326, 107, 1, 1, 1, 1, 1),
(327, 108, 1, 1, 1, 1, 1),
(328, 59, 1, 0, 0, 0, 0),
(329, 87, 1, 1, 1, 1, 1),
(330, 88, 1, 0, 1, 1, 1),
(331, 89, 1, 1, 1, 1, 1),
(332, 90, 1, 1, 1, 1, 1),
(333, 91, 1, 1, 1, 1, 1),
(334, 92, 1, 1, 1, 1, 1),
(335, 93, 1, 1, 1, 1, 1),
(336, 94, 1, 1, 1, 1, 1),
(337, 95, 1, 1, 1, 1, 1),
(338, 96, 1, 1, 1, 1, 1),
(339, 115, 1, 1, 1, 1, 1),
(340, 116, 1, 1, 1, 1, 1),
(341, 117, 1, 1, 1, 1, 1),
(342, 118, 1, 1, 1, 1, 1),
(343, 119, 1, 1, 1, 1, 1),
(344, 120, 1, 1, 1, 1, 1),
(345, 121, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_sheet_generate`
--

INSERT INTO `salary_sheet_generate` (`ssg_id`, `name`, `gdate`, `start_date`, `end_date`, `generate_by`) VALUES
(15, '', 'November 2020', '2020-11-1', '2020-11-30', 'Admin User');

-- --------------------------------------------------------

--
-- Table structure for table `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary_type`
--

INSERT INTO `salary_type` (`salary_type_id`, `sal_name`, `salary_type`, `status`) VALUES
(1, 'Transfer cost', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sec_role`
--

INSERT INTO `sec_role` (`id`, `type`) VALUES
(1, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_userrole`
--

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES
(1, 'op1aw75qMlS1et8', 1, '1', '2020-11-02 02:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(100) DEFAULT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `isservice`, `isreceive`) VALUES
(1, '5d6db102011', '456452dfgdf', '8801645452', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'new_invoice', NULL, NULL, 'new_invoice', 1),
(2, 1, 'manage_invoice', NULL, NULL, 'manage_invoice', 1),
(3, 1, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(4, 9, 'c_o_a', NULL, NULL, 'show_tree', 1),
(5, 9, 'supplier_payment', NULL, NULL, 'supplier_payment', 1),
(6, 9, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(7, 9, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(8, 9, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(9, 9, 'voucher_approval', NULL, NULL, 'aprove_v', 1),
(10, 9, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(11, 9, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(12, 9, 'report', NULL, NULL, 'ac_report', 1),
(13, 9, 'cash_book', NULL, NULL, 'cash_book', 1),
(14, 9, 'Inventory_ledger', NULL, NULL, 'inventory_ledger', 1),
(15, 9, 'bank_book', NULL, NULL, 'bank_book', 1),
(16, 9, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(17, 9, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(18, 9, 'cash_flow', NULL, NULL, 'cash_flow_report', 1),
(19, 9, 'coa_print', NULL, NULL, 'coa_print', 1),
(21, 3, 'category', NULL, NULL, 'manage_category', 1),
(22, 3, 'add_product', NULL, NULL, 'create_product', 1),
(23, 3, 'import_product_csv', NULL, NULL, 'add_product_csv', 1),
(24, 3, 'manage_product', NULL, NULL, 'manage_product', 1),
(25, 2, 'add_customer', NULL, NULL, 'add_customer', 1),
(26, 2, 'manage_customer', NULL, NULL, 'manage_customer', 1),
(27, 2, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(28, 2, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(30, 3, 'unit', NULL, NULL, 'manage_unit', 1),
(31, 4, 'add_supplier', NULL, NULL, 'add_supplier', 1),
(32, 4, 'manage_supplier', NULL, NULL, 'manage_supplier', 1),
(33, 4, 'supplier_ledger', NULL, NULL, 'supplier_ledger_report', 1),
(35, 5, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(36, 5, 'manage_purchase', NULL, NULL, 'manage_purchase', 1),
(37, 7, 'return', NULL, NULL, 'add_return', 1),
(38, 7, 'stock_return_list', NULL, NULL, 'return_list', 1),
(39, 7, 'supplier_return_list', NULL, NULL, 'supplier_return_list', 1),
(40, 7, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1),
(41, 11, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(43, 6, 'stock_report', NULL, NULL, 'stock_report', 1),
(46, 8, 'closing', NULL, NULL, 'add_closing', 1),
(47, 8, 'closing_report', NULL, NULL, 'closing_report', 1),
(48, 8, 'todays_report', NULL, NULL, 'all_report', 1),
(49, 8, 'todays_customer_receipt', NULL, NULL, 'todays_customer_receipt', 1),
(50, 8, 'sales_report', NULL, NULL, 'todays_sales_report', 1),
(51, 8, 'due_report', NULL, NULL, 'retrieve_dateWise_DueReports', 1),
(52, 8, 'purchase_report', NULL, NULL, 'todays_purchase_report', 1),
(53, 8, 'purchase_report_category_wise', NULL, NULL, 'purchase_report_category_wise', 1),
(54, 8, 'sales_report_product_wise', NULL, NULL, 'product_sales_reports_date_wise', 1),
(55, 8, 'sales_report_category_wise', NULL, NULL, 'sales_report_category_wise', 1),
(56, 10, 'add_new_bank', NULL, NULL, 'add_bank', 1),
(57, 10, 'bank_transaction', NULL, NULL, 'bank_transaction', 1),
(58, 10, 'manage_bank', NULL, NULL, 'bank_list', 1),
(59, 14, 'generate_commission', NULL, NULL, 'commission', 1),
(60, 12, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 12, 'manage_designation', NULL, NULL, 'manage_designation', 1),
(62, 12, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 12, 'manage_employee', NULL, NULL, 'manage_employee', 1),
(64, 12, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(65, 12, 'manage_attendance', NULL, NULL, 'manage_attendance', 1),
(66, 12, 'attendance_report', NULL, NULL, 'attendance_report', 1),
(67, 12, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(68, 12, 'manage_benefits', NULL, NULL, 'manage_benefits', 1),
(69, 12, 'add_salary_setup', NULL, NULL, 'add_salary_setup', 1),
(70, 12, 'manage_salary_setup', NULL, NULL, 'manage_salary_setup', 1),
(71, 12, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(72, 12, 'manage_salary_generate', NULL, NULL, 'manage_salary_generate', 1),
(73, 12, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(74, 12, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(75, 12, 'manage_expense_item', NULL, NULL, 'manage_expense_item', 1),
(76, 12, 'add_expense', NULL, NULL, 'add_expense', 1),
(77, 12, 'manage_expense', NULL, NULL, 'manage_expense', 1),
(78, 12, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(79, 12, 'add_person_officeloan', NULL, NULL, 'add1_person', 1),
(80, 12, 'add_loan_officeloan', NULL, NULL, 'add_office_loan', 1),
(81, 12, 'add_payment_officeloan', NULL, NULL, 'add_loan_payment', 1),
(82, 12, 'manage_loan_officeloan', NULL, NULL, 'manage1_person', 1),
(83, 12, 'add_person_personalloan', NULL, NULL, 'add_person', 1),
(84, 12, 'add_loan_personalloan', NULL, NULL, 'add_loan', 1),
(85, 12, 'add_payment_personalloan', NULL, NULL, 'add_payment', 1),
(86, 12, 'manage_loan_personalloan', NULL, NULL, 'manage_person', 1),
(87, 15, 'manage_company', NULL, NULL, 'manage_company', 1),
(88, 15, 'add_user', NULL, NULL, 'add_user', 1),
(89, 15, 'manage_users', NULL, NULL, 'manage_user', 1),
(90, 15, 'language', NULL, NULL, 'add_language', 1),
(91, 15, 'currency', NULL, NULL, 'add_currency', 1),
(92, 15, 'setting', NULL, NULL, 'soft_setting', 1),
(93, 15, 'add_role', NULL, NULL, 'add_role', 1),
(94, 15, 'role_list', NULL, NULL, 'role_list', 1),
(95, 15, 'user_assign_role', NULL, NULL, 'user_assign', 1),
(96, 15, 'Permission', NULL, NULL, NULL, 1),
(97, 8, 'shipping_cost_report', NULL, NULL, 'shipping_cost_report', 1),
(98, 8, 'user_wise_sales_report', NULL, NULL, 'user_wise_sales_report', 1),
(99, 8, 'invoice_return', NULL, NULL, 'invoice_return', 1),
(100, 8, 'supplier_return', NULL, NULL, 'supplier_return', 1),
(101, 8, 'tax_report', NULL, NULL, 'tax_report', 1),
(102, 8, 'profit_report', NULL, NULL, 'profit_report', 1),
(103, 11, 'add_incometax', NULL, NULL, 'add_incometax', 1),
(104, 11, 'manage_income_tax', NULL, NULL, 'manage_income_tax', 1),
(105, 13, 'add_service', NULL, NULL, 'create_service', 1),
(106, 13, 'manage_service', NULL, NULL, 'manage_service', 1),
(107, 13, 'service_invoice', NULL, NULL, 'service_invoice', 1),
(108, 13, 'manage_service_invoice', NULL, NULL, 'manage_service_invoice', 1),
(109, 11, 'tax_report', NULL, NULL, 'tax_report', 1),
(110, 11, 'invoice_wise_tax_report', NULL, NULL, 'invoice_wise_tax_report', 1),
(111, 2, 'customer_advance', NULL, NULL, 'customer_advance', 1),
(112, 4, 'supplier_advance', NULL, NULL, 'supplier_advance', 1),
(113, 2, 'customer_ledger', NULL, NULL, 'customer_ledger', 1),
(114, 1, 'gui_pos', NULL, NULL, 'gui_pos', 1),
(115, 15, 'sms_configure', NULL, NULL, 'sms_configure', 1),
(116, 15, 'backup_restore', NULL, NULL, 'back_up', 1),
(117, 15, 'import', NULL, NULL, 'sql_import', 1),
(118, 15, 'restore', NULL, NULL, 'restore', 1),
(119, 16, 'add_quotation', NULL, NULL, 'add_quotation', 1),
(120, 16, 'manage_quotation', NULL, NULL, 'manage_quotation', 1),
(121, 16, 'add_to_invoice', NULL, NULL, 'add_to_invoice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_information`
--

CREATE TABLE `supplier_information` (
  `supplier_id` bigint(20) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text,
  `state` text,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_information`
--

INSERT INTO `supplier_information` (`supplier_id`, `supplier_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(1, 'BLUE MACHINE MEHEDI-3', '', '', '01756844721', '', '', '', '', '', '', '', '', '', '', 1),
(3, 'BLUE MACHINE MEHEDI-1', '', '', '01756844721', '', '', '', '', '', '', '', '', '', '', 1),
(4, 'BLUE MACHINE MEHEDI-2', '', '', '01756844721', '', '', '', '', '', '', '', '', '', '', 1),
(6, 'Fran Company', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(7, 'EON Animal Health', '', '', '017222220000', '', '', 'Masud Rana', '', '', '', '', '', '', '', 1),
(8, 'EON Animal Health', '', '', '017222220000', '', '', 'Masud Rana', '', '', '', '', '', '', '', 1),
(9, 'amir Group', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(10, 'Nokia company', '', '', '34234', '', '', '', '', '', '', '', '', '', '', 1),
(11, 'borsa mobil', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(12, 'vivo', '', '', '01811223355', '', '', '01811223355', '01811223355', '', '', '', '', 'bangladesh', '', 1),
(13, 'Grayland', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(14, 'RAK', '', '', '1711452536', '', '', '', '', '', 'BOGURA', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `supplier_pr_id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 NOT NULL,
  `products_model` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `supplier_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_product`
--

INSERT INTO `supplier_product` (`supplier_pr_id`, `product_id`, `products_model`, `supplier_id`, `supplier_price`) VALUES
(1, '63161523', 'amber color', 1, 40),
(2, '32748938', '', 1, 1.35),
(3, '12671827', '', 3, 50),
(5, '18157738', NULL, 4, 50),
(6, '66335616', '10.GRAM TUBE', 4, 1.9),
(8, '87348938', '30.G', 3, 4.5),
(9, '87316658', '20.G', 3, 3.5),
(11, '91583287', NULL, 3, 2010),
(12, '58384682', '', 6, 90),
(13, '33592882', '', 9, 1720),
(14, '97874327', '', 10, 20000),
(15, '49876384', '', 11, 450),
(16, '860363044265432', 'a12', 10, 10050),
(18, '112233445566778', 'a1k', 12, 9140),
(19, '98841275', '', 13, 302),
(20, '1122', 'le20', 10, 850),
(21, '12234344', '', 13, 15),
(22, '96774463', '21231', 9, 2000),
(23, '111111', 'test-11', 10, 190),
(24, '41645872', '', 8, 40),
(25, '77268351', '', 9, 50),
(26, '99999', 'mobile', 10, 2500),
(27, '77777', '', 8, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  `tax0` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_collection`
--

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`) VALUES
(1, '2020-10-21', '2', '2363186846', NULL),
(2, '2020-10-24', '1', '8584599954', NULL),
(3, '2020-10-24', '1', '7273469659', NULL),
(4, '2020-10-25', '3', '6376653238', NULL),
(5, '2020-10-25', '3', '1321211416', NULL),
(8, '2020-10-25', '3', '4886688543', NULL),
(9, '2020-10-25', '3', '7752617954', NULL),
(10, '2020-10-25', '1', '5175288459', NULL),
(11, '2020-10-25', '1', '2316443249', NULL),
(12, '2020-10-25', '1', '4266252999', NULL),
(13, '2020-10-25', '1', '1138914547', NULL),
(14, '2020-10-25', '1', '7243921388', NULL),
(15, '2020-10-26', '1', '5678991416', NULL),
(16, '2020-10-26', '3', '9562825466', NULL),
(17, '2020-10-27', '3', '6718785423', NULL),
(18, '2020-10-27', '1', '5772288334', NULL),
(19, '2020-10-29', '6', '5326622445', NULL),
(20, '2020-10-29', '5', '9989479428', NULL),
(21, '2020-10-29', '9', '6455499426', NULL),
(22, '2020-11-02', '1', '5323585988', NULL),
(23, '2020-11-04', '1', '8711293228', NULL),
(24, '2020-11-04', '1', '3949193149', NULL),
(25, '2020-11-08', '1', '4692693835', NULL),
(26, '2020-11-08', '5', '3223181446', NULL),
(27, '2020-11-15', '2', '4667421119', NULL),
(29, '2020-11-22', '13', '8712662993', NULL),
(30, '2020-11-23', '16', '9246766563', NULL),
(31, '2020-11-22', '12', '4966851419', NULL),
(33, '2020-11-23', '17', '9411521384', NULL),
(34, '2020-11-23', '17', '2279386661', NULL),
(36, '2020-11-23', '17', '3391187832', NULL),
(37, '2020-11-25', '1', '5176693167', NULL),
(38, '2020-11-29', '12', '8946493153', NULL),
(39, '2020-12-03', '19', '2896726969', NULL),
(40, '2020-12-07', '1', '8644352651', NULL),
(41, '2020-12-07', '1', '8227776138', NULL),
(42, '2020-12-14', '1', '7537172341', NULL),
(43, '2020-12-14', '1', '7914248122', NULL),
(44, '2020-12-14', '1', '3216944281', NULL),
(45, '2020-12-14', '1', '2835633842', NULL),
(46, '2020-12-14', '1', '1555176442', NULL),
(47, '2020-12-14', '1', '8911652418', NULL),
(48, '2020-12-14', '1', '4799127213', NULL),
(50, '2020-12-14', '1', '3197978851', NULL),
(51, '2020-12-14', '1', '5839676657', NULL),
(52, '2020-12-22', '1', '7545864176', NULL),
(56, '2020-10-25', '1', '5979566491', NULL),
(57, '2020-12-26', '1', '7388317142', NULL),
(58, '2020-12-26', '1', '6531846192', NULL),
(60, '2020-12-26', '1', '9983443691', NULL),
(61, '2020-12-26', '1', '7223521844', NULL),
(62, '2020-12-26', '1', '1643174843', NULL),
(63, '2020-12-26', '1', '6235725837', NULL),
(64, '2020-12-26', '1', '2339229348', NULL),
(65, '2020-12-26', '1', '5774228663', NULL),
(67, '2020-12-26', '1', '5238752347', NULL),
(68, '2020-12-26', '1', '6237745565', NULL),
(69, '2020-12-27', '1', '5936267562', NULL),
(70, '2020-12-27', '1', '2928923843', NULL),
(71, '2020-12-27', '1', '3781862834', NULL),
(72, '2020-12-27', '1', '2335887594', NULL),
(73, '2020-12-27', '1', '3644247413', NULL),
(74, '2020-12-27', '1', '1395456997', NULL),
(75, '2020-12-27', '1', '1259493773', NULL),
(76, '2020-12-27', '1', '9469978311', NULL),
(77, '2020-12-27', '1', '2619219477', NULL),
(78, '2020-12-27', '1', '7536337725', NULL),
(79, '2020-12-27', '1', '1513854528', NULL),
(80, '2020-12-27', '1', '1743457155', NULL),
(81, '2020-12-27', '1', '5519151112', NULL),
(82, '2020-12-27', '1', '9858526781', NULL),
(83, '2020-12-27', '1', '4733252239', NULL),
(84, '2020-12-27', '1', '9619822711', NULL),
(85, '2020-12-27', '1', '6246251629', NULL),
(86, '2020-12-27', '1', '5754665974', NULL),
(87, '2020-12-27', '1', '6996479694', NULL),
(88, '2020-12-27', '1', '6991158413', NULL),
(89, '2020-12-27', '1', '3477537887', NULL),
(90, '2020-12-27', '1', '1349196837', NULL),
(91, '2020-12-27', '20', '2517313841', NULL),
(92, '2020-12-27', '20', '5636157226', NULL),
(93, '2020-12-27', '1', '6677479219', NULL),
(94, '2020-12-27', '1', '8625593325', NULL),
(95, '2020-12-27', '1', '9376336456', NULL),
(96, '2020-12-27', '1', '5413352494', NULL),
(97, '2020-12-27', '20', '1329879611', NULL),
(98, '2020-12-27', '21', '2138384728', NULL),
(99, '2020-12-27', '1', '6494814163', NULL),
(100, '2020-12-27', '1', '8844386999', NULL),
(101, '2020-12-27', '1', '4952748277', NULL),
(102, '2020-12-27', '1', '7555465721', NULL),
(103, '2020-12-27', '1', '6227833165', NULL),
(104, '2020-12-27', '1', '6566679428', NULL),
(105, '2020-12-27', '1', '3432777646', NULL),
(106, '2020-12-27', '1', '9598148611', NULL),
(107, '2020-12-27', '1', '5291764223', NULL),
(108, '2020-12-27', '1', '2628477248', NULL),
(109, '2020-12-27', '1', '5564756149', NULL),
(110, '2020-12-27', '1', '6652926473', NULL),
(111, '2020-12-27', '1', '1765719771', NULL),
(112, '2020-12-27', '1', '8869815738', NULL),
(113, '2020-12-27', '1', '8756838151', NULL),
(114, '2020-12-27', '1', '1188643817', NULL),
(115, '2020-12-27', '1', '1129166689', NULL),
(116, '2020-12-27', '1', '5615768113', NULL),
(117, '2020-12-27', '1', '8117225273', NULL),
(118, '2020-12-27', '1', '2995433938', NULL),
(119, '2020-12-27', '1', '1754753789', NULL),
(120, '2020-12-27', '1', '3341111896', NULL),
(121, '2020-12-27', '1', '2637216532', NULL),
(122, '2020-12-27', '1', '5318165889', NULL),
(123, '2020-12-27', '1', '9465699843', NULL),
(124, '2020-12-27', '1', '6112215271', NULL),
(125, '2020-12-27', '1', '7111824887', NULL),
(126, '2020-12-27', '1', '9731651863', NULL),
(127, '2020-12-27', '1', '6662941321', NULL),
(128, '2020-12-27', '1', '2842419166', NULL),
(129, '2020-12-27', '1', '3154259644', NULL),
(130, '2020-12-27', '1', '8316137164', NULL),
(131, '2020-12-27', '1', '3348756981', NULL),
(132, '2020-12-27', '1', '3863151534', NULL),
(133, '2020-12-27', '1', '9799398559', NULL),
(134, '2020-12-27', '1', '8716955536', NULL),
(135, '2020-12-27', '1', '8186129163', NULL),
(139, '2020-12-27', '1', '4692712959', NULL),
(140, '2020-12-28', '1', '7891851813', NULL),
(141, '2020-12-28', '1', '5558499924', NULL),
(142, '2020-12-28', '23', '4746528194', NULL),
(143, '2020-12-28', '1', '8262278417', NULL),
(144, '2020-12-28', '1', '9482589494', NULL),
(147, '2020-12-28', '20', '1115735675', NULL),
(148, '2021-01-03', '1', '5823659932', NULL),
(149, '2021-01-07', '24', '3135823336', '5000.00'),
(150, '2021-01-07', '25', '3141687466', '2500.00'),
(151, '2021-01-07', '26', '8198534179', '2500.00');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_settings`
--

INSERT INTO `tax_settings` (`id`, `default_value`, `tax_name`, `nt`, `reg_no`, `is_show`) VALUES
(8, 10, 'Vat', 1, '595895', 1);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `unit_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_id`, `unit_name`, `status`) VALUES
(1, 'OE6HK8KUBWTXCOY', 'pc', 1),
(2, 'OEZT5G219DQBKMB', 'gls', 1),
(3, 'LH7JNXSICM24TI6', '1', 1),
(4, 'Z5OLVP1G2NFY4C6', '10', 1),
(5, 'GU8ZSHQ6MGS6SO6', 'Packet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'https://inventory3.mensait.xyz/assets/dist/img/profile_picture/e9fe873268c5d7b76ab9316cefe257cb.png', 1),
(3, 'X4GxFoOrU19zZ0D', 'Demo', 'Customer', NULL, NULL, NULL, NULL, NULL, 'https://inventory3.mensait.xyz/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'admin@example.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1),
(2, '1', 'test@test.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1),
(3, 'X4GxFoOrU19zZ0D', 'customer@gmail.com', 'c9f5b9a97dbb32390a1dd0377bc72f0c', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(150) NOT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'https://inventory3.mensait.xyz/./my-assets/image/logo/89661206cac9e6c9586af770bbed04c0.jpg', 'https://inventory3.mensait.xyz/./my-assets/image/logo/d63cccd15d68f437c6e64db7f25c9b3e.jpg', 'https://inventory3.mensait.xyz/my-assets/image/logo/b595f098e216662316df692b0bc0e0b8.jpg', '৳', 'Asia/Dhaka', '0', 'CopyrightÂ© 2018-2019 MensaIT. All rights reserved.', 'english', '0', 1, '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', '6LdiKhsUAAAAAMV4jQRmNYdZy2kXEuFe1HrdP5tt', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `HeadCode` (`HeadCode`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indexes for table `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_ledger`
--
ALTER TABLE `person_ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quot_no` (`quot_no`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quot_id` (`quot_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quot_id` (`quot_id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`supplier_pr_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=923;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person_ledger`
--
ALTER TABLE `person_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_service_used`
--
ALTER TABLE `quotation_service_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_taxinfo`
--
ALTER TABLE `quotation_taxinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quot_products_used`
--
ALTER TABLE `quot_products_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `supplier_pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
