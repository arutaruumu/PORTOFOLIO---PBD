-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 02:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trial`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` char(6) NOT NULL,
  `explanation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `explanation`) VALUES
('CG-001', 'Fashions & Accessories'),
('CG-002', 'Clothes'),
('CG-003', 'Beauty'),
('CG-004', 'Health'),
('CG-005', 'Household'),
('CG-006', 'Kitchen'),
('CG-007', 'Baby Care'),
('CG-008', 'Handphone & Tablet'),
('CG-009', 'Laptop & Accessories'),
('CG-010', 'Computer & Accessories'),
('CG-011', 'Electronic'),
('CG-012', 'Camera, Photo & Video'),
('CG-013', 'Otomotif'),
('CG-014', 'Sports'),
('CG-015', 'Office & Stationery'),
('CG-016', 'Souvenirs & Gifts'),
('CG-017', 'Books'),
('CG-018', 'Softwares'),
('CG-019', 'Films, Musics & Games'),
('CG-020', 'Toys & Hobbies'),
('CG-021', 'Foods & Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `region_id` varchar(5) DEFAULT NULL,
  `year_of_birth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `region_id`, `year_of_birth`) VALUES
('CUS-000001', 'Bagus Nur Hakim', 'Jakarta', 'WL001', 2010),
('CUS-000002', 'Putri Kharisma', 'Yogyakarta', 'WL002', 2009),
('CUS-000003', 'Aliany Milawaty', 'Yogyakarta', 'WL002', 2010),
('CUS-000004', 'Yudha Adisaputra', 'Solo', 'WL005', 2006),
('CUS-000005', 'Nurafni Oktaviani', 'Surabaya', 'WL003', 2010),
('CUS-000006', 'Meilia', 'Bandung', 'WL004', 2007),
('CUS-000007', 'Aulia Luthfi Anna', 'Jakarta', 'WL001', 2008),
('CUS-000008', 'Ichzam Rusmana', 'Medan', 'WL007', 2009),
('CUS-000009', 'Tri Yulianti', 'Makasar', 'WL006', 2000),
('CUS-000010', 'Ervina Jayanti', 'Surabaya', 'WL003', 2007),
('CUS-000011', 'Desi Wulandari', 'Yogyakarta', 'WL002', 2008),
('CUS-000012', 'Sukma Tri Setia', 'Medan', 'WL007', 2009),
('CUS-000013', 'Abinaya Basupati', 'Jakarta', 'WL001', 2009),
('CUS-000014', 'Hadrian Gustin Alvaro', 'Jakarta', 'WL001', 2011),
('CUS-000015', 'Nathania Earline', 'Surabaya', 'WL003', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` char(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `category_id` char(6) NOT NULL,
  `supplier_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `stock`, `purchasing_price`, `selling_price`, `category_id`, `supplier_id`) VALUES
('CG-001-IT000001', 'Snapback Hat NY', 50, 135000, 140000, 'CG-001', 'SUP-000001'),
('CG-001-IT000002', 'Roberto Cavalli Sunglass', 100, 160000, 165000, 'CG-001', 'SUP-000001'),
('CG-001-IT000003', 'Porsche Design Sunglass', 25, 265000, 275000, 'CG-001', 'SUP-000001'),
('CG-001-IT000004', 'Giorgio Agneli Wallet', 50, 145000, 150000, 'CG-001', 'SUP-000002'),
('CG-001-IT000005', 'Levis Design Walet', 50, 160000, 175000, 'CG-001', 'SUP-000002'),
('CG-001-IT000006', 'Swarovski JAQ-001', 15, 243000, 250000, 'CG-001', 'SUP-000003'),
('CG-001-IT000007', 'Vintage Models NCK', 35, 130000, 135000, 'CG-001', 'SUP-000003'),
('CG-001-IT000008', 'Rossy Net Silver NCK', 30, 140000, 150000, 'CG-001', 'SUP-000003'),
('CG-001-IT000009', 'Bohemian Blue Saphire NCK', 50, 240000, 245000, 'CG-001', 'SUP-000003'),
('CG-001-IT000010', 'Lady Crystal NCK', 25, 165000, 170000, 'CG-001', 'SUP-000003'),
('CG-002-IT000011', 'Black Gray Long SLeeved Shirt', 100, 100000, 103000, 'CG-002', 'SUP-000007'),
('CG-002-IT000012', 'Hoddies Auntumn Coat', 50, 150000, 160000, 'CG-002', 'SUP-000007'),
('CG-002-IT000013', 'Sweater Tribal Gazilo', 100, 90000, 105000, 'CG-002', 'SUP-000007'),
('CG-002-IT000014', 'Jogger Sport Addidas', 50, 145000, 150000, 'CG-002', 'SUP-000008'),
('CG-002-IT000015', 'Hoddie Nike E01', 50, 185000, 190000, 'CG-002', 'SUP-000008'),
('CG-002-IT000016', 'Hoddie Zipper Marine', 50, 170000, 175000, 'CG-002', 'SUP-000008'),
('CG-002-IT000017', 'Jadore Blouse', 25, 150000, 159000, 'CG-002', 'SUP-000008'),
('CG-002-IT000018', 'Pieter Sweater', 20, 135000, 140000, 'CG-002', 'SUP-000010'),
('CG-002-IT000019', 'Line Long Tunik Blouse', 35, 105000, 120000, 'CG-002', 'SUP-000010'),
('CG-002-IT000020', 'Poland Tile Dress', 50, 125000, 130000, 'CG-002', 'SUP-000010'),
('CG-003-IT000021', 'Babyliss Pro Curl', 10, 675000, 689000, 'CG-003', 'SUP-000011'),
('CG-003-IT000022', 'NXY Soft Matte Lip Cream', 50, 125000, 130000, 'CG-003', 'SUP-000012'),
('CG-003-IT000023', 'Manicure Set 777', 20, 195000, 199000, 'CG-003', 'SUP-000011'),
('CG-003-IT000024', 'Rosemary Essential Oil', 50, 55000, 60000, 'CG-003', 'SUP-000013'),
('CG-003-IT000025', 'Naked 3 Palette', 50, 235000, 245000, 'CG-003', 'SUP-000012'),
('CG-004-IT000026', 'Bepathen First Aid', 50, 95000, 100000, 'CG-004', 'SUP-000013'),
('CG-004-IT000027', 'MSI Bio Spray', 50, 165000, 175000, 'CG-004', 'SUP-000013'),
('CG-004-IT000028', 'Medical Pro Bags', 20, 2000000, 2090000, 'CG-004', 'SUP-000013'),
('CG-005-IT000029', 'Minimalis Sofa L', 10, 2000000, 2100000, 'CG-005', 'SUP-000014'),
('CG-005-IT000030', 'Bellin Desk Pink', 10, 900000, 949000, 'CG-005', 'SUP-000014'),
('CG-005-IT000031', 'Prada Prem Curtain', 10, 1000000, 1100000, 'CG-005', 'SUP-000015'),
('CG-005-IT000032', 'Shoes Hanging', 50, 135000, 140000, 'CG-005', 'SUP-000015'),
('CG-005-IT000033', 'Lady American Mattress Protector', 50, 280000, 290000, 'CG-005', 'SUP-000016'),
('CG-005-IT000034', 'Waterproof Sprei Big', 50, 150000, 155000, 'CG-005', 'SUP-000016'),
('CG-006-IT000035', 'Tupperware Blossom Series', 40, 545000, 6320000, 'CG-006', 'SUP-000017'),
('CG-006-IT000036', 'Oxone Juicer OX-965', 25, 1750000, 1850000, 'CG-006', 'SUP-000014'),
('CG-006-IT000037', 'Happycall Double Pan 32cm', 10, 1135000, 1140000, 'CG-006', 'SUP-000014'),
('CG-006-IT000038', 'Vicenza Dining Set', 50, 439000, 450000, 'CG-006', 'SUP-000014'),
('CG-006-IT000039', 'Sport Bottle 600ml', 35, 65000, 680000, 'CG-006', 'SUP-000017');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` char(14) NOT NULL,
  `customer_id` char(10) NOT NULL,
  `salesman_id` varchar(10) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `customer_id`, `salesman_id`, `date`) VALUES
('20160301-00001', 'CUS-000002', 'SLM-000001', '2016-03-01'),
('20160301-00002', 'CUS-000005', 'SLM-000003', '2016-03-01'),
('20160301-00003', 'CUS-000001', 'SLM-000001', '2016-03-01'),
('20160302-00001', 'CUS-000004', 'SLM-000002', '2016-03-02'),
('20160302-00002', 'CUS-000010', 'SLM-000006', '2016-03-02'),
('20160303-00001', 'CUS-000007', 'SLM-000004', '2016-03-03'),
('20160304-00001', 'CUS-000003', 'SLM-000004', '2016-03-04'),
('20160304-00002', 'CUS-000008', 'SLM-000005', '2016-03-04'),
('20160305-00001', 'CUS-000006', 'SLM-000009', '2016-03-05'),
('20160306-00001', 'CUS-000009', 'SLM-000002', '2016-03-06'),
('20160306-00002', 'CUS-000012', 'SLM-000010', '2016-03-06'),
('20160307-00001', 'CUS-000015', 'SLM-000007', '2016-03-07'),
('20160308-00001', 'CUS-000005', 'SLM-000004', '2016-03-08'),
('20160308-00002', 'CUS-000013', 'SLM-000008', '2016-03-08'),
('20160309-00001', 'CUS-000010', 'SLM-000010', '2016-03-09'),
('20160309-00002', 'CUS-000007', 'SLM-000003', '2016-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `purchase_id` char(14) NOT NULL,
  `item_id` char(15) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `purchasing_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`purchase_id`, `item_id`, `amount`, `purchasing_price`, `selling_price`) VALUES
('20160301-00001', 'CG-001-IT000007', 1, 130000, 135000),
('20160301-00001', 'CG-003-IT000023', 1, 195000, 199000),
('20160301-00001', 'CG-003-IT000025', 1, 235000, 245000),
('20160301-00002', 'CG-005-IT000032', 1, 135000, 140000),
('20160301-00003', 'CG-001-IT000005', 1, 160000, 175000),
('20160301-00003', 'CG-006-IT000039', 1, 65000, 680000),
('20160302-00001', 'CG-002-IT000018', 1, 135000, 140000),
('20160302-00002', 'CG-006-IT000038', 1, 439000, 450000),
('20160303-00001', 'CG-003-IT000021', 1, 675000, 689000),
('20160303-00001', 'CG-003-IT000022', 2, 125000, 130000),
('20160303-00001', 'CG-003-IT000024', 1, 55000, 60000),
('20160304-00001', 'CG-002-IT000013', 1, 90000, 105000),
('20160304-00001', 'CG-002-IT000017', 1, 150000, 159000),
('20160304-00002', 'CG-001-IT000002', 1, 160000, 165000),
('20160305-00001', 'CG-001-IT000008', 1, 140000, 150000),
('20160305-00001', 'CG-001-IT000010', 1, 165000, 170000),
('20160306-00001', 'CG-002-IT000019', 2, 105000, 120000),
('20160306-00002', 'CG-002-IT000015', 1, 185000, 190000),
('20160306-00002', 'CG-002-IT000017', 1, 150000, 159000),
('20160307-00001', 'CG-001-IT000003', 1, 265000, 275000),
('20160308-00001', 'CG-002-IT000011', 1, 100000, 103000),
('20160308-00001', 'CG-002-IT000012', 1, 150000, 160000),
('20160308-00002', 'CG-001-IT000004', 1, 145000, 150000),
('20160308-00002', 'CG-002-IT000014', 1, 145000, 150000),
('20160309-00001', 'CG-005-IT000033', 1, 280000, 290000),
('20160309-00002', 'CG-006-IT000036', 1, 1750000, 1850000);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `address`) VALUES
('SUP-000001', 'G&R Collection', 'Semarang'),
('SUP-000002', 'Mollersz', 'Jakarta'),
('SUP-000003', 'Tamza Accessories', 'Surabaya'),
('SUP-000004', 'Wallette', 'Medan'),
('SUP-000005', 'The Watch Gallery', 'Surabaya'),
('SUP-000006', 'Bags Collection', 'Medan'),
('SUP-000007', 'Couple9', 'Jakarta'),
('SUP-000008', 'Swag Corner', 'Surabaya'),
('SUP-000009', 'Kiss_OS', 'Jakarta'),
('SUP-000010', 'YsN', 'Makasar'),
('SUP-000011', 'Legnarose Beauty', 'Jakarta'),
('SUP-000012', 'Mutiara Cosmetics', 'Surabaya'),
('SUP-000013', 'Essential Store', 'Jakarta'),
('SUP-000014', 'Homy Collections', 'Medan'),
('SUP-000015', 'Viventi Living', 'Surabaya'),
('SUP-000016', 'Orion Bed', 'Jakarta'),
('SUP-000017', 'Tupperware ID', 'Makasar'),
('SUP-000018', 'Utama Mega', 'Jakarta'),
('SUP-000019', 'Mavely Baby', 'Jakarta'),
('SUP-000020', 'Sciabuna Store', 'Yogyakarta'),
('SUP-000021', 'Kenzie Baby', 'Surabaya'),
('SUP-000022', 'Chios CK', 'Yogyakarta'),
('SUP-000023', 'JT Shop Indo', 'Jakarta'),
('SUP-000024', 'Saga Case ID', 'Medan'),
('SUP-000025', 'Graha Baru', 'Surabaya'),
('SUP-000026', 'Parttop ID', 'Medan'),
('SUP-000027', 'Alfa Tech', 'Jakarta'),
('SUP-000028', 'King Spycam', 'Jakarta'),
('SUP-000029', 'Glories ID', 'Jakarta'),
('SUP-000030', 'Budget Gadget', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
