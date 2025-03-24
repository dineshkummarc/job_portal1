-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 02:44 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `a_id` int(4) NOT NULL,
  `a_ee_id` int(4) NOT NULL,
  `a_j_id` varchar(30) NOT NULL,
  `a_er_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cont_id` int(4) NOT NULL,
  `cont_fnm` varchar(30) NOT NULL,
  `cont_email` varchar(64) NOT NULL,
  `cont_query` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ee_id` int(4) NOT NULL,
  `ee_email` varchar(64) NOT NULL,
  `ee_password` varchar(64) NOT NULL,
  `ee_fname` varchar(30) NOT NULL,
  `ee_lname` varchar(30) NOT NULL,
  `ee_day` varchar(10) NOT NULL,
  `ee_month` varchar(10) NOT NULL,
  `ee_year` varchar(10) NOT NULL,
  `ee_gender` varchar(30) NOT NULL,
  `ee_address` varchar(256) NOT NULL,
  `ee_country` varchar(130) NOT NULL,
  `ee_city` varchar(30) NOT NULL,
  `ee_education` varchar(20) NOT NULL,
  `ee_master` varchar(20) NOT NULL,
  `ee_mcode` varchar(10) NOT NULL,
  `ee_mnumber` varchar(30) NOT NULL,
  `ee_experience` varchar(30) NOT NULL,
  `ee_skills` varchar(130) NOT NULL,
  `ee_industry` varchar(130) NOT NULL,
  `ee_certification` varchar(130) NOT NULL,
  `ee_path` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ee_id`, `ee_email`, `ee_password`, `ee_fname`, `ee_lname`, `ee_day`, `ee_month`, `ee_year`, `ee_gender`, `ee_address`, `ee_country`, `ee_city`, `ee_education`, `ee_master`, `ee_mcode`, `ee_mnumber`, `ee_experience`, `ee_skills`, `ee_industry`, `ee_certification`, `ee_path`) VALUES
(1, 'dileep@gmail.com', 'password', 'dileep', 'b', '10', '03', '1992', 'male', '', 'india', 'kkm', 'btech', 'mtech', '91', '9496097335', '2', 'web designing', 'it', 'redhat,ccna', 'uploads/');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `er_id` int(6) NOT NULL,
  `er_company` varchar(128) NOT NULL,
  `er_companytype` varchar(128) NOT NULL,
  `er_sector` varchar(128) NOT NULL,
  `er_category` varchar(128) NOT NULL,
  `er_companyemail` varchar(64) NOT NULL,
  `er_password` varchar(64) NOT NULL,
  `er_address` varchar(255) NOT NULL,
  `er_city` varchar(128) NOT NULL,
  `er_state` varchar(64) NOT NULL,
  `er_country` varchar(128) NOT NULL,
  `er_website` varchar(128) NOT NULL,
  `er_TCCode` varchar(64) NOT NULL,
  `er_TACode` varchar(64) NOT NULL,
  `er_TNumber` varchar(64) NOT NULL,
  `er_title` varchar(64) NOT NULL,
  `er_fname` varchar(64) NOT NULL,
  `er_lname` varchar(64) NOT NULL,
  `er_designation` varchar(64) NOT NULL,
  `er_contactemail` varchar(64) NOT NULL,
  `er_MCCode` varchar(64) NOT NULL,
  `er_MNumber` varchar(64) NOT NULL,
  `er_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`er_id`, `er_company`, `er_companytype`, `er_sector`, `er_category`, `er_companyemail`, `er_password`, `er_address`, `er_city`, `er_state`, `er_country`, `er_website`, `er_TCCode`, `er_TACode`, `er_TNumber`, `er_title`, `er_fname`, `er_lname`, `er_designation`, `er_contactemail`, `er_MCCode`, `er_MNumber`, `er_active`) VALUES
(1, 'google', 'agency', 'corporate', 'IT', 'employer@mail.com', 'employer', 'American city,new york,pb no:56', 'new york', 'america', 'USA', 'www.google.com', '000', '132', '66339955', 'Mr.', 'Dileep', 'B', 'CEO', 'dileep@gmail.com', '91', '9496097335', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `j_id` int(4) NOT NULL,
  `j_er_id` int(30) NOT NULL,
  `j_category` varchar(128) NOT NULL,
  `j_owner_name` varchar(128) NOT NULL,
  `j_title` varchar(128) NOT NULL,
  `j_hours` float(3,1) NOT NULL,
  `j_salary` int(64) NOT NULL,
  `j_date` date NOT NULL,
  `j_sector` varchar(128) NOT NULL,
  `j_type` varchar(128) NOT NULL,
  `j_country` varchar(128) NOT NULL,
  `j_vacancy` int(10) NOT NULL,
  `j_company` varchar(128) NOT NULL,
  `j_experience` int(7) NOT NULL,
  `j_description` varchar(300) NOT NULL,
  `j_city` varchar(128) NOT NULL,
  `j_active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_employees`
--

CREATE TABLE `temp_employees` (
  `ee_id` int(4) NOT NULL,
  `ee_email` varchar(64) NOT NULL,
  `ee_password` varchar(64) NOT NULL,
  `ee_fname` varchar(30) NOT NULL,
  `ee_lname` varchar(30) NOT NULL,
  `ee_day` varchar(10) NOT NULL,
  `ee_month` varchar(10) NOT NULL,
  `ee_year` varchar(10) NOT NULL,
  `ee_gender` varchar(30) NOT NULL,
  `ee_country` varchar(130) NOT NULL,
  `ee_city` varchar(30) NOT NULL,
  `ee_education` varchar(20) NOT NULL,
  `ee_master` varchar(20) NOT NULL,
  `ee_mcode` varchar(10) NOT NULL,
  `ee_mnumber` varchar(30) NOT NULL,
  `ee_experience` varchar(30) NOT NULL,
  `ee_skills` varchar(130) NOT NULL,
  `ee_industry` varchar(130) NOT NULL,
  `ee_certification` varchar(130) NOT NULL,
  `ee_path` varchar(130) NOT NULL,
  `confirm_code` varchar(65) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `validity`
--

CREATE TABLE `validity` (
  `employer_id` int(4) NOT NULL,
  `plan` varchar(30) NOT NULL,
  `number` int(4) NOT NULL,
  `validity1` int(4) NOT NULL,
  `downloads` int(4) NOT NULL,
  `validity2` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ee_id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`er_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `temp_employees`
--
ALTER TABLE `temp_employees`
  ADD PRIMARY KEY (`ee_id`);

--
-- Indexes for table `validity`
--
ALTER TABLE `validity`
  ADD PRIMARY KEY (`employer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cont_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `er_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `j_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `temp_employees`
--
ALTER TABLE `temp_employees`
  MODIFY `ee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `validity`
--
ALTER TABLE `validity`
  MODIFY `employer_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
