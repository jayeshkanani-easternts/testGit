-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 05:53 AM
-- Server version: 5.7.42-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easyglue_rosehill_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `a_id` int(15) NOT NULL,
  `album_type_id` varchar(20) NOT NULL,
  `a_title` varchar(100) NOT NULL DEFAULT '',
  `a_year` year(4) NOT NULL,
  `a_description` text,
  `position` char(1) NOT NULL DEFAULT 'I',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL DEFAULT '1',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `album_type`
--

CREATE TABLE `album_type` (
  `type_id` int(11) NOT NULL,
  `album_title` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` varchar(20) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_type`
--

INSERT INTO `album_type` (`type_id`, `album_title`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(1, 'album', 'Keyur', '2018-01-27', '0000-00-00', '1', 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

CREATE TABLE `banner_image` (
  `bannerID` int(11) NOT NULL,
  `bannerTitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `banner_image` (`bannerID`, `bannerTitle`, `image`, `mobile_image`, `username`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 'About-Us', '1-About-Us.png', '1-About-us-us-1000x550.jpg', 'Keyur', '2018-08-10', '0000-00-00', '192.168.0.16'),
(2, 'Contact-us', '2-Contact-us.png', '2-Contact-us-1000x550.jpg', 'Keyur', '2018-08-10', '0000-00-00', '192.168.0.16'),
(3, 'FAQ', '3-FAQ.png', '3-Faq-1000x550.jpg', 'Keyur', '2018-08-10', '0000-00-00', '192.168.0.16'),
(4, 'Pricing', '4-pricing.png', '4-pricing 1000x550.jpg', 'Keyur', '2018-08-10', '0000-00-00', '192.168.0.16'),
(5, 'Services', '5-Services.png', '5-Services-1000x550.jpg', 'Keyur', '2018-08-10', '0000-00-00', '192.168.0.16'),
(6, 'Gallery', 'gallery.png', '1-About-us-us-1000x550.jpg', 'Keyur', '2019-01-15', '2019-01-15', '192.168.0.16'),
(7, 'Money Services', '7-money-services.png', '7-money-services-mob.png', 'Keyur', '2019-01-15', '2019-01-15', '192.168.0.16');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `clientTitle` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `file` varchar(255) NOT NULL,
  `clientLink` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_master`
--

CREATE TABLE `contact_master` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `csubject` varchar(100) NOT NULL,
  `cmessage` text NOT NULL,
  `ccontact` varchar(30) DEFAULT '0',
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `new` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_master`
--

INSERT INTO `contact_master` (`cid`, `cname`, `cemail`, `csubject`, `cmessage`, `ccontact`, `cdate`, `new`) VALUES
(61, 'sodir', 'topyp@mailinator.com', 'Dolore delectus des', 'Sed repudiandae nost', '09', '2023-06-29 11:05:25', 0),
(62, 'gozaj', 'qisuki@mailinator.com', 'Rerum consequatur m', 'Autem et quas totam ', '7418529634', '2023-06-29 11:05:51', 0),
(63, 'gusubed', 'zepyjy@mailinator.com', 'Id mollitia dolorum ', 'A exercitation iusto', '2345', '2023-06-29 11:39:22', 0),
(64, 'demidux', 'vicytygyq@mailinator.com', 'Anim vitae mollit en', 'Elit est vel fugia', '1', '2023-06-29 11:46:14', 0),
(65, 'cyjowuka', 'ryfyvasyd@mailinator.com', 'Obcaecati provident', 'Aliquip in sit simi', '2', '2023-06-29 11:48:49', 0),
(66, 'keval ', 'keval.p.easternts@gmail.com', 'testing', 'testing', '734546789', '2023-06-29 11:58:29', 0),
(67, 'qijekupica', 'keval.p.easternts@gmail.com', 'Ad sed necessitatibu', 'Excepteur sunt numqu', '123456789', '2023-06-29 12:24:08', 0),
(68, 'nohifiq', 'hovykypa@mailinator.com', 'Numquam dicta volupt', 'Qui deserunt eum duc', '132454', '2023-06-29 12:25:12', 0),
(69, 'nekoto', 'keval.p.easternts@gmail.com', 'Est itaque enim poss', 'Nostrud consequat N', '123', '2023-06-29 12:28:25', 0),
(70, 'gesaq', 'keval.p.easternts@gmail.com', 'Et voluptatem dolor', 'Et ea quidem incidid', '23', '2023-06-29 12:37:51', 0),
(71, 'vivegylovi', 'keval.p.easternts@gmail.com', 'Repellendus Quisqua', 'Officia culpa ut qui', '12', '2023-06-29 12:40:41', 0),
(55, 'Namrata', 'namrata.easternts@gmail.com', 'test subject', 'this is test message', '7405394738', '2023-06-16 09:03:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_master`
--

CREATE TABLE `content_master` (
  `content_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(150) NOT NULL,
  `description` text,
  `image_id` int(11) NOT NULL,
  `image` text,
  `type` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'E'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_master`
--

INSERT INTO `content_master` (`content_id`, `username`, `createdate`, `modifieddate`, `remote_ip`, `description`, `image_id`, `image`, `type`, `status`) VALUES
(2, '', '2016-09-05', '2017-06-26', '192.168.0.9', 'a:5:{s:4:\"type\";N;s:3:\"url\";N;s:7:\"caption\";N;s:11:\"description\";s:18:\"Under Construction\";s:12:\"redirect_url\";N;}', 0, 'popup_thumb.jpg', 'popup', ''),
(4, 'Keyur', '2017-06-14', '2018-02-10', '192.168.0.12', '<p>The Real Estate (Regulation and Development) Act, 2016 (RERA) will finally give India&rsquo;s real estate sector its first regulator from Monday, May 1, 2016. The act was passed by parliament last year and the Union Ministry of Housing and Urban Poverty Alleviation had given time till May 1, 2017, to formulate and notify rules for the functioning of the regulator. RERA seeks to bring clarity and fair practices that would protect the interests of buyers and also impose penalties on errant builders.</p>\n<p style=\"padding-top: 5px;\">So what is RERA? Here is a look at the real estate regulator and how it will impact the real estate market. According to RERA, each state and Union territory will have its own regulator and set of rules to govern the functioning of the regulator. Centre has drafted the rules for Union territories including the national Capital. While many states are still behind on schedule for notification of RERA rules, many have notified rules and a regulator will start functioning. Some of these states are Haryana, Uttar Pradesh and Maharashtra.</p>\n<p style=\"padding-top: 5px;\">Despite seeing a slump in the past three years, the ticket prices are relatively high and inventories are piling up. Low demand is also contributing to the reduced recovery of investment by developers. These reasons have deterred developers from reducing the ticket prices. RERA seeks to address issues like delays, price, quality of construction, title and other changes.</p>\n<p style=\"padding-top: 5px;\">Delays in projects are the biggest issue faced by buyers. The reasons are many and the impact is huge. Since the last 10 years, many projects have seen delays of up to 7 years. Projects launched after the turn of this decade have faced delays as well. Some have run into obstacles even before a brick was laid. The reasons include diversion of funds to other projects, changes in regulations by authorities, the environment ministry, national green tribunal etc. and other bodies like those involved in infrastructure development and governing transport. In many places, land acquisition becomes an issue. Errant builders often sell projects to investors without the approval of plans, unauthorized increase in FAR, bad quality of construction, projects stuck in litigation etc.</p>', 0, '', 'real_estate_act', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `title` varchar(70) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'E',
  `sortorder` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `epanel_master`
--

CREATE TABLE `epanel_master` (
  `id` int(11) NOT NULL,
  `home_content` text NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `powered_by` varchar(255) NOT NULL,
  `ga_view_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `remote_ip` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epanel_master`
--

INSERT INTO `epanel_master` (`id`, `home_content`, `copyright`, `powered_by`, `ga_view_id`, `username`, `create_date`, `modified_date`, `remote_ip`) VALUES
(1, '<p><span>Eastern Techno Solution (ETS) is headquartered in Surat, Gujarat. An IT Company established by ex- employees of COGNIZANT and INFOSYS.</span><br /><br /><span>It principally focused on</span><span>&nbsp;Customized Software Development, Web Applications</span><span>&nbsp;(which includes Web Designing and Ecommerce Websites),&nbsp;</span><span>Mobile Applications and Training Institute.</span><span>&nbsp;Within 3 years from its inception, ETS has been able to make a mark in Gujarat.</span><br /><br /><span>We are a company with leading specialized professionals whose striking experiences reveal a comprehensible indulgent that industries today are faced with the confrontation of harnessing the eternally changing landscape of a complicated and spirited business world.</span><br /><br /><span>It\'s essential for businesses today to stay on the callous edge of technology to build and implement the tools necessary to compete and succeed taking care of innovation. ETS has showed that with apparent understanding of your business attached to our analytical proficiency; a policy can be forged heartening your company to a whole new plateau of triumph.</span><br /><br /><span>Our all-embracing case of services includes Customized software&rsquo;s</span><span>, Web</span><span>&nbsp;application development and Mobile application development (Android development and iPhone development). ETS sets it a challenge to make finest use of the resources, and the precious business intelligence entrenched in a range of verticals - Insurance, Finance, Hotels &amp; Travel, Healthcare, Retail, Distribution, Government, and Manufacturing etc.</span><br /><span><br /><strong>We as Training Institute</strong></span><br /><span>ETS also offers a wide range of training programs for school as well as college students and IT professionals. It provides high class principles and top priority to deliver best learning know-how by following best business practices projected to help the students to expand valuable newest knowledge and experience in grounding for an innovative, pleasing career in an ever-changing marketplace.</span></p>\r\n<p><span><br /><strong>We as Consultancy Firm</strong><br /><span>ETS is also a consultancy firm that helps college students and IT professionals to be placed in the best IT companies. We have tie- ups with many companies. So the students/ IT Professionals, after attending the corporate training program, maximize their chances of getting placed in the best IT companies. Thus, we are helping the industry by providing IT technocrats.</span></span></p>', 'Eastern Techno Solutions', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', 216843654, 'Keyur', '2015-10-26', '2018-06-09', '60.254.92.198'),
(1, '<p><span>Eastern Techno Solution (ETS) is headquartered in Surat, Gujarat. An IT Company established by ex- employees of COGNIZANT and INFOSYS.</span><br /><br /><span>It principally focused on</span><span>&nbsp;Customized Software Development, Web Applications</span><span>&nbsp;(which includes Web Designing and Ecommerce Websites),&nbsp;</span><span>Mobile Applications and Training Institute.</span><span>&nbsp;Within 3 years from its inception, ETS has been able to make a mark in Gujarat.</span><br /><br /><span>We are a company with leading specialized professionals whose striking experiences reveal a comprehensible indulgent that industries today are faced with the confrontation of harnessing the eternally changing landscape of a complicated and spirited business world.</span><br /><br /><span>It\'s essential for businesses today to stay on the callous edge of technology to build and implement the tools necessary to compete and succeed taking care of innovation. ETS has showed that with apparent understanding of your business attached to our analytical proficiency; a policy can be forged heartening your company to a whole new plateau of triumph.</span><br /><br /><span>Our all-embracing case of services includes Customized software&rsquo;s</span><span>, Web</span><span>&nbsp;application development and Mobile application development (Android development and iPhone development). ETS sets it a challenge to make finest use of the resources, and the precious business intelligence entrenched in a range of verticals - Insurance, Finance, Hotels &amp; Travel, Healthcare, Retail, Distribution, Government, and Manufacturing etc.</span><br /><span><br /><strong>We as Training Institute</strong></span><br /><span>ETS also offers a wide range of training programs for school as well as college students and IT professionals. It provides high class principles and top priority to deliver best learning know-how by following best business practices projected to help the students to expand valuable newest knowledge and experience in grounding for an innovative, pleasing career in an ever-changing marketplace.</span></p>\r\n<p><span><br /><strong>We as Consultancy Firm</strong><br /><span>ETS is also a consultancy firm that helps college students and IT professionals to be placed in the best IT companies. We have tie- ups with many companies. So the students/ IT Professionals, after attending the corporate training program, maximize their chances of getting placed in the best IT companies. Thus, we are helping the industry by providing IT technocrats.</span></span></p>', 'Eastern Techno Solutions', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', 216843654, 'Keyur', '2015-10-26', '2018-06-09', '60.254.92.198');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_Id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `review` text NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int(8) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL,
  `faq_type` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_Id`, `name`, `image`, `review`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`, `faq_type`) VALUES
(1, 'Do you have any Promotions?', NULL, '<p>Our promotions or discounts can vary. Using our loyalty cards are best way to get those automatically.</p>', 'Keyur', '2018-07-17', NULL, 0, 'D', '10.1.1.120', '4'),
(2, 'Can I wash all of my clothes at once?', NULL, '<p>Yes. We have enough washers and dryers to do all of your laundry in one hour. You can sort and clean them in the various machine sizes and loads. Keeping load to the correct level will\nensure your clothes are clean.</p>', 'Keyur', '2018-07-17', NULL, 0, 'D', '10.1.1.120', '4'),
(3, 'Do I need to bring quarters?', NULL, '<p>No. All Washing and Drying machines can be activated using our laundry card similar to a gift card. However, a change machine is available if you prefer to use coins. Our large washing\nmachines are strictly Card activated due to the large amount of coins needed and to make it convenient for you.</p>', 'Keyur', '2018-07-17', NULL, 0, 'D', '10.1.1.120', '4'),
(4, 'Can I have the remaining laundry card balance refunded?', NULL, '<p>No. However, you can reuse the laundry card as many times as you like. There is no laundry card expiration and you can add more funds to the card in dollar increments.</p>', 'Keyur', '2018-07-17', NULL, 0, 'D', '10.1.1.120', '4'),
(16, 'Can I bring my own laundry basket or bag?', NULL, '<p>Yes, you can bring your own laundry basket or bag to transport your clothes conveniently. </p>', 'Keval', '2023-06-06', '2023-06-06', 12, 'E', '10.1.1.120', '4'),
(15, 'Are there any discounts or loyalty programs available?', NULL, '<p>Yes, we offer a loyalty program via the laundry card. For each washing machine you use, you will get 3 credits to use on a dryer (24 minutes). </p>', 'Keval', '2023-06-06', '2023-06-06', 11, 'E', '10.1.1.120', '4'),
(14, 'What if I encounter a problem with one of the machines?', NULL, '<p>If you experience any issues with our machines, please inform our staff immediately, and we will do our best to resolve the problem promptly. </p>', 'Keval', '2023-06-06', '2023-06-06', 10, 'E', '10.1.1.120', '4'),
(12, 'Is there parking available?', NULL, '<p>Yes, we have parking spaces available for our customers. Please make sure to park in designated areas. </p>', 'Keval', '2023-06-06', '2023-06-06', 8, 'E', '10.1.1.120', '4'),
(13, 'Do you have Wi-Fi available?', NULL, '<p>Yes, we provide complimentary Wi-Fi for our customers to use while they wait for their laundry. </p>', 'Keval', '2023-06-06', '2023-06-06', 9, 'E', '10.1.1.120', '4'),
(11, 'Do you offer any additional services, such as dry cleaning or alterations?', NULL, '<p>At this time, we focus primarily on self-service laundry. There is a dry cleaner in the shopping enter who also does alterations.</p>', 'Keval', '2023-06-06', '2023-06-06', 7, 'E', '10.1.1.120', '4'),
(9, 'How long does it take to wash and dry a load of laundry?', NULL, '<p>The time required for washing and drying varies depending on the size of the load and the selected cycle. Typically, it takes about 20-33 minutes for washing and 30-40 minutes for drying. </p>', 'Keval', '2023-06-06', '2023-06-06', 5, 'E', '10.1.1.120', '4'),
(10, 'Can I leave my laundry unattended while it\'s washing or drying?', NULL, '<p>While we provide a safe and secure environment, we recommend that you stay in the laundromat while your laundry is being washed or dried. We are not responsible for any lost or mixed laundry. We also during busy times remove laundry from a machine and place it in a cart if you are not there. </p>', 'Keval', '2023-06-06', '2023-06-06', 6, 'E', '10.1.1.120', '4'),
(8, 'Are the machines easy to use?', NULL, '<p>Absolutely! Make the selection on the machine and swipe the laundry card, and our friendly staff is always available to assist you if needed. </p>', 'Keyur', '2023-06-06', '2023-06-06', 4, 'E', '10.1.1.120', '4'),
(7, 'Can I use my credit card or mobile payment to pay for the machines?', NULL, '<p>Yes, please see our attendant and they can help you add value to our laundry card with your credit card. </p>', 'Keyur', '2023-06-06', '2023-06-06', 3, 'E', '10.1.1.120', '4'),
(5, 'How much does it cost to use the machines?', NULL, '<p>The cost of using the machines varies depending on the size of the machine and the type of cycle selected. The prices are clearly displayed on each machine. </p>', 'Keyur', '2023-06-06', '2023-06-06', 1, 'E', '10.1.1.120', '4'),
(6, 'Do I need to bring my own detergent?', NULL, '<p>You are welcome to bring your own detergent, but we also have detergent available for purchase if you prefer. </p>', 'Keyur', '2023-06-06', '2023-06-06', 2, 'E', '10.1.1.120', '4');

-- --------------------------------------------------------

--
-- Table structure for table `faq_master`
--

CREATE TABLE `faq_master` (
  `faq_master_id` int(11) NOT NULL,
  `faq_type` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_master`
--

INSERT INTO `faq_master` (`faq_master_id`, `faq_type`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(4, 'FAQ', 'Keyur', '2017-05-05', '0000-00-00', 1, 'E', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryID` int(11) NOT NULL,
  `productID` int(11) NOT NULL DEFAULT '0',
  `galleryTitle` varchar(100) NOT NULL DEFAULT '',
  `galleryImage` varchar(100) NOT NULL,
  `mobile_galleryImage` varchar(100) NOT NULL,
  `isFront` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date DEFAULT '2016-01-01',
  `modifieddate` date DEFAULT '2016-01-01',
  `remote_ip` varchar(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_master`
--

CREATE TABLE `gallery_master` (
  `image_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `createdate` date NOT NULL DEFAULT '0000-00-00',
  `modifieddate` date NOT NULL DEFAULT '0000-00-00',
  `a_id` int(11) NOT NULL,
  `image_title` varchar(255) NOT NULL DEFAULT '',
  `gallery_image` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `isFront` varchar(100) NOT NULL DEFAULT '',
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_master`
--

INSERT INTO `gallery_master` (`image_id`, `username`, `createdate`, `modifieddate`, `a_id`, `image_title`, `gallery_image`, `sortorder`, `isFront`, `status`, `remote_ip`) VALUES
(1, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'laundromat-entrance-view.webp', 28, '', 'E', ''),
(2, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-2.webp', 1, '', 'D', ''),
(3, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-3.webp', 9, '', 'E', ''),
(4, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-4.webp', 10, '', 'E', ''),
(5, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-5.webp', 4, '', 'E', ''),
(6, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-6.webp', 6, '', 'E', ''),
(10, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-10.webp', 8, '', 'E', ''),
(11, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'rose-hill-11.webp', 5, '', 'E', ''),
(12, '', '2023-06-09', '2023-06-09', 1, 'laundromat-cart', 'laundromat-cart.webp', 14, '', 'E', ''),
(13, '', '2023-06-09', '2023-06-09', 1, 'laundromat-entrance', 'laundromat-entrance.webp', 12, '', 'E', ''),
(14, '', '2023-06-09', '2023-06-09', 1, 'laundromat-mobile-service', 'laundromat-mobile-service.webp', 22, '', 'E', ''),
(15, '', '2023-06-09', '2023-06-09', 1, 'laundromat-night', 'laundromat-night.webp', 26, '', 'E', ''),
(16, '', '2023-06-09', '2023-06-09', 1, 'laundromat-vending-machine', 'laundromat-vending-machine.webp', 21, '', 'E', ''),
(17, '', '2023-06-09', '2023-06-09', 1, 'speed-queen-washing-machine', 'speed-queen-washing-machine.webp', 18, '', 'E', ''),
(18, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'washing-machine.webp', 19, '', 'E', ''),
(19, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'washing-machine-2.webp', 15, '', 'E', ''),
(20, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'washing-machine-3.webp', 27, '', 'E', ''),
(21, '', '2023-06-09', '2023-06-09', 1, 'washing-machine', 'washing-machine-4.webp', 23, '', 'E', ''),
(22, '', '2023-06-09', '2023-06-09', 1, 'washing-supplies\r\n', 'washing-supplies.webp\r\n', 16, '', 'E', ''),
(23, '', '2023-06-09', '2023-06-09', 1, 'bill-changer', 'bill-changer.webp', 17, '', 'E', ''),
(24, '', '2023-06-09', '2023-06-09', 1, 'games-section', 'games-section.webp', 13, '', 'E', ''),
(25, '', '2023-06-09', '2023-06-09', 1, 'games-section', 'games-section-2.webp\r\n', 20, '', 'E', ''),
(26, '', '2023-06-09', '2023-06-09', 1, 'laundromat-1', 'laundromat-1.webp', 11, '', 'E', ''),
(27, '', '2023-06-09', '2023-06-09', 1, 'laundromat-2', 'laundromat-2.webp', 24, '', 'E', ''),
(28, '', '2023-06-09', '2023-06-09', 1, 'laundromat-3', 'laundromat-3.webp', 25, '', 'E', '');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `group_status` char(1) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`group_id`, `group_name`, `group_status`) VALUES
(1, 'Administrator', 'E'),
(2, 'Developer', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `homecontent`
--

CREATE TABLE `homecontent` (
  `content_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `home_content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homecontent`
--

INSERT INTO `homecontent` (`content_id`, `username`, `createdate`, `modifieddate`, `home_content`) VALUES
(1, 'Keyur', '2017-04-05', '2018-05-21', '<div class=\"text-content\">\r\n<p>Studio Elements is all about enhancing the beauty of your home.</p>\r\n</div>\r\n<div class=\"text-content\">\r\n<p>Every artefact @STUDIO ELEMENTS is curated and handpicked from various parts of the world, to brighten the cultural ambience. We encourage various artists &amp; craftsman, by showcasing their products at our studio, thus providing them a platform to build upon their dreams. Our forte being, interior designing, along with our passion for art, makes it an equitable union bringing out the finest designs and artefacts, for one\'s home &amp; commercial place. Studio Elements also offers a robust range of interior design services with unique and flawless finishing touches to all your architectural spaces.</p>\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` text,
  `job_type` varchar(255) NOT NULL,
  `job_time` varchar(255) NOT NULL,
  `job_date` date NOT NULL,
  `job_location` text,
  `job_about` text,
  `job_description` text,
  `job_responsibility` text,
  `job_salary` text,
  `job_contact` text NOT NULL,
  `type` varchar(2) NOT NULL,
  `status` char(1) DEFAULT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_master`
--

CREATE TABLE `job_master` (
  `job_id` int(11) NOT NULL,
  `j_name` varchar(150) NOT NULL,
  `j_email` varchar(50) NOT NULL,
  `jobtitle` text NOT NULL,
  `j_message` varchar(255) DEFAULT NULL,
  `j_resume` varchar(255) NOT NULL,
  `j_contact` varchar(100) DEFAULT NULL,
  `j_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `module_master`
--

CREATE TABLE `module_master` (
  `module_id` int(5) NOT NULL,
  `module_title` varchar(50) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_file` varchar(25) NOT NULL,
  `module_parent` varchar(20) NOT NULL,
  `module_seo_slug` varchar(25) NOT NULL,
  `sortorder` int(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'D',
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `module_controller` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_master`
--

INSERT INTO `module_master` (`module_id`, `module_title`, `module_name`, `module_file`, `module_parent`, `module_seo_slug`, `sortorder`, `status`, `username`, `createdate`, `modifieddate`, `remote_ip`, `module_controller`) VALUES
(1, 'Contact', 'Contact', 'contact', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'contact'),
(2, 'User Management', 'User', 'user', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'user'),
(3, 'User Group Management', 'User Group', 'usergroup', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'user'),
(4, 'Slider Management', 'Slider', 'slider', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'slider'),
(5, 'Permission Management', 'Permission', 'permission', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'permission'),
(6, 'Pages Management', 'Pages', 'pages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(7, 'Page Image Management', 'Page Images', 'pageimages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(8, 'Homecontent Management', 'Homecontent', 'homecontent', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'pages'),
(9, 'Subscription List', 'Subscription List', 'subscription', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'subscription'),
(10, 'Job Data', 'Job Data', 'job', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'job'),
(11, 'epanel', 'epanel', 'epanel', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'settings'),
(12, 'website', 'website', 'website', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'settings'),
(13, 'News', 'News', 'news', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'news'),
(14, 'News Type', 'News Type', 'newsmaster', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'news'),
(15, 'Testimonial', 'Testimonial', 'testimonial', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'testimonial'),
(16, 'Testimonial Type', 'Testimonial Type', 'testimonialtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'testimonial'),
(17, 'Album Type', 'Album Type', 'albumtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(18, 'Album', 'Album', 'album', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(19, 'Gallery', 'Gallery', 'gallery', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'gallery'),
(20, 'Project Type', 'Project Type', 'project_type', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(21, 'Projects', 'Projects', 'projects', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(22, 'Project Floor Plans', 'Project Floor Plans', 'projectfloors', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(23, 'Project Slider Images', 'Project Slider Images', 'projectslider', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(24, 'Project Images', 'Project Images', 'projectimages', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(25, 'Brochure Downloads', 'Brochure Downloads', 'downloads_list', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'downloads_list'),
(26, 'Our Team', 'Our Team', 'team', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'team'),
(27, 'Banners', 'Banners', 'banner', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'banner'),
(28, 'Company', 'Company', 'company', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'projects'),
(29, 'Brochure', 'Brochure', 'brochure', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'brochure'),
(30, 'Home Page Popup', 'Home Page Popup', 'popup', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'popup'),
(33, 'Professional Honours', 'Professional Honours', 'professional', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'aboutus'),
(32, 'Academic Association', 'Academic Association', 'academic', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'aboutus'),
(31, 'Approved List', 'Approved List', 'approvedlist', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'approvedlist'),
(34, 'Client', 'Client', 'client', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'client'),
(35, 'Services', 'Services', 'services', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'services'),
(36, 'Certification', 'Certification', 'certification', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'achievement'),
(38, 'Product', 'Product', 'product', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(39, 'Manage Type', 'Manage Type', 'producttype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(40, 'Manage Project Options', 'Manage Project Options', 'productoptions', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(41, 'Brochure Download List', 'Brochure Download List', 'inquirylist', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(42, 'Products', 'Products', 'products', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(43, 'Industry type', 'Industry type', 'industry_type', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(44, 'Real Estate Act', 'Real Estate Act', 'real_estate_act', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'real_estate_act'),
(45, 'Query Type', 'Query Type', 'real_estate_act_type', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'real_estate_act'),
(46, 'Content', 'Content', 'real_estate_act_content', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'real_estate_act'),
(47, 'product site gallery', 'product site gallery', 'productsitegallery', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(48, 'Subscription List', 'Subscription List', 'subscriptionlist', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'products'),
(37, 'Press', 'Press', 'press', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'achievement'),
(50, 'Client', 'Client', 'client', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'client'),
(51, 'Client', 'Client', 'client', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'client'),
(52, 'Blogs Management', 'Blogs Management', 'blog', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'blog'),
(53, 'Team Type', 'Team Type', 'teamtype', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'team'),
(54, 'Success Story', 'Success Story', 'successstory', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'successstory'),
(55, 'Jobs', 'Jobs', 'jobs', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'jobs'),
(57, 'Jobs', 'Jobs', 'jobs', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'jobs'),
(56, 'FAQ', 'FAQ', 'faq', '', '', 0, 'E', '', '0000-00-00', '0000-00-00', '', 'faq'),
(58, 'Money Services', 'Money Services', 'money-services', '', '', 0, 'E', '', '2023-06-12', '2023-06-12', '', 'money');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `news_type` int(1) NOT NULL,
  `news_title` varchar(150) NOT NULL DEFAULT '',
  `news_desc` text NOT NULL,
  `news_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_type`
--

CREATE TABLE `news_type` (
  `news_type_id` int(11) NOT NULL,
  `news_type` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_master`
--

CREATE TABLE `page_master` (
  `page_id` bigint(11) NOT NULL,
  `parent_id` bigint(11) NOT NULL,
  `page_template` varchar(200) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `mobile_page_content` text NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL COMMENT 'E-Enable D- Disable',
  `user_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_master`
--

INSERT INTO `page_master` (`page_id`, `parent_id`, `page_template`, `page_slug`, `page_title`, `page_content`, `mobile_page_content`, `page_image`, `meta_title`, `meta_desc`, `meta_keyword`, `sortorder`, `status`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 0, 'inner_page.tpl.php', 'about-casa-laundromat-home-page-', 'About Casa Laundromat(Home Page)', '<p class=\"text-justify\" >Self Service Laundry and Wash and Fold Service. The Rose Hill Laundromat uses Card System so no more coins. Also get free 24 minutes of Drying with each wash. You can also pay almost any bill. Add minutes to your Pre-Paid cell phone plan. We also sell cell phones and activate plans with Cricket, Simple Mobile, H20, Net10, Ultra Mobile and others. Check Cashing is also available. We have Lottery, games, etc. while you wait for your wash and/or dry to finish..</p>', '', '', '', '', '', 1, 'E', 4, '2018-05-21 10:59:15', '2018-07-21 11:59:51', '192.168.0.7'),
(2, 0, 'inner_page.tpl.php', 'about-us', 'About Us', '<h3>HISTORY<h3>\n<p class=\"text-justify\">\nAt Rose Hill Laundromat, we\'ve been proudly serving the Alexandria, VA community since 2011. We understand that doing laundry can be a hassle, which is why we strive to make the experience as pleasant and hassle-free as possible for our customers.\n</p>\n\n<h3>SPECIALITIES<h3><br>\n<p class=\"text-justify\">\nOur store is always kept clean, so you can feel comfortable and at ease while doing your laundry. We use a Card system, which means you don\'t need to worry about coins. Plus, with our loyalty card, you can earn free drying credits (24 minutes worth) for each\nwasher used. You can also add funds to our loyalty card with a credit card. Just ask our attendant and they will help get that done.\n</p>\n<p class=\"text-justify\">\nOur store is conveniently located at 6116 Rose Hill Drive, Alexandria, VA 22306, and is quite spacious, so you\'ll never feel cramped or crowded while doing your laundry. In addition to self-service laundry, we also offer wash and fold service, as well as commercial laundry services, to meet all your laundry needs.\n</p>\n<p class=\"text-justify\">\nWe take pride in providing our customers with the highest level of service and ensuring that your laundry experience is a positive one. Come visit us at Rose Hill Laundromat and let us help make your laundry day a little bit easier.\n</p>\n\n\n', '', '', '', '', '', 2, 'E', 4, '2018-05-21 11:05:10', '2018-07-21 12:00:14', '192.168.0.7');

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `permission_id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `group_id` varchar(20) NOT NULL,
  `module` varchar(20) NOT NULL,
  `permissions` varchar(7) NOT NULL DEFAULT 'a,e,d,v',
  `module_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`permission_id`, `username`, `createdate`, `modifieddate`, `group_id`, `module`, `permissions`, `module_id`) VALUES
(1528, 'Keyur', '2018-07-11', '2018-07-11', '1', 'industry_type', 'a,d,e,v', 43),
(1527, 'Keyur', '2018-07-11', '2018-07-11', '1', 'products', 'a,d,e,v', 42),
(1526, 'Keyur', '2018-07-11', '2018-07-11', '1', 'inquirylist', 'a,d,e,v', 41),
(1525, 'Keyur', '2018-07-11', '2018-07-11', '1', 'productoptions', 'a,d,e,v', 40),
(1524, 'Keyur', '2018-07-11', '2018-07-11', '1', 'producttype', 'a,d,e,v', 39),
(1523, 'Keyur', '2018-07-11', '2018-07-11', '1', 'product', 'a,d,e,v', 38),
(1522, 'Keyur', '2018-07-11', '2018-07-11', '1', 'certification', 'a,d,e,v', 36),
(1521, 'Keyur', '2018-07-11', '2018-07-11', '1', 'services', 'a,d,e,v', 35),
(1520, 'Keyur', '2018-07-11', '2018-07-11', '1', 'client', 'a,d,e,v', 34),
(1519, 'Keyur', '2018-07-11', '2018-07-11', '1', 'approvedlist', 'a,d,e,v', 31),
(1518, 'Keyur', '2018-07-11', '2018-07-11', '1', 'academic', 'a,d,e,v', 32),
(1517, 'Keyur', '2018-07-11', '2018-07-11', '1', 'professional', 'a,d,e,v', 33),
(1516, 'Keyur', '2018-07-11', '2018-07-11', '1', 'popup', 'a,d,e,v', 30),
(1515, 'Keyur', '2018-07-11', '2018-07-11', '1', 'brochure', 'a,d,e,v', 29),
(1514, 'Keyur', '2018-07-11', '2018-07-11', '1', 'company', 'a,d,e,v', 28),
(1513, 'Keyur', '2018-07-11', '2018-07-11', '1', 'banner', 'a,d,e,v', 27),
(1512, 'Keyur', '2018-07-11', '2018-07-11', '1', 'team', 'a,d,e,v', 26),
(1511, 'Keyur', '2018-07-11', '2018-07-11', '1', 'downloads_list', 'a,d,e,v', 25),
(1510, 'Keyur', '2018-07-11', '2018-07-11', '1', 'projectimages', 'a,d,e,v', 24),
(1509, 'Keyur', '2018-07-11', '2018-07-11', '1', 'projectslider', 'a,d,e,v', 23),
(1508, 'Keyur', '2018-07-11', '2018-07-11', '1', 'projectfloors', 'a,d,e,v', 22),
(1507, 'Keyur', '2018-07-11', '2018-07-11', '1', 'projects', 'a,d,e,v', 21),
(1506, 'Keyur', '2018-07-11', '2018-07-11', '1', 'project_type', 'a,d,e,v', 20),
(1505, 'Keyur', '2018-07-11', '2018-07-11', '1', 'gallery', 'a,d,e,v', 19),
(1504, 'Keyur', '2018-07-11', '2018-07-11', '1', 'album', 'a,d,e,v', 18),
(1503, 'Keyur', '2018-07-11', '2018-07-11', '1', 'albumtype', 'a,d,e,v', 17),
(1502, 'Keyur', '2018-07-11', '2018-07-11', '1', 'testimonialtype', 'a,d,e,v', 16),
(1501, 'Keyur', '2018-07-11', '2018-07-11', '1', 'testimonial', 'a,d,e,v', 15),
(1500, 'Keyur', '2018-07-11', '2018-07-11', '1', 'newsmaster', 'a,d,e,v', 14),
(1499, 'Keyur', '2018-07-11', '2018-07-11', '1', 'news', 'a,d,e,v', 13),
(1498, 'Keyur', '2018-07-11', '2018-07-11', '1', 'website', 'a,d,e,v', 12),
(1497, 'Keyur', '2018-07-11', '2018-07-11', '1', 'epanel', 'a,d,e,v', 11),
(1496, 'Keyur', '2018-07-11', '2018-07-11', '1', 'job', 'a,d,e,v', 10),
(1495, 'Keyur', '2018-07-11', '2018-07-11', '1', 'subscription', 'a,d,e,v', 9),
(1494, 'Keyur', '2018-07-11', '2018-07-11', '1', 'homecontent', 'a,d,e,v', 8),
(1493, 'Keyur', '2018-07-11', '2018-07-11', '1', 'pageimages', 'a,d,e,v', 7),
(1492, 'Keyur', '2018-07-11', '2018-07-11', '1', 'pages', 'a,d,e,v', 6),
(1491, 'Keyur', '2018-07-11', '2018-07-11', '1', 'permission', 'a,d,e,v', 5),
(1490, 'Keyur', '2018-07-11', '2018-07-11', '1', 'slider', 'a,d,e,v', 4),
(1489, 'Keyur', '2018-07-11', '2018-07-11', '1', 'usergroup', 'a,d,e,v', 3),
(1488, 'Keyur', '2018-07-11', '2018-07-11', '1', 'user', 'a,d,e,v', 2),
(1487, 'Keyur', '2018-07-11', '2018-07-11', '1', 'contact', 'a,d,e,v', 1),
(1529, 'Keyur', '2018-07-11', '2018-07-11', '1', 'real_estate_act', 'a,d,e,v', 44),
(1530, 'Keyur', '2018-07-11', '2018-07-11', '1', 'real_estate_act_type', 'a,d,e,v', 45),
(1531, 'Keyur', '2018-07-11', '2018-07-11', '1', 'real_estate_act_cont', 'a,d,e,v', 46),
(1532, 'Keyur', '2018-07-11', '2018-07-11', '1', 'productsitegallery', 'a,d,e,v', 47),
(1533, 'Keyur', '2018-07-11', '2018-07-11', '1', 'subscriptionlist', 'a,d,e,v', 48),
(1534, 'Keyur', '2018-07-11', '2018-07-11', '1', 'press', 'a,d,e,v', 37),
(1535, 'Keyur', '2018-07-11', '2018-07-11', '1', 'client', 'a,d,e,v', 50),
(1536, 'Keyur', '2018-07-11', '2018-07-11', '1', 'client', 'a,d,e,v', 51),
(1537, 'Keyur', '2018-07-11', '2018-07-11', '1', 'blog', 'a,d,e,v', 52),
(1538, 'Keyur', '2018-07-11', '2018-07-11', '1', 'teamtype', 'a,d,e,v', 53),
(1539, 'Keyur', '2018-07-11', '2018-07-11', '1', 'successstory', 'a,d,e,v', 54),
(1540, 'Keyur', '2018-07-11', '2018-07-11', '1', 'jobs', 'a,d,e,v', 55),
(1541, 'Keyur', '2018-07-11', '2018-07-11', '1', 'jobs', 'a,d,e,v', 57),
(1542, 'Keyur', '2018-07-11', '2018-07-11', '1', 'faq', 'a,d,e,v', 56);

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `productoptionID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productOptionTitle` varchar(25) NOT NULL,
  `productOptionValue` text NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `pTypeID` int(11) NOT NULL,
  `productTitle` varchar(100) NOT NULL,
  `productTypeTitle` varchar(50) NOT NULL,
  `clientName` varchar(50) NOT NULL,
  `productDescr` text NOT NULL,
  `productStatus` varchar(25) NOT NULL,
  `siteaddress` varchar(255) NOT NULL,
  `productArea` varchar(100) NOT NULL,
  `productThumbnail` varchar(100) DEFAULT NULL,
  `productShareImage` varchar(100) NOT NULL,
  `productSpeciality` text,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(20) NOT NULL,
  `hasmasterplan` varchar(6) DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `pTypeID` int(11) NOT NULL,
  `pTypeTitle` text NOT NULL,
  `projectFile` varchar(100) DEFAULT NULL,
  `pTypeDescr` text,
  `type` text NOT NULL,
  `pTypeParent` int(11) NOT NULL DEFAULT '0',
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `HasProject` char(1) NOT NULL DEFAULT 'N',
  `remote_ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`pTypeID`, `pTypeTitle`, `projectFile`, `pTypeDescr`, `type`, `pTypeParent`, `createdate`, `modifieddate`, `username`, `sortorder`, `status`, `HasProject`, `remote_ip`) VALUES
(1, '<p>Next Day Wash &amp; Gold <span>(Clothing, towels, bedsheets)</span></p>', '', '<p>$1.00<span>/ lbs</span></p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 1, 'E', '', '192.168.0.16'),
(2, '<p>Same Day Wash &amp; Fold <span>(Clothing towels, bedsheets)</span></p>', '', '<p>$1.50<span>/ lbs</span></p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 2, 'E', '', '192.168.0.16'),
(3, '<p>Comforters (regular) <span>depending on size requested turnaround</span></p>', '', '<p>$12.00 to $18.00</p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 3, 'E', '', '192.168.0.16'),
(4, '<p>Down Comforters</p>', '', '<p>$30.00</p>', 'Drop Off Wash and Fold', 0, '2018-07-21', '0000-00-00', 'Keyur', 4, 'E', 'N', '192.168.0.16'),
(5, '<p>Blankets</p>\n<p><span> - depending on size &amp; requested turnaround</span></p>', '', '<p>$10.00 to $15.00</p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 5, 'E', '', '192.168.0.16'),
(6, '<p>Rugs</p>\n<p><span> - depending on size and requested turnaround</span></p>', '', '<p>$3.00 to $10.00</p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 6, 'E', '', '192.168.0.16'),
(7, '<p>Pillows</p>\n<p><span> - depending on size, quantity and requested turnaround</span></p>', '', '<p>$4.00 to $8.00</p>', 'Drop Off Wash and Fold', 0, '0000-00-00', '0000-00-00', 'Keyur', 7, 'E', '', '192.168.0.16'),
(8, '<p>Wash &amp; Fold <span> (Per pound)</span></p>', '', '<p>$1.65</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 8, 'E', '', '192.168.0.16'),
(9, '<p>Bath Mats / Kitchen Mats <span>(Laundry)</span></p>', '', '<p>$4.99</p>', 'Pickup and Delivery', 0, '0000-00-00', '0000-00-00', 'Keyur', 9, 'E', '', '192.168.0.16'),
(10, '<p>Duvet Covers <span>(Laundry) </span></p>', '', '<p>$4.99</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 10, 'E', '', '192.168.0.16'),
(11, '<p>Sleeping bag <span>(Laundry) </span></p>', '', '<p>$9.99</p>', 'Pickup and Delivery', 0, '0000-00-00', '0000-00-00', 'Keyur', 11, 'E', '', '192.168.0.16'),
(12, '<p>Blanket <span>(Laundry) </span></p>', '', '<p>$24.99</p>', 'Pickup and Delivery', 0, '0000-00-00', '0000-00-00', 'Keyur', 12, 'E', '', '192.168.0.16'),
(13, '<p>Comforters - Twin / Full / Queen <span>(Laundry) </span></p>', '', '<p>$19.99</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 13, 'E', '', '192.168.0.16'),
(14, '<p>Comforters &ndash; King <span>(Laundry) </span></p>', '', '<p>$24.99</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 14, 'E', '', '192.168.0.16'),
(15, '<p>Mattress Pad <span>(Laundry) </span></p>', '', '<p>$14.99</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 15, 'E', '', '192.168.0.16'),
(16, '<p>Pillow <span>(Laundry) </span></p>', '', '<p>$14.99</p>', 'Pickup and Delivery', 0, '2018-07-21', '0000-00-00', 'Keyur', 16, 'E', '', '192.168.0.16');

-- --------------------------------------------------------

--
-- Table structure for table `project_gallery`
--

CREATE TABLE `project_gallery` (
  `galleryID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL DEFAULT '0',
  `galleryTitle` varchar(100) NOT NULL DEFAULT '',
  `galleryImage` varchar(100) NOT NULL,
  `type` char(1) NOT NULL DEFAULT 'G',
  `sortorder` int(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `remote_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_link_master`
--

CREATE TABLE `seo_link_master` (
  `seo_link_id` int(8) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_id` int(8) NOT NULL,
  `seo_slug` varchar(255) NOT NULL,
  `user_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `modifieddate` datetime NOT NULL,
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo_link_master`
--

INSERT INTO `seo_link_master` (`seo_link_id`, `module_name`, `module_id`, `seo_slug`, `user_id`, `createdate`, `modifieddate`, `remote_ip`) VALUES
(1, 'pages', 1, 'about-casa-laundromat-home-page-', 4, '2018-07-21 11:58:06', '2018-07-21 11:59:51', '192.168.0.7'),
(2, 'pages', 2, 'about-us', 4, '2018-07-21 12:00:14', '2018-07-21 12:00:14', '192.168.0.7'),
(3, 'services', 2, '-lt-p-gt-same-day-wash-fold-lt-br-gt-lt-span-gt-clothing-towels-bedsheets-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:16:58', '2018-07-21 14:51:36', '192.168.0.16'),
(4, 'services', 1, '-lt-p-gt-next-day-wash-gold-lt-br-gt-lt-span-gt-clothing-towels-bedsheets-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:21:29', '2018-07-21 14:49:59', '192.168.0.16'),
(5, 'services', 2, '-lt-p-gt-same-day-wash-fold-lt-br-gt-lt-span-gt-clothing-towels-bedsheets-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:24:04', '2018-07-21 14:51:36', '192.168.0.16'),
(6, 'services', 3, '-lt-p-gt-comforters-lt-br-gt-lt-span-gt-regular-lt-span-gt-lt-p-gt-lt-p-gt-lt-span-gt-depending-on-size-requested-turnaround-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:36:49', '2018-07-21 14:52:22', '192.168.0.16'),
(7, 'services', 4, '-lt-p-gt-down-comforters-lt-p-gt-', 4, '2018-07-21 14:37:31', '2018-07-21 14:37:31', '192.168.0.16'),
(8, 'services', 5, '-lt-p-gt-blankets-lt-p-gt-lt-p-gt-lt-span-gt-depending-on-size-requested-turnaround-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:43:25', '2018-07-21 14:53:07', '192.168.0.16'),
(9, 'services', 6, '-lt-p-gt-rugs-lt-p-gt-lt-p-gt-lt-span-gt-depending-size-and-requested-turnaround-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:44:27', '2018-07-21 14:53:46', '192.168.0.16'),
(10, 'services', 7, '-lt-p-gt-pillows-lt-p-gt-lt-p-gt-lt-span-gt-depending-on-size-quantity-and-requested-turnaround-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:45:23', '2018-07-21 14:54:17', '192.168.0.16'),
(11, 'services', 8, '-lt-p-gt-wash-fold-lt-br-gt-lt-span-gt-per-pound-lt-span-gt-lt-p-gt-', 4, '2018-07-21 14:59:06', '2018-07-21 14:59:06', '192.168.0.16'),
(12, 'services', 9, '-lt-p-gt-bath-mats-kitchen-mats-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:08:47', '2018-07-21 15:09:14', '192.168.0.16'),
(13, 'services', 10, '-lt-p-gt-duvet-covers-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:10:48', '2018-07-21 15:10:48', '192.168.0.16'),
(14, 'services', 11, '-lt-p-gt-sleeping-bag-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:18:09', '2018-07-21 15:21:50', '192.168.0.16'),
(15, 'services', 12, '-lt-p-gt-blanket-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:19:18', '2018-07-21 15:22:02', '192.168.0.16'),
(16, 'services', 13, '-lt-p-gt-comforters-twin-full-queen-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:21:28', '2018-07-21 15:21:28', '192.168.0.16'),
(17, 'services', 14, '-lt-p-gt-comforters-king-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:23:17', '2018-07-21 15:23:17', '192.168.0.16'),
(18, 'services', 15, '-lt-p-gt-mattress-pad-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:24:15', '2018-07-21 15:24:15', '192.168.0.16'),
(19, 'services', 16, '-lt-p-gt-pillow-lt-br-gt-lt-span-gt-laundry-lt-span-gt-lt-p-gt-', 4, '2018-07-21 15:25:15', '2018-07-21 15:25:15', '192.168.0.16');

-- --------------------------------------------------------

--
-- Table structure for table `session_log_master`
--

CREATE TABLE `session_log_master` (
  `session_log_id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `loginID` varchar(100) NOT NULL,
  `remote_ip` varchar(100) NOT NULL,
  `last_access` datetime NOT NULL,
  `status` char(1) NOT NULL COMMENT 'LogiIn(I) / Logout (O)'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_log_master`
--

INSERT INTO `session_log_master` (`session_log_id`, `user_id`, `loginID`, `remote_ip`, `last_access`, `status`) VALUES
(1, 4, 'admin-casalaundromat', '::1', '2018-07-11 14:51:34', 'I'),
(2, 4, 'admin-casalaundromat', '::1', '2018-07-17 09:36:47', 'I'),
(3, 4, 'admin-casalaundromat', '10.1.1.120', '2018-07-17 10:57:21', 'I'),
(4, 4, 'admin-casalaundromat', '10.1.1.105', '2018-07-17 11:01:56', 'I'),
(5, 4, 'admin-casalaundromat', '10.1.1.105', '2018-07-17 14:02:56', 'I'),
(6, 4, 'admin-casalaundromat', '192.168.0.7', '2018-07-17 14:19:20', 'I'),
(7, 4, 'admin-casalaundromat', '192.168.0.7', '2018-07-21 11:56:21', 'I'),
(8, 4, 'admin-casalaundromat', '192.168.0.7', '2018-07-21 13:46:06', 'I'),
(9, 4, 'admin-casalaundromat', '192.168.0.7', '2018-07-23 09:35:04', 'I'),
(10, 4, 'admin-casalaundromat', '192.168.0.16', '2018-08-10 09:57:29', 'I'),
(11, 4, 'admin-inout', '123.201.2.173', '2019-02-02 07:36:54', 'I'),
(12, 4, 'admin-inout', '123.201.2.173', '2019-02-02 07:37:20', 'I'),
(13, 4, 'admin-inout', '123.201.2.173', '2019-02-02 11:25:08', 'I'),
(14, 4, 'admin-inout', '116.74.112.172', '2019-05-06 06:13:31', 'I'),
(15, 4, 'admin-inout', '210.8.193.246', '2020-04-29 13:02:46', 'I'),
(16, 4, 'admin-inout', '219.91.245.54', '2020-04-30 10:22:03', 'I'),
(17, 4, 'admin-inout', '150.107.188.82', '2021-07-22 11:04:52', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `sliderimage`
--

CREATE TABLE `sliderimage` (
  `sliderID` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` text NOT NULL,
  `sliderTitle` varchar(255) NOT NULL,
  `sliderDesc` varchar(100) NOT NULL,
  `sliderBtn` varchar(30) NOT NULL,
  `btnlink` varchar(150) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(8) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sliderPosition` char(1) NOT NULL DEFAULT 'H',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliderimage`
--

INSERT INTO `sliderimage` (`sliderID`, `image`, `mobile_image`, `sliderTitle`, `sliderDesc`, `sliderBtn`, `btnlink`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `sliderPosition`, `remote_ip`) VALUES
(14, '14-Slider-3.jpg', 'slider14_mobile.jpg', 'Best Place for Laundry & <br> Dry Cleaning', 'Giving you more time for what matters most.', 'Learn More', '', 'Keyur', '2017-05-18', '2018-06-28', 3, 'E', 'H', '192.168.0.13'),
(15, '15-Slider-2.jpg', 'slider15_mobile.jpg', 'Best Place for Laundry & <br> Dry Cleaning', 'Giving you more time for what matters most.', 'Learn More', '', 'Keyur', '2017-05-18', '2018-06-28', 2, 'E', 'H', '192.168.0.13'),
(24, '24-Slider-1.jpg', 'slider24_mobile.jpg', 'Best Place for Laundry & <br> Dry Cleaning', 'Giving you more time for what matters most.', 'Learn More', '', 'Keyur', '2018-03-16', '2018-06-28', 1, 'E', 'H', '192.168.0.13');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_master`
--

CREATE TABLE `subscription_master` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_email` varchar(200) DEFAULT NULL,
  `s_mobile` varchar(20) DEFAULT NULL,
  `s_date` date NOT NULL,
  `new` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_master`
--

INSERT INTO `subscription_master` (`s_id`, `s_name`, `s_email`, `s_mobile`, `s_date`, `new`) VALUES
(1, NULL, 'bhavini.easternts@gmail.com', NULL, '2018-08-25', 0),
(2, NULL, 'chauhanbhavini12@yahoo.com', NULL, '2018-08-25', 0),
(3, NULL, 'bhavini.easternts@gmail.com', NULL, '2018-08-25', 0),
(4, NULL, 'bhavini.easternts@gmail.com', NULL, '2018-08-25', 0),
(5, NULL, 'bhavini.easternts@gmail.com', NULL, '2018-08-25', 0),
(6, NULL, 'vyzuhonozu@mailinator.com', NULL, '2023-06-15', 0),
(7, NULL, 'vyzuhonozu@mailinator.com', NULL, '2023-06-15', 0),
(8, 'Bhavini', 'bhavini.easternts@gmail.com', NULL, '2023-06-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `successstory`
--

CREATE TABLE `successstory` (
  `successstory_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `successstory_type` int(1) NOT NULL,
  `successstory_title` varchar(150) NOT NULL DEFAULT '',
  `successstory_desc` text NOT NULL,
  `successstory_date` date NOT NULL,
  `remote_ip` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_master`
--

CREATE TABLE `team_master` (
  `team_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `short_description` text,
  `designation` varchar(70) NOT NULL,
  `image` text NOT NULL,
  `team_type_id` int(11) DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'E',
  `sortorder` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_type`
--

CREATE TABLE `team_type` (
  `team_type_id` int(15) NOT NULL,
  `team_type_title` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `sortorder` int(3) NOT NULL DEFAULT '1',
  `remote_ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_type`
--

INSERT INTO `team_type` (`team_type_id`, `team_type_title`, `username`, `createdate`, `modifieddate`, `status`, `sortorder`, `remote_ip`) VALUES
(1, 'Team Type Testing', 'Keyur', '2018-06-25', '0000-00-00', 'E', 1, '192.168.0.23');

-- --------------------------------------------------------

--
-- Table structure for table `template_master`
--

CREATE TABLE `template_master` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_title` varchar(100) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_master`
--

INSERT INTO `template_master` (`template_id`, `template_name`, `template_title`, `sortorder`) VALUES
(1, 'inner_page.tpl.php', 'Inner Page Template', 1),
(3, 'full_width_page.tpl.php', 'full_width_page', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `testimonial_Id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `review` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default-user.png',
  `username` varchar(30) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `sortorder` int(8) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) DEFAULT NULL,
  `testimonial_type` varchar(256) NOT NULL,
  `tour_Name` varchar(256) NOT NULL,
  `home` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonial_Id`, `name`, `designation`, `review`, `image`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`, `testimonial_type`, `tour_Name`, `home`) VALUES
(1, 'Darius D', NULL, 'I am really impressed with the service by Rose Hill Laundromat. They are very prompt and truly professional.', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(2, 'Lauren E', NULL, 'I am really happy with this company. Great prices and services. You guys provide amazing service - super convenient !', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(3, 'Dierdre G', NULL, 'The woman who worked with us was very kind and explained to us how to get set up with a card. A perfect 5 star experience!', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(4, 'Claire H', NULL, 'Needed king size comforter cleaned and it was ready next day with spots removed from our dog\'s accidents!', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(5, 'Joe E', NULL, 'Excellent customer service, clean facility, and the machines work well.', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(6, 'Susan P', NULL, 'Clean. Efficient. Helpful staff. Everyone is in a good mood b\'cuz this place runs like a well-oiled machine. FYI. Busy. Busy. Busy Saturday morning at 7am. Thins-out a bit after 830.', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', ''),
(7, 'Lezlie R', NULL, 'I recently started coming here again since I can\'t wash my bulky sheets at home and I\'ll always prefer this laundromat than any other one!', 'default-user.png', NULL, NULL, NULL, NULL, 'E', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_master`
--

CREATE TABLE `testimonial_master` (
  `testimonial_master_id` int(11) NOT NULL,
  `testimonial_type` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `createdate` date NOT NULL,
  `modifieddate` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'E',
  `remote_ip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial_master`
--

INSERT INTO `testimonial_master` (`testimonial_master_id`, `testimonial_type`, `username`, `createdate`, `modifieddate`, `sortorder`, `status`, `remote_ip`) VALUES
(4, 'Testimonial', 'Keyur', '2018-03-14', '2020-04-01', 1, 'E', '192.168.0.9');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `userID` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `loginID` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  `contacts` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`userID`, `group_id`, `loginID`, `email`, `password`, `firstname`, `lastname`, `address`, `contacts`) VALUES
(4, 1, 'admin-inout', 'contact@easternts.com (esxgzmpn5uf)', '3a0b57d8ba603d97f8f5523986d749ed2c1ea02c370c527ed3d8964f8823c2bf', 'Keyur', 'Mehta', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `website_master`
--

CREATE TABLE `website_master` (
  `id` int(11) NOT NULL,
  `email1` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `tel1` varchar(25) NOT NULL,
  `tel2` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `address2` text NOT NULL,
  `fax` varchar(25) NOT NULL,
  `map_code` text NOT NULL,
  `logo` text NOT NULL,
  `social` text NOT NULL,
  `copyright` varchar(70) NOT NULL,
  `rera` text NOT NULL,
  `modal_rera` varchar(2) NOT NULL,
  `powered_by` text NOT NULL,
  `coming_soon` varchar(1) NOT NULL DEFAULT 'N',
  `username` varchar(70) NOT NULL,
  `remote_ip` varchar(70) NOT NULL,
  `create_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `homeimage` varchar(256) NOT NULL,
  `check1` varchar(1) NOT NULL,
  `caption` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_master`
--

INSERT INTO `website_master` (`id`, `email1`, `email2`, `tel1`, `tel2`, `address`, `address2`, `fax`, `map_code`, `logo`, `social`, `copyright`, `rera`, `modal_rera`, `powered_by`, `coming_soon`, `username`, `remote_ip`, `create_date`, `modified_date`, `homeimage`, `check1`, `caption`) VALUES
(1, 'rhlaundryinfo@gmail.com', '', '+17038228170', '', '<p>6116 Rose Hill Drive<br>Alexandria VA 22310</p>', '<p style=\"margin: 0; line-height: 2; padding-left: 4px;\"><span></span><span><br /></span></p>', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3110.0797230439525!2d-77.1225637!3d38.7848067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b213ad3bb747%3A0x45fe5db02337a461!2sRose%20Hill%20Laundry%20%26%20Mobile!5e0!3m2!1sen!2sin!4v1683788102348!5m2!1sen!2sin', 'logo1.png', 'a:6:{s:8:\"facebook\";s:73:\"https://www.facebook.com/pages/Alexandria-VA/CASA-LAUNDROMAT/315938640620\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";}', '', '<p class=\"text-justify\">Dear Viewers,Please note that we are in process to update this website. With the introduction of RERA &ndash; Act 2016, we are implementing the changes and hence certain details mentioned will undergo change. The new changes will be updated shortly. While accessing this website, it is established that the viewer understands that all the information including brochures and marketing collaterals within the website are for information purposes only. The developer is not liable for any consequence of any action taken by viewer solely relying on such information.</p>', 'E', 'a:2:{s:5:\"title\";s:24:\"Eastern Techno Solutions\";s:4:\"link\";s:25:\"http://www.easternts.com/\";}', '', 'Keyur', '::1', '2015-10-26', '2018-07-17', 'popup.jpg', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `album_type`
--
ALTER TABLE `album_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`bannerID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `contact_master`
--
ALTER TABLE `contact_master`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `content_master`
--
ALTER TABLE `content_master`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_Id`);

--
-- Indexes for table `faq_master`
--
ALTER TABLE `faq_master`
  ADD PRIMARY KEY (`faq_master_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indexes for table `gallery_master`
--
ALTER TABLE `gallery_master`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `homecontent`
--
ALTER TABLE `homecontent`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_master`
--
ALTER TABLE `job_master`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `module_master`
--
ALTER TABLE `module_master`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `eve_date` (`news_date`);

--
-- Indexes for table `news_type`
--
ALTER TABLE `news_type`
  ADD PRIMARY KEY (`news_type_id`);

--
-- Indexes for table `page_master`
--
ALTER TABLE `page_master`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`productoptionID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `pTypeID` (`pTypeID`),
  ADD KEY `pTypeID_2` (`pTypeID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`pTypeID`);

--
-- Indexes for table `project_gallery`
--
ALTER TABLE `project_gallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Indexes for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  ADD PRIMARY KEY (`seo_link_id`);

--
-- Indexes for table `session_log_master`
--
ALTER TABLE `session_log_master`
  ADD PRIMARY KEY (`session_log_id`);

--
-- Indexes for table `sliderimage`
--
ALTER TABLE `sliderimage`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indexes for table `subscription_master`
--
ALTER TABLE `subscription_master`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `successstory`
--
ALTER TABLE `successstory`
  ADD PRIMARY KEY (`successstory_id`),
  ADD KEY `eve_date` (`successstory_date`);

--
-- Indexes for table `team_master`
--
ALTER TABLE `team_master`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `team_type`
--
ALTER TABLE `team_type`
  ADD PRIMARY KEY (`team_type_id`);

--
-- Indexes for table `template_master`
--
ALTER TABLE `template_master`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`testimonial_Id`);

--
-- Indexes for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  ADD PRIMARY KEY (`testimonial_master_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `website_master`
--
ALTER TABLE `website_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `a_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album_type`
--
ALTER TABLE `album_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `bannerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_master`
--
ALTER TABLE `contact_master`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `content_master`
--
ALTER TABLE `content_master`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `faq_master`
--
ALTER TABLE `faq_master`
  MODIFY `faq_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_master`
--
ALTER TABLE `gallery_master`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homecontent`
--
ALTER TABLE `homecontent`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_master`
--
ALTER TABLE `job_master`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_master`
--
ALTER TABLE `module_master`
  MODIFY `module_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_type`
--
ALTER TABLE `news_type`
  MODIFY `news_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_master`
--
ALTER TABLE `page_master`
  MODIFY `page_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `permission_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1543;

--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `productoptionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `pTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project_gallery`
--
ALTER TABLE `project_gallery`
  MODIFY `galleryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_link_master`
--
ALTER TABLE `seo_link_master`
  MODIFY `seo_link_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `session_log_master`
--
ALTER TABLE `session_log_master`
  MODIFY `session_log_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sliderimage`
--
ALTER TABLE `sliderimage`
  MODIFY `sliderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `subscription_master`
--
ALTER TABLE `subscription_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `successstory`
--
ALTER TABLE `successstory`
  MODIFY `successstory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_master`
--
ALTER TABLE `team_master`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_type`
--
ALTER TABLE `team_type`
  MODIFY `team_type_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_master`
--
ALTER TABLE `template_master`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `testimonial_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonial_master`
--
ALTER TABLE `testimonial_master`
  MODIFY `testimonial_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `website_master`
--
ALTER TABLE `website_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
