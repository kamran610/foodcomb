-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 11:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodcomb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_specials`
--

CREATE TABLE `daily_specials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_specials`
--

INSERT INTO `daily_specials` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Grilled Chicken legs', 'Creamy chesapeake, baked and topped with cheddar cheese. served Butter Naan for dipping.', '150', '2020-06-09 04:55:00', '2020-06-25 12:47:05'),
(2, 'Taki Vortha', 'Newly arrived Thaki fish Vortha', '45', '2020-06-23 13:07:00', '2020-06-25 12:45:40'),
(3, 'Kimchi Fried Rice', 'Special Creamy cheese Kimch Fried Rice', '150', '2020-06-25 12:48:45', '2020-06-25 12:48:45'),
(4, 'Afghani Jalebi', 'New Special Afghani Jalebi Dessert', '40', '2020-06-25 12:50:28', '2020-06-25 12:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(28, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(29, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(37, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(40, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(41, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(42, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(43, 15, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(44, 15, 'quantity_ratio', 'text', 'Quantity Ratio', 1, 1, 1, 1, 1, 1, '{}', 6),
(45, 15, 'restaurant_id', 'text', 'Restaurant Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(46, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(47, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 15, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 16, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(54, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(55, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(56, 16, 'fc_food_family_belongsto_fc_food_category_relationship', 'relationship', 'fc_food_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcFoodCategory\",\"table\":\"fc_food_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 6),
(57, 15, 'fc_menu_item_belongsto_data_row_relationship_2', 'relationship', 'Food Family', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\food_family\",\"table\":\"fc_food_families\",\"type\":\"belongsTo\",\"column\":\"food_family_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(58, 15, 'food_family_id', 'text', 'Food Family Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 15, 'fc_menu_item_belongsto_fc_restaurant_relationship', 'relationship', 'fc_restaurants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\restaurant\",\"table\":\"fc_restaurants\",\"type\":\"belongsTo\",\"column\":\"restaurant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(60, 15, 'fc_menu_item_belongsto_fc_food_category_relationship', 'relationship', 'fc_food_category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcFoodCategory\",\"table\":\"fc_food_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(61, 15, 'food_type', 'text', 'Food Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"Spicy - Indian - Salad Included\"}', 10),
(62, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 18, 'restaurant_id', 'text', 'Restaurant Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(64, 18, 'order_body', 'text', 'Order Body', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 18, 'order_user_address', 'text', 'Order User Address', 0, 0, 1, 1, 1, 1, '{}', 10),
(66, 18, 'order_from', 'text', 'Order From', 0, 0, 0, 0, 0, 0, '{}', 12),
(67, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(69, 18, 'customer_name', 'text', 'Customer Name', 0, 0, 1, 1, 1, 1, '{}', 8),
(70, 18, 'customer_phone', 'text', 'Customer Phone', 0, 0, 1, 1, 1, 1, '{}', 11),
(73, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(75, 20, 'sitting_capacity', 'text', 'Sitting Capacity', 1, 1, 1, 1, 1, 1, '{}', 4),
(76, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(77, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(78, 20, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(79, 20, 'area_id', 'text', 'Area Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(80, 20, 'restaurant_category_id', 'text', 'Restaurant Category Id', 1, 1, 1, 1, 1, 1, '{}', 8),
(81, 20, 'fc_restaurant_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(82, 15, 'food_image', 'text', 'Food Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(83, 18, 'fc_order_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"order_from\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(84, 20, 'fc_restaurant_belongsto_fc_area_relationship', 'relationship', 'fc_areas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcArea\",\"table\":\"fc_areas\",\"type\":\"belongsTo\",\"column\":\"area_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(85, 20, 'fc_restaurant_belongsto_fc_restaurant_category_relationship', 'relationship', 'fc_restaurant_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcRestaurantCategory\",\"table\":\"fc_restaurant_categories\",\"type\":\"belongsTo\",\"column\":\"restaurant_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(86, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(88, 21, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 21, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(90, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 22, 'item_name', 'text', 'Item Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 22, 'item_price', 'text', 'Item Price', 1, 1, 1, 1, 1, 1, '{}', 3),
(95, 22, 'item_description', 'text', 'Item Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(96, 22, 'item_group', 'select_dropdown', 'Item Group', 1, 1, 1, 1, 1, 1, '{\"default\":\"Breakfast\",\"options\":{\"Breakfast\":\"Breakfast\",\"Lunch\":\"Lunch\",\"Dinner\":\"Dinner\",\"Dessert\":\"Dessert\",\"Drinks\":\"Drinks\"}}', 5),
(97, 22, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 6),
(98, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(99, 22, 'item_group_description', 'select_dropdown', 'Item Group Description', 0, 1, 1, 1, 1, 1, '{\"default\":\"Always Available\",\"options\":{\"Always Available\":\"Always Available\",\"Starts at 9 am\":\"Starts at 9 am\",\"Starts at 1 pm\":\"Starts at 1 pm\",\"Starts at 8 pm\":\"Starts at 8 pm\"}}', 8),
(100, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 23, 'branch', 'text', 'Branch', 0, 1, 1, 1, 1, 1, '{}', 2),
(102, 23, 'people', 'text', 'People', 0, 1, 1, 1, 1, 1, '{}', 3),
(103, 23, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(104, 23, 'time', 'text', 'Time', 0, 1, 1, 1, 1, 1, '{}', 5),
(105, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(106, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(107, 23, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 8),
(108, 23, 'request_text', 'text', 'Request Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(109, 23, 'reservation_belongsto_fc_area_relationship', 'relationship', 'fc_areas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\area\",\"table\":\"fc_areas\",\"type\":\"belongsTo\",\"column\":\"branch\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(110, 18, 'fc_order_belongsto_user_relationship_1', 'relationship', 'Address', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"order_from\",\"key\":\"id\",\"label\":\"address\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(111, 18, 'fc_order_belongsto_fc_restaurant_relationship', 'relationship', 'Restaurant Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\restaurant\",\"table\":\"fc_restaurants\",\"type\":\"belongsTo\",\"column\":\"restaurant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(112, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 24, 'f_name', 'text', 'F Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 24, 'l_name', 'text', 'L Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 24, 'e_mail', 'text', 'E Mail', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 24, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 5),
(117, 24, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 6),
(118, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(119, 24, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(120, 22, 'item_image', 'text', 'Item Image', 1, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(4, 'fc_areas', 'fc-areas', 'Fc Area', 'Fc Areas', 'voyager-lighthouse', 'App\\FcArea', NULL, '\\App\\Http\\Controllers\\AreaController', 'Area of restaurants.', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-20 23:17:55', '2019-12-20 23:37:41'),
(5, 'fc_food_categories', 'fc-food-categories', 'Fc Food Category', 'Fc Food Categories', 'voyager-images', 'App\\FcFoodCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-20 23:19:59', '2019-12-20 23:33:22'),
(12, 'fc_restaurant_categories', 'fc-restaurant-categories', 'Fc Restaurant Category', 'Fc Restaurant Categories', 'voyager-archive', 'App\\FcRestaurantCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(15, 'fc_menu_items', 'fcmenuitems', 'Menu Item', 'Menu Items', 'voyager-book', 'App\\menu_item', NULL, NULL, 'Foods list.', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-29 13:59:08', '2020-01-31 19:25:09'),
(16, 'fc_food_families', 'fc-food-families', 'Food Family', 'Food Families', 'voyager-check-circle', 'App\\food_family', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(18, 'fc_orders', 'fc-orders', 'Fc Order', 'Fc Orders', 'voyager-file-text', 'App\\FcOrders', NULL, '\\App\\Http\\Controllers\\OrderController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 16:35:08', '2020-06-15 02:35:55'),
(20, 'fc_restaurants', 'fc-restaurants', 'Restaurant', 'Restaurants', 'voyager-company', 'App\\restaurant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-31 19:18:30', '2020-02-03 11:47:27'),
(21, 'daily_specials', 'daily-specials', 'Daily Special', 'Daily Specials', 'voyager-medal-rank-star', 'App\\DailySpecial', NULL, NULL, 'daily specials of the website', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(22, 'fc_default_menu', 'fc-default-menu', 'Fc Default Menu', 'Fc Default Menus', 'voyager-boat', 'App\\FcDefaultMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-14 23:54:11', '2020-06-25 11:41:16'),
(23, 'reservations', 'reservations', 'Reservation', 'Reservations', 'voyager-ticket', 'App\\Reservation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-15 02:19:52', '2020-06-15 02:21:54'),
(24, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-medal-rank-star', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-21 10:41:18', '2020-06-23 10:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `fc_areas`
--

CREATE TABLE `fc_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_areas`
--

INSERT INTO `fc_areas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Zinda bazar', '2019-12-22 03:06:01', '2019-12-22 03:06:01'),
(2, 'Nayasarak', '2019-12-22 03:13:41', '2019-12-22 03:13:41'),
(3, 'Ambarkhana', '2020-06-24 02:37:10', '2020-06-24 02:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `fc_default_menu`
--

CREATE TABLE `fc_default_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_group_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Starts at 11:00 am',
  `item_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hello.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_default_menu`
--

INSERT INTO `fc_default_menu` (`id`, `item_name`, `item_price`, `item_description`, `item_group`, `created_at`, `updated_at`, `item_group_description`, `item_image`) VALUES
(7, 'Naan', '15', 'Normal Naan', 'Breakfast', '2020-06-24 19:35:00', '2020-06-25 11:06:12', 'Starts at 9 am', 'storage/FoodComb/Breakfast/download%20(2).jpg'),
(8, 'Fried Rice', '125', 'Special Beef Fried Rice', 'Lunch', '2020-06-24 19:35:00', '2020-06-25 11:26:27', 'Starts at 1 pm', 'storage/FoodComb/Lunch/Fried%20Rice.jpg'),
(10, 'Porota', '12', 'Oil Free Porota', 'Breakfast', '2020-06-25 11:07:55', '2020-06-25 11:07:55', 'Starts at 9 am', 'storage/FoodComb/Breakfast/download%20(5).jpg'),
(11, 'Special Porota', '15', 'Special butter Porota', 'Breakfast', '2020-06-25 11:12:34', '2020-06-25 11:12:34', 'Starts at 9 am', 'storage/FoodComb/Breakfast/download%20(6).jpg'),
(12, 'Butter Naan', '25', 'Special Butter Naan', 'Breakfast', '2020-06-25 11:14:29', '2020-06-25 11:14:29', 'Starts at 9 am', 'storage/FoodComb/Breakfast/Homemade-Naan-stack-1.jpg'),
(13, 'Beef Khichuri', '85', 'Beef with Egg Bhuna Khichuri', 'Breakfast', '2020-06-25 11:17:09', '2020-06-25 11:17:09', 'Starts at 9 am', 'storage/FoodComb/Breakfast/maxresdefault%20(2).jpg'),
(14, 'Chicken Khichuri', '55', 'Chicken with Egg Bhuna Khichuri', 'Breakfast', '2020-06-25 11:18:40', '2020-06-25 11:18:40', 'Starts at 9 am', 'storage/FoodComb/Breakfast/maxresdefault%20(1).jpg'),
(15, 'Chicken Rice', '135', 'Chicken fried rice with Salad and Catch-up', 'Dinner', '2020-06-25 11:21:11', '2020-06-25 11:21:11', 'Starts at 8 pm', 'storage/FoodComb/Dinner/Chicken%20Rice.jpg'),
(16, 'Jalebi', '40', 'Fresh Indian Jalebi', 'Dessert', '2020-06-25 11:42:35', '2020-06-25 11:42:35', 'Always Available', 'storage/FoodComb/Dessert/fresh-jalebi-818316.jpg'),
(17, 'Fruits Juice', '50', 'Mixed Fruits Juice- Fresh', 'Drinks', '2020-06-25 11:45:21', '2020-06-25 11:45:21', 'Always Available', 'storage/FoodComb/Drinks/fruits-465832_1920.jpg'),
(18, 'Orange Juice', '35', 'Fresh Organic Orange Juice', 'Drinks', '2020-06-25 11:46:34', '2020-06-25 11:46:34', 'Always Available', 'storage/FoodComb/Drinks/fresh-orange-juice-1614822_1920.jpg'),
(19, 'Mango Juice', '45', 'Fresh Organic Mango Juice', 'Drinks', '2020-06-25 11:47:40', '2020-06-25 11:47:40', 'Always Available', 'storage/FoodComb/Drinks/56406_erin_m_7475f083-bd46-4f42-a0cc-0951182d34a9.jpg'),
(20, 'Lassi', '65', 'Fruit Shakes Yogurt Lassi', 'Drinks', '2020-06-25 11:49:48', '2020-06-25 11:49:48', 'Always Available', 'storage/FoodComb/Drinks/thumb-350-719817.jpg'),
(21, 'Coca Cola', '45', 'CocaCola- 225ml Can', 'Drinks', '2020-06-25 11:50:42', '2020-06-25 11:50:42', 'Always Available', 'storage/FoodComb/Drinks/can-87995_1920.jpg'),
(22, 'Pepsi', '40', 'Pepsi-225ml Can', 'Drinks', '2020-06-25 11:52:08', '2020-06-25 11:52:08', 'Always Available', 'storage/FoodComb/Drinks/pepsi-5152332_1920.jpg'),
(23, 'Yogurt Barries', '60', 'Sweet Yogurt with Barries', 'Dessert', '2020-06-25 11:54:18', '2020-06-25 11:54:18', 'Always Available', 'storage/FoodComb/Dessert/yogurt%20%20Berries.jpg'),
(24, 'Pudding', '35', 'A piece of Egg Pudding', 'Dessert', '2020-06-25 11:55:32', '2020-06-25 11:55:32', 'Always Available', 'storage/FoodComb/Dessert/images%20(3).jpg'),
(25, 'Ice Cream', '75', 'Mixed Flavour Ice Cream', 'Dessert', '2020-06-25 11:56:51', '2020-06-25 11:56:51', 'Always Available', 'storage/FoodComb/Dessert/ice-3611698.jpg'),
(26, 'Faluda', '50', 'Special fruit Falida', 'Dessert', '2020-06-25 11:58:00', '2020-06-25 11:59:49', 'Always Available', 'storage/FoodComb/Dessert/faluda.jpg'),
(27, 'Cake', '45', 'Special Cake-Single Piece', 'Dessert', '2020-06-25 12:01:55', '2020-06-25 12:01:55', 'Always Available', 'storage/Shop%20Menu/Dessert/cake-1971552.jpg'),
(28, 'Veg-Egg Fried Rice', '125', 'Special Vegetable Egg fried rice', 'Lunch', '2020-06-25 12:09:05', '2020-06-25 12:09:05', 'Starts at 1 pm', 'storage/FoodComb/Dinner/vegetable-egg-fried-rice-photo-1.jpg'),
(29, 'Salmon Teriaki', '225', 'Special Salmon Fish Teriyaki dish', 'Lunch', '2020-06-25 12:11:36', '2020-06-25 12:11:36', 'Starts at 1 pm', 'storage/FoodComb/Dinner/Fish%20Salmon%20Teriyaki.jpg'),
(30, 'Shrimp Fry', '180', 'Special Shrimp Fry 4 piece', 'Lunch', '2020-06-25 12:16:18', '2020-06-25 12:16:18', 'Always Available', 'storage/FoodComb/Lunch/download%20(1).jpg'),
(31, 'Grill Chicken', '150', 'Grilled Chick Leg Pieces', 'Lunch', '2020-06-25 12:19:08', '2020-06-25 12:19:08', 'Starts at 1 pm', 'storage/FoodComb/Lunch/vaishnav-chogale-DAd_XfG6yNg-unsplash.jpg'),
(32, 'Beef Steak', '220', 'Special Beef Steak', 'Lunch', '2020-06-25 12:33:20', '2020-06-25 12:33:20', 'Starts at 1 pm', 'storage/FoodComb/Dinner/loija-nguyen-NYBnDWeOX2c-unsplash.jpg'),
(33, 'Kimchi Fried Rice', '150', 'Cheesy Kimchi fried Rice', 'Dinner', '2020-06-25 12:35:01', '2020-06-25 12:35:01', 'Starts at 8 pm', 'storage/FoodComb/Dinner/kimchi-fried-rice-241051.jpg'),
(34, 'Hilsha Fry', '155', 'Special fried Hilsha Fish', 'Dinner', '2020-06-25 12:36:30', '2020-06-25 12:36:30', 'Starts at 8 pm', 'storage/FoodComb/Dinner/salmon-1485014_1920.jpg'),
(35, 'Fish Curry', '110', 'Rohu fish Curry', 'Dinner', '2020-06-25 12:40:56', '2020-06-25 12:40:56', 'Starts at 8 pm', 'storage/FoodComb/Dinner/fishdownload.jpg'),
(36, 'Honey-Garlic Chicken', '160', 'Honey Garlic Chick Curry', 'Dinner', '2020-06-25 12:42:32', '2020-06-25 12:42:32', 'Starts at 8 pm', 'storage/FoodComb/Dinner/Honey-Garlic-Chicken-Breast_5-SQ.jpg'),
(37, 'Mutton', '175', 'Special Mutton curry', 'Dinner', '2020-06-25 12:43:25', '2020-06-25 12:43:25', 'Starts at 8 pm', 'storage/FoodComb/Dinner/download_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fc_food_categories`
--

CREATE TABLE `fc_food_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_food_categories`
--

INSERT INTO `fc_food_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'All Items', NULL, '2020-06-25 02:19:19'),
(2, 'Main Dish', '2020-01-04 06:19:26', '2020-01-04 06:19:26'),
(3, 'Dessert', '2020-01-04 06:19:47', '2020-01-04 06:19:47'),
(4, 'Drinks', '2020-01-04 07:25:52', '2020-01-04 07:25:52'),
(5, 'Snacks', '2020-06-24 06:34:21', '2020-06-24 06:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `fc_food_families`
--

CREATE TABLE `fc_food_families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_food_families`
--

INSERT INTO `fc_food_families` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Wonton', 1, '2020-01-04 04:02:53', '2020-01-04 04:02:53'),
(2, 'French Fries', 1, '2020-01-04 06:17:57', '2020-01-04 06:17:57'),
(3, 'Soup', 1, '2020-01-04 06:18:00', '2020-01-04 06:18:53'),
(4, 'Chicken Wings', 1, '2020-01-04 06:18:42', '2020-01-04 06:18:42'),
(5, 'Hyderabadi Biriyani', 2, '2020-01-04 06:20:28', '2020-01-04 06:20:28'),
(6, 'Chicken Biryani', 2, '2020-01-04 06:20:45', '2020-01-04 06:20:45'),
(8, 'Smoothies', 4, '2020-01-04 07:26:43', '2020-01-04 07:26:43'),
(9, 'Soup', 1, '2020-01-30 00:23:21', '2020-01-30 00:23:21'),
(10, 'Drinks', 4, '2020-06-24 06:31:48', '2020-06-24 06:31:48'),
(11, 'Fast Food', 5, '2020-06-24 06:35:21', '2020-06-24 06:35:21'),
(12, 'Cake', 3, '2020-06-25 01:10:00', '2020-06-25 01:11:12'),
(13, 'Ice Cream', 3, '2020-06-25 01:11:32', '2020-06-25 01:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `fc_menu_items`
--

CREATE TABLE `fc_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity_ratio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `food_family_id` bigint(20) UNSIGNED NOT NULL,
  `food_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_menu_items`
--

INSERT INTO `fc_menu_items` (`id`, `name`, `price`, `quantity_ratio`, `restaurant_id`, `created_at`, `updated_at`, `category_id`, `food_family_id`, `food_type`, `food_image`) VALUES
(9, 'Beef Burger', 75, '1', 6, '2020-06-25 08:21:37', '2020-06-25 08:21:37', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/a-500x500.jpg'),
(10, 'Chicken Samossa', 50, '5', 6, '2020-06-25 08:23:27', '2020-06-25 08:23:27', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/desi-snacks-ghaziabad-1ics8m5qds.jpg'),
(11, 'Shingara', 25, '5', 6, '2020-06-25 08:25:03', '2020-06-25 08:25:03', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(1).jpg'),
(12, 'Coca Cola', 25, '1', 6, '2020-06-25 08:28:37', '2020-06-25 08:28:37', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/can-87995_1920.jpg'),
(13, 'Pepsi', 35, '1', 6, '2020-06-25 08:29:47', '2020-06-25 08:29:47', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/pepsi-5152332_1920.jpg'),
(14, 'Sprite', 25, '1', 6, '2020-06-25 08:31:26', '2020-06-25 08:31:26', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/231-2313345_png-image-of-sprite-can-transparent-png.png'),
(15, 'Fanta', 35, '1', 6, '2020-06-25 08:32:00', '2020-06-25 08:43:35', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/refreshments-1274898.jpg'),
(16, 'Jelabi', 75, '5', 6, '2020-06-25 08:35:09', '2020-06-25 08:35:09', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/fresh-jalebi-818316.jpg'),
(17, 'Ice Cream', 45, '1', 6, '2020-06-25 08:36:43', '2020-06-25 08:36:43', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/Ice%20Cream%20bowl-.jpg'),
(18, 'Cake', 35, '1', 6, '2020-06-25 08:38:30', '2020-06-25 08:38:30', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/brownie-548591.jpg'),
(19, 'Fish Bean Rice', 125, '1', 6, '2020-06-25 08:40:46', '2020-06-25 08:40:46', 2, 1, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/-fish-beans-rice.jpg'),
(20, 'Fried Chicken', 150, '1', 6, '2020-06-25 08:45:45', '2020-06-25 08:45:45', 2, 6, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried-chicken-690039.jpg'),
(21, 'Grill Chicken', 150, '2', 6, '2020-06-25 08:57:50', '2020-06-25 08:57:50', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/vaishnav-chogale-DAd_XfG6yNg-unsplash.jpg'),
(22, 'Shrimp Fry', 85, '3', 6, '2020-06-25 09:00:02', '2020-06-25 09:00:02', 2, 2, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/download%20(1).jpg'),
(23, 'Salmon Fish', 90, '1', 6, '2020-06-25 09:02:34', '2020-06-25 09:02:34', 2, 6, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/download%20(2).jpg'),
(24, 'Veg Roll', 75, '5', 3, '2020-06-25 09:07:04', '2020-06-25 09:07:04', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(6).jpg'),
(25, 'Veg Roll', 75, '5', 4, '2020-06-25 09:07:47', '2020-06-25 09:07:47', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(6).jpg'),
(26, 'Veg Roll', 75, '5', 5, '2020-06-25 09:08:44', '2020-06-25 09:08:44', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(6).jpg'),
(27, 'Sandwich', 65, '1', 3, '2020-06-25 09:09:58', '2020-06-25 09:09:58', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(8).jpg'),
(28, 'Sandwich', 65, '1', 4, '2020-06-25 09:10:46', '2020-06-25 09:10:46', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(8).jpg'),
(29, 'Sandwich', 65, '5', 5, '2020-06-25 09:11:45', '2020-06-25 09:11:45', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(8).jpg'),
(30, 'Egg Potato', 25, '5', 3, '2020-06-25 09:13:21', '2020-06-25 09:13:21', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(4).jpg'),
(31, 'Egg Potato', 25, '5', 4, '2020-06-25 09:14:33', '2020-06-25 09:14:33', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(4).jpg'),
(32, 'Egg Potato', 25, '5', 5, '2020-06-25 09:15:12', '2020-06-25 09:15:12', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(4).jpg'),
(33, 'Coca Cola', 35, '1', 3, '2020-06-25 10:07:06', '2020-06-25 10:07:06', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/coca-cola-4404130_1920.jpg'),
(34, 'Coca Cola', 35, '1', 4, '2020-06-25 10:07:42', '2020-06-25 10:07:42', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/coca-cola-4404130_1920.jpg'),
(35, 'Coca Cola', 35, '1', 5, '2020-06-25 10:08:25', '2020-06-25 10:08:25', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/coca-cola-4404130_1920.jpg'),
(36, 'Mountain Dew', 65, '1', 3, '2020-06-25 10:10:13', '2020-06-25 10:10:13', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/Mountain-Dew.jpg'),
(37, 'Mountain Dew', 65, '1', 4, '2020-06-25 10:10:48', '2020-06-25 10:10:48', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/Mountain-Dew.jpg'),
(38, 'Mountain Dew', 65, '1', 5, '2020-06-25 10:12:05', '2020-06-25 10:12:05', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/Mountain-Dew.jpg'),
(39, 'Sprite', 35, '1', 3, '2020-06-25 10:13:00', '2020-06-25 10:17:24', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/231-2313345_png-image-of-sprite-can-transparent-png.png'),
(40, 'Sprite', 35, '1', 5, '2020-06-25 10:14:00', '2020-06-25 10:16:53', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/231-2313345_png-image-of-sprite-can-transparent-png.png'),
(41, 'Sprite', 35, '1', 4, '2020-06-25 10:15:00', '2020-06-25 10:16:25', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/231-2313345_png-image-of-sprite-can-transparent-png.png'),
(42, 'Chocolate Cake', 75, '1', 3, '2020-06-25 10:20:10', '2020-06-25 10:20:10', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/brownie-548591.jpg'),
(43, 'Chocolate Cake', 75, '1', 4, '2020-06-25 10:20:50', '2020-06-25 10:20:50', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/brownie-548591.jpg'),
(44, 'Chocolate Cake', 75, '1', 5, '2020-06-25 10:21:23', '2020-06-25 10:21:23', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/brownie-548591.jpg'),
(45, 'Ice Cream', 65, '1', 3, '2020-06-25 10:23:40', '2020-06-25 10:23:40', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/Ice%20Cream%20bowl-.jpg'),
(46, 'Ice Cream', 65, '1', 4, '2020-06-25 10:24:35', '2020-06-25 10:24:35', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/Ice%20Cream%20bowl-.jpg'),
(47, 'Ice Cream', 65, '1', 5, '2020-06-25 10:25:08', '2020-06-25 10:25:08', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/Ice%20Cream%20bowl-.jpg'),
(48, 'Cream Puff', 60, '3', 3, '2020-06-25 10:28:00', '2020-06-25 10:28:00', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cream-puffs-427181.jpg'),
(49, 'Cream Puff', 60, '3', 4, '2020-06-25 10:28:00', '2020-06-25 10:28:54', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cream-puffs-427181.jpg'),
(50, 'Cream Puff', 60, '3', 5, '2020-06-25 10:29:22', '2020-06-25 10:29:22', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cream-puffs-427181.jpg'),
(51, 'Fried Chicken', 125, '1', 3, '2020-06-25 10:33:21', '2020-06-25 10:33:21', 2, 6, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried-chicken-690039.jpg'),
(52, 'Fried Chicken', 125, '1', 4, '2020-06-25 10:33:50', '2020-06-25 10:33:50', 2, 6, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried-chicken-690039.jpg'),
(53, 'Fried Chicken', 125, '1', 5, '2020-06-25 10:34:44', '2020-06-25 10:34:44', 2, 6, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried-chicken-690039.jpg'),
(54, 'Fish Ball', 150, '5', 3, '2020-06-25 10:37:10', '2020-06-25 10:37:10', 2, 2, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/hack%20Fishball.jpg'),
(55, 'Fish Ball', 150, '5', 4, '2020-06-25 10:37:59', '2020-06-25 10:37:59', 2, 2, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/hack%20Fishball.jpg'),
(56, 'Fish Ball', 150, '5', 5, '2020-06-25 10:38:34', '2020-06-25 10:38:34', 2, 2, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/hack%20Fishball.jpg'),
(57, 'Kimchi Fried Rice', 210, '1', 3, '2020-06-25 10:40:59', '2020-06-25 10:40:59', 2, 5, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Lunch/kimchi-fried-rice-241051.jpg'),
(58, 'Kimchi Fried Rice', 210, '1', 4, '2020-06-25 10:41:27', '2020-06-25 10:41:27', 2, 5, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Lunch/kimchi-fried-rice-241051.jpg'),
(59, 'Kimchi Fried Rice', 210, '1', 5, '2020-06-25 10:42:06', '2020-06-25 10:42:06', 2, 5, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Lunch/kimchi-fried-rice-241051.jpg'),
(60, 'Buttar Naan', 45, '1', 3, '2020-06-25 10:47:56', '2020-06-25 10:47:56', 2, 6, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dinner/download%20(4).jpg'),
(61, 'Buttar Naan', 45, '1', 4, '2020-06-25 10:48:27', '2020-06-25 10:48:27', 2, 6, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dinner/download%20(4).jpg'),
(62, 'Buttar Naan', 45, '1', 5, '2020-06-25 10:49:02', '2020-06-25 10:49:02', 2, 6, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dinner/download%20(4).jpg'),
(63, 'Pudding', 40, '1', 3, '2020-06-25 10:50:46', '2020-06-25 10:50:46', 3, 12, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dessert/images%20(3).jpg'),
(64, 'Pudding', 40, '1', 4, '2020-06-25 10:51:19', '2020-06-25 10:51:19', 3, 12, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dessert/images%20(3).jpg'),
(65, 'Pudding', 40, '1', 5, '2020-06-25 10:51:00', '2020-06-25 10:52:47', 3, 12, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dessert/images%20(3).jpg'),
(66, 'Pepsi Max', 115, '1', 3, '2020-06-25 10:54:04', '2020-06-25 10:54:04', 4, 10, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Drinks/pepsi-max-5295697_1920.png'),
(67, 'Pepsi Max', 115, '1', 4, '2020-06-25 10:54:00', '2020-06-25 10:55:30', 4, 10, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Drinks/pepsi-max-5295697_1920.png'),
(68, 'Pepsi Max', 115, '1', 5, '2020-06-25 10:56:01', '2020-06-25 10:56:01', 4, 10, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Drinks/pepsi-max-5295697_1920.png'),
(69, 'Special Puri', 30, '3', 3, '2020-06-25 10:58:35', '2020-06-25 10:58:35', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/katlama-the-tasty-brummie-snack-f-685x336.jpg'),
(70, 'Special Puri', 30, '3', 4, '2020-06-25 10:59:15', '2020-06-25 10:59:15', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/katlama-the-tasty-brummie-snack-f-685x336.jpg'),
(71, 'Special Puri', 30, '3', 5, '2020-06-25 10:59:59', '2020-06-25 10:59:59', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/katlama-the-tasty-brummie-snack-f-685x336.jpg'),
(72, 'Pastry', 150, '2', 7, '2020-06-25 13:48:34', '2020-06-25 13:48:34', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/baking-pastries.jpg'),
(73, 'Croissant Nutella', 100, '2', 7, '2020-06-25 13:50:20', '2020-06-25 13:50:20', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/croissant-nutella.jpg'),
(74, 'Honey Bread', 55, '4', 7, '2020-06-25 13:52:28', '2020-06-25 13:52:28', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/honey-bread.jpg'),
(75, 'Mountain Dew', 65, '1', 7, '2020-06-25 13:54:37', '2020-06-25 13:54:37', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/erik-mclean-nkmSYrUjDA8-unsplash.jpg'),
(76, 'Coca Cola', 45, '1', 7, '2020-06-25 13:55:32', '2020-06-25 13:55:32', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/coca-cola-2099000_1920.jpg'),
(77, 'Fanta', 35, '1', 7, '2020-06-25 13:56:28', '2020-06-25 13:56:28', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/aluminum-87987_1920.jpg'),
(78, 'Cream Muffin', 75, '3', 7, '2020-06-25 13:58:33', '2020-06-25 13:58:33', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cream-puffs-427181.jpg'),
(79, 'Cheese Pizza', 599, '1', 7, '2020-06-25 14:09:32', '2020-06-25 14:09:32', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/fatima-akram-uU0Anw-8Vsg-unsplash.jpg'),
(80, 'Pepperoni Pizza', 650, '1', 7, '2020-06-25 14:11:17', '2020-06-25 14:11:17', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/brett-jordan-Xob66LF79nw-unsplash.jpg'),
(81, 'Spicy Pizza', 455, '1', 7, '2020-06-25 14:12:21', '2020-06-25 14:12:21', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/rahul-upadhyay-yDKHJxfiWDk-unsplash%20(1).jpg'),
(82, 'Ice Cream', 75, '1', 7, '2020-06-25 14:14:45', '2020-06-25 14:14:45', 3, 13, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/ice-3611698.jpg'),
(83, 'Chocolate Cup Cake', 65, '1', 7, '2020-06-25 14:16:49', '2020-06-25 14:16:49', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cupcakes-690040.jpg'),
(84, 'Chicken Sandwich', 65, '1', 10, '2020-06-25 14:19:00', '2020-06-25 14:33:51', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/images%20(3).jpg'),
(85, 'Burger', 55, '1', 10, '2020-06-25 14:21:13', '2020-06-25 14:21:13', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(9).jpg'),
(86, 'Kebab', 45, '3', 10, '2020-06-25 14:22:31', '2020-06-25 14:22:31', 5, 11, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Snacks/download%20(3).jpg'),
(87, 'Coca Cola', 45, '1', 10, '2020-06-25 14:24:14', '2020-06-25 14:24:14', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/Wallpaper-red,-logo,-Coca-Cola,-can,-soft-drink-.jpg'),
(88, 'Fanta', 45, '1', 10, '2020-06-25 14:25:24', '2020-06-25 14:25:24', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/refreshments-1274898.jpg'),
(89, '7 Up', 25, '1', 10, '2020-06-25 14:26:39', '2020-06-25 14:26:39', 4, 10, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Drinks/images.jpg'),
(90, 'Ice Cream', 75, '1', 10, '2020-06-25 14:28:00', '2020-06-25 14:28:00', 3, 13, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dessert/Ice%20Cream%20bowl-.jpg'),
(91, 'Pudding', 65, '1', 10, '2020-06-25 14:29:15', '2020-06-25 14:29:15', 3, 12, 'Spicy - Indian - Salad Included', 'storage/FoodComb/Dessert/download.jpg'),
(92, 'Cake Torte', 65, '1', 10, '2020-06-25 14:31:45', '2020-06-25 14:31:45', 3, 12, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Dessert/cake-Torte%20Dessert.jpg'),
(93, 'Fish Bean Rice', 75, '3', 10, '2020-06-25 14:36:03', '2020-06-25 14:36:03', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/-fish-beans-rice.jpg'),
(94, 'Fried Chicken', 115, '1', 10, '2020-06-25 14:37:39', '2020-06-25 14:37:39', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried-chicken-690039.jpg'),
(95, 'Egg Fried Bread', 125, '2', 10, '2020-06-25 14:40:22', '2020-06-25 14:40:22', 2, 4, 'Spicy - Indian - Salad Included', 'storage/Shop%20Menu/Main%20Dish/fried%20eggs-on%20bread.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fc_orders`
--

CREATE TABLE `fc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `order_body` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_user_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_orders`
--

INSERT INTO `fc_orders` (`id`, `restaurant_id`, `order_body`, `order_user_address`, `order_from`, `customer_name`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 3, '{\"27\":{\"food_id\":\"27\",\"food_name\":\"Sandwich\",\"food_price\":\"65\",\"quantity\":\"2\",\"food_restaurant_id\":\"3\"}}', NULL, 1, NULL, NULL, '2020-06-25 12:51:28', '2020-06-25 12:51:28'),
(2, 3, '{\"27\":{\"food_id\":\"27\",\"food_name\":\"Sandwich\",\"food_price\":\"65\",\"quantity\":\"2\",\"food_restaurant_id\":\"3\"}}', NULL, 1, NULL, NULL, '2020-06-25 12:51:33', '2020-06-25 12:51:33'),
(3, 3, '{\"30\":{\"food_id\":\"30\",\"food_name\":\"Egg Potato\",\"food_price\":\"25\",\"quantity\":\"3\",\"food_restaurant_id\":\"3\"}}', NULL, 1, NULL, NULL, '2020-06-25 13:32:32', '2020-06-25 13:32:32'),
(4, 3, '{\"30\":{\"food_id\":\"30\",\"food_name\":\"Egg Potato\",\"food_price\":\"25\",\"quantity\":\"3\",\"food_restaurant_id\":\"3\"},\"33\":{\"food_id\":\"33\",\"food_name\":\"Coca Cola\",\"food_price\":\"35\",\"quantity\":\"3\",\"food_restaurant_id\":\"3\"}}', NULL, 1, NULL, NULL, '2020-06-25 13:34:44', '2020-06-25 13:34:44'),
(5, 3, '{\"30\":{\"food_id\":\"30\",\"food_name\":\"Egg Potato\",\"food_price\":\"25\",\"quantity\":\"3\",\"food_restaurant_id\":\"3\"},\"33\":{\"food_id\":\"33\",\"food_name\":\"Coca Cola\",\"food_price\":\"35\",\"quantity\":\"3\",\"food_restaurant_id\":\"3\"}}', NULL, 1, NULL, NULL, '2020-06-25 13:36:21', '2020-06-25 13:36:21'),
(6, 4, '{\"55\":{\"food_id\":\"55\",\"food_name\":\"Fish Ball\",\"food_price\":\"150\",\"quantity\":\"1\",\"food_restaurant_id\":\"4\"},\"61\":{\"food_id\":\"61\",\"food_name\":\"Buttar Naan\",\"food_price\":\"45\",\"quantity\":\"1\",\"food_restaurant_id\":\"4\"}}', NULL, 1, NULL, NULL, '2020-06-25 13:36:53', '2020-06-25 13:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `fc_restaurants`
--

CREATE TABLE `fc_restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitting_capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_restaurants`
--

INSERT INTO `fc_restaurants` (`id`, `name`, `sitting_capacity`, `created_at`, `updated_at`, `user_id`, `area_id`, `restaurant_category_id`) VALUES
(3, 'FoodComb', 100, '2020-02-17 12:44:00', '2020-06-25 01:13:59', 1, 1, 4),
(4, 'FoodComb', 100, '2020-06-25 01:14:00', '2020-06-25 01:15:46', 1, 2, 4),
(5, 'FoodComb', 100, '2020-06-25 01:15:27', '2020-06-25 01:15:27', 1, 3, 4),
(6, 'Panshi', 150, '2020-06-25 01:17:24', '2020-06-25 01:17:24', 17, 1, 4),
(7, 'Pizza Hut', 40, '2020-06-25 01:18:29', '2020-06-25 01:18:29', 17, 1, 3),
(8, 'Zafran Restaurant', 120, '2020-06-25 01:19:58', '2020-06-25 01:19:58', 1, 3, 2),
(10, 'Buffet House & Restaurant', 80, '2020-06-25 01:22:42', '2020-06-25 01:22:42', 1, 2, 2),
(11, 'The Mad Grill', 40, '2020-06-25 01:23:27', '2020-06-25 01:23:27', 17, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fc_restaurant_categories`
--

CREATE TABLE `fc_restaurant_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_restaurant_categories`
--

INSERT INTO `fc_restaurant_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', '2019-12-22 03:15:47', '2019-12-22 03:15:47'),
(2, 'Indian', '2019-12-21 03:16:00', '2019-12-22 03:16:19'),
(3, 'Italian', '2019-12-22 03:16:00', '2020-06-25 01:04:24'),
(4, 'Bangla', '2020-06-24 06:29:11', '2020-06-24 06:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-20 15:07:14', '2019-12-20 15:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-12-20 15:07:14', '2019-12-21 05:57:01', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-12-20 15:07:14', '2019-12-21 05:57:02', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-12-20 15:07:29', '2019-12-21 05:57:01', 'voyager.hooks', NULL),
(12, 1, 'Fc Areas', '', '_self', 'voyager-lighthouse', NULL, NULL, 7, '2019-12-20 23:17:55', '2019-12-21 05:57:02', 'voyager.fc-areas.index', NULL),
(13, 1, 'Fc Food Categories', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-12-20 23:19:59', '2019-12-21 05:57:02', 'voyager.fc-food-categories.index', NULL),
(20, 1, 'Fc Restaurant Categories', '', '_self', 'voyager-archive', NULL, NULL, 10, '2019-12-21 07:12:49', '2019-12-21 07:12:49', 'voyager.fc-restaurant-categories.index', NULL),
(21, 1, 'Menu Items', '', '_self', 'voyager-book', NULL, NULL, 11, '2019-12-29 13:59:09', '2019-12-29 13:59:09', 'voyager.fcmenuitems.index', NULL),
(22, 1, 'Food Families', '', '_self', 'voyager-check-circle', NULL, NULL, 12, '2020-01-04 03:34:03', '2020-01-04 03:34:03', 'voyager.fc-food-families.index', NULL),
(23, 1, 'Menu Item (Restaurant Owner)', 'owner/menu_item_owner', '_blank', 'voyager-book-download', '#000000', NULL, 13, '2020-01-05 15:50:03', '2020-01-05 15:54:32', NULL, ''),
(24, 1, 'Fc Orders', '', '_self', NULL, NULL, NULL, 14, '2020-01-14 16:35:08', '2020-01-14 16:35:08', 'voyager.fc-orders.index', NULL),
(25, 1, 'Restaurants', '', '_self', 'voyager-company', NULL, NULL, 15, '2020-01-31 19:18:30', '2020-01-31 19:18:30', 'voyager.fc-restaurants.index', NULL),
(26, 1, 'Daily Specials', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 16, '2020-06-09 04:32:17', '2020-06-09 04:32:17', 'voyager.daily-specials.index', NULL),
(27, 1, 'Fc Default Menus', '', '_self', 'voyager-boat', NULL, NULL, 17, '2020-06-14 23:54:11', '2020-06-14 23:54:11', 'voyager.fc-default-menu.index', NULL),
(28, 1, 'Reservations', '', '_self', 'voyager-ticket', NULL, NULL, 18, '2020-06-15 02:19:52', '2020-06-15 02:19:52', 'voyager.reservations.index', NULL),
(29, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 19, '2020-06-21 10:41:18', '2020-06-21 10:41:18', 'voyager.contacts.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_12_20_111928_create_restaurants_table', 1),
(28, '2019_12_20_112010_create_menu_items_table', 1),
(29, '2019_12_20_112137_create_orders_table', 1),
(37, '2019_12_21_065414_add_user_foreign_key_to_restaurants', 2),
(38, '2019_12_21_125814_add_columns_to_fc_restaurant', 2),
(39, '2019_12_29_190221_add_category_refrence_to_fc_items', 3),
(41, '2020_01_04_092544_create_food_families_table', 4),
(42, '2020_01_05_201604_add_food_family_refrence_to_fc_food_items', 5),
(43, '2020_01_05_213021_add_type_to_fc_menu_items', 6),
(44, '2020_01_14_215607_create_fc_orders_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'browse_bread', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'browse_database', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(4, 'browse_media', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(5, 'browse_compass', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(6, 'browse_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(7, 'read_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(8, 'edit_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(9, 'add_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(10, 'delete_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(11, 'browse_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(12, 'read_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(13, 'edit_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(14, 'add_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(15, 'delete_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(16, 'browse_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(17, 'read_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(18, 'edit_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(19, 'add_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(20, 'delete_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(21, 'browse_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(22, 'read_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(23, 'edit_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(24, 'add_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(25, 'delete_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(26, 'browse_hooks', NULL, '2019-12-20 15:07:29', '2019-12-20 15:07:29'),
(27, 'browse_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(28, 'read_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(29, 'edit_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(30, 'add_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(31, 'delete_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(32, 'browse_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(33, 'read_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(34, 'edit_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(35, 'add_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(36, 'delete_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(57, 'browse_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(58, 'read_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(59, 'edit_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(60, 'add_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(61, 'delete_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(62, 'browse_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(63, 'read_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(64, 'edit_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(65, 'add_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(66, 'delete_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(67, 'browse_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(68, 'read_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(69, 'edit_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(70, 'add_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(71, 'delete_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(72, 'browse_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(73, 'read_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(74, 'edit_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(75, 'add_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(76, 'delete_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(77, 'browse_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(78, 'read_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(79, 'edit_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(80, 'add_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(81, 'delete_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(82, 'browse_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(83, 'read_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(84, 'edit_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(85, 'add_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(86, 'delete_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(87, 'browse_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(88, 'read_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(89, 'edit_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(90, 'add_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(91, 'delete_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(92, 'browse_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(93, 'read_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(94, 'edit_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(95, 'add_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(96, 'delete_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(97, 'browse_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(98, 'read_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(99, 'edit_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(100, 'add_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(101, 'delete_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_text` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `branch`, `people`, `date`, `time`, `name`, `email`, `phone`, `request_text`) VALUES
(4, 1, 2, '2020-06-22', '03:00', 'Kamruzzaman Kamran', 'kamrana610@gmail.com', '88017786451', 'DQEFDGSF');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'user', 'Normal User', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'shop_holder', 'ShopHolder', '2020-02-16 07:41:28', '2020-02-16 07:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Food Comb', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Find you taste easily.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\RXqv3HpiC7mH1gDXzS52.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Food Comb', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Admin panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-20 15:13:48', '2019-12-20 15:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'zindabazar,Sylhet',
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '+8801764562808'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `address`, `phone_number`) VALUES
(1, 1, 'Kamran', 'kamran@gmail.com', 'users\\June2020\\hEJDpGW5J4jkD4Kv0cHa.jpg', NULL, '$2y$10$FjVabEtllFT7y7lh0i0RtepK7KXRhq.OSS8jp2lNbWHSKmzO56CJi', 'XGkkLs2m0MEhcAFvCtG6Z2Hrc3kccZKnoa9Bio5YcjtXXPSIw7Ct8UwfHZud', '{\"locale\":\"en\"}', '2019-12-20 15:10:14', '2020-06-24 06:36:31', 'zindabazar,Sylhet', '+8801764562808'),
(6, 2, 'Kamran Khan', 'kamran392@gmail.com', 'users/default.png', NULL, '$2y$10$DrjnxjEHB8mttaAJjJ/p.O.uXwTgaZCQzQfkqlqYONPtpAAENCvEi', NULL, NULL, '2020-06-09 04:07:32', '2020-06-09 04:07:32', 'zindabazar,Sylhet', '+8801764562808'),
(16, 3, 'Kamruzzaman Kamran', 'kamrana610@gmail.com', 'users/default.png', NULL, '$2y$10$T/RGZhSrNDc3E7kvU8ZuweQiC3VjqDDmTLhvJk3MM8/LyFCOv9MYO', 'A0oGWFPhUZcYRQZmZNvMIbqrijO4ovVQ0AF6qpT6kFJ19HQwDmFMJ8eZflp2', '{\"locale\":\"en\"}', '2020-06-24 06:25:50', '2020-06-25 01:27:40', 'zindabazar,Sylhet', '+8801764562808'),
(17, 1, 'Mahir Rashid', 'mahir@gmail.com', 'users/default.png', NULL, '$2y$10$vu1pMUZIwtp7YHq/BPzq7e0sA3D/YdOc.m6c1iJlVBqLByrAfUmqe', NULL, '{\"locale\":\"en\"}', '2020-06-25 01:05:51', '2020-06-25 01:05:51', 'zindabazar,Sylhet', '+8801764562808'),
(18, 2, 'Mahir Miah', 'rashid@gmail.com', 'users/default.png', NULL, '$2y$10$IqF.0CPPXW6/EYAVxLCZUO35ZN/txQi5QqyjVHembmNdiHwrhYq0q', NULL, '{\"locale\":\"en\"}', '2020-06-25 01:06:54', '2020-06-25 01:06:54', 'zindabazar,Sylhet', '+8801764562808'),
(19, 3, 'Rashid Khan', 'mrashid@gmail.com', 'users/default.png', NULL, '$2y$10$PxMU62h.R115oV623PcJ..e.5vlxWGLJVLYDpbjusWliUPnQ8UDsG', NULL, '{\"locale\":\"en\"}', '2020-06-25 01:07:57', '2020-06-25 01:07:57', 'zindabazar,Sylhet', '+8801764562808');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(16, 3),
(17, 1),
(18, 2),
(19, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_specials`
--
ALTER TABLE `daily_specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `fc_areas`
--
ALTER TABLE `fc_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_default_menu`
--
ALTER TABLE `fc_default_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_food_categories`
--
ALTER TABLE `fc_food_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_food_families_category_id_foreign` (`category_id`);

--
-- Indexes for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_menu_items_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `fc_menu_items_category_id_index` (`category_id`),
  ADD KEY `fc_menu_items_food_family_id_index` (`food_family_id`);

--
-- Indexes for table `fc_orders`
--
ALTER TABLE `fc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_orders_order_from_index` (`order_from`),
  ADD KEY `fc_orders_restaurant_id_index` (`restaurant_id`);

--
-- Indexes for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_restaurants_user_id_index` (`user_id`);

--
-- Indexes for table `fc_restaurant_categories`
--
ALTER TABLE `fc_restaurant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_specials`
--
ALTER TABLE `daily_specials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fc_areas`
--
ALTER TABLE `fc_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_default_menu`
--
ALTER TABLE `fc_default_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `fc_food_categories`
--
ALTER TABLE `fc_food_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `fc_orders`
--
ALTER TABLE `fc_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fc_restaurant_categories`
--
ALTER TABLE `fc_restaurant_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  ADD CONSTRAINT `fc_food_families_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `fc_food_categories` (`id`);

--
-- Constraints for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  ADD CONSTRAINT `fc_menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `fc_food_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_menu_items_food_family_id_foreign` FOREIGN KEY (`food_family_id`) REFERENCES `fc_food_families` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_menu_items_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `fc_restaurants` (`id`);

--
-- Constraints for table `fc_orders`
--
ALTER TABLE `fc_orders`
  ADD CONSTRAINT `fc_orders_order_from_foreign` FOREIGN KEY (`order_from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_orders_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `fc_restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  ADD CONSTRAINT `fc_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
