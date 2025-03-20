-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2025 at 03:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php3_wd19306`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dien thoai', NULL, NULL),
(2, 'Dong ho', NULL, NULL),
(3, 'May tinh', NULL, NULL),
(4, 'May tinh bang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_15_004835_create_categories_table', 1),
(5, '2025_03_15_005529_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Omer Christiansen IV', 'https://via.placeholder.com/640x480.png/00cc88?text=quos', 'Nostrum modi explicabo ut non rerum quia. Non quia soluta ducimus. Nesciunt maxime et eos a minus eius placeat aut.', '647.00', 82, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(2, 'Adonis Nolan', 'https://via.placeholder.com/640x480.png/0022ee?text=cupiditate', 'Sapiente eligendi et vel suscipit sed quod. Voluptate sunt ipsam neque expedita ut. Sint et optio voluptas.', '600.00', 47, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(3, 'Lilla Littel IV', 'https://via.placeholder.com/640x480.png/00cc00?text=iste', 'Repudiandae rerum numquam harum laudantium quae voluptatibus eum. Praesentium optio velit saepe voluptatem temporibus. Omnis eaque necessitatibus sit quibusdam veniam. Ut rerum id qui minima.', '291.00', 6, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(4, 'Vivienne Waelchi', 'https://via.placeholder.com/640x480.png/0033aa?text=ut', 'Modi qui ex quidem totam quos. Fuga sunt qui delectus ut. Repellendus mollitia omnis vero qui quas. Minus veniam repellendus sint reprehenderit asperiores ut.', '444.00', 0, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(5, 'Dr. Timmothy Hintz III', 'https://via.placeholder.com/640x480.png/00bbaa?text=unde', 'Numquam impedit omnis cupiditate dolores quia. Ad illum nemo sapiente natus maxime. Et molestiae consequatur ea vel aut sunt.', '887.00', 48, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(6, 'Mr. Rafael Wehner', 'https://via.placeholder.com/640x480.png/00eedd?text=mollitia', 'Molestias consectetur ducimus autem aliquam asperiores molestias sit. Perferendis voluptatem earum sint officiis tempora illo. Sint vero cupiditate sunt eius tempore tempore deserunt. Molestias maiores soluta vitae.', '600.00', 47, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(7, 'Ilene Fritsch II', 'https://via.placeholder.com/640x480.png/001199?text=quo', 'Qui architecto facilis quae quia expedita. Et beatae ut velit et. Accusamus perspiciatis laudantium recusandae. Voluptatibus enim dolorem sapiente necessitatibus maiores doloribus esse. Molestias ad voluptas ipsam harum corporis id.', '649.00', 9, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(8, 'Reagan Johnston', 'https://via.placeholder.com/640x480.png/00aacc?text=occaecati', 'Officia ad voluptas veritatis cupiditate. Delectus temporibus omnis ducimus praesentium autem. Expedita minus eos est recusandae esse.', '801.00', 35, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(9, 'Carol Harvey', 'https://via.placeholder.com/640x480.png/006633?text=sunt', 'Ipsam earum quia molestiae facere exercitationem vel nobis. Et quia ut officiis voluptas unde ut vel. Ducimus earum voluptatibus in deserunt cum non totam.', '722.00', 35, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(10, 'Carlo Johnston', 'https://via.placeholder.com/640x480.png/00dd44?text=quia', 'Sint deleniti eos labore iure exercitationem. Alias atque ipsa veniam esse dolore. At distinctio repudiandae sit blanditiis earum. Non asperiores sint adipisci.', '954.00', 95, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(11, 'Alexandro Vandervort', 'https://via.placeholder.com/640x480.png/0011dd?text=dolor', 'Et voluptatum dicta libero dolore consequatur. Nemo qui reprehenderit cumque provident non doloremque. Praesentium ullam voluptatem rerum iusto voluptatem deleniti dolorem.', '599.00', 79, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(12, 'Prof. Suzanne Beatty III', 'https://via.placeholder.com/640x480.png/009977?text=rem', 'Aut numquam provident a. Ea explicabo porro voluptas officia consequatur assumenda unde.', '319.00', 69, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(13, 'Yazmin O\'Reilly', 'https://via.placeholder.com/640x480.png/005566?text=nobis', 'Totam eum eum assumenda placeat aut repudiandae necessitatibus ut. Aperiam quisquam similique libero et laudantium. Rerum ut architecto quia ut quas at illum non. Cupiditate ratione deserunt molestiae optio vitae omnis incidunt.', '156.00', 22, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(14, 'Lou Boyer', 'https://via.placeholder.com/640x480.png/008899?text=sunt', 'Impedit laborum quaerat vitae eos. Eum dolorem voluptatem aut ea et. Quo fugiat quaerat ut a aut quibusdam qui.', '806.00', 50, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(15, 'Fabiola Pfeffer', 'https://via.placeholder.com/640x480.png/00eedd?text=officiis', 'Adipisci at voluptatem excepturi vitae ea id. Blanditiis rerum explicabo dolores tempora dolor dolorem maiores doloremque. Soluta quidem qui nulla possimus.', '716.00', 3, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(16, 'Prof. Kailee Kerluke', 'https://via.placeholder.com/640x480.png/00dddd?text=dolor', 'Tempora ut sit atque consequatur fugit. Aut et in ea delectus quasi. Porro expedita neque laboriosam rerum rerum blanditiis ipsum. A asperiores rerum et in. Iusto quas sit necessitatibus architecto qui sint.', '464.00', 85, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(17, 'Ali Luettgen', 'https://via.placeholder.com/640x480.png/00cc66?text=fuga', 'Enim quia sunt atque similique commodi harum odio nesciunt. Doloribus enim et unde aperiam aut cupiditate hic. Qui minus quia maiores corrupti minus. Saepe occaecati asperiores sequi est saepe neque ipsa. Veritatis optio qui qui sunt voluptatem et labore.', '365.00', 41, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(18, 'Prof. Davon Lakin MD', 'https://via.placeholder.com/640x480.png/0066dd?text=sit', 'Maxime omnis ipsum pariatur consequuntur earum eveniet. Saepe consequuntur dolore occaecati consequatur. Quis officia minus eveniet sint optio distinctio commodi.', '869.00', 9, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(19, 'George Stamm', 'https://via.placeholder.com/640x480.png/00aa66?text=aliquam', 'Vel amet eveniet ad non error blanditiis et quos. In mollitia omnis dolores similique molestiae illo eum excepturi. Explicabo dolorem sapiente incidunt facere. Sapiente quisquam est odit et.', '214.00', 27, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(20, 'Dr. Manuel Barrows', 'https://via.placeholder.com/640x480.png/001177?text=fugiat', 'Et voluptate vel quia omnis sunt. Ea nam omnis maiores id perferendis consequatur. Quia sint quo incidunt quas consequatur autem et. Facilis itaque numquam est animi repellendus.', '741.00', 53, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(21, 'Willis Cole PhD', 'https://via.placeholder.com/640x480.png/0000ee?text=sed', 'Nulla a deserunt et iste quis nemo. Rerum iure sit quia sit ut. Officia ad nulla voluptas doloremque quidem omnis quis.', '439.00', 77, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(22, 'Elliott Kilback III', 'https://via.placeholder.com/640x480.png/000066?text=eaque', 'Explicabo eveniet amet enim provident vel sed. Quisquam modi vero aliquid beatae. Veritatis suscipit quibusdam recusandae enim consequatur.', '477.00', 60, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(23, 'Sebastian Schinner', 'https://via.placeholder.com/640x480.png/00bbee?text=maiores', 'Et unde consequuntur aut mollitia doloribus qui dolor. In dolores rerum minima voluptatum in est reiciendis. Ad a voluptate magni doloremque sit voluptas. Eum at tempora alias sapiente iusto.', '940.00', 97, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(24, 'Francis Conroy', 'https://via.placeholder.com/640x480.png/00bb55?text=omnis', 'Rerum sapiente harum quo ipsa. Alias id a est quis. Cupiditate recusandae dolor minima quisquam quis ea hic.', '265.00', 68, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(25, 'Missouri Hessel', 'https://via.placeholder.com/640x480.png/00bbbb?text=ut', 'Maxime aliquam culpa iste nulla labore. Facilis ipsam delectus officia qui vero eius. Exercitationem doloribus porro aut est id ut. Eius ex quo asperiores consequatur.', '593.00', 69, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(26, 'Mr. Jettie Bashirian', 'https://via.placeholder.com/640x480.png/0088ee?text=tempora', 'Itaque voluptatum vel consequuntur deserunt totam eum. Qui voluptates et voluptatibus dolor dolores facilis. Placeat quis ea inventore tempore quasi.', '922.00', 70, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(27, 'Pascale Bogisich', 'https://via.placeholder.com/640x480.png/00cc55?text=sit', 'Maiores molestias occaecati sint ut. Est veritatis impedit occaecati itaque laudantium non eum. Voluptas labore dolor et sed consequatur qui est. Laborum vitae occaecati consequatur aut. Vel laboriosam consequatur dicta non et.', '463.00', 65, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(28, 'Laverne Huel', 'https://via.placeholder.com/640x480.png/00aa55?text=non', 'Dolore repellat accusamus ipsam fugit. Dolor autem eaque blanditiis tenetur architecto quis unde. Saepe praesentium adipisci illo vero et perferendis cum.', '103.00', 5, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(29, 'Fred Bogan', 'https://via.placeholder.com/640x480.png/001188?text=voluptate', 'Necessitatibus laboriosam eveniet itaque voluptatem dolorem eum. Id quidem accusantium aliquid velit occaecati. Quo quia autem possimus iure. Repudiandae nesciunt error dignissimos facere voluptatum et praesentium alias.', '148.00', 44, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(30, 'Gene Dietrich Jr.', 'https://via.placeholder.com/640x480.png/00aadd?text=tenetur', 'Quisquam sed nihil beatae. Optio possimus quis consectetur nisi repudiandae asperiores. Vel nihil vitae voluptatem aliquid aperiam voluptates quasi.', '592.00', 50, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(31, 'Walker Parker', 'https://via.placeholder.com/640x480.png/003366?text=vel', 'Voluptate a est quas voluptas ipsam dolorem adipisci. Eum quia aperiam autem. Officiis assumenda ab architecto. Dolores ducimus eaque necessitatibus esse. Aut et alias eos nesciunt dicta.', '689.00', 65, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(32, 'Tristin Zemlak', 'https://via.placeholder.com/640x480.png/007711?text=aut', 'Excepturi est in repellat consequatur neque nihil. Esse rerum mollitia excepturi nesciunt consectetur incidunt et dolorem. Aspernatur consequatur magnam nisi omnis magni.', '743.00', 47, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(33, 'Adolfo Cremin', 'https://via.placeholder.com/640x480.png/0066cc?text=at', 'Quasi ea dignissimos qui culpa et ut voluptatem. Et dolores quibusdam ex quia minima quidem deleniti. Et magni quia corrupti eaque.', '864.00', 74, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(34, 'Prof. Colleen Tillman III', 'https://via.placeholder.com/640x480.png/009955?text=nulla', 'Veniam et veniam architecto ut voluptates nihil repudiandae. Possimus aut dolor dolorem et error aliquid.', '806.00', 77, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(35, 'Ms. Greta Kiehn V', 'https://via.placeholder.com/640x480.png/00cc66?text=enim', 'Qui ut velit delectus harum. Saepe ut et non at enim reiciendis. Ipsa rerum ut sapiente facere enim tempore sit est. Ab voluptatem impedit dolorem voluptas.', '488.00', 87, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(36, 'Brock D\'Amore', 'https://via.placeholder.com/640x480.png/0077ee?text=qui', 'Reiciendis necessitatibus aut occaecati a voluptatem quo ut enim. Ea consequatur doloremque quam et assumenda. Cum non labore accusamus ad consequuntur repellendus. Ipsam aspernatur quibusdam est voluptatem omnis.', '367.00', 84, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(37, 'Prof. Roman Lebsack', 'https://via.placeholder.com/640x480.png/0044bb?text=earum', 'Quia animi sapiente quisquam repellendus adipisci explicabo voluptatem dolorum. Quis rem voluptatem non porro excepturi autem. Culpa repellendus non tenetur est cum necessitatibus non. Sunt mollitia aut molestiae sunt consectetur.', '291.00', 97, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(38, 'Humberto Dach', 'https://via.placeholder.com/640x480.png/003399?text=iure', 'Et dolorem impedit aliquid ut esse voluptatibus. Unde non illo reprehenderit. Eius esse qui et ipsum.', '118.00', 9, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(39, 'Dr. Lavina Block V', 'https://via.placeholder.com/640x480.png/00bb00?text=aliquid', 'Sunt aspernatur nihil repellat sit numquam. Eius veniam asperiores dolorum pariatur doloremque. Necessitatibus aut atque ipsam reprehenderit nihil voluptates. Minus voluptates qui magnam a doloribus dolorem ut.', '314.00', 44, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(40, 'Gladyce Keeling', 'https://via.placeholder.com/640x480.png/00ddcc?text=et', 'Qui dignissimos et enim cumque aperiam. Et alias enim quidem corrupti officia. Officiis velit et quae. Illo illo assumenda doloremque amet. Laudantium atque culpa odit ducimus dolorum aut.', '317.00', 36, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(41, 'Cordell Gulgowski', 'https://via.placeholder.com/640x480.png/005555?text=ut', 'Sunt pariatur ipsam est illo consequatur excepturi vel officiis. Sunt sit repellendus unde qui. Earum inventore est velit ipsam.', '335.00', 70, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(42, 'Brendon Smitham', 'https://via.placeholder.com/640x480.png/00bbcc?text=sit', 'Modi vitae eligendi ex a numquam delectus. Voluptate nisi laudantium repudiandae totam qui. Et est velit hic hic enim dolor. Voluptatum quam sunt consequatur mollitia nulla et.', '230.00', 84, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(43, 'Alexandre Fay', 'https://via.placeholder.com/640x480.png/002200?text=vitae', 'Laborum aliquid rerum velit rem facilis ut distinctio. Vero minima voluptates dolor ipsum ut aspernatur. Officia quia deserunt error dolores iusto a.', '380.00', 79, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(44, 'Makayla Rodriguez', 'https://via.placeholder.com/640x480.png/0044bb?text=vel', 'Cum fuga ut voluptas nihil. Deserunt et eaque enim et nihil consequuntur nihil.', '944.00', 93, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(45, 'Floy Armstrong', 'https://via.placeholder.com/640x480.png/002222?text=quaerat', 'Ea magnam consequatur consequatur animi eaque quia id. Molestiae est laudantium assumenda unde reprehenderit facilis distinctio.', '163.00', 2, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(46, 'Wallace Barton', 'https://via.placeholder.com/640x480.png/00aabb?text=omnis', 'Dolor voluptas possimus nostrum omnis vero. Ea aut magni voluptatem aut quibusdam commodi sint. Est veritatis non dolorem fugit. Repellendus repellat reprehenderit est ea impedit ut exercitationem.', '895.00', 59, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(47, 'Morris Gottlieb', 'https://via.placeholder.com/640x480.png/0088ff?text=dolorum', 'Aut officiis reiciendis sapiente nihil est. Voluptatum facilis commodi aut voluptas et id. Hic et inventore consequatur vel quibusdam tempora.', '447.00', 35, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(48, 'Leonor O\'Kon', 'https://via.placeholder.com/640x480.png/006611?text=pariatur', 'Eligendi numquam sint repellat excepturi. Esse voluptatem rerum officia beatae facere fugiat. Rerum voluptates commodi natus molestiae ullam impedit.', '954.00', 74, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(49, 'Karlie Christiansen', 'https://via.placeholder.com/640x480.png/0099cc?text=et', 'Laboriosam ullam dolores officiis et quaerat quidem deserunt aut. Nemo laboriosam temporibus repellat accusantium. Dolor illo sequi atque laboriosam et sit. Ab animi ipsum voluptates at accusamus.', '919.00', 59, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(50, 'Otho Shanahan', 'https://via.placeholder.com/640x480.png/006699?text=in', 'Earum reiciendis ut et vel. Molestias ut nam labore odit nemo tenetur repudiandae. Voluptatibus non optio recusandae pariatur sit nobis quam sequi. Deserunt repudiandae odit itaque tempora minus assumenda corporis.', '904.00', 91, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(51, 'Freddy Ferry DDS', 'https://via.placeholder.com/640x480.png/009955?text=dolorum', 'Culpa incidunt consectetur minus fuga et perspiciatis veritatis nisi. Et qui aliquid at. Est eum eius et maiores.', '653.00', 19, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(52, 'Briana Kohler', 'https://via.placeholder.com/640x480.png/002299?text=minus', 'Modi et eos esse voluptates sunt id earum. Repellendus iste totam aut facilis aspernatur libero. Rerum consequatur aliquid ducimus facilis.', '518.00', 83, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(53, 'Mr. Geovanny Klocko V', 'https://via.placeholder.com/640x480.png/005588?text=quae', 'Consequatur assumenda eveniet et asperiores dolorum eligendi. Eveniet pariatur commodi architecto aut velit quaerat iste corporis. Dolor aut saepe et. Nam sit qui quam corrupti voluptas libero. Quisquam esse omnis quo.', '490.00', 100, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(54, 'Elissa Hayes', 'https://via.placeholder.com/640x480.png/0066ee?text=cupiditate', 'Enim veniam dolorem nisi hic. Non nihil a reprehenderit velit perspiciatis in odio quisquam. Non tempora iure et itaque nihil. Vero sunt voluptatem qui accusantium.', '628.00', 82, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(55, 'Dr. Barton Stroman', 'https://via.placeholder.com/640x480.png/0099cc?text=et', 'Suscipit quo natus qui mollitia. Magnam ducimus occaecati voluptatem ut repellat accusantium.', '968.00', 52, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(56, 'Berniece O\'Reilly', 'https://via.placeholder.com/640x480.png/003355?text=aut', 'Numquam id enim tempore dignissimos molestiae impedit. Molestias corrupti repellendus eius aut corrupti reprehenderit velit et. Ut ipsa velit optio expedita optio voluptatem eveniet. Quam ipsam ducimus sed nihil quam.', '438.00', 76, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(57, 'Prof. Tristin Morissette', 'https://via.placeholder.com/640x480.png/00dd44?text=provident', 'Dignissimos iusto nulla minima. Ipsa amet quo illo reiciendis consectetur ad. Ut aut ad repellat molestiae harum et.', '852.00', 93, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(58, 'Destinee DuBuque', 'https://via.placeholder.com/640x480.png/009988?text=quo', 'Vitae exercitationem id quia aut facere molestiae. Perspiciatis labore ut necessitatibus accusamus quidem est voluptatibus. Aperiam dolore dolor est est.', '921.00', 16, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(59, 'Brooke Jaskolski', 'https://via.placeholder.com/640x480.png/000088?text=asperiores', 'Ab recusandae ut sequi porro veniam ratione. Quia tempore est pariatur consequatur possimus occaecati aspernatur. Enim eos est fugit temporibus iste praesentium sed. Atque dolorum perferendis soluta occaecati omnis laboriosam nesciunt.', '488.00', 89, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(60, 'Asha Abbott MD', 'https://via.placeholder.com/640x480.png/004411?text=qui', 'Similique asperiores earum deserunt cumque fugiat esse dolor. Aut non similique sapiente. Quae amet veniam id nisi sed ipsa placeat esse. Autem placeat vel nihil et.', '803.00', 3, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(61, 'Vance Conn I', 'https://via.placeholder.com/640x480.png/00bb77?text=non', 'Nisi aut delectus ea. Omnis architecto voluptatem accusantium mollitia sit velit. Nihil cum dolor aliquid incidunt ut vero est ea.', '979.00', 24, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(62, 'Dr. Jeremie Russel DDS', 'https://via.placeholder.com/640x480.png/00eeff?text=sed', 'Dolore ab quaerat adipisci rerum est labore. Aliquam est error facilis incidunt quasi deserunt ut. Facere qui officiis et fugiat voluptatum recusandae veniam.', '943.00', 41, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(63, 'Christop Kuvalis', 'https://via.placeholder.com/640x480.png/0077ee?text=eveniet', 'Eveniet est deleniti sunt ut. Corrupti nulla delectus vel fugiat et officia. Vel aut ut illum quo in sunt quis ipsa.', '196.00', 15, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(64, 'Mr. Magnus Green', 'https://via.placeholder.com/640x480.png/009900?text=ducimus', 'Sit mollitia molestiae quo est cupiditate. Dolores rerum libero enim ut debitis doloremque. Iure quidem et corporis.', '636.00', 53, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(65, 'Giovani Hermann', 'https://via.placeholder.com/640x480.png/0077dd?text=beatae', 'Sapiente illum quis saepe voluptate. Quo neque delectus quis totam voluptas sit. Rerum expedita similique ullam aut accusamus unde repellendus.', '590.00', 79, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(66, 'Dr. Clement Lynch', 'https://via.placeholder.com/640x480.png/00dd22?text=repellendus', 'Modi qui qui rem quis. Et aspernatur consequatur non. Saepe voluptatem ut ut in cumque nostrum repellat ipsa. Nulla in quo animi sequi harum esse.', '512.00', 53, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(67, 'Mrs. Maegan Williamson', 'https://via.placeholder.com/640x480.png/00ff44?text=tempora', 'Quidem quos harum et quo aliquid alias error. Reiciendis quibusdam animi corporis dolores modi. Eaque quasi voluptas ea illo. Sint adipisci ea deserunt non enim dolores.', '238.00', 48, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(68, 'Eunice Hettinger', 'https://via.placeholder.com/640x480.png/0033aa?text=tenetur', 'Ut et aut quia et quo quo. Autem non et aliquam neque tempore laudantium rerum pariatur. Ut accusantium ipsa non consequuntur. Inventore veniam sunt deserunt.', '661.00', 34, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(69, 'Eleazar Bednar', 'https://via.placeholder.com/640x480.png/00ff00?text=placeat', 'Quia sit quia perspiciatis minus. Sit quaerat qui nihil molestiae maxime corporis. Et nobis voluptatem ut non ut fuga. Qui ut quae vel non est quisquam fuga blanditiis.', '249.00', 21, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(70, 'Dr. Reymundo Koepp', 'https://via.placeholder.com/640x480.png/0055ff?text=corporis', 'Ratione sit omnis eaque dignissimos et qui odio. Consequatur voluptatibus dolor omnis consequatur quia.', '894.00', 98, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(71, 'Prof. Roman Von', 'https://via.placeholder.com/640x480.png/004499?text=voluptatibus', 'Assumenda officia non sequi consequuntur enim ea perferendis. Adipisci sed quia et quia error. Minus et sunt et optio repudiandae porro quam.', '905.00', 31, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(72, 'Viviane Walter Jr.', 'https://via.placeholder.com/640x480.png/003399?text=corrupti', 'Exercitationem voluptates ratione dolores quas ut maiores. Magnam cumque sequi pariatur maiores et. Et est impedit est sunt sit quia.', '443.00', 8, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(73, 'Dr. Madeline Orn', 'https://via.placeholder.com/640x480.png/00ffee?text=sequi', 'Illo aut recusandae similique sequi molestiae voluptas debitis. Laudantium atque et provident facere ipsam. Repellendus aut accusantium laboriosam aut eum debitis. Et ullam voluptates repudiandae incidunt ratione quia exercitationem.', '159.00', 84, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(74, 'Sandy Kemmer', 'https://via.placeholder.com/640x480.png/00aabb?text=labore', 'Dignissimos quis assumenda voluptatem quia ut possimus. Aut suscipit quae voluptatem aut. Quisquam fuga excepturi sit. Saepe voluptate et quos dolorem.', '106.00', 44, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(75, 'Destany Balistreri', 'https://via.placeholder.com/640x480.png/007744?text=quas', 'Ipsa optio voluptatem architecto dignissimos doloremque veritatis. Et nulla qui architecto ducimus. Optio atque harum voluptate dolorem consequuntur aspernatur.', '342.00', 75, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(76, 'Lurline Rogahn', 'https://via.placeholder.com/640x480.png/008844?text=nostrum', 'Totam velit magnam fugit non. Corporis autem omnis iusto dolor. Omnis qui non enim ipsa. Voluptate sed velit id eveniet magnam.', '638.00', 47, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(77, 'Mallie Turner', 'https://via.placeholder.com/640x480.png/002200?text=molestiae', 'Magni earum non maiores quo voluptates vitae sit. Consectetur eius fugit cum ipsum magnam enim aut. Illum at aut totam assumenda commodi odio autem. Velit sed laborum non deleniti itaque amet.', '904.00', 1, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(78, 'Luisa Rohan', 'https://via.placeholder.com/640x480.png/00bb88?text=est', 'Minus qui rerum eius quod itaque repellat adipisci qui. Maxime aut molestiae debitis nihil aut nesciunt. Ex explicabo perspiciatis sed libero voluptatem facere beatae.', '298.00', 46, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(79, 'Zander Lang', 'https://via.placeholder.com/640x480.png/00ee33?text=sapiente', 'Quam fuga aliquid dolore ipsam non quisquam. Ex maiores non voluptas delectus voluptas eum officiis quam. Et praesentium tenetur sit itaque repudiandae.', '119.00', 96, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(80, 'Assunta Lockman', 'https://via.placeholder.com/640x480.png/00aa33?text=et', 'Consequatur rerum qui ratione nihil exercitationem nemo. Cupiditate qui deserunt deserunt qui. Accusantium autem aut necessitatibus a sint modi. Aut nihil laborum voluptatem ipsum voluptatibus facilis.', '405.00', 12, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(81, 'Prof. Ned Howell DDS', 'https://via.placeholder.com/640x480.png/00ccff?text=rerum', 'Saepe sed fugiat nobis. Ut dolores eius non est nesciunt quisquam maxime. Eius ut quae distinctio eos.', '224.00', 71, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(82, 'Bonita Carter', 'https://via.placeholder.com/640x480.png/000077?text=voluptatem', 'Blanditiis excepturi sed culpa perferendis minus. Nisi quia voluptas eius libero voluptatem sapiente. Modi enim consequatur id saepe.', '581.00', 72, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(83, 'Catherine Kozey DVM', 'https://via.placeholder.com/640x480.png/0000aa?text=numquam', 'Rerum ipsa deserunt exercitationem. Optio nisi voluptatum consequatur eos corporis voluptas. Magnam voluptas eaque laudantium modi. Sed illo non dolores aut accusamus officia fugiat.', '854.00', 34, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(84, 'Miss Pattie Gerhold V', 'https://via.placeholder.com/640x480.png/0055ff?text=necessitatibus', 'Dolorem totam autem doloribus aut eveniet qui. Et et officia voluptates id. Suscipit minus fuga quas perspiciatis totam occaecati molestiae.', '402.00', 43, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(85, 'Dana Wyman', 'https://via.placeholder.com/640x480.png/00ccee?text=eius', 'Assumenda corrupti consequatur ipsam molestiae. Et quam magnam voluptatem quidem inventore veniam dolore. Et aspernatur amet quibusdam ut facilis eum sit.', '708.00', 64, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(86, 'Dasia Hahn', 'https://via.placeholder.com/640x480.png/0077dd?text=laboriosam', 'Explicabo hic in alias pariatur natus similique voluptatum. Officia consequatur exercitationem sit et blanditiis sed. Occaecati minus et id ut. Ratione ipsam impedit consequatur et.', '153.00', 6, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(87, 'Mrs. Shanie Pouros', 'https://via.placeholder.com/640x480.png/00dd55?text=qui', 'Dignissimos cum error rerum. Cupiditate expedita in et. Nemo corrupti expedita inventore non aut aperiam ipsum.', '407.00', 92, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(88, 'Shemar Gutkowski Sr.', 'https://via.placeholder.com/640x480.png/00bb44?text=corrupti', 'Omnis est quaerat vel repellendus. Quibusdam ut velit molestiae sit nobis porro eos.', '598.00', 79, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(89, 'Patience Christiansen', 'https://via.placeholder.com/640x480.png/00aa11?text=expedita', 'Autem harum sint est est non nostrum et. Ullam non eos ea voluptates omnis. Vel voluptatibus occaecati sit est tempore consequuntur amet.', '910.00', 19, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(90, 'Mallie King', 'https://via.placeholder.com/640x480.png/0055bb?text=rerum', 'Nam tempore illum quia temporibus reprehenderit. Praesentium cum maiores nihil occaecati aliquid. Est nam omnis mollitia et harum. Laudantium velit porro veritatis. Et dolorum eos quam.', '530.00', 67, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(91, 'Prof. Carmella Paucek Sr.', 'https://via.placeholder.com/640x480.png/0099ff?text=quis', 'Quibusdam vel provident quisquam libero molestiae excepturi deleniti. Odit corporis animi aperiam nobis qui reprehenderit rerum. Ipsum quidem aperiam enim.', '573.00', 55, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(92, 'Austen Maggio', 'https://via.placeholder.com/640x480.png/00aadd?text=culpa', 'Et rerum dolores accusamus voluptatem et qui ex. Suscipit eaque illo voluptatem qui nihil. Voluptatem voluptas minus explicabo qui. Earum voluptas aspernatur totam praesentium ratione. Aut quia cum eius magni sit in ex.', '712.00', 24, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(93, 'Miss Tiffany Paucek', 'https://via.placeholder.com/640x480.png/006655?text=corrupti', 'Eius vitae fugiat voluptatibus eos et sed omnis. Id voluptatem beatae et repellendus. Qui magnam enim optio facilis et voluptatum id. Unde ea enim doloremque qui. Quo officia dicta maxime quia eos reiciendis.', '452.00', 35, 2, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(94, 'Kevon Zulauf', 'https://via.placeholder.com/640x480.png/00eeaa?text=ducimus', 'Molestias quaerat ea explicabo minima corporis architecto tempora provident. Blanditiis quis delectus ullam praesentium porro. Eveniet nemo omnis a cum fuga. Distinctio voluptate nihil aliquid optio eaque quaerat.', '425.00', 96, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(95, 'Reva Prosacco', 'https://via.placeholder.com/640x480.png/00dd44?text=nihil', 'Omnis neque natus suscipit enim voluptate. Est consequatur ad nemo iure. Enim veniam animi velit expedita. Id aspernatur iste illum soluta vero maiores voluptatem.', '128.00', 95, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(96, 'Mr. Evans Gislason Jr.', 'https://via.placeholder.com/640x480.png/0055aa?text=enim', 'Alias ex sit vero repudiandae nam voluptate. Aut vel necessitatibus ad. Sed vel aut fugit quia ut non. Quod earum ea omnis odio.', '879.00', 34, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(97, 'Harmony Powlowski', 'https://via.placeholder.com/640x480.png/007722?text=debitis', 'Repellat nostrum dolor deleniti qui facilis magnam quam. Reprehenderit quia quia nihil repellat mollitia accusamus. Error voluptate et architecto qui.', '930.00', 87, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(98, 'Kurtis Cartwright', 'https://via.placeholder.com/640x480.png/000088?text=est', 'Sint rerum dicta harum et similique eveniet. Libero dolor et quos totam ut. Rerum expedita dolorem hic aut. Quo et quis quae sit accusamus.', '343.00', 0, 4, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(99, 'Carmella Jakubowski', 'https://via.placeholder.com/640x480.png/00dd44?text=repellat', 'Possimus sit tempora quo facilis praesentium. Rem vero et odio ut ipsum inventore veritatis. Voluptas et alias et sint veritatis voluptate dolor. Reprehenderit occaecati voluptatum molestiae commodi suscipit qui vel.', '750.00', 65, 3, '2025-03-14 18:52:50', '2025-03-14 18:52:50'),
(100, 'Karson Kris', 'https://via.placeholder.com/640x480.png/0088ff?text=eum', 'Rerum est repellat voluptas nemo nisi. Est ut ab quia incidunt. Rerum aut a id vero repudiandae vel. Molestiae voluptas et quos exercitationem atque adipisci.', '647.00', 91, 1, '2025-03-14 18:52:50', '2025-03-14 18:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8C21w15WOIbzmDzjbRm9KhAS6Gy9TS8aAC0MkaNu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2NWU3NCR3VpMFNhdVgzME1paklHSzdKZEgyQ1ZCUVRPanhIMkRqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742383220),
('frwqnEgkjNAEKkwU3BUXiM764qUX5xfOuFAaclq7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVWV3ByTklBaURxWjVLTGM5bGhOdXBxTTJGSG9NTlJjZkRqYm5laSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742412412),
('LCDetCJ3WGVCQFlVPQ32xPGocIerJS4RwsEGbu1H', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1pzNmE3bEQ2M2txdEk5YTZ6YURFc00zdDloRldCTTcwRmdPRDFkZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cz9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742264417);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
