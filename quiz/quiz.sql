-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 04:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ansbank`
--

CREATE TABLE `ansbank` (
  `id` int(5) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `que_id` int(5) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(50) NOT NULL,
  `isCorrect` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ansbank`
--

INSERT INTO `ansbank` (`id`, `cat_id`, `que_id`, `options`, `value`, `isCorrect`) VALUES
(1, 1, 1, 'A', 'Bluetooth', 0),
(2, 1, 1, 'B', 'Ethernet', 0),
(3, 1, 1, 'C', 'NFC', 0),
(4, 1, 1, 'D', 'VoIP', 1),
(5, 1, 2, 'A', 'Virtual Reality', 0),
(6, 1, 2, 'B', 'Machine Learning', 1),
(7, 1, 2, 'C', 'Cryptocurrency', 0),
(8, 1, 2, 'D', 'Microservices', 0),
(9, 1, 3, 'A', '16 bits', 0),
(10, 1, 3, 'B', '8 bits', 1),
(11, 1, 3, 'C', '24 bits', 0),
(12, 1, 3, 'D', '12 bits', 0),
(13, 1, 4, 'A', 'Archie', 1),
(14, 1, 4, 'B', 'Google', 0),
(15, 1, 4, 'C', 'Bing', 0),
(16, 1, 4, 'D', 'Yahoo', 0),
(17, 1, 5, 'A', '256', 0),
(18, 1, 5, 'B', '128', 0),
(19, 1, 5, 'C', '64', 0),
(20, 1, 5, 'D', '32', 1),
(21, 1, 6, 'A', 'Internet Explorer', 0),
(22, 1, 6, 'B', 'Mozilla', 0),
(23, 1, 6, 'C', 'Nexus', 1),
(24, 1, 6, 'D', 'Chrome', 0),
(25, 1, 7, 'A', 'Data Transmisson', 0),
(26, 1, 7, 'B', 'Authentication', 0),
(27, 1, 7, 'C', 'Security', 1),
(28, 1, 7, 'D', 'Monitoring', 0),
(29, 1, 8, 'A', '9', 0),
(30, 1, 8, 'B', '3', 0),
(31, 1, 8, 'C', '7', 1),
(32, 1, 8, 'D', '11', 0),
(33, 1, 9, 'A', 'California', 0),
(34, 1, 9, 'B', 'Washington', 1),
(35, 1, 9, 'C', 'New York', 0),
(36, 1, 9, 'D', 'Texas', 0),
(37, 1, 10, 'A', 'Image File', 1),
(38, 1, 10, 'B', 'Video File', 0),
(39, 1, 10, 'C', 'Audio File', 0),
(40, 1, 10, 'D', 'Word File', 0),
(41, 1, 11, 'A', 'POP3', 0),
(42, 1, 11, 'B', 'SMTP', 1),
(43, 1, 11, 'C', 'HTTP', 0),
(44, 1, 11, 'D', 'FTP', 0),
(45, 1, 12, 'A', 'can', 0),
(46, 1, 12, 'B', 'con', 1),
(47, 1, 12, 'C', 'mak', 0),
(48, 1, 12, 'D', 'make', 0),
(49, 1, 13, 'A', 'Alt+M', 0),
(50, 1, 13, 'B', 'Shift+M', 0),
(51, 1, 13, 'C', 'WindowsKey+D', 1),
(52, 1, 13, 'D', 'CTRL+D', 0),
(53, 1, 14, 'A', 'IBM', 0),
(54, 1, 14, 'B', 'Google', 0),
(55, 1, 14, 'C', 'Microsoft', 0),
(56, 1, 14, 'D', 'Sun Microsystems', 1),
(57, 1, 15, 'A', 'SMTP', 0),
(58, 1, 15, 'B', 'POP3', 1),
(59, 1, 15, 'C', 'HTTP', 0),
(60, 1, 15, 'D', 'FTP', 0),
(61, 1, 16, 'A', 'Virus', 0),
(62, 1, 16, 'B', 'Malware', 1),
(63, 1, 16, 'C', 'Worm', 0),
(64, 1, 16, 'D', 'Spyware', 0),
(65, 1, 17, 'A', '1 TerraByte', 1),
(66, 1, 17, 'B', '1 YotaByte', 0),
(67, 1, 17, 'C', '1 ZetaByte', 0),
(68, 1, 17, 'D', '1 MegaByte', 0),
(69, 1, 18, 'A', 'Digital Wallet', 0),
(70, 1, 18, 'B', 'Mining', 0),
(71, 1, 18, 'C', 'Blockchain', 1),
(72, 1, 18, 'D', 'Token', 0),
(73, 1, 19, 'A', '32', 0),
(74, 1, 19, 'B', '64', 0),
(75, 1, 19, 'C', '128', 1),
(76, 1, 19, 'D', '256', 0),
(77, 1, 20, 'A', 'Microsoft', 0),
(78, 1, 20, 'B', 'Dell', 0),
(79, 1, 20, 'C', 'IBM', 1),
(80, 1, 20, 'D', 'HP', 0),
(81, 2, 21, 'A', 'Babur', 0),
(82, 2, 21, 'B', 'Akbar', 1),
(83, 2, 21, 'C', 'Shah Jahan', 0),
(84, 2, 21, 'D', 'Aurangzeb', 0),
(85, 2, 22, 'A', 'Chandragupt Maurya', 1),
(86, 2, 22, 'B', 'Ashoka The Great', 0),
(87, 2, 22, 'C', 'Samudragupta', 0),
(88, 2, 22, 'D', 'Harsha', 0),
(89, 2, 23, 'A', 'Indus Valley', 0),
(90, 2, 23, 'B', 'Vijaynagara', 1),
(91, 2, 23, 'C', 'Kakatiya', 0),
(92, 2, 23, 'D', 'Mughal', 0),
(93, 2, 24, 'A', 'Lord Mount Batten', 0),
(94, 2, 24, 'B', 'Vasco da Gama', 1),
(95, 2, 24, 'C', 'Chirstopher Columbus', 0),
(96, 2, 24, 'D', 'Lord Dalhousie', 0),
(97, 2, 25, 'A', 'Lord Dalhousie', 0),
(98, 2, 25, 'B', 'Lord Lawerence', 0),
(99, 2, 25, 'C', 'Lord Mountbatten', 1),
(100, 2, 25, 'D', 'Lord Canning', 0),
(101, 2, 26, 'A', 'Pratap', 0),
(102, 2, 26, 'B', 'Mewar', 1),
(103, 2, 26, 'C', 'Solanki', 0),
(104, 2, 26, 'D', 'Chola', 0),
(105, 2, 27, 'A', 'Babur', 1),
(106, 2, 27, 'B', 'Akbar', 0),
(107, 2, 27, 'C', 'Jahangir', 0),
(108, 2, 27, 'D', 'Shah Jahan', 0),
(109, 2, 28, 'A', 'Lord Dalhousie', 0),
(110, 2, 28, 'B', 'Nader Shah', 1),
(111, 2, 28, 'C', 'Duleep Singh', 0),
(112, 2, 28, 'D', 'Bahadur Shah II', 0),
(113, 2, 29, 'A', 'Lord Dalhousie', 0),
(114, 2, 29, 'B', 'Lord Wellesley', 1),
(115, 2, 29, 'C', 'Lord Hastings', 0),
(116, 2, 29, 'D', 'Lord Hardlings', 0),
(117, 2, 30, 'A', 'Lord William Bentinck', 0),
(118, 2, 30, 'B', 'Lord Mayo', 0),
(119, 2, 30, 'C', 'Lord Elgin', 0),
(120, 2, 30, 'D', 'Lord Dalhousie', 1),
(121, 2, 31, 'A', 'Akbar', 0),
(122, 2, 31, 'B', 'Babur', 0),
(123, 2, 31, 'C', 'Shah Jahan', 1),
(124, 2, 31, 'D', 'Jahangir', 0),
(125, 2, 32, 'A', 'Babur', 0),
(126, 2, 32, 'B', 'Mohammad Ghori', 1),
(127, 2, 32, 'C', 'Illtutmish', 0),
(128, 2, 32, 'D', 'Allaudin Khilji', 0),
(129, 2, 33, 'A', 'Shah Jahan', 0),
(130, 2, 33, 'B', 'Aurangzeb', 0),
(131, 2, 33, 'C', 'Qutubbudin Aibak', 1),
(132, 2, 33, 'D', 'Sher Shah Suri', 0),
(133, 2, 34, 'A', 'Sanskrit', 0),
(134, 2, 34, 'B', 'Brahmi', 0),
(135, 2, 34, 'C', 'Sindhi', 0),
(136, 2, 34, 'D', 'Pali', 1),
(137, 2, 35, 'A', 'Rigveda', 1),
(138, 2, 35, 'B', 'Samveda', 0),
(139, 2, 35, 'C', 'Atharvaveda', 0),
(140, 2, 35, 'D', 'Yajurveda', 0),
(141, 2, 36, 'A', 'Foreigners Act', 0),
(142, 2, 36, 'B', 'Charter Act', 0),
(143, 2, 36, 'C', 'Salt Act', 1),
(144, 2, 36, 'D', 'IPC Act', 0),
(145, 2, 37, 'A', 'Rabindranath Tagore', 0),
(146, 2, 37, 'B', 'Sardar Vallabhbhai Patel', 0),
(147, 2, 37, 'C', 'Lala Lajpat Rai', 1),
(148, 2, 37, 'D', 'Bhimrao Ambedkar', 0),
(149, 2, 38, 'A', 'Bhagat Singh', 0),
(150, 2, 38, 'B', 'Sukhdev', 0),
(151, 2, 38, 'C', 'Sardar Udham Singh', 1),
(152, 2, 38, 'D', 'Rajyaguru', 0),
(153, 2, 39, 'A', 'Lala Lajpat Rai', 0),
(154, 2, 39, 'B', 'Mahatma Gandhi', 1),
(155, 2, 39, 'C', 'Jawahar Lal Nehru', 0),
(156, 2, 39, 'D', 'Sardar Vallabhbhai Patel', 0),
(157, 2, 40, 'A', 'Prithviraj Chauhan', 1),
(158, 2, 40, 'B', 'Maharana Pratap', 0),
(159, 2, 40, 'C', 'Chandragupta I', 0),
(160, 2, 40, 'D', 'Shivaji Raze', 0),
(161, 3, 41, 'A', 'Bill Gates', 0),
(162, 3, 41, 'B', 'Elon Musk', 1),
(163, 3, 41, 'C', 'Andrew Tate', 0),
(164, 3, 41, 'D', 'Mark Zuckerberg', 0),
(165, 3, 42, 'A', 'Mark Zuckerberg', 1),
(166, 3, 42, 'B', 'Sundar Pichai', 0),
(167, 3, 42, 'C', 'Elon Musk', 0),
(168, 3, 42, 'D', 'Satyendra Nadella', 0),
(169, 3, 43, 'A', 'Bill Gates', 0),
(170, 3, 43, 'B', 'Satya Nadella', 1),
(171, 3, 43, 'C', 'Elon Musk', 0),
(172, 3, 43, 'D', 'Sundar Pichai', 0),
(173, 3, 44, 'A', 'Tim Cook', 0),
(174, 3, 44, 'B', 'Elon Musk', 0),
(175, 3, 44, 'C', 'Arvind Krishna', 0),
(176, 3, 44, 'D', 'Sundar Pichai', 1),
(177, 3, 45, 'A', 'Ginni Rometty', 0),
(178, 3, 45, 'B', 'Sarah Friar', 0),
(179, 3, 45, 'C', 'Arvind Krishna', 1),
(180, 3, 45, 'D', 'Ma Huateng', 0),
(181, 3, 46, 'A', 'Tim Cook', 1),
(182, 3, 46, 'B', 'Sanjay Mehrotra', 0),
(183, 3, 46, 'C', 'Jeff Bezos', 0),
(184, 3, 46, 'D', 'Jensen Huang', 0),
(185, 3, 47, 'A', 'Sanjay Jha', 0),
(186, 3, 47, 'B', 'Anirudh Devgn', 0),
(187, 3, 47, 'C', 'Jeff Bezos', 1),
(188, 3, 47, 'D', 'Parag Agarwal', 0),
(189, 3, 48, 'A', 'Jensen Huang', 0),
(190, 3, 48, 'B', 'Daniel Zhang', 1),
(191, 3, 48, 'C', 'Ma Huateng', 0),
(192, 3, 48, 'D', 'Lei Jun', 0),
(193, 3, 49, 'A', 'Jensen Huang', 1),
(194, 3, 49, 'B', 'Ma Huateng', 0),
(195, 3, 49, 'C', 'Lei Jun', 0),
(196, 3, 49, 'D', 'Robin Li', 0),
(197, 3, 50, 'A', 'Satya Nadella', 0),
(198, 3, 50, 'B', 'Shantanu Narayen', 1),
(199, 3, 50, 'C', 'Arvind Krishna', 0),
(200, 3, 50, 'D', 'Eric Yuan', 0),
(201, 3, 51, 'A', 'Salmaan Khan', 0),
(202, 3, 51, 'B', 'Hritik Roshan', 1),
(203, 3, 51, 'C', 'Shah Rukh Khan', 0),
(204, 3, 51, 'D', 'Aamir Khan', 0),
(205, 3, 52, 'A', 'Shah Rukh Khan', 1),
(206, 3, 52, 'B', 'Rohit Sharma', 0),
(207, 3, 52, 'C', 'M. S. Dhoni', 0),
(208, 3, 52, 'D', 'Salmaan Khan', 0),
(209, 3, 53, 'A', 'Katrina Kaif', 0),
(210, 3, 53, 'B', 'Kareena Kapoor', 0),
(211, 3, 53, 'C', 'Jhanavee Kapoor', 1),
(212, 3, 53, 'D', 'Kriti Sanon', 0),
(213, 3, 54, 'A', 'Anushka Sharma', 0),
(214, 3, 54, 'B', 'Alia Bhatt', 0),
(215, 3, 54, 'C', 'Priyanka Chopra', 0),
(216, 3, 54, 'D', 'Shradha Kapoor', 1),
(217, 3, 55, 'A', 'Aishwarya Rai', 0),
(218, 3, 55, 'B', 'Deepika Padukone', 1),
(219, 3, 55, 'C', 'Tammanha Bhatai', 0),
(220, 3, 55, 'D', 'Rashmika Mandana', 0),
(221, 3, 56, 'A', 'Virat Kohli', 1),
(222, 3, 56, 'B', 'Rishabh Pant', 0),
(223, 3, 56, 'C', 'Hardik Pandya', 0),
(224, 3, 56, 'D', 'Rohit Sharma', 0),
(225, 3, 57, 'A', 'Alia Bhatt', 0),
(226, 3, 57, 'B', 'Kareena Kapoor', 0),
(227, 3, 57, 'C', 'Katrina Kaif', 1),
(228, 3, 57, 'D', 'Anushka Sharma', 0),
(229, 3, 58, 'A', 'Akshay Kumar', 0),
(230, 3, 58, 'B', 'Ajay Devgn', 0),
(231, 3, 58, 'C', 'Shah Rukh Khan', 0),
(232, 3, 58, 'D', 'All of the above', 1),
(233, 3, 59, 'A', 'Kriti Sanon', 1),
(234, 3, 59, 'B', 'Ananya Pandey', 0),
(235, 3, 59, 'C', 'Aditi Rao', 0),
(236, 3, 59, 'D', 'Disha Patani', 0),
(237, 3, 60, 'A', 'M. S. Dhoni', 1),
(238, 3, 60, 'B', 'Virat Kohli', 0),
(239, 3, 60, 'C', 'Rishab Pant', 0),
(240, 3, 60, 'D', 'Rohit Sharma', 0),
(241, 4, 61, 'A', 'International Burea Agency', 0),
(242, 4, 61, 'B', 'Intelligent Business Machines', 0),
(243, 4, 61, 'C', 'International Business Machines', 1),
(244, 4, 61, 'D', 'Integration Buisness Machines', 0),
(245, 4, 62, 'A', 'System Analytics Process', 0),
(246, 4, 62, 'B', 'System Analog Process', 0),
(247, 4, 62, 'C', 'System Applications Products', 1),
(248, 4, 62, 'D', 'System Applications Process', 0),
(249, 4, 63, 'A', 'Hirji Peshwa', 0),
(250, 4, 63, 'B', 'Hewlett Packard', 1),
(251, 4, 63, 'C', 'Hiroshima Packed', 0),
(252, 4, 63, 'D', 'Hastings Project', 0),
(253, 4, 64, 'A', 'Wireless Integration Project Resources Orientation', 0),
(254, 4, 64, 'B', 'Western India Palm Refined Oils', 1),
(255, 4, 64, 'C', 'Western International Project Revenue Origin', 0),
(256, 4, 64, 'D', 'Wireless Intermediate Power Reserve Oils', 0),
(257, 4, 65, 'A', 'Tata Customer Services', 0),
(258, 4, 65, 'B', 'Tata Creator Studio', 0),
(259, 4, 65, 'C', 'Tata Consultancy Services', 1),
(260, 4, 65, 'D', 'Tata Current Server', 0),
(261, 4, 66, 'A', 'American Telephone and Tower', 0),
(262, 4, 66, 'B', 'American Tesla and Terrain', 0),
(263, 4, 66, 'C', 'African Tower and Torrent', 0),
(264, 4, 66, 'D', 'American Telephone and Telegraph', 1),
(265, 4, 67, 'A', 'Larsen and Turbo', 1),
(266, 4, 67, 'B', 'Laser and Toxic', 0),
(267, 4, 67, 'C', 'Lasting and Tangent', 0),
(268, 4, 67, 'D', 'Lorrine and Texas', 0),
(269, 4, 68, 'A', 'Indian Road Corporation and Transport Corporation', 0),
(270, 4, 68, 'B', 'Indian Road Corporation and Traffic Corporation', 0),
(271, 4, 68, 'C', 'Indian Railways Catering and Tourist Corporation', 1),
(272, 4, 68, 'D', 'Indian Railways Corporation and Tower Corporation', 0),
(273, 4, 69, 'A', 'Indian Credit and Industrial Corporation Investors', 0),
(274, 4, 69, 'B', 'Industrial Credit and Investment Corporation of In', 1),
(275, 4, 69, 'C', 'Industrial Current Investment Corporation of India', 0),
(276, 4, 69, 'D', 'Indian Currency for Investment Company of India', 0),
(277, 4, 70, 'A', 'Indian Oxygen Corporation Limited', 0),
(278, 4, 70, 'B', 'Indian Orignal Car Limited', 0),
(279, 4, 70, 'C', 'Indian Oil Corporation Limited', 1),
(280, 4, 70, 'D', 'Indian Olives Corporation Limited', 0),
(281, 4, 71, 'A', 'Housing Dozen Forced Corporation', 0),
(282, 4, 71, 'B', 'Housing Development Finance Corporation', 1),
(283, 4, 71, 'C', 'Horsing Development Finance Corporation', 0),
(284, 4, 71, 'D', 'Hard Developing Finance Corporation', 0),
(285, 4, 72, 'A', 'Country News Network', 0),
(286, 4, 72, 'B', 'Cable Network News', 0),
(287, 4, 72, 'C', 'Cable News Network', 1),
(288, 4, 72, 'D', 'Current News Network', 0),
(289, 4, 73, 'A', 'International Electronics', 0),
(290, 4, 73, 'B', 'Immediate Electircals', 0),
(291, 4, 73, 'C', 'Integrated Electronics', 1),
(292, 4, 73, 'D', 'Independent Electronics', 0),
(293, 4, 74, 'A', 'Mysore Rubber Factory', 0),
(294, 4, 74, 'B', 'Madurai Rubber Factory', 0),
(295, 4, 74, 'C', 'Mumbai Rubber Factory', 0),
(296, 4, 74, 'D', 'Madras Rubber Factory', 1),
(297, 4, 75, 'A', 'Assam Milk Union Limited', 0),
(298, 4, 75, 'B', 'Ahemdabad Milk Union Limited', 0),
(299, 4, 75, 'C', 'Anand Milk Union Limited', 1),
(300, 4, 75, 'D', 'Aurangabad Milk Union Limited', 0),
(301, 4, 76, 'A', 'Priya Village Roadshow', 1),
(302, 4, 76, 'B', 'Prakash Virtual Reality', 0),
(303, 4, 76, 'C', 'Pratap Versus Rahul', 0),
(304, 4, 76, 'D', 'Pre-Virtuality Release', 0),
(305, 4, 77, 'A', 'National Aero Space Association', 0),
(306, 4, 77, 'B', 'National Aeronautics Space Agency', 1),
(307, 4, 77, 'C', 'National Air Space Association', 0),
(308, 4, 77, 'D', 'National Aeronautics Secret Agency', 0),
(309, 4, 78, 'A', 'Computer Integrated System Corporation', 0),
(310, 4, 78, 'B', 'Computer Intelligence Software Corporation', 0),
(311, 4, 78, 'C', 'Computer Information System Company', 1),
(312, 4, 78, 'D', 'Computer Isolated Software Company', 0),
(313, 4, 79, 'A', 'Indian Movie Database', 0),
(314, 4, 79, 'B', 'International Marketing Dome', 0),
(315, 4, 79, 'C', 'International Movie Database', 0),
(316, 4, 79, 'D', 'Internet Movie Database', 1),
(317, 4, 80, 'A', 'Bavarian Motor Works', 1),
(318, 4, 80, 'B', 'Brazil Motor Works', 0),
(319, 4, 80, 'C', 'Bangkok Motor Works', 0),
(320, 4, 80, 'D', 'Beijing Motor Works', 0),
(321, 5, 81, 'A', 'Sakshi Singh', 0),
(322, 5, 81, 'B', 'Priyanka Jha', 1),
(323, 5, 81, 'C', 'Kriti Sen', 0),
(324, 5, 81, 'D', 'Naisha Khanna', 0),
(325, 5, 82, 'A', 'Avanthika', 0),
(326, 5, 82, 'B', 'Raj Mata Sivagami', 1),
(327, 5, 82, 'C', 'Devasena', 0),
(328, 5, 82, 'D', 'Bhallaldev', 0),
(329, 5, 83, 'A', 'Operate direct-to-home satellite (DishTv)', 1),
(330, 5, 83, 'B', 'Clerk at Bank', 0),
(331, 5, 83, 'C', 'Music Artist', 0),
(332, 5, 83, 'D', 'Nothing, Unemployed', 0),
(333, 5, 84, 'A', 'Govt. Job', 0),
(334, 5, 84, 'B', 'Corporate Job', 0),
(335, 5, 84, 'C', 'Comman Man', 0),
(336, 5, 84, 'D', 'Halwai', 1),
(337, 5, 85, 'A', 'Babu Rao Ganesh Rao Shah', 0),
(338, 5, 85, 'B', 'Babu Rao Gundya Bhau', 0),
(339, 5, 85, 'C', 'Babu Rao Ganpat Rao Apte', 1),
(340, 5, 85, 'D', 'Babu Singh ', 0),
(341, 5, 86, 'A', '71 Singh', 0),
(342, 5, 86, 'B', '72 Singh', 1),
(343, 5, 86, 'C', '73 Singh', 0),
(344, 5, 86, 'D', '74 Singh', 0),
(345, 5, 87, 'A', '1st October', 0),
(346, 5, 87, 'B', '2nd October', 1),
(347, 5, 87, 'C', '4th October', 0),
(348, 5, 87, 'D', '5th October', 0),
(349, 5, 88, 'A', 'Sikh', 0),
(350, 5, 88, 'B', 'Jain', 0),
(351, 5, 88, 'C', 'Muslim', 0),
(352, 5, 88, 'D', 'Brahmin', 1),
(353, 5, 89, 'A', 'Dancing', 0),
(354, 5, 89, 'B', 'Painting', 1),
(355, 5, 89, 'C', 'Gaming', 0),
(356, 5, 89, 'D', 'Writing', 0),
(357, 5, 90, 'A', 'Roar Revolt Rise', 0),
(358, 5, 90, 'B', 'Revolt Roar Rise', 0),
(359, 5, 90, 'C', 'Rise Roar Revolt', 1),
(360, 5, 90, 'D', 'Roar Rise Revolt', 0),
(361, 5, 91, 'A', '₹150', 1),
(362, 5, 91, 'B', '₹250', 0),
(363, 5, 91, 'C', '₹350', 0),
(364, 5, 91, 'D', '₹450', 0),
(365, 5, 92, 'A', 'M', 0),
(366, 5, 92, 'B', 'W', 1),
(367, 5, 92, 'C', 'V', 0),
(368, 5, 92, 'D', 'X', 0),
(369, 5, 93, 'A', 'Raju Rastogi', 0),
(370, 5, 93, 'B', 'Farhan Qureshi', 0),
(371, 5, 93, 'C', 'Rannchoddas Chanchad', 0),
(372, 5, 93, 'D', 'Phunsukh Wangdu', 1),
(373, 5, 94, 'A', 'Jewellery', 0),
(374, 5, 94, 'B', 'God Statues', 1),
(375, 5, 94, 'C', 'Antiques', 0),
(376, 5, 94, 'D', 'Cosmetics', 0),
(377, 5, 95, 'A', 'Manjiri', 0),
(378, 5, 95, 'B', 'Malika', 0),
(379, 5, 95, 'C', 'Manju', 0),
(380, 5, 95, 'D', 'Manjulika', 1),
(381, 5, 96, 'A', 'Rapeist', 0),
(382, 5, 96, 'B', 'Drugist', 0),
(383, 5, 96, 'C', 'Murderer', 0),
(384, 5, 96, 'D', 'Terrorist', 1),
(385, 5, 97, 'A', 'Teleportation', 0),
(386, 5, 97, 'B', 'Invisibility', 0),
(387, 5, 97, 'C', 'Reading Minds', 1),
(388, 5, 97, 'D', 'Immortality', 0),
(389, 5, 98, 'A', 'Yash', 0),
(390, 5, 98, 'B', 'Sanjay Dutt', 1),
(391, 5, 98, 'C', 'Prakash Raj', 0),
(392, 5, 98, 'D', 'Achyuth Kumar', 0),
(393, 5, 99, 'A', 'Shivgadh', 1),
(394, 5, 99, 'B', 'Raipur', 0),
(395, 5, 99, 'C', 'Raigadh', 0),
(396, 5, 99, 'D', 'Nandanpur', 0),
(397, 5, 100, 'A', 'Srivalli', 0),
(398, 5, 100, 'B', 'Red Sandal Wood', 1),
(399, 5, 100, 'C', 'Respect', 0),
(400, 5, 100, 'D', 'Swag', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'Technology'),
(2, 'History'),
(3, 'CEO & Brand Ambassador'),
(4, 'Companies Name Abbreviations'),
(5, 'Bollywood Movie Storyline');

-- --------------------------------------------------------

--
-- Table structure for table `quebank`
--

CREATE TABLE `quebank` (
  `id` int(5) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quebank`
--

INSERT INTO `quebank` (`id`, `cat_id`, `question`) VALUES
(1, 1, 'Which technology is used to make telephone calls over the Internet?'),
(2, 1, 'Which tech buzzword is closely releated to Aritifical Intelligence?'),
(3, 1, 'How many bits make a byte?'),
(4, 1, 'The first search engine on internet is'),
(5, 1, 'How much number of bits used in IPv4 address?'),
(6, 1, 'Which is the first web browser invented?'),
(7, 1, 'Firewall in computer used for'),
(8, 1, 'Number of layers in OSI model'),
(9, 1, 'Headquater of Microsoft is located at'),
(10, 1, '.gif extension is used for'),
(11, 1, 'Which protocol is used send to e-mail?'),
(12, 1, 'A folder in windows computer can’t be made with the name'),
(13, 1, 'Which key combination is used to minimize all open windows and displays in the screen?'),
(14, 1, 'Which company first developed Java programming language?'),
(15, 1, 'Which protocol is used to receive e-mail?'),
(16, 1, 'In computer world, Trojan refers to'),
(17, 1, '1024 GigaByte is equals to'),
(18, 1, 'What technology is used to record cryptocurrency transactions?'),
(19, 1, 'The number of bits used by IPv6 address is'),
(20, 1, 'First hard disk of computer was introduced by'),
(21, 2, 'The Mughal Empire reached its peak under the rule of which emperor?'),
(22, 2, 'Who was the first emperor of the Maurya Empire?'),
(23, 2, 'In which anicient empire did famous poet Tenali Ramakrishna lived?'),
(24, 2, 'Who discovered India?'),
(25, 2, 'Who was the last governor general of India?'),
(26, 2, 'To which dynasty famous ruler Maharana Pratap belongs?'),
(27, 2, 'Who is the founder of mughal dynasty in India?'),
(28, 2, 'Who stole Koh-i-Noor from India?'),
(29, 2, 'What implemented subsidiary alliance policy?'),
(30, 2, 'The first railway line between bombay to thane was established by?'),
(31, 2, 'Whose regin is considered as golden age of mughal empire?'),
(32, 2, 'Who is considered as the founder of muslim rule in India?'),
(33, 2, 'Who built dhai din ki jhopdi?'),
(34, 2, 'Buddhist literatures are written in which language?'),
(35, 2, 'Which of the following is oldest veda?'),
(36, 2, 'To break which law Gandhiji performed dandi march?'),
(37, 2, 'Who gave Simon Go Back slogan?'),
(38, 2, 'Revenge of Jallianwala Bagh Massacre was completed by'),
(39, 2, 'Non-Cooperation movement started by'),
(40, 2, ' Who defeated Mohammad Ghori in first battle of tarain?'),
(41, 3, 'Who is the CEO of Tesla?'),
(42, 3, 'Who is the CEO of Meta?'),
(43, 3, 'Who is the CEO of Microsoft?'),
(44, 3, 'Who is the CEO of Google?'),
(45, 3, 'Who is the CEO of IBM?'),
(46, 3, 'Who is the CEO of Apple?'),
(47, 3, 'Who is the CEO of Amazon?'),
(48, 3, 'Who is the CEO of Alibaba?'),
(49, 3, 'Who is the CEO of Nvidia?'),
(50, 3, 'Who is the CEO of Adobe?'),
(51, 3, 'Who is the Brand Ambassador of Rado?'),
(52, 3, 'Who is the Brand Ambassador of Hyundai?'),
(53, 3, 'Who is the Brand Ambassador of Nykaa?'),
(54, 3, 'Who is the Brand Ambassador of AJIO?'),
(55, 3, 'Who is the Brand Ambassador of Louis Vuitton?'),
(56, 3, 'Who is the Brand Ambassador of MRF tyres?'),
(57, 3, 'Who is the Brand Ambassador of Kalyan Jewellers?'),
(58, 3, 'Who is the Brand Ambassador of Vimal Pan Masala?'),
(59, 3, 'Who is the Brand Ambassador of BATA?'),
(60, 3, 'Who is the Brand Ambassador of Indigo Paints?'),
(61, 4, 'IBM stands for'),
(62, 4, 'SAP stands for'),
(63, 4, 'HP stands for'),
(64, 4, 'WIPRO stands for'),
(65, 4, 'TCS stands for'),
(66, 4, 'AT & T stands for'),
(67, 4, 'L&T stands for'),
(68, 4, 'IRCTC stands for'),
(69, 4, 'ICICI stands for'),
(70, 4, 'IOCL stands for'),
(71, 4, 'HDFC stands for'),
(72, 4, 'CNN stands for'),
(73, 4, 'INTEL stands for'),
(74, 4, 'MRF stands for'),
(75, 4, 'AMUL stands for'),
(76, 4, 'PVR stands for'),
(77, 4, 'NASA stands for'),
(78, 4, 'CISCO stands for'),
(79, 4, 'IMDb stands for'),
(80, 4, 'BMW stands for'),
(81, 5, 'In M. S. Dhoni The Untold Story, Disha Patani played role of'),
(82, 5, 'Who told Kattapa to kill Bahubali?'),
(83, 5, 'Before joining wrestling, what work did Sultan used to do?'),
(84, 5, 'What is the profession of Shah Rukh Khan in Chennai Express?'),
(85, 5, 'What is the full name of Babu bhai in Hera Pheri?'),
(86, 5, 'What is the name of Akshay Kumar in Khiladi 786?'),
(87, 5, 'On which date did Vijay & his family gone to panji according to witnesses in Drishyam?'),
(88, 5, 'At the beggining, According to pavan munni is of which cast?'),
(89, 5, 'What is the favourite hobby of Majnu Bhai in Welcome?'),
(90, 5, 'RRR stands for'),
(91, 5, 'In Phir Hera Pheri kachra seth offers how much ruppes for shoes?'),
(92, 5, 'According to driver 10 crore ruppes are under which shaped tree?'),
(93, 5, 'With which person did Silencer has to sign Multi-Million deal?'),
(94, 5, 'In Oh My God, Kanji Lalji Mehta has shop of'),
(95, 5, 'According to people, Whose ghost is inside Avni in Bhool Bhulaiya?'),
(96, 5, 'Which alligation is on Sanjay Dutt in Sanju?'),
(97, 5, 'PK has ability to'),
(98, 5, 'Character of Adheera in KGF Chapter-2 is played by'),
(99, 5, 'Bajiro Singham belongs to'),
(100, 5, 'For which thing did Pushparaj said Jhukega Nahi Sala?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ansbank`
--
ALTER TABLE `ansbank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CAT_ID` (`cat_id`),
  ADD KEY `FK_QUE_ID` (`que_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quebank`
--
ALTER TABLE `quebank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CATEGORY_ID` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ansbank`
--
ALTER TABLE `ansbank`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quebank`
--
ALTER TABLE `quebank`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ansbank`
--
ALTER TABLE `ansbank`
  ADD CONSTRAINT `FK_CAT_ID` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_QUE_ID` FOREIGN KEY (`que_id`) REFERENCES `quebank` (`id`);

--
-- Constraints for table `quebank`
--
ALTER TABLE `quebank`
  ADD CONSTRAINT `FK_CATEGORY_ID` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
