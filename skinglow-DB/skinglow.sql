-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 09:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skinglow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `session_uniqeID` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`session_uniqeID`, `product_id`, `id`, `user_id`, `itemname`, `quantity`, `price`) VALUES
('860022800', 1, 1, 1002, 'Beauty set', 10, 180),
('860023074', 5, 2, 1002, 'Night Set\n', 9, 250),
('860023210', 7, 3, 1002, 'Rose Whipped Shea Body Butter', 1, 45),
('860027108', 1, 4, 1001, 'Beauty set', 1, 180),
('860027314', 2, 5, 1001, 'Pure Rosehip Seed Oil\n', 1, 42),
('860081648', 1, 6, 1019, 'Beauty set', 8, 180),
('860081648', 5, 7, 1019, 'Night Set\n', 7, 250),
('860081708', 4, 8, 1019, 'Glycolic Acid 7% Toning Solution\n', 9, 130),
('860084702', 1, 9, 1019, 'Beauty set', 1, 180),
('028271076', 3, 10, 1003, 'Brightening Facial Scrub\n', 1, 30),
('028271104', 2, 11, 1003, 'Pure Rosehip Seed Oil\n', 1, 42),
('028271104', 8, 12, 1003, 'Glow bath set', 1, 380),
('028404916', 2, 13, 1003, 'Pure Rosehip Seed Oil\n', 1, 42),
('028426040', 5, 16, 1003, 'Night Set\n', 9, 250);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(13, 'shurooq', 'shurooq@gmail.com', 'Hi, I like your shop'),
(14, 'hind', 'hind@gmail.com', 'Can you add more sets! I love them '),
(15, 'amani', 'amani@gmail.com', 'rosehip oil is good'),
(16, 'renad', 'Renad@gmail.com', 'nice products!!');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `psize` varchar(255) NOT NULL,
  `price` double(10,0) NOT NULL,
  `pdesc` text NOT NULL,
  `img` text NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `psize`, `price`, `pdesc`, `img`, `stock`) VALUES
(1, 'Beauty set', '1.7 oz, 0.53 oz, 0.3 oz', 180, 'The beauty set consist of three products.A Facial Cream(1.1 oz) combines clean, weightless moisturizing formula of Resveratrol and Hyaluronic Acid that will help in diminishing existing skin damage, minimizing further oxidative skin damage, maintaining skin hydration & firmness, and brightening & balancing skin tone. An Eye Cream(0.53 oz) is rich in fermentation, peptides, and ceramides; this non-greasy eye treatment helps to firm, moisturize, and build elasticity for a youthful and rested look.  A lip balm(0.3 oz )that Soothe and soften dry, chapped lips. Fortified with a nourishing cocktail of Honey, Beeswax and Colloidal Oatmeal, the concentrated treatment attracts and locks in moisture, whilst conditioning and restoring comfortable, deeply hydrated lips.', '1.jpg', 100),
(2, 'Pure Rosehip Seed Oil\n', '30 ml\r\n', 42, 'A rich, amber colored oil from the ripened fruit of the rose known as hips. Contains natural Retinol Acid (Vitamin A) and is well sought after for helping to replenish and restore mature or sun-exposed skin.\n', '2.jpg', 100),
(3, 'Brightening Facial Scrub\n', '118 ml\r\n', 30, 'Sea kelp super-nutrients soften and detox while lemon peel and French green clay cleanse. Madonna lily brings the brightness to round out this refreshing facial scrub.\n', '3.jpg', 100),
(4, 'Glycolic Acid 7% Toning Solution\n', ' 7 fl oz', 130, ' A Glycolic Acid 7% Toning Solution. The AHA solution works to gently exfoliate the surface of the skin, helping to combat the dead skin cell build up that can contribute to dullness, textural irregularities and congestion. pH balanced for optimal efficacy, the glycolic acid toner is infused with tasmanian pepperberry and aloe vera to help soothe the skin, alongside ginseng root to promote a radiant finish. Incorporate into your skincare routine to support a glowing, smooth and refined-looking complexion.', '4.jpg', 100),
(5, 'Night Set\n', '6.42 fl oz, 6.42 fl oz, 4 fl oz\n', 250, 'A purifying foaming face cleanser deeply cleans pores, drawing out dirt, oil, impurities and build up in the skin with its hero blend of moringa, papaya enzyme, green clay and sodium PCA. The soap-free, oil-free and pH-balanced formula ensures skin is gently cleaned and exfoliated, without over-stripping, leaving your complexion feeling supple and refreshed. Vitamin C brightening serum helps to boost radiance, even out skin tone, and reduce the appearance of pigmentation. A moisturizing face cream that is non-greasy, light weighted with Avocado Oil and Vitamins E, B5 & B3 is clinically tested to fully restore the skin\'s moisture barrier in 1 week.\n', '55.jpg', 100),
(6, 'Anti-Wrinkle Face Cream', '1.7 oz', 49, 'Eucerin®️ Q10 Anti-Wrinkle Face Cream is an anti-wrinkle moisturizing cream made for dry, sensitive skin. It is specially formulated to be non-irritating and to gently reduce the look of wrinkles and the signs of aging. Reduces the look of fine lines and wrinkles in as little as 5 weeks, Firms and moisturizes for softer, smoother looking skin, Can be used alone or under make-up, Fragrance-free, alcohol-free, non-comedogenic.', '6.jpg', 100),
(7, 'Rose Whipped Shea Body Butter', '15.0 oz', 45, 'Rose Whipped Shea Body Butter is the perfect skin-treat after bath or as a skin-refresher. The luscious scent of the rose will leave your skin feeling soft, hydrated and smelling amazing. Moroccan Argan Oil helps to improve skin elasticity, balance and help hydrate dry skin with lipids, fatty acids and vitamin E. Rosehip Oil is known to help visibly refine skin\'s texture and promote a radiant glow. Natural Shea Butter is known to deeply moisturize, nourish and soften dry, skin while helping to promote elasticity', '7.jpg', 100),
(8, 'Glow bath set', '100ml, 150 ml, 250ml, 30 ml', 380, 'Bath Salts (100ml) which is a mineral rich Himalayan Pink Bath Salt is as pristine and natural as originally deposited by the ancient primal ocean. Himalayan bath soaks have been used to purify, relax, rejuvenate, and restore one\'s balance. It\'s light sesame formula glides on easily to moisturize dry skin. A body oil (150 ml) It\'s so sheer it vanishes into shower-damp skin leaving it soft and silky, with a radiant, healthy glow. No moisturizer can touch this experience. Coconut Body Scrub(250ml) to exfoliate and moisturize your skin. This reparative scrub gently exfoliates the skin to reveal your natural, healthy glow. Formulated with Certified Organic Coconut Oil and other good-for-you ingredients, your skin will be left feeling silky smooth and smelling like paradise. Coconut is rich in fatty acids, this ingredient deeply hydrates skin while keeping surface lipids intact for lasting hydration. A hand cream(30 ml) that is a rich, deeply moisturizing that creates a glove-like protective barrier to seal in moisture, repair cracks and soften overall texture.', '8.jpg', 100),
(9, 'Collagen Serum', '30 ml', 70, 'Spurs on topical collagen levels for younger, fuller and firmer skin. Rejuvenates skin from within with a concentrated combination of hydration and collagen. Adds essential hydration, smoothing out skin texture and adding luminosity to the skin.', '9.jpg', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `fname`, `lname`, `email`, `phone`, `address1`, `postcode`, `bday`, `country`, `gender`, `password`, `user_role`) VALUES
(1000, 'Munirahx', 'Munirah', 'Almoqbel', 'Munirah@gmail.com', '0559213657', 'Alkhobar', '32257', '2000-06-06', 'Saudi Arabia', 'female', '5d7ffe2c05cfbbcecda162a84964e8cd', 'A'),
(1001, 'Shurooq', 'Shurooq', 'A Bajandouh', 'shurooq@gmail.com', '0503906410', 'Dammam', '32299', '2000-12-23', 'Saudi Arabia', 'female', '6e0f32e14c69e2b0caccc1f7d54083eb', 'U'),
(1002, 'Renad', 'Renad', 'Alqahtani', 'Renad@gmail.com', '0558341234', 'Dahran', '32233', '2000-06-28', 'Saudi Arabia', 'female', '6f6cc5cd5a534792351b2431cfaaf1ad', 'U'),
(1003, 'Danyah', 'Danyah', 'Alharthi', 'Danyah@gmail.com', '0557232256', 'Alkhobar', '32395', '2000-06-27', 'Saudi Arabia', 'female', 'ae04cab8fc644a8a1f9c914a89593216', 'U'),
(1004, 'Fatemah', 'Fatemah', 'Almassary', 'Fatemah@gmail.com', '0559871122', 'Dammam', '32346', '2000-05-10', 'Saudi Arabia', 'female', '3c103eb04ee4dd5adcff71132ea381d1', 'U'),
(1005, 'Abeer', 'Abeer', 'Alqahtani', 'Abeer@gmail.com', '0537581290', 'Dammam', '32337', '1999-06-16', 'Saudi Arabia', 'female', 'd2d657ddc16aef79f017900f4d35520c', 'U'),
(1006, 'Ali', 'Ali', 'Alharthi', 'ali@gmail.com', '0589341738', 'Khobar', '32334', '1997-10-22', 'Saudi Arabia', 'male', '58e44ed8dfd68452672e2fd179789f27', 'U'),
(1007, 'Khaled', 'Khaled', 'Alqahtani', 'Khaled@gmail.com', '0558672341', 'Jeddah', '33425', '1996-10-16', 'Saudi Arabia', 'male', 'd251a84074f4d65bd5e7be6705c9c676', 'U'),
(1008, 'Omar', 'Omar', 'Alqarni', 'omar@gmail.com', '0506782934', 'Makkah', '32345', '1993-01-22', 'Saudi Arabia', 'male', '72e149085017429f419ba56c2a6906f2', 'U'),
(1009, 'Amal', 'Amal', 'Alghamdi', 'Amal@gmail.com', '0503562189', 'Dammam', '32245', '1998-04-09', 'Saudi Arabia', 'female', '72e149085017429f419ba56c2a6906f9', 'U'),
(1010, 'Danyah', 'Danyah', 'Alqahtani', 'DanyahA@gmail.com', '050666450', 'Dammam', '32244', '1999-02-22', 'Saudi Arabia', 'female', 'ae04cab8fc644a8a1f9c914a89593216', 'U'),
(1011, 'Emad', 'Emad', 'Alqarni', 'Emad@gmail.com', '0503322410', 'Dammam', '32345', '1990-06-26', 'Saudi Arabia', 'male', 'cfb8c03d4cb557eec84e291a256c9707', 'U'),
(1018, 'raghad', 'raghad', 'omar', 'raghad@gmail.com', '055768721', 'dmm', '322456', '1996-06-25', 'sa', 'female', 'd00f5d5217896fb7fd601412cb890830', 'U'),
(1019, 'noofxx', 'Noof', 'Alqarni', 'noof@gmail.com', '050986132', 'DMM', '32243', '1988-10-18', 'Saudi Arabia', 'female', 'd48cbe016a6fe32a37025eb145a95e2e', 'U');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
