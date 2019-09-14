-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2019 at 04:54 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_hristina_dakic_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_first_name` varchar(100) DEFAULT NULL,
  `author_lastname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_first_name`, `author_lastname`) VALUES
(12, 'Louise', 'Penny'),
(13, 'Delia', 'Owens'),
(14, 'David', 'Lagercrantz'),
(15, 'Donna', 'Tartt'),
(16, 'Heather', 'Morris'),
(17, 'Garth', 'Stein'),
(18, 'Tara', 'Westover'),
(19, 'Michelle', 'Obama'),
(20, 'Jeanine', 'Pirro'),
(21, 'Trevor', 'Noah'),
(22, 'Richard', 'Powers'),
(23, 'Test', 'Test'),
(24, 'Test2', 'Test2'),
(25, 'Test5', 'Test5'),
(26, 'Test6', 'Test6'),
(27, 'Test7', 'Test7'),
(28, 'Test7', 'Test7'),
(29, 'Test8', 'Test8'),
(30, 'Test10', 'Test10'),
(31, 'John', 'Johnson'),
(32, 'May', 'Mayson'),
(33, 'Hofer', 'Hofer'),
(34, 'rara', 'rara'),
(35, 'Mama', 'Mia'),
(36, 'hhhhh', 'hhhhh'),
(37, 'hbbbbbhhhh', 'hbbbbbhhhh'),
(38, 'fname1', 'lname1'),
(39, '', ''),
(40, 'jhjhbjjh111112222', 'hbhbjhbj'),
(41, '9090909', '90999090'),
(42, '34343', '43434'),
(43, 'sas', 'sasa'),
(44, 'cccc', 'cccc'),
(45, 'ghhghg', 'ghghg'),
(46, 'ffff', 'fff'),
(47, 'vvvvv', 'vvvvv');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `ISBN` varchar(200) NOT NULL,
  `media_type` enum('book','cd','dvd') DEFAULT NULL,
  `media_title` varchar(300) NOT NULL,
  `media_image` varchar(1000) DEFAULT NULL,
  `media_description` text DEFAULT NULL,
  `media_publish_date` date DEFAULT NULL,
  `media_status` enum('available','reserved') DEFAULT NULL,
  `fk_author_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_publisher_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`ISBN`, `media_type`, `media_title`, `media_image`, `media_description`, `media_publish_date`, `media_status`, `fk_author_id`, `fk_publisher_id`) VALUES
('006236491X', 'cd', 'The Art of Racing in the Rain', 'https://images-na.ssl-images-amazon.com/images/I/51Mo724WsfL._SX331_BO1,204,203,200_.jpg', 'The New York Times bestselling novel from Garth Stein, a heart wrenching but deeply funny and ultimately uplifting story of family, love, loyalty, and hope a captivating look at the wonders and absurdities of human life . . . as only a dog could tell it.', '2019-07-30', 'available', 17, 6),
('0062797158', 'cd', 'The Tattooist of Auschwitz', 'https://images-na.ssl-images-amazon.com/images/I/81XAhkfzn-L._AC_SR201,266_.jpg', 'In April 1942, Lale Sokolov, a Slovakian Jew, is forcibly transported to the concentration camps at Auschwitz Birkenau. When his captors discover that he speaks several languages, he is put to work as a Taetowierer (the German word for tattooist), tasked with permanently marking his fellow prisoners.', '2018-09-04', 'available', 16, 5),
('0316055441', 'cd', 'The Goldfinch', 'https://images-na.ssl-images-amazon.com/images/I/41p4amaYISL._SX317_BO1,204,203,200_.jpg', 'Theo Decker, a 13-year-old New Yorker, miraculously survives an accident that kills his mother. Abandoned by his father, Theo is taken in by the family of a wealthy friend. Bewildered by his strange new home on Park Avenue, disturbed by schoolmates who don\'t know how to talk to him, and tormented above all by a longing for his mother, he clings to the one thing that reminds him of her: a small, mysteriously captivating painting that ultimately draws Theo into a wealthy and insular art community.', '2015-04-07', 'available', 15, 4),
('0399588191', 'dvd', 'Born a Crime: Stories from a South African Childhood ', 'https://images-na.ssl-images-amazon.com/images/I/5102ogTDCGL._SX331_BO1,204,203,200_.jpg', 'Trevor Noah\'s unlikely path from apartheid South Africa to the desk of The Daily Show began with a criminal act: his birth. Trevor was born to a white Swiss father and a black Xhosa mother at a time when such a union was punishable by five years in prison. Living proof of his parents\' indiscretion, Trevor was kept mostly indoors for the earliest years of his life, bound by the extreme and often absurd measures his mother took to hide him from a government that could, at any moment, steal him away. Finally liberated by the end of South Africa\'s tyrannical white rule, Trevor and his mother set forth on a grand adventure, living openly and freely and embracing the opportunities won by a centuries-long struggle.', '2019-02-12', 'available', 21, 10),
('0451494342', 'dvd', 'The Girl Who Lived Twice', 'https://images-na.ssl-images-amazon.com/images/I/51xn-uqRhnL._SX322_BO1,204,203,200_.jpg', 'Lisbeth Salander--the fierce, unstoppable girl with the dragon tattoo--has disappeared. She\'s sold her apartment in Stockholm. She\'s gone silent electronically. She\'s told no one where she is. And no one is aware that at long last she\'s got her primal enemy, her twin sister, Camilla, squarely in her sights.', '2019-08-27', 'available', 14, 3),
('0735219095', 'dvd', 'Where the Crawdads Sing', 'https://images-na.ssl-images-amazon.com/images/I/51j5p18mJNL._SX330_BO1,204,203,200_.jpg', 'For years, rumors of the \"Marsh Girl\" have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life--until the unthinkable happens.', '2018-08-14', 'available', 13, 2),
('1250066212', 'book', 'A Better Man', 'https://images-na.ssl-images-amazon.com/images/I/51OMPDIrVnL._SX327_BO1,204,203,200_.jpg', 'Catastrophic spring flooding, blistering attacks in the media, and a mysterious disappearance greet Chief Inspector Armand Gamache as he returns to the Surete du Quebec in the latest novel by #1 New York Times bestselling author Louise Penny.', '2019-08-27', 'available', 12, 1),
('1524763136', 'book', 'Becoming', 'https://images-na.ssl-images-amazon.com/images/I/414JfiBCutL._SX327_BO1,204,203,200_.jpg', 'In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era. As First Lady of the United States of America-the first African American to serve in that role-she helped create the most welcoming and inclusive White House in history, while also establishing herself as a powerful advocate for women and girls in the U.S. and around the world, dramatically changing the ways that families pursue healthier and more active lives, and standing with her husband as he led America through some of its most harrowing moments. Along the way, she showed us a few dance moves, crushed Carpool Karaoke, and raised two down-to-earth daughters under an unforgiving media glare.', '2018-11-13', 'available', 19, 8),
('1546085181', 'book', 'Radicals, Resistance, and Revenge: The Left\'s Plot to Remake America', 'https://images-na.ssl-images-amazon.com/images/I/81Te5hke1PL.jpg', 'For two long years, Donald Trump\'s presidency has been under siege by the Left and their Deep State fellow travelers who concocted an outrageous case of conspiracy with Russia to keep Trump from doing what he was elected to do: secure America\'s borders, revive its economy, drain the Washington, D.C. Swamp and restore our constitutional republic.', '2019-08-27', 'available', 20, 9),
('1644450003', 'book', 'Milkman', 'https://images-na.ssl-images-amazon.com/images/I/41eOX0cBT8L._SX331_BO1,204,203,200_.jpg', 'In an unnamed city, middle sister stands out for the wrong reasons. She reads while walking, for one. And she has been taking French night classes downtown. So when a local paramilitary known as the milkman begins pursuing her, she suddenly becomes â€œinteresting,â€ the last thing she ever wanted to be. Despite middle sisterâ€™s attempts to avoid himâ€•and to keep her mother from finding out about her maybe-boyfriendâ€•rumors spread and the threat of violence lingers. Milkman is a story of the way inaction can have enormous repercussions, in a time when the wrong flag, wrong religion, or even a sunset can be subversive. Told with ferocious energy and sly, wicked humor, Milkman establishes Anna Burns as one of the most consequential voices of our day.', '2018-04-12', 'available', 12, 1),
('978-0399590504', 'book', 'Educated: A Memoir', 'https://images-na.ssl-images-amazon.com/images/I/41%2BaN7ZbS9L._SX327_BO1,204,203,200_.jpg', 'Born to survivalists in the mountains of Idaho, Tara Westover was seventeen the first time she set foot in a classroom. Her family was so isolated from mainstream society that there was no one to ensure the children received an education, and no one to intervene when one of Tara\'s older brothers became violent. When another brother got himself into college, Tara decided to try a new kind of life. Her quest for knowledge transformed her, taking her over oceans and across continents, to Harvard and to Cambridge University. Only then would she wonder if she\'d traveled too far, if there was still a way home.', '2018-02-20', 'available', 18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  `publisher_adress` varchar(200) DEFAULT NULL,
  `publisher_size` enum('big','medium','small') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`, `publisher_adress`, `publisher_size`) VALUES
(1, 'Minotaur Books', 'St. Martin’s Press; Publicity Department 175 5th Avenue, New York, NY 10010', 'big'),
(2, 'G.P. Putnam\'s Sons', '375 Hudson St. New York, NY 10014', 'medium'),
(3, 'Knopf', '1745 Broadway, New York, NY 10019', 'big'),
(4, 'Back Bay Books', '1271 Avenue of the Americas, 11th Floor, New York, NY 10020', 'big'),
(5, 'Harper Paperbacks', '195 Broadway, New York, NY 10007', 'medium'),
(6, 'Harper Paperbacks', '195 Broadway, New York, NY 10007', 'medium'),
(7, 'Random House', '1745 Broadway, New York, NY 10007', 'medium'),
(8, 'Crown Publishing Group', '1745 Broadway, New York, NY 10019', 'big'),
(9, 'Center Street', '290 Avenue of the Americas, New York, NY 10014', 'small'),
(10, 'Spiegel & Grau', '321 Hudson St. New York, NY 10014', 'small'),
(11, 'Bla publisher', 'bla bla street', 'big'),
(12, 'sdsdsdasdadasda121212121', 'sdasdasdsa1212121', 'big'),
(13, '909090909', '9090909090', 'big'),
(14, '', '', 'big'),
(15, 'sasa', 'sasa', 'big'),
(16, 'ccccc', 'ccccc', 'big'),
(17, 'sdd', 'jhgjg', 'big'),
(18, 'cdcdcdc', 'vvvvvvvv', 'big');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `authors` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publishers` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
