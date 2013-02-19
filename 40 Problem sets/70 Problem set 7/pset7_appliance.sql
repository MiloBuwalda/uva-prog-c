--
-- Database: `jharvard_pset7`
--

CREATE DATABASE IF NOT EXISTS  `jharvard_pset7` ;


--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `jharvard_pset7`.`users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;


--
-- Data for table `jharvard_pset7`.`users`
--

INSERT INTO `jharvard_pset7`.`users` (`id`, `username`, `hash`) VALUES
(1, 'caesar', '$1$Y01fprd3$BA4jQZMm2rmb46EgU7RwN/'),
(2, 'chartier', '$1$NhaqO3f8$g4zPyTt2KSKdD7HnMl/nK0'),
(3, 'guest', '$1$3urY0m7m$PAsveAdEcMgzIyxSKF4cs0'),
(4, 'jharvard', '$1$FBPG1PE3$5S5/TSthr1WE4IhwriCpa.'),
(5, 'malan', '$1$4Y6Lag9d$0/d6AUh1s8jqxbIIWU/Yo/'),
(6, 'rbowden', '$1$wRzonFNh$8JvCED5GtPQ/sX.HUIdyj/'),
(7, 'skroob', '$1$ShNrTOQV$MJi15ovjzCu5gFOESuXBO.'),
(8, 'vigenere', '$1$baQJKVeH$y1w5GmhzdjADef2RCweYK0');
