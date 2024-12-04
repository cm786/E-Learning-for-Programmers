-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 07:00 PM
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
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', 'admin'),
(2, 'admin1', 'admin1@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cnt_id` int(11) NOT NULL,
  `cnt_name` varchar(255) NOT NULL,
  `cnt_subject` varchar(255) NOT NULL,
  `cnt_email` varchar(255) NOT NULL,
  `cnt_msg` varchar(255) NOT NULL,
  `cnt_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cnt_id`, `cnt_name`, `cnt_subject`, `cnt_email`, `cnt_msg`, `cnt_date`) VALUES
(30, 'cm', 'testing', 'abc@gmail.com', 'hello\r\nmsg to confirm for course ', '2024-12-02'),
(32, 'cm', 'testing', 'test@gmail.com', 'test checking', '2024-12-02'),
(33, 'jack', 'enquiry', 'jack@gmail.com', 'fasjljcja', '2024-12-02'),
(34, 'deep', 'enquiry', 'abc@gmail.com', 'just for enquiry', '2024-12-02'),
(35, 'Ram', 'enquiry', 'test@abc.gmail', 'checking for enquiry', '2024-12-02'),
(36, 'test', 'testing', 'test@gmail.com', 'testing', '2024-12-02'),
(37, 'Sachin', 'course details', 'sachin@gmail.com', 'know about the course details of AI', '2024-12-03'),
(38, 'test', 'test1', 'test@gmail.com', 'test', '2024-12-03'),
(39, 'Ravi', 'enquiry', 'ravi@gmail.com', 'course details', '2024-12-03'),
(40, 'bhai', 'enquiry', 'bhai@gmail.com', 'enquiry regarding course', '2024-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(9, 'Complete PHP Bootcamp', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'Rajesh Kumar', '../image/courseimg/php.jpg', '3 Months', 700, 1700),
(10, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Rahul Kumar', '../image/courseimg/Python.jpg', '4 Months', 800, 1800),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Jay Shukla', '../image/courseimg/vue.jpg', '2 Months', 100, 1000),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Sonam Gupta', '../image/courseimg/angular.jpg', '4 Month', 800, 1600),
(16, 'Python Complete', 'This is complete Python Course.\r\nLearn from basics to advance.', 'RK', '../image/courseimg/Python.jpg', '4 hours', 500, 4000),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'GeekyShows', '../image/courseimg/Machine.jpg', '2 months', 200, 3000),
(18, 'Java Programming', 'Complete java course for beginners.\r\nLearn core java from basics to advanced level.', 'Sanjay kumar', '../image/courseimg/course-11.jpg', '3 months', 400, 700),
(20, 'Artificial Intelligence', 'Complete course in-depth from basics to advanced. ', 'Sarthak Kumar', '../image/courseimg/AI.jpg', '6 months', 500, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(22, 'ORDS99766364', 'cm@gmail.com', 13, 'TXN_SUCCESS', 'Txn Success', 800, '2024-11-24'),
(26, 'ORDS67286954', 'cm@gmail.com', 17, 'TXN_SUCCESS', 'Txn Success', 200, '2024-11-28'),
(32, 'ORDS44163979', 'rohan@gmail.com', 13, 'TXN_SUCCESS', 'Txn Success', 800, '2024-11-28'),
(37, 'ORDS67214988', 'cm@gmail.com', 9, 'TXN_SUCCESS', 'Txn Success', 700, '2024-12-04'),
(38, 'ORDS45608953', 'cm@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2024-12-04'),
(39, 'ORDS91669330', 'cm@gmail.com', 12, 'TXN_SUCCESS', 'Txn Success', 100, '2024-12-04'),
(40, 'ORDS92025165', 'cm@gmail.com', 16, 'TXN_SUCCESS', 'Txn Success', 500, '2024-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at ELMS made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the ELMS for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 171),
(8, 'I am grateful to iSchool - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 172),
(9, 'ELMS is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the iSchool brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that ELMS urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome GeekySHows Jindabaad', 182);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(36, 'Introduction to PHP', 'Introduction to PHP Desc', '../lessonvid/PHP1.mp4', 9, 'Complete PHP Bootcamp'),
(37, 'How PHP works', 'How PHP works Desc', '../lessonvid/PHP2.mp4', 9, 'Complete PHP Bootcamp'),
(39, 'Introduction to Guitar44', 'Introduction to Guitar desc1', '../lessonvid/video7.mp4', 8, 'Learn Guitar The Easy Way'),
(40, 'Type of Guitar', 'Type of Guitar Desc2', '../lessonvid/video8.mp4', 8, 'Learn Guitar The Easy Way'),
(41, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence desc', '../lessonvid/video10.mp4', 11, 'Hands-on Artificial Intelligence'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/video11.mp4', 11, 'Hands-on Artificial Intelligence'),
(50, 'Easy Guitar chords', 'type of chords', '../lessonvid/Screenshot 2024-10-17 224448.png', 8, 'Learn Guitar The Easy Wayy'),
(56, 'Introduction to Angular', 'intoduction to angular', '../lessonvid/angular1.mp4', 13, 'Angular JS'),
(57, 'Introduction to React Native', 'Introduction to React Native', '../lessonvid/React1.mp4', 17, 'Learn React Native'),
(59, 'Introduction to Vue', 'Vue Introduction', '../lessonvid/vue1.mp4', 12, 'Learn Vue JS'),
(60, 'Introduction to Python Complete', 'Introduction to Python', '../lessonvid/Python1.mp4', 16, 'Python Complete'),
(61, 'Introduction to Java', 'Java Introduction', '../lessonvid/Java1.mp4', 18, 'Java Programming'),
(62, 'Introduction to Python', 'Python introduction', '../lessonvid/Python1.mp4', 10, 'Learn Python A-Z');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(178, ' Mario', 'mario@ischool.com', '1234567', ' Web Dev', '../image/stu/super-mario-2690254_1280.jpg'),
(183, ' cm', 'cm@gmail.com', '1234', ' student', '../image/stu/'),
(184, 'Avi kumar', 'avi@gmail.com', 'avi1', 'student', ''),
(185, 'rohan', 'rohan@gmail.com', '1111', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cnt_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
