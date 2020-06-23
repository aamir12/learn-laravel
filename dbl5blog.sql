-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 05:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbl5blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_20_114536_create_users_table', 1),
(2, '2020_06_20_181535_create_roles_table', 1),
(3, '2020_06_20_181719_create_posts_table', 1),
(4, '2020_06_21_045339_create_profiles_table', 2),
(6, '2020_06_21_100815_create_projects_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'aamir', 'dfds fdsf dsf', NULL, '2020-06-21 06:12:47', '2020-06-21 06:12:47'),
(2, 'dgf', 'gfdgfd', NULL, '2020-06-21 06:36:11', '2020-06-21 06:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `fullname`, `phone`, `city`, `country`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'aamir khan', '9876543210', 'Bhopal', 'India', 1, '2020-06-21 04:56:49', '2020-06-21 04:56:49'),
(2, 'Irfan Ali', '9875641230', 'Indore', 'India', 2, '2020-06-20 04:56:49', '2020-06-21 04:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quia omnis id quae.', 'Non aut eius voluptatum laborum. Et repellendus dolores repellendus impedit a quia rerum. Laborum dolorem consequuntur quia odit nihil alias placeat. Nemo aut velit eaque quidem perferendis harum. Corporis molestiae sit deleniti eum occaecati qui est repellendus. Laudantium illum sed ea nemo est placeat.', '2020-06-21 04:50:32', '2020-06-21 04:50:32'),
(2, 'Eaque optio voluptas voluptatem eos.', 'Beatae debitis reprehenderit soluta et neque. Blanditiis excepturi deserunt nobis id. In repudiandae consequatur maxime dolorum quia ut autem libero. Nisi expedita voluptatum dolores nihil. Reprehenderit et omnis repudiandae. Sit odio perferendis laudantium.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(3, 'Qui repellat incidunt fugit blanditiis qui cupiditate occaecati.', 'Assumenda id quae ut iste. Perferendis aut tempora aut magni soluta eius id. Qui laboriosam id porro est recusandae eum cumque. Et quia quod dolor exercitationem quia velit natus doloremque. Nobis illo libero possimus nemo fugiat voluptatum dicta. Dolor ducimus ipsum maxime eum sed quis nobis rerum. Sequi vel animi occaecati velit possimus fuga.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(4, 'Commodi esse ratione repellendus laborum ducimus quis assumenda.', 'Quam molestias quaerat ad accusantium non delectus sit nihil. Sed tenetur vitae libero quam ut excepturi necessitatibus cupiditate. Iusto sapiente blanditiis omnis voluptatibus deserunt ut. Dolorem dolor excepturi harum ab. Accusamus cupiditate sint ea. Odio et sed iusto nisi temporibus. Officiis neque in nobis aliquid.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(5, 'Totam magnam maxime sit et perspiciatis aut.', 'Qui nobis aut odio harum autem facilis exercitationem. Dolores esse enim et deserunt magnam et ut. Ut assumenda quibusdam voluptates voluptatem et. Illo asperiores in harum temporibus quaerat. Asperiores non laborum tempora error. Consequatur cupiditate pariatur totam sit reiciendis perspiciatis fugit. Ut et necessitatibus aperiam cum minus officiis deserunt.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(6, 'Soluta labore porro quia.', 'Magni laudantium ratione debitis aperiam. Repellendus suscipit tempore consequuntur in voluptatum quos ullam. Velit aut voluptas facilis perferendis. Illum similique et et illo ullam sunt incidunt. Non qui dolorem aut tempore. Dolor accusamus officiis animi fugit sed nam facere.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(7, 'Eos repellendus dolorum aut.', 'Et et maxime ipsam deleniti qui non omnis. Vel animi velit mollitia qui dolorem. Iste doloremque sed dolore ipsam impedit. Veniam deserunt quas accusamus voluptatem. Sit ab accusantium autem quibusdam iste dolores sit.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(8, 'Dignissimos dolorum neque culpa omnis autem quo.', 'Aliquam deserunt dolores nesciunt eum aliquid ad. Debitis ratione officiis quis et dolorem molestias. Et beatae dolores ut et. Deleniti quas sequi culpa voluptas esse recusandae. Iste accusantium voluptate ullam.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(9, 'Id reprehenderit asperiores aperiam perferendis quo est.', 'Et enim omnis dolore sint praesentium repellendus placeat delectus. Et sit voluptatem dolores consequatur distinctio consequuntur eligendi. Ipsum natus sit qui qui. Doloribus suscipit necessitatibus cum libero saepe. Reprehenderit id quae dolorem aliquam delectus. Consequatur harum illo perferendis reiciendis sed facilis. Ex ut ipsam repellat sit dignissimos quis.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(10, 'Praesentium quam consectetur sint voluptatum eaque praesentium aut.', 'Facilis excepturi molestiae doloribus quos. Consequuntur exercitationem iste distinctio. Excepturi nobis autem aliquam ducimus distinctio sint. Fugit vitae et voluptatem ea praesentium possimus sit.', '2020-06-21 04:50:57', '2020-06-21 04:50:57'),
(11, 'Deserunt beatae et tenetur.', 'Aut cumque et sunt nihil. A itaque et atque accusantium laboriosam repellat voluptas. Adipisci suscipit soluta quo at incidunt libero. Et quasi recusandae error dolorum.', '2020-06-21 04:50:57', '2020-06-21 04:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrative', '2020-06-20 18:24:37', '2020-06-20 18:24:37'),
(2, 'User', '2020-06-20 18:24:37', '2020-06-20 18:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Aamir', 'password', 'aamir@gmail.com', 1, '2020-06-20 18:25:18', '2020-06-20 18:25:18'),
(2, 'Tahir', 'password', 'tahir@gmail.com', 2, '2020-06-20 18:25:18', '2020-06-20 18:25:18'),
(3, 'Azhar', 'password', 'azhar@gmail.com', 2, '2020-06-16 18:42:58', '2020-06-26 18:42:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
