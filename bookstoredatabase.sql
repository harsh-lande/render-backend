-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 08:06 AM
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
-- Database: `bookstoredatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(10) NOT NULL,
  `admin_user_name` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', 'admin'),
(2, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `book_id` int(10) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_category` varchar(50) NOT NULL,
  `book_description` longtext NOT NULL,
  `book_price` int(4) NOT NULL,
  `book_img` varchar(50) NOT NULL,
  `book_time` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`book_id`, `book_name`, `book_category`, `book_description`, `book_price`, `book_img`, `book_time`) VALUES
(1, 'Brave New World', 'Suspence', 'Aldous Huxley\'s profoundly important classic of world literature, Brave New World is a searching vision of an unequal, technologically-advanced future where humans are genetically bred, socially indoctrinated, and pharmaceutically anesthetized to passively uphold an authoritarian ruling order–all at the cost of our freedom, full humanity, and perhaps also our souls. “A genius [who] who spent his life decrying the onward march of the Machine” (The New Yorker), Huxley was a man of incomparable talents: equally an artist, a spiritual seeker, and one of history’s keenest observers of human nature and civilization. Brave New World, his masterpiece, has enthralled and terrified millions of readers, and retains its urgent relevance to this day as both a warning to be heeded as we head into tomorrow and as thought-provoking, satisfying work of literature. Written in the shadow of the rise of fascism during the 1930s, Brave New World likewise speaks to a 21st-century world dominated by mass-entertainment, technology, medicine and pharmaceuticals, the arts of persuasion, and the hidden influence of elites.', 2500, 'book_img/81zE42gT3xL._SL1500_.jpg', 0),
(2, '1984', 'Suspence', 'Winston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching... A startling and haunting novel, 1984 creates an imaginary world that is completely convincing from start to finish. No one can deny the novel’s hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time.', 2500, 'book_img/71kxa1-0mfL._SL1500_.jpg', 0),
(3, 'The Road To Wigan Pier', 'Suspence', 'Before he authored the dystopian 1984 and the allegorical Animal Farm, George Orwell was a journalist, reporting on England\'s working class — an investigation that led him to examine democratic socialism. In the 1930s, the Left Book Club, a socialist group in England, sent George Orwell to investigate the poverty and mass unemployment in the industrial north of England. Once there, he went beyond the requests of the book club, to investigate the employed as well. Orwell chose to live as the coal miners did — sleeping in foul lodgings, subsisting on a meager diet, struggling to feed a family on a dismal wage, and going down into the hellish, backbreaking mines. What Orwell saw clarified his feelings about socialism, and in The Road to Wigan Pier, he pointedly tells why socialism, the only remedy to the shocking conditions he had witnessed, repelled so many normal decent people. Orwells code was a simple one, based on truth and deceny; he was important — and original — because he insisted on applying that code to his own Socialist comrades as well as to the class enemy...It is the best sociological reporting I know.— The New Yorker', 1500, 'book_img/71v88AfuQSL._SL1500_.jpg', 0),
(4, 'Crime and Punishment', 'Suspence', 'The two years before he wrote Crime and Punishment (1866) had been bad ones for Dostoyevsky. His wife and brother had died; the magazine he and his brother had started, Epoch, collapsed under its load of debt; and he was threatened with debtor\'s prison. With an advance that he managed to wangle for an unwritten novel, he fled to Wiesbaden, hoping to win enough at the roulette table to get himself out of debt. Instead, he lost all his money; he had to pawn his clothes and beg friends for loans to pay his hotel bill and get back to Russia. One of his begging letters went to a magazine editor, asking for an advance on yet another unwritten novel — which he described as Crime and Punishment. This extraordinary, vintage Russian classic, is reprinted here in the authoritative Constance Garnett translation.', 3500, 'book_img/81EcXiV-9WL._SL1500_.jpg', 0),
(5, 'Demons', 'Suspence', 'Inspired by the true story of a political murder that horried Russians in 1869, Fyodor Dostoevsky conceived of Demons as a novel-pamphlet in which he would say everything about the plague of materialist ideology that he saw infecting his native land. What emerged was a prophetic and ferociously funny masterpiece of ideology and murder in pre-revolutionary Russia.', 2000, 'book_img/71ZTGImfZZL._SL1500_.jpg', 0),
(6, 'Beyond Good & Evil', 'Suspence', 'In nine parts the book is designed to give the reader a comprehensive idea of Nietzsche\'s thought and style:  they span The Prejudices of Philsophers, The Free Spirit, religion, morals, scholarship, Our Virtues, Peoples and Fatherlands, and What Is Noble, as well as epigrams and a concluding poem.', 3000, 'book_img/81pLz6e3IJL._SL1500_.jpg', 0),
(7, 'Ordinary Men', 'Suspence', 'The shocking account of how a unit of average middle-aged Germans became the cold-blooded murderers of tens of thousands of Jews.', 3500, 'book_img/71NM4+tBi3L._SL1360_.jpg', 0),
(8, 'The Painted Bird', 'Suspence', '“In 1939, a six-year-old boy is sent by his anti-Nazi parents to a remote village in Poland where they believe he will be safe. Things happen, however, and the boy is left to roam the Polish countryside. . . . To the blond, blue-eyed peasants in this part of the country, the swarthy, dark-eyed boy who speaks the dialect of the educated class is either Jew, gypsy, vampire, or devil. They fear him and they fear what the Germans will do to them if he is found among them. So he must keep moving. In doing so, over a period of years, he observes every conceivable variation on the theme of horror” (Kirkus Reviews).', 2000, 'book_img/81gIh3Ye9SL._SL1500_.jpg', 0),
(9, 'Rape of Nanking', 'Suspence', 'The New York Times bestselling account of one of history\'s most brutal—and forgotten—massacres, when the Japanese army destroyed China\'s capital city on the eve of World War II, piecing together the abundant eyewitness reports into an undeniable tapestry of horror. (Adam Hochschild, Salon)', 3700, 'book_img/615eNb6XCwL._SL1360_.jpg', 0),
(10, 'Gulag Archipelago', 'Suspence', 'Volume 1 of the gripping epic masterpiece, Solzhenitsyn\'s chilling report of his arrest and interrogation, which exposed to the world the vast bureaucracy of secret police that haunted Soviet society. Features a new foreword by Anne Applebaum.', 2500, 'book_img/71m4x9+UKHL._SL1500_.jpg', 0),
(11, 'Mans Search for Meaning', 'Suspence', 'This edition is no longer in print. Please check ISBN: 9780807014271 for the most recent edition. Psychiatrist Viktor Frankl\'s memoir has riveted generations of readers with its descriptions of life in Nazi death camps and its lessons for spiritual survival. Between 1942 and 1945 Frankl labored in four different camps, including Auschwitz, while his parents, brother, and pregnant wife perished. Based on his own experience and the experiences of others he treated later in his practice, Frankl argues that we cannot avoid suffering but we can choose how to cope with it, find meaning in it, and move forward with renewed purpose. Frankl\'s theory-known as logotherapy, from the Greek word logos (meaning)-holds that our primary drive in life is not pleasure, as Freud maintained, but the discovery and pursuit of what we personally find meaningful.', 1500, 'book_img/71OLtGMB0PL._SL1500_.jpg', 0),
(12, 'Modern Man In Search of a Soul', 'Suspence', 'Modern Man in Search of a Soul is a comprehensive introduction to the thought of Carl Gustav Jung. In this book, Jung examines some of the most contested and crucial areas in the field of analytical psychology, including dream analysis, the primitive unconscious, and the relationship between psychology and religion. Additionally, Jung looks at the differences between his theories and those of Sigmund Freud, providing a valuable basis for anyone interested in the fundamentals of psychoanalysis. This book is widely considered one of the most important books in the field of psychology.', 2000, 'book_img/91qYTvflcHL._SL1500_.jpg', 0),
(13, 'Maps of Meaning: The Architecture of Belief', 'Suspence', 'Why have people from different cultures and eras formulated myths and stories with similar structures? What does this similarity tell us about the mind, morality, and structure of the world itself? From the author of 12 Rules for Life: An Antidote to Chaos comes a provocative hypothesis that explores the connection between what modern neuropsychology tells us about the brain and what rituals, myths, and religious stories have long narrated. A cutting-edge work that brings together neuropsychology, cognitive science, and Freudian and Jungian approaches to mythology and narrative, Maps of Meaning presents a rich theory that makes the wisdom and meaning of myth accessible to the critical modern mind.', 3000, 'book_img/61OGpzaVLvL._SL1500_.jpg', 0),
(14, 'A History of Religious Ideas', 'Suspence', 'No one has done so much as Mr. Eliade to inform literature students in the West about primitive and Oriental religions. . . . Everyone who cares about the human adventure will find new information and new angles of vision.— Martin E. Marty, New York Times Book Review', 1500, 'book_img/518Z7q3EdNL._SL1000_.jpg', 0),
(15, 'Affective Neuroscience', 'Suspence', 'Some investigators have argued that emotions, especially animal emotions, are illusory concepts outside the realm of scientific inquiry. However, with advances in neurobiology and neuroscience, researchers are demonstrating that this position is wrong as they move closer to a lasting understanding of the biology and psychology of emotion. In Affective Neuroscience, Jaak Panksepp provides the most up-to-date information about the brain-operating systems that organize the fundamental emotional tendencies of all mammals. Presenting complex material in a readable manner, the book offers a comprehensive summary of the fundamental neural sources of human and animal feelings, as well as a conceptual framework for studying emotional systems of the brain. Panksepp approaches emotions from the perspective of basic emotion theory but does not fail to address the complex issues raised by constructionist approaches. These issues include relations to human consciousness and the psychiatric implications of this knowledge. The book includes chapters on sleep and arousal, pleasure and fear systems, the sources of rage and anger, and the neural control of sexuality, as well as the more subtle emotions related to maternal care, social loss, and playfulness. Representing a synthetic integration of vast amounts of neurobehavioral knowledge, including relevant neuroanatomy, neurophysiology, and neurochemistry, this book will be one of the most important contributions to understanding the biology of emotions since Darwins The Expression of the Emotions in Man and Animals', 3000, 'book_img/71bVN8ZwdwL._SL1360_.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`) VALUES
(1, 'Suspence'),
(2, 'Architecture'),
(3, 'Competitive Exam'),
(4, 'Programming'),
(5, 'Web Design'),
(6, 'Business'),
(7, 'Comics'),
(8, 'Sport'),
(9, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `contact_table`
--

CREATE TABLE `contact_table` (
  `contact_id` int(10) NOT NULL,
  `contact_full_name` varchar(100) NOT NULL,
  `contact_actual_id` varchar(100) NOT NULL,
  `contact_mobile_number` varchar(15) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `contact_message` longtext NOT NULL,
  `contact_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_table`
--

INSERT INTO `contact_table` (`contact_id`, `contact_full_name`, `contact_actual_id`, `contact_mobile_number`, `contact_email`, `contact_message`, `contact_time`) VALUES
(1, 'Alan Batr', '', '77470000000', 'alanbatr@gmail.com', 'Awesome Books.', '1554092678'),
(2, 'Mergen Altai', '', '77470000000', 'mergenaltai@gmail.com', 'Best Books', '1554201509'),
(3, 'Saq Kipchak', '', '77470000000', 'saqkipchak@gmail.com', 'Looking For New Books', '1554219813');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(10) NOT NULL,
  `order_name` varchar(30) NOT NULL,
  `order_address` varchar(200) NOT NULL,
  `order_pincode` int(20) NOT NULL,
  `order_city` varchar(30) NOT NULL,
  `order_state` varchar(30) NOT NULL,
  `order_mobile` varchar(15) NOT NULL,
  `order_register_id` int(8) NOT NULL,
  `order_total_price` int(50) NOT NULL,
  `order_list_books` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `order_name`, `order_address`, `order_pincode`, `order_city`, `order_state`, `order_mobile`, `order_register_id`, `order_total_price`, `order_list_books`) VALUES
(3, 'Aditya Patil', 'oppo. Ghorpade hospital, Sangharsh chowk, Chandan Nagar, Kharadi Pune 411014', 441041, 'Pune', 'MH', '95522621616', 3, 4500, '(Name: Affective Neuroscience. Amount: 1), (Name: A History of Religious Ideas. Amount: 1), ');

-- --------------------------------------------------------

--
-- Table structure for table `register_table`
--

CREATE TABLE `register_table` (
  `register_id` int(10) NOT NULL,
  `register_full_name` varchar(100) NOT NULL,
  `register_user_name` varchar(50) NOT NULL,
  `register_password` varchar(30) NOT NULL,
  `register_contact_number` varchar(15) NOT NULL,
  `register_email` varchar(60) NOT NULL,
  `register_question` varchar(100) NOT NULL,
  `register_answer` varchar(50) NOT NULL,
  `register_profile_picture` varchar(50) NOT NULL DEFAULT 'profile_img/profile_default_picture.png',
  `register_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_table`
--

INSERT INTO `register_table` (`register_id`, `register_full_name`, `register_user_name`, `register_password`, `register_contact_number`, `register_email`, `register_question`, `register_answer`, `register_profile_picture`, `register_time`) VALUES
(2, 'Anurag', 'anurag123', 'anurag123', '785548754', 'anu@gmail.com', 'Which is your Favourite Movie ?', '123', 'profile_img/profile_default_picture.png', ''),
(3, 'Aditya Patil', 'adipatil', 'adipatil', '95522621616', 'adi@gmail.com', 'Which is your Favourite Movie ?', 'prometheus', 'profile_img/IMG_20250524_102348346_HDR_PORTRAIT (1', ''),
(4, 'aaa', 'aaa', 'aaaaaaaa', '5464215', 'adi@gmail.com', 'Which is your Favourite Actress?', 'asdsa', 'profile_img/profile_default_picture.png', '1752904960');

-- --------------------------------------------------------

--
-- Table structure for table `support_team_table`
--

CREATE TABLE `support_team_table` (
  `support_id` int(10) NOT NULL,
  `support_user_name` varchar(30) NOT NULL,
  `support_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_team_table`
--

INSERT INTO `support_team_table` (`support_id`, `support_user_name`, `support_password`) VALUES
(1, 'support', 'support'),
(2, 'support1', 'support2');

-- --------------------------------------------------------

--
-- Table structure for table `user_support_table`
--

CREATE TABLE `user_support_table` (
  `user_support_id` int(10) NOT NULL,
  `user_support_actual_id` int(10) NOT NULL,
  `user_support_email` varchar(255) NOT NULL,
  `user_support_subject` varchar(255) NOT NULL,
  `user_support_message` text NOT NULL,
  `user_support_status` enum('Open','Closed') DEFAULT 'Open',
  `user_support_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_support_table`
--

INSERT INTO `user_support_table` (`user_support_id`, `user_support_actual_id`, `user_support_email`, `user_support_subject`, `user_support_message`, `user_support_status`, `user_support_created_at`) VALUES
(1, 0, 'turkkhan@gmail.com', 'User error', 'Help with with error login system', 'Open', '2025-07-19 05:29:17'),
(2, 0, 'tatar@gmail.com', 'Delivery problem', 'Hi there, help me with delivery', 'Open', '2025-07-19 05:29:17'),
(3, 0, 'aslkhan@gmail.com', 'How to search books', 'Hello, I can not find books', 'Open', '2025-07-19 05:29:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_table`
--
ALTER TABLE `contact_table`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `register_table`
--
ALTER TABLE `register_table`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `support_team_table`
--
ALTER TABLE `support_team_table`
  ADD PRIMARY KEY (`support_id`);

--
-- Indexes for table `user_support_table`
--
ALTER TABLE `user_support_table`
  ADD PRIMARY KEY (`user_support_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_table`
--
ALTER TABLE `book_table`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_table`
--
ALTER TABLE `contact_table`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register_table`
--
ALTER TABLE `register_table`
  MODIFY `register_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_team_table`
--
ALTER TABLE `support_team_table`
  MODIFY `support_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_support_table`
--
ALTER TABLE `user_support_table`
  MODIFY `user_support_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
