-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Out-2018 às 01:39
-- Versão do servidor: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel_api`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_23_230024_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'quam', 'Vel rem impedit eius et veritatis.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(2, 'labore', 'Omnis dolore sunt aut deserunt soluta.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(3, 'ut', 'Et id doloremque quibusdam.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(4, 'vel', 'Perspiciatis eius sunt incidunt.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(5, 'ratione', 'Corporis nostrum totam nihil voluptatem ab.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(6, 'ab', 'Dolor et est sint voluptatem.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(7, 'tempora', 'Unde iusto earum voluptatibus quam dolorum.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(8, 'eos', 'Cupiditate dolorem reiciendis ipsam qui reprehenderit rerum harum.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(9, 'impedit', 'Asperiores sunt alias ea quia eligendi minima eum neque.', '2018-10-24 02:51:54', '2018-10-24 02:51:54'),
(10, 'et', 'Nobis culpa blanditiis qui qui id.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(11, 'quia', 'Earum repudiandae nihil omnis totam numquam.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(12, 'sit', 'Rerum voluptas dicta et ut vero.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(13, 'provident', 'Sit et aspernatur voluptatem quia.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(14, 'mollitia', 'Eligendi veniam in molestiae iste ut praesentium ad optio.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(15, 'similique', 'Aliquid deserunt et sit voluptate repellat consequuntur.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(16, 'vel', 'Et aperiam est inventore sit voluptas enim.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(17, 'ad', 'Voluptatem laboriosam sed maiores voluptatem maxime animi.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(18, 'quia', 'Ea est ut eum necessitatibus et fugiat.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(19, 'magni', 'Error eum consequuntur et in sint.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(20, 'rerum', 'Dolorem et necessitatibus molestiae cupiditate perspiciatis.', '2018-10-24 02:51:55', '2018-10-24 02:51:55'),
(21, 'Novo Produto', 'Descrição do Produto', '2018-10-25 01:28:51', '2018-10-25 01:28:51'),
(22, 'Produto Novo 3', 'Descrição Nova 3', '2018-10-25 01:46:48', '2018-10-25 01:46:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Carlos Ferreira', 'carlos@especializati.com.br', '$2y$10$WowaY1PAxwfQqgHhCCAROewd.Tqd5yY1xJG6c3cFvWfXBuPUjeKcO', NULL, '2018-10-24 02:51:54', '2018-10-24 02:51:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
