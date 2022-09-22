-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2022 a las 06:06:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `posts`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_09_21_072348_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `titulo`, `contenido`, `created_at`, `updated_at`) VALUES
(1, 1, 'Consequatur.', 'Facilis doloremque voluptatem ipsum quia odio earum explicabo. Ab dolores veritatis sed consequuntur. Quia doloribus tempora quas illo qui corrupti placeat.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(2, 1, 'Consequatur ut.', 'Vel vero doloremque voluptatem ut. Ducimus recusandae omnis saepe ipsam et.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(3, 1, 'Maiores.', 'Dicta minus et dolor ad vel asperiores eum. Recusandae est magnam et deleniti.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(4, 1, 'Praesentium.', 'Harum est alias eius. Possimus voluptatem eum est voluptatem rerum qui vel. Voluptatum porro quaerat impedit quia molestiae et voluptatem.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(5, 1, 'Laborum.', 'Nemo dignissimos vitae ut modi. Quisquam error consequatur harum harum. Maxime maxime vero in nihil. Impedit dolorem amet deleniti qui omnis saepe repudiandae.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(6, 1, 'Numquam.', 'Occaecati distinctio et nobis cupiditate commodi qui corporis. Id cupiditate ipsum est. Quae non voluptatem provident velit aut est voluptas.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(7, 1, 'Sequi sit.', 'Qui tenetur voluptatum quia non. Laborum autem fuga commodi nemo tempora. Ut asperiores est in dolorum voluptatem pariatur quas.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(8, 1, 'Perspiciatis.', 'Consequatur odio illum nam. Ab et et iusto qui autem.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(9, 1, 'Quia sit qui.', 'Unde quia harum tempore libero praesentium totam. Ea et suscipit quasi soluta. Ducimus qui et est excepturi voluptas.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(10, 1, 'Et alias et.', 'Non perferendis ex ut odio non. Consequatur non eos facilis. Vitae nihil et reprehenderit.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(11, 1, 'Quis.', 'Culpa incidunt minus laudantium est iste. Eveniet quia quo odit assumenda.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(12, 1, 'Ratione qui.', 'Sequi et quibusdam dolorum. Dignissimos doloribus iusto unde voluptas vitae. Quia et qui deserunt hic dolorum quo. Sit aspernatur incidunt illum tenetur ut.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(13, 1, 'Minus deleniti.', 'Sed ad dolorum iste vel reprehenderit. Saepe quo et et distinctio. Reprehenderit rem est est nulla sunt distinctio. Beatae delectus est nihil enim deleniti.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(14, 1, 'Mollitia.', 'Et est deleniti consequatur rerum inventore placeat illum. Rerum pariatur dolores omnis porro maxime facilis deserunt sed. Molestiae eos ad ut.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(15, 1, 'Error qui.', 'Dolores non error ipsa sint quam consectetur. Enim omnis nulla voluptate ab libero deserunt. Est quo ut quasi voluptatem.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(16, 1, 'Consequatur.', 'Amet doloremque nostrum quis sint. Aliquid molestiae commodi nihil.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(17, 2, 'Eos ratione.', 'Et aliquid numquam at eaque molestiae qui iusto. Voluptas magni qui et eum aliquam rerum repellat.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(18, 2, 'Non aut dolor.', 'Accusamus a libero iure vel rerum est. Fuga qui recusandae harum omnis velit nulla. Quisquam sit mollitia officiis. Corrupti quia sequi qui.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(19, 2, 'Veritatis.', 'Et quis voluptatem et commodi officiis est. Qui ab maiores ea doloremque et. Et sint autem nemo error illum ut aspernatur. Quas eius aspernatur est laborum.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(20, 2, 'Qui.', 'Sunt voluptatibus et excepturi libero debitis. Doloremque autem sint dicta magni quo. Repellendus voluptas quo suscipit debitis.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(21, 2, 'Nam.', 'Quisquam sed et ullam minus corrupti impedit libero quidem. Odit facilis repudiandae eum. Quia nulla repellendus eaque eligendi et dolores.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(22, 2, 'Velit eius.', 'Nisi vitae aut provident soluta et possimus quod. Aut ab molestiae saepe laboriosam quae. Sed et fuga libero porro.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(23, 2, 'Dolorem omnis.', 'Aliquid omnis incidunt pariatur id saepe. Voluptatem dolores quas accusamus.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(24, 2, 'Rerum natus.', 'Qui saepe suscipit accusantium quis sint. Est libero et debitis ut rerum. Hic sint in asperiores sunt itaque dolor. Debitis nisi quis officia veritatis.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(25, 2, 'Ipsum quae.', 'Eum repellat enim et dolores ducimus pariatur sapiente harum. Ad quia exercitationem ut quia quisquam natus. Nihil molestiae qui ut enim enim.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(26, 2, 'Aliquam non.', 'Esse et iusto reiciendis facilis tenetur voluptatem distinctio. Accusamus expedita sapiente illo dolorum. Rerum omnis accusantium optio eveniet aut quo.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(27, 2, 'Vel unde quas.', 'Eum fuga unde eum rem sed molestiae facere. Enim facilis laudantium aut labore maiores velit itaque. Sed sequi quia itaque sit non aut.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(28, 2, 'Expedita ut.', 'Sapiente et quis eos ipsum dolores quae. Et molestias consectetur quia. Ipsum voluptatem eos et numquam facilis. Sint et voluptatem quia et.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(29, 2, 'Aut voluptas.', 'Sunt porro voluptas omnis aliquid non. Vel rerum qui est expedita blanditiis. Dolorem ut cumque id sit hic aspernatur officia.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(30, 2, 'Eum et.', 'Earum rerum maiores aperiam suscipit expedita et. Amet ut nam quo neque quidem.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(31, 2, 'Voluptas.', 'Velit et rerum facilis debitis omnis. Enim nulla qui commodi sed non nemo eaque. Commodi reprehenderit mollitia debitis fugit illo. Est tempora et odio.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(32, 2, 'Voluptatibus.', 'Aperiam expedita ipsam culpa voluptatibus harum. Aperiam deserunt quisquam eum libero aperiam accusamus. Et sed impedit in qui ratione.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(33, 2, 'Reiciendis et.', 'Qui explicabo qui ut illum. Similique quis blanditiis eos.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(34, 2, 'Aut fugit.', 'Non saepe non libero quisquam atque maxime quidem. Perspiciatis hic iusto tenetur molestiae corporis sit id. Ducimus dolor consequatur ipsum illum earum.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(35, 2, 'Voluptas rem.', 'Explicabo dolores praesentium velit nobis dolorem. Et deleniti dolor quaerat harum. Distinctio ipsa sunt ex deserunt.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(36, 2, 'Nam sed magnam.', 'Omnis eum modi rerum labore. Quam dicta minima sed aut. Possimus explicabo perferendis nam tempora facilis. Officia vel ut eos distinctio ut sed.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(37, 2, 'Molestiae.', 'Sit reprehenderit cupiditate ut deserunt repellendus consequuntur in. Aut nemo vel et dolores molestiae. Nihil sit ex non.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(38, 2, 'Quasi incidunt.', 'Aut aut voluptas ducimus atque rerum sed. Accusantium omnis et aliquid eveniet. Molestiae voluptatem consequatur est nam est.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(39, 2, 'Consequatur.', 'Et rerum rerum saepe quia inventore. Omnis repudiandae delectus est facilis. Assumenda enim et dolorum pariatur dicta. Qui repellat ea perspiciatis iste et.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(40, 2, 'Non non nisi.', 'Veritatis rem molestias voluptatem. Quibusdam quis sed sapiente nisi ullam. Soluta illo ea ut aperiam incidunt nemo. Ut sit culpa officiis quidem dolorem sit.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(41, 2, 'Quia sunt.', 'Quo perferendis earum facilis vel dignissimos dicta magnam. Ab est magnam labore dolor. Corrupti qui odio iste dolores eius ut.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(42, 2, 'Ratione.', 'Et doloribus sit aut. Ipsa incidunt pariatur inventore nihil quia quia adipisci. Laudantium officiis iste asperiores reiciendis. Consectetur est nam id et.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(43, 2, 'Voluptatem.', 'Impedit facere voluptatem iste porro neque ipsa doloremque. Ad incidunt est quo itaque adipisci facilis.', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(44, 2, 'Id et enim.', 'Unde dolorem autem consequatur aliquid non quia. Repellat non minima assumenda fugit. Et omnis facilis iste maxime nihil. Mollitia autem alias facere.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(45, 2, 'Non eaque sit.', 'Necessitatibus non ea rem excepturi eaque vel. Id ullam iusto fuga illum corporis quis. Ab adipisci doloribus non voluptas deleniti quia.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(46, 2, 'Esse quo.', 'Quia velit ut atque aut. Voluptas omnis quia qui eligendi. Aliquam quos quia dicta inventore dolores. Nihil modi repellat et omnis.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(47, 3, 'Velit nesciunt.', 'Omnis atque architecto suscipit consequatur sunt. Enim sunt eum ut ea veniam. Assumenda id aliquam quo maiores. Sunt vel qui sit recusandae architecto.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(48, 3, 'Consequatur.', 'Blanditiis ut laboriosam quo itaque repudiandae. Dolorem hic atque sit hic aut aliquam. Temporibus dolorem consequuntur repellendus temporibus quia esse quia.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(49, 3, 'Et iste omnis.', 'Non qui reiciendis vitae corporis dicta. Sint neque voluptates autem. Quia eveniet quia quasi sit illo animi ea. Facere numquam doloremque beatae ab esse aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(50, 3, 'Eos voluptatum.', 'Quis occaecati perspiciatis ullam qui a consectetur nobis. Nulla voluptatum omnis enim. Ad et voluptatem facilis quibusdam.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(51, 3, 'Nesciunt.', 'Sed quos unde nulla suscipit vel. Est facere consequatur velit qui. Doloremque in et et soluta.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(52, 3, 'Cupiditate.', 'Odio voluptatem suscipit sapiente recusandae. Et doloremque quisquam sed maxime sequi. Quo est esse voluptas sit. Commodi ipsa aut laudantium amet.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(53, 3, 'Rerum et.', 'Quia eos facilis delectus. Unde modi sapiente velit eveniet ipsum aut natus. Commodi sit ipsam quis delectus quisquam dolorum aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(54, 3, 'Repellendus.', 'Dolore odit minus sed unde nulla repellat et. Est sed similique excepturi aut repellat necessitatibus.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(55, 3, 'Qui.', 'Nostrum impedit id earum ut provident. Dolore quia qui omnis animi. Quo velit maiores voluptatem voluptas.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(56, 3, 'Cumque et.', 'Inventore quos dolorem quidem enim aliquam voluptatem. Illum est qui asperiores consectetur. Quis veniam ut nihil. Iusto quia doloribus quae natus.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(57, 3, 'Quos qui a.', 'Provident occaecati minus et temporibus. Quam voluptate temporibus repellendus tempora ut eveniet error. Sequi exercitationem similique iste ipsum hic.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(58, 3, 'Id sunt aut in.', 'Facere soluta maxime fugit. Voluptatibus veniam quas eos et velit quo. Suscipit odio ipsa non totam nihil rerum laudantium natus.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(59, 3, 'Ut sunt beatae.', 'Eum quis nihil corrupti neque expedita culpa soluta. Voluptatem dolores ea rerum numquam vitae iure. Ipsa doloribus laudantium et eum fuga ipsam.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(60, 3, 'Culpa fugit.', 'Odit voluptatum ut dolor nemo. Voluptatibus reprehenderit velit occaecati. Explicabo quia ut aut laborum id ad.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(61, 3, 'Suscipit.', 'Tenetur velit eaque consequuntur libero minus. Cumque ratione est esse facere atque quod a. Et vel qui cum velit necessitatibus reiciendis.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(62, 3, 'Voluptates.', 'Sunt fugiat et voluptatem similique. Qui nihil culpa odit harum. Aut cum repellat doloremque corrupti corrupti tempora non facilis.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(63, 3, 'Quos laborum.', 'Facilis culpa voluptatem sed alias. Iure dolor omnis odit aut est in amet occaecati. Excepturi optio voluptas qui quo.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(64, 3, 'Labore ut.', 'Fugiat nisi quas explicabo. Corporis voluptates est perferendis voluptatem laborum. Qui inventore fuga dolorum esse incidunt ut. Et sed sed esse quo.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(65, 3, 'Fuga unde quis.', 'Aut ut aut eos vel eos consequuntur quia. Harum placeat laudantium voluptatibus qui tenetur. Tempore incidunt magni iure sint ad. Et sunt placeat aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(66, 3, 'Quidem est.', 'Soluta cumque in minus. Saepe ut ea ut consectetur distinctio quo saepe. In ratione dicta alias quia et. Architecto ea quo suscipit placeat quidem aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(67, 3, 'Hic repellat.', 'Iure repellendus rerum cumque blanditiis. Iste praesentium amet reiciendis praesentium. Iste vero voluptas et. Quaerat ut ut est aliquid suscipit at.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(68, 3, 'Ad doloribus.', 'Id molestiae similique quia beatae. Repellat ex et architecto sunt ullam. Pariatur laudantium repellat dignissimos tempore illum laborum suscipit.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(69, 3, 'Labore ea.', 'Assumenda dicta quae amet. Nobis quis nam amet optio excepturi est itaque. Impedit facere iusto quo voluptate. Porro aspernatur et quam vitae eum aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(70, 3, 'Reiciendis.', 'Temporibus sit quos tempore voluptas qui. Repellendus nihil molestias aut omnis. Et iusto reiciendis aliquid omnis. In est aut quo et autem eaque eligendi.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(71, 3, 'Cum enim.', 'Qui explicabo nam officia nobis. Accusantium vero autem saepe aut suscipit quam in quis. Iusto quaerat magni cumque qui.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(72, 3, 'Saepe iusto.', 'Atque dignissimos et sequi laudantium sed et vero. Qui sed iure numquam est sint est facere.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(73, 3, 'Ad consequatur.', 'Dolorem aut corrupti sit eum et. Ea et quos magni hic cupiditate. Maxime quae quo veritatis.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(74, 3, 'Nemo.', 'Autem eligendi aut ab quas. Fuga vel et voluptatibus id. Cumque eos sunt aspernatur. Incidunt vitae iusto aspernatur voluptatibus ab.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(75, 3, 'Dicta aut.', 'Quidem eveniet sit in. Quia totam quasi est autem a qui. Excepturi qui architecto quam repudiandae.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(76, 3, 'Deleniti id.', 'Nemo voluptatem vel ab. Porro voluptatem amet quasi numquam qui recusandae nulla. Molestiae quis pariatur atque doloremque dolorem.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(77, 3, 'Dolor impedit.', 'Sit quas aliquam asperiores ab. Rerum unde earum rerum voluptate similique veritatis quaerat repellendus. Quisquam aspernatur iusto corrupti fugiat.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(78, 3, 'Ex dicta.', 'Dolore dolor quis voluptates in ullam et. Dolorem eius voluptas ratione voluptatem. Earum sunt maiores deleniti quia magnam ut ut repellendus.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(79, 3, 'Fuga aut et.', 'Corporis incidunt veritatis vel laborum accusantium. Nostrum quia non eveniet ut rerum impedit. Dolorem a suscipit ut voluptatibus.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(80, 3, 'Corrupti et.', 'Minus rerum porro repellendus modi et et. Dolor iusto voluptatem vitae. Voluptatem perspiciatis rerum provident facere aliquam.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(81, 3, 'Veniam modi.', 'Itaque ut nostrum fugiat molestias iusto minima voluptatem deserunt. Ut quas asperiores eos labore officia. Voluptate quos libero aspernatur voluptatem.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(82, 3, 'Repudiandae et.', 'Ut fuga voluptas itaque. Qui sapiente reiciendis asperiores error aut qui. Sit dolorem necessitatibus incidunt accusamus aut.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(83, 3, 'Et nemo.', 'Aspernatur aut ea cumque. Voluptas deserunt id veritatis sunt sed ut. Deleniti ut accusamus dolores rem.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(84, 3, 'Qui ut error.', 'Asperiores magni facilis voluptatum eligendi amet aut. Esse earum ut in eos. Deserunt illo sed non vero et consequuntur est.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(85, 3, 'Qui neque.', 'Dolor sed consectetur laboriosam aut. Est est iure qui sit nihil. Excepturi esse ut quasi quam officia. Et eos quo et.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(86, 3, 'Amet in.', 'Voluptatem minima quis perspiciatis placeat. Aut aut est nemo in sint.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(87, 3, 'Consequatur.', 'Cupiditate est iure quos placeat dolores. Quia eaque numquam delectus ex.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(88, 3, 'Laboriosam.', 'Placeat qui qui ut repellendus. Voluptatibus sed laboriosam nihil illum quaerat et. Qui culpa iure deserunt non non.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(89, 3, 'Optio.', 'Suscipit ut ut amet voluptas amet saepe. Ex assumenda dolore ut voluptas amet. Mollitia unde sed ad. Beatae voluptate architecto aut molestiae.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(90, 3, 'Doloribus.', 'Doloremque rem molestiae provident voluptates vel dignissimos. Deleniti eos quis in optio quis qui. Pariatur dolore maiores et sapiente ullam placeat quia.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(91, 3, 'Ducimus dolore.', 'Recusandae dolorem dignissimos totam veritatis qui. Veniam nemo sit ipsum et est voluptates. Labore eum eveniet laudantium sunt aut velit.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(92, 3, 'Sint illo.', 'Quia fuga et quam. Delectus minima libero reprehenderit quas.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(93, 3, 'Qui dolores.', 'Veritatis esse deserunt possimus fugit recusandae sed in. Illum placeat praesentium eaque vel velit. Unde in est aut explicabo. Libero id nihil ad et natus id.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(94, 3, 'Sunt.', 'Voluptas voluptatem ipsum nobis ratione. Corrupti laudantium et sequi similique cupiditate porro. Est et rem nulla quia. Ea rerum ratione voluptas.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(95, 3, 'Molestias aut.', 'Natus autem omnis mollitia perferendis qui et adipisci. Vitae amet id id consequatur reprehenderit libero. Placeat ut sit nihil id quis.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(96, 3, 'Rerum quod.', 'Vero culpa consectetur possimus rerum voluptates veritatis repudiandae. Culpa libero expedita rerum ut nobis dolores velit.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(97, 3, 'Impedit enim.', 'Velit et quia natus nemo dolorum. Aut aut numquam atque atque sint autem. Asperiores officiis et et.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(98, 3, 'Omnis dolorem.', 'Quae unde nulla est explicabo voluptas. Quidem ut nemo sint quaerat. Voluptas repudiandae officiis ad quia non. Numquam sunt exercitationem impedit voluptatum.', '2022-09-22 09:02:17', '2022-09-22 09:02:17'),
(99, 3, 'Quam dolores.', 'Iusto occaecati quia officiis fuga aut. Nisi perspiciatis nisi quaerat tenetur quod et fugit. Et cum et aliquid laudantium itaque. Sed quibusdam ut officia.', '2022-09-22 09:02:17', '2022-09-22 09:02:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pepito perez', 'correodeprueba@email.com', '2022-09-22 09:02:16', '$2y$10$5L3rTs5WiyMysgudaIdWQeawA7Sa1xlPmea2TqWhfpBlPd3gT01pi', 'T4t2asdZ7D', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(2, 'juanito escarcha', 'supersayayin2@email.com', '2022-09-22 09:02:16', '$2y$10$1AHWWOV.DnhhlCyb0xHiRePeay/vrYJGNfLtoe2XXobxpIsiIFT0G', 'iSF9mzAqin', '2022-09-22 09:02:16', '2022-09-22 09:02:16'),
(3, 'kevin espisona', 'kevinmo45@email.com', '2022-09-22 09:02:17', '$2y$10$EJxMFChjH7zNjzj.MNi0G.6izdrDmfzAwTk7iH3KwvKu7GQSZ52NK', 'k7zpYYejJB', '2022-09-22 09:02:17', '2022-09-22 09:02:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
