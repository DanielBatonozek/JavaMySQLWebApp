-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 23. zář 2024, 16:19
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `mydatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(64) NOT NULL,
  `gender` enum('Female','Male') NOT NULL,
  `type_of_insurance` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `date_of_birth`, `email`, `phone_number`, `gender`, `type_of_insurance`) VALUES
(1, 'John', 'Doe', '1990-02-15', 'john.doe1@example.com', '+420123456781', 'Male', 'Life insurance'),
(2, 'Jane', 'Smith', '1985-07-21', 'jane.smith2@example.com', '+420123456782', 'Female', 'Travel insurance'),
(3, 'Michael', 'Brown', '1978-03-10', 'michael.brown3@example.com', '+420123456783', 'Male', 'Long-term care insurance'),
(4, 'Emily', 'Johnson', '1995-08-14', 'emily.johnson4@example.com', '+420123456784', 'Female', 'General insurance'),
(5, 'Daniel', 'Davis', '1989-11-30', 'daniel.davis5@example.com', '+420123456785', 'Male', 'Renters insurance'),
(6, 'Sophia', 'Miller', '1992-12-05', 'sophia.miller6@example.com', '+420123456786', 'Female', 'Home insurance'),
(7, 'James', 'Garcia', '1980-09-07', 'james.garcia7@example.com', '+420123456787', 'Male', 'Life insurance'),
(8, 'Olivia', 'Martinez', '1993-06-22', 'olivia.martinez8@example.com', '+420123456788', 'Female', 'Travel insurance'),
(9, 'David', 'Lopez', '1984-04-19', 'david.lopez9@example.com', '+420123456789', 'Male', 'Long-term care insurance'),
(10, 'Mia', 'Gonzalez', '1991-01-13', 'mia.gonzalez10@example.com', '+420123456790', 'Female', 'General insurance'),
(11, 'William', 'Wilson', '1983-05-29', 'william.wilson11@example.com', '+420123456791', 'Male', 'Renters insurance'),
(12, 'Isabella', 'Anderson', '1988-08-11', 'isabella.anderson12@example.com', '+420123456792', 'Female', 'Home insurance'),
(13, 'Liam', 'Thomas', '1994-04-03', 'liam.thomas13@example.com', '+420123456793', 'Male', 'Life insurance'),
(14, 'Amelia', 'Taylor', '1997-02-18', 'amelia.taylor14@example.com', '+420123456794', 'Female', 'Travel insurance'),
(15, 'Noah', 'Moore', '1979-12-22', 'noah.moore15@example.com', '+420123456795', 'Male', 'Long-term care insurance'),
(16, 'Ava', 'Jackson', '1996-07-19', 'ava.jackson16@example.com', '+420123456796', 'Female', 'General insurance'),
(17, 'Logan', 'Martin', '1987-10-09', 'logan.martin17@example.com', '+420123456797', 'Male', 'Renters insurance'),
(18, 'Mason', 'Lee', '1986-06-05', 'mason.lee18@example.com', '+420123456798', 'Male', 'Home insurance'),
(19, 'Charlotte', 'Perez', '1990-09-12', 'charlotte.perez19@example.com', '+420123456799', 'Female', 'Life insurance'),
(20, 'Lucas', 'Harris', '1982-03-14', 'lucas.harris20@example.com', '+420123456800', 'Male', 'Travel insurance'),
(21, 'Harper', 'Clark', '1981-11-28', 'harper.clark21@example.com', '+420123456801', 'Female', 'Long-term care insurance'),
(22, 'Elijah', 'Lewis', '1993-01-10', 'elijah.lewis22@example.com', '+420123456802', 'Male', 'General insurance'),
(23, 'Lily', 'Walker', '1995-04-16', 'lily.walker23@example.com', '+420123456803', 'Female', 'Renters insurance'),
(24, 'Benjamin', 'Hall', '1985-08-25', 'benjamin.hall24@example.com', '+420123456804', 'Male', 'Home insurance'),
(25, 'Emma', 'Allen', '1992-12-08', 'emma.allen25@example.com', '+420123456805', 'Female', 'Life insurance'),
(26, 'Jacob', 'Young', '1977-05-06', 'jacob.young26@example.com', '+420123456806', 'Male', 'Travel insurance'),
(27, 'Aiden', 'King', '1989-07-03', 'aiden.king27@example.com', '+420123456807', 'Male', 'Long-term care insurance'),
(28, 'Ella', 'Wright', '1991-03-26', 'ella.wright28@example.com', '+420123456808', 'Female', 'General insurance'),
(29, 'Lucas', 'Scott', '1984-01-18', 'lucas.scott29@example.com', '+420123456809', 'Male', 'Renters insurance'),
(30, 'Mia', 'Torres', '1994-06-11', 'mia.torres30@example.com', '+420123456810', 'Female', 'Home insurance'),
(31, 'Henry', 'Nguyen', '1979-09-17', 'henry.nguyen31@example.com', '+420123456811', 'Male', 'Life insurance'),
(32, 'Emily', 'Hill', '1988-11-07', 'emily.hill32@example.com', '+420123456812', 'Female', 'Travel insurance'),
(33, 'Ethan', 'Ramirez', '1997-10-15', 'ethan.ramirez33@example.com', '+420123456813', 'Male', 'Long-term care insurance'),
(34, 'Sophia', 'Roberts', '1990-05-20', 'sophia.roberts34@example.com', '+420123456814', 'Female', 'General insurance'),
(35, 'Jackson', 'Carter', '1986-03-30', 'jackson.carter35@example.com', '+420123456815', 'Male', 'Renters insurance'),
(36, 'Isabella', 'Mitchell', '1987-12-21', 'isabella.mitchell36@example.com', '+420123456816', 'Female', 'Home insurance'),
(37, 'Oliver', 'Perez', '1981-02-28', 'oliver.perez37@example.com', '+420123456817', 'Male', 'Life insurance'),
(38, 'Chloe', 'Robinson', '1994-07-23', 'chloe.robinson38@example.com', '+420123456818', 'Female', 'Travel insurance'),
(39, 'Evan', 'Martinez', '1983-10-02', 'evan.martinez39@example.com', '+420123456819', 'Male', 'Long-term care insurance'),
(40, 'Grace', 'Gonzalez', '1996-11-09', 'grace.gonzalez40@example.com', '+420123456820', 'Female', 'General insurance'),
(41, 'Lucas', 'Davis', '1991-04-07', 'lucas.davis41@example.com', '+420123456821', 'Male', 'Renters insurance'),
(42, 'Ava', 'Hernandez', '1984-09-25', 'ava.hernandez42@example.com', '+420123456822', 'Female', 'Home insurance'),
(43, 'Michael', 'Moore', '1978-12-19', 'michael.moore43@example.com', '+420123456823', 'Male', 'Life insurance'),
(44, 'Abigail', 'Thompson', '1995-01-29', 'abigail.thompson44@example.com', '+420123456824', 'Female', 'Travel insurance'),
(45, 'Daniel', 'Jones', '1992-06-13', 'daniel.jones45@example.com', '+420123456825', 'Male', 'Long-term care insurance'),
(46, 'Ella', 'Martin', '1986-05-02', 'ella.martin46@example.com', '+420123456826', 'Female', 'General insurance'),
(47, 'Joshua', 'Lee', '1982-08-14', 'joshua.lee47@example.com', '+420123456827', 'Male', 'Renters insurance'),
(48, 'Charlotte', 'White', '1997-03-05', 'charlotte.white48@example.com', '+420123456828', 'Female', 'Home insurance'),
(49, 'William', 'Harris', '1980-10-28', 'william.harris49@example.com', '+420123456829', 'Male', 'Life insurance'),
(50, 'Amelia', 'Clark', '1993-07-17', 'amelia.clark50@example.com', '+420123456830', 'Female', 'Travel insurance'),
(51, 'Oliver', 'Taylor', '1990-11-23', 'oliver.taylor51@example.com', '+420123456831', 'Male', 'Life insurance'),
(52, 'Ava', 'Williams', '1987-05-19', 'ava.williams52@example.com', '+420123456832', 'Female', 'Travel insurance'),
(53, 'Liam', 'Jones', '1992-02-14', 'liam.jones53@example.com', '+420123456833', 'Male', 'Long-term care insurance'),
(54, 'Sophia', 'Brown', '1983-12-11', 'sophia.brown54@example.com', '+420123456834', 'Female', 'General insurance'),
(55, 'Noah', 'Davis', '1994-09-17', 'noah.davis55@example.com', '+420123456835', 'Male', 'Renters insurance'),
(56, 'Isabella', 'Miller', '1991-06-28', 'isabella.miller56@example.com', '+420123456836', 'Female', 'Home insurance'),
(57, 'Lucas', 'Garcia', '1989-04-20', 'lucas.garcia57@example.com', '+420123456837', 'Male', 'Life insurance'),
(58, 'Mia', 'Martinez', '1996-10-07', 'mia.martinez58@example.com', '+420123456838', 'Female', 'Travel insurance'),
(59, 'Ethan', 'Lopez', '1985-08-30', 'ethan.lopez59@example.com', '+420123456839', 'Male', 'Long-term care insurance'),
(60, 'Emily', 'Gonzalez', '1993-03-18', 'emily.gonzalez60@example.com', '+420123456840', 'Female', 'General insurance'),
(61, 'Alexander', 'Wilson', '1981-07-11', 'alexander.wilson61@example.com', '+420123456841', 'Male', 'Renters insurance'),
(62, 'Charlotte', 'Anderson', '1988-01-02', 'charlotte.anderson62@example.com', '+420123456842', 'Female', 'Home insurance'),
(63, 'Elijah', 'Thomas', '1997-11-21', 'elijah.thomas63@example.com', '+420123456843', 'Male', 'Life insurance'),
(64, 'Harper', 'Moore', '1990-02-26', 'harper.moore64@example.com', '+420123456844', 'Female', 'Travel insurance'),
(65, 'Daniel', 'Jackson', '1979-05-13', 'daniel.jackson65@example.com', '+420123456845', 'Male', 'Long-term care insurance'),
(66, 'Ava', 'Martin', '1995-06-29', 'ava.martin66@example.com', '+420123456846', 'Female', 'General insurance'),
(67, 'William', 'Lee', '1986-04-07', 'william.lee67@example.com', '+420123456847', 'Male', 'Renters insurance'),
(68, 'Emma', 'Perez', '1983-12-22', 'emma.perez68@example.com', '+420123456848', 'Female', 'Home insurance'),
(69, 'James', 'Clark', '1992-09-09', 'james.clark69@example.com', '+420123456849', 'Male', 'Life insurance'),
(70, 'Amelia', 'Lewis', '1984-11-16', 'amelia.lewis70@example.com', '+420123456850', 'Female', 'Travel insurance'),
(71, 'Benjamin', 'Walker', '1997-03-27', 'benjamin.walker71@example.com', '+420123456851', 'Male', 'Long-term care insurance'),
(72, 'Lily', 'Hall', '1991-12-19', 'lily.hall72@example.com', '+420123456852', 'Female', 'General insurance'),
(73, 'Logan', 'Allen', '1988-08-25', 'logan.allen73@example.com', '+420123456853', 'Male', 'Renters insurance'),
(74, 'Olivia', 'Young', '1985-06-05', 'olivia.young74@example.com', '+420123456854', 'Female', 'Home insurance'),
(75, 'Mason', 'Hernandez', '1990-04-17', 'mason.hernandez75@example.com', '+420123456855', 'Male', 'Life insurance'),
(76, 'Isabella', 'King', '1989-10-19', 'isabella.king76@example.com', '+420123456856', 'Female', 'Travel insurance'),
(77, 'Ethan', 'Wright', '1994-05-14', 'ethan.wright77@example.com', '+420123456857', 'Male', 'Long-term care insurance'),
(78, 'Sophia', 'Scott', '1987-03-02', 'sophia.scott78@example.com', '+420123456858', 'Female', 'General insurance'),
(79, 'Alexander', 'Green', '1980-09-08', 'alexander.green79@example.com', '+420123456859', 'Male', 'Renters insurance'),
(80, 'Mia', 'Baker', '1993-11-23', 'mia.baker80@example.com', '+420123456860', 'Female', 'Home insurance'),
(81, 'Jacob', 'Adams', '1986-07-10', 'jacob.adams81@example.com', '+420123456861', 'Male', 'Life insurance'),
(82, 'Ava', 'Nelson', '1995-01-16', 'ava.nelson82@example.com', '+420123456862', 'Female', 'Travel insurance'),
(83, 'Logan', 'Hill', '1984-08-30', 'logan.hill83@example.com', '+420123456863', 'Male', 'Long-term care insurance'),
(84, 'Chloe', 'Ramirez', '1991-09-05', 'chloe.ramirez84@example.com', '+420123456864', 'Female', 'General insurance'),
(85, 'Elijah', 'Campbell', '1983-12-25', 'elijah.campbell85@example.com', '+420123456865', 'Male', 'Renters insurance'),
(86, 'Isabella', 'Roberts', '1992-07-20', 'isabella.roberts86@example.com', '+420123456866', 'Female', 'Home insurance'),
(87, 'William', 'Carter', '1989-05-18', 'william.carter87@example.com', '+420123456867', 'Male', 'Life insurance'),
(88, 'Emily', 'Mitchell', '1982-02-24', 'emily.mitchell88@example.com', '+420123456868', 'Female', 'Travel insurance'),
(89, 'Henry', 'Perez', '1994-12-09', 'henry.perez89@example.com', '+420123456869', 'Male', 'Long-term care insurance'),
(90, 'Amelia', 'Moore', '1981-06-22', 'amelia.moore90@example.com', '+420123456870', 'Female', 'General insurance'),
(91, 'James', 'Stewart', '1987-04-14', 'james.stewart91@example.com', '+420123456871', 'Male', 'Renters insurance'),
(92, 'Emma', 'Morris', '1996-03-06', 'emma.morris92@example.com', '+420123456872', 'Female', 'Home insurance'),
(93, 'Daniel', 'Gomez', '1980-11-27', 'daniel.gomez93@example.com', '+420123456873', 'Male', 'Life insurance'),
(94, 'Olivia', 'Morgan', '1989-01-30', 'olivia.morgan94@example.com', '+420123456874', 'Female', 'Travel insurance'),
(95, 'Michael', 'Reed', '1991-10-12', 'michael.reed95@example.com', '+420123456875', 'Male', 'Long-term care insurance'),
(96, 'Lily', 'Bell', '1997-05-03', 'lily.bell96@example.com', '+420123456876', 'Female', 'General insurance'),
(97, 'Benjamin', 'Murphy', '1985-03-19', 'benjamin.murphy97@example.com', '+420123456877', 'Male', 'Renters insurance'),
(98, 'Ava', 'Bailey', '1983-08-24', 'ava.bailey98@example.com', '+420123456878', 'Female', 'Home insurance'),
(99, 'Sophia', 'Morris', '1982-11-15', 'sophia.morris99@example.com', '+420123456879', 'Female', 'Life insurance'),
(100, 'Jackson', 'Rogers', '1990-01-08', 'jackson.rogers100@example.com', '+420123456880', 'Male', 'Travel insurance'),
(101, 'Lily', 'Reed', '1993-03-22', 'lily.reed101@example.com', '+420123456881', 'Female', 'Long-term care insurance'),
(102, 'Henry', 'Cook', '1989-04-12', 'henry.cook102@example.com', '+420123456882', 'Male', 'General insurance'),
(103, 'Mia', 'Morgan', '1986-09-14', 'mia.morgan103@example.com', '+420123456883', 'Female', 'Renters insurance'),
(104, 'Ethan', 'Bell', '1992-10-09', 'ethan.bell104@example.com', '+420123456884', 'Male', 'Home insurance'),
(105, 'Amelia', 'Howard', '1995-11-25', 'amelia.howard105@example.com', '+420123456885', 'Female', 'Life insurance'),
(106, 'William', 'Ward', '1984-06-03', 'william.ward106@example.com', '+420123456886', 'Male', 'Travel insurance'),
(107, 'Emma', 'Cooper', '1997-07-15', 'emma.cooper107@example.com', '+420123456887', 'Female', 'Long-term care insurance'),
(108, 'Noah', 'Flores', '1991-02-19', 'noah.flores108@example.com', '+420123456888', 'Male', 'General insurance'),
(109, 'Olivia', 'Bennett', '1985-05-26', 'olivia.bennett109@example.com', '+420123456889', 'Female', 'Renters insurance'),
(110, 'Lucas', 'Jenkins', '1988-12-29', 'lucas.jenkins110@example.com', '+420123456890', 'Male', 'Home insurance'),
(111, 'Harper', 'Perry', '1981-08-18', 'harper.perry111@example.com', '+420123456891', 'Female', 'Life insurance'),
(112, 'Aiden', 'Powell', '1994-04-21', 'aiden.powell112@example.com', '+420123456892', 'Male', 'Travel insurance'),
(113, 'Sophia', 'Long', '1996-06-06', 'sophia.long113@example.com', '+420123456893', 'Female', 'Long-term care insurance'),
(114, 'Benjamin', 'Ross', '1990-09-19', 'benjamin.ross114@example.com', '+420123456894', 'Male', 'General insurance'),
(115, 'Lily', 'Rivera', '1989-03-11', 'lily.rivera115@example.com', '+420123456895', 'Female', 'Renters insurance'),
(116, 'Mason', 'Peterson', '1993-01-29', 'mason.peterson116@example.com', '+420123456896', 'Male', 'Home insurance'),
(117, 'Emily', 'Wood', '1987-11-23', 'emily.wood117@example.com', '+420123456897', 'Female', 'Life insurance'),
(118, 'James', 'Brooks', '1982-02-10', 'james.brooks118@example.com', '+420123456898', 'Male', 'Travel insurance'),
(119, 'Chloe', 'Gray', '1995-10-07', 'chloe.gray119@example.com', '+420123456899', 'Female', 'Long-term care insurance'),
(120, 'Logan', 'Kelly', '1992-08-25', 'logan.kelly120@example.com', '+420123456900', 'Male', 'General insurance'),
(121, 'Mia', 'Sanders', '1988-03-16', 'mia.sanders121@example.com', '+420123456901', 'Female', 'Renters insurance'),
(122, 'Lucas', 'Price', '1985-12-05', 'lucas.price122@example.com', '+420123456902', 'Male', 'Home insurance'),
(123, 'Ella', 'Foster', '1994-01-30', 'ella.foster123@example.com', '+420123456903', 'Female', 'Life insurance'),
(124, 'Henry', 'Cruz', '1989-09-12', 'henry.cruz124@example.com', '+420123456904', 'Male', 'Travel insurance'),
(125, 'Ava', 'Butler', '1987-07-20', 'ava.butler125@example.com', '+420123456905', 'Female', 'Long-term care insurance'),
(126, 'Alexander', 'Barnes', '1991-05-01', 'alexander.barnes126@example.com', '+420123456906', 'Male', 'General insurance'),
(127, 'Charlotte', 'Gonzalez', '1980-11-15', 'charlotte.gonzalez127@example.com', '+420123456907', 'Female', 'Renters insurance'),
(128, 'Ethan', 'Henderson', '1996-03-18', 'ethan.henderson128@example.com', '+420123456908', 'Male', 'Home insurance'),
(129, 'Olivia', 'Coleman', '1993-06-08', 'olivia.coleman129@example.com', '+420123456909', 'Female', 'Life insurance'),
(130, 'Noah', 'Bailey', '1982-05-19', 'noah.bailey130@example.com', '+420123456910', 'Male', 'Travel insurance'),
(131, 'Sophia', 'Reed', '1988-08-17', 'sophia.reed131@example.com', '+420123456911', 'Female', 'Long-term care insurance'),
(132, 'Daniel', 'Ortiz', '1990-12-22', 'daniel.ortiz132@example.com', '+420123456912', 'Male', 'General insurance'),
(133, 'Chloe', 'James', '1995-02-14', 'chloe.james133@example.com', '+420123456913', 'Female', 'Renters insurance'),
(134, 'Liam', 'Brooks', '1986-07-10', 'liam.brooks134@example.com', '+420123456914', 'Male', 'Home insurance'),
(135, 'Mia', 'Reed', '1994-03-27', 'mia.reed135@example.com', '+420123456915', 'Female', 'Life insurance'),
(136, 'William', 'Mason', '1989-11-03', 'william.mason136@example.com', '+420123456916', 'Male', 'Travel insurance'),
(137, 'Amelia', 'Simpson', '1983-12-30', 'amelia.simpson137@example.com', '+420123456917', 'Female', 'Long-term care insurance'),
(138, 'James', 'Perez', '1997-04-15', 'james.perez138@example.com', '+420123456918', 'Male', 'General insurance'),
(139, 'Isabella', 'Foster', '1991-09-26', 'isabella.foster139@example.com', '+420123456919', 'Female', 'Renters insurance'),
(140, 'Elijah', 'Griffin', '1987-06-09', 'elijah.griffin140@example.com', '+420123456920', 'Male', 'Home insurance'),
(141, 'Charlotte', 'Cooper', '1993-02-28', 'charlotte.cooper141@example.com', '+420123456921', 'Female', 'Life insurance'),
(142, 'Daniel', 'Roberts', '1985-05-11', 'daniel.roberts142@example.com', '+420123456922', 'Male', 'Travel insurance'),
(143, 'Olivia', 'Morgan', '1996-11-12', 'olivia.morgan143@example.com', '+420123456923', 'Female', 'Long-term care insurance'),
(144, 'Mason', 'Clark', '1982-01-29', 'mason.clark144@example.com', '+420123456924', 'Male', 'General insurance'),
(145, 'Sophia', 'Johnson', '1994-04-16', 'sophia.johnson145@example.com', '+420123456925', 'Female', 'Renters insurance'),
(146, 'Ethan', 'Rivera', '1990-07-06', 'ethan.rivera146@example.com', '+420123456926', 'Male', 'Home insurance');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
