-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 10:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Accounting'),
(2, 'Auditing'),
(3, 'Banking and Financial Services'),
(4, 'CEO and General Management'),
(5, 'Community and Social Devt'),
(6, 'Creative and Design'),
(7, 'Education and Training'),
(8, 'Engineering and Construction'),
(9, 'Farming and Agribusiness'),
(10, 'Healthcare and Pharmaceutical'),
(11, 'HR & Administration'),
(12, 'IT and Telecoms'),
(13, 'Legal'),
(14, 'Manufacturing'),
(15, 'Marketing,Media and Brand'),
(16, 'Mining and Natural Resources'),
(17, 'Project & Programme Mngmnt'),
(18, 'Research,Science and Biotech'),
(19, 'Security'),
(20, 'Strategy and Consulting'),
(21, 'Tourism and Travel'),
(22, 'Trades and Services'),
(23, 'Transport and Logistics'),
(24, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('0126566374', 'Software Developer', 'Mumbai', 'India', 'IT and Telecoms', 'Full-time', '2 Years', 'Google seeks Software Developers to design and implement innovative software solutions, contributing to projects spanning diverse domains. Collaboration with cross-functional teams ensures the creation of scalable, reliable products with global impact.<br>', '<p><br></p><ol><li>Develop high-quality software adhering to coding standards, collaborating closely with product managers and engineers.</li><li>Conduct code reviews, maintain clean and efficient codebases, and actively participate in the full software development lifecycle.</li></ol>', '<ol><li>Bachelor\'s degree in computer science or related field, with demonstrated experience in software development.</li><li>Proficiency in programming languages like Java, Python, or C++, along with strong problem-solving skills and the ability to work in a dynamic, fast-paced environment.</li></ol>', 'CM590392666', 'April 26, 2024', '31/05/2024', 12),
('5462556030', 'Animator', 'Pune', 'India', 'Creative and Design', 'Freelance', '2 Years', 'Google seeks Animators to create captivating and visually stunning animations for various projects, contributing to the enhancement of user experiences across platforms. Collaboration with multidisciplinary teams ensures the integration of animation into interactive products and storytelling mediums.<br>', '<ol><li>Develop compelling animations that align with project goals and design aesthetics, collaborating with designers and engineers to ensure seamless integration.</li><li>Stay updated on industry trends and techniques, while adhering to brand guidelines and delivering high-quality animations that engage and delight users.</li></ol>', '<ol><li>Bachelor\'s degree in Animation, Design, or related field, with a strong portfolio showcasing proficiency in animation principles and techniques.</li><li>Proficiency in animation software such as Adobe After Effects, Maya, or Blender, coupled with excellent communication skills and the ability to work.</li></ol>', 'CM590392666', 'April 26, 2024', '31/05/2024', 13),
('8136881624', 'Data Analyst', 'Mumbai', 'India', 'Other', 'Part-time', '3 Years', 'As a Data Analyst at Google, you\'ll analyze large datasets to derive insights and inform business decisions, collaborating with cross-functional teams to drive data-driven strategies and solutions.<br>', '<ol><li>Perform data cleaning, transformation, and statistical analysis to identify trends and patterns, presenting findings to stakeholders and recommending actionable insights.</li><li>Develop and maintain data models, dashboards, and visualizations using tools like SQL, Python, or R, while ensuring data accuracy, integrity, and privacy compliance.</li></ol>', '<ol><li>Bachelor\'s degree in Computer Science, Statistics, Economics, or related field, with demonstrated experience in data analysis and proficiency in SQL and statistical analysis tools.</li><li>Strong analytical and problem-solving skills, with the ability to communicate complex findings to non-technical stakeholders effectively.</li></ol>', 'CM773682380', 'April 26, 2024', '25/05/2024', 14),
('4307413617', 'Product Management', 'Mumbai', 'India', 'Manufacturing', 'Full-time', '2 Years', 'As a Product Manager at Amazon, you\'ll drive the strategy, development, and launch of products and features, collaborating with cross-functional teams to meet customer needs and business objectives.<br>', '<ol><li>Define product vision, roadmap, and feature prioritization, leveraging data and customer insights to guide decision-making and drive product innovation.</li><li>Lead the end-to-end product lifecycle, from concept to delivery, while effectively communicating with stakeholders and managing dependencies.</li></ol>', '<ol><li>Bachelor\'s degree in business, Computer Science, Engineering, or related field, with demonstrated experience in product management or related roles.</li><li>Strong analytical skills, strategic thinking, and customer-centric mindset, coupled with excellent communication and project management abilities.</li></ol>', 'CM773682380', 'April 26, 2024', '18/05/2025', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext DEFAULT NULL,
  `avatar` longblob DEFAULT NULL,
  `services` longtext DEFAULT NULL,
  `expertise` longtext DEFAULT NULL,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Google', '', '-', '-', '-', '1998', 'sahil@gmail.com', '-', 'Computer Software', 'Mumbai', 'Goregaon', '400104', 'India', '9619519031', 'Google is a multinational technology company founded in 1998, specializing in internet-related services and products, including search engines, online advertising technologies, cloud computing, software, and hardware.<br>', 0xffd8ffe000104a46494600010100000100010000ffdb0043000b090907090907090909090b0909090909090b090b0b0c0b0b0b0c0d100c110e0d0e0c121912251a1d251d191f1c292916253735361a2a323e2d2930193b2113ffdb0043010708080b090b150b0b152c1d191d2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2c2cffc000110800b400ea03012200021101031101ffc4001b00010002030101000000000000000000000005060104070302ffc4003d10000202010302030309060407000000000001020304051191213106125141617113142223325281a1b11642538293d3243362c134727374b3e1f0ffc4001b01010002030101000000000000000000000005060103040702ffc40031110100020102030409030500000000000000010203041105122106314151225261718191a1b1d11314153242c1e1f0ffda000c03010002110311003f00eb60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001af9799898345991956aaea86cb77d5ca4fb4629756dfa1899dbacb35acda62b58de65b0cd6c9cec0c45be56563d3eddadb21193f845bdff00228baa78ab51cc94ebc372c4c6dda4e0ff00c44d7ace6bb7c172caf3729394a4dca527bb949b726fdedf523f26bab1d291bad1a5ecee4bc7367b72fb23acff00df374c7e25f0da7b3d421fcb55f25ca86c7bd3ade8590fcb56a38ce4fb29cfe4dbf82b36672b1dfb9a235f7f188485bb37836e979dfe1f87644f749a7ba7d535d9af899394606adaae9b24f17226a09eee99ef3a65f183e9c6c5ef46f1161eabb5334a8cd51ddd327bc6cdbbcaa93efef5dd7bfb9db87554c93b774a035dc1b3e9226f1e957ce3fcc270c98075a140000000000000000000000000000000000000001f33946119ce6f68c62e526fd8975654357db56dd59bc630dfe6deb5b7ed6bdfedff00d137acdee30ab1e2fad9f5967fcb1ecbf17fa106507b45c572573469b0cedcbd67dffe93dc330f247ebf8f82a37d1763592aad8ed25d53f6497ac59b181a5eaba9eef0b1a53ad369dd6355d09aeebcf2eefe0996fc6d1f175471965d7e6c7a6c4d24dc5d935de1baebe5fbdea59a10aeb842bae1184211518420946318aec925d098e154beb30466cb1b6ff5f6fb931abe3f3863f4f1d77bf8f942891f056aad6f3cdc283fbb185d34bf9ba7e86a65f8575ec58b9c6bab2a11eafe6b26e697fd39a4f8dce93d01333a2c531d1114ed06b2b6ded3131e5b7e1c6a5f47cde64e2e2da929269c5ae8d34faee5cfc35e1c9c254ea7a8c1c6d4d59878d3e8eaf4b6d5f7beeaf67c7ecd86ed234bc9cdc7cfb71a12c9a3ac65da3297eecac8f66e3fbadf6fd244f8c3a38a5b9ad3bf937ebf8f5b518631e28e5dfbff0011ec000482b20000000000000000000000000000000000000000ad6a9372cdb97b20ab82f828a7feecd27d137e9b9b7a8adb372b7f6cd3e6299a8fb33c6788da6daccb36f5a7eeb6e9e2230d76f285af1295463e3d4bf7611f37be4fab67bf43e60d4a3092ed28c5afc56e7d1ec38695a63ad69dd111b2a9699b4ccc843ebfa9e56978d8f76346a94ecc8554be5a3292f2f9252e8a325e84c159f187fc0617fdeaff00c33243454ae4d452b68de265cba9b4d715a6bde89fdaed6bf8783fd2b7fb83f6bb5afe1e0ff4adfee15edc173fe3b4bea42bff00bbcdeb4ac3fb5dad7f0f07fa56ff0070b8e9b933ccc0c0ca9eca77e3d564d47eca9c97d2db77db73971d23c3f171d17484fbfcd612ebe926e4885e2fa5c387156d8ebb4ee90d066c992f3179dfa2500056d30000000000000000000000000000000000000afeb1538e442ddba5b05d7fd50e8ff2d88d2cf9d8df3aa2508ff991fa756ff797b3f12b2d3ddad9eeb74d6dd535ea797768b47383573923fa6fd7e3e3f5fbac9a0cd17c5159ef85834bc957511aa4feb294a2d37d5c3f75ff00b12273ac8d5eec7ba1f31b3cb3aa49cad493536bbc127d1c7d7d7f3763d3fc53a6e4c630cc7f34bf649b9eee893f58cfd9f8f2cbb706d464b69695d446d68fac782b3a9d669bf736c78edf8dfc76588f0c9c3c2cc8c61958f4df084bcf18dd0534a5b6dba4fda6619589647cd5e45138fac2d8497299a797ade8d8716edccaa5349ed5d0d5b637e9e586fb7e2d13717e4f4a2767cdef48afa531b3e2ed27c378f55b75da7e0c2aaa12b2c94a986d18aefec39ee4db55d91916d34c29aa7649d55571518d75f68c765d37dbbfbc91d635ec9d524ab8c5d3870979a356fbcac6bb4ad6ba7c1765efee4426593816a29966dbde66de53e5e70af6ab518f2db97147486542cb655d55a6ecba70a6b4bdb3b1a82fd4eaf8f4c71e8c7a21f629aaba63f08454514af0a69b2c8ca7a8db1fa8c494a146fdacc86b6725ee82fcdffa4bd7434f1bd4464c918a3fb7bfde91e1d8a6b49bcf8fd80010294000000000000000000e070000e070000e070000e070000e07000afebfa5e5e4d16db81b2b9f5bea5d257436eaa12edbfafafafad8381b7c0d19f4f8f3c457246fb75f8b16de6b358998de36e8e42d4a2e519271945b8ca324e328c977524faee60e97a8e87a66a7bceeafc97edb2be96a36ff0037b1af8a656727c1fa956dbc5c8c7be1ec56f9a9b3e1da51fcd1c97d3dabddd558cdc3b3639f47ac2b3b2f45c2324b3f0df88d3dbe63bfbe37e3b5f9ccf6a7c2be20b5fd3af1a85eb6dea4d7f2d49fea6a8c579f072469734cedc93f241929a3e8b97abd919af35583197d6e46df6f6ef0a37eefd5f65f1e859307c23a7d2e3667592cb9a69fc9b5f278e9fbe09b93fc5fe059a3084231842318c62946318ada314ba2492e876e9f1df15e3244ed31e494d370cb6fcd9be4f2c7c7a3169a71e8ae35d34c542b847b462bff00ba9ec381c1d533333bca7a2368da00381c0640381c000381c000381c000381c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000e070000000000000000000000000000000000000000000000000000000000000001ffd9, 'Google offers a wide range of services, including its flagship search engine, advertising solutions through Google Ads, cloud computing services via Google Cloud Platform, productivity tools like Gmail and Google Workspace, and consumer products like Android, YouTube, and Google Maps.<br>', 'Google excels in search algorithms, data analytics, artificial intelligence, and machine learning, powering its various services. Additionally, it leads in cloud infrastructure, offering scalable and secure computing solutions for businesses worldwide.<br>', '1-10', '26-04-2024 10:04 AM [EAT +03:00]', 'employer', 'google.com', 'db9f09d11cdb245692224cf6ff418209', 'CM590392666'),
('Amazon', '', '-', '-', '-', '-', 'dip@gmail.com', '-', 'E-commerce', '-', '-', '-', '-', '-', NULL, 0xffd8ffe000104a46494600010101000000000000ffe1002e4578696600004d4d002a0000000800024000000300000001003b000040010001000000010000000000000000ffdb0043000a07070907060a0908090b0b0a0c0f19100f0e0e0f1e161712192420262523202322282d3930282a362b2223324432363b3d4040402630464b453e4a393f403dffdb0043010b0b0b0f0d0f1d10101d3d2923293d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3dffc0001108016301da03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f19a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a72233b05504b13c0039340094575ba3fc3ad5b520b25c85b284f4328f9cfd17fc715d969df0df45b3c1b8596f241d4c8db57f21fd735c75b1f46968dddf91d54f09567d2c79062ac4561773f30dacf27fb91935ef16ba4e9f6400b5b1b68b1dd6319fceade48e871f4ae2966ebecc7f13a965cfac8f01fec5d4ff00e81f77ff007e5bfc2a3934dbd88664b3b8403bb46c2be82c9f53464fa9a959bbfe4fc47fd9abf98f9d4820e0820fbd36be83b9d3ecef411756904c0ff7e306b0350f879a1df026285ed243d1a16e3fef93c7f2ade9e6b4dfc49a329e5f35f0bb9e3745767ac7c36d4ac15a4b165bd8876418907fc07bfe19ae3e48de2729229575382ac30457a14ead3aaaf07738e74e74dda486514515a1985145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051456868da4dc6b5a945656ab99243cb1e8a3b93ec286d24db7a21c62e4ec89742d06f35fbe16f6699c72f237dd41ea4ff004ef5eb5e1ef08e9fe1e8c344826bbc7cd7120e7fe03fdd1fafbd5ed1b46b6d0f4d4b3b34c28e5dc8e646f53fe78abf5f398cc7caab7186913dbc361234d272d58514515e69da1451450014514500145145001589e21f0ae9fe218499d0457407c97083e6ff00817f787d7f3adbe9455d3ab2a4d4a0ecc89c2335692b9e0dade8777a0df35ade2e0f5461f75d7d41f4accaf75f126810f88b4b7b670ab3282d0c847dd6ff0003d0d7885c4125b5c490cc85248d8ab29ea08afa7c1e2962217eab73c2c561dd1969b321a28a2bace60a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801457ae7c3ad0974dd17edd2a7fa4de0dc09fe18fb0fc7afe55e63a35836a9ac5a59aff00cb6915491d877fd335ef71c6b1aaa200a8a02aa8ec0715e566b59c60a9aebbfa1e8e5f494a4e6fa0ea28a2be7cf6028a2abdf5f41a6594b75752048625dcc7bfb01ea4f4a718b93518eec52928abb2c74c9ec0727d2b1afbc5fa1e9ec527d4612e3aac59723f2af31f11f8cafb5e95e35736f679f961438c8ff68f73fa5737d4d7b5432956bd57af647995730b3b411ed3178ffc3d3305fb71427bbc4c07f2adcb5bab6bd844d693c73c67f8a360c3f4af9eaaf697ac5e68f76b71633b4720ea3b30f423b8ad2ae530b7b8da64433095fdf5a1efb9a3a564f86f5e8bc43a4c7768024a0ec96307eeb0fe87ad6b1e95e1ce12a727192b347ab09a9c54905145150505794fc4ed2c5a6bb1dea2e12ed32dfefaf07f31835eaddeb8cf8a16a25f0dc33e3e682e073ecc083fa815df975470ae9747a1c98d829526fb1e4d451457d31e08514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401d5fc39f27fe12e80ccca1823f9793d5b1d3eb8cd7b0639af9dd1da360ca4ab0e411dab6edfc67af5ba811ea7390381bc87fe75e6e37032af3528bb6963bf0b8b5463cad1edd4579141f12f5d8b1e635b4c3fdb8b1fcb15a30fc57b918fb469b03fa9490aff003cd79b2caebadacced58fa4fc8f4caf35f8a5ab33dcdb6971b1088be7483d58f03f2193f8d5d5f8ab67e59274d9c498e17cc18cfd71d2bcfb57d527d63539af6e08f3256ce07451d80f602bab0182a94eaf3d45b6c618bc54270e583dca3451457b479414514500779f0aef0c7aade5992764b0ef03dd4ff00831af50ed5e41f0d491e2e8fde1907e95ebe2be73358a55eebaa3dbc036e9598514515e69dc15cdfc418f7f836f3fd928dff008f0ae92b03c75ff226ea1feeaffe842ba30aed5a1ea635f5a52f43c4a8a28afad3e7028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28c5002d256f693e0cd675701e0b568e13d259be45fd793f866bacb1f85318c1d4351663dd604fea7fc2b9eae2e8d3f8a5a9bc30d567aa479ad15ed36be00f0fdae09b369d87796427f41815ab6fa2e9b698fb3e9f691e3fbb10cd71cb36a4be14d9d31cba6f7763c1e2b49e6ff530cb27fb884d5d8bc3babcdfeaf4cbc6ff00b62dfe15ef00051850147a014b83eb583cddf487e26cb2d5d64799f813c39aae9be224babdb19608446ea59c0182457a65260d2f4af3713887889f3356d2c76d0a2a8c79530a28a2b9cd82b9ff001dff00c89ba87d13ff004215d0573fe3cff9136ffe89ff00a10adf0dfc687aa32aff00c397a1e27451457d71f361451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145002d1495d5f837c20fe20b837175b92c223f311c190ff00747f53dbeb5152a469c5ca4f445d3839c946252f0f784eff00c452e604f2ad94e1e771f28f61ea7d857a7e8be0cd27440ae908b8b81ff2da61b88fa0e83f9fbd6dc10456b02416f1ac5120c2a28c002a4c57cee271f52b36a2ec8f6a860e14d5deac28a28af3cec0a28a6bc8b1a17765441d598e00a7b83761d45635cf8bb42b42449aa5b923a88c97fe559f27c47f0fa749e77ff7613fd6b7585ad2d545fdc64ebd35bc91d4d1d2b9fd1fc67a5eb97e2cecfed1e6b02c0ba05181cfad74159d4a53a6ed3566542719abc5dc28a28accb0ae7fc79ff226ea1f44ff00d0857415cff8f3fe44dd43e89ffa10adf0dfc687aafcccabff000e5e8789d14515f5c7cd8514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401a1a2e972eb5ab5bd943c34ad827fbabdcfe0326bdd6c2c60d36ca1b5b54090c4bb547afa9fa9eb5c37c2cd282dbdd6a6ebf331f26327b01cb7f415e81ed5f3f99d773a9ecd6cbf33d9c05151873bdd8514515e51e8075a28e95cff8cf5f3a0e86cf09c5d4e7cb84f75f56fc07ea45694a9bab3508eec8a93508b93e851f15f8ea0d0d9ed2c956e2f470c49ca45f5f53edf9fa57996a9ae6a1ac49befeea497d149c2afd14702a8b3b3b96624b1e4927934dafa8c3e169d0564b5ee7835b113aaf57a099a28a2ba4e73acf869ff23747ff005ca4fe55ec02bc87e1a0cf8b90fa42e7f4af5e15f3b9aff197a1ed65ff00c37ea145145798778573fe3cff00913750fa27fe842ba0ae7fc79ff226ea1f44ff00d0856f86fe343d51957fe1cbd0f13a28a2beb8f9b0a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a075a00f71f075a8b2f09e9d18182d1798df5639fea2b6c555d31047a55920e8b6f18ff00c7455aaf8faf272a8df76cfa5a4ad04bc828a28ac8d02bcb3e295db49addadae7e5860dd8f7627fa015ea75e47f13908f156e3d1edd08fd47f4af4b2a49d7bbe88e2c7b6a97cce3e8a28afa33c30a28a2803b9f8596c64d76eae31c456f8cfbb30ff00035ea63a5721f0df4a363e1f6b9917125e36e191fc0381fd4fe35d7f7af98cc2a29d776e9a1efe0e1c9495fa8514515c275056078e813e0dd43fdd43ff008f0adfacdf11da35f787350b751977818a8f5239fe95b61da5562df468ceb26e0d791e0b451457d79f341451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500140eb451401f40691209b46b190746b78cff00e3a2ae560781af45ef846c8e7e6894c4dedb4f1fa62b7cd7c7d78b8d5947b367d2d27cd04fc828a28ac8d00d701f14b4a796ded7528949116629703a03c83f9e47e22bbfa8ae6de2bcb792dee2312452295753dc57461abfb1a8a7dbf231af4bdac1c4f9e692bb5d7be1cdfd8ccf2698a6f2d89e157fd628f423bfd45738340d55a4f2c69979bfd3c96ff0afa8a75e9d45cd168f06746717668cefc6b73c2be1e93c43ab242030b68c869dc7f0afa7d4f4ad5d1be1c6a77d22b6a005941df7f2e7e8bdbf1c57a7695a4da68b64b6d6316c41c927ab1f527bd71e33308538b8c1ddfe474e1f0729b4e6ac8b51c6b146b1c6a1634015540c600a751457ce5ee7b695828a28a4014514500789f8cb426d0b5c9635522de626584ffb27b7e078ae7ebdd7c4de1f87c45a5b5b390932fcd0c847dd6ff03d2bc4aeed26b1bb96dae10a4b1315753d88afa8c0e2557a7aeeb73c1c5d074a775b32bd14515da7205145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401e83f0bb5858aeee34b95b0261e64593fc43a8fc473f857a5e73c57cf369732d95d45736ee5258983ab0ec457b7f86fc416fe21d316e2321665004d167ee37f81ea0d7859a619a97b58edd4f5f035d35ecdf435e8a28af1cf4828a28a0028e7d4d145001451450014c5963691e35742e98dca0f2b9e99f4ae63c5de3483418dadad0acda830c63a88bddbdfdbf3af3ef0f78a2e749d7cdf4f23cc939c5c82dcb83d4fd475fd2bd1a197d4a94dcde9d97738eae32109a8efdcf6ba2a38278eea08e786412452286561d083520af3da69d99d69dd5d0519a0d457373059dbbcf732ac5120cb3b1e0509393b206d257648ecb1ab3bb2aa28cb3138007f85789f8cb51b6d57c4d737367cc2d850d8c6fc0c67f1c55ff1778da6d75dad6cf743a7a9fbbd1a5f76ff000ae4abe8b2fc1ba379cb77d0f1b1989553dd8ec84a28a2bd238028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a005abfa46b177a25eadd594a5241c11d987a11dc567d2d269356686a4e2ee8f66f0f78eb4ed6916295c5a5e1eb1c870ac7fd963d7e879fad74b5f3a7435b5a678b758d2405b5be93cb1d2393e75fc8f4fc2bc9af95464ef49dbc8f4a8e60d2b5447b8f34735e5b6ff15352418b8b2b597dc6e53fceacff00c2d99bfe817167febb1ff0ae17966213d126752c751ee7a4f145797cbf156fd81f2ac2d50f62c59b1fcab2eefe226bf74085ba5801ed0c607ebd6ae395d67f15912f1f496da9eb77da85ae9b019af6e238221fc4e719fa7a9fa579ef88fe24bcc1edb430d121e1ae5c618ffba3b7d4f3f4ae1ae6f2e2f66325d4f24d21ead23163fad419c57a387cb69d27796aff00038ab63a73568e88577691cb312cc4e4927ad368a2bd1384ecfc13e323a2b8b1d4199ac643f2b753093dc7b1ee3f1af568dd648d6489d5e361b9594e411eded5f3bf7adcd23c61abe89079169723c9ea23914305fa67a7e15e6e332e559f3c347f99df86c63a6b965aa3d8f55d5ad346b26babe94220fbaa3ef39f403bd78ff89bc5779e22b9f9dbcab5427cb801c81ee7d4fbfe559fab6b57dad5d79f7f3995c0c28e8147a01daa855e13011a1ef3d64462316eae8b442514515de71851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514f8e29256db1a331f4519abb1e85aa4a329a7ddb0f510b7f8526d2ea528b7b233e8ad07d03558c65f4ebb03de16ff0aa72412c2db658dd1bd1948342927b30716b74474514532428a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00b7a658bea7a95bd946ea8f3b840cc700135d26b7f0ef53d2a3335b117b0afde3129dcbff0001ee3e99ae4d58a3065243039047515e9be0ff001f2dd08ec7599024ff00763b92787f66f43efdeb97133ad0b4e9aba5ba3a70f1a53bc67a37b33cc48209041c8a4af6dd77c1fa56b9b9e68bc8b93ff2de2e09fa8e8df8fe75e75ad780756d27749127daedc73e6423903dd7a8fd6a6863a956d2f67d98eae12a53d6d7472d452952a482304763495d87285145140051451400514514005145140051451400514514005145140051451400514514005145140051451401d0f87bc1fa8f88183c4822b5070d3c9c2fe1fde3f4af42d2be1f68da72869a26bd9475698fcbf828e3f3cd71769f11f53b1d320b3b7b7b4558102062849207b6719a866f887e209beedda45ff5ce25ff000af3abd3c5d595a2d2477529e1e9a4dabb3d7ededa0b540b6f0c5128e82340bfcaa4c9f535e20fe35f103f5d52e3f0207f2a44f19ebf1b65754b8fc483fceb8de5555eae5f99d2b30a6b647b86e3eb51cf6f0ddc652e618e642395914303f9d79ef84bc7b7d79aac161a9ec9967608b2050ac1bb671c11dabd1b15c15e854c34ad2dfba3ae9558568dd1e3ff0010744b6d1b5988d9462282e23de230721581c1c7b74ae4fad773f15270fae5ac03fe59dbe7f327fc2b86afa4c24a52a3172dec789884955696c14514574180514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401db7853c7d369412cf53dd3d90e15fabc5fe23dbf2af4fb3bc82f6d92e6d2659617fbae87fcf3ed5f3dd6b685e22bfd02e7ccb297e463f3c4fca3fd47f51cd79d8bcbe356f2868ceec3e31d3f767aa3d7358f0a693ad65aead42cc7fe5b45f23fff005ff1cd70dabfc31beb6dd2699325dc639d8df238fe87f4fa5763e1df19e9daf058b70b6bc2398243d7fdd3dfe9d7daba1af2e389c4e15f2cbf13bdd1a3885cc8f9f2f34fbad3e6315e5bcb0483f864520d57afa1ae6d60bb84c5730c73467aac8a187eb5cc6a5f0e346bdcb5b896ce43ff003ccee5ff00be4ff422bd0a39b5396935638ea65f35f0bb9e3f4b5d9ea1f0c755b6dcd672437683a007631fc0ff008d7337da36a1a6b1179673c38eec840fcfa57a14ebd3a9f0b4ce39d19c3e2451a28a2b5320a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a5da6801296b56c3c33ac6a7836ba7cec87f8d976afe678aea74ef85975210da95ec502f74886f6fcfa7f3ac6a6268d3f8e48da142a4fe147024735a7a5f87754d6180b1b396453d5cf083fe0478af58d33c0fa2699865b417120fe3b83bff4e9fa56f801542a80140e0018c579d57368ad29abf99db4f2f7bcd9e7ba5fc2c5d81f56bd3b8ffcb3b71d3fe047fa0ae6fc65e194f0d5fc51c1334b04e859376372e0e083ebf5af47f11f8cac3c3c8d19613de638810f43fed1edfcfdabc9359d6eef5dbe6babd70ce7855030a83d00f4ad3053c4d4973d4f87b118a8d0847963b97fc116cd73e2fd3d4038493cc3f4519fe95ed99af34f859a7192f6f35061f2c682243eedc9fd07eb5dd6bfaa2e8da25dde92372211183ddcf03f5e7f0ae2cc65ed710a11dd597de74e092a745c99e49e34bf1a878aef6456ca23f94a7d978fe62b0295999dd99892c4e493de9b5ef538a84547b1e44e4e52720a28a2a890a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801c18ab0209047715d8e81f11afb4c5482fc1bdb75e0163fbc51ecddfe86b8ca2b3a94a1515a6ae690a92a6ef167bce91e22d375d8c3585cab3e32d137caebf87f519ad3e3bd7cef1caf0c81e376475390ca704575da37c48d4ec36c77eab7d08eee7120ff008177fc735e3d7ca9ad693f933d2a59827a5447ad52100a9520153d41e86b034af1be8bab6156e45bca7fe59cff002fe47a1adf072a08e41e84739af2ea52a949da49a677c2a42a2f75dccbbdf0c68da86e371a6db963d591761fcc5615dfc2fd226c9b69ae6dcfa6430fd7fc6bb2e68e6ae18bad0f864c99e1e9cb74799dcfc29ba5c9b5d460907612215fe59acab8f86fafc2095821980ff9e728feb8af61c0a315d51cd2badecfd4e7780a4f6d0f0d9bc21aec19dfa5dcf1fdd5ddfcaa9c9a3ea3167ccb0ba4c7f7a261fd2bdfa8ddee6b68e6f2eb15f799bcba3d19f3c1b6997ef4320faa9a6796dfdd6fcabe8b3cf5e7eb4cf2d3fb8bf955ace3bc3f123fb37fbc7cefe5b1e8adf9548b693bfdd8256fa21afa13cb41d1147d169e38e9c7d2879c7687e21fd9bfde3c062d17529b1e569f76f9e98898ff004abb0f8335f9f1b74b9c67bb80bfcebdc377b9a2a259bcba44b59747ab3c8adfe1a6bb360c8b6f003fdf973ffa0e6b56d7e143920de6a68a3bac5193fa9af48a2b096675decd2f435580a4bcce4acfe1ae876f8330b8b961fdf7da3f215bd65a1e99a7e3ec9616d111fc42304fe679abf473f80eb5cd2c4d6a9bc9b378d1a70d9201ef466b0b56f1968da4e566bb12ca3fe5941f39fd381f8d70fac7c4cd42ef747a6c6b6519e37e77487f1e83f0fceb5a381ad5b5b597766757154a9f5bb3d1755d6f4fd161f32fee562c8caa672edf4515e75e20f88f79a86f834b0d696e78df9fde37e3fc3f87e75c74f712dcccd2cf23caec79673b89fc6a2af630f9753a3acb567995b1b3a9a2d10acccec598924f527bd3696b67c29a50d63c47696af8f2cb6f901eeabc91f8e31f8d77ca4a31727b239629ca49773d57c1ba5ff657866d2265c4b28f3a4e3bb723f21815c57c49f10adf5f26976cf986d8e6520f0d27a7e038fa935d2f8d7c631e8b6ef6764eada8483048ff009623d7ebe83f1af23762ec5989249c927bd79581c3ca751e22a2df63d0c5565082a30e9b8ca28a2bd63cd0a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28016b4f4df11eaba463ec57b2c6a3f837657fef93c565d149c54b46ae5464e2ee99e81a77c54b94c2ea3631cc3bbc4db0fe5d3f9574d65f10b41bcc07b87b563da64381f88c8af19a2b8ea65d427d2de874c31b563d6e7d076ba85a5e806d6ee09c1e9e5c818d59e47515f3aabb210549047706b4ad7c47abd9e3ecfa95d201d079848fcab8a7947f2cbef3aa398ff323de28e2bc6a0f887e2083ade2cbff005d2253fd2af45f14b575ff00596f6727d5187f235cf2caab2d9a66ab1f49ef747abf34735e629f15ef47ded36d8fd1d853ff00e16c5cff00d0321ffbfa7fc2a1e5988ecbef2febd47b9e974579937c57bcfe1d36dc1f776355a5f8a5abb7fabb6b38ff00e00c7f99a6b2cc43dd25f313c7d2ee7ab51cd78ddc7c44f104d902ed2207fe79c4a3f98acbb9f11eaf7bff001f1a95d38f4f3081f90ad6394d47f1348cde6305b23dbeeb51b4b352d757504207fcf49003fad615f7c41d06cb216e5ee5c7f0c284fea702bc6d9998e598927b9a6d7553ca69af89b6613cc66fe1563d0b50f8a93b12ba6d8c710ecf336f3f90e3f9d729a9f89f56d5b22f2f65743fc00ed5fc8715934577d3c352a5f0c51c93c4549fc4c4a28a2b6310a28a2800a7c52c90c8b244ed1b8e8ca7047e34ca2801ceecec5998b313c927934da28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a009ee940bc9c0000121000edc9a828a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800ae8ed6d606b4859a1424a292768f4a28a00ffd9, NULL, NULL, '-', '26-04-2024 11:04 AM [EAT +03:00]', 'employer', '-', '75c39731297cd60de6f209b8a611604e', 'CM773682380'),
('Mohit ', 'Kohli', 'Male', '01', '01', '2000', 'mohit@gmail.com', 'B.Tech', 'IT', 'Mumbai', 'Vadala', '400031', 'India', '9326747269', 'As an IT graduate, I bring a solid foundation in computer science and a passion for technology. Eager to apply my skills in a dynamic workplace, I am seeking opportunities in software development, data analysis, or IT support roles. With a strong aptitude for problem-solving and a commitment to continuous learning, I am ready to contribute to a team and make a meaningful impact in the field of technology.<br>', NULL, NULL, NULL, '-', '26-04-2024 11:04 AM [EAT +03:00]', 'employee', '-', '48418969a4071bf494272463b4e6b324', 'EM822380532');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`enc_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
