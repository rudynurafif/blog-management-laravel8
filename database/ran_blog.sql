-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2024 at 05:59 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1687641_ran_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-01-09 16:38:43', '2022-01-09 16:38:43'),
(2, 'Web Design', 'web-design', '2022-01-09 16:38:43', '2022-01-09 16:38:43'),
(3, 'Personal', 'personal', '2022-01-09 16:38:43', '2022-01-09 16:38:43');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_07_174050_create_posts_table', 1),
(6, '2022_01_07_205027_create_categories_table', 1),
(7, '2022_01_10_021959_add_is_admin_to_users_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Omnis commodi vitae non id.', 'temporibus-quia-fugit-voluptas-quia-qui-officia', NULL, 'Ullam praesentium et distinctio et cum amet et. Velit natus occaecati placeat iste omnis. Recusandae rerum quia nam sit explicabo quas. Ea accusantium voluptatum nobis.', '<p>Quo inventore exercitationem commodi recusandae odio reprehenderit ab. Recusandae temporibus et aliquid consequuntur et veritatis odio. Voluptatem et explicabo nisi aperiam eaque incidunt. Velit qui omnis quidem libero dolores inventore commodi. Labore adipisci nihil ea iste aut ducimus.</p><p>Animi saepe porro facere voluptatum nam et a. Quis dolorum repellat eveniet voluptatem quisquam. Atque architecto fugit asperiores voluptate sapiente et. Ullam rerum omnis et dolor.</p><p>Doloremque vel nulla quis hic cum. Natus incidunt dignissimos quia aut ipsa earum iure nostrum. Tempora tenetur iusto placeat consequatur labore aut quod id. Quia et saepe voluptas cupiditate.</p><p>Deleniti in est aut voluptate in vel. Optio et eos provident distinctio labore. Dolor omnis quia dolor.</p><p>Quisquam numquam asperiores natus adipisci consequuntur autem explicabo. Illo rerum animi omnis praesentium ut vero. Cum inventore quas dolore doloremque.</p><p>Enim ut voluptatem doloremque placeat. Animi error ea quos quas consequatur in ut. Earum natus non ut ut ducimus.</p><p>Aut sed quia nostrum ut perspiciatis in est. Nostrum odio aut alias enim impedit.</p><p>Exercitationem facere eum rerum incidunt necessitatibus nostrum eum. Suscipit doloribus dolores voluptatem ratione magnam harum placeat.</p><p>Et officiis numquam possimus eos. Pariatur numquam deleniti omnis voluptas magnam similique. Enim quo sequi velit neque. Aperiam quas aut quibusdam eos.</p>', NULL, '2022-01-09 16:38:43', '2022-01-09 16:38:43'),
(2, 2, 3, 'Sint praesentium.', 'officiis-corporis-sed-incidunt-sed-accusamus', NULL, 'Aut quis provident qui et quaerat eum sunt. Distinctio nam est aliquid sint qui blanditiis laboriosam. Porro dolores sunt animi. Libero cum sed officiis officiis et. Cum quas qui quidem sint.', '<p>Minus qui nemo consequuntur aut incidunt harum. Voluptatem a deserunt accusantium voluptatibus. Minima natus et temporibus aperiam beatae architecto ipsam.</p><p>Officiis minima provident natus est cupiditate in commodi praesentium. Sed similique temporibus dolor ut sit. Aperiam reiciendis nemo rem laboriosam.</p><p>Earum consectetur libero voluptas modi. Voluptatem suscipit expedita aperiam accusantium distinctio. Dolor aliquid magni inventore aut quam. Nobis dolore non quibusdam laboriosam fugit perferendis. Aliquid qui odio distinctio.</p><p>Laborum expedita eum neque rerum odio. Odio iusto explicabo suscipit libero. Ullam expedita minus praesentium doloremque voluptatibus. Tenetur quos ullam dolores totam.</p><p>Excepturi et alias ducimus voluptatibus. Voluptatem facere a sit. Eaque et omnis eligendi consequuntur vitae nam.</p><p>Qui sunt esse odit recusandae accusantium quam sed. Ipsa officiis soluta sapiente expedita aut aut. Nesciunt maxime iure odio recusandae voluptas ipsam. Qui alias ducimus qui.</p><p>Rerum nulla qui laudantium non. Veritatis ab placeat et amet beatae. Unde id soluta illum ullam.</p><p>Sit voluptate tempore et quis. Autem iusto libero quo assumenda. Est incidunt quis et natus tenetur quia. Et aut sunt eveniet laudantium.</p><p>Aut delectus sed asperiores non. Numquam quia inventore distinctio eveniet maxime. Blanditiis nobis optio nisi porro dolores.</p>', NULL, '2022-01-09 16:38:43', '2022-01-09 16:38:43'),
(3, 1, 3, 'Est eligendi nesciunt inventore neque eum labore eius neque quibusdam ea.', 'libero-error-enim-molestiae-est-maxime', NULL, 'Molestias maiores autem molestias aliquam nisi aperiam explicabo. Ad quos ut delectus id ex. Delectus nemo officiis tempore sint. Dolorem similique temporibus blanditiis labore ipsa. Amet sit modi fuga adipisci et molestias odio.', '<p>Et provident hic nihil natus molestiae est autem. Molestiae officia aut cum voluptatem qui dolores quibusdam.</p><p>Qui explicabo consequatur ut voluptatem culpa. Culpa veritatis ratione rerum est sapiente enim natus. Veniam quo consequuntur quis vitae enim. Quia sit ut perspiciatis cupiditate autem.</p><p>Laudantium iste qui reprehenderit sit. Explicabo modi praesentium quia voluptatum voluptatibus quis. Velit cupiditate fugiat esse odio.</p><p>Velit dignissimos maxime sunt aut dolor hic. Qui facilis architecto praesentium laborum harum. Ad aliquam dolor ut perspiciatis magnam ducimus et.</p><p>Animi dolor veritatis nemo voluptatibus sit iusto. Impedit optio quis fugiat quas molestiae commodi aut. Omnis illo repudiandae rerum est enim qui culpa voluptatum. Nulla consequuntur voluptatum eius tenetur earum pariatur.</p><p>Voluptas iure aut qui nesciunt nulla. Tempora earum sint laboriosam sed voluptas. Id porro sit ut quis. Unde pariatur porro atque illo accusamus porro.</p><p>Aut dolorem ea recusandae vitae maiores quo. Et eum ad dolorem nostrum eos dolorem.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(4, 1, 1, 'Et saepe fugiat sunt animi aliquid quidem.', 'enim-porro-ut-culpa-quae-sint-dignissimos-enim-qui', NULL, 'Eaque inventore magni accusamus expedita et ratione. Fugit officiis aut eius enim tenetur. Dolor ad eos ea quis ipsa sapiente voluptas. Quidem a eveniet voluptatem facere recusandae natus quia.', '<p>Eius enim ut aut quidem non magnam non. Incidunt molestiae nemo sapiente possimus molestiae. Vero eaque ratione sit et.</p><p>Ut sed qui qui unde sed officia officiis. Aliquid totam non sequi magnam. Aut ea itaque est harum voluptatem ut dicta.</p><p>Sit repellat non qui voluptatum dolore. Quae iste dicta ducimus eaque. Hic fugit nihil voluptatum vitae alias similique. Maiores et esse minima.</p><p>Dignissimos fugiat sed et asperiores. Autem fugiat ab odit. Reiciendis quod ipsa sit laboriosam consequuntur.</p><p>Minima voluptate quisquam adipisci ipsam sed. Voluptas recusandae sit modi quo aut. Vel blanditiis architecto consequuntur ut.</p><p>Et facilis ut sit doloremque distinctio laudantium quia. Rem minus cumque magnam aut. Deserunt exercitationem omnis blanditiis doloremque omnis similique.</p><p>Dignissimos fugit commodi dignissimos quidem. Blanditiis earum hic dolorem qui. Sit ex velit asperiores deserunt unde in necessitatibus.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(5, 2, 1, 'Voluptatem voluptatibus distinctio.', 'assumenda-corporis-alias-sapiente-sequi-vitae', NULL, 'Quod rem debitis doloremque et tenetur et voluptatibus. Repellendus sit ipsa corporis est. Est omnis fugiat repellendus. Velit voluptatum totam repellendus eos repellat aut odit sed.', '<p>Voluptatem adipisci quam nihil nihil qui. Cumque ut non libero. Voluptatibus est iusto dolorum maxime.</p><p>Quo quia impedit quis ipsa. Aut molestias similique quidem qui adipisci. Esse modi tempore asperiores soluta velit magnam voluptatem.</p><p>Id vel et maiores animi. Non ut minus voluptate enim voluptate. Non ea est mollitia tempore.</p><p>Voluptates aut amet perspiciatis quia non sit voluptatem. Quo a quia aliquid. Ex suscipit harum qui cupiditate hic dolor. Sequi repudiandae aperiam debitis ab dolore aut dolorum.</p><p>Consectetur repellendus laudantium omnis illo distinctio. Rerum voluptas sed velit. Esse autem quae optio similique rerum.</p><p>Et deleniti deserunt ipsa qui et est recusandae et. Facere doloribus animi deserunt. Eveniet eum dolorem officiis recusandae consequatur omnis. Qui suscipit sunt similique qui impedit. Earum adipisci ipsam ducimus vel cumque maxime.</p><p>Vel dolorem voluptatem enim vel est. Sed error mollitia et voluptatum. Iste nobis quae beatae.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(6, 3, 2, 'Omnis itaque.', 'reprehenderit-assumenda-repellat-placeat-ut-eos', NULL, 'Sed tempore minus voluptatem velit. Nihil id voluptatibus voluptatem voluptas eaque. Nam provident pariatur accusantium id voluptas quo. Eveniet debitis at dolor quis unde perspiciatis quod non. Sed incidunt quia qui aut optio et.', '<p>Reprehenderit omnis dolor placeat aut quo qui. Placeat sequi aut perspiciatis atque. Et aliquid fugiat incidunt molestiae nihil at et.</p><p>Earum qui autem qui qui. Necessitatibus facilis aperiam modi voluptates non iure pariatur. Dolore aut laboriosam et veritatis et sequi.</p><p>Qui rerum accusantium eaque et quas. Incidunt et qui hic omnis aperiam. Nobis deserunt qui inventore voluptatem quaerat in quia. Et cum enim accusamus in. Non ad voluptatum et corrupti.</p><p>Provident enim earum molestiae quod. Nihil repellendus rerum id reiciendis. Et maxime perferendis in.</p><p>Molestias sed tenetur sit ut. Fuga cupiditate tempora et. Est adipisci accusamus molestias sit omnis qui ut impedit. Illo ex consequatur illo eligendi ex.</p><p>Quis voluptas et dolorem ullam dicta reprehenderit laborum. Occaecati quos vitae similique est incidunt est. Sed consequatur eveniet dolorem qui voluptatem eaque.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(7, 2, 4, 'Ut voluptas quod in quidem nihil.', 'eligendi-voluptatem-soluta-beatae-vero-cum-dignissimos-officiis-eveniet', NULL, 'Nostrum voluptatem et ea nam et. Quibusdam perspiciatis in dolores facilis aut officiis ea. Est aut adipisci dolores nihil ad minima.', '<p>Ipsum molestias dolorem est nisi culpa consectetur. Sit officiis aut aut explicabo quia. Et consequatur architecto perferendis.</p><p>Eos dolores ab dolorum numquam. Voluptatem omnis facilis quo dolore.</p><p>Doloribus et deleniti sit et cumque non. Ipsum id qui laboriosam necessitatibus vero magnam provident. Amet omnis provident qui.</p><p>Impedit quo beatae laborum fugiat. Esse aut dolores velit provident magni dolorum.</p><p>Eum mollitia reiciendis voluptatem aperiam non consectetur. Quod quo repellendus eligendi omnis consequatur modi. Eligendi corporis aut aut. Est voluptatem iste distinctio eius itaque.</p><p>Aut odit libero magni reprehenderit. Quas cum ipsam odit nostrum.</p><p>Iure maxime qui aut nisi. Laudantium sit sint mollitia velit qui.</p><p>Fuga iusto quidem ipsam accusantium. Sunt assumenda aperiam voluptas rem reiciendis recusandae. Eius quia quia quasi. Esse sequi dolores dicta totam id perspiciatis molestiae.</p><p>Qui repudiandae asperiores qui vel. Sed repellat quisquam iste vero ducimus veniam. Ipsa quos asperiores quo corrupti. Rerum eum officia velit consequatur saepe qui voluptatum. Repellat pariatur assumenda dicta necessitatibus.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(8, 1, 1, 'Quae dignissimos iusto similique suscipit id.', 'laudantium-molestiae-cum-debitis-ad-eum-et-sed', NULL, 'Velit dolor dolores nihil omnis. Sed est sit vitae nam reiciendis minus enim et. Sint esse architecto non aut saepe in.', '<p>Vero sed asperiores corporis. Ut rerum esse laboriosam voluptatem assumenda. Voluptas velit velit ut. Tenetur delectus voluptas voluptatibus accusantium perferendis eveniet et.</p><p>Voluptate facere et sint accusamus. Aut voluptas qui eum incidunt quo unde beatae. Nihil dolores harum atque temporibus.</p><p>Aliquid minima deleniti id cumque quaerat est. Placeat quasi et eum aut repellendus exercitationem. Rerum est omnis ipsa aut consequatur accusamus aut.</p><p>Nesciunt occaecati nostrum veritatis accusantium nisi. Fugit veritatis omnis veritatis. Illum et tempora qui sapiente. Provident optio sequi nihil ut sint. Accusantium repellendus similique dolorum quo nemo repellendus soluta.</p><p>Et quibusdam cupiditate eaque earum. Est impedit fugit cupiditate. A asperiores non temporibus est.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(9, 3, 2, 'Consectetur dignissimos temporibus porro pariatur ea est in eum.', 'eveniet-quia-est-temporibus-omnis-perferendis', NULL, 'Distinctio debitis et tempore quis sunt et. Qui quo dolorem ipsam sed ea inventore velit.', '<p>At nihil nam culpa assumenda sunt consequatur. Omnis quia officiis et atque provident rem ducimus sint. Dolore repudiandae harum officia mollitia et neque eius.</p><p>Qui laborum dolorem ut possimus optio fugit. Ut neque minima alias repellendus. Animi asperiores libero et beatae eos.</p><p>Aut voluptatem non omnis aperiam voluptate illo totam hic. Aliquid eum blanditiis quia. Quisquam et distinctio rem exercitationem. Aut et eligendi voluptas ratione velit porro nihil velit.</p><p>Accusamus ratione voluptatem consequatur quasi sapiente eius distinctio tenetur. Omnis doloribus aspernatur et ad qui. Dolor voluptatem sint est laudantium voluptatem quia. Aut eos modi quo molestiae nihil molestiae nemo.</p><p>Culpa est est est error provident consequatur. Quas aliquam quidem repudiandae.</p><p>Est ut id quaerat optio aut sunt sint. Minima ab dignissimos ut enim at. Consequuntur qui vero minus quo molestiae.</p><p>Illo quia nulla quia suscipit ratione dolor harum. Laborum et deserunt aliquid ullam velit qui magnam. Expedita repellat voluptas quis aut vel. Architecto et ipsa sint esse ipsam.</p><p>Dicta nesciunt odio sint voluptatum. Illum qui amet omnis et sequi. Hic doloremque et et rem omnis.</p><p>Ut molestias velit fuga vel ullam suscipit vero. In maxime excepturi ipsa a. Quibusdam officiis corrupti debitis quis ratione debitis quia.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(10, 3, 2, 'Iusto explicabo ullam dolores aut.', 'et-dolore-accusamus-alias-debitis', NULL, 'Nihil consequuntur molestiae architecto nostrum dolor. Iste laboriosam sit voluptatem sed voluptatem beatae sapiente. Rerum omnis voluptatem nihil voluptatem sed architecto. Asperiores aspernatur alias vero.', '<p>Voluptatum qui sint voluptas laborum iste dolorem reprehenderit unde. Qui non ut cumque molestias eveniet recusandae ut. Ducimus est exercitationem numquam eaque velit. Omnis placeat odit dolore perspiciatis ut. Saepe vel quasi nisi nihil unde doloribus.</p><p>Animi est ut sit. Iusto et est cupiditate molestias qui explicabo. Dignissimos iste quisquam quis velit ut ad officia.</p><p>Ad id architecto officia veritatis recusandae ut. Dolor voluptatum autem officia vitae. Est ipsa reiciendis et voluptatem et quidem tempore. Quia beatae alias ea voluptas expedita doloribus.</p><p>Reiciendis est quo accusantium est placeat. Et consequatur animi est neque. Quibusdam veniam pariatur perferendis veritatis iure asperiores. Ut maxime dolor et quam ex soluta corporis.</p><p>Iure ut aut voluptas vel dolorem numquam. Fugiat dolorem voluptatum magni est sit illum. Et voluptatem magnam dignissimos quia ducimus distinctio est molestiae. Molestias animi est et libero enim quis nostrum.</p><p>Sit numquam qui vitae. Et voluptas blanditiis ipsa qui omnis labore quos. Dolor quasi natus quaerat quia necessitatibus voluptates.</p><p>Repellat eaque vel incidunt placeat. Omnis fuga sed magnam non error. Aspernatur voluptas odio laborum omnis et maiores sapiente. Aut occaecati laudantium ab earum recusandae.</p><p>Est optio labore et vitae est maxime. Quod ipsam velit officia neque consequuntur aut. Beatae nobis sint nisi cumque eum.</p><p>Recusandae expedita quos aspernatur. Aut tenetur veniam officia consequatur. Quas consequatur delectus veritatis repellendus id et quaerat modi. Necessitatibus ab ut molestias molestias optio dolorem. Et et sunt soluta.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(11, 3, 1, 'Pariatur dignissimos quisquam aut corrupti aut quasi omnis.', 'perspiciatis-beatae-sed-aliquid-facere-ad-repudiandae-cumque', NULL, 'A reiciendis et et quas quisquam sit consequuntur. Placeat odit magni enim vel aut. Dicta nulla natus cupiditate non.', '<p>Asperiores distinctio facere cum omnis omnis. Eum rem saepe iure rerum distinctio id accusantium. Et minus provident enim blanditiis quasi accusantium reiciendis est. Veniam est eum voluptas numquam et.</p><p>Ipsum harum nam et et numquam consequuntur et. Veniam rem assumenda consectetur aspernatur cum in ut. Ducimus voluptatum minima non natus perspiciatis.</p><p>Porro quis voluptatem eaque quo magni et. Dicta quis molestias enim nobis laborum suscipit. Repellendus vitae sed nulla nihil architecto ut dolore.</p><p>Qui sit est ut ut ut reprehenderit nihil. Quas aliquam maxime suscipit et rerum dignissimos quae. Unde ea totam perspiciatis at molestiae. Et deleniti assumenda nulla autem ut sed mollitia. In officia inventore aut maiores eaque iusto voluptas.</p><p>Sit fugiat cupiditate sed ipsa architecto. At at doloremque in neque. Quae distinctio alias in temporibus. Quas voluptatem unde laboriosam libero id odit exercitationem et. Ab laudantium ducimus ex debitis sint.</p><p>Consequatur voluptatem necessitatibus voluptate corrupti facere eum. Eius repellendus quis modi similique voluptate illum rem accusamus. Assumenda eum quae est dolores eum excepturi.</p><p>Quidem qui et laborum quia provident tempora. Aut pariatur et quo hic eos exercitationem consectetur. Sapiente laboriosam cumque modi id facilis illo. Est magni fuga sed in quia quidem.</p><p>Harum doloribus aut omnis sit occaecati nihil. Placeat molestias occaecati aspernatur repellendus laboriosam quis in. Blanditiis cupiditate id exercitationem sed sit. Sint minima occaecati iusto animi est.</p><p>Sint voluptas est quos. Nemo rerum alias alias omnis. Qui voluptatem labore dolorem. Aut cum vel tenetur repellendus voluptas quaerat dolor.</p><p>Maxime omnis doloremque aliquam voluptatum consequatur qui numquam vel. Aut provident velit debitis nam eaque. Odio incidunt quis ipsam autem cupiditate.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(12, 1, 2, 'Maiores voluptatem illum ab.', 'eos-ea-commodi-quia', NULL, 'Rerum iure quia ea sint eaque necessitatibus sit. Commodi soluta et ut ut quas. Est autem optio sint iste ut et sint. At ut deleniti in perspiciatis quas est eum. Qui aut eligendi iure ea sint esse.', '<p>Aspernatur ducimus incidunt et velit voluptas. Nemo odit porro consectetur provident sunt. Rerum eos repellendus expedita deserunt quia quod ad recusandae. Rerum corrupti in temporibus.</p><p>Est nam doloremque animi eaque delectus provident tempora nostrum. Eos possimus alias et enim nobis. Aperiam qui quo qui quaerat tempora.</p><p>Eius quasi et id nam deleniti corrupti sit fugit. Maxime nesciunt animi fuga adipisci. Et aut pariatur consequuntur optio dolor aut.</p><p>Tempora doloremque aliquid est. Voluptatum sed qui aut.</p><p>Amet nobis officia exercitationem numquam qui deleniti. Ut vitae animi non veritatis mollitia ut. Sit rerum eius molestias magni esse cum odio et.</p><p>Officiis numquam quia cum reiciendis qui voluptatum. Consequatur ratione itaque qui. Quia id voluptatem voluptates inventore consequatur officia in.</p><p>Harum harum optio minus dolore quo. Dolor aperiam et delectus natus soluta quasi ut. Doloribus eum harum molestiae dolores magni recusandae voluptatum.</p><p>Exercitationem et corporis impedit sit nostrum molestiae. Earum molestiae aperiam provident. Laudantium in quam ex praesentium aliquid alias consequatur non. Facilis necessitatibus enim non.</p><p>Deleniti ducimus incidunt totam provident laborum. Perspiciatis illum autem in. Similique totam et eius facilis. Ut est odit maiores alias non.</p><p>Est laboriosam autem quia. Id repellendus et et. Qui asperiores ipsam deserunt est doloribus dolor.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(13, 1, 1, 'Ratione dolores excepturi doloribus ut.', 'optio-omnis-ipsum-est-itaque-sapiente', NULL, 'Neque hic porro et omnis. Labore harum doloribus ut hic architecto eum. Cum id magnam enim autem corporis nihil.', '<p>Et minima voluptas nisi sit ut non commodi. Sed sunt doloribus non modi qui ullam aliquam. Error quasi ut veritatis enim voluptas qui dolorem.</p><p>Cumque autem eos corporis voluptatum accusamus consectetur. Eum molestiae autem sed esse sint. At dolor expedita et sit autem quasi ut. Mollitia autem assumenda ipsam ut vero. Et deleniti consectetur atque sit.</p><p>Vel officiis aut quidem sequi adipisci et odit dolor. Minima unde laborum alias aut sunt voluptatem. Autem maiores et et praesentium soluta omnis maiores.</p><p>Et natus ut et ea. Accusamus sint nobis eligendi cumque enim quo impedit. Provident expedita porro iusto molestias accusamus quia velit.</p><p>Voluptates eos qui doloribus. Hic porro iste fuga sint voluptas. Velit debitis laborum quo sed.</p><p>Est hic cum ea culpa ut eaque cumque. Nostrum rerum quos corrupti sit qui. Culpa et veniam minima exercitationem ut ut necessitatibus. Quam sunt at sint sint iure sint laboriosam.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(14, 1, 3, 'Incidunt non sit pariatur consequuntur ipsam voluptas.', 'quia-dignissimos-et-qui-at-dolores-aspernatur-laborum', NULL, 'Repellendus et assumenda sequi voluptatum. Error non dolor esse magni impedit consequuntur. Cum dolor impedit molestiae odit ipsam.', '<p>Molestiae odio quia culpa assumenda doloribus dolores iusto. Porro perspiciatis recusandae nostrum. Incidunt libero fugiat nihil quod blanditiis. Aperiam aut voluptas eligendi voluptatem molestiae voluptatem. Voluptatum optio dolores officia deserunt esse repellendus velit.</p><p>Temporibus culpa officiis sint eius voluptates. Earum odit dolorem ipsa ex. Voluptatum molestiae temporibus sint consectetur.</p><p>Sed neque doloribus et necessitatibus iusto libero sed. Vel eos sit ex cumque harum.</p><p>Dolore aut voluptatem officiis qui est repellat. Autem pariatur impedit eum consequatur voluptas sit voluptatem quidem. Et ab assumenda quis suscipit et consequuntur quasi.</p><p>Sit laboriosam soluta non id quae. Voluptatem voluptatem et optio quo omnis non architecto fuga. Beatae qui voluptas qui sunt quaerat. Quia natus sit qui nemo nulla in.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(15, 3, 4, 'Repellat officiis delectus et.', 'consectetur-ad-quis-soluta-aut-et', NULL, 'Numquam velit similique dignissimos et quisquam harum delectus corrupti. Odit aspernatur nihil id impedit aut dignissimos. Quibusdam in assumenda est culpa.', '<p>Dolor quae rem earum. Sapiente quia debitis excepturi assumenda dolor qui. Autem quis eos quae aut accusamus. Velit assumenda harum quo consequatur autem.</p><p>Est est id vel quia assumenda. Quia est exercitationem voluptatem quis. Expedita velit qui quo est placeat deserunt debitis.</p><p>Ea animi quae fugit aut. Aliquid modi dolores quo magni enim qui nemo. Dolor facilis fuga qui eum harum aut dolor.</p><p>Ea dolorum sapiente consectetur accusantium minima. Vel aut nobis sequi ad hic eaque. Aut velit cupiditate recusandae optio dolor laboriosam laboriosam.</p><p>Vel quidem non delectus consequatur voluptatibus quia. Mollitia molestiae aperiam possimus molestiae. Ipsum perferendis laborum labore aut nihil dolor. Dolorem dolorem sit et sit vel dolore.</p>', NULL, '2022-01-09 16:38:44', '2022-01-09 16:38:44'),
(16, 2, 4, 'Ut eos dolores harum debitis et cum.', 'in-nihil-eligendi-occaecati', NULL, 'Voluptas occaecati ab assumenda dolores non ea aut. Repudiandae facere voluptatem aliquid debitis. Et quo reiciendis dolorem animi nobis corporis quo.', '<p>Aut sed cumque suscipit nihil reprehenderit. Quidem suscipit id assumenda repudiandae. Expedita dicta totam culpa iste. Porro fugit quaerat voluptatem quia dolorem quia doloremque eaque.</p><p>Rerum enim rerum sint. Alias exercitationem beatae a delectus et. Et excepturi odio amet.</p><p>Distinctio eveniet recusandae enim repudiandae accusantium. Provident dolor et porro optio veritatis vel consequatur. Deserunt odio dolores dolore et est esse libero.</p><p>Modi vero enim et atque doloribus sunt laboriosam. Ut laudantium eos est labore facere velit voluptatem. Voluptate voluptas voluptatem minus modi iure eum.</p><p>Qui tempora consequatur non. Expedita dignissimos optio error quibusdam dolores voluptatem officiis. Sunt sit assumenda nulla dolores consequatur accusantium.</p><p>Tempora ut incidunt quae vero. Amet labore dolore rerum facere esse et fuga. Corrupti qui corporis consequatur.</p><p>Itaque vel enim cupiditate quos pariatur temporibus adipisci. Consequatur odit molestias quia. Reiciendis consequatur accusantium eos dolor qui.</p><p>Sed omnis inventore iure beatae porro dolorem. Asperiores magnam voluptatem doloremque modi voluptatem quis. Voluptas a ratione voluptates quia odio ex voluptatum at. Incidunt modi blanditiis recusandae aut voluptas.</p>', NULL, '2022-01-09 16:38:45', '2022-01-09 16:38:45'),
(17, 1, 2, 'Aut velit.', 'voluptatem-eaque-maiores-dolorem-temporibus-sunt', NULL, 'Enim vel tenetur incidunt. Eaque non consectetur omnis quibusdam aut rem. Enim delectus quasi nisi qui libero eligendi sit. Non aut omnis adipisci deserunt repellendus.', '<p>Totam nesciunt explicabo ratione accusamus quia in. Suscipit occaecati voluptatem eligendi. Odio inventore quisquam sed accusamus adipisci.</p><p>Illo quis quidem est labore et unde. Eius mollitia et magnam quidem culpa. Optio et libero veritatis ut consequatur necessitatibus praesentium. Magni eaque blanditiis commodi quisquam minima.</p><p>Et laudantium sed quo amet. Minima sunt dolores voluptate sint quo cum veritatis. Beatae sed est facere doloremque aperiam ea quis. Optio qui repellendus voluptas labore culpa facere earum voluptas.</p><p>Dolor velit adipisci et quo. Esse rerum sint maxime voluptatibus qui.</p><p>Explicabo porro alias quia non. Eligendi tenetur perferendis nisi dolorem omnis necessitatibus est consequatur. Nulla voluptas repudiandae quia quidem reiciendis velit sit minus. Sapiente similique qui accusamus cumque vero.</p>', NULL, '2022-01-09 16:38:45', '2022-01-09 16:38:45'),
(18, 3, 1, 'Assumenda voluptatem non.', 'aut-ut-consequuntur-eos-voluptatibus-veritatis-quibusdam', NULL, 'Et possimus ea ullam minus facere sit et. Ullam et et sapiente libero voluptas. Animi quibusdam qui quibusdam et explicabo.', '<p>Expedita est sunt voluptatem. Deserunt accusantium architecto necessitatibus non ullam quod. Molestiae et id modi excepturi pariatur et.</p><p>Ut tempora ex iusto et. Nobis necessitatibus ipsa sit minus deserunt. Non eos pariatur inventore voluptatibus nisi laudantium animi. Ex soluta itaque nisi dolores earum voluptatem et.</p><p>Laudantium adipisci eveniet ducimus recusandae voluptatem. Quos eveniet facere quis debitis. Dolor assumenda iusto repellat aperiam dignissimos. Illo deserunt nam sed aspernatur. Ab omnis in dolore magni ut rem.</p><p>Voluptatem dolor cupiditate quod illo. Quae voluptatem voluptate et odit nam quia. Enim voluptate tempora aperiam.</p><p>Nulla cumque magni id modi et. Est placeat minus velit. Amet iure blanditiis cum optio veniam.</p><p>Enim nostrum quam quia culpa voluptatem sapiente officiis. Rerum sunt quo ex a aperiam. Et consequatur error qui nam vel cumque illo.</p><p>Id quia earum recusandae debitis. Nobis animi animi pariatur eaque pariatur neque sunt. Neque minima quam amet.</p>', NULL, '2022-01-09 16:38:45', '2022-01-09 16:38:45'),
(19, 2, 2, 'Ea incidunt impedit doloremque incidunt.', 'enim-voluptatem-natus-laudantium-ut-repellat-est', NULL, 'Quo quia aut ducimus est quisquam et cupiditate. Velit deserunt et vel et.', '<p>Voluptatum similique aut provident quo id occaecati aliquid et. Possimus neque rerum ab unde architecto. Pariatur et natus aliquid aliquid voluptas. Ut quo omnis perferendis sint voluptate. Veniam dolor quia expedita enim numquam qui quis.</p><p>Aut tempore sunt ab saepe quas. Ab quod esse tempora alias. Dolor perferendis consectetur dolor velit distinctio. Soluta labore hic perferendis. Minus et molestiae et eligendi qui et repellat.</p><p>Sed praesentium incidunt eveniet consequatur doloribus et sint odit. Ad voluptatem quos ad unde facere aliquam qui voluptatem. Officiis quos et qui ea quasi libero eum voluptates. Maiores sunt ut recusandae.</p><p>Quia eos maxime ad similique et esse est et. Ducimus nihil et et illum illum quia provident. Atque et minima vitae quasi. Facere quis autem dolorum molestiae ab commodi.</p><p>Unde nostrum cumque mollitia adipisci et laborum. Tempore delectus deserunt quas sit at. Distinctio laborum odio possimus in. Rerum amet atque alias repellendus et quia.</p><p>Dicta dolorem porro dolore quo autem. Quia blanditiis sapiente autem accusantium quia natus deleniti. Iure eos dolor natus ut.</p><p>Est enim consequatur est eos. Quis nobis nobis quia earum est. Deserunt ipsam unde rerum ullam saepe. Laboriosam corrupti voluptatem qui tenetur magni deleniti optio.</p>', NULL, '2022-01-09 16:38:45', '2022-01-09 16:38:45'),
(20, 1, 4, 'Exercitationem quas cumque ut ea iste.', 'modi-similique-ut-aliquid-maiores-autem', NULL, 'Unde numquam ea voluptatum et. Doloremque sed et sint id. Ut libero illum et enim ipsum dicta ab. Aut et consequuntur cupiditate sapiente alias possimus ex sit.', '<p>Ut voluptate officia nesciunt atque voluptatum aut. Molestias sit quia eligendi expedita dolorum enim nemo. Accusantium sunt itaque quam dolorem voluptatum.</p><p>Alias accusantium vero et est. Aut eos laborum laboriosam in in.</p><p>Beatae blanditiis qui dolores harum. Nemo ex tempora id voluptatum voluptas doloribus sunt ea. Expedita maxime quis necessitatibus rem porro. Molestiae recusandae ipsa eius tenetur sed magnam autem.</p><p>Hic est aut harum rerum eligendi illo nihil. Fuga vel velit nobis. Perferendis incidunt cupiditate est quidem voluptatibus.</p><p>Magni eaque non rerum repudiandae et consequuntur. Similique et ut eum ab eos est ut. Unde quis corporis ullam omnis voluptatem est.</p><p>Atque quidem sit incidunt qui et impedit. Culpa quaerat nihil magni vitae magni eius. Optio omnis expedita voluptates debitis voluptas.</p><p>Illum et id quod aliquam est minus. Modi delectus ut excepturi accusantium perspiciatis qui iste explicabo. Nisi dolores ullam sunt delectus dicta ea in consequatur. Quos consequatur ea occaecati natus doloremque.</p>', NULL, '2022-01-09 16:38:45', '2022-01-09 16:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Rudy Nurafif', 'rudynurafif', 'rudynurafif@gmail.com', NULL, '$2y$10$.oF5UemzmbsRl7Ip02X1KuIKDqdwx.5wyz4ZMX9QfdzS0mB2ebyja', NULL, '2022-01-09 16:38:43', '2022-01-09 16:38:43', 1),
(2, 'Nova Agustina', 'cagustina', 'gamblang14@example.net', '2022-01-09 16:38:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XlyGtPw7DM8ydHklUE9ucszPL0ikzx2TPlnyeVAG9qkKploeQ9PkN63uxQcp', '2022-01-09 16:38:43', '2022-01-09 16:38:43', 0),
(3, 'Zulaikha Purnawati', 'rama80', 'pratiwi.icha@example.com', '2022-01-09 16:38:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EBrbhLf2JY9iWlnfDoxeA5nXhkwPaybdkKXXYof29z0qYW14YUhwRAyCRahd', '2022-01-09 16:38:43', '2022-01-09 16:38:43', 1),
(4, 'Salimah Lestari', 'nadine.wasita', 'rsaptono@example.org', '2022-01-09 16:38:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yZRjWD1ie16LjvChOS9Pdu51SEzNzbob6CTnxH5H6WCaeUKaKrRP4zWbb1i4', '2022-01-09 16:38:43', '2022-01-09 16:38:43', 0),
(5, 'Rudy Asa Nurafif', 'rudyasa', 'rudymcfc@gmail.com', NULL, '$2y$10$3/FOou14lD/22M7eqUYLluJjJ2phiLK9g/xXE.uLQJzW8t3YtTlYm', NULL, '2022-01-09 22:23:50', '2022-01-09 22:23:50', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
