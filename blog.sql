-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 07:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Harshvardhan', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(11, 'HTML'),
(12, 'CSS'),
(13, 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(13, 'this is awesome', 'harsh', 49, '2021-10-08 17:12:13'),
(14, 'this is awesome', 'harsh', 52, '2021-10-08 17:12:34'),
(15, 'this is awesome', 'harsh', 51, '2021-10-08 17:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(15, 38, 'html-head.jpg'),
(16, 39, 'html-head.jpg'),
(17, 40, 'html-head.jpg'),
(18, 41, 'html-head.jpg'),
(20, 43, 'css.jpg'),
(21, 45, 'css.jpg'),
(22, 46, 'html-head.jpg'),
(23, 47, '46.jpg'),
(24, 48, '46.jpg'),
(25, 49, 'html-head.jpg'),
(26, 50, '46.jpg'),
(27, 51, 'js.jpg'),
(28, 52, '46.jpeg'),
(29, 53, 'html-head.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `action`) VALUES
(1, 'Home', 'index.php'),
(3, 'Categories', '#');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`) VALUES
(49, 'Why you should learn HTML?', '<p style=\"box-sizing: inherit; margin-bottom: 20px; font-size: 18px; line-height: 1.6em; font-family: Open-Sans-Regular;\">These days, website builders&nbsp;such as Wix and SiteBuilder have made building websites easy. With a simple drag and drop interface and a variety of templates, anyone can build a website that is both functional and stylish.</p>\r\n\r\n<p style=\"box-sizing: inherit; margin-bottom: 20px; font-size: 18px; line-height: 1.6em; font-family: Open-Sans-Regular;\">But what if you&rsquo;re not interested in having a website that looks just like everyone else&rsquo;s? What happens when you want to make changes to your site that go beyond what&rsquo;s available using the drag and drop builder?</p>\r\n\r\n<p style=\"box-sizing: inherit; margin-bottom: 20px; font-size: 18px; line-height: 1.6em; font-family: Open-Sans-Regular;\">With a basic knowledge of HTML (as well as a little CSS), you can build a truly unique website that you can edit and update yourself, and you won&rsquo;t have to pay expensive monthly service fees.</p>\r\n\r\n<p style=\"box-sizing: inherit; margin-bottom: 20px; font-size: 18px; line-height: 1.6em; font-family: Open-Sans-Regular;\">Learning HTML is also considered the first step for progressing into more complex and in-demand programming languages. Fancy earning a six-figure salary as a web developer for a Silicon Valley startup? Or maybe you&rsquo;ve got plans to develop the next Facebook or Twitter? If you&rsquo;re interested in learning how to do any web related programming, HTML is the place to start.</p>\r\n', '2021-10-08 16:35:49', 11),
(51, 'What is JavaScript?', '<p style=\"box-sizing: border-box; margin: 0px 0px 24px; max-width: 85ch; color: rgb(27, 27, 27); font-family: arial, x-locale-body, sans-serif; font-size: 16px; letter-spacing: -0.0444444px;\">JavaScript (&quot;JS&quot; for short) is a full-fledged dynamic programming language&nbsp;that can add interactivity to a website. It was invented by Brendan Eich (co-founder of the Mozilla project, the Mozilla Foundation, and the Mozilla Corporation).</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; max-width: 85ch; color: rgb(27, 27, 27); font-family: arial, x-locale-body, sans-serif; font-size: 16px; letter-spacing: -0.0444444px;\">JavaScript is versatile and beginner-friendly. With more experience, you&#39;ll be able to create games, animated 2D and 3D graphics, comprehensive database-driven apps, and much more!</p>\r\n\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 24px; max-width: 85ch; color: rgb(27, 27, 27); font-family: arial, x-locale-body, sans-serif; font-size: 16px; letter-spacing: -0.0444444px;\">JavaScript itself is relatively compact, yet very flexible. Developers have written a variety of tools on top of the core JavaScript language, unlocking a vast amount of functionality with minimum effort. These include:</p>\r\n\r\n<ul style=\"box-sizing: border-box; max-width: 85ch; color: rgb(27, 27, 27); font-family: arial, x-locale-body, sans-serif; font-size: 16px; letter-spacing: -0.0444444px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 8px;\">Browser Application Programming Interfaces (APIs) built into web browsers, providing functionality such as dynamically creating HTML and setting CSS styles; collecting and manipulating a video stream from a user&#39;s webcam, or generating 3D graphics and audio samples.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 8px;\">Third-party APIs that allow developers to incorporate functionality in sites from other content providers, such as Twitter or Facebook.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 8px;\">Third-party frameworks and libraries that you can apply to HTML to accelerate the work of building sites and applications.</li>\r\n</ul>\r\n', '2021-10-08 16:41:26', 13),
(52, 'Types of CSS?', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; color: rgb(39, 50, 57); font-family: urw-din, sans-serif; letter-spacing: 0.162px;\">Cascading Style Sheet(CSS) is used to set the style in web pages that contain HTML elements. It sets the background color, font-size, font-family, color, &hellip; etc property of elements on a web page.&nbsp;<br style=\"box-sizing: border-box;\" />\r\nThere are three types of CSS which are given below:&nbsp;<br style=\"box-sizing: border-box;\" />\r\n&nbsp;</p>\r\n\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 24px; padding-right: 0px; padding-left: 0px; border: 0px; font-size: 17px; vertical-align: baseline; list-style-position: outside; list-style-image: initial; display: flex; flex-direction: column; color: rgb(39, 50, 57); font-family: urw-din, sans-serif; letter-spacing: 0.162px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 24px; padding: 0px; border: 0px; vertical-align: baseline; text-align: left; line-height: 1.58; color: var(--color-black);\">Inline CSS</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 24px; padding: 0px; border: 0px; vertical-align: baseline; text-align: left; line-height: 1.58; color: var(--color-black);\">Internal or Embedded CSS</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 24px; padding: 0px; border: 0px; vertical-align: baseline; text-align: left; line-height: 1.58; color: var(--color-black);\">External CSS</li>\r\n</ul>\r\n', '2021-10-08 16:49:30', 12);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`) VALUES
(10, 3, 'HTML', '#'),
(11, 3, 'CSS', '#'),
(12, 3, 'JavaScript', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
