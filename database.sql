-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 12 juin 2024 à 15:47
-- Version du serveur : 8.0.37
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sahtek`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `consigne`
--

CREATE TABLE `consigne` (
  `id_consigne` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_malade` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `consigne`
--

INSERT INTO `consigne` (`id_consigne`, `description`, `id_malade`, `created_at`, `updated_at`) VALUES
(65, 'Évitez les coiffures serrées qui tirent sur les cheveux.', 46, NULL, NULL),
(66, 'Utilisez des shampooings doux et évitez les produits chimiques agressifs.', 46, NULL, NULL),
(67, 'Consultez un dermatologue pour évaluer les options de traitement.', 46, NULL, NULL),
(68, 'Adoptez une alimentation équilibrée riche en protéines et en vitamines.', 47, NULL, NULL),
(69, 'Évitez les sources de stress et essayez des techniques de gestion du stress.', 47, NULL, NULL),
(70, 'Consultez un spécialiste pour explorer les options de traitement.', 47, NULL, NULL),
(71, 'Prenez des analgésiques en vente libre selon les indications.', 48, NULL, NULL),
(72, 'Appliquez des compresses froides sur le front ou la nuque.', 48, NULL, NULL),
(73, 'Évitez les déclencheurs potentiels tels que le stress et la caféine.', 48, NULL, NULL),
(74, 'Reposez-vous suffisamment et évitez les situations stressantes.', 49, NULL, NULL),
(75, 'Hydratez-vous régulièrement et mangez des repas équilibrés.', 49, NULL, NULL),
(76, 'Consultez votre médecin pour discuter des options de soulagement de la douleur sûres pendant la grossesse.', 49, NULL, NULL),
(77, 'Évitez les mouvements brusques et levez-vous lentement.', 50, NULL, NULL),
(78, 'Restez hydraté et maintenez une alimentation équilibrée.', 50, NULL, NULL),
(79, 'Consultez un médecin si les vertiges persistent ou s aggravent.', 50, NULL, NULL),
(80, 'Adoptez une bonne posture et évitez de rester assis ou debout dans la même position pendant de longues périodes.', 51, NULL, NULL),
(81, 'Appliquez de la chaleur ou de la glace sur la zone douloureuse.', 51, NULL, NULL),
(82, 'Pratiquez des étirements doux pour soulager la tension musculaire.', 51, NULL, NULL),
(83, 'Consultez un médecin pour évaluer la cause sous-jacente de la perte de l odorat et du goût.', 52, NULL, NULL),
(84, 'Évitez les environnements où vous pourriez être exposé à des produits chimiques irritants.', 52, NULL, NULL),
(85, 'Essayez des remèdes maison comme l inhalation de vapeur pour ouvrir les voies nasales.', 52, NULL, NULL),
(86, 'Consultez un médecin si le gonflement persiste ou s accompagne d autres symptômes.', 53, NULL, NULL),
(87, 'Évitez de manipuler ou de presser les glandes enflées pour éviter toute infection.', 53, NULL, NULL),
(88, 'Reposez-vous suffisamment et maintenez une alimentation saine.', 53, NULL, NULL),
(89, 'Consultez un dentiste pour évaluer et traiter toute affection dentaire sous-jacente.', 54, NULL, NULL),
(90, 'Maintenez une bonne hygiène bucco-dentaire en vous brossant les dents et en utilisant du fil dentaire régulièrement.', 54, NULL, NULL),
(91, 'Évitez les aliments durs ou collants qui pourraient aggraver la douleur.', 54, NULL, NULL),
(115, 'Reposez-vous suffisamment et maintenez une alimentation saine.', 53, NULL, NULL),
(116, 'Consultez un dentiste pour évaluer et traiter toute affection dentaire sous-jacente.', 54, NULL, NULL),
(117, 'Maintenez une bonne hygiène bucco-dentaire en vous brossant les dents et en utilisant du fil dentaire régulièrement.', 54, NULL, NULL),
(118, 'Évitez les aliments durs ou collants qui pourraient aggraver la douleur.', 54, NULL, NULL),
(138, 'Évitez les environnements où vous pourriez être exposé à des produits chimiques irritants.', 52, NULL, NULL),
(139, 'Essayez des remèdes maison comme l inhalation de vapeur pour ouvrir les voies nasales.', 52, NULL, NULL),
(140, 'Consultez un médecin si le gonflement persiste ou s accompagne d autres symptômes.', 53, NULL, NULL),
(141, 'Évitez de manipuler ou de presser les glandes enflées pour éviter toute infection.', 53, NULL, NULL),
(142, 'Reposez-vous suffisamment et maintenez une alimentation saine.', 53, NULL, NULL),
(143, 'Consultez un dentiste pour évaluer et traiter toute affection dentaire sous-jacente.', 54, NULL, NULL),
(144, 'Maintenez une bonne hygiène bucco-dentaire en vous brossant les dents et en utilisant du fil dentaire régulièrement.', 54, NULL, NULL),
(145, 'Évitez les aliments durs ou collants qui pourraient aggraver la douleur.', 54, NULL, NULL),
(146, 'Établissez une routine de sommeil régulière en vous couchant et en vous levant à la même heure chaque jour.', 55, NULL, NULL),
(147, 'Évitez les stimulants comme la caféine et l alcool avant le coucher.', 55, NULL, NULL),
(148, 'Créez un environnement propice au sommeil en gardant la chambre sombre, calme et fraîche.', 55, NULL, NULL),
(149, 'consignes 4', 56, '2024-06-12 10:52:22', '2024-06-12 10:52:22'),
(150, 'consignes 3', 56, '2024-06-12 10:52:22', '2024-06-12 10:52:22'),
(151, 'consignes 5', 56, '2024-06-12 10:52:23', '2024-06-12 10:52:23');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` bigint UNSIGNED NOT NULL,
  `nom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Homme', 'Pour les individus de sexe masculin.', NULL, NULL),
(2, 'Femme', 'Pour les individus de sexe féminin.', NULL, NULL),
(3, 'tous', 'Pour tous.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `malade`
--

CREATE TABLE `malade` (
  `id_malade` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parties_corps` bigint UNSIGNED NOT NULL,
  `id_genre` bigint UNSIGNED NOT NULL,
  `id_specialite` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `malade`
--

INSERT INTO `malade` (`id_malade`, `nom`, `description`, `id_parties_corps`, `id_genre`, `id_specialite`, `created_at`, `updated_at`) VALUES
(46, 'Perte de cheveux chez les femmes', 'La perte de cheveux chez les femmes peut être causée par divers facteurs, tels que le stress, les changements hormonaux, les troubles médicaux ou les facteurs génétiques.', 1, 2, 6, NULL, NULL),
(47, 'Perte de cheveux chez les hommes', 'La perte de cheveux chez les hommes peut être causée par divers facteurs, tels que le stress, les changements hormonaux, les troubles médicaux ou les facteurs génétiques.', 1, 1, 6, NULL, NULL),
(48, 'Maux de tête', 'Le mal de tête est une douleur ou un inconfort ressenti dans la région de la tête et peut être d intensité variable.', 1, 3, 5, NULL, NULL),
(49, 'Maux de tête et grossesse', 'Les maux de tête pendant la grossesse peuvent être dus à des changements hormonaux, au stress ou à d autres facteurs.', 1, 2, 9, NULL, NULL),
(50, 'Vertiges en position debout', 'Les vertiges en position debout peuvent être causés par diverses raisons, notamment des problèmes doreille interne, des troubles de l équilibre ou une hypotension orthostatique.', 1, 3, 5, NULL, NULL),
(51, 'Douleur au cou', 'La douleur au cou peut être due à une tension musculaire, à des blessures, à des problèmes de posture ou à des conditions médicales sous-jacentes.', 1, 3, 5, NULL, NULL),
(52, 'Perte de l odorat et du goût', 'La perte de l odorat et du goût peut être causée par des infections, des allergies, des polypes nasaux ou dautres problèmes de santé.', 1, 3, 5, NULL, NULL),
(53, 'Gonflement des glandes dans le cou', 'Le gonflement des glandes dans le cou peut être le résultat d une infection, d une inflammation ou d autres affections médicales.', 1, 3, 5, NULL, NULL),
(54, 'Douleur à la mâchoire, aux gencives ou aux dents', 'La douleur à la mâchoire, aux gencives ou aux dents peut être causée par des caries, des infections, des problèmes de gencives ou d utres affections dentaires.', 1, 3, 2, NULL, NULL),
(55, 'Insomnie', 'L insomnie est un trouble du sommeil caractérisé par des difficultés à s endormir, à rester endormi ou à obtenir un sommeil réparateur.', 1, 3, 2, NULL, NULL),
(56, 'made de moughite', 'description pour malade de drmoughite', 1, 3, 6, '2024-06-12 10:52:19', '2024-06-12 10:52:19');

-- --------------------------------------------------------

--
-- Structure de la table `medcin`
--

CREATE TABLE `medcin` (
  `id_medcin` bigint UNSIGNED NOT NULL,
  `nom_prenom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_specialite` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medcin`
--

INSERT INTO `medcin` (`id_medcin`, `nom_prenom`, `bio`, `ville`, `id_specialite`, `id_user`, `created_at`, `updated_at`) VALUES
(7, 'hamid', 'hamid 1', 'Ben Yakhlef', 3, 28, '2024-06-09 18:27:01', '2024-06-09 18:27:01'),
(10, 'Ahmed Ayoubi', 'Le Dr. Ahmed Ayoubi est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Casablanca', 6, 31, '2024-06-12 10:34:47', '2024-06-12 10:34:47'),
(11, 'Kamel Jamal', 'Le Dr. Kamal Jamal est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Casablanca', 6, 32, '2024-06-12 10:35:51', '2024-06-12 10:35:51'),
(12, 'MOHAMED', 'Le Dr. MOHAMED est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Rabat', 6, 33, '2024-06-12 10:36:49', '2024-06-12 10:36:49'),
(13, 'MOHAMED ELHADI', 'Le Dr. MOHAMED ELHADI est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Salé', 6, 34, '2024-06-12 10:37:28', '2024-06-12 10:37:28'),
(14, 'ABDE RAHIM', 'Le Dr. ABDE RAHIM est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Fquih Ben Salah', 6, 35, '2024-06-12 10:38:38', '2024-06-12 10:38:38'),
(16, 'moughite chawi', 'Le Dr. moughite chawi est un médecin marocain respecté, reconnu pour son expertise clinique et son empathie envers ses patients.Il se distingue par sa capacité\n à établir des relations solides avec ceux qu\'il soigne, offrant des soins personnalisés et attentifs.Sa passion pour la médecine se reflète dans son approche \nholistique, où il considère les aspects physiques, émotionnels et psychologiques de la santé. En tant que professionnel engagé, il contribue également à l\'avancement \ndes connaissances médicales, que ce soit par le biais de la recherche ou de l\'éducation.', 'Sidi Smaïl', 6, 37, '2024-06-12 10:46:25', '2024-06-12 10:46:25');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2024_04_27_215050_role', 1),
(42, '2024_04_27_226050_create_cache_table', 1),
(43, '2024_04_27_229950_create_users_table', 1),
(44, '2024_04_28_140329_genre', 1),
(45, '2024_04_28_155526_parties_corp', 1),
(46, '2024_04_28_162741_specialite', 1),
(47, '2024_04_28_163251_malade', 1),
(48, '2024_04_28_163447_symptome', 1),
(49, '2024_04_28_163617_consigne', 1),
(50, '2024_05_03_152755_medcin', 1),
(51, '2024_06_12_004145_rendez-vous', 2);

-- --------------------------------------------------------

--
-- Structure de la table `parties_corp`
--

CREATE TABLE `parties_corp` (
  `id_parties_corps` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parties_corp`
--

INSERT INTO `parties_corp` (`id_parties_corps`, `nom`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'La tête ', 'Description de la tête et du cou.', 'chemin/vers/photo1.jpg', NULL, NULL),
(2, 'Les epaules ', ' Description deLes epaule.', 'chemin/vers/photo1.jpg', NULL, NULL),
(3, 'La poitrine et le dos', 'Description de la poitrine et du dos.', 'chemin/vers/photo4.jpg', NULL, NULL),
(4, 'Les bras et les mains', 'Description des bras et des mains.', 'chemin/vers/photo5.jpg', NULL, NULL),
(5, 'Le ventre et le bassin', 'Description du ventre et du bassin.', 'chemin/vers/photo6.jpg', NULL, NULL),
(6, 'Les jambes', 'Description des jambes.', 'chemin/vers/photo7.jpg', NULL, NULL),
(7, 'Autre', 'Description d\'autres parties du corps.', 'chemin/vers/photo8.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'login_test', '66b49a6d402107174041a26137ada29f50d79fe0a233e1dcebcc399af28237af', '[\"*\"]', NULL, NULL, '2024-06-09 14:23:10', '2024-06-09 14:23:10'),
(2, 'App\\Models\\User', 1, 'login_test', '014741a65eb8a09cb5489d48d3426d0643479843c93ec2d0bf89b248a665f306', '[\"*\"]', NULL, NULL, '2024-06-09 14:24:40', '2024-06-09 14:24:40'),
(3, 'App\\Models\\User', 1, 'login_test', '3dacf1de3b2bc647eca91dce04f2056c336c6179ba5590bde06ebe535fe3b016', '[\"*\"]', NULL, NULL, '2024-06-09 14:29:42', '2024-06-09 14:29:42'),
(4, 'App\\Models\\User', 1, 'login_test', 'b356d88e8cf8d6e3cc35f0482f3cdcd7ce7009f6bd806a8a5e35ed8a7f01b496', '[\"*\"]', NULL, NULL, '2024-06-09 14:30:14', '2024-06-09 14:30:14'),
(5, 'App\\Models\\User', 1, 'login_test', '3d0895bd04db24b23abfb8b4e1dc386f5c1de4f069719d2b9305e5ed0e57602b', '[\"*\"]', NULL, NULL, '2024-06-09 14:30:33', '2024-06-09 14:30:33'),
(6, 'App\\Models\\User', 1, 'login_test', 'aae722592e48306f227337adb3985ec1e1cb19810592c10073bb0e84a6b5a4fb', '[\"*\"]', NULL, NULL, '2024-06-09 14:30:44', '2024-06-09 14:30:44'),
(7, 'App\\Models\\User', 1, 'login_test', 'fa99a5ef9dd48957c422745d034c8dc2ed8f4bcad9e5c2f7d315a459f80d1cd2', '[\"*\"]', NULL, NULL, '2024-06-09 14:54:01', '2024-06-09 14:54:01'),
(8, 'App\\Models\\User', 1, 'login_test', '0bf5726989753c6585d9428e85755ce101a02c5922498460c1998c4d5ce271ab', '[\"*\"]', NULL, NULL, '2024-06-09 14:54:31', '2024-06-09 14:54:31'),
(9, 'App\\Models\\User', 1, 'login_test', '161298e41b45d373e2514769369b95bed916e5bb485eea8758c2076a703be6d2', '[\"*\"]', NULL, NULL, '2024-06-09 14:55:17', '2024-06-09 14:55:17'),
(10, 'App\\Models\\User', 1, 'login_test', '86f786e2518b3ae587d00de99000eaffc3a2c674649edb93a5912c44ec786c14', '[\"*\"]', NULL, NULL, '2024-06-09 14:55:38', '2024-06-09 14:55:38'),
(11, 'App\\Models\\User', 1, 'login_test', 'dfc30e3c9eb788a1b7180d4a337c3fd162ed32f17dc909ba1b87c46163c58ec4', '[\"*\"]', NULL, NULL, '2024-06-09 14:55:58', '2024-06-09 14:55:58'),
(12, 'App\\Models\\User', 1, 'login_test', 'b18b0ddf233551ce8c2cd95f9f4e8766de3c513dbbe0309f300e28d9ab95b9d1', '[\"*\"]', NULL, NULL, '2024-06-09 15:01:05', '2024-06-09 15:01:05'),
(13, 'App\\Models\\User', 1, 'login_test', 'a017280663b37019808ed25a3cfc429ef46800c40230e2b16de528069bd84671', '[\"*\"]', NULL, NULL, '2024-06-09 15:01:38', '2024-06-09 15:01:38'),
(14, 'App\\Models\\User', 1, 'login_test', 'cc2ba831af0e08d8137a5622baa281268b792cdd0e5715d00410bcaedf811b2d', '[\"*\"]', NULL, NULL, '2024-06-09 15:02:02', '2024-06-09 15:02:02'),
(15, 'App\\Models\\User', 1, 'login_test', '95400d36f5e65e1a5ce5803b4e3b76e1a750ae0e2681e516893dfb7fa5289117', '[\"*\"]', NULL, NULL, '2024-06-09 15:11:03', '2024-06-09 15:11:03'),
(16, 'App\\Models\\User', 1, 'login_test', '9366d4f6b1a067197ebe1f54c595649b748511a1f5017115ddca71ef07c0db0c', '[\"*\"]', NULL, NULL, '2024-06-09 17:43:33', '2024-06-09 17:43:33'),
(17, 'App\\Models\\User', 1, 'login_test', '25c754c789a72b9976f24947d2c61ec8989dd24416e47116612d40388cb22c62', '[\"*\"]', NULL, NULL, '2024-06-09 17:44:31', '2024-06-09 17:44:31'),
(18, 'App\\Models\\User', 1, 'login_test', '192771be114ae9556ff42a9a8a25aa04340af4c3f9294812d8902d410c2c945d', '[\"*\"]', NULL, NULL, '2024-06-09 17:47:37', '2024-06-09 17:47:37'),
(19, 'App\\Models\\User', 1, 'login_test', 'e175c51bbd69efc757fef183089882aeea941f762b0e09a8d45acc6f46ca8032', '[\"*\"]', NULL, NULL, '2024-06-09 17:50:01', '2024-06-09 17:50:01'),
(20, 'App\\Models\\User', 1, 'login_test', 'd0efe6d65d830a1beb690c271f4a986f01eff2531588897cca5aa34132ebeb8f', '[\"*\"]', NULL, NULL, '2024-06-09 17:50:46', '2024-06-09 17:50:46'),
(21, 'App\\Models\\User', 1, 'login_test', '507f082c9d3127e0ecd2324813f2f27ebe51fef0059badf660466bea9de7302c', '[\"*\"]', NULL, NULL, '2024-06-09 18:13:44', '2024-06-09 18:13:44'),
(22, 'App\\Models\\User', 1, 'login_test', 'fb9e1095dd89c80765abaad5a7e20fa29a37d2ff54e2a05d55cd4dcd31766ba8', '[\"*\"]', NULL, NULL, '2024-06-09 18:28:15', '2024-06-09 18:28:15'),
(23, 'App\\Models\\User', 28, 'login_test', '57e83115f20d16b5650df71bd7aa076bb2d47472cd98a7cfc9f5a417c488170d', '[\"*\"]', NULL, NULL, '2024-06-09 18:36:15', '2024-06-09 18:36:15'),
(24, 'App\\Models\\User', 1, 'login_test', '52fd6049e2a98a39ecb0754291a662d81c9ca3044ca53919ba6ce5e52acf75bb', '[\"*\"]', NULL, NULL, '2024-06-09 18:44:31', '2024-06-09 18:44:31'),
(25, 'App\\Models\\User', 28, 'login_test', '1bad7e76525d34a5a1dec1f0f24d1340ee072efa9a74f41624c82feb147ac85b', '[\"*\"]', NULL, NULL, '2024-06-09 18:50:33', '2024-06-09 18:50:33'),
(26, 'App\\Models\\User', 1, 'login_test', 'a35c39abeb442e874f4ca52bd118f793eb17e37870fbc0e79d747b71fc45f6e8', '[\"*\"]', NULL, NULL, '2024-06-09 18:50:52', '2024-06-09 18:50:52'),
(27, 'App\\Models\\User', 28, 'login_test', '96494ccee3ec3bc32c607a49ef0492216c2b2b99e31e4e09bf6767bf64d1a975', '[\"*\"]', NULL, NULL, '2024-06-09 18:51:17', '2024-06-09 18:51:17'),
(28, 'App\\Models\\User', 1, 'login_test', 'ff77469d3b894b2e30613da234693b7cdc5ccf8fbcf759a58fd197c47d5220a4', '[\"*\"]', NULL, NULL, '2024-06-10 14:08:43', '2024-06-10 14:08:43'),
(29, 'App\\Models\\User', 29, 'login_test', '698d5931e53834af7adeb4b3bc38d4b00c64c20305102924ca361ddf47530314', '[\"*\"]', NULL, NULL, '2024-06-10 14:23:54', '2024-06-10 14:23:54'),
(30, 'App\\Models\\User', 28, 'login_test', 'dc0cf36fc0f8d4085d8071df1b5ef561efae24ad07d264d5d552f8de4801d01d', '[\"*\"]', NULL, NULL, '2024-06-10 14:24:11', '2024-06-10 14:24:11'),
(31, 'App\\Models\\User', 28, 'login_test', 'c679d97194cfeee26a5c03e9894a34a4b314e59e1499c8dc53089f21a57f4d01', '[\"*\"]', NULL, NULL, '2024-06-10 22:08:13', '2024-06-10 22:08:13'),
(32, 'App\\Models\\User', 1, 'login_test', 'dab2f794069b00ccb9fb0bda34b3c2968fc676edb6ddb1e9d5b6f1f87e29bfb0', '[\"*\"]', NULL, NULL, '2024-06-10 22:08:45', '2024-06-10 22:08:45'),
(33, 'App\\Models\\User', 1, 'login_test', 'ae590c3ff8b1ae36a67c1922dbd2a4df4e4ceb4eb78c397f2b9e5e50bd72b4d3', '[\"*\"]', NULL, NULL, '2024-06-10 22:24:46', '2024-06-10 22:24:46'),
(34, 'App\\Models\\User', 1, 'login_test', '25ad699cf43a98fdb4eab1836facb51c76e7da96187463c0a52abcfc8e2494ac', '[\"*\"]', NULL, NULL, '2024-06-10 22:49:54', '2024-06-10 22:49:54'),
(35, 'App\\Models\\User', 1, 'login_test', 'da1941035be67f9039eef0db4b52814d2e7dae7ca5c4c603a2eb9971f7c017a0', '[\"*\"]', NULL, NULL, '2024-06-10 22:50:27', '2024-06-10 22:50:27'),
(36, 'App\\Models\\User', 28, 'login_test', '53c2f3d66495a9c0ecfb80d60b47bdf0ec3d32c8db687f2f51dcfbbf1f8c85fb', '[\"*\"]', NULL, NULL, '2024-06-10 22:51:13', '2024-06-10 22:51:13'),
(37, 'App\\Models\\User', 28, 'login_test', 'de5e7b57f037e47cbb41ff2f1df7b27d744160f0eb43b76080503316a7ba0061', '[\"*\"]', NULL, NULL, '2024-06-10 22:54:07', '2024-06-10 22:54:07'),
(38, 'App\\Models\\User', 28, 'login_test', '9bb0f2be1f329b7591b1f8811f9886c4dac4d2735410c24bfd92acd94fd2ca6f', '[\"*\"]', NULL, NULL, '2024-06-10 23:08:27', '2024-06-10 23:08:27'),
(39, 'App\\Models\\User', 28, 'login_test', 'ebfc245cdb249d6e18839ad9c77513db8b9199a39a70e6591824bb65a807165d', '[\"*\"]', NULL, NULL, '2024-06-10 23:12:47', '2024-06-10 23:12:47'),
(40, 'App\\Models\\User', 28, 'login_test', '07917a42a847a692bf28f8a2ed4c8efe22a15523c18af8e6e28d98ce76e1e196', '[\"*\"]', NULL, NULL, '2024-06-10 23:22:30', '2024-06-10 23:22:30'),
(41, 'App\\Models\\User', 28, 'login_test', 'd77853c452251bdb6388c8967a87f8b95cfdc74806a1b8e505fe9c289515e4cf', '[\"*\"]', NULL, NULL, '2024-06-11 00:08:24', '2024-06-11 00:08:24'),
(42, 'App\\Models\\User', 28, 'login_test', '1369d5f47d98cc0de3030d9259d301fe6c82fee612d966755f7462d2efa3c49f', '[\"*\"]', NULL, NULL, '2024-06-11 00:37:13', '2024-06-11 00:37:13'),
(43, 'App\\Models\\User', 28, 'login_test', '54a29e6862965c184746079e87846017ba393aa6619d8899472f532c99c3c6ba', '[\"*\"]', NULL, NULL, '2024-06-11 10:09:37', '2024-06-11 10:09:37'),
(44, 'App\\Models\\User', 1, 'login_test', 'bc60c6bd7a12045b50421ca1435d133420b202a65ef7309f382e999493c1c20a', '[\"*\"]', NULL, NULL, '2024-06-11 10:47:07', '2024-06-11 10:47:07'),
(45, 'App\\Models\\User', 1, 'login_test', '68624cf86530dd6cce0bfad6a6e9b065f21d4637496719daec927f8db49f7f08', '[\"*\"]', NULL, NULL, '2024-06-11 10:51:27', '2024-06-11 10:51:27'),
(46, 'App\\Models\\User', 1, 'login_test', '17b3d157bae7e049e87886bff906d56ab136f65cf4da41e4b2d6951dfee38c18', '[\"*\"]', NULL, NULL, '2024-06-11 10:53:26', '2024-06-11 10:53:26'),
(47, 'App\\Models\\User', 1, 'login_test', '916922221c65c605bfef2d73dd3fcb8bafa1fb756e089a0fff7092477d6dd69c', '[\"*\"]', NULL, NULL, '2024-06-11 10:54:29', '2024-06-11 10:54:29'),
(48, 'App\\Models\\User', 1, 'login_test', 'a02ef34f620182a9f814da6e6ff74c763344c13a4aa51a939e83db3a292e4c3d', '[\"*\"]', NULL, NULL, '2024-06-11 11:03:25', '2024-06-11 11:03:25'),
(49, 'App\\Models\\User', 1, 'login_test', '3dfb2faaa1bb54a7e588180e3d1c76244d87ce37abd31ee7f765e531f5472ff5', '[\"*\"]', NULL, NULL, '2024-06-11 11:05:46', '2024-06-11 11:05:46'),
(50, 'App\\Models\\User', 28, 'login_test', '3cbe5147e665d66bd29a49184ea98073a073bb59fab386d56632102173517375', '[\"*\"]', NULL, NULL, '2024-06-11 11:10:41', '2024-06-11 11:10:41'),
(51, 'App\\Models\\User', 28, 'login_test', '559ecf516afea040f78e43cbd6596cb37263c16d305554d00b7a4bb86d8ca2fc', '[\"*\"]', NULL, NULL, '2024-06-11 11:19:30', '2024-06-11 11:19:30'),
(52, 'App\\Models\\User', 28, 'login_test', '086ded51e7d20957d545f9bb08622b7d9e51ec2c46a4ac9be6be7e2ead178e5e', '[\"*\"]', NULL, NULL, '2024-06-11 11:22:34', '2024-06-11 11:22:34'),
(53, 'App\\Models\\User', 28, 'login_test', 'f6d075641a38c1a7af627a6d1b083bfca33acc8d0eb3096a321ad8f3c8745807', '[\"*\"]', NULL, NULL, '2024-06-11 13:16:32', '2024-06-11 13:16:32'),
(54, 'App\\Models\\User', 1, 'login_test', 'e7ee0e793fa13d2d9f8a2d1269fa1a1f28fe153d13631b688d2783d1fc0e02cf', '[\"*\"]', NULL, NULL, '2024-06-11 13:17:58', '2024-06-11 13:17:58'),
(55, 'App\\Models\\User', 1, 'login_test', 'b1544bc9546aeaff3b2dde7e6e3ab834b99b8d8fae9ef210a48d0c4b6e0923c7', '[\"*\"]', NULL, NULL, '2024-06-11 13:40:40', '2024-06-11 13:40:40'),
(56, 'App\\Models\\User', 28, 'login_test', '95cffdcfade9c2ef5a5b2425639bd6a103e8343d3437af2025e9533be7daf6b3', '[\"*\"]', NULL, NULL, '2024-06-11 13:44:15', '2024-06-11 13:44:15'),
(57, 'App\\Models\\User', 28, 'login_test', '24cb3292aa68f8c35f0ccf7650e443c0188373bf5fc290d27161ae45490f978b', '[\"*\"]', NULL, NULL, '2024-06-11 13:49:05', '2024-06-11 13:49:05'),
(58, 'App\\Models\\User', 1, 'login_test', '1ca47c7bbee70d1ae7fccd11f24325513fcd8a6f014f46e7077c3f2e4459c81e', '[\"*\"]', NULL, NULL, '2024-06-11 13:55:32', '2024-06-11 13:55:32'),
(59, 'App\\Models\\User', 1, 'login_test', 'd67fe62eae44aff1c6f8a7f1221bdf7acb0dbfaa1a055eb39ea1682075535d75', '[\"*\"]', NULL, NULL, '2024-06-11 13:59:52', '2024-06-11 13:59:52'),
(60, 'App\\Models\\User', 1, 'login_test', 'b3ad08d1936e7e0a6e3ea090f7af5e43ef6a19dd38300746979c9ee17c7bef84', '[\"*\"]', NULL, NULL, '2024-06-11 14:01:30', '2024-06-11 14:01:30'),
(61, 'App\\Models\\User', 1, 'login_test', 'ea56b7f4f392e8dd2cb9f982d7d05728e6511158df3767604cfbc11bdc34419d', '[\"*\"]', NULL, NULL, '2024-06-11 14:05:21', '2024-06-11 14:05:21'),
(62, 'App\\Models\\User', 1, 'login_test', '59bd30090fad11e3f43018499fce6ab9c39647cb98cb295599421ee4fb94c15c', '[\"*\"]', NULL, NULL, '2024-06-11 14:07:43', '2024-06-11 14:07:43'),
(63, 'App\\Models\\User', 1, 'login_test', 'de76be23ecf020e73b7993efb609502428730767ed732d13e2a56d6cffbf7384', '[\"*\"]', NULL, NULL, '2024-06-11 14:23:25', '2024-06-11 14:23:25'),
(64, 'App\\Models\\User', 1, 'login_test', 'b086049c2376673f8ddfffac7bc09e42649f62d8b799b6cab5b729b1e51a3365', '[\"*\"]', NULL, NULL, '2024-06-11 14:26:15', '2024-06-11 14:26:15'),
(65, 'App\\Models\\User', 1, 'login_test', '984bec9179b60bad826550f9964e7382f28a222196d537a9d70443ad134a1fb0', '[\"*\"]', NULL, NULL, '2024-06-11 14:26:17', '2024-06-11 14:26:17'),
(66, 'App\\Models\\User', 1, 'login_test', 'ae3fb7dea6762e3a157653a91a81cf166a00550bc3e966efbcc3b537d02f05be', '[\"*\"]', NULL, NULL, '2024-06-11 14:28:40', '2024-06-11 14:28:40'),
(67, 'App\\Models\\User', 1, 'login_test', '9ec908f899ce0a780b6ace938bda87679949770421249a8e2ab1622883387fe7', '[\"*\"]', NULL, NULL, '2024-06-11 14:28:42', '2024-06-11 14:28:42'),
(68, 'App\\Models\\User', 1, 'login_test', 'd740d44a411ca8adddb57c82f47129570e96e9e380469b6ac382cb73b5901747', '[\"*\"]', NULL, NULL, '2024-06-11 14:29:57', '2024-06-11 14:29:57'),
(69, 'App\\Models\\User', 1, 'login_test', 'f5d8d6e3989d823ab01bb6c58875b758897a64531ee25a910d7189eb4329452b', '[\"*\"]', NULL, NULL, '2024-06-11 14:29:59', '2024-06-11 14:29:59'),
(70, 'App\\Models\\User', 1, 'login_test', 'c3e23f6f50cfcf8b80ceecd5efa52758ec10d426cdf22a2634966bfb04de0cc0', '[\"*\"]', NULL, NULL, '2024-06-11 14:32:37', '2024-06-11 14:32:37'),
(71, 'App\\Models\\User', 1, 'login_test', '696fbfb01932ee0640f80cd26370001f63a1db4be5779cd83458093898d19b27', '[\"*\"]', NULL, NULL, '2024-06-11 14:33:27', '2024-06-11 14:33:27'),
(72, 'App\\Models\\User', 1, 'login_test', 'a581df8a0e86c9883473b38b4726bd795fc5130d8a1ec28e7898d096cf8e340e', '[\"*\"]', NULL, NULL, '2024-06-11 14:33:58', '2024-06-11 14:33:58'),
(73, 'App\\Models\\User', 1, 'login_test', '5c949c0d0238cb0714cec5024a2c434ce28886871f20b5c78a0985d0e979ceee', '[\"*\"]', NULL, NULL, '2024-06-11 14:35:15', '2024-06-11 14:35:15'),
(74, 'App\\Models\\User', 1, 'login_test', '83f9d3f6a29090a1137c35686233534031a56abe86489923c292fc340f5238e7', '[\"*\"]', NULL, NULL, '2024-06-11 14:39:53', '2024-06-11 14:39:53'),
(75, 'App\\Models\\User', 1, 'login_test', '53d0939437f0be03431e9a1c2b48d2b677e9ca2d0517f512ca351ff52561006d', '[\"*\"]', NULL, NULL, '2024-06-11 14:40:44', '2024-06-11 14:40:44'),
(76, 'App\\Models\\User', 1, 'login_test', '145c087c305ce4298b3772a681ef48a56ba61672c33e5d5dbfedb9e49f93711e', '[\"*\"]', NULL, NULL, '2024-06-11 14:40:45', '2024-06-11 14:40:45'),
(77, 'App\\Models\\User', 1, 'login_test', 'e35a6eea5abeb7ac51723a5394c2d78155b644e3a573c4ec94147af5dce768c7', '[\"*\"]', NULL, NULL, '2024-06-11 14:41:46', '2024-06-11 14:41:46'),
(78, 'App\\Models\\User', 1, 'login_test', '567c7d5950e8c62f05a8ff28528dfea9a63c51d7b7e173b315c09a08112b1566', '[\"*\"]', NULL, NULL, '2024-06-11 14:41:48', '2024-06-11 14:41:48'),
(79, 'App\\Models\\User', 1, 'login_test', 'd03190970074990c77627345e26d2dd28552699742706afa85ae695c4d6cd9aa', '[\"*\"]', NULL, NULL, '2024-06-11 14:57:37', '2024-06-11 14:57:37'),
(80, 'App\\Models\\User', 1, 'login_test', 'd9aa17423be40f4adf9f4dd0f2280c67d8ee0041cdc0fcef308084742f1ccaf9', '[\"*\"]', NULL, NULL, '2024-06-11 15:43:57', '2024-06-11 15:43:57'),
(81, 'App\\Models\\User', 1, 'login_test', '39e20009125e258e9088f90d78f0bcd8cf3884374647d1fc8e339870106d970d', '[\"*\"]', NULL, NULL, '2024-06-11 15:44:30', '2024-06-11 15:44:30'),
(82, 'App\\Models\\User', 1, 'login_test', 'abe69053e3625bce4728910c40ae0f12f400c0c8b97c8b740086e66c8f288a22', '[\"*\"]', NULL, NULL, '2024-06-11 15:46:28', '2024-06-11 15:46:28'),
(83, 'App\\Models\\User', 28, 'login_test', '6ba36e2b6e4d233d524dee17b06bca9e87e3c5b68d28b255a4d6061bdfdb2f95', '[\"*\"]', NULL, NULL, '2024-06-11 15:47:40', '2024-06-11 15:47:40'),
(84, 'App\\Models\\User', 1, 'login_test', '5df6a9ab12b122e546106bf70bced4d9a7d939d80f039b60b3b165c812c54bf1', '[\"*\"]', NULL, NULL, '2024-06-11 15:49:01', '2024-06-11 15:49:01'),
(85, 'App\\Models\\User', 1, 'login_test', '9734f82d3225a6e242de5dfdf7c4e43949eb71e467c9241898f0101c34d99884', '[\"*\"]', NULL, NULL, '2024-06-11 15:53:10', '2024-06-11 15:53:10'),
(86, 'App\\Models\\User', 1, 'login_test', '68a24b9d1f43cbc1e4c21540d4a6bb74ab3a400753e8b37b63ac26fa69fd25ab', '[\"*\"]', NULL, NULL, '2024-06-11 15:53:48', '2024-06-11 15:53:48'),
(87, 'App\\Models\\User', 1, 'login_test', 'dc60f32637c7f50be21f8e3e0e65804b84f424d8bc06c2194ff3ccb8bda7cdb9', '[\"*\"]', NULL, NULL, '2024-06-11 16:02:34', '2024-06-11 16:02:34'),
(88, 'App\\Models\\User', 28, 'login_test', '114e6ed57e9901dc4a2ba66c6161373618e709dbf684cd3dbc18d447025e325f', '[\"*\"]', NULL, NULL, '2024-06-11 16:11:24', '2024-06-11 16:11:24'),
(89, 'App\\Models\\User', 1, 'login_test', 'c7deaaf94def2470528598ff38acfbe4ee00269c38e1b6abba9075d039431bd2', '[\"*\"]', NULL, NULL, '2024-06-11 16:12:31', '2024-06-11 16:12:31'),
(90, 'App\\Models\\User', 28, 'login_test', '96c6eefd491bd0e723a0913c585276b558f626404c38ff61da756337e93d02e1', '[\"*\"]', NULL, NULL, '2024-06-11 16:23:44', '2024-06-11 16:23:44'),
(91, 'App\\Models\\User', 1, 'login_test', 'ee3efa9f50b4033bfb0c4b019152c64330387866258e8783222854f2da77b0c5', '[\"*\"]', NULL, NULL, '2024-06-11 16:24:13', '2024-06-11 16:24:13'),
(92, 'App\\Models\\User', 1, 'login_test', '397c261e530ab25f10d1ddb30b95c87e6192957f78b67d3eeb8de039471c6bec', '[\"*\"]', NULL, NULL, '2024-06-11 18:44:37', '2024-06-11 18:44:37'),
(93, 'App\\Models\\User', 1, 'login_test', 'cb84d3245f5d83eb9e4be0ae46d60a8b7a89984db0b912838bdd33eff3ff1aac', '[\"*\"]', NULL, NULL, '2024-06-11 22:52:04', '2024-06-11 22:52:04'),
(94, 'App\\Models\\User', 28, 'login_test', 'ac4fd6b8341395bf50d2cf76f00d2626fa6b518ed03ea5151e84c7881854108a', '[\"*\"]', NULL, NULL, '2024-06-11 22:53:45', '2024-06-11 22:53:45'),
(95, 'App\\Models\\User', 1, 'login_test', '77a8bc0d4b97e4263f80698e21084530b8389b3db0058a386f3e894dc01970c6', '[\"*\"]', NULL, NULL, '2024-06-11 22:54:22', '2024-06-11 22:54:22'),
(96, 'App\\Models\\User', 1, 'login_test', '3b12d72dc7d989e7da7af0f60dab912d3c1e0a0a4fbb8c8dad0b3b6b2e537b0f', '[\"*\"]', NULL, NULL, '2024-06-11 22:55:25', '2024-06-11 22:55:25'),
(97, 'App\\Models\\User', 28, 'login_test', '5a2dac1e18539c2ae2d41484c047b962b606c4c625619b493c971c7f7ad0704e', '[\"*\"]', NULL, NULL, '2024-06-11 22:59:18', '2024-06-11 22:59:18'),
(98, 'App\\Models\\User', 1, 'login_test', '96dceaaa4547c63acd8395f13b858277c49fe6a5cd0eb2cab45f1c4dcf365444', '[\"*\"]', NULL, NULL, '2024-06-11 22:59:50', '2024-06-11 22:59:50'),
(99, 'App\\Models\\User', 1, 'login_test', '896192bbf1179c7623773e6a83719d4dc2db0785007a0d1cb3b2715e185f11d7', '[\"*\"]', NULL, NULL, '2024-06-11 22:59:52', '2024-06-11 22:59:52'),
(100, 'App\\Models\\User', 28, 'login_test', 'aac533a9c9e536ead735216fcae7375b9e8b453c0f620f203256af6e81174595', '[\"*\"]', NULL, NULL, '2024-06-11 23:02:05', '2024-06-11 23:02:05'),
(101, 'App\\Models\\User', 1, 'login_test', 'cec0d7930ed61e1d4b8354ff708654c28ac89fcc3fe12f07798fb9c575dac2b9', '[\"*\"]', NULL, NULL, '2024-06-11 23:02:30', '2024-06-11 23:02:30'),
(102, 'App\\Models\\User', 28, 'login_test', '90dd86a3f263cd243e6f39038a457f412f3c2136ab325236d30d105f619df260', '[\"*\"]', NULL, NULL, '2024-06-12 00:57:33', '2024-06-12 00:57:33'),
(103, 'App\\Models\\User', 28, 'login_test', '2262c35d98f7e5ad1b8a4269acc225e37301cc06789041895c8b3b9e70285ba7', '[\"*\"]', NULL, NULL, '2024-06-12 00:59:00', '2024-06-12 00:59:00'),
(104, 'App\\Models\\User', 28, 'login_test', '8173b3937aa09c8089f7897c2e9a23a7ce24843db11ea39b11e63ea490da582f', '[\"*\"]', NULL, NULL, '2024-06-12 01:00:08', '2024-06-12 01:00:08'),
(105, 'App\\Models\\User', 28, 'login_test', '64efeb67c01ceb4a23f2bf9dd9c96de5a2fd7b90c9f7afeefdcad0f1ba1d28ea', '[\"*\"]', NULL, NULL, '2024-06-12 01:05:11', '2024-06-12 01:05:11'),
(106, 'App\\Models\\User', 28, 'login_test', '5eaf967216f50b8b490b18fb99fef5616a90bd65a1feead767ad5d7843f7fac3', '[\"*\"]', NULL, NULL, '2024-06-12 01:08:07', '2024-06-12 01:08:07'),
(107, 'App\\Models\\User', 28, 'login_test', 'a870c7f686be83a45e62f1075f811e5a716bb1f16188fa8b0ca5fd88cf7c8872', '[\"*\"]', NULL, NULL, '2024-06-12 01:08:39', '2024-06-12 01:08:39'),
(108, 'App\\Models\\User', 28, 'login_test', '0e636644be674eb7e8c186d8fbdb9c4695caf7161f07ac7cdb8ea170aa9e2b2b', '[\"*\"]', NULL, NULL, '2024-06-12 01:09:30', '2024-06-12 01:09:30'),
(109, 'App\\Models\\User', 28, 'login_test', 'afb20a152ace77520fce1bc4b03f97e153a8a0f31ba496127006670261bc5f1a', '[\"*\"]', NULL, NULL, '2024-06-12 01:10:14', '2024-06-12 01:10:14'),
(110, 'App\\Models\\User', 1, 'login_test', 'c4d4cd0e8689777b788cf5341186424ec79f52e37a4af561e94087b6bd19f7ee', '[\"*\"]', NULL, NULL, '2024-06-12 01:20:53', '2024-06-12 01:20:53'),
(111, 'App\\Models\\User', 28, 'login_test', '41df2b69a73e0123eb279f8ec6899a879950c8798d6bfa1fa7c77187d0549921', '[\"*\"]', NULL, NULL, '2024-06-12 01:29:00', '2024-06-12 01:29:00'),
(112, 'App\\Models\\User', 1, 'login_test', 'bc3d502cce15c65a971a4960f0cfbffb3924cc394585320f08c01dd657cafd89', '[\"*\"]', NULL, NULL, '2024-06-12 01:38:36', '2024-06-12 01:38:36'),
(113, 'App\\Models\\User', 28, 'login_test', '12e6c9a5d4920c52618f9ec9eb9a1124f5d7a8cb0fa49427f74a8aa58e2299ef', '[\"*\"]', NULL, NULL, '2024-06-12 01:39:03', '2024-06-12 01:39:03'),
(114, 'App\\Models\\User', 1, 'login_test', 'c1ae06ae3eb93182789e58742bff24fff3936ffc22e4f30f338710bc610a9c99', '[\"*\"]', NULL, NULL, '2024-06-12 01:39:14', '2024-06-12 01:39:14'),
(115, 'App\\Models\\User', 1, 'login_test', '115f23f29d1efa02897ee0364ec9604997bf73fa472e9a5d0556e91a21039892', '[\"*\"]', NULL, NULL, '2024-06-12 07:17:53', '2024-06-12 07:17:53'),
(116, 'App\\Models\\User', 28, 'login_test', 'ea039298c2cabe6a46947dcb4846f47aa7b8d7c265b7e77f30dca374108d27b0', '[\"*\"]', NULL, NULL, '2024-06-12 07:22:56', '2024-06-12 07:22:56'),
(117, 'App\\Models\\User', 28, 'login_test', 'b7e68d5591f4ed27575812de52c9d852ba22a0689bf44b2a2dbab7ba20c039f2', '[\"*\"]', NULL, NULL, '2024-06-12 07:24:05', '2024-06-12 07:24:05'),
(118, 'App\\Models\\User', 28, 'login_test', '7c4533084b64ae912769971b2b94aaaf14ca4480d04fd0adfcabb7fa75375b9f', '[\"*\"]', NULL, NULL, '2024-06-12 07:52:14', '2024-06-12 07:52:14'),
(119, 'App\\Models\\User', 1, 'login_test', '5f2bdabbd5641cb4e1271642b6e6eb3ac585dbc445166f26b8b91f0b2f1d4945', '[\"*\"]', NULL, NULL, '2024-06-12 07:52:53', '2024-06-12 07:52:53'),
(120, 'App\\Models\\User', 1, 'login_test', 'c5e9b581dedf17b3c9ea9b39d975d281bacd5cf5fbed2233d87371ff08d2f1bc', '[\"*\"]', NULL, NULL, '2024-06-12 08:00:55', '2024-06-12 08:00:55'),
(121, 'App\\Models\\User', 1, 'login_test', '76139ab298e6ca05c31340c22b732536342d401642af99625f001885dda5cb09', '[\"*\"]', NULL, NULL, '2024-06-12 08:00:57', '2024-06-12 08:00:57'),
(122, 'App\\Models\\User', 1, 'login_test', 'e6c537df9050463a56b5ae92abf8deec56f1dd026c19f73baaad8f541d4fd3fa', '[\"*\"]', NULL, NULL, '2024-06-12 08:02:29', '2024-06-12 08:02:29'),
(123, 'App\\Models\\User', 1, 'login_test', 'acce9e3a7f269d650755ebe44edc477d67356967fb1882e246e8999d7b58c90b', '[\"*\"]', NULL, NULL, '2024-06-12 08:04:19', '2024-06-12 08:04:19'),
(124, 'App\\Models\\User', 1, 'login_test', '5471e1c5581c66fbd08b508f5a15435f337afb513e37c81f0d9b99a373d03865', '[\"*\"]', NULL, NULL, '2024-06-12 08:05:30', '2024-06-12 08:05:30'),
(125, 'App\\Models\\User', 1, 'login_test', 'cb75bc00ca4f8ca76d0b308fb5dca66c2e0c394d66f3fd0b8ebbf3e298f47ad0', '[\"*\"]', NULL, NULL, '2024-06-12 08:07:34', '2024-06-12 08:07:34'),
(126, 'App\\Models\\User', 1, 'login_test', 'cf221e69b2c49be05780c3fb47fc37409e13749b7af4806c17e95ce0599dc5fc', '[\"*\"]', NULL, NULL, '2024-06-12 08:11:26', '2024-06-12 08:11:26'),
(127, 'App\\Models\\User', 28, 'login_test', '30684671528f4588747fb3effdc209561c738885fc6c5dbda962919bd89436ad', '[\"*\"]', NULL, NULL, '2024-06-12 08:14:47', '2024-06-12 08:14:47'),
(128, 'App\\Models\\User', 28, 'login_test', '3a7d39986837f3982aece82262450603e5c5b4525e30952972146db6415b0d1c', '[\"*\"]', NULL, NULL, '2024-06-12 08:14:49', '2024-06-12 08:14:49'),
(129, 'App\\Models\\User', 28, 'login_test', '237ef9e8ebef3b44e506f48b787fca91c9520bdb91c4f09f5f4fcf6aea9d4073', '[\"*\"]', NULL, NULL, '2024-06-12 08:14:54', '2024-06-12 08:14:54'),
(130, 'App\\Models\\User', 1, 'login_test', 'cb6765ab4e18310d49388ca9287f9ffed887a621cb88f917a3ae1eb43ca75617', '[\"*\"]', NULL, NULL, '2024-06-12 08:15:00', '2024-06-12 08:15:00'),
(131, 'App\\Models\\User', 28, 'login_test', '55fe7db20f53d76b39efd0ec990438b03d5b154e0aee893da95e8e7b25175caa', '[\"*\"]', NULL, NULL, '2024-06-12 08:15:15', '2024-06-12 08:15:15'),
(132, 'App\\Models\\User', 1, 'login_test', 'f0014bb23c6fa6300a8571128e11b387b431e04f9d2fd1c6e064cd613fd9495b', '[\"*\"]', NULL, NULL, '2024-06-12 08:21:05', '2024-06-12 08:21:05'),
(133, 'App\\Models\\User', 1, 'login_test', 'f1ca726f1b6ca0c07f24c027841031b86b0cbcaee939d7bb2f2729b3d19ead4a', '[\"*\"]', NULL, NULL, '2024-06-12 08:22:19', '2024-06-12 08:22:19'),
(134, 'App\\Models\\User', 28, 'login_test', '7d54ff60c5ae340a6590b8c1d890334e0f7074cad2c70b36381a0fb7e804eb17', '[\"*\"]', NULL, NULL, '2024-06-12 08:22:36', '2024-06-12 08:22:36'),
(135, 'App\\Models\\User', 1, 'login_test', 'd3a56adcd47211c61acb9c54c12ee7b29946625d544304f31b47ebf4f8703365', '[\"*\"]', NULL, NULL, '2024-06-12 08:25:14', '2024-06-12 08:25:14'),
(136, 'App\\Models\\User', 28, 'login_test', '72570d7af9f9e59fc1af623a27b3af767b6e895bb9e335a9a418fb0008dc9dcb', '[\"*\"]', NULL, NULL, '2024-06-12 08:46:21', '2024-06-12 08:46:21'),
(137, 'App\\Models\\User', 28, 'login_test', '35e10f08f5b7feb656c51bd7c3b596176600d0b4a262bc41b259a13cf39991a1', '[\"*\"]', NULL, NULL, '2024-06-12 08:46:24', '2024-06-12 08:46:24'),
(138, 'App\\Models\\User', 28, 'login_test', 'ff30c9ce689181c1744f74cea368ab26f0e39af0366b32efd437bc6f70815b51', '[\"*\"]', NULL, NULL, '2024-06-12 08:46:25', '2024-06-12 08:46:25'),
(139, 'App\\Models\\User', 28, 'login_test', '9d7c9b1d51b5379e621aed2a28296014c5b5646225c33de5a4c248f5ed09e374', '[\"*\"]', NULL, NULL, '2024-06-12 08:46:27', '2024-06-12 08:46:27'),
(140, 'App\\Models\\User', 28, 'login_test', 'b829f883feb4e0dd7fc285cdbd187ad0d0f6a652e2488111ebdba9fc25aba6b4', '[\"*\"]', NULL, NULL, '2024-06-12 08:46:28', '2024-06-12 08:46:28'),
(141, 'App\\Models\\User', 1, 'login_test', '3b77d09a1652f212f2b2228c2b53d9afe7809e2a03741c229a9982d55404017f', '[\"*\"]', NULL, NULL, '2024-06-12 08:47:00', '2024-06-12 08:47:00'),
(142, 'App\\Models\\User', 28, 'login_test', '9ea8f25f820a84f392a74a66aa69081f67509f690217ee3645154599c36d0028', '[\"*\"]', NULL, NULL, '2024-06-12 08:50:21', '2024-06-12 08:50:21'),
(143, 'App\\Models\\User', 1, 'login_test', '1dfb9333eea654cee3390684d71c41d0753d2e3827a1f3f3a3db67554463938f', '[\"*\"]', NULL, NULL, '2024-06-12 08:51:03', '2024-06-12 08:51:03'),
(144, 'App\\Models\\User', 28, 'login_test', '42cad54debf4711579526e5e4080c3383ad80e73bf7e022f7dc41a02742dabb2', '[\"*\"]', NULL, NULL, '2024-06-12 08:52:04', '2024-06-12 08:52:04'),
(145, 'App\\Models\\User', 1, 'login_test', 'b0c00fb4a993e248ada6b2492e3d303ab1d238d14fffeb737dc7307534bf3fc5', '[\"*\"]', NULL, NULL, '2024-06-12 08:53:09', '2024-06-12 08:53:09'),
(146, 'App\\Models\\User', 28, 'login_test', 'b97d550fd2aca66b75279639b6e8bcdd02d3f11b658fdebb86745aa0caa4417f', '[\"*\"]', NULL, NULL, '2024-06-12 08:56:06', '2024-06-12 08:56:06'),
(147, 'App\\Models\\User', 28, 'login_test', '074300d7d03a9a2ddeeefb503b78761e113c87c64a0cc22b74f6a6954ca77527', '[\"*\"]', NULL, NULL, '2024-06-12 08:56:07', '2024-06-12 08:56:07'),
(148, 'App\\Models\\User', 1, 'login_test', '875277bf2ae595e3bc4d5063c2c5a07e1f88f241bdb881f7cf26709df6c36d3e', '[\"*\"]', NULL, NULL, '2024-06-12 08:56:49', '2024-06-12 08:56:49'),
(149, 'App\\Models\\User', 1, 'login_test', '6b77fa9b23b6624189cab2828e7daca868534cc9e7051a4681cfb2cae6c60eb9', '[\"*\"]', NULL, NULL, '2024-06-12 09:02:57', '2024-06-12 09:02:57'),
(150, 'App\\Models\\User', 28, 'login_test', '003b18ef2e8d7cfc32776e32ebafcca9b8a22fd2ae46e01d8d1697abf93fa3bb', '[\"*\"]', NULL, NULL, '2024-06-12 09:03:16', '2024-06-12 09:03:16'),
(151, 'App\\Models\\User', 28, 'login_test', '62a32cf1abf50d0241eef97edeccfc16e4ac2a47f8d3b47b55785c4dcf17cc86', '[\"*\"]', NULL, NULL, '2024-06-12 09:03:19', '2024-06-12 09:03:19'),
(152, 'App\\Models\\User', 28, 'login_test', 'ca7ea1400d1afaf8dc8440e44b2f563644ef9efe2ba550dca7b6a6c419e81aa7', '[\"*\"]', NULL, NULL, '2024-06-12 09:04:07', '2024-06-12 09:04:07'),
(153, 'App\\Models\\User', 1, 'login_test', 'daefaf2fdefbb95877e7350d0018f918491dc9b6d788e1e4582bac1c5e188827', '[\"*\"]', NULL, NULL, '2024-06-12 09:06:19', '2024-06-12 09:06:19'),
(154, 'App\\Models\\User', 28, 'login_test', 'a80fb787f8de9fd597ee5bbb75a7c2c3af5e3d04f7d7ff1b912eb7f17277a212', '[\"*\"]', NULL, NULL, '2024-06-12 09:09:37', '2024-06-12 09:09:37'),
(155, 'App\\Models\\User', 1, 'login_test', '4c7339a56298080db6d9720dde06e82b28c95c3b842b954f7c72b7506bd6d559', '[\"*\"]', NULL, NULL, '2024-06-12 09:12:46', '2024-06-12 09:12:46'),
(156, 'App\\Models\\User', 28, 'login_test', 'd86def0bc52eabe137fb6c84890d8d181b4d623695abf0182bfa3fa82210a8d3', '[\"*\"]', NULL, NULL, '2024-06-12 09:34:42', '2024-06-12 09:34:42'),
(157, 'App\\Models\\User', 28, 'login_test', 'eddf37eb26da9646088abfdb5cb06756f2a5cc4a9c54627ef81251b2412179a0', '[\"*\"]', NULL, NULL, '2024-06-12 09:48:45', '2024-06-12 09:48:45'),
(158, 'App\\Models\\User', 37, 'login_test', '2177182c7a868380e8f89abddfec92a6a122be77e66f323475126b1856ff7f5f', '[\"*\"]', NULL, NULL, '2024-06-12 10:46:41', '2024-06-12 10:46:41'),
(159, 'App\\Models\\User', 37, 'login_test', '5f1e0552c3709c9403bb045615bcc6985357b6b8be55b100096ab426b86ef181', '[\"*\"]', NULL, NULL, '2024-06-12 10:46:43', '2024-06-12 10:46:43'),
(160, 'App\\Models\\User', 1, 'login_test', '90df1706cfddd6362fac95538a32f1eef1b3db4c58d510faee6143c5fb42b072', '[\"*\"]', NULL, NULL, '2024-06-12 10:46:50', '2024-06-12 10:46:50'),
(161, 'App\\Models\\User', 37, 'login_test', 'd1d224c2f4d613763f16e1ab36841cba6f835dd0c00e53e582652bc49f7bb277', '[\"*\"]', NULL, NULL, '2024-06-12 10:50:45', '2024-06-12 10:50:45'),
(162, 'App\\Models\\User', 1, 'login_test', '90d2a128841331803a679c453ce649894f988ca0a6a7fc5bddaee5b83604c181', '[\"*\"]', NULL, NULL, '2024-06-12 10:52:11', '2024-06-12 10:52:11'),
(163, 'App\\Models\\User', 37, 'login_test', '93799f7b5e81f3280aaf6f74496ce501fd685067a031971e8188968fc9958f9e', '[\"*\"]', NULL, NULL, '2024-06-12 10:55:35', '2024-06-12 10:55:35'),
(164, 'App\\Models\\User', 37, 'login_test', '693480c2331e4510f8efed176fb87a79d2e312b6a8f70cf01116408a12045f96', '[\"*\"]', NULL, NULL, '2024-06-12 10:59:26', '2024-06-12 10:59:26'),
(165, 'App\\Models\\User', 1, 'login_test', '9f97e950c0640aeb24724256d090fc197ed823f1403e67fa03372ff72f3afddd', '[\"*\"]', NULL, NULL, '2024-06-12 11:40:41', '2024-06-12 11:40:41'),
(166, 'App\\Models\\User', 37, 'login_test', '46ac20821a24a1b34c01cccef2356e4a05193de48fe4496ccd2ce3b439eea6f8', '[\"*\"]', NULL, NULL, '2024-06-12 12:14:10', '2024-06-12 12:14:10'),
(167, 'App\\Models\\User', 37, 'login_test', '966fd1270248bf091f5b31baa1b63a856c7d23bd1be98cc3ce3828a2c13b7f23', '[\"*\"]', NULL, NULL, '2024-06-12 12:15:27', '2024-06-12 12:15:27'),
(168, 'App\\Models\\User', 1, 'login_test', 'ba9558e4a00e9e8627a9e5c1ce6633b8cf09a96c203e839c5dc9ab227411e09c', '[\"*\"]', NULL, NULL, '2024-06-12 12:16:21', '2024-06-12 12:16:21'),
(169, 'App\\Models\\User', 1, 'login_test', 'c332c41df3c64bf6c5a611e5381953620538d0e1c107a409d09169ab76a592bb', '[\"*\"]', NULL, NULL, '2024-06-12 12:17:35', '2024-06-12 12:17:35'),
(170, 'App\\Models\\User', 1, 'login_test', '55c3bf47bf3722d7cdf621e018362a8226dfbd92321129fe9dad072edb0f0210', '[\"*\"]', NULL, NULL, '2024-06-12 12:39:30', '2024-06-12 12:39:30'),
(171, 'App\\Models\\User', 37, 'login_test', '3ae655bf9da7b020081dc890cf90f5af63f1287b2c2671a6cb3d5e97500de376', '[\"*\"]', NULL, NULL, '2024-06-12 12:39:55', '2024-06-12 12:39:55'),
(172, 'App\\Models\\User', 37, 'login_test', '8f9c8601a630dd25d84c8e5492017661e3e6ce1ae8720bfa728fe02c816560fa', '[\"*\"]', NULL, NULL, '2024-06-12 12:43:24', '2024-06-12 12:43:24'),
(173, 'App\\Models\\User', 37, 'login_test', '6492364331f25dda8191149d8ba5263830719ebd64d32937eaadd416a248f992', '[\"*\"]', NULL, NULL, '2024-06-12 12:43:25', '2024-06-12 12:43:25'),
(174, 'App\\Models\\User', 1, 'login_test', '052b5c4f47fe5b84df386d2e3432eea2c65b7dedf91c7f7cdb4f043d3557c5d1', '[\"*\"]', NULL, NULL, '2024-06-12 12:43:46', '2024-06-12 12:43:46');

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE `rendez_vous` (
  `id_rendez_vous` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `heur` time NOT NULL,
  `ville` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_medcin` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`id_rendez_vous`, `date`, `heur`, `ville`, `id_medcin`, `nom`, `description`, `numero`, `created_at`, `updated_at`) VALUES
(1, '2024-06-23', '11:00:00', 'casablanca', 7, 'hamid', 'rhdjreyteryew', 666826735, '2024-06-12 00:18:42', '2024-06-12 00:18:42'),
(2, '2024-06-20', '10:00:00', 'casablanca', 7, 'dd ali', 'rrrrrree', 613117131, '2024-06-12 00:33:38', '2024-06-12 00:33:38'),
(3, '2024-06-21', '10:00:00', 'casablanca', 7, 'dd ali', 'baji w9', 6131171355, '2024-06-12 07:23:49', '2024-06-12 07:23:49'),
(4, '2024-06-14', '10:00:00', 'casablanca', 16, 'dd moughite', 'description malade', 613117131, '2024-06-12 10:55:19', '2024-06-12 10:55:19'),
(5, '2024-06-21', '15:00:00', 'casablanca', 16, 'abde rahim', 'abde rahiw ya rojoal oho oho', 613117131, '2024-06-12 11:50:42', '2024-06-12 11:50:42'),
(6, '2024-06-21', '09:00:00', 'casablanca', 13, 'dd moughite', 'fxgx', 613117131, '2024-06-12 12:42:59', '2024-06-12 12:42:59');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `nom`) VALUES
(1, 'admin'),
(2, 'medcin');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `id_specialite` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id_specialite`, `nom`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Système respiratoire', 'Ensemble d\'organes et de structures responsables de la respiration, comprenant les voies respiratoires, les poumons et les muscles respiratoires.', NULL, NULL),
(2, 'Système digestif', 'Système d\'organes responsable de la digestion des aliments, comprenant la bouche, l\'œsophage, l\'estomac, les intestins et les organes accessoires tels que le foie et le pancréas.', NULL, NULL),
(3, 'Système urinaire', 'Ensemble d\'organes impliqués dans la production, le stockage et l\'élimination de l\'urine, comprenant les reins, les uretères, la vessie et l\'urètre.', NULL, NULL),
(4, 'Système cardiovasculaire', 'Système circulatoire responsable du transport du sang, comprenant le cœur, les vaisseaux sanguins (artères, veines et capillaires) et le sang lui-même.', NULL, NULL),
(5, 'Système nerveux', 'Réseau complexe de cellules nerveuses (neurones) qui coordonnent les fonctions du corps, y compris la perception sensorielle, la pensée, la mémoire et le contrôle moteur.', NULL, NULL),
(6, 'Système endocrinien', 'Système de communication chimique du corps qui utilise les hormones pour réguler divers processus physiologiques tels que le métabolisme, la croissance, le développement et la reproduction.', NULL, NULL),
(7, 'Système musculo-squelettique', 'Ensemble de muscles, d\'os, d\'articulations, de tendons et de ligaments qui soutiennent le corps, permettent le mouvement et protègent les organes internes.', NULL, NULL),
(8, 'Système lymphatique', 'Réseau de vaisseaux lymphatiques et de ganglions lymphatiques qui contribuent à la circulation du liquide lymphatique, à la défense immunitaire et à l\'élimination des déchets cellulaires.', NULL, NULL),
(9, 'Système reproducteur', 'Système d\'organes impliqué dans la reproduction sexuelle, comprenant les organes génitaux internes et externes ainsi que les glandes associées chez les hommes et les femmes.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `symptome`
--

CREATE TABLE `symptome` (
  `id_symptome` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_malade` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `symptome`
--

INSERT INTO `symptome` (`id_symptome`, `description`, `id_malade`, `created_at`, `updated_at`) VALUES
(71, 'Perte de cheveux diffuse sur le cuir chevelu.', 46, NULL, NULL),
(72, 'Éclaircissement des cheveux sur le dessus de la tête.', 46, NULL, NULL),
(73, 'Présence de cheveux sur l oreiller ou dans la brosse à cheveux.', 46, NULL, NULL),
(74, 'Perte de cheveux sous forme de calvitie ou de tonsure.', 47, NULL, NULL),
(75, 'Rétrécissement des cheveux à la ligne des cheveux ou à la couronne.', 47, NULL, NULL),
(76, 'Apparition de cheveux fins ou de pelade.', 47, NULL, NULL),
(77, 'Douleur ou pression ressentie dans une partie de la tête.', 48, NULL, NULL),
(78, 'Sensibilité à la lumière ou au bruit.', 48, NULL, NULL),
(79, 'Nausées ou vomissements associés à la douleur.', 48, NULL, NULL),
(80, 'Douleur ou inconfort dans la région de la tête ou du crâne.', 49, NULL, NULL),
(81, 'Sensation de tension ou de pression autour de la tête.', 49, NULL, NULL),
(82, 'Perturbation du sommeil ou de l humeur associée à la douleur.', 49, NULL, NULL),
(83, 'Sensation de tête légère ou de tête qui tourne en se levant.', 50, NULL, NULL),
(84, 'Instabilité ou sensation de mouvement autour de soi.', 50, NULL, NULL),
(85, 'Perte d équilibre ou difficulté à marcher droit.', 50, NULL, NULL),
(86, 'Raideur ou douleur dans la région du cou ou des épaules.', 51, NULL, NULL),
(87, 'Difficulté à tourner ou à incliner la tête.', 51, NULL, NULL),
(88, 'Sensations de picotements ou engourdissements dans les bras ou les mains.', 51, NULL, NULL),
(89, 'Diminution ou perte complète de l odorat.', 52, NULL, NULL),
(90, 'Diminution ou altération de la perception des saveurs.', 52, NULL, NULL),
(91, 'Difficulté à détecter les odeurs ou les saveurs subtiles.', 52, NULL, NULL),
(92, 'Augmentation de la taille ou de la sensibilité des ganglions lymphatiques.', 53, NULL, NULL),
(93, 'Rougeur, chaleur ou douleur autour des glandes enflées.', 53, NULL, NULL),
(94, 'Limitation des mouvements du cou en raison du gonflement.', 53, NULL, NULL),
(95, 'Douleur ou sensibilité dans la région de la mâchoire ou des dents.', 54, NULL, NULL),
(96, 'Saignement des gencives lors du brossage ou de la mastication.', 54, NULL, NULL),
(97, 'Inconfort ou sensation de pression lors de la mastication ou de la fermeture de la bouche.', 54, NULL, NULL),
(98, 'Perte de cheveux diffuse sur le cuir chevelu.', 46, NULL, NULL),
(99, 'Éclaircissement des cheveux sur le dessus de la tête.', 46, NULL, NULL),
(100, 'Présence de cheveux sur l oreiller ou dans la brosse à cheveux.', 46, NULL, NULL),
(101, 'Perte de cheveux sous forme de calvitie ou de tonsure.', 47, NULL, NULL),
(102, 'Rétrécissement des cheveux à la ligne des cheveux ou à la couronne.', 47, NULL, NULL),
(103, 'Apparition de cheveux fins ou de pelade.', 47, NULL, NULL),
(104, 'Douleur ou pression ressentie dans une partie de la tête.', 48, NULL, NULL),
(105, 'Sensibilité à la lumière ou au bruit.', 48, NULL, NULL),
(106, 'Nausées ou vomissements associés à la douleur.', 48, NULL, NULL),
(107, 'Douleur ou inconfort dans la région de la tête ou du crâne.', 49, NULL, NULL),
(108, 'Sensation de tension ou de pression autour de la tête.', 49, NULL, NULL),
(109, 'Perturbation du sommeil ou de l humeur associée à la douleur.', 49, NULL, NULL),
(110, 'Sensation de tête légère ou de tête qui tourne en se levant.', 50, NULL, NULL),
(111, 'Instabilité ou sensation de mouvement autour de soi.', 50, NULL, NULL),
(112, 'Perte d équilibre ou difficulté à marcher droit.', 50, NULL, NULL),
(113, 'Raideur ou douleur dans la région du cou ou des épaules.', 51, NULL, NULL),
(114, 'Difficulté à tourner ou à incliner la tête.', 51, NULL, NULL),
(115, 'Sensations de picotements ou engourdissements dans les bras ou les mains.', 51, NULL, NULL),
(116, 'Diminution ou perte complète de l odorat.', 52, NULL, NULL),
(117, 'Diminution ou altération de la perception des saveurs.', 52, NULL, NULL),
(118, 'Difficulté à détecter les odeurs ou les saveurs subtiles.', 52, NULL, NULL),
(119, 'Augmentation de la taille ou de la sensibilité des ganglions lymphatiques.', 53, NULL, NULL),
(120, 'Rougeur, chaleur ou douleur autour des glandes enflées.', 53, NULL, NULL),
(121, 'Limitation des mouvements du cou en raison du gonflement.', 53, NULL, NULL),
(122, 'Douleur ou sensibilité dans la région de la mâchoire ou des dents.', 54, NULL, NULL),
(123, 'Saignement des gencives lors du brossage ou de la mastication.', 54, NULL, NULL),
(124, 'Inconfort ou sensation de pression lors de la mastication ou de la fermeture de la bouche.', 54, NULL, NULL),
(125, 'Difficulté à s endormir malgré la fatigue.', 55, NULL, NULL),
(126, 'Réveils fréquents pendant la nuit ou difficulté à rester endormi.', 55, NULL, NULL),
(127, 'Fatigue, irritabilité ou difficulté à se concentrer pendant la journée.', 55, NULL, NULL),
(128, 'symptômes 1', 56, '2024-06-12 10:52:21', '2024-06-12 10:52:21'),
(129, 'symptômes 3', 56, '2024-06-12 10:52:21', '2024-06-12 10:52:21'),
(130, 'symptômes 2', 56, '2024-06-12 10:52:22', '2024-06-12 10:52:22');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `active`, `email_verified_at`, `password`, `id_role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', '1mohamed@gmail.com', 1, '2024-06-03 14:11:20', '$2y$12$xyhKTwLBwfeMkmy4psarV.ecYaxxieXPZslEUMTHnzEVYjaPgel.q', 1, '1SJaYrtCAY', '2024-06-03 14:11:20', '2024-06-03 14:11:20'),
(28, 'hamid', 'hamid@gmail.com', 1, NULL, '$2y$12$s2Wfvc6DXX.mmYLS9g2aGONSl9fwuaIfAjtnszcoWaZuQaVqR7K7O', 2, NULL, '2024-06-09 18:27:01', '2024-06-12 08:15:04'),
(31, 'Ahmed Ayoubi', 'AhmedAyoubi@gmail.com', 1, NULL, '$2y$12$But4MurtCzmbWlRd44HTouCFg9quTzy7vQSxFikeIXZoO0OKGZX4G', 2, NULL, '2024-06-12 10:34:46', '2024-06-12 12:17:41'),
(32, 'Kamel Jamal', 'kamaljamal@gmail.com', 0, NULL, '$2y$12$iCyzI.LmKHSjjy6Am293CuahSpt6yHd5xBGXa8JhJUmhc0Dx4SK0C', 2, NULL, '2024-06-12 10:35:50', '2024-06-12 10:35:50'),
(33, 'MOHAMED', 'mohamed@gmail.com', 0, NULL, '$2y$12$mj9DuW9E1q/f59sHiB9LxOEADfduUyZHLjDLdwoiG/MOc3VwYh5A6', 2, NULL, '2024-06-12 10:36:48', '2024-06-12 10:36:48'),
(34, 'MOHAMED ELHADI', 'MOHAMED ELHADI@gmail.com', 0, NULL, '$2y$12$t0pISpviRyNrtEyOGtoowOJ5rsfCkG62Oy6JPkBKT5XRig/eh0Sji', 2, NULL, '2024-06-12 10:37:27', '2024-06-12 10:37:27'),
(35, 'ABDE RAHIM', 'ABDERAHIM@gmail.com', 0, NULL, '$2y$12$RkDS.TaraN6f4Ul.4LS7zOP7zVZ3xGDJbPTIVSzJYrBpM4XrFTSaO', 2, NULL, '2024-06-12 10:38:37', '2024-06-12 10:38:37'),
(37, 'moughite chawi', 'moughitechawi@gmail.com', 1, NULL, '$2y$12$.YNJC75ur9AyIpE4t7PGV.z/WE2YVm4i4mW.rsBNpDfyNClsrhkvy', 2, NULL, '2024-06-12 10:46:24', '2024-06-12 10:47:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `consigne`
--
ALTER TABLE `consigne`
  ADD PRIMARY KEY (`id_consigne`),
  ADD KEY `consigne_id_malade_foreign` (`id_malade`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `malade`
--
ALTER TABLE `malade`
  ADD PRIMARY KEY (`id_malade`),
  ADD KEY `malade_id_parties_corps_foreign` (`id_parties_corps`),
  ADD KEY `malade_id_genre_foreign` (`id_genre`),
  ADD KEY `malade_id_specialite_foreign` (`id_specialite`);

--
-- Index pour la table `medcin`
--
ALTER TABLE `medcin`
  ADD PRIMARY KEY (`id_medcin`),
  ADD KEY `medcin_id_specialite_foreign` (`id_specialite`),
  ADD KEY `medcin_id_user_foreign` (`id_user`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parties_corp`
--
ALTER TABLE `parties_corp`
  ADD PRIMARY KEY (`id_parties_corps`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD PRIMARY KEY (`id_rendez_vous`),
  ADD KEY `rendez_vous_id_medcin_foreign` (`id_medcin`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id_specialite`);

--
-- Index pour la table `symptome`
--
ALTER TABLE `symptome`
  ADD PRIMARY KEY (`id_symptome`),
  ADD KEY `symptome_id_malade_foreign` (`id_malade`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `consigne`
--
ALTER TABLE `consigne`
  MODIFY `id_consigne` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `malade`
--
ALTER TABLE `malade`
  MODIFY `id_malade` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `medcin`
--
ALTER TABLE `medcin`
  MODIFY `id_medcin` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `parties_corp`
--
ALTER TABLE `parties_corp`
  MODIFY `id_parties_corps` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  MODIFY `id_rendez_vous` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id_specialite` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `symptome`
--
ALTER TABLE `symptome`
  MODIFY `id_symptome` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `consigne`
--
ALTER TABLE `consigne`
  ADD CONSTRAINT `consigne_id_malade_foreign` FOREIGN KEY (`id_malade`) REFERENCES `malade` (`id_malade`);

--
-- Contraintes pour la table `malade`
--
ALTER TABLE `malade`
  ADD CONSTRAINT `malade_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `malade_id_parties_corps_foreign` FOREIGN KEY (`id_parties_corps`) REFERENCES `parties_corp` (`id_parties_corps`),
  ADD CONSTRAINT `malade_id_specialite_foreign` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id_specialite`);

--
-- Contraintes pour la table `medcin`
--
ALTER TABLE `medcin`
  ADD CONSTRAINT `medcin_id_specialite_foreign` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id_specialite`),
  ADD CONSTRAINT `medcin_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD CONSTRAINT `rendez_vous_id_medcin_foreign` FOREIGN KEY (`id_medcin`) REFERENCES `medcin` (`id_medcin`);

--
-- Contraintes pour la table `symptome`
--
ALTER TABLE `symptome`
  ADD CONSTRAINT `symptome_id_malade_foreign` FOREIGN KEY (`id_malade`) REFERENCES `malade` (`id_malade`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
