-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2021 at 03:45 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emarket_db`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_051951_create_product_categories', 1),
(6, '2021_12_07_052441_buat_tabel_products', 1),
(7, '2021_12_07_052829_create_table_transactions', 1),
(8, '2021_12_07_053556_add_price_and_image_on_table_products', 1),
(9, '2021_12_07_054135_add_foreign_key_to_product_categories_on_table_products', 1),
(10, '2021_12_07_054702_add_foreign_key_to_users_and_products_on_table_transactions', 1),
(11, '2021_12_07_083750_add_soft_deletes_on_table_products', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'qui', 'Quia excepturi asperiores nulla est minus quam nemo. Quasi porro tempore sunt a laboriosam ipsa. Cupiditate minima dolore non iusto est ipsam. Possimus est facere perferendis in maxime. Esse aut expedita fuga rerum eos dolorum eveniet.', 37780, 'https://via.placeholder.com/640x480.png/0000ee?text=animals+voluptatibus', '2021-12-07 01:33:40', '2021-12-07 01:33:40', NULL),
(2, 3, 'architecto', 'Perferendis et doloribus perspiciatis aliquid. Vero ad et sit. Voluptatem dicta delectus maxime suscipit doloribus officia consequuntur. Et quia incidunt doloremque rerum et cumque dolorum.', 26056, 'https://via.placeholder.com/640x480.png/006677?text=animals+ut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(3, 1, 'et', 'Velit doloremque est quidem mollitia placeat. Quas libero praesentium aut nostrum iusto aperiam vel. Qui qui minima enim laboriosam.', 7, 'https://via.placeholder.com/640x480.png/0022cc?text=animals+sit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(4, 2, 'corporis', 'In aut assumenda laborum voluptatibus accusantium enim. Reprehenderit debitis praesentium debitis consectetur aut qui asperiores. Eveniet dolorum velit neque ad. Sunt quis omnis id corporis.', 7, 'https://via.placeholder.com/640x480.png/00cc66?text=animals+sunt', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(5, 2, 'labore', 'Autem et perspiciatis quia est est est. Modi et laboriosam aut dolor et. Magni tempore ducimus fugit dolorem. Deleniti voluptatem a totam neque atque. Laudantium sint voluptates molestiae.', 592328282, 'https://via.placeholder.com/640x480.png/0022bb?text=animals+voluptate', '2021-12-07 01:33:41', '2021-12-07 01:41:07', '2021-12-07 01:41:07'),
(6, 3, 'laudantium', 'Voluptas quam beatae voluptatem atque. Minima magnam harum omnis tenetur molestiae expedita aut. Et tempora vel sit. Est minus est quia fugit aspernatur.', 879, 'https://via.placeholder.com/640x480.png/0044ee?text=animals+suscipit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(7, 3, 'delectus', 'Aspernatur ipsum magnam ut numquam distinctio. A exercitationem autem consequuntur harum. Voluptatem in nisi voluptates eos.', 5909869, 'https://via.placeholder.com/640x480.png/0099cc?text=animals+explicabo', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(8, 4, 'aspernatur', 'Eaque dolorem eligendi numquam fuga excepturi atque ea. Ea expedita eos rerum recusandae distinctio sit reprehenderit. Et cupiditate quia est neque eos rerum voluptatem et. Repellat incidunt quaerat accusantium et.', 697708, 'https://via.placeholder.com/640x480.png/0088aa?text=animals+blanditiis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(9, 3, 'officiis', 'Consequatur sed molestiae et reprehenderit ullam in. Eligendi provident necessitatibus dolore veritatis accusantium ab. Omnis laboriosam sit officia et.', 171, 'https://via.placeholder.com/640x480.png/0011dd?text=animals+soluta', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(10, 4, 'qui', 'Sit est maiores non omnis beatae vel placeat. Assumenda assumenda exercitationem voluptatum perferendis sequi unde quisquam. Praesentium ad ea dolore nesciunt est aut veritatis et.', 177, 'https://via.placeholder.com/640x480.png/00cc55?text=animals+fugiat', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(11, 1, 'accusamus', 'Ut recusandae ut rerum magni. Excepturi cumque ducimus debitis distinctio commodi autem. Facilis quibusdam non et quaerat quibusdam. Quis ipsam sit facilis optio dolores omnis eligendi. Optio aut quod dignissimos rerum quidem id.', 92, 'https://via.placeholder.com/640x480.png/00ee77?text=animals+deserunt', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(12, 3, 'odio', 'Qui nesciunt eos vitae tenetur. Explicabo magni temporibus ipsum assumenda quos. Cupiditate doloribus molestias voluptatem est error officiis ex.', 7, 'https://via.placeholder.com/640x480.png/006666?text=animals+expedita', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(13, 2, 'reprehenderit', 'Itaque dolorum unde ut id. Dicta consequatur est quos reiciendis qui incidunt. Soluta dolorem omnis quidem itaque. Qui in molestiae autem natus et.', 569202, 'https://via.placeholder.com/640x480.png/0022cc?text=animals+sed', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(14, 1, 'rerum', 'Voluptatum libero aspernatur deserunt. Veritatis labore quia laudantium ullam. Et nobis non voluptatum sunt quos nostrum placeat. Consequatur eos officia natus vitae est id esse.', 1901518, 'https://via.placeholder.com/640x480.png/0000bb?text=animals+non', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(15, 1, 'unde', 'Harum deserunt corrupti eligendi sed beatae. Facilis ipsa accusamus cupiditate enim. Commodi fuga non ipsum numquam. Modi et inventore itaque perferendis provident dolore et.', 8416720, 'https://via.placeholder.com/640x480.png/0000cc?text=animals+repellat', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(16, 4, 'labore', 'Et sit delectus possimus autem sed. Dolorem quae quis rerum iste magni qui reprehenderit. Dolorem ad ut maiores quos voluptatibus. Animi pariatur rem sit eveniet ipsum corporis neque.', 9514, 'https://via.placeholder.com/640x480.png/00cc77?text=animals+enim', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(17, 1, 'fugiat', 'Doloremque quasi quo dolorem non et. Veniam ea animi ut voluptatem.', 734365, 'https://via.placeholder.com/640x480.png/00ff11?text=animals+tempora', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(18, 2, 'laborum', 'Ut odit iure delectus. Commodi magnam dolorem aut. Ea rerum dolorem praesentium et. Voluptates quo ea sapiente itaque sit rerum.', 597910803, 'https://via.placeholder.com/640x480.png/00ddbb?text=animals+aut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(19, 2, 'et', 'Fugiat dolores rerum quasi maiores laudantium id laudantium. Unde sint fugiat aliquam et fugit. Sint aut quo beatae nisi rerum. Odio aut eum atque totam rerum omnis reiciendis. Voluptas architecto optio eaque accusantium vero quae autem.', 54472855, 'https://via.placeholder.com/640x480.png/0033dd?text=animals+enim', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(20, 3, 'repellendus', 'Labore error aut quae quasi. Velit eius vel et tenetur voluptatem. Ut ipsam perspiciatis iste fugit excepturi sint asperiores. Assumenda voluptates quia cupiditate facilis suscipit.', 757762992, 'https://via.placeholder.com/640x480.png/004455?text=animals+eos', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(21, 1, 'placeat', 'Debitis quae velit vel temporibus unde quae. Non dolores delectus vitae illo. Vero in quasi ut. Dignissimos aliquam quos adipisci quia qui quis.', 5831842, 'https://via.placeholder.com/640x480.png/000088?text=animals+quod', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(22, 1, 'aspernatur', 'Sit ex at quia rerum corporis harum et. Accusantium eveniet vero cupiditate ipsum deserunt. Neque architecto molestiae voluptatibus assumenda consequuntur itaque et aut.', 2, 'https://via.placeholder.com/640x480.png/00aa55?text=animals+tempora', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(23, 2, 'dicta', 'Laudantium sequi perspiciatis et. Temporibus eveniet quibusdam a sunt. Ut hic itaque voluptas maxime dignissimos aperiam. Rerum sunt ea quia ipsum et natus.', 53977654, 'https://via.placeholder.com/640x480.png/0066bb?text=animals+possimus', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(24, 2, 'quia', 'Expedita reprehenderit laudantium eum quasi temporibus. Iste eum fuga molestias repellendus iste deleniti eveniet. Praesentium aut ea ad tempore illum animi amet eligendi. Rerum laudantium occaecati et eveniet rerum unde.', 99, 'https://via.placeholder.com/640x480.png/000099?text=animals+provident', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(25, 1, 'magnam', 'Assumenda similique aut laborum sed aliquam quibusdam quidem. Ea maxime amet eveniet illum. Ipsa assumenda aliquam in enim modi quod. Nemo voluptatem repudiandae quo eum blanditiis.', 9, 'https://via.placeholder.com/640x480.png/000000?text=animals+corrupti', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(26, 3, 'odit', 'Aut animi laboriosam autem rerum tenetur dicta corrupti. Nesciunt exercitationem et vero temporibus temporibus vero quis. Error veniam quod tempora quisquam qui error nihil aliquam.', 8, 'https://via.placeholder.com/640x480.png/0055aa?text=animals+deserunt', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(27, 3, 'similique', 'Corrupti voluptas ut esse reiciendis quos qui qui. Aut qui repellat optio dolorem repellendus dicta sit. Veritatis consequatur ullam aut.', 53, 'https://via.placeholder.com/640x480.png/0088ee?text=animals+quibusdam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(28, 4, 'ut', 'Natus ut nam laboriosam voluptas delectus dolorem voluptatem. Mollitia quis sunt necessitatibus dolores.', 75617, 'https://via.placeholder.com/640x480.png/009988?text=animals+earum', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(29, 3, 'autem', 'Consequatur et modi sunt qui. Occaecati qui ipsa ut. Libero voluptatem et rem qui doloremque totam provident. Reprehenderit suscipit incidunt et voluptas.', 388600614, 'https://via.placeholder.com/640x480.png/0088ee?text=animals+quod', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(30, 2, 'qui', 'Et ut qui itaque similique. Voluptatem est quia eaque sunt nihil aut libero. Aliquam voluptatem a dolore reiciendis est. Aliquid fuga molestiae autem et itaque.', 901603, 'https://via.placeholder.com/640x480.png/00bb55?text=animals+perspiciatis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(31, 1, 'sunt', 'Aut alias delectus autem aliquid. Molestiae unde iste earum blanditiis et sint molestiae placeat. Dolore nam eius magni vero quas quis id. Maxime quis ea dignissimos temporibus labore omnis. Expedita aut autem quibusdam sint similique nihil facilis quisquam.', 869, 'https://via.placeholder.com/640x480.png/003300?text=animals+perferendis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(32, 3, 'iusto', 'Aut est dolore eligendi at quaerat rerum voluptatum. Nemo quisquam magnam quas quo et neque. Eum omnis tempore est. Qui autem consequuntur optio suscipit voluptas aliquid. Corrupti aut est sed exercitationem in quisquam.', 79, 'https://via.placeholder.com/640x480.png/00eebb?text=animals+et', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(33, 2, 'dolores', 'Quam nulla sunt aut natus atque ipsam quo. Autem illum quo ab minus labore. Maxime maiores a ullam corporis officiis magnam quam.', 66013, 'https://via.placeholder.com/640x480.png/00ee44?text=animals+velit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(34, 4, 'nisi', 'Earum illo nemo numquam quo. Et repellendus voluptatem nihil sunt consequatur consequatur. Et quo temporibus est ab laboriosam ut. Libero repudiandae eos aut repellat.', 77376810, 'https://via.placeholder.com/640x480.png/002277?text=animals+aut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(35, 2, 'facere', 'Amet eius ut sit quaerat nostrum. Praesentium voluptas quod ut aspernatur eaque inventore. Rerum doloribus amet veniam saepe neque saepe ratione. Recusandae mollitia qui culpa sit quasi aut aperiam voluptates.', 81377069, 'https://via.placeholder.com/640x480.png/008866?text=animals+iusto', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(36, 2, 'ab', 'Non facilis qui inventore. Id qui ut voluptatum consequatur. Aperiam eos quas eos necessitatibus. Ut similique sapiente inventore adipisci.', 1184154, 'https://via.placeholder.com/640x480.png/00aabb?text=animals+est', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(37, 3, 'ut', 'Dolores omnis ea sequi vel. Et id cum consequatur sit sit aut.', 26467, 'https://via.placeholder.com/640x480.png/006655?text=animals+explicabo', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(38, 2, 'sapiente', 'Hic commodi expedita aut beatae illo. Velit quidem iure iste dolorem. Quia exercitationem sit in.', 4, 'https://via.placeholder.com/640x480.png/0055ff?text=animals+consectetur', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(39, 3, 'reiciendis', 'Possimus aliquid ut ipsum voluptatem ullam ut. Molestias facere nobis magnam. Quisquam id sit mollitia nam. Suscipit eos et tenetur sit et mollitia rerum.', 8450880, 'https://via.placeholder.com/640x480.png/00aa44?text=animals+est', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(40, 2, 'quae', 'Neque nostrum commodi blanditiis qui aut a nemo. Quibusdam qui voluptatem voluptas omnis. Aut omnis consectetur omnis veniam. Qui aut eveniet repudiandae sit explicabo.', 385, 'https://via.placeholder.com/640x480.png/00aa99?text=animals+minus', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(41, 2, 'laboriosam', 'Delectus doloremque ducimus est alias eum autem dignissimos. Vitae illum eligendi impedit iure. Aut et vitae explicabo.', 8240, 'https://via.placeholder.com/640x480.png/001111?text=animals+rerum', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(42, 1, 'dolores', 'Consequatur ducimus et nostrum temporibus quo. Architecto autem numquam qui nobis ipsum qui tempora aperiam. Assumenda harum deleniti qui doloribus possimus sed sit.', 89667, 'https://via.placeholder.com/640x480.png/00cccc?text=animals+nam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(43, 1, 'expedita', 'Qui nulla doloribus ut ut. Autem hic reprehenderit corporis perferendis sint possimus blanditiis aut. Delectus et eum deserunt facere. Laboriosam aut maxime nulla rerum.', 17, 'https://via.placeholder.com/640x480.png/002200?text=animals+dolor', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(44, 1, 'ut', 'Et dolorem sequi quisquam assumenda libero. Quo dolores molestias soluta qui. Et ratione occaecati inventore ut quo. Molestiae odio accusamus vero quibusdam eum et quisquam.', 531103473, 'https://via.placeholder.com/640x480.png/006600?text=animals+aut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(45, 1, 'temporibus', 'Hic natus asperiores in illo reprehenderit sint. Qui amet explicabo exercitationem et ut. Ex est non velit esse. Quibusdam magnam vel facere illum non distinctio.', 904864123, 'https://via.placeholder.com/640x480.png/00eebb?text=animals+aspernatur', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(46, 2, 'voluptatum', 'Delectus quo voluptates rerum architecto non. Dolores qui ducimus tempora iusto sit officia. Iste quibusdam ullam dolor accusamus facere. Inventore aliquam voluptatibus id id dolorem ab debitis fuga.', 5, 'https://via.placeholder.com/640x480.png/00aaff?text=animals+dolor', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(47, 4, 'repellat', 'Ad beatae et accusantium et ad quia. Velit totam voluptate facilis sint ut consequatur voluptates. Dolores qui quia dolore maiores commodi. Esse id eum consectetur nesciunt et.', 5385, 'https://via.placeholder.com/640x480.png/0022ee?text=animals+impedit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(48, 4, 'debitis', 'Culpa sapiente dolor odit et neque suscipit nobis. Autem maiores nostrum aut aut asperiores. Quia voluptates saepe nemo. Aliquam doloribus dolorem repudiandae deserunt. Assumenda eligendi voluptatem in sequi iusto quod dolorem.', 936, 'https://via.placeholder.com/640x480.png/008866?text=animals+sapiente', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(49, 2, 'corrupti', 'Tempora voluptas beatae dolor sed. Unde aliquam qui blanditiis recusandae quia. Sed nemo atque enim in aut voluptas doloribus fuga. Maxime nulla occaecati quod molestias qui animi.', 945165152, 'https://via.placeholder.com/640x480.png/00dd44?text=animals+ut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(50, 1, 'consectetur', 'Ipsa mollitia est velit accusantium rerum cum architecto nemo. Vel recusandae laboriosam nemo aut ut. Veniam aliquam quia itaque blanditiis facilis. Beatae odio est tenetur et esse.', 39988, 'https://via.placeholder.com/640x480.png/006699?text=animals+quia', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(51, 3, 'placeat', 'Adipisci laborum repudiandae ea pariatur consequatur rerum sit. Laborum aliquam ea blanditiis in similique voluptas.', 662858177, 'https://via.placeholder.com/640x480.png/001144?text=animals+nulla', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(52, 4, 'quidem', 'Odio soluta quia voluptatibus. Et perferendis accusantium sed autem. Numquam quo impedit rerum distinctio dolorem ut vitae.', 720142, 'https://via.placeholder.com/640x480.png/005533?text=animals+sed', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(53, 1, 'et', 'Eaque aut distinctio nihil laboriosam nulla. Consequatur doloribus pariatur consequatur iusto. Eligendi reprehenderit animi laudantium sint cumque. Ipsa consectetur voluptatem voluptatum aut aut molestiae nostrum nobis.', 8287861, 'https://via.placeholder.com/640x480.png/00ee77?text=animals+deserunt', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(54, 1, 'exercitationem', 'Ipsum quas doloribus ipsam aut. Totam aut et quibusdam similique dolore aut. Consequatur aspernatur assumenda sed. Ex optio a sint cumque dolores impedit.', 105501, 'https://via.placeholder.com/640x480.png/004488?text=animals+voluptatem', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(55, 1, 'voluptate', 'Voluptas est odit est odio. Molestiae tempora praesentium et repellendus sequi at ratione. Eos ut placeat sequi perspiciatis omnis voluptas nostrum.', 12412438, 'https://via.placeholder.com/640x480.png/009999?text=animals+quia', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(56, 3, 'cumque', 'Accusamus officiis aut delectus dolorem. Sit ut minus voluptas consectetur ex voluptates. Accusamus sit consequuntur soluta dignissimos.', 2499, 'https://via.placeholder.com/640x480.png/001166?text=animals+quis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(57, 4, 'velit', 'Aliquid dolorem a veniam ipsam in. Ipsum consequatur unde voluptas in. Vitae laborum rem voluptate excepturi ad at atque.', 1, 'https://via.placeholder.com/640x480.png/008899?text=animals+quia', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(58, 2, 'modi', 'Atque hic consequatur possimus est repudiandae illo. Sint fugit qui doloremque. Et sunt sequi laudantium ab expedita. Est cum eos totam accusantium.', 5721, 'https://via.placeholder.com/640x480.png/0055ee?text=animals+nulla', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(59, 1, 'facilis', 'Ipsam atque et dolorum et officia eveniet. Sit optio qui autem quibusdam animi fuga. Nobis voluptatibus molestias necessitatibus ut optio.', 6, 'https://via.placeholder.com/640x480.png/000044?text=animals+corrupti', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(60, 1, 'vel', 'Eligendi doloremque dolore quae et. Nesciunt officiis hic qui provident error ut nulla.', 5, 'https://via.placeholder.com/640x480.png/00ee99?text=animals+est', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(61, 4, 'ipsa', 'Impedit voluptatem culpa cupiditate error aliquam magni dolores. Vitae consequuntur minus ut repudiandae repudiandae rerum. Asperiores in minima blanditiis impedit nobis sed. Perspiciatis aut nulla amet odio.', 8, 'https://via.placeholder.com/640x480.png/001188?text=animals+reiciendis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(62, 1, 'atque', 'Quaerat voluptatem porro deserunt et ut quasi vel. Omnis dolor iusto reiciendis ad ut. Veniam quis provident beatae quia. Perferendis beatae sed aut a nobis sint nisi.', 502250688, 'https://via.placeholder.com/640x480.png/00ddcc?text=animals+fuga', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(63, 4, 'minus', 'Dolor laborum quis tempore rerum omnis. Ipsa molestias est sit et est fugiat iusto nesciunt. Et qui et deleniti.', 0, 'https://via.placeholder.com/640x480.png/006633?text=animals+quia', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(64, 2, 'autem', 'Doloribus esse sit eos. Quis culpa fugit impedit. Dicta doloribus quas veniam dolorum.', 14, 'https://via.placeholder.com/640x480.png/00ccbb?text=animals+id', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(65, 1, 'cum', 'Quia quibusdam dolores deleniti. Possimus alias quia possimus vel ducimus architecto itaque nihil. Molestias esse dolor officia cupiditate consequuntur. Consequatur sed et ut distinctio quisquam consequatur perspiciatis ad.', 8, 'https://via.placeholder.com/640x480.png/00ee77?text=animals+fugit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(66, 1, 'voluptate', 'Sunt aliquid et sint magnam suscipit. Pariatur quod et ipsum tempore. Laudantium cum occaecati quia amet unde. Pariatur error culpa dolorem deserunt autem sit. Quia voluptatem eius dignissimos hic eum et architecto.', 725048, 'https://via.placeholder.com/640x480.png/00bb55?text=animals+ipsa', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(67, 4, 'tenetur', 'Ut voluptatum nam repudiandae labore rem. Aut enim voluptas quis perspiciatis. Dolor doloremque molestiae quasi qui placeat.', 9, 'https://via.placeholder.com/640x480.png/0077dd?text=animals+labore', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(68, 1, 'ut', 'Earum qui libero debitis ut sapiente voluptatem. Sequi est dolorem labore omnis. In iste qui labore iusto eveniet est.', 95534, 'https://via.placeholder.com/640x480.png/00ff66?text=animals+aperiam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(69, 3, 'praesentium', 'Voluptatum consectetur odit quia explicabo quam aut. Magnam dolorum dolores sint error laboriosam rerum. Ullam quis aliquid fugit voluptatem. Inventore nulla aspernatur ea consequatur voluptas excepturi blanditiis repudiandae. Pariatur sequi voluptas voluptatem aliquam.', 5542, 'https://via.placeholder.com/640x480.png/0011ee?text=animals+nobis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(70, 3, 'velit', 'Nemo est qui corporis dicta ab pariatur. Qui pariatur et iusto quibusdam officia. Ut ut quia ab. Aperiam quam culpa accusantium incidunt velit.', 785564791, 'https://via.placeholder.com/640x480.png/00aa22?text=animals+quo', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(71, 2, 'et', 'Aspernatur velit consequatur repudiandae at possimus. Laudantium suscipit officia alias autem incidunt doloribus. Quidem nam earum molestiae velit aspernatur sed accusantium quod. Pariatur assumenda suscipit ullam aspernatur rem.', 3921761, 'https://via.placeholder.com/640x480.png/000088?text=animals+quae', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(72, 2, 'distinctio', 'Quaerat quae ut quis sunt. Ducimus labore et cumque a. Ut expedita perferendis inventore architecto aut.', 948827, 'https://via.placeholder.com/640x480.png/00ddaa?text=animals+autem', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(73, 4, 'blanditiis', 'Voluptatibus exercitationem consequatur laudantium et et omnis. Et cupiditate iste numquam aut cupiditate quos quos. Aut libero rem blanditiis assumenda. A est dolores consequatur tempora inventore.', 78, 'https://via.placeholder.com/640x480.png/00dd88?text=animals+numquam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(74, 1, 'ab', 'Quis explicabo corrupti libero ut id. Odio unde cupiditate omnis. Mollitia velit sint et voluptas vel perferendis debitis.', 2757836, 'https://via.placeholder.com/640x480.png/000077?text=animals+veritatis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(75, 4, 'officiis', 'Dolor eius sunt ut dolore consectetur. Quia hic in est. Magnam omnis dignissimos corporis beatae quia sunt.', 341439212, 'https://via.placeholder.com/640x480.png/00dd88?text=animals+laudantium', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(76, 1, 'laboriosam', 'Nihil sed tempore beatae quo odit. Qui minus assumenda ut maxime. Dolores sed odio tempore quos. Delectus qui asperiores ratione saepe.', 4627869, 'https://via.placeholder.com/640x480.png/00aa77?text=animals+ullam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(77, 4, 'numquam', 'Aut et adipisci sunt beatae qui laudantium. Sequi porro veritatis consequatur distinctio enim maxime. Minus minus ad ducimus corrupti suscipit. Provident est a laborum laborum consectetur. Ea eius occaecati et sed vel cum.', 0, 'https://via.placeholder.com/640x480.png/000000?text=animals+commodi', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(78, 1, 'enim', 'Rerum officiis labore nihil est. Numquam provident voluptatum voluptatum ullam eum voluptatum dolorem. Quia consequatur sed et neque mollitia. Laborum inventore dolor rem velit earum ea.', 30939, 'https://via.placeholder.com/640x480.png/009911?text=animals+est', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(79, 2, 'ea', 'Nesciunt sit et molestiae animi ipsa natus. Quia ratione ducimus error quia. Consequuntur libero itaque amet dolorem id autem quia.', 71, 'https://via.placeholder.com/640x480.png/0066cc?text=animals+temporibus', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(80, 4, 'deleniti', 'Eaque similique eaque necessitatibus nostrum. Veniam et reprehenderit qui recusandae dignissimos voluptatem recusandae ipsum. Iste itaque nemo vel sunt placeat. Explicabo impedit laboriosam sequi modi reprehenderit temporibus et.', 1102524, 'https://via.placeholder.com/640x480.png/0099ee?text=animals+iusto', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(81, 1, 'odio', 'Dolor eligendi voluptas hic suscipit nobis et. Ab et libero voluptatem expedita perspiciatis dignissimos unde. Et inventore nostrum et ipsum. Iusto dolor similique sunt et consectetur expedita. Molestias id aliquam molestias accusantium.', 23669, 'https://via.placeholder.com/640x480.png/0088bb?text=animals+consequatur', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(82, 3, 'aut', 'Laboriosam explicabo est minus et alias. Ab velit tempore nam. Quasi iusto explicabo expedita quis non at.', 96148286, 'https://via.placeholder.com/640x480.png/0066dd?text=animals+ex', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(83, 3, 'et', 'Magni aut tenetur et perspiciatis. Officiis error accusamus deserunt ea dicta natus.', 6, 'https://via.placeholder.com/640x480.png/00aa33?text=animals+modi', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(84, 2, 'ea', 'Quae ut rem commodi magni. Aliquid ratione quia officiis optio aut sit expedita enim. Ut architecto at consequuntur.', 4424992, 'https://via.placeholder.com/640x480.png/0055bb?text=animals+sit', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(85, 3, 'labore', 'Sed odit expedita magni vel alias dolores. Veniam fugiat consequuntur illum voluptatem. Saepe illo quisquam quis.', 72, 'https://via.placeholder.com/640x480.png/009900?text=animals+vero', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(86, 4, 'qui', 'Sit nulla recusandae officia. Qui rerum tenetur ut et. Consequatur quis doloremque molestiae voluptas cupiditate. Expedita dolorum ut ipsam ipsam.', 4682444, 'https://via.placeholder.com/640x480.png/0055ee?text=animals+quam', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(87, 3, 'et', 'Natus id et animi vel. Nostrum temporibus earum laudantium eos inventore. Sapiente eius fugiat inventore mollitia deserunt sunt. Qui quae consequuntur omnis magni tenetur quae.', 522168, 'https://via.placeholder.com/640x480.png/00ee66?text=animals+error', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(88, 3, 'magnam', 'Autem dolor aspernatur ut ut dolorem et iste deleniti. Aliquid soluta maxime assumenda. Eaque quia iure cumque sit. Blanditiis est explicabo iste laudantium.', 2, 'https://via.placeholder.com/640x480.png/002222?text=animals+earum', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(89, 1, 'facilis', 'Quod atque et eum inventore qui quod inventore. Et sit repellendus illum fugit excepturi. Ut laboriosam iure voluptatibus incidunt possimus. Eum animi qui quisquam velit.', 92, 'https://via.placeholder.com/640x480.png/00dd11?text=animals+aut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(90, 2, 'unde', 'Ut ducimus sint consequatur autem. Quis et mollitia est reprehenderit explicabo. Delectus beatae molestiae ut voluptate non reiciendis rerum. Veritatis quo nulla exercitationem repellendus debitis id est.', 9, 'https://via.placeholder.com/640x480.png/00ff11?text=animals+dolor', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(91, 2, 'ipsum', 'Quae velit quasi qui cum. Et sint repellendus laboriosam ad ipsum. Ex dignissimos temporibus necessitatibus qui provident a et dolores.', 4808808, 'https://via.placeholder.com/640x480.png/00ee00?text=animals+eum', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(92, 3, 'adipisci', 'Qui et exercitationem excepturi eligendi illum molestias. Ut assumenda expedita cumque id accusantium. Aut ut eos fugiat ipsum saepe.', 7, 'https://via.placeholder.com/640x480.png/005533?text=animals+ut', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(93, 4, 'fugiat', 'Cupiditate magnam rem dolor aspernatur ratione velit aut. Natus animi accusamus ut eligendi est minima. Maiores ut sed eum dolor nulla eum aut.', 80885, 'https://via.placeholder.com/640x480.png/006644?text=animals+porro', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(94, 4, 'voluptas', 'Aliquam ut quia reprehenderit rerum neque est. Architecto ipsam quia reprehenderit quo voluptatem. Ea illo quidem ut sed qui eligendi.', 53669702, 'https://via.placeholder.com/640x480.png/0077ee?text=animals+tempore', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(95, 3, 'amet', 'Unde nihil sequi delectus atque aut aperiam voluptate. Voluptatem est excepturi blanditiis voluptatem. Tempore rerum dolore quas quae.', 468, 'https://via.placeholder.com/640x480.png/0044bb?text=animals+laudantium', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(96, 2, 'dolorem', 'Et ut aliquam sed in. Nesciunt repudiandae qui laudantium ut sapiente dolorem. Atque est similique deserunt ratione soluta sint ea iste.', 4, 'https://via.placeholder.com/640x480.png/00ff77?text=animals+quis', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(97, 1, 'vitae', 'Consequatur qui commodi quis hic dolor. Ad qui ducimus eligendi nihil reiciendis. Minima aut officia et aperiam consectetur culpa.', 79366, 'https://via.placeholder.com/640x480.png/00cc88?text=animals+fugiat', '2021-12-07 01:33:41', '2021-12-07 01:33:41', NULL),
(98, 3, 'numquam', 'Dicta est laudantium repellendus non velit. Impedit unde dolor optio recusandae molestias. Nisi nam quia sed similique esse dolore.', 13887311, 'https://via.placeholder.com/640x480.png/0011bb?text=animals+aspernatur', '2021-12-07 01:33:42', '2021-12-07 01:33:42', NULL),
(99, 4, 'nobis', 'Enim quisquam autem qui pariatur iusto sed. Explicabo est natus sunt quis eos vel. Provident non omnis nesciunt qui est ea eos.', 363, 'https://via.placeholder.com/640x480.png/003355?text=animals+aut', '2021-12-07 01:33:42', '2021-12-07 01:33:42', NULL),
(100, 2, 'labore', 'Magni eligendi id ducimus itaque magni quo architecto asperiores. Et beatae sunt culpa dolores quis sint. Iste iste recusandae distinctio ab ipsum laudantium tempore. Fugit exercitationem a rerum.', 186161, 'https://via.placeholder.com/640x480.png/008888?text=animals+numquam', '2021-12-07 01:33:42', '2021-12-07 01:33:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foods', '2021-12-07 01:33:40', '2021-12-07 01:33:40'),
(2, 'Meats', '2021-12-07 01:33:40', '2021-12-07 01:33:40'),
(3, 'Vegetables', '2021-12-07 01:33:40', '2021-12-07 01:33:40'),
(4, 'Fruits', '2021-12-07 01:33:40', '2021-12-07 01:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
