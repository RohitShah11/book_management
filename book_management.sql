-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 05:11 AM
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
-- Database: `book_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rerum eaque nulla natus sunt possimus voluptate.', 'Ollie Kemmer IV', 'Dicta ullam consequatur blanditiis. Fugit similique et qui nostrum adipisci esse modi. Expedita iure nam qui voluptatibus praesentium nesciunt. Impedit labore voluptas fugiat aut quae perspiciatis labore.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(2, 'Sunt ipsa ut earum.', 'Ms. Brandi Lakin', 'Quo ipsam ea non. Tempore dolorem nemo eveniet molestias fuga. Voluptatem laudantium voluptatem ea expedita id quo.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(3, 'Dolores nulla vel architecto itaque aspernatur quo quis.', 'Nya Bartell', 'Ducimus aut repellat quas aut dolore dolorum nisi. Exercitationem omnis eum sed et est facere. Laborum quis dolorem commodi modi mollitia doloremque eos unde. Alias quod consequuntur dicta odio voluptatum veritatis.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(4, 'Possimus architecto qui iusto nihil.', 'Mr. Dave Hermiston Jr.', 'Deleniti eaque nam saepe eveniet rerum et. Magni hic cupiditate qui qui amet. Nesciunt rerum ut repellendus deleniti accusantium. Sunt ad enim unde aut aut quia at.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(5, 'Iusto nulla dolor provident at.', 'Ms. Tess Hickle', 'Dicta autem tenetur voluptatem sit. Voluptatem modi molestias vitae. Dolorem expedita voluptatem at.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(6, 'Inventore ipsa vel voluptate ut quia voluptas.', 'Kira Pollich', 'Sed laboriosam sit placeat soluta veniam. Dolorem nihil quisquam amet ipsa. Illum doloribus amet labore nam repellendus iste. Laborum quibusdam qui sed qui placeat adipisci.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(7, 'Assumenda omnis non numquam fugit.', 'Aubree Konopelski', 'Consequatur veritatis suscipit consequatur nihil molestiae in a voluptatem. Illo qui qui qui exercitationem consequatur. Et inventore esse consequuntur dolore necessitatibus incidunt culpa.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(8, 'Voluptatem ad voluptatem praesentium ut occaecati quod id.', 'Prof. Lukas Fritsch', 'Sed impedit velit aut aliquid officiis nihil eaque. Sunt earum repellat dolor quam alias eos voluptatem. Ex excepturi earum repudiandae a ut et provident.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(9, 'Dolorem aut molestiae iusto quisquam dolore.', 'Dr. Kayla Murray', 'Repellendus quia quis aspernatur aliquid blanditiis. Cumque aut ipsa dolores praesentium nemo. Iste sed natus fugit corporis.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(10, 'Repellendus ad perferendis molestiae unde molestias minima quibusdam.', 'Jaron Beer', 'Ea pariatur molestias eos ut nemo iusto veritatis. Sunt eligendi molestiae molestias sint ipsa. Minima iure rerum id itaque beatae est. Sed blanditiis perspiciatis voluptatem.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(11, 'Doloremque deserunt ut non laborum suscipit.', 'Kayley Rice', 'Voluptatem commodi eum et earum quia. Qui ducimus iste consectetur maiores sunt. In necessitatibus voluptas voluptas modi placeat pariatur nemo. Voluptatibus eos qui deserunt aut eos rem voluptas. Doloribus voluptatem aut labore est et fugiat qui.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(12, 'Sequi rerum id sed.', 'Twila Welch', 'Quia voluptatem culpa repudiandae voluptatum natus fuga voluptas. Delectus ullam libero autem qui perferendis repellendus. Cumque architecto facere provident vitae. Aut dignissimos a sed.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(13, 'Beatae et vel eum voluptatem sed.', 'Leopoldo Wolff MD', 'Et porro voluptate autem. Tempora eius excepturi doloremque dolorem hic eligendi ipsa voluptatibus. Voluptate dolor aut consequatur dolore.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(14, 'Deserunt fuga iste et quam qui facilis.', 'Brian Steuber', 'Iste aliquid et asperiores nulla. Dolor quis eos voluptatibus accusamus culpa nam occaecati reiciendis. Odit eaque architecto a et vel est.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(15, 'Et nostrum fugit modi animi aut.', 'Jena Tremblay', 'Sit perferendis praesentium sunt maiores. Dolor expedita esse excepturi assumenda voluptas. Qui non saepe ipsum iste. Reiciendis rerum accusamus nostrum officia id officiis explicabo.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(16, 'Architecto error molestias qui accusamus aut.', 'Hoyt Von', 'Laudantium atque odio est soluta neque. Temporibus occaecati sapiente labore qui. Animi dicta repellendus sed qui omnis.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(17, 'Consectetur aut ut aut.', 'Barbara Bernhard III', 'Molestiae corporis possimus rerum quo dolore et. Iusto cumque omnis aut quia sit ut exercitationem. Dolorem nisi hic enim qui est quidem iure. Voluptatem repellat et quo et amet et.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(18, 'Beatae qui et occaecati.', 'Dr. Hettie Ebert II', 'Numquam doloribus voluptatem cupiditate. Reprehenderit non sit magnam optio enim eveniet. Quasi fuga voluptate magnam et iste possimus ut. Sunt sint sit voluptates vel.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(19, 'Labore minus omnis quod qui deserunt aut.', 'Misael Beatty', 'Officiis eaque vitae occaecati mollitia labore est. Fugit porro ea porro ea. Atque sit beatae earum perferendis. Voluptate sint velit consequatur et.', '2024-11-23 02:44:54', '2024-11-23 02:44:54'),
(20, 'Vero non et in voluptatum occaecati ea dolorum.', 'Sydnie Langosh', 'Cupiditate nulla odit rerum aliquam accusantium ad enim. Sint nihil atque ut tempore consequatur non deleniti rerum. Occaecati quia vel quas ullam.', '2024-11-23 02:44:54', '2024-11-23 02:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'test', '2024-11-23 10:56:02', '2024-11-23 10:56:02'),
(2, '1', '1', 'test', '2024-11-23 10:56:21', '2024-11-23 10:56:21'),
(3, '12', '1', 'best book', '2024-11-23 11:46:56', '2024-11-23 11:46:56'),
(4, '2', '1', 'best book', '2024-11-23 11:58:48', '2024-11-23 11:58:48'),
(5, '3', '1', 'hello comment', '2024-11-23 11:59:58', '2024-11-23 11:59:58'),
(6, '1', '1', 'nice', '2024-11-23 22:27:47', '2024-11-23 22:27:47');

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
(4, '2024_11_23_073451_create_books_table', 1),
(5, '2024_11_23_073735_create_ratings_table', 1),
(6, '2024_11_23_073807_create_comments_table', 1);

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
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL COMMENT '1 to 5 stars',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `book_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 5, '2024-11-23 10:33:47', '2024-11-23 10:33:47'),
(2, '2', '1', 4, '2024-11-23 11:55:07', '2024-11-23 11:55:07'),
(3, '3', '1', 5, '2024-11-23 11:59:58', '2024-11-23 11:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rohit Shah', 'rohitshah0492@gmail.com', NULL, '$2y$10$39I6.vKeWbK7c03PqJvcvOQcx1GYlltjeV1SR6rxuzNjwwQlAU.K2', NULL, '2024-11-23 03:10:23', '2024-11-23 03:10:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
