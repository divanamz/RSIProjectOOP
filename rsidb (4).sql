-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2025 pada 10.56
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title_blog` varchar(255) NOT NULL,
  `content_blog` text NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_path` varchar(255) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`blog_id`, `user_id`, `title_blog`, `content_blog`, `date_posted`, `image_path`) VALUES
(1, 3, 'titel2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel urna quam. Mauris sed lorem eget elit maximus egestas. Phasellus dolor sem, rhoncus ultrices ex ut, gravida maximus mi. Quisque aliquet velit ac urna dapibus, ut accumsan est ullamcorper. Praesent feugiat lacus at velit tempor, eget euismod ex elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eleifend luctus urna ac condimentum. Mauris eu dui ante. Vivamus justo mi, hendrerit sed magna vitae, aliquet vulputate metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed velit neque, malesuada eget ornare eget, vehicula vel dui.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse rutrum aliquet orci quis elementum. Nullam sem massa, lacinia ut viverra non, posuere et velit. Nulla quam est, molestie a ipsum quis, malesuada bibendum tortor. Donec ac ultrices nunc. Integer laoreet varius elit, sed porttitor libero efficitur a. Nulla id nisl id massa iaculis feugiat. Nullam efficitur quam felis, ut bibendum elit ultrices ut. Suspendisse potenti. Fusce fringilla sed lectus ut ornare. Proin molestie pulvinar ligula, quis imperdiet orci. Curabitur gravida magna tellus, a cursus quam pretium quis. Quisque in mollis ante, a aliquam felis. In pretium, erat id aliquam convallis, lorem risus porta elit, vitae faucibus ex augue sit amet diam. Maecenas ut risus congue, mollis sem non, tempor elit.\r\n\r\nQuisque vitae nunc sit amet felis pellentesque ultricies. Integer viverra ullamcorper orci. Etiam urna risus, semper ut accumsan accumsan, ornare vel justo. Vivamus eu purus a lorem finibus consequat. Donec sollicitudin ligula in odio pulvinar tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi porta ipsum a est ultricies, vel tincidunt nulla lobortis. Praesent vitae tincidunt tellus. Duis ornare condimentum ligula in auctor. Duis facilisis purus et enim feugiat pellentesque.', '2025-11-25 02:16:20', 'uploads/blog_images/blog_69251174bd4a35.54337439.jpeg'),
(5, 3, 'HAP 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis, nisl et accumsan porttitor, tellus diam fringilla turpis, vehicula porta purus quam id dui. Maecenas consectetur nisl non diam dapibus consectetur. Integer elit lacus, molestie gravida dui in, pretium dapibus erat. Donec iaculis dictum nunc quis viverra. Curabitur tempus turpis non luctus laoreet. Vivamus vulputate sagittis placerat. Etiam sagittis metus vitae elit ullamcorper, vel posuere dui venenatis. Donec fringilla erat at tristique finibus. Cras a elit eget purus lobortis ultricies vel vel metus. Nam cursus ante elit, vitae dignissim neque sagittis non. Pellentesque neque orci, ullamcorper vel nisi eu, imperdiet pretium sapien. Aenean ac mauris felis. Aliquam vel nisl vitae lorem viverra sollicitudin.\r\n\r\nAliquam lorem dolor, dictum at nunc quis, tempor tincidunt ipsum. In accumsan, neque non consectetur malesuada, lorem nisl facilisis dolor, id dictum elit magna sed justo. Aenean ullamcorper lacus et odio feugiat, eu mollis est gravida. Nam dapibus, turpis eget malesuada pulvinar, magna ante molestie turpis, ac sollicitudin odio lorem nec lacus. Proin rutrum dui eu ante varius, vel lobortis justo elementum. Nunc non odio tristique, aliquam risus vel, pretium nisl. Vestibulum nec commodo lacus. Etiam mattis justo et nisl pharetra, vel accumsan augue interdum. Praesent tempor sem nibh, et semper arcu laoreet ut. Nunc a dui in lorem consectetur mollis. In in molestie diam. Pellentesque risus turpis, feugiat eget tristique vitae, laoreet accumsan odio.\r\n\r\nSuspendisse egestas neque a nulla commodo, at molestie magna fringilla. Mauris tincidunt odio eu leo dignissim, et scelerisque sapien scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquam dui sed nisl pharetra, id porttitor eros fringilla. Nullam nisi lacus, interdum eget dictum eu, ultricies at dui. Nulla varius mollis congue. Nulla facilisi. Morbi a pulvinar est. Quisque purus eros, sagittis ac rutrum vitae, faucibus eget mi. Aliquam erat volutpat. Vestibulum pretium et est id euismod. Donec sodales varius pulvinar. Nulla ac lacus vehicula, accumsan ante eu, aliquet turpis.', '2025-11-25 11:20:49', 'uploads/blog_images/blog_69259111b85a31.89902704.jpg'),
(6, 3, 'capekbnget', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum gravida sem, non accumsan metus hendrerit eget. Pellentesque vitae cursus magna. Etiam consequat iaculis ante, eu lobortis purus vestibulum sit amet. Curabitur purus ex, fermentum ut rhoncus vitae, pellentesque nec risus. Quisque porttitor venenatis eros condimentum accumsan. Vivamus odio nulla, viverra consectetur dignissim sed, molestie at purus. Pellentesque vel facilisis metus. Nam cursus et ligula vel vulputate. Nam vel ultrices turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;\r\n\r\nNunc et nibh vel libero egestas rhoncus at non risus. Nullam scelerisque, erat ac faucibus lacinia, erat sem dictum eros, at eleifend lectus velit vel erat. Etiam sit amet elit at est gravida tempus in eu mi. Sed quis fermentum ligula, eleifend blandit lorem. Donec a varius est. Morbi nec ante nec tortor pulvinar ultrices. Vivamus mollis purus ac commodo rutrum. Pellentesque dignissim auctor sem, consequat vehicula augue sollicitudin sit amet. Cras volutpat tempus eros, in faucibus turpis vehicula a. Nullam ante orci, hendrerit non congue egestas, porta tincidunt odio. Integer rhoncus luctus efficitur. Proin malesuada eros dui. Nunc non eros at augue tempus commodo in et justo. Quisque aliquet sem eu neque tincidunt feugiat.\r\n\r\nDuis porta ex at placerat bibendum. Duis volutpat eros nec tincidunt vestibulum. Morbi rutrum eros quis augue posuere tincidunt. Sed sagittis sit amet arcu eget luctus. Integer sodales fermentum ante a ultricies. Nulla condimentum dignissim urna, in sollicitudin quam porta sed. Cras blandit in lectus sed vestibulum. Morbi ut pretium tortor. Nulla scelerisque lacus nec enim vehicula sodales.', '2025-11-25 15:10:24', 'uploads/blog_images/blog_6925c6e0b1d484.22647132.png'),
(7, 1, 'Fall Seasons Volunteering', 'AKSDHASKDNASKHDAHDAUWEIDAND', '2025-11-25 20:44:52', NULL),
(8, 13, 'asdasdasdas', 'asdadasda', '2025-11-26 01:00:41', 'uploads/blog_images/blog_69265139cfdea8.19543174.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_fav`
--

CREATE TABLE `blog_fav` (
  `fav_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog_fav`
--

INSERT INTO `blog_fav` (`fav_id`, `user_id`, `blog_id`, `created_at`) VALUES
(16, 3, 1, '2025-11-25 11:15:07'),
(19, 1, 8, '2025-11-26 01:42:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_report`
--

CREATE TABLE `blog_report` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `report_issue` text NOT NULL,
  `date_reported` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog_report`
--

INSERT INTO `blog_report` (`report_id`, `user_id`, `blog_id`, `admin_note`, `report_issue`, `date_reported`) VALUES
(1, 3, 5, NULL, 'ga suka', '2025-11-25 19:48:04'),
(2, 3, 5, NULL, 'ga suka', '2025-11-25 19:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_tag`
--

CREATE TABLE `blog_tag` (
  `blog_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blog_tag`
--

INSERT INTO `blog_tag` (`blog_id`, `tag_id`) VALUES
(1, 1),
(5, 14),
(5, 15),
(5, 16),
(6, 18),
(6, 19),
(7, 20),
(7, 21),
(8, 20),
(8, 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `merch_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `merch_id`, `quantity`, `subtotal`) VALUES
(5, 13, 4, 1, 120000.00),
(6, 1, 1, 1, 120000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `donation_amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Qris') NOT NULL,
  `anonymous_donation` tinyint(1) DEFAULT 0,
  `status` enum('pending','paid') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id`, `firstname`, `lastname`, `email`, `country`, `phone`, `donation_amount`, `payment_method`, `anonymous_donation`, `status`, `created_at`) VALUES
(1, 'kus', 'rs', 'khkhk@gmail.sc', 'tuban', '1234446432231', 10.00, 'Qris', 0, 'pending', '2025-11-18 14:49:41'),
(23, 'kh', 'jh', 'muh@sc.x', 'jh', '11111111111111', 90.00, 'Qris', 0, 'pending', '2025-11-18 16:48:19'),
(28, 'hjj', 'jk', 'muh@sc.x', 'tuban', '22222222222', 111.00, 'Qris', 0, 'pending', '2025-11-18 19:35:53'),
(29, 'hjj', 'jk', 'muh@sc.x', 'tuban', '22222222222', 111.00, 'Qris', 0, 'pending', '2025-11-18 19:36:15'),
(30, 'ds', 'ds', 'dino@d.n', 'tuban', '11111111111111', 123.00, 'Qris', 0, 'pending', '2025-11-18 19:37:56'),
(31, 'sadf', 'asdf', 'dino@d.n', 'fsad', '12345678345', 2356.00, 'Qris', 0, 'pending', '2025-11-18 19:41:24'),
(32, 'zcas', 'zsdvzsd', 'dib@s.com', 'Indonesia', '1231241341212', 1231.00, 'Qris', 0, '', '2025-11-25 18:53:19'),
(33, 'zcas', 'asdas', 'sing@gmail.com', 'Indonesia', '1231241341212', 12313543.00, 'Qris', 0, 'pending', '2025-11-25 20:52:13'),
(34, 'zcas', 'asdas', 'sing@gmail.com', 'Indonesia', '1231241341212', 12313543.00, 'Qris', 0, 'pending', '2025-11-25 20:53:26'),
(35, 'zcas', 'asda', 'sing@gmail.com', 'Indonesia', '1231241341212', 12141341.00, 'Qris', 0, 'pending', '2025-11-25 20:55:03'),
(36, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 0, 'pending', '2025-11-25 20:57:34'),
(37, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 1, 'pending', '2025-11-25 20:57:37'),
(38, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 1, 'pending', '2025-11-25 20:57:46'),
(39, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 15463231.00, 'Qris', 0, 'pending', '2025-11-25 21:01:31'),
(40, 'zcas', 'asd', 'dib@s.com', 'Indonesia', '1231241341212', 1231.00, 'Qris', 0, 'pending', '2025-11-26 00:53:08'),
(41, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 0, 'pending', '2025-11-26 01:04:27'),
(42, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 0, 'pending', '2025-11-26 01:08:13'),
(43, 'zcas', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 9999999999.99, 'Qris', 0, 'pending', '2025-11-26 01:08:51'),
(44, 'pp', 'asd', 'sing@gmail.com', 'Indonesia', '1231241341212', 10000.00, 'Qris', 0, 'pending', '2025-11-26 01:09:56'),
(45, 'zz', 'zsdvzsd', 'dib@s.com', 'Indonesia', '1231241341212', 0.00, 'Qris', 0, 'pending', '2025-11-26 01:11:08'),
(46, 'pp', 'zsdvzsd', 'dib@s.com', 'hjjk', '76578878897', 34350.00, 'Qris', 0, 'pending', '2025-11-26 01:42:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `name`) VALUES
(1, 'Volunteer'),
(2, 'Konservasi Laut'),
(3, 'Donasi'),
(4, 'Edukasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 13, 1, 'aku juga mau yuk bareng', '2025-11-25 14:28:15'),
(4, 13, 13, 'mauu bareng', '2025-11-25 15:32:11'),
(7, 14, 13, 'hahahahahahahhaha so fiunny', '2025-11-25 15:46:13'),
(9, 10, 13, 'caranya adalaha dendhgajsaneh', '2025-11-25 15:48:57'),
(12, 22, 1, 'yukkk mau dong ikut bareng', '2025-11-25 16:19:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `user_id`, `category_id`, `title`, `content`, `created_at`, `views`) VALUES
(4, 1, 1, 'Bagaimana cara mengorganisir acara pembersihan pantai yang efektif?', 'Saya ingin mengorganisir acara pembersihan pantai di daerah saya, tapi bingung mulai dari mana. Apakah ada panduan atau tips dari teman-teman yang sudah berpengalaman?', '2025-11-18 17:39:02', 501),
(10, 1, 2, 'Bagaimana cara daftar volunteer terumbu karang', 'asdfghjklk;poiuytrewqazcvbnmjhgfds', '2025-11-19 03:31:06', 14),
(11, 1, 3, 'Bagaimana cara melakukan donasi di komunitas ini', 'aakpsadkasdjsbfasghsdeifebigidsaevbehfbsjcsv', '2025-11-19 03:45:13', 1),
(12, 1, 4, 'Apakah merch dijual terpisah', 'ASDFSVKDGJDSACHOEIDFVGFGHD', '2025-11-19 03:46:37', 12),
(13, 1, 3, 'How to Donate to the event i wanna participate', 'I want to donate to the event i participate but im confused what to do, can someone help me with this', '2025-11-25 13:03:45', 35),
(14, 1, 2, 'Apa aja benefit mengikuti event volunteer?', 'Pengen tau apa aja sih benefit yang kita dapet kalo ikut event ini? aku tertarik tapi masih bimbang karena sendiri jadi agak takut juga', '2025-11-25 13:11:52', 101),
(22, 13, 1, 'SIAPA YANG MAU JOIN BARENG AKU CARI TEMEN VOLUNTEERAN', 'aku pengen cari temen volunteer yukk yang mau komen dong biar aku ada temen barengan', '2025-11-25 16:19:13', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_reports`
--

CREATE TABLE `forum_reports` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `status` enum('pending','reviewed','resolved','dismissed') DEFAULT 'pending',
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_at` timestamp NULL DEFAULT NULL,
  `resolved_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `forum_reports_detail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `forum_reports_detail` (
`id` int(11)
,`post_id` int(11)
,`reason` text
,`status` enum('pending','reviewed','resolved','dismissed')
,`admin_notes` text
,`created_at` timestamp
,`resolved_at` timestamp
,`post_title` text
,`post_content` text
,`reporter_name` varchar(100)
,`reporter_email` varchar(100)
,`post_author_name` varchar(100)
,`post_author_email` varchar(100)
,`resolved_by_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `merchandise`
--

CREATE TABLE `merchandise` (
  `merch_id` int(11) NOT NULL,
  `merch_name` varchar(100) DEFAULT NULL,
  `merch_pict` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` enum('Tersedia','Habis') DEFAULT 'Tersedia',
  `description` text DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `merchandise`
--

INSERT INTO `merchandise` (`merch_id`, `merch_name`, `merch_pict`, `price`, `status`, `description`, `admin_id`) VALUES
(1, 'Ocean Reborn Bracelet', 'merch.png', 120000.00, 'Tersedia', 'Gelang ini dibuat dari material sampah laut yang telah didaur ulang, menghadirkan perpaduan estetika alami dan nilai berkelanjutan.', 1),
(3, 'Blue Wave Bracelet', 'merch2.png', 120000.00, 'Tersedia', 'Terinspirasi dari onbak laut, Blue wave Restore dibuat dari plastik laut yang diproses ulang menjadi serat ramah lingkungan', 1),
(4, 'Sea Cycle Bracelet', 'merch3.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1),
(5, 'Tide Revive Blacelet', 'merch4.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1),
(6, 'Coral Hope Bracelet', 'merch5.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1),
(7, 'Mare Renew Bracelet', 'merch6.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1),
(8, 'Nautic Reclaim Bracelet', 'merch7.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1),
(9, 'Eco Maris Bracelet', 'merch8.png', 120000.00, 'Tersedia', 'lorem gelang ajkdhadhf', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE `program` (
  `activity_id` int(11) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `program_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `program`
--

INSERT INTO `program` (`activity_id`, `program_name`, `description`, `location`, `date`, `time`, `updated_at`, `program_img`) VALUES
(1, 'Beach Cleanup Day', 'Acara bersih-bersih pantai untuk meningkatkan kepedulian lingkungan dan menjaga kebersihan area wisata. Relawan akan bekerja sama mengumpulkan sampah, memilah plastik, dan mengedukasi pengunjung.', 'Pantai Kuta, Bali', '2025-01-15', '08:00:00', '2025-11-14 16:54:44', NULL),
(2, 'Coral Reef Restoration', 'Kegiatan restorasi terumbu karang untuk memulihkan ekosistem bawah laut. Relawan membantu penanaman karang, pembersihan substrat, dan edukasi konservasi.', 'Pulau Menjangan, Bali', '2025-04-12', '08:00:00', '2025-11-14 17:49:52', NULL),
(3, 'Beach Wildlife Rescue', 'Relawan membantu penyelamatan hewan laut seperti penyu dan burung pantai yang terluka akibat sampah. Termasuk pembersihan habitat pesisir.', 'Pangumbahan Turtle Sanctuary, Sukabumi', '2025-06-20', '07:30:00', '2025-11-14 17:49:52', NULL),
(4, 'Coastal Mangrove Restoration', 'Penanaman mangrove untuk mencegah abrasi dan melindungi ekosistem laut. Relawan juga diberikan pelatihan identifikasi jenis mangrove.', 'Mangrove Center, Surabaya', '2025-07-14', '08:30:00', '2025-11-14 17:51:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(20) NOT NULL,
  `tag_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, '12'),
(2, 'ocean'),
(3, 'laut'),
(4, 'ha'),
(5, 'biru'),
(6, 'tua'),
(7, 'gasd'),
(8, 'him'),
(9, 'ey'),
(10, 'uh'),
(11, 'AY'),
(12, 'SAD'),
(13, 'UH'),
(14, 'LIM'),
(15, 'LIME'),
(16, 'R'),
(17, 'wth. demi'),
(18, 'wth'),
(19, 'demi'),
(20, 'Volunteer'),
(21, 'Diskusi'),
(22, 'Volunteer'),
(23, 'Diskusi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `transaction_date` datetime DEFAULT current_timestamp(),
  `total_price` decimal(10,2) DEFAULT NULL,
  `transaction_status` enum('Pending','Paid','Shipped','Completed','Cancelled') DEFAULT 'Pending',
  `payment_method` varchar(50) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `shipping_courier` varchar(50) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `cart_id`, `transaction_date`, `total_price`, `transaction_status`, `payment_method`, `shipping_address`, `shipping_courier`, `tracking_number`) VALUES
(1, 3, NULL, '2025-11-25 23:48:56', 135000.00, 'Pending', 'QRIS', 'haf, ajfdnadnf, jkdnfkjnad, DKI Jakarta, 235345', 'JNE', NULL),
(2, 3, NULL, '2025-11-26 00:25:23', 375000.00, 'Pending', 'QRIS', 'FHGF, MJHJB, NJH, Jawa Barat, HKH', 'JNE', NULL),
(3, 13, NULL, '2025-11-26 08:14:37', 135000.00, 'Pending', 'QRIS', 'ldkaj, adflkj, Kuta, Jawa Timur, aff', 'JNE', NULL),
(4, 13, NULL, '2025-11-26 08:17:13', 135000.00, 'Pending', 'QRIS', 'SHAL Aisy, asasdas, Malang, Jawa Timur, 2213', 'JNE', NULL),
(5, 1, NULL, '2025-11-26 08:41:31', 135000.00, 'Pending', 'QRIS', 'ldkjfsL:, lkzdjsdl, Kuta, Jawa Barat, 9375937935', 'JNE', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'tes@gmail.com', '$2y$10$SaGo/dWfLLwxCHAPHpE.j.Do7sRbMMML5C/oh8boYpiVsyWe1g6xy'),
(6, 'teslagi@gmail.com', '$2y$10$fNqLNKqzyiHUuSSb4zkP2OqJ8ZGpCxNlM5pSWpP0qaPjnr5o3.Dei'),
(7, 'dib@yuhu.com', 'bce0e8190c7756900674b5af659f723c'),
(8, 'dib@s.com', '$2y$10$JKvpy9pw5PXBHi1OR4fuHuepkwCcBNl2zznGpiTe1IFZQXmd4g/aG'),
(13, 'hoho@s.com', '$2y$10$Jbj6Z03GQDiQ2XdXsRF.n.B1K5vKIdy.QBrMVf9r.HHjBcP2hnBZe'),
(16, 'sing@gmail.com', '$2y$10$da2x8d5GUXLymhCiq9ZehunCUZzs8WljP2NobYUiyaEKK7bQKciMC'),
(17, 's@m.com', '$2y$10$3ZK0NuIxmei24B.VdvUdl.rc8Gr1bxN6BJtgdmxk5tIUTVW4/AgkO'),
(18, 'yey@s.com', '$2y$10$aF9XzrL0QhPkJMoEDhvSm.2EulpyaH2ewrKFPR7ouBsG95XqiEuQi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `foto_profil` varchar(255) DEFAULT 'default.jpg',
  `foto_header` varchar(255) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('male','female','other') DEFAULT 'other',
  `date_of_birth` date DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `foto_profil`, `foto_header`, `fullname`, `nickname`, `email`, `gender`, `date_of_birth`, `country`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, '1762889912_download.jpeg', '1762889912_236.jpg', 'Divana MZ', 'Dib', 'tes@gmail.com', 'female', '2006-04-12', 'Indonesia', '08123456789', 'Jl. Merdeka No. 45, Bandung', '2025-11-11 23:35:13', '2025-12-01 21:20:05'),
(3, 6, 'default.jpg', NULL, '', NULL, 'teslagi@gmail.com', 'other', NULL, NULL, NULL, NULL, '2025-11-25 14:49:59', '2025-11-25 23:38:28'),
(4, 8, 'default.jpg', NULL, '', NULL, 'dib@s.com', 'other', NULL, NULL, NULL, NULL, '2025-11-25 14:57:32', '2025-11-25 23:36:44'),
(8, 13, '1764059268_download (2).jpg', '1764059268_download (1).jpg', 'Shal Aisya', 'Deebasiapanamasaya', 'hoho@s.com', 'female', '2003-02-04', 'Indonesia', '08123456789', 'Jl. Merdeka No. 45, Bandung', '2025-11-25 15:21:33', '2025-11-25 15:30:00'),
(11, 16, 'default.jpg', NULL, '', NULL, 'sing@gmail.com', 'other', NULL, NULL, NULL, NULL, '2025-11-25 20:12:20', '2025-11-25 20:12:20'),
(12, 17, 'default.jpg', NULL, '', NULL, 's@m.com', 'other', NULL, NULL, NULL, NULL, '2025-11-25 23:26:43', '2025-11-25 23:26:43'),
(13, 18, 'default.jpg', NULL, '', NULL, 'yey@s.com', 'other', NULL, NULL, NULL, NULL, '2025-11-26 04:16:03', '2025-11-26 04:16:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `volunteer`
--

CREATE TABLE `volunteer` (
  `regis_id` int(11) NOT NULL,
  `user_profile_id` int(11) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `regis_date` date DEFAULT curdate(),
  `confir_status` enum('Pending','Confirmed','Rejected') DEFAULT 'Pending',
  `email` varchar(150) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `address` text NOT NULL,
  `motivation` text NOT NULL,
  `file_support` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `volunteer`
--

INSERT INTO `volunteer` (`regis_id`, `user_profile_id`, `activity_id`, `fullname`, `regis_date`, `confir_status`, `email`, `country`, `phone`, `experience`, `reason`, `address`, `motivation`, `file_support`) VALUES
(1, NULL, 3, 'esa', '2025-11-18', 'Pending', 'muh@sc.x', NULL, '7656789090', NULL, NULL, 'kjhgfd', 'kljhgfd', NULL),
(2, NULL, 3, 'esa', '2025-11-18', 'Pending', 'muh@sc.x', NULL, '7656789090', NULL, NULL, 'kjhgfd', 'kljhgfd', NULL),
(3, NULL, 3, 'esa', '2025-11-18', 'Pending', 'muh@sc.x', NULL, '7656789090', NULL, NULL, 'kjhgfd', 'kljhgfd', NULL),
(4, NULL, 2, 'alis', '2025-11-18', 'Pending', 'alis@d.n', NULL, '98765432456', NULL, NULL, 'lkhgfdsg', 'hgfhjkl', NULL),
(6, NULL, 4, 'Divana MZ', '2025-11-26', 'Pending', 'tes@gmail.com', NULL, '124132412', NULL, NULL, 'Sdscrsrsevr', 'sacevretvae', NULL),
(7, NULL, 3, 'adasdaasd', '2025-11-26', 'Pending', 's@m.com', NULL, '123123', NULL, NULL, 'asdasdad', 'acasxdad', NULL),
(8, NULL, 4, 'esa', '2025-11-26', 'Pending', 'esa@gmail.com', NULL, '1231241341212', NULL, NULL, 'khjkh', 'hjkhg', NULL),
(9, NULL, 4, 'Shal Aisya', '2025-11-26', 'Pending', 'dib@s.com', NULL, '1231241341212', NULL, NULL, 'gyug', 'tfrtu', NULL),
(10, NULL, 4, 'Divana MZ', '2025-11-26', 'Pending', 'dib@s.com', NULL, '1231241341212', NULL, NULL, 'Jl Dr Wahidin', 'YEYSENANGNYAOKE', NULL);

-- --------------------------------------------------------

--
-- Struktur untuk view `forum_reports_detail`
--
DROP TABLE IF EXISTS `forum_reports_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `forum_reports_detail`  AS SELECT `r`.`id` AS `id`, `r`.`post_id` AS `post_id`, `r`.`reason` AS `reason`, `r`.`status` AS `status`, `r`.`admin_notes` AS `admin_notes`, `r`.`created_at` AS `created_at`, `r`.`resolved_at` AS `resolved_at`, `p`.`title` AS `post_title`, `p`.`content` AS `post_content`, `reporter`.`fullname` AS `reporter_name`, `reporter`.`email` AS `reporter_email`, `post_author`.`fullname` AS `post_author_name`, `post_author`.`email` AS `post_author_email`, `resolver`.`fullname` AS `resolved_by_name` FROM ((((`forum_reports` `r` join `forum_posts` `p` on(`r`.`post_id` = `p`.`id`)) join `user_profiles` `reporter` on(`r`.`user_id` = `reporter`.`id`)) join `user_profiles` `post_author` on(`p`.`user_id` = `post_author`.`id`)) left join `user_profiles` `resolver` on(`r`.`resolved_by` = `resolver`.`id`)) ORDER BY `r`.`created_at` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `blog_fav`
--
ALTER TABLE `blog_fav`
  ADD PRIMARY KEY (`fav_id`),
  ADD UNIQUE KEY `unique_favorite` (`user_id`,`blog_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indeks untuk tabel `blog_report`
--
ALTER TABLE `blog_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_report_ibfk_2` (`blog_id`);

--
-- Indeks untuk tabel `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`blog_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `merch_id` (`merch_id`);

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `forum_reports`
--
ALTER TABLE `forum_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_post_report` (`post_id`,`user_id`),
  ADD KEY `resolved_by` (`resolved_by`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indeks untuk tabel `merchandise`
--
ALTER TABLE `merchandise`
  ADD PRIMARY KEY (`merch_id`);

--
-- Indeks untuk tabel `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`regis_id`),
  ADD KEY `fk_volunteer_user_profile` (`user_profile_id`),
  ADD KEY `fk_volunteer_program` (`activity_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `blog_fav`
--
ALTER TABLE `blog_fav`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `blog_report`
--
ALTER TABLE `blog_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `forum_reports`
--
ALTER TABLE `forum_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `merchandise`
--
ALTER TABLE `merchandise`
  MODIFY `merch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `program`
--
ALTER TABLE `program`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `regis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD CONSTRAINT `forum_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_posts` (`id`),
  ADD CONSTRAINT `forum_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`),
  ADD CONSTRAINT `forum_posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `forum_categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `forum_reports`
--
ALTER TABLE `forum_reports`
  ADD CONSTRAINT `forum_reports_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_reports_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_reports_ibfk_3` FOREIGN KEY (`resolved_by`) REFERENCES `user_profiles` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
