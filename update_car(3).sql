-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 04:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `update_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininvoices`
--

CREATE TABLE `admininvoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `caryear` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `km` varchar(255) NOT NULL,
  `chassis` varchar(255) NOT NULL,
  `serviceCost` varchar(255) NOT NULL,
  `partCost` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admininvoices`
--

INSERT INTO `admininvoices` (`id`, `name`, `address`, `email`, `phone`, `caryear`, `engine`, `model`, `brand`, `registration`, `km`, `chassis`, `serviceCost`, `partCost`, `created_at`, `updated_at`) VALUES
(1, 'Roth Barry', 'Adipisci adipisicing', 'mifixotec@mailinator.com', '+1 (775) 898-6766', '1988', 'Libero cumque alias', 'Non sint quo et offi', 'Fugiat vitae error v', 'Accusantium eius quo', 'Et do voluptas ea in', 'Qui maiores est iust', 'Deserunt consectetur', 'In commodi saepe est', NULL, NULL),
(2, 'Roth Barry', 'Adipisci adipisicing', 'mifixotec@mailinator.com', '+1 (775) 898-6766', '1988', 'Libero cumque alias', 'Non sint quo et offi', 'Fugiat vitae error v', 'Accusantium eius quo', 'Et do voluptas ea in', 'Qui maiores est iust', 'Deserunt consectetur', 'In commodi saepe est', NULL, NULL),
(3, 'Roth Barry', 'Adipisci adipisicing', 'mifixotec@mailinator.com', '+1 (775) 898-6766', '1988', 'Libero cumque alias', 'Non sint quo et offi', 'Fugiat vitae error v', 'Accusantium eius quo', 'Et do voluptas ea in', 'Qui maiores est iust', 'Deserunt consectetur', 'In commodi saepe est', NULL, NULL),
(4, 'Roth Barry', 'Adipisci adipisicing', 'mifixotec@mailinator.com', '+1 (775) 898-6766', '1988', 'Libero cumque alias', 'Non sint quo et offi', 'Fugiat vitae error v', 'Accusantium eius quo', 'Et do voluptas ea in', 'Qui maiores est iust', 'Deserunt consectetur', 'In commodi saepe est', NULL, NULL),
(5, 'Urielle Kirkland', 'Et eos proident nec', 'wymixitel@mailinator.com', '+1 (374) 278-1217', '1993', 'Beatae molestiae Nam', 'Lorem obcaecati solu', 'Et laboris praesenti', 'Fugit quis sint nob', 'Cumque odio esse tot', 'Aut qui adipisicing', 'Adipisci natus error', 'Cumque ut esse numqu', NULL, NULL),
(6, 'Urielle Kirkland', 'Et eos proident nec', 'wymixitel@mailinator.com', '+1 (374) 278-1217', '1993', 'Beatae molestiae Nam', 'Lorem obcaecati solu', 'Et laboris praesenti', 'Fugit quis sint nob', 'Cumque odio esse tot', 'Aut qui adipisicing', 'Adipisci natus error', 'Cumque ut esse numqu', NULL, NULL),
(7, 'Valentine Pickett', 'Totam in modi ut sun', 'cadijoxih@mailinator.com', '+1 (263) 658-5551', '1991', 'Voluptas commodi lab', 'Optio dolor est min', 'Enim anim adipisci d', 'Sit facere voluptas', 'Adipisicing aliquam', 'Quasi obcaecati offi', 'Nulla qui eos non e', 'Consequatur nesciun', NULL, NULL),
(8, 'Valentine Pickett', 'Totam in modi ut sun', 'cadijoxih@mailinator.com', '+1 (263) 658-5551', '1991', 'Voluptas commodi lab', 'Optio dolor est min', 'Enim anim adipisci d', 'Sit facere voluptas', 'Adipisicing aliquam', 'Quasi obcaecati offi', 'Nulla qui eos non e', 'Consequatur nesciun', NULL, NULL),
(9, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(10, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(11, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(12, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(13, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(14, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(15, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(16, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(17, 'Philip Baldwin', 'Esse reiciendis impe', 'tedixo@mailinator.com', '+1 (329) 556-1178', '1996', 'Aut velit cum volupt', 'Qui quisquam id max', 'In quo cum commodo c', 'Aspernatur nemo ex e', 'Id in ut id deserunt', 'Dignissimos exceptur', 'Aut quia ipsum obcae', 'Aliquid deserunt aut', NULL, NULL),
(18, 'Zane Rice', 'Pariatur Ut consequ', 'nosy@mailinator.com', '+1 (556) 373-4807', '2006', 'Itaque tempora possi', 'Facilis enim quaerat', 'Quasi exercitationem', 'Qui non quia autem e', 'Distinctio Aliquip', 'Inventore sunt eos n', 'Perferendis enim at', 'Optio velit minima', NULL, NULL),
(19, 'Zane Rice', 'Pariatur Ut consequ', 'nosy@mailinator.com', '+1 (556) 373-4807', '2006', 'Itaque tempora possi', 'Facilis enim quaerat', 'Quasi exercitationem', 'Qui non quia autem e', 'Distinctio Aliquip', 'Inventore sunt eos n', 'Perferendis enim at', 'Optio velit minima', NULL, NULL),
(20, 'Zane Rice', 'Pariatur Ut consequ', 'nosy@mailinator.com', '+1 (556) 373-4807', '2006', 'Itaque tempora possi', 'Facilis enim quaerat', 'Quasi exercitationem', 'Qui non quia autem e', 'Distinctio Aliquip', 'Inventore sunt eos n', 'Perferendis enim at', 'Optio velit minima', NULL, NULL),
(21, 'Bethany Brennan', 'Dolor irure sint iu', 'kadedy@mailinator.com', '+1 (866) 524-3992', '2014', 'Inventore eum optio', 'Autem quia eiusmod s', 'Vel omnis incididunt', 'Unde eligendi volupt', 'At enim quae sit est', 'Maxime mollitia in a', 'Nulla in et sunt do', 'Aperiam suscipit dol', NULL, NULL),
(22, 'Bethany Brennan', 'Dolor irure sint iu', 'kadedy@mailinator.com', '+1 (866) 524-3992', '2014', 'Inventore eum optio', 'Autem quia eiusmod s', 'Vel omnis incididunt', 'Unde eligendi volupt', 'At enim quae sit est', 'Maxime mollitia in a', 'Nulla in et sunt do', 'Aperiam suscipit dol', NULL, NULL),
(23, 'Mira Salas', 'Eu molestiae facere', 'katukuc@mailinator.com', '+1 (256) 733-7049', '2007', 'Dolor a voluptas hic', 'Hic aliquip voluptat', 'Modi asperiores et q', 'Reiciendis beatae ni', 'Accusamus rerum libe', 'Incidunt minima dol', 'Ea non ipsam quis pe', 'Ea enim vitae rerum', NULL, NULL),
(24, 'Mira Salas', 'Eu molestiae facere', 'katukuc@mailinator.com', '+1 (256) 733-7049', '2007', 'Dolor a voluptas hic', 'Hic aliquip voluptat', 'Modi asperiores et q', 'Reiciendis beatae ni', 'Accusamus rerum libe', 'Incidunt minima dol', 'Ea non ipsam quis pe', 'Ea enim vitae rerum', NULL, NULL),
(25, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(26, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(27, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(28, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(29, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(30, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(31, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(32, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(33, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(34, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(35, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(36, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(37, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(38, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(39, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL),
(40, 'Caldwell Barry', 'Repudiandae aliqua', 'kotoce@mailinator.com', '+1 (867) 789-2931', '2012', 'Dolorum quia Nam ven', 'Non eligendi natus i', 'Amet at ad est et e', 'At eum omnis hic per', 'Do necessitatibus re', 'Dolorem odit facilis', 'Cillum est occaecat', 'Quas accusantium qui', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `admin_photos` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin_photos`, `status`, `created_at`, `updated_at`) VALUES
(1, 'car decoration', 'toriqulislam2720@gmail.com', '2022-06-07 01:00:33', '$2y$10$JDrlzQW9LcPkV.tbW9QBmeBdY1RtPAkmFcqhUWU/loQgymCOrz45O', '202311041412download (11).jpg', 0, '2022-06-07 01:00:34', '2023-11-04 08:12:16'),
(2, 'Admin', 'ward.cecil@example.net', '2022-06-07 01:00:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, '2022-06-07 01:00:34', '2022-06-07 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_invoice_parts`
--

CREATE TABLE `admin_invoice_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `part` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_invoice_parts`
--

INSERT INTO `admin_invoice_parts` (`id`, `invoice_id`, `part`, `qty`, `rate`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aliquam cum officiis', '607', 'Est aut mollit ratio', 'Nobis eveniet quis', NULL, NULL),
(2, 1, 'Aliquam cum officiis', '607', 'Est aut mollit ratio', 'Nobis eveniet quis', NULL, NULL),
(3, 1, 'Aut voluptas expedit', '808', 'Architecto beatae de', 'At alias dolores aut', NULL, NULL),
(4, 1, 'Aut voluptas expedit', '808', 'Architecto beatae de', 'At alias dolores aut', NULL, NULL),
(5, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(6, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(7, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(8, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(9, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(10, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(11, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(12, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(13, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(14, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(15, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(16, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(17, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(18, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(19, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL),
(20, 1, 'Recusandae Vel sapi', '351', 'Non sed neque distin', 'Atque in blanditiis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_invoice_services`
--

CREATE TABLE `admin_invoice_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_invoice_services`
--

INSERT INTO `admin_invoice_services` (`id`, `invoice_id`, `service`, `qty`, `rate`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aut quod ex quos con', '506', 'Laborum Doloremque', 'Consequatur rerum oc', NULL, NULL),
(2, 1, 'Ea veniam quibusdam', '380', 'In dolores fugiat d', 'Id quasi et natus au', NULL, NULL),
(3, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(4, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(5, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(6, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(7, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(8, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(9, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(10, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(11, 1, 'Ex deleniti impedit', '423', 'Esse mollitia aut f', 'Suscipit nostrud eos', NULL, NULL),
(12, 1, 'Ullamco et incididun', '751', 'Omnis excepteur offi', 'Nisi magna sunt dolo', NULL, NULL),
(13, 1, 'Ullamco et incididun', '751', 'Omnis excepteur offi', 'Nisi magna sunt dolo', NULL, NULL),
(14, 1, 'Ullamco et incididun', '751', 'Omnis excepteur offi', 'Nisi magna sunt dolo', NULL, NULL),
(15, 1, 'Incididunt molestiae', '226', 'Quo sint praesentium', 'Sint dolorem omnis', NULL, NULL),
(16, 1, 'Incididunt molestiae', '226', 'Quo sint praesentium', 'Sint dolorem omnis', NULL, NULL),
(17, 1, 'Earum excepteur plac', '836', 'Sequi quis accusamus', 'Temporibus cupidatat', NULL, NULL),
(18, 1, 'Earum excepteur plac', '836', 'Sequi quis accusamus', 'Temporibus cupidatat', NULL, NULL),
(19, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(20, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(21, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(22, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(23, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(24, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(25, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(26, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(27, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(28, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(29, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(30, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(31, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(32, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(33, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL),
(34, 1, 'Adipisci velit velit', '321', 'Voluptatibus officia', 'Unde porro id verita', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-19 07:41:02', '2023-12-19 07:41:02'),
(2, 1, '2023-12-19 07:42:58', '2023-12-19 07:42:58'),
(3, 1, '2023-12-19 07:43:20', '2023-12-19 07:43:20'),
(4, 1, '2023-12-19 07:51:52', '2023-12-19 07:51:52'),
(5, 1, '2023-12-19 07:51:52', '2023-12-19 07:51:52'),
(6, 1, '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(7, 1, '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(8, 1, '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(9, 1, '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(10, 1, '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(11, 1, '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(12, 1, '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(13, 1, '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(14, 1, '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(15, 1, '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(16, 1, '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(17, 1, '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(18, 1, '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(19, 1, '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(20, 1, '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(21, 1, '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(22, 1, '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(23, 1, '2023-12-19 07:51:59', '2023-12-19 07:51:59'),
(24, 1, '2023-12-19 07:52:00', '2023-12-19 07:52:00'),
(25, 1, '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(26, 1, '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(27, 1, '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(28, 1, '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(29, 1, '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(30, 1, '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(31, 1, '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(32, 1, '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(33, 1, '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(34, 1, '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(35, 1, '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(36, 1, '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(37, 1, '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(38, 1, '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(39, 1, '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(40, 1, '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(41, 1, '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(42, 1, '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(43, 1, '2023-12-19 07:52:08', '2023-12-19 07:52:08'),
(44, 1, '2023-12-19 07:52:28', '2023-12-19 07:52:28'),
(45, 1, '2023-12-19 07:52:38', '2023-12-19 07:52:38'),
(46, 1, '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(47, 1, '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(48, 1, '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(49, 1, '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(50, 1, '2023-12-19 07:53:01', '2023-12-19 07:53:01'),
(51, 1, '2023-12-19 07:53:02', '2023-12-19 07:53:02'),
(52, 1, '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(53, 1, '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(54, 1, '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(55, 1, '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(56, 1, '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(57, 1, '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(58, 1, '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(59, 1, '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(60, 1, '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(61, 1, '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(62, 1, '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(63, 1, '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(64, 1, '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(65, 1, '2023-12-19 07:53:09', '2023-12-19 07:53:09'),
(66, 1, '2023-12-19 07:53:10', '2023-12-19 07:53:10'),
(67, 1, '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(68, 1, '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(69, 1, '2023-12-19 07:53:12', '2023-12-19 07:53:12'),
(70, 1, '2023-12-19 07:53:12', '2023-12-19 07:53:12'),
(71, 1, '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(72, 1, '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(73, 1, '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(74, 1, '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(75, 1, '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(76, 1, '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(77, 1, '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(78, 1, '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(79, 1, '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(80, 1, '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(81, 1, '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(82, 1, '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(83, 1, '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(84, 1, '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(85, 1, '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(86, 1, '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(87, 1, '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(88, 1, '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(89, 1, '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(90, 1, '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(91, 1, '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(92, 1, '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(93, 1, '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(94, 1, '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(95, 1, '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(96, 1, '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(97, 1, '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(98, 1, '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(99, 1, '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(100, 1, '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(101, 1, '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(102, 1, '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(103, 1, '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(104, 1, '2023-12-19 07:53:31', '2023-12-19 07:53:31'),
(105, 1, '2023-12-19 07:53:31', '2023-12-19 07:53:31'),
(106, 1, '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(107, 1, '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(108, 1, '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(109, 1, '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(110, 1, '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(111, 1, '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(112, 1, '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(113, 1, '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(114, 1, '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(115, 1, '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(116, 1, '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(117, 1, '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(118, 1, '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(119, 1, '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(120, 1, '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(121, 1, '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(122, 1, '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(123, 1, '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(124, 1, '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(125, 1, '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(126, 1, '2023-12-19 07:55:54', '2023-12-19 07:55:54'),
(127, 1, '2023-12-19 07:56:12', '2023-12-19 07:56:12'),
(128, 1, '2023-12-19 07:57:33', '2023-12-19 07:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `article_translations`
--

CREATE TABLE `article_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `articles_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_translations`
--

INSERT INTO `article_translations` (`id`, `articles_id`, `lang_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'English Title', 'English Description', '2023-12-19 07:51:52', '2023-12-19 07:51:52'),
(2, 4, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:52', '2023-12-19 07:51:52'),
(3, 5, 1, 'English Title', 'English Description', '2023-12-19 07:51:52', '2023-12-19 07:51:52'),
(4, 5, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(5, 6, 1, 'English Title', 'English Description', '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(6, 6, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(7, 7, 1, 'English Title', 'English Description', '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(8, 7, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:53', '2023-12-19 07:51:53'),
(9, 8, 1, 'English Title', 'English Description', '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(10, 8, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(11, 9, 1, 'English Title', 'English Description', '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(12, 9, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:54', '2023-12-19 07:51:54'),
(13, 10, 1, 'English Title', 'English Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(14, 10, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(15, 11, 1, 'English Title', 'English Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(16, 11, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(17, 12, 1, 'English Title', 'English Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(18, 12, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(19, 13, 1, 'English Title', 'English Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(20, 13, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:55', '2023-12-19 07:51:55'),
(21, 14, 1, 'English Title', 'English Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(22, 14, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(23, 15, 1, 'English Title', 'English Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(24, 15, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(25, 16, 1, 'English Title', 'English Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(26, 16, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:56', '2023-12-19 07:51:56'),
(27, 17, 1, 'English Title', 'English Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(28, 17, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(29, 18, 1, 'English Title', 'English Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(30, 18, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(31, 19, 1, 'English Title', 'English Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(32, 19, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:57', '2023-12-19 07:51:57'),
(33, 20, 1, 'English Title', 'English Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(34, 20, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(35, 21, 1, 'English Title', 'English Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(36, 21, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(37, 22, 1, 'English Title', 'English Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(38, 22, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:58', '2023-12-19 07:51:58'),
(39, 23, 1, 'English Title', 'English Description', '2023-12-19 07:51:59', '2023-12-19 07:51:59'),
(40, 23, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:51:59', '2023-12-19 07:51:59'),
(41, 24, 1, 'English Title', 'English Description', '2023-12-19 07:52:00', '2023-12-19 07:52:00'),
(42, 24, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:00', '2023-12-19 07:52:00'),
(43, 25, 1, 'English Title', 'English Description', '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(44, 25, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(45, 26, 1, 'English Title', 'English Description', '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(46, 26, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:01', '2023-12-19 07:52:01'),
(47, 27, 1, 'English Title', 'English Description', '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(48, 27, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(49, 28, 1, 'English Title', 'English Description', '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(50, 28, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:02', '2023-12-19 07:52:02'),
(51, 29, 1, 'English Title', 'English Description', '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(52, 29, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(53, 30, 1, 'English Title', 'English Description', '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(54, 30, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:03', '2023-12-19 07:52:03'),
(55, 31, 1, 'English Title', 'English Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(56, 31, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(57, 32, 1, 'English Title', 'English Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(58, 32, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(59, 33, 1, 'English Title', 'English Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(60, 33, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(61, 34, 1, 'English Title', 'English Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(62, 34, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:04', '2023-12-19 07:52:04'),
(63, 35, 1, 'English Title', 'English Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(64, 35, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(65, 36, 1, 'English Title', 'English Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(66, 36, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(67, 37, 1, 'English Title', 'English Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(68, 37, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:05', '2023-12-19 07:52:05'),
(69, 38, 1, 'English Title', 'English Description', '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(70, 38, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(71, 39, 1, 'English Title', 'English Description', '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(72, 39, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:06', '2023-12-19 07:52:06'),
(73, 40, 1, 'English Title', 'English Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(74, 40, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(75, 41, 1, 'English Title', 'English Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(76, 41, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(77, 42, 1, 'English Title', 'English Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(78, 42, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:07', '2023-12-19 07:52:07'),
(79, 43, 1, 'English Title', 'English Description', '2023-12-19 07:52:08', '2023-12-19 07:52:08'),
(80, 43, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:08', '2023-12-19 07:52:08'),
(81, 44, 1, 'English Title', 'English Description', '2023-12-19 07:52:28', '2023-12-19 07:52:28'),
(82, 44, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:28', '2023-12-19 07:52:28'),
(83, 45, 1, 'English Title', 'English Description', '2023-12-19 07:52:38', '2023-12-19 07:52:38'),
(84, 45, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:38', '2023-12-19 07:52:38'),
(85, 46, 1, 'English Title', 'English Description', '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(86, 46, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(87, 47, 1, 'English Title', 'English Description', '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(88, 47, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:52:59', '2023-12-19 07:52:59'),
(89, 48, 1, 'English Title', 'English Description', '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(90, 48, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(91, 49, 1, 'English Title', 'English Description', '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(92, 49, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:00', '2023-12-19 07:53:00'),
(93, 50, 1, 'English Title', 'English Description', '2023-12-19 07:53:01', '2023-12-19 07:53:01'),
(94, 50, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:01', '2023-12-19 07:53:01'),
(95, 51, 1, 'English Title', 'English Description', '2023-12-19 07:53:02', '2023-12-19 07:53:02'),
(96, 51, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:02', '2023-12-19 07:53:02'),
(97, 52, 1, 'English Title', 'English Description', '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(98, 52, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(99, 53, 1, 'English Title', 'English Description', '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(100, 53, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:03', '2023-12-19 07:53:03'),
(101, 54, 1, 'English Title', 'English Description', '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(102, 54, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(103, 55, 1, 'English Title', 'English Description', '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(104, 55, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:04', '2023-12-19 07:53:04'),
(105, 56, 1, 'English Title', 'English Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(106, 56, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(107, 57, 1, 'English Title', 'English Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(108, 57, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(109, 58, 1, 'English Title', 'English Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(110, 58, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:05', '2023-12-19 07:53:05'),
(111, 59, 1, 'English Title', 'English Description', '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(112, 59, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(113, 60, 1, 'English Title', 'English Description', '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(114, 60, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:06', '2023-12-19 07:53:06'),
(115, 61, 1, 'English Title', 'English Description', '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(116, 61, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(117, 62, 1, 'English Title', 'English Description', '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(118, 62, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:07', '2023-12-19 07:53:07'),
(119, 63, 1, 'English Title', 'English Description', '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(120, 63, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(121, 64, 1, 'English Title', 'English Description', '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(122, 64, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:08', '2023-12-19 07:53:08'),
(123, 65, 1, 'English Title', 'English Description', '2023-12-19 07:53:09', '2023-12-19 07:53:09'),
(124, 65, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:09', '2023-12-19 07:53:09'),
(125, 66, 1, 'English Title', 'English Description', '2023-12-19 07:53:10', '2023-12-19 07:53:10'),
(126, 66, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:10', '2023-12-19 07:53:10'),
(127, 67, 1, 'English Title', 'English Description', '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(128, 67, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(129, 68, 1, 'English Title', 'English Description', '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(130, 68, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:11', '2023-12-19 07:53:11'),
(131, 69, 1, 'English Title', 'English Description', '2023-12-19 07:53:12', '2023-12-19 07:53:12'),
(132, 69, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:12', '2023-12-19 07:53:12'),
(133, 70, 1, 'English Title', 'English Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(134, 70, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(135, 71, 1, 'English Title', 'English Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(136, 71, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(137, 72, 1, 'English Title', 'English Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(138, 72, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:13', '2023-12-19 07:53:13'),
(139, 73, 1, 'English Title', 'English Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(140, 73, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(141, 74, 1, 'English Title', 'English Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(142, 74, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(143, 75, 1, 'English Title', 'English Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(144, 75, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:14', '2023-12-19 07:53:14'),
(145, 76, 1, 'English Title', 'English Description', '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(146, 76, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(147, 77, 1, 'English Title', 'English Description', '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(148, 77, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:15', '2023-12-19 07:53:15'),
(149, 78, 1, 'English Title', 'English Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(150, 78, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(151, 79, 1, 'English Title', 'English Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(152, 79, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(153, 80, 1, 'English Title', 'English Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(154, 80, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:16', '2023-12-19 07:53:16'),
(155, 81, 1, 'English Title', 'English Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(156, 81, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(157, 82, 1, 'English Title', 'English Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(158, 82, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(159, 83, 1, 'English Title', 'English Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(160, 83, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:17', '2023-12-19 07:53:17'),
(161, 84, 1, 'English Title', 'English Description', '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(162, 84, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(163, 85, 1, 'English Title', 'English Description', '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(164, 85, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:18', '2023-12-19 07:53:18'),
(165, 86, 1, 'English Title', 'English Description', '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(166, 86, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(167, 87, 1, 'English Title', 'English Description', '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(168, 87, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:24', '2023-12-19 07:53:24'),
(169, 88, 1, 'English Title', 'English Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(170, 88, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(171, 89, 1, 'English Title', 'English Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(172, 89, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(173, 90, 1, 'English Title', 'English Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(174, 90, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(175, 91, 1, 'English Title', 'English Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(176, 91, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:25', '2023-12-19 07:53:25'),
(177, 92, 1, 'English Title', 'English Description', '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(178, 92, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(179, 93, 1, 'English Title', 'English Description', '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(180, 93, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:26', '2023-12-19 07:53:26'),
(181, 94, 1, 'English Title', 'English Description', '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(182, 94, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(183, 95, 1, 'English Title', 'English Description', '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(184, 95, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:27', '2023-12-19 07:53:27'),
(185, 96, 1, 'English Title', 'English Description', '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(186, 96, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(187, 97, 1, 'English Title', 'English Description', '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(188, 97, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:28', '2023-12-19 07:53:28'),
(189, 98, 1, 'English Title', 'English Description', '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(190, 98, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(191, 99, 1, 'English Title', 'English Description', '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(192, 99, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:29', '2023-12-19 07:53:29'),
(193, 100, 1, 'English Title', 'English Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(194, 100, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(195, 101, 1, 'English Title', 'English Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(196, 101, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(197, 102, 1, 'English Title', 'English Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(198, 102, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(199, 103, 1, 'English Title', 'English Description', '2023-12-19 07:53:30', '2023-12-19 07:53:30'),
(200, 103, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:31', '2023-12-19 07:53:31'),
(201, 104, 1, 'English Title', 'English Description', '2023-12-19 07:53:31', '2023-12-19 07:53:31'),
(202, 104, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:31', '2023-12-19 07:53:31'),
(203, 105, 1, 'English Title', 'English Description', '2023-12-19 07:53:32', '2023-12-19 07:53:32'),
(204, 105, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:32', '2023-12-19 07:53:32'),
(205, 106, 1, 'English Title', 'English Description', '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(206, 106, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(207, 107, 1, 'English Title', 'English Description', '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(208, 107, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:56', '2023-12-19 07:53:56'),
(209, 108, 1, 'English Title', 'English Description', '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(210, 108, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(211, 109, 1, 'English Title', 'English Description', '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(212, 109, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:57', '2023-12-19 07:53:57'),
(213, 110, 1, 'English Title', 'English Description', '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(214, 110, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(215, 111, 1, 'English Title', 'English Description', '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(216, 111, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:58', '2023-12-19 07:53:58'),
(217, 112, 1, 'English Title', 'English Description', '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(218, 112, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(219, 113, 1, 'English Title', 'English Description', '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(220, 113, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:53:59', '2023-12-19 07:53:59'),
(221, 114, 1, 'English Title', 'English Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(222, 114, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(223, 115, 1, 'English Title', 'English Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(224, 115, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(225, 116, 1, 'English Title', 'English Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(226, 116, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:00', '2023-12-19 07:54:00'),
(227, 117, 1, 'English Title', 'English Description', '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(228, 117, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(229, 118, 1, 'English Title', 'English Description', '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(230, 118, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(231, 119, 1, 'English Title', 'English Description', '2023-12-19 07:54:01', '2023-12-19 07:54:01'),
(232, 119, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(233, 120, 1, 'English Title', 'English Description', '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(234, 120, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(235, 121, 1, 'English Title', 'English Description', '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(236, 121, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:02', '2023-12-19 07:54:02'),
(237, 122, 1, 'English Title', 'English Description', '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(238, 122, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(239, 123, 1, 'English Title', 'English Description', '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(240, 123, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:03', '2023-12-19 07:54:03'),
(241, 124, 1, 'English Title', 'English Description', '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(242, 124, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(243, 125, 1, 'English Title', 'English Description', '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(244, 125, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:54:04', '2023-12-19 07:54:04'),
(245, 126, 1, 'English Title', 'English Description', '2023-12-19 07:55:54', '2023-12-19 07:55:54'),
(246, 126, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:55:54', '2023-12-19 07:55:54'),
(247, 127, 1, 'English Title', 'English Description', '2023-12-19 07:56:13', '2023-12-19 07:56:13'),
(248, 127, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:56:13', '2023-12-19 07:56:13'),
(249, 128, 1, 'English Title', 'English Description', '2023-12-19 07:57:33', '2023-12-19 07:57:33'),
(250, 128, 2, 'bangla Title', 'bangla Description', '2023-12-19 07:57:33', '2023-12-19 07:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `person_img` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `person_name`, `person_img`, `designation`, `company_name`, `rating_num`, `company_logo`, `blog_description`, `status`, `created_at`, `updated_at`, `views`) VALUES
(2, 'Tallulah Hines', 'upload/blog/1781530839056338.jpg', 'COO', 'Appllys', 4, 'upload/blog/1781530839068394.png', '<p><span style=\"background-color:#ffffff; color:#5f6368; font-family:Roboto,Arial,sans-serif; font-size:14px\">Spoken by more than 100 million people, Urdu is the official language of Pakistan. It&rsquo;s also widely spoken in India and places that have large </span></p>', 1, '2023-11-03 02:30:05', '2023-11-03 02:30:05', 0),
(3, 'Cathleen Mercer', 'upload/blog/1781530389561760.jpg', 'Ceo', 'Upwork', 5, 'upload/blog/1781530389565706.png', '<p><span style=\"background-color:#ffffff; color:#5f6368; font-family:Roboto,Arial,sans-serif; font-size:14px\">Preparing for the International English Language Testing System (IELTS) can be a daunting task, especially when it comes to the reading section.</span></p>', 1, '2023-11-03 02:22:56', '2023-11-03 02:22:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `caryears`
--

CREATE TABLE `caryears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carYearNum` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caryears`
--

INSERT INTO `caryears` (`id`, `carYearNum`, `created_at`, `updated_at`) VALUES
(1, '1920', '2023-12-23 05:42:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `brand_bn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `brand_bn`, `created_at`, `updated_at`) VALUES
(27, 'mobile', 'আমার', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `childcategory_name` varchar(255) NOT NULL,
  `childcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 22, 60, 'child cat 1', 'child-cat-1', NULL, NULL),
(2, 21, 61, 'child cat 3', 'child-cat-3', NULL, NULL),
(3, 24, 62, 'child cat 3', 'child-cat-3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_title` varchar(255) DEFAULT NULL,
  `orginal_title` varchar(255) DEFAULT NULL,
  `client_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_title`, `orginal_title`, `client_logo`, `created_at`, `updated_at`) VALUES
(46, NULL, NULL, 'upload/client/1781529553232111.png', '2023-04-12 04:20:12', '2023-11-03 02:09:39'),
(47, NULL, NULL, 'upload/client/1781529543384175.png', '2023-04-12 04:20:43', '2023-11-03 02:09:29'),
(50, NULL, NULL, 'upload/client/1781529534445802.png', '2023-10-30 08:32:07', '2023-11-03 02:09:21'),
(51, NULL, NULL, 'upload/client/1781529523058809.png', '2023-10-30 08:36:12', '2023-11-03 02:09:10'),
(52, NULL, NULL, 'upload/client/1781529616225223.png', '2023-11-03 02:10:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `full_name`, `email_address`, `mobile`, `subject`, `message`, `location`, `created_at`, `updated_at`) VALUES
(1, 'toriqul', 'taxifalado@mailinator.com', '14787972196', 'video', 'asdf', '', NULL, NULL),
(2, 'Rhea Mclaughlin', 'lymera@mailinator.com', 'Culpa delectus cul', 'BMW 2-Series', 'Iusto ut excepteur n', '', NULL, NULL),
(3, 'Kane Mcdowell', 'xozig@mailinator.com', 'Sunt non nisi volupt', 'Modi ullam amet est', 'Fuga Enim autem dol', '', NULL, NULL),
(4, 'Whilemina Robbins', 'kaxevoja@mailinator.com', 'Dolorem nisi volupta', 'Compact: Mazda 3', 'Cumque nulla et magn', '', NULL, NULL),
(5, 'Hilary Foster', 'nesudyciv@mailinator.com', 'Ipsum sed ut qui in', 'BMW 2 Series Sedan Price range in bd', 'Consequatur est aut', 'Kenyon Carrillo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `model_name_bn` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery`, `model_name_bn`, `status`, `created_at`, `updated_at`) VALUES
(39, 'dgfh', 'আজকের পত্রিকা', 1, '2023-11-15 09:26:42', NULL),
(40, 'gyt', 'আজকের পত্রিকা', 1, '2023-12-20 08:15:28', '2023-12-20 08:20:21'),
(41, 'dgfh', 'আজকের', 1, '2023-12-20 08:20:53', NULL),
(42, 'dgfh', 'আজকের র', 1, '2023-12-20 08:24:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ind_title` varchar(255) DEFAULT NULL,
  `ind_photo` varchar(255) NOT NULL,
  `ind_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `ind_title`, `ind_photo`, `ind_description`, `created_at`, `updated_at`) VALUES
(2, 'Travels', 'upload/industries/1747196012221211.png', 'This is travels .', '2022-10-20 02:52:42', '2022-10-20 02:52:42'),
(3, 'Technologies', 'upload/industries/1747195463874482.png', 'This is technologies', '2022-10-20 02:43:59', NULL),
(5, 'Tempora quo dolorem', 'upload/industries/1781192421246955.jpg', 'Sit nihil error lab', '2023-10-30 08:51:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'en', 'english', NULL, NULL),
(2, 'bn', 'bangla', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `letter_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `letter_name`, `created_at`, `updated_at`) VALUES
(1, 'Ta', '2023-12-23 07:32:18', NULL),
(3, 'GA', '2023-12-23 10:10:51', NULL),
(4, 'THA', '2023-12-23 10:11:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `metros`
--

CREATE TABLE `metros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metro_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metros`
--

INSERT INTO `metros` (`id`, `metro_name`, `created_at`, `updated_at`) VALUES
(1, 'DM', '2023-12-23 06:59:58', NULL),
(4, 'CM', '2023-12-23 10:10:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_05_193812_create_admins_table', 2),
(6, '2022_08_08_050401_create_categories_table', 3),
(7, '2022_08_09_064341_create_sub_categories_table', 4),
(8, '2022_08_09_092147_create_subcategories_table', 5),
(9, '2022_08_10_052744_create_contents_table', 6),
(10, '2022_09_06_061522_create_services_table', 7),
(11, '2022_09_13_130326_create_galleries_table', 8),
(12, '2022_09_14_075608_create_portfolios_table', 9),
(13, '2022_09_14_081818_create_clients_table', 10),
(14, '2022_09_19_162005_create_childcategories_table', 11),
(15, '2022_10_02_073816_create_contacts_table', 12),
(16, '2022_10_04_052157_create_contactuses_table', 13),
(17, '2022_10_04_065644_create_policies_table', 13),
(18, '2022_10_05_171040_create_blogs_table', 13),
(19, '2022_10_06_040643_create_privacies_table', 14),
(20, '2022_10_06_050440_create_terms_table', 15),
(21, '2022_10_20_071552_create_industries_table', 16),
(22, '2022_10_20_072714_create_industries_table', 17),
(23, '2022_10_20_073626_create_industries_table', 18),
(24, '2022_10_23_054943_add_votes_to_services', 19),
(25, '2022_10_23_062145_add_votes_to_blogs', 20),
(26, '2023_01_26_012447_create_settings_table', 21),
(27, '2023_01_31_114201_create_slides_table', 22),
(28, '2023_04_08_192915_create_cache_table', 23),
(29, '2023_10_22_143850_create_orders_table', 24),
(30, '2023_10_29_145640_create_payments_table', 25),
(31, '2023_11_25_140647_create_products_table', 26),
(32, '2023_12_01_003619_create_product_orders_table', 27),
(33, '2023_12_19_133154_create_languages_table', 28),
(34, '2023_12_19_133253_create_articles_table', 29),
(35, '2023_12_19_133334_create_article_translations_table', 29),
(36, '2023_12_23_113543_create_caryears_table', 30),
(37, '2023_12_23_124928_create_metros_table', 31),
(38, '2023_12_23_131430_create_letters_table', 32),
(39, '2023_12_23_135639_create_spare_parts_table', 33),
(40, '2024_01_03_162553_create_admininvoices_table', 34),
(41, '2024_01_03_163201_create_admin_invoice_services_table', 35),
(42, '2024_01_03_163341_create_admin_invoice_parts_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'panding',
  `order_num` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `car_brand` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `car_year_num` varchar(255) NOT NULL,
  `metro_name` varchar(255) NOT NULL,
  `letter_name` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `spare_parts_name` varchar(255) NOT NULL,
  `Others` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `location`, `product_id`, `user_id`, `status`, `order_num`, `car_model`, `car_brand`, `date`, `service_id`, `car_year_num`, `metro_name`, `letter_name`, `registration`, `spare_parts_name`, `Others`, `created_at`, `updated_at`) VALUES
(1, 'Toriqul Islam', 'toriqulislam2720@gmail.com', 1727204284, 'dhaka', 1, 29, 'panding', '#291938', 'gyt', 'mobile', '2000-08-21T12:57', '[\"1\",\"2\",\"4\",\"7\"]', '1920', 'CM', 'THA', '125465', 'Product Title', 'Consequuntur dolor q', NULL, NULL),
(2, 'Conan Vang', 'rybu@mailinator.com', 1, 'Nulla lorem maiores', 2, 29, 'panding', '#299348', 'gyt', 'mobile', '1983-04-15T23:30', '[\"1\",\"2\",\"5\",\"7\"]', '1920', 'DM', 'THA', '2554', 'Nemo in sit aliquip', NULL, NULL, NULL),
(3, 'Geraldine Simmons', 'dunyp@mailinator.com', 1, 'Nam sint fuga Odit', 1, 31, 'panding', '#31857', 'gyt', 'mobile', '1998-08-06T10:09', '[\"1\",\"2\",\"5\",\"7\",\"8\"]', 'Car Year', 'DM', 'GA', '65', '', 'Similique est molest', NULL, NULL),
(4, 'Thaddeus Foley', 'dovumiwi@mailinator.com', 1, 'Esse in ducimus eni', 2, 31, 'panding', '#317076', 'dgfh', 'mobile', '2016-05-08T13:52', '[\"1\",\"2\",\"4\",\"7\"]', '1920', 'DM', 'THA', '1314', '', 'Ullam error eos fugi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `servics_details` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `user_id`, `phone`, `price`, `discount`, `name`, `email`, `servics_details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 111, 10, 'Sasha Morris', 'kefyjeto@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2 Series Sedan Price range in bd\r\n                                                                                BMW 2-Series\r\n                         ', NULL, NULL),
(2, 1, 1, 1, 740, 100, 'Sasha Morris', 'kefyjeto@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2 Series Sedan Price range in bd\r\n                                                                                BMW 2-Series\r\n                         ', NULL, NULL),
(3, 2, 2, 1, 10000, 100, 'Winter Sharp', 'butusalal@mailinator.com', 'Compact: Mazda 3\r\n                                                                                BMW 2-Series\r\n                                                                                Sequi accusamus temp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `port_title` varchar(255) NOT NULL,
  `port_subtitle` varchar(255) NOT NULL,
  `port_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `port_title`, `port_subtitle`, `port_image`, `status`, `created_at`, `updated_at`) VALUES
(38, 'Brake System Servicing', 'Brake System Servicing', 'upload/portfolio/1782909723135522.jpg', 1, '2023-11-18 07:46:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `privacy_title`, `description`, `created_at`, `updated_at`) VALUES
(4, 'policy car admin panel', '<p>policy car&nbsp;admin panel</p>', '2023-10-20 04:11:23', '2023-10-20 04:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `title_bn` varchar(255) NOT NULL,
  `price_bn` varchar(255) NOT NULL,
  `stock_bn` varchar(255) NOT NULL,
  `discount_bn` varchar(255) NOT NULL,
  `unit_bn` varchar(255) NOT NULL,
  `product_long_descrp_bn` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `unit`, `discount`, `image`, `details`, `stock`, `status`, `title_bn`, `price_bn`, `stock_bn`, `discount_bn`, `unit_bn`, `product_long_descrp_bn`, `created_at`, `updated_at`) VALUES
(1, 'Omnis quod hic ullam', '83', 'Ad ea nisi mollit qu', '7', 'upload/product/1784024836334840.jpg', '<p>Long Description</p>', '49999', 1, 'আজকের', '11', '', '11', '11', '', '2023-11-30 15:11:06', '2023-12-30 08:28:28'),
(3, 'Nemo in sit aliquip', '765', 'Minus voluptatem de', '75', 'upload/product/1784024812783615.jpg', '<p>Long Description</p>', '50000', 1, 'আজকের', '', '10', '21', '11', '', '2023-11-30 15:10:43', '2023-11-30 15:10:43'),
(4, 'Product Title', '111', '45', '56', 'upload/product/1785807111652704.jpg', '<p>Long Description eb</p>', '50000', 1, 'আজকের', '25', '25', '25', '25', '', '2023-12-20 07:19:36', '2023-12-20 07:19:36'),
(6, 'Ratione accusamus fa', '666', 'Nesciunt aspernatur', '3', 'upload/product/1785819883271727.png', '<p>Long Description</p>', '49999', 1, 'আজকের পত্রিকা', '62', '80', '33', 'আজকের পত্রিকা', '<p>আজকের প</p>', '2023-12-20 10:42:36', '2023-12-26 07:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `sparePart` varchar(255) NOT NULL,
  `extra_product_id` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'panding',
  `car_brand` varchar(255) NOT NULL,
  `car_model` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `car_year_num` varchar(255) NOT NULL,
  `metro_name` varchar(255) NOT NULL,
  `letter_name` varchar(255) NOT NULL,
  `registration` varchar(255) NOT NULL,
  `Others` varchar(255) DEFAULT NULL,
  `partPartial` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `product_id`, `user_id`, `name`, `email`, `phone`, `location`, `order_number`, `sparePart`, `extra_product_id`, `status`, `car_brand`, `car_model`, `date`, `car_year_num`, `metro_name`, `letter_name`, `registration`, `Others`, `partPartial`, `created_at`, `updated_at`) VALUES
(1, 6, 30, 't', 't@gmail.com', '0124554', 'dd', '#305599', 'Battery', '[\"1\",\"6\"]', 'panding', 'mobile', 'dgfh', '2023-12-29T19:35', '1920', 'DM', 'Ta', '122', NULL, 'pc', NULL, NULL),
(2, 6, 30, 't', 't@gmail.com', '0124554', 'dd', '#304922', 'Battery', '[\"1\",\"6\"]', 'panding', 'mobile', 'dgfh', '2023-12-29T19:35', '1920', 'DM', 'Ta', '122', NULL, 'pc', NULL, NULL),
(3, 1, 31, 'Otto Cooley', 'susaqy@mailinator.com', '+1 (729) 225-6825', 'Adipisicing a in vol', '#313763', 'Battery', 'null', 'panding', 'Select Brand', 'dgfh', '1975-03-25T04:29', '1920', 'CM', 'GA', '5464', NULL, 'Uriel Moreno', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `content_slide_title` varchar(255) NOT NULL,
  `breadcrumb` varchar(255) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_descrip` text NOT NULL,
  `long_descrip` text NOT NULL,
  `thamble` varchar(255) NOT NULL,
  `breadcrumb_title_bn` varchar(255) NOT NULL,
  `service_title_bn` varchar(255) NOT NULL,
  `short_descrip_bn` varchar(255) NOT NULL,
  `long_descrip_bn` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `content_slide_title`, `breadcrumb`, `content_title`, `content_descrip`, `long_descrip`, `thamble`, `breadcrumb_title_bn`, `service_title_bn`, `short_descrip_bn`, `long_descrip_bn`, `status`, `created_at`, `updated_at`, `views`) VALUES
(1, 21, 61, 0, 'Compact: Mazda 3', 'upload/services/1780266971334282.jpg', 'Compact: Mazda 3', 'Let’s face it, SUVs may lack the behind-the-wheel engagement of an equivalent car, but these tall and heavy vehicles’ rear liftgates sure make it a lot easier to simultaneously haul passengers and cargo. It’s the sensible choice, even if it’s not a particularly exciting one. But shouldn’t life offer a little excitement every now and again?', '<p>Although it&#39;s priced just like other compacts, the 2023 Mazda 3 aspires to compete with more premium cars&mdash;and&nbsp;<a href=\"https://www.caranddriver.com/reviews/comparison-test/a35123689/2021-mazda-3-vs-2021\">in many ways it does</a>. The 3 is available as either a sedan or a hatchback, and both are equally as handsome and agile. Two four-cylinder engines are offered, including a punchy turbo, and you can even have all-wheel drive if you want&mdash;though that means skipping the excellent six-speed manual. Other compact cars such as the&nbsp;<a href=\"https://www.caranddriver.com/honda/civic\">Honda Civic</a>,&nbsp;<a href=\"https://www.caranddriver.com/toyota/corolla\">Toyota Corolla</a>, and&nbsp;<a href=\"https://www.caranddriver.com/volkswagen/jetta\">Volkswagen Jetta</a>&nbsp;might seem more practical or have more name recognition, but the Mazda 3 is made for those buyers who value a gratifying driving experience and seek premium interior materials in their small car</p>', 'upload/services/1697794887_Hatchback.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-20 03:41:27', NULL, 0),
(2, 22, 60, 0, 'BMW 2 Series Sedan Price range in bd', 'upload/services/1780267230967501.jpg', 'BMW 2 Series Sedan Price range in bd', 'Here in this webpage we have given below BMW 2 SERIES SEDAN’s specification, overview and review depending on Bangladesh market.', '<h5><strong>VALUE ADDED FEATURES REGARDING COMFORT, SAFETY AND SECURITY :</strong></h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>BMW Intelligent Personal assistant</li>\r\n	<li>Parking Assistant</li>\r\n	<li>Active cruise control</li>\r\n	<li>Driving Assistant</li>\r\n	<li>Amazon Alexa car integration</li>\r\n	<li>Farmless doors</li>\r\n	<li>Glass roof</li>\r\n	<li>LED headlights</li>\r\n	<li>LED fog lights</li>\r\n	<li>M Sport steering</li>\r\n	<li>M Leather steering wheel</li>\r\n	<li>Vehicle key with exclusive M designation</li>\r\n	<li>Storage compartment package</li>\r\n	<li>Cruise control with braking function</li>\r\n	<li>Height adjustment for front passenger seat</li>\r\n	<li>Etc</li>\r\n</ul>', 'upload/services/1697795134_Sedan.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-20 03:45:34', NULL, 0),
(3, 24, 62, 0, 'BMW 2-Series', 'upload/services/1780267335102440.jpg', 'BMW 2-Series', 'The fun-size BMW 2-series is an entry-level luxury car with big thrust. Sold as a coupe only, the 230i and M240i have vastly different power levels, but are both offered with either rear- or all-wheel-drive. The 230i employs a turbocharged 255-hp inline-four that it shares with the Toyota Supra 2.0 and a host of other BMW products.', '<p>M240i comes with the far more entertaining turbocharged 382-hp inline-six engine. Sadly, no manual transmission is offered. Still, BMW&rsquo;s smallest car&rsquo;s recent redesign has wrought a deceptively quick ride, with solid braking and a chassis that loves the twisties. Although it&#39;s grown in size, its rear seat space is smaller than before. However, the most important aspect of the 2-series remains true in this generation: it rewards spirited driving at a reasonable price&mdash;particularly in four-cylinder, 230i form. There is a more rear-passenger-friendly four-door wearing a 2-series badge: it&rsquo;s known as the Gran Coupe but it&rsquo;s built on a completely different front-drive platform that has yet to win us over.&nbsp;<a href=\"https://www.caranddriver.com/bmw/2-series-gran-coupe\">We review that model separately.</a></p>', 'upload/services/1697795234_coupe.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-20 03:47:14', NULL, 0),
(4, NULL, NULL, NULL, 'Ea veniam consectet', 'upload/services/1780841861692363.jpg', 'Sequi accusamus temp', 'Eaque cillum ut volu', '<p>Long Description</p>', 'upload/services/1698177298_slidecar2.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-26 11:59:05', '2023-10-26 11:59:05', 0),
(5, 22, 60, 0, 'BMW 2 Series Sedan Price range in bd', 'upload/services/1780267230967501.jpg', 'BMW 2 Series Sedan Price range in bd', 'Here in this webpage we have given below BMW 2 SERIES SEDAN’s specification, overview and review depending on Bangladesh market.', '<h5><strong>VALUE ADDED FEATURES REGARDING COMFORT, SAFETY AND SECURITY :</strong></h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>BMW Intelligent Personal assistant</li>\r\n	<li>Parking Assistant</li>\r\n	<li>Active cruise control</li>\r\n	<li>Driving Assistant</li>\r\n	<li>Amazon Alexa car integration</li>\r\n	<li>Farmless doors</li>\r\n	<li>Glass roof</li>\r\n	<li>LED headlights</li>\r\n	<li>LED fog lights</li>\r\n	<li>M Sport steering</li>\r\n	<li>M Leather steering wheel</li>\r\n	<li>Vehicle key with exclusive M designation</li>\r\n	<li>Storage compartment package</li>\r\n	<li>Cruise control with braking function</li>\r\n	<li>Height adjustment for front passenger seat</li>\r\n	<li>Etc</li>\r\n</ul>', 'upload/services/1697795134_Sedan.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-20 03:45:34', NULL, 0),
(7, NULL, NULL, NULL, 'Ea veniam consectet', 'upload/services/1780841861692363.jpg', 'Sequi accusamus temp', 'Eaque cillum ut volu', '<p>Long Description</p>', 'upload/services/1698177298_slidecar2.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-10-26 11:59:05', '2023-10-26 11:59:05', 0),
(8, NULL, NULL, NULL, 'Officiis temporibus', 'upload/services/1785738383686495.jpg', 'Nesciunt eos explic', 'Magni rerum porro et', '<p>Long Description</p>', 'upload/services/1703012833_logo11.jpg', 'আমার বাংলা টাইটাল', 'আমার সারর্ভিস টাইটেল', 'আমার সারর্ভিস সর্ট', '<p>আমার সারর্ভিস লং</p>', 1, '2023-12-19 13:07:13', '2023-12-19 13:08:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `phone`, `email`, `address`, `facebook`, `instagram`, `pinterest`, `googleplus`, `linkedin`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1782832158619925.jpg', '+8802336526+94', 'info@gmail.com', 'Address', 'facebook', 'instagram', 'pinterest', 'google-plus', 'linkedin', 'twitter', NULL, '2023-11-17 11:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_link` varchar(255) NOT NULL,
  `slide_photo` varchar(255) NOT NULL,
  `slide_description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slide_title`, `slide_link`, `slide_photo`, `slide_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hatchback', 'Hatchback', 'upload/slide/1780269422094705.jpg', '<p><strong>Hatchback</strong></p>', 1, '2023-10-20 04:20:24', '2023-10-20 04:20:24'),
(2, 'Toyota', 'link', 'upload/slide/1780269232562412.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Toyota</p>', 1, '2023-10-20 04:17:23', '2023-10-20 04:17:23'),
(3, 'BMW M4', 'link', 'upload/slide/1780269136530428.jpg', '<p>BMW M4</p>\r\n\r\n<div class=\"simple-translate-system-theme\" id=\"simple-translate\">\r\n<div>\r\n<div class=\"isShow simple-translate-button\" style=\"background-image:url(&quot;chrome-extension://ibplnjkanclpjokhdolnendpplpjiace/icons/512.png&quot;); height:22px;', 1, '2023-10-20 04:15:52', '2023-10-20 04:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `spare_parts`
--

CREATE TABLE `spare_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sparepart_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spare_parts`
--

INSERT INTO `spare_parts` (`id`, `sparepart_name`, `created_at`, `updated_at`) VALUES
(1, 'Battery', '2023-12-23 08:04:53', NULL),
(3, 'Tyre', '2023-12-26 10:02:18', NULL),
(4, 'Mobil', '2023-12-26 10:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(60, 22, 'Toyota Camry', 'toyota-camry', '2023-10-20 03:19:37', '2023-10-20 03:37:27'),
(61, 21, 'Volkswagen Golf', 'volkswagen-golf', '2023-10-20 03:19:52', '2023-10-20 03:37:49'),
(62, 24, 'BMW 4 Series', 'bmw-4-series', '2023-10-20 03:20:08', '2023-10-20 03:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_title` varchar(255) NOT NULL,
  `t_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms_title`, `t_description`, `created_at`, `updated_at`) VALUES
(2, 'car Terms admin panel', '<p>car&nbsp; Terms tes admin panel</p>', '2023-10-20 04:10:23', '2023-10-20 04:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abigail Barrera', '1', 'qokohad@mailinator.com', NULL, '$2y$10$Rw8qOD4tvPae/B8shMFzOe4FNkDh0FBsSqDF52my1GtdwhAOPeZcq', NULL, NULL, NULL, NULL),
(2, 'Maxine James', '1727204284', 'dewybeko@mailinator.com', NULL, '$2y$10$rSqUNQ0GNJaUx5RvIWP8YOcsWKCyvbJc3R1wbdkW2oKBVLLGta6my', NULL, NULL, NULL, NULL),
(4, 'Isaac Holman', '+1 (221) 679-8149', 'pisac@mailinator.com', NULL, '$2y$10$PjOMC.qXwmswTX7RwInY4e7ihDBf/CrN2/UJZ1K4BO9hiD3rCsfXq', NULL, NULL, NULL, NULL),
(5, 'Chloe Camacho', '+11973324328', 'fysaqomow@mailinator.com', NULL, '$2y$10$8YT6kX110NY1XXU.2cQnuOynJCYSw4Eqia350FQD0WenobHURKyxe', NULL, NULL, NULL, '2023-11-03 02:36:14'),
(6, 'Carl Colon', '+1 (801) 796-6074', 'tazkulislam164478@gmail.com', NULL, '$2y$10$DE3wjSi.o8Q5VfdmMvegauHhPJ7g3ltf4iI6JeoKqkSIZA0psK8y6', NULL, NULL, NULL, NULL),
(7, 'Ryan Olson', '+1 (386) 153-9946', 'qutajo@mailinator.com', NULL, '$2y$10$7DwyP1ZtKaBj1ABxyK43y.79sy9D2gLwigb6fvjj/VTFsU4StzFq.', NULL, NULL, NULL, NULL),
(10, 'Martha Price', '+1 (588) 326-4008', 'cywypygyji@mailinator.com', NULL, '$2y$10$gpipFDlbwNFmprufFDd3suKEM0SBQ6vgFKsVKl2V6HUZ7vBbEapMC', NULL, NULL, NULL, NULL),
(12, 'Aileen Woods', '+1 (826) 319-1537', 'mitynilaho@mailinator.com', NULL, '$2y$10$51fd0EQD5aIlpILBbFS2Vu19bA4879984MmiT146K/OwTqerrCAEi', NULL, NULL, NULL, NULL),
(14, 'Caryn Donaldson', '+1 (493) 173-4481', 'filybagide@mailinator.com', NULL, '$2y$10$/gz6Rpzpdi5ctOPcAg60ueJlpg0MxvdkYgdDc2dhcMhNpIsDwtI4i', NULL, NULL, NULL, NULL),
(15, 'Erich Hester', '+1 (503) 867-4614', 'bixabymy@mailinator.com', NULL, '$2y$10$Yn2M1cUPzzzwsROv838gU.ZsCLIlmPw783mkiLaL3UMsoqIqR95rq', NULL, NULL, NULL, NULL),
(16, 'Vernon Paul', '+1 (123) 324-6736', 'xesy@mailinator.com', NULL, '$2y$10$OgREeQgm1ihkK/8rH8okl.Scb5OYkOl4dLKHjfnnpnuGW3b.eIRT.', NULL, NULL, NULL, NULL),
(17, 'Leilani Howe', '+1 (985) 203-2509', 'vusu@mailinator.com', NULL, '$2y$10$XJgYAMxcI0TatihR8GusQuZoVTwO77yhoWIYsJ94UKyszpRKHSTTq', NULL, NULL, NULL, NULL),
(18, 'Kathleen Lang', '+1 (729) 979-7997', 'retajeji@mailinator.com', NULL, '$2y$10$IGtVBkzsQYp1GaRSInNXq.Pq.1Of49Z2B/1Dqjt/69osTD9Phn9e6', NULL, NULL, NULL, NULL),
(19, 'Hayden Hampton', '+1 (616) 953-5122', 'sevirij@mailinator.com', NULL, '$2y$10$Wa6dkU51H6IsYhbwlN1sF.SBb7i9V.1jYB4je6hyD9uSfIWCIOMQC', NULL, NULL, NULL, NULL),
(21, 'Jack Hart', '+1 (408) 283-3061', 'cysocirum@mailinator.com', NULL, '$2y$10$fi/zjTTE227ivji.ImzRY.Ivq8DUDIBNNGLjUclfhsjaAVM4/6uji', NULL, NULL, NULL, NULL),
(22, 'Darrel Hernandez', '+1 (618) 331-3153', 'bomypewix@mailinator.com', NULL, '$2y$10$1BMrEkwv6DTvxp0dys7az.CLnoXNZJl4NxInsR9WVRVxR5hAVC47u', NULL, NULL, NULL, NULL),
(23, 'Uriel Stark', '+1 (138) 607-3113', 'tihi@mailinator.com', NULL, '$2y$10$ao0Tb0LgjHTzPavlfzRf3ePv8N7S5Qp4oLRrwgFDDzs8UCj.9sc6m', NULL, NULL, NULL, NULL),
(24, 'Karina Pennington', '+1 (815) 789-2331', 'fuhudicu@mailinator.com', NULL, '$2y$10$zsJfJ.aMjC2ZtHYILkO/n.0VV26FRTOKn83E4cRGil19zIhVk3pX.', NULL, NULL, NULL, NULL),
(25, 'Sophia Sanford', '+1 (327) 357-5361', 'legytivono@mailinator.com', NULL, '$2y$10$2TxRK.lHo5umdiOxYaoU3ex/fvqCPiI3yWpj5IZME85x0xnhCh76S', NULL, NULL, NULL, NULL),
(26, 'May Hanson', '+1 (985) 112-2846', 'vicyzojusa@mailinator.com', NULL, '$2y$10$Tcvvmv6mPeHmTFuckQKAkuWLRv6UZERttgEiJ7fYfsXfnIJM6NdBW', NULL, NULL, NULL, NULL),
(27, 'Abdul Baird', '+1 (694) 573-3831', 'junahugaxu@mailinator.com', NULL, '$2y$10$cfFYmme.mu2XOZjuhkd40OrTpsExMMfacaVP2n5OPPfon6hUnzuPC', NULL, NULL, NULL, NULL),
(28, 'Isadora Francis', '+1 (212) 376-5461', 'roseq@mailinator.com', NULL, '$2y$10$lFdI/PRtgrUEFi1ms0.XsO43FZYMAW1qWpDFxT309jXYrQ6/CwSWy', NULL, NULL, NULL, NULL),
(29, 'Luke Rodriquez', '+1 (527) 505-3836', 'kagemo@mailinator.com', NULL, '$2y$10$7K6SWI9FV2o8DIWlWHNIbOaFjm9arFh6jORBntL5P4r0LLUfj1zdS', NULL, NULL, NULL, NULL),
(30, 'Solomon Robinson', '+1 (253) 307-5024', 'luzo@mailinator.com', NULL, '$2y$10$PNm4Qne6dPUaHgJ5oq65LOC0f0CCfdmJfJg0vKFnaHsBEBogFtp9G', NULL, NULL, NULL, NULL),
(31, 'May Cole', '+1 (454) 142-1254', 'vypulediw@mailinator.com', NULL, '$2y$10$WDSpDxgHvrS77C0KRQSFKOmKflSPB4mxF/c.ATvOizUzPbM.TdLeO', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininvoices`
--
ALTER TABLE `admininvoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_invoice_parts`
--
ALTER TABLE `admin_invoice_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_invoice_services`
--
ALTER TABLE `admin_invoice_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_translations`
--
ALTER TABLE `article_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_translations_article_id_foreign` (`articles_id`),
  ADD KEY `article_translations_lang_id_foreign` (`lang_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `caryears`
--
ALTER TABLE `caryears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metros`
--
ALTER TABLE `metros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spare_parts`
--
ALTER TABLE `spare_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininvoices`
--
ALTER TABLE `admininvoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_invoice_parts`
--
ALTER TABLE `admin_invoice_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin_invoice_services`
--
ALTER TABLE `admin_invoice_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `article_translations`
--
ALTER TABLE `article_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `caryears`
--
ALTER TABLE `caryears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `metros`
--
ALTER TABLE `metros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spare_parts`
--
ALTER TABLE `spare_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_translations`
--
ALTER TABLE `article_translations`
  ADD CONSTRAINT `article_translations_article_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_translations_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
