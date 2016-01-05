

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_uas_webservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_laptops`
--

CREATE TABLE IF NOT EXISTS `t_laptops` (
  `laptop_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` text NOT NULL,
  `model` text NOT NULL,
  `release_years` text NOT NULL,
  PRIMARY KEY (`laptop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_laptops`
--

INSERT INTO `t_laptops` (`laptop_id`, `brand`, `model`, `release_years`) VALUES
(1, 'Vaio', 'sony-10', '2010'),
(2, 'Vaio', 'sony-13', '2007');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
