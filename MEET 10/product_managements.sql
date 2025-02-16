-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 04:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_managements`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `f_KategoriNilai` (`nilai` INT) RETURNS CHAR(1) CHARSET utf8mb4  BEGIN
	DECLARE nilai_huruf char;
	IF nilai >= 91 AND nilai <= 100 THEN SET nilai_huruf = 'A';
    ELSEIF nilai >= 71 AND nilai <= 90 THEN SET nilai_huruf = 'B';
    ELSEIF nilai >= 51 AND nilai <= 70 THEN SET nilai_huruf = 'C';
    ELSEIF nilai <= 50 THEN SET nilai_huruf = 'D';
    END IF;
    RETURN(nilai_huruf);
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `f_LuasPermukaanKubus` (`sisi` INT) RETURNS INT(11)  BEGIN
	RETURN(6*(POWER(sisi,2)));
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `f_simple_multiplication` (`number1` INT, `number2` INT) RETURNS DECIMAL(11,0)  BEGIN
	RETURN(number1*number2);
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `f_VolumePersegiPanjang` (`p` INT, `l` INT, `t` INT) RETURNS INT(11)  BEGIN
	RETURN(p*l*t);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `concerns`
--

CREATE TABLE `concerns` (
  `concern_id` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `concerns`
--

INSERT INTO `concerns` (`concern_id`, `name`, `date_created`) VALUES
(1, 'Acne prone', '2022-06-27 06:58:19'),
(2, 'Darkspot', '2022-06-22 12:20:57'),
(3, 'Aging', '2022-06-22 12:20:57'),
(4, 'Hyperpigmentation', '2022-06-22 12:20:57'),
(5, 'Dry skin', '2022-06-22 12:20:57'),
(6, 'Sun Damage', '2022-06-27 06:58:10'),
(7, 'Pigmentation', '2022-06-27 06:58:10'),
(8, 'Redness', '2022-06-27 06:58:10'),
(9, 'Lost of elasticity', '2022-06-27 06:58:10'),
(10, 'Obvious pore', '2022-06-27 06:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `province` char(25) NOT NULL,
  `district` char(30) NOT NULL,
  `sub_district` char(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` char(6) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `full_name`, `email`, `province`, `district`, `sub_district`, `address`, `postal_code`, `join_date`) VALUES
(1, 'Nana Sarifa', 'nanasarifa@gmail.com', 'DIY', 'Gunung Kidul', 'Gedangsari', 'Jl. Ambar No. 21', '55863', '2022-07-25 08:51:20'),
(2, 'Arifa Hasanah', 'arifahasanah@gmail.com', 'DIY', 'Sleman', 'Depok', 'Jl. Ringroad Timur No. 11 Maguwoharjo', '55281', '2022-06-27 05:18:55'),
(3, 'Noni Rauda', 'nonirauda@gmail.com', 'DIY', 'Sleman', 'Godean', 'Jl. Hajaran No. 3', '55264', '2022-06-27 05:18:55'),
(4, 'Tatik Alita', 'tatikalita@gmail.com', 'Jambi', 'Batanghari', 'Maro Sebu Ulu', 'Jl. Gajahmada No. 19', '36652', '2022-07-14 03:59:35'),
(5, 'Rani Rudiani', 'ranirudiani@gmail.com', 'Gorontalo', 'Pahuwato', 'Lemito', 'Jl. Nuri N0.1', '96365', '2022-06-27 06:37:41'),
(6, 'Rudi Ananda', 'rudiananda@gmail.com', 'Kalimantan Selatan', 'Kotabaru', 'Pamukan', 'Jl. Poros Kalimantan Km. 20 Sengayam', '72169', '2022-06-27 06:39:38'),
(7, 'Rifa Fahriani', 'rifafahriani@gmail.com', 'Kalimantan Selatan', 'Kotabaru', 'Kelumpang Hilir', 'Jl. Merah Delima No. 20 Pelajau Baru', '72162', '2022-06-27 06:41:01'),
(8, 'Arina Handayani', 'arinahandayani@gmail.com', 'DKI Jakarta', 'Jakarta Utara', 'Cilincing', 'Jl. Nuri Km. 2', '14120', '2022-07-04 08:00:56'),
(9, 'Reefa Annisa', 'reefannisa@gmail.com', 'DKI Jakarta', 'Jakarta Selatan', 'Kebayoran Lama', 'Perum Ayodya 2 Blok D', '12240', '2022-07-04 08:00:56'),
(10, 'Ratri Wilujeng', 'ratriwi@gmail.com', 'DKI Jakarta', 'Jakarta Barat', 'Kebon Jeruk', 'Jl. Kasturi No. 34', '11530', '2022-07-04 08:00:56'),
(11, 'Shaliha Hasanah', 'salihasan@gmail.com', 'Jawa Tengah', 'Banjarnegara', 'Banjarnegara', 'Cendana RT 2 RW 10', '53418', '2022-07-04 08:53:54'),
(12, 'Novi Gavi', 'novigavi@gmail.com', 'DIY', 'Sleman', 'Wedomartani', 'Jl. Kayen Raya No. 20', '55584', '2022-07-04 08:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` char(10) NOT NULL,
  `name` char(50) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `unit` char(5) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(10) NOT NULL,
  `discount_percentage` int(11) DEFAULT NULL,
  `halal_mui` char(20) DEFAULT NULL,
  `cruelty_free_status` char(3) DEFAULT NULL,
  `age_usage_from` int(11) DEFAULT NULL,
  `main_ingredient` varchar(100) DEFAULT NULL,
  `how_to_use` text DEFAULT NULL,
  `concern_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `size`, `unit`, `weight`, `price`, `stock`, `discount_percentage`, `halal_mui`, `cruelty_free_status`, `age_usage_from`, `main_ingredient`, `how_to_use`, `concern_id`) VALUES
('AV002002', 'Avoskin Miraculous Refining Toner', 100, 'ml', '200gr', 195000, 20, 0, 'NA18181207654', 'YES', 16, 'AHA-BHA-PHA + Nicinamide + 2% Tea Tree + Witch Hazel and Aloe Vera', '\r\n\r\nFollow the steps of use and the following tips to get the benefits of the Miraculous Refining Toner product more optimally:\r\n- Pour Miraculous Refining Toner product on cotton or palms after cleansing facial skin.\r\n- Wipe from the center of the face outwards in an upward motion and let it absorb.\r\n- Rinse the next day, and don\'t forget to use your favorite sunscreen.\r\n\r\nTips:\r\n- Trying to use the product first on certain parts of the face is recommended for sensitive skin.\r\n- At the beginning of use, it is recommended to use it at night with a maximum frequency of use 3 times a week.\r\n- Keep out of eyes. If irritation occurs, discontinue use temporarily and it is recommended to immediately consult an expert.\r\n', 4),
('AV002102', 'Avoskin Retinol Toner', 100, 'ml', '350gr', 179000, 35, 0, 'NA18211205744', 'YES', 20, 'Water, Propylene Glycol, Niacinamide, Glycerin, Polysorbate 20, Phenoxyethanol, PEG-40 Hydrogenated ', '\r\nFollow these steps and tips to get the benefits of using Avoskin Miraculous Retinol Toner more optimally:\r\n- Pour an adequate amount of Miraculous Retinol Toner into your palms after cleansing your facial skin.\r\n- Apply from the center of the face outwards in an upward motion and let it absorb completely.\r\n- Rinse the next day, and don\'t forget to use your favorite sunscreen.\r\n\r\nTips:\r\n- Reduce the frequency of use if redness or irritation occurs.\r\n', 3),
('AV002201', 'Avoskin YSB Alpha Arbutin 3% + Grapeseed', 30, 'ml', '150gr', 139000, 200, 0, 'NA18202000279', 'YES', 15, 'Aqua, Alpha-Arbutin, Butylene Glycol, Glycerin, Hydroxyethyl Cellulose, Phenoxyethanol, Chlorphenesi', 'Apply a few drops to the face in the morning and evening. Massage the skin gently. For optimal results always use The Great Shield Sunscreen the next day.', 1),
('AV002202', 'Avoskin YSB Glow Concentrate Treatment 2', 45, 'ml', '150gr', 259000, 160, 0, 'NA182101019804', 'YES', 0, 'Water, Glycerin, Propanediol, 1,2-Hexanediol, Pentylene Glycol, Dicaprylyl Carbonate, Butylene Glyco', 'Pagi: Oleskan ke seluruh wajah hingga leher setelah penggunaan essence/serum. Lanjutkan dengan penggunaan sunscreen favoritmu.\r\nMalam: Oleskan ke seluruh wajah hingga leher pada step terakhir skincare routine sebelum tidur.', 5),
('AV002203', 'Avoskin YSB Niacinamide 12% + Centella Asiatica', 30, 'ml', '250gr', 139000, 70, 0, 'NA18202000278', 'YES', 15, 'Water, Niacinamide, Glycerin, Butylene Glycol, Biosaccharide gum-1, Hydroxyethyl Cellulose, Centella', 'Apply a few drops to the face in the morning and evening. Massage the skin gently.', 2),
('AV002301', 'Avoskin Natural Sublime Facial Cleanser', 100, 'ml', '200gr', 119000, 2300, 0, 'NA18211200915', 'YES', 15, 'Hyaluronic Acid, Marula Oil, Kale Extract, cactus Extract, Niacinamide, Pentavitin', 'Follow these usage steps to get the benefits of using Natural Sublime Facial Cleanser more optimally:\r\n- Wipe the soap on your hands and washing with water.\r\n- Apply it on your face with a circular massage.\r\n- Rinse with water until clean and now your skin is ready to use the next skincare.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`) VALUES
(1, 'DIY'),
(2, 'Jambi'),
(3, 'Gorontalo');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `star` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `content`, `star`, `customer_id`, `product_id`) VALUES
(1, 'Mantep banget sih di kulit aku', 5, 1, 'AV002002'),
(2, 'Abis cuci muka langseng keset dong', 5, 2, 'AV002301'),
(3, 'Cekit-cekit diawal pemakaian tapi setelah seminggu udah engga, hasil exfoliate-nya langsung berasa sih, kulitku jadi lebih halus dan cerah', 5, 4, 'AV002002'),
(4, 'Kalo kamu baru di dunia skincare dan pengen cobain produk yang ada retinolnya, produk ini recommended banget sih', 5, 4, 'AV002102');

-- --------------------------------------------------------

--
-- Table structure for table `skin_type`
--

CREATE TABLE `skin_type` (
  `skin_type_id` int(11) NOT NULL,
  `name` char(30) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skin_type`
--

INSERT INTO `skin_type` (`skin_type_id`, `name`, `date_created`) VALUES
(1, 'Dry', '2022-06-22 14:19:21'),
(2, 'Oily', '2022-06-22 14:19:21'),
(3, 'Combination', '2022-06-22 14:19:21'),
(4, 'Normal', '2022-06-27 07:00:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerns`
--
ALTER TABLE `concerns`
  ADD PRIMARY KEY (`concern_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `idx_cust_join_date` (`join_date`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `concern_id` (`concern_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `skin_type`
--
ALTER TABLE `skin_type`
  ADD PRIMARY KEY (`skin_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concerns`
--
ALTER TABLE `concerns`
  MODIFY `concern_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skin_type`
--
ALTER TABLE `skin_type`
  MODIFY `skin_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`concern_id`) REFERENCES `concerns` (`concern_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
