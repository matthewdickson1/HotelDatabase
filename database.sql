-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 04:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1stdraftmsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_type`
--

CREATE TABLE `accommodation_type` (
  `accommodation_type_id` int(11) NOT NULL,
  `accommodation_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accommodation_type`
--

INSERT INTO `accommodation_type` (`accommodation_type_id`, `accommodation_type`) VALUES
(1, 'hotel'),
(2, 'BNB'),
(3, 'apartment'),
(4, 'villa');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `first_line` varchar(255) NOT NULL,
  `second_line` varchar(255) NOT NULL,
  `third_line` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `postcode_zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `first_line`, `second_line`, `third_line`, `city`, `region`, `postcode_zip`, `country`) VALUES
(1, '56298', 'Mosinee', 'Plaza', 'Dasht-e Qalâ€˜ah', NULL, NULL, 'Afghanistan'),
(2, '112', 'Little Fleur', 'Drive', 'ÄŒernilov', NULL, '503 43', 'Czech Republic'),
(3, '53', 'Forster', 'Parkway', 'Yishan', NULL, NULL, 'China'),
(4, '7', 'Quincy', 'Alley', 'Nowy SÄ…cz', NULL, '33-320', 'Poland'),
(5, '17165', 'Forest', 'Pass', 'Xidajie', NULL, NULL, 'China'),
(6, '83', 'Nova', 'Point', 'Konstantinovsk', NULL, '352410', 'Russia'),
(7, '6577', 'Homewood', 'Avenue', 'Goshogawara', NULL, '861-0312', 'Japan'),
(8, '5731', 'Jana', 'Street', 'Palma Gil', NULL, '3107', 'Philippines'),
(9, '1', 'Rusk', 'Way', 'Famatina', NULL, '4203', 'Argentina'),
(10, '19743', 'Cody', 'Crossing', 'Padre Burgos', NULL, '6602', 'Philippines'),
(11, '67287', 'Alpine', 'Junction', 'Radekhiv', NULL, NULL, 'Ukraine'),
(12, '8', 'Melby', 'Trail', 'Solsona', NULL, '2910', 'Philippines'),
(13, '02', 'Sunnyside', 'Terrace', 'Budapest', 'Budapest', '1181', 'Hungary'),
(14, '52126', 'Bunting', 'Drive', 'Aurora', 'Colorado', '80044', 'United States'),
(15, '03658', 'John Wall', 'Hill', 'Villa La Angostura', NULL, '8407', 'Argentina'),
(16, '92652', 'Boyd', 'Street', 'Curitiba', NULL, '80000-000', 'Brazil'),
(17, '755', 'Oneill', 'Way', 'Atsugi', NULL, '243-0007', 'Japan'),
(18, '9', 'Delaware', 'Hill', 'MikhnÃ«vo', NULL, '142843', 'Russia'),
(19, '5', 'Harper', 'Lane', 'MaracÃ¡s', NULL, '45360-000', 'Brazil'),
(20, '21428', 'Prairie Rose', 'Avenue', 'EloÃºnda', NULL, NULL, 'Greece'),
(21, '22', 'Commercial', 'Court', 'Hat Yai', NULL, '90110', 'Thailand'),
(22, '4', 'Montana', 'Circle', 'Thá»‹ Tráº¥n Nho Quan', NULL, NULL, 'Vietnam'),
(23, '5571', 'Continental', 'Alley', 'Shaghat', NULL, NULL, 'Armenia'),
(24, '668', 'Upham', 'Junction', 'Riangderi', NULL, NULL, 'Indonesia'),
(25, '102', 'Carberry', 'Pass', 'Colquechaca', NULL, NULL, 'Bolivia'),
(26, '65', 'Rigney', 'Street', 'Raminho', 'Ilha Terceira', '9700-406', 'Portugal'),
(27, '9881', 'Eastlawn', 'Parkway', 'Donghu', NULL, NULL, 'China'),
(28, '256', 'Sycamore', 'Avenue', 'Sergach', NULL, '607529', 'Russia'),
(29, '31343', 'Sheridan', 'Parkway', 'Alcabideche', 'Lisboa', '2645-024', 'Portugal'),
(30, '873', 'Harper', 'Alley', 'GÃ¶teborg', 'VÃ¤stra GÃ¶taland', '412 79', 'Sweden'),
(31, '61008', 'Crownhardt', 'Place', 'Santana do Ipanema', NULL, '57500-000', 'Brazil'),
(32, '0187', 'Butternut', 'Way', 'Santo Aleixo', 'Portalegre', '7450-227', 'Portugal'),
(33, '691', 'Bay', 'Lane', 'FalkÃ¶ping', 'VÃ¤stra GÃ¶taland', '521 22', 'Sweden'),
(34, '024', 'Vernon', 'Road', 'Glatik', NULL, NULL, 'Indonesia'),
(35, '98984', 'Surrey', 'Crossing', 'Liushikou', NULL, NULL, 'China'),
(36, '76', 'Merchant', 'Crossing', 'Businga', NULL, NULL, 'Democratic Republic of the Congo'),
(37, '311', 'Rusk', 'Crossing', 'Quiriquire', NULL, NULL, 'Venezuela'),
(38, '7849', 'Spenser', 'Court', 'Zaragoza', NULL, NULL, 'El Salvador'),
(39, '80', 'Basil', 'Plaza', 'MontrÃ©al-Ouest', 'QuÃ©bec', 'H5B', 'Canada'),
(40, '7', 'Old Gate', 'Lane', 'Sakassou', NULL, NULL, 'Ivory Coast'),
(41, '61', 'Autumn Leaf', 'Plaza', 'Ãlvares Machado', NULL, '19160-000', 'Brazil'),
(42, '99642', 'Arkansas', 'Plaza', 'Matsumoto', NULL, '996-0051', 'Japan'),
(43, '55373', 'Moland', 'Court', 'Kinmparana', NULL, NULL, 'Mali'),
(44, '544', 'Lukken', 'Way', 'JesÃºs MenÃ©ndez', NULL, NULL, 'Cuba'),
(45, '478', 'Gerald', 'Terrace', 'Besukrejo', NULL, NULL, 'Indonesia'),
(46, '174', 'Raven', 'Center', 'Guchang', NULL, NULL, 'China'),
(47, '154', 'Upham', 'Parkway', 'BorÅ«jen', NULL, NULL, 'Iran'),
(48, '6801', 'Wayridge', 'Lane', 'Bureng', NULL, NULL, 'Gambia'),
(49, '52538', 'Gale', 'Hill', 'Kaseda-shirakame', NULL, '899-3515', 'Japan'),
(50, '34474', 'Carpenter', 'Park', 'Floriano', NULL, '64800-000', 'Brazil'),
(51, '807', 'Artisan', 'Trail', 'Gorang', NULL, NULL, 'Indonesia'),
(52, '92 Southampton Row', '', NULL, 'London', NULL, 'WC1B 4BH', 'United Kingdom'),
(53, '38-51 Bedford Way', '', NULL, 'London', NULL, 'WC1H 0DG', 'United Kingdom'),
(54, '2 Bridge Place', '', NULL, 'London', NULL, 'SW1V 1QA', 'United Kingdom'),
(55, '4 Devonshire Row', '', NULL, 'London', NULL, 'EC2M 4RH', 'United Kingdom'),
(56, '10 New Drum Street', '', NULL, 'London', NULL, 'E1 7AT', 'United Kingdom'),
(57, '7', 'Quincy', 'Alley', 'Nowy SÄ…cz', NULL, '33-320', 'Poland'),
(59, '7', 'Quincy', 'Alley', 'Nowy SÄ…cz', NULL, '33-320', 'Poland'),
(60, '1', 'Malone Road', NULL, 'Belfast', NULL, 'BT9 1AA', 'United Kingdom'),
(61, '1', 'Malone Road', NULL, 'Belfast', NULL, 'BT9 1AA', 'United Kingdom'),
(62, '1', 'Malone Road', NULL, 'Belfast', NULL, 'BT9 1AA', 'United Kingdom'),
(63, '1', 'Malone Road', NULL, 'Belfast', NULL, 'BT9 1AA', 'United Kingdom'),
(64, '1', 'Malone Road', NULL, 'Belfast', NULL, 'BT9 1AA', 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `amenity_id` int(11) NOT NULL,
  `amenity_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`amenity_id`, `amenity_name`) VALUES
(1, 'Free Wifi'),
(2, 'Spa'),
(3, 'Free Breakfast'),
(4, 'Swimming Pool'),
(5, 'Coffee'),
(6, 'Iron');

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `attraction_id` int(11) NOT NULL,
  `attraction_name` varchar(255) NOT NULL,
  `attraction_latitude` varchar(255) NOT NULL,
  `attraction_longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`attraction_id`, `attraction_name`, `attraction_latitude`, `attraction_longitude`) VALUES
(1, 'Buckingham Palace', '51.5014', '-0.1419'),
(2, 'London Eye', '51.5033', '-0.1196'),
(3, 'Big Ben', '51.510357', '-0.116773');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_reference` varchar(255) NOT NULL,
  `booking_date` date NOT NULL,
  `total_cost` decimal(20,2) NOT NULL,
  `is_pay_at_hotel` tinyint(1) NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `amount_paid` decimal(20,2) NOT NULL,
  `status_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_reference`, `booking_date`, `total_cost`, `is_pay_at_hotel`, `checkin_date`, `checkout_date`, `amount_paid`, `status_id`, `payment_id`, `customer_id`) VALUES
(1, 'AWE4TY', '2021-11-01', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 2, 1, 1),
(2, 'AS235D', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 2, 4, 1),
(7, 'ASD235D', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 2, 8, 1),
(11, 'ASD2315D', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 2, 11, 1),
(12, '75B42488E7', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 4, 12, 1),
(13, '8B3E977051', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 4, 13, 1),
(14, '51202846E2', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 4, 14, 1),
(16, '96653BD24E', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 4, 15, 1),
(17, '04D4AE46AA', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 2, 16, 1),
(20, '3764261642', '2021-11-04', '690.00', 0, '2022-02-02', '2022-02-04', '690.00', 4, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varbinary(255) NOT NULL,
  `is_marketing_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_rewards_member` tinyint(1) NOT NULL DEFAULT 0,
  `rewards_stamps` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `password`, `is_marketing_active`, `is_rewards_member`, `rewards_stamps`, `address_id`) VALUES
(1, 'Matthew', 'Dickson', 'mdickson10@qub.ac.uk', 0x37333465306637393331323038383633626166336439333366303166666165383564313232326130646362386263, 1, 0, 0, 1),
(2, 'Neil', 'Anderson', 'nanderson@qub.ac.uk', 0x65343934653264383732623532643031643339323031346637346337323135626361633630346561346166316664, 0, 0, NULL, 5),
(3, 'John', 'Wayne', 'jwayne@qub.ac.uk', 0x65653464396236383932396161386530383263643933383663346664626365656133636234326663663564623138, 0, 0, NULL, 7),
(4, 'Homer', 'Simpson', 'hsimpson@qub.ac.uk', 0x38306535383361323738333662656639363030303862343565326165643464646130353963326639353034663436, 1, 1, NULL, 12),
(5, 'Edgar', 'Codd', 'ecodd@qub.ac.uk', 0x37333435373436336234393362323163353138366365383437306534343262366561366464333737653236306163, 1, 1, NULL, 16),
(6, 'Tim', 'Berners-Lee', 'tlee@qub.ac.uk', 0x31336435623139653163313533663831306339646534316364323532383361633561333464623562326330383638, 0, 1, NULL, 19),
(7, 'Boris', 'Johnson', 'bjohnson@qub.ac.uk', 0x34623533343766396139346565613131653462303962323333316133306563646635313565343039616531353133, 0, 0, NULL, 57),
(9, 'Boris', 'Johnson', 'bjohnson1@qub.ac.uk', 0x39343361323466326637326161653233616336613633656138323537396636303664633335626137356133333534, 0, 0, NULL, 59),
(10, 'Neil', 'Anderson', 'nanderson2@qub.ac.uk', 0x66323230353661383362623634633161326464626534313439326262363333303238326338303234653864356530, 0, 0, NULL, 60),
(11, 'Neil', 'Anderson', 'nanderson3@qub.ac.uk', 0x64646536663637363466633734363234363738653736343739383739393761663235376337623130666436363533, 0, 0, NULL, 61),
(12, 'Neil', 'Anderson', 'nanderson4@qub.ac.uk', 0x35396434346334373730623934313363393835643737313265633362373364346263333531646362346265306637, 0, 0, NULL, 62),
(13, 'Neil', 'Anderson', 'nanderson5@qub.ac.uk', 0x32346663616164623632666563613033346334306634383530653033313533656365326636396537633439383339, 0, 0, NULL, 63),
(14, 'Matthew', 'Dickson', 'mdickson11@qub.ac.uk', 0x32366633393063656232653961643035323938616530396265623666363336383236343133333938636131383631, 0, 0, NULL, 64);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `guest_requests` text DEFAULT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `first_name`, `last_name`, `email`, `guest_requests`, `customer_id`) VALUES
(1, 'Matthew', 'Dickson', 'mdickson10@qub.ac.uk', 'N/A', 1),
(2, 'Matthew', 'Dickson', 'matthew@gmail.com', 'No requests', 1),
(7, 'Matthew', 'Dickson', 'matthew1@gmail.com', 'No requests', 1),
(10, 'Matthew', 'Dickson', 'matthew12@gmail.com', 'No requests', 1),
(11, 'Matthew', 'Dickson', 'matthew17@gmail.com', 'No requests', 1),
(12, 'Matthew', 'Dickson', 'matthew171@gmail.com', 'No requests', 1),
(13, 'Matthew', 'Dickson', 'matthew128@gmail.com', 'No requests', 1),
(15, 'Matthew', 'Dickson', 'matthew129@gmail.com', 'No requests', 1),
(16, 'Matthew', 'Dickson', 'matthew121@gmail.com', 'No requests', 1),
(19, 'Matthew', 'Dickson', 'matthew1629@gmail.com', 'No requests', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `hotel_description` text NOT NULL,
  `has_availability` tinyint(1) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `guest_rating` decimal(3,1) NOT NULL,
  `star_rating_id` int(11) NOT NULL,
  `accommodation_type_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_description`, `has_availability`, `latitude`, `longitude`, `guest_rating`, `star_rating_id`, `accommodation_type_id`, `address_id`) VALUES
(1, 'DoubleTree by Hilton London West End', '4-star hotel with restaurant, near The British Museum', 1, '51.519875', '-0.121887', '9.2', 4, 1, 55),
(2, 'The Royal National Hotel', '4-star hotel with 2 restaurants, near The British Museum', 1, '51.522823', '-0.127349', '8.4', 4, 1, 53),
(3, 'DoubleTree by Hilton London Victoria', '4-star hotel with restaurant, near Victoria Palace Theatre', 1, '51.493919', '-0.143348', '8.2', 4, 1, 54),
(4, 'The Bull and The Hide', '4-star inn with restaurant, near Liverpool Street', 1, '51.516975', '-0.080433', '8.8', 4, 1, 55),
(5, 'Clayton Hotel City of London', '4-star hotel with restaurant, near Tower of London', 1, '51.514849', '-0.070685', '9.0', 4, 1, 56);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_amenity`
--

CREATE TABLE `hotel_amenity` (
  `hotel_amenity_id` int(11) NOT NULL,
  `is_highlight` tinyint(1) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_amenity`
--

INSERT INTO `hotel_amenity` (`hotel_amenity_id`, `is_highlight`, `hotel_id`, `amenity_id`) VALUES
(1, 1, 5, 1),
(2, 1, 5, 2),
(3, 1, 5, 3),
(4, 1, 3, 6),
(6, 1, 4, 2),
(7, 1, 1, 3),
(8, 0, 1, 4),
(10, 0, 3, 4),
(11, 0, 4, 4),
(12, 0, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_attraction`
--

CREATE TABLE `hotel_attraction` (
  `hotel_attraction_id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `attraction_distance` varchar(255) NOT NULL,
  `is_highlight` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_attraction`
--

INSERT INTO `hotel_attraction` (`hotel_attraction_id`, `attraction_id`, `hotel_id`, `attraction_distance`, `is_highlight`) VALUES
(1, 3, 5, '0.7 miles', 1),
(2, 1, 3, '1.0 miles', 1),
(3, 2, 1, '1.2 miles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_image`
--

CREATE TABLE `hotel_image` (
  `hotel_image_id` int(11) NOT NULL,
  `image_position` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_image`
--

INSERT INTO `hotel_image` (`hotel_image_id`, `image_position`, `hotel_id`, `image_id`) VALUES
(1, 1, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_theme`
--

CREATE TABLE `hotel_theme` (
  `hotel_theme_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_theme`
--

INSERT INTO `hotel_theme` (`hotel_theme_id`, `hotel_id`, `theme_id`) VALUES
(1, 5, 5),
(2, 3, 4),
(3, 1, 3),
(4, 4, 4),
(5, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_title`, `image_url`) VALUES
(1, 'Junior Suite - Guest Room', 'https://exp.cdn-hotels.com/hotels/31000000/30460000/30455900/30455872/2e80b83f_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(2, 'Delux Double Room - Bathroom', 'https://exp.cdn-hotels.com/hotels/31000000/30460000/30455900/30455872/3ca52774_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium'),
(3, 'The Bull and The Hide Hotel Bar', 'https://exp.cdn-hotels.com/hotels/13000000/12020000/12015600/12015537/ec08c2f0_z.jpg?impolicy=fcrop&w=1000&h=666&q=medium');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_amount` decimal(20,2) NOT NULL,
  `transaction_ref` varchar(255) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_amount`, `transaction_ref`, `payment_date`) VALUES
(1, '690.00', '1OIHBU24', '2021-11-01'),
(2, '420.69', 'A34YHSDF', '2021-11-01'),
(3, '1521.00', 'AHR98UBW', '2021-11-01'),
(4, '690.00', 'ASW5W35SZR', '2021-11-04'),
(8, '0.00', 'ASW5W35AZR', '2021-11-04'),
(11, '0.00', 'ASW52W35AZR', '2021-11-04'),
(12, '0.00', 'B43AED9492', '2021-11-04'),
(13, '0.00', '225B3BCC81', '2021-11-04'),
(14, '0.00', '887750C9D1', '2021-11-04'),
(15, '0.00', '0CAED9F08E', '2021-11-04'),
(16, '0.00', 'FA6C3C041E', '2021-11-04'),
(17, '0.00', '925E92B7F4', '2021-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `payment_card`
--

CREATE TABLE `payment_card` (
  `payment_card_id` int(11) NOT NULL,
  `name_on_card` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_card`
--

INSERT INTO `payment_card` (`payment_card_id`, `name_on_card`, `card_number`, `expiry_date`, `customer_id`, `address_id`) VALUES
(1, 'Mr James Smith', '>\n??x~??|
?yI??!???(?T,?q?N_?', '2022-10-08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `review_title` varchar(255) NOT NULL,
  `review_text` text NOT NULL,
  `review_score` decimal(10,2) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_date`, `review_title`, `review_text`, `review_score`, `hotel_id`, `booking_id`) VALUES
(1, '2021-11-05', 'Super Hotel', 'Great', '9.00', 1, 1),
(2, '2021-11-05', 'Super Hotel', 'Very Great', '9.50', 1, 2),
(3, '2022-02-09', 'Great hotel', 'Nice pool', '8.60', 1, 12),
(8, '2022-02-09', 'Great hotel', 'Nice pool', '8.60', 1, 13),
(9, '2022-02-09', 'Great hotel', 'Nice pool', '8.60', 1, 14),
(11, '2022-02-09', 'Great hotel', 'Nice pool', '9.80', 1, 16),
(14, '2022-02-09', 'Great hotel', 'Nice pool', '9.80', 1, 17),
(16, '2022-02-09', 'Great hotel', 'Nice pool', '9.80', 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_capacity` varchar(255) NOT NULL,
  `bed_count` int(11) NOT NULL,
  `price_min` decimal(20,2) NOT NULL,
  `price_max` decimal(20,2) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_capacity`, `bed_count`, `price_min`, `price_max`, `hotel_id`) VALUES
(1, 'Room, 1 Double Bed', '2', 1, '100.00', '300.00', 1),
(2, 'Twin Room', '2', 1, '120.00', '300.00', 1),
(3, 'Twin Room, Accessible', '2', 1, '120.00', '300.00', 1),
(4, '\r\nSuperior Room, 1 King Bed', '2', 1, '120.00', '350.00', 1),
(5, '\r\nFamily Room, 1 Queen Bed (Superior)', '2', 1, '150.00', '550.00', 1),
(6, '\r\nPremium Room, 1 Double Bed, Accessible', '2', 1, '180.00', '550.00', 1),
(7, 'Room, 1 Double Bed', '2', 1, '100.00', '300.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_amenity`
--

CREATE TABLE `room_amenity` (
  `room_amenity_id` int(11) NOT NULL,
  `is_highlight` tinyint(1) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_amenity`
--

INSERT INTO `room_amenity` (`room_amenity_id`, `is_highlight`, `room_id`, `amenity_id`) VALUES
(1, 1, 5, 6),
(2, 1, 1, 6),
(3, 1, 2, 6),
(4, 1, 3, 6),
(5, 1, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `adult_count` int(11) NOT NULL COMMENT 'Must be >=1',
  `child_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `room_id`, `booking_id`, `guest_id`, `adult_count`, `child_count`) VALUES
(1, 5, 1, 1, 2, 0),
(2, 5, 1, 1, 2, 0),
(3, 5, 2, 2, 2, 0),
(5, 5, 7, 7, 2, 0),
(7, 5, 11, 10, 2, 0),
(8, 5, 12, 11, 2, 0),
(9, 5, 13, 12, 2, 0),
(10, 4, 14, 13, 2, 0),
(11, 4, 16, 15, 2, 0),
(12, 4, 17, 16, 2, 0),
(13, 4, 20, 19, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_detail`
--

CREATE TABLE `room_detail` (
  `room_details_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `initial_quantity` int(11) NOT NULL,
  `available_quantity` int(11) NOT NULL COMMENT 'Must be >0',
  `room_id` int(11) NOT NULL,
  `room_rate` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_detail`
--

INSERT INTO `room_detail` (`room_details_id`, `date`, `initial_quantity`, `available_quantity`, `room_id`, `room_rate`) VALUES
(5, '2022-02-02', 20, 6, 1, '190.00'),
(6, '2022-02-03', 20, 7, 1, '190.00'),
(7, '2022-02-04', 20, 7, 1, '190.00'),
(8, '2022-02-05', 20, 15, 1, '190.00'),
(9, '2022-02-02', 20, 7, 2, '195.00'),
(10, '2022-02-03', 20, 7, 2, '195.00'),
(11, '2022-02-04', 20, 7, 2, '195.00'),
(12, '2022-02-04', 20, 7, 3, '195.00'),
(13, '2022-02-03', 20, 7, 3, '195.00'),
(14, '2022-02-02', 20, 7, 4, '205.55'),
(15, '2022-02-03', 20, 7, 4, '205.55'),
(16, '2022-02-04', 20, 7, 4, '205.55'),
(17, '2022-02-04', 20, 7, 5, '251.52'),
(18, '2022-02-03', 20, 7, 5, '251.52'),
(19, '2022-02-02', 20, 7, 5, '251.52'),
(20, '2022-02-02', 20, 7, 3, '195.00'),
(21, '2022-02-02', 20, 14, 7, '195.00'),
(22, '2022-02-03', 20, 14, 7, '195.00'),
(23, '2022-02-04', 20, 14, 7, '195.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_image`
--

CREATE TABLE `room_image` (
  `room_image_id` int(11) NOT NULL,
  `image_position` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_image`
--

INSERT INTO `room_image` (`room_image_id`, `image_position`, `image_id`, `room_id`) VALUES
(1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `star_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `star_rating`) VALUES
(1, 'One Star'),
(2, 'Two Star'),
(3, 'Three Star'),
(4, 'Four Star'),
(5, 'Five Star');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
(1, 'reserved'),
(2, 'booked'),
(3, 'cancelled'),
(4, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL,
  `theme_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `theme_name`) VALUES
(1, 'Beach'),
(2, 'Boutique'),
(3, 'Luxury'),
(4, 'Romantic'),
(5, 'Business');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  ADD PRIMARY KEY (`accommodation_type_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`attraction_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `booking_reference` (`booking_reference`),
  ADD KEY `FK_booking_status_status_id` (`status_id`),
  ADD KEY `FK_booking_payment_payment_id` (`payment_id`),
  ADD KEY `FK_booking_customer_customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_customer_address_address_id` (`address_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `FK_guest_customer_customer_id` (`customer_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_star_rating_star_rating_id` (`star_rating_id`),
  ADD KEY `FK_accomm_accommodation_type_id` (`accommodation_type_id`),
  ADD KEY `FK_hoteladdress_address_id` (`address_id`);

--
-- Indexes for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD PRIMARY KEY (`hotel_amenity_id`),
  ADD KEY `FK_hotel_amenity_amenity_id` (`amenity_id`),
  ADD KEY `FK_hotel_amenity_hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_attraction`
--
ALTER TABLE `hotel_attraction`
  ADD PRIMARY KEY (`hotel_attraction_id`),
  ADD KEY `FK_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_attraction_attraction_id` (`attraction_id`);

--
-- Indexes for table `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD PRIMARY KEY (`hotel_image_id`),
  ADD KEY `FK_hotelimage_image_id` (`image_id`),
  ADD KEY `FK_hotelimage_hotel_id` (`hotel_id`);

--
-- Indexes for table `hotel_theme`
--
ALTER TABLE `hotel_theme`
  ADD PRIMARY KEY (`hotel_theme_id`),
  ADD KEY `FK_theme_theme_id` (`theme_id`),
  ADD KEY `FK_hotel_theme_hotel_id` (`hotel_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `transaction_ref` (`transaction_ref`);

--
-- Indexes for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD PRIMARY KEY (`payment_card_id`),
  ADD UNIQUE KEY `card_number` (`card_number`),
  ADD KEY `FK_payment_customer_customer_id` (`customer_id`),
  ADD KEY `FK_payment_address_address_id` (`address_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `FK_hotelreview_hotel_id` (`hotel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FK_room_hotel_id` (`hotel_id`);

--
-- Indexes for table `room_amenity`
--
ALTER TABLE `room_amenity`
  ADD PRIMARY KEY (`room_amenity_id`),
  ADD KEY `FK_room_amenity_room_id` (`room_id`),
  ADD KEY `FK_room_amenity_amenity_id` (`amenity_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_room_booking_room_id` (`room_id`),
  ADD KEY `FK_room_booking_booking_id` (`booking_id`),
  ADD KEY `FK_room_booking_guest_id` (`guest_id`);

--
-- Indexes for table `room_detail`
--
ALTER TABLE `room_detail`
  ADD PRIMARY KEY (`room_details_id`),
  ADD KEY `FK_room_available_room_id` (`room_id`);

--
-- Indexes for table `room_image`
--
ALTER TABLE `room_image`
  ADD PRIMARY KEY (`room_image_id`),
  ADD KEY `FK_roomimage_image_id` (`image_id`),
  ADD KEY `FK_roomimage_room_id` (`room_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  MODIFY `accommodation_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `amenity`
--
ALTER TABLE `amenity`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `attraction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  MODIFY `hotel_amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hotel_attraction`
--
ALTER TABLE `hotel_attraction`
  MODIFY `hotel_attraction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_image`
--
ALTER TABLE `hotel_image`
  MODIFY `hotel_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_theme`
--
ALTER TABLE `hotel_theme`
  MODIFY `hotel_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_card`
--
ALTER TABLE `payment_card`
  MODIFY `payment_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_amenity`
--
ALTER TABLE `room_amenity`
  MODIFY `room_amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_detail`
--
ALTER TABLE `room_detail`
  MODIFY `room_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `room_image`
--
ALTER TABLE `room_image`
  MODIFY `room_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_booking_payment_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `FK_booking_status_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `FK_guest_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_accomm_accommodation_type_id` FOREIGN KEY (`accommodation_type_id`) REFERENCES `accommodation_type` (`accommodation_type_id`),
  ADD CONSTRAINT `FK_hoteladdress_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_star_rating_star_rating_id` FOREIGN KEY (`star_rating_id`) REFERENCES `star_rating` (`star_rating_id`);

--
-- Constraints for table `hotel_amenity`
--
ALTER TABLE `hotel_amenity`
  ADD CONSTRAINT `FK_hotel_amenity_amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`),
  ADD CONSTRAINT `FK_hotel_amenity_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_attraction`
--
ALTER TABLE `hotel_attraction`
  ADD CONSTRAINT `FK_attraction_attraction_id` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`attraction_id`),
  ADD CONSTRAINT `FK_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_image`
--
ALTER TABLE `hotel_image`
  ADD CONSTRAINT `FK_hotelimage_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_hotelimage_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`);

--
-- Constraints for table `hotel_theme`
--
ALTER TABLE `hotel_theme`
  ADD CONSTRAINT `FK_hotel_theme_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_theme_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`);

--
-- Constraints for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD CONSTRAINT `FK_payment_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_payment_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_bookingreview_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_hotelreview_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_room_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `room_amenity`
--
ALTER TABLE `room_amenity`
  ADD CONSTRAINT `FK_room_amenity_amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`),
  ADD CONSTRAINT `FK_room_amenity_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_room_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_room_booking_guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  ADD CONSTRAINT `FK_room_booking_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_detail`
--
ALTER TABLE `room_detail`
  ADD CONSTRAINT `FK_room_available_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `room_image`
--
ALTER TABLE `room_image`
  ADD CONSTRAINT `FK_roomimage_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `FK_roomimage_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
