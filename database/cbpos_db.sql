-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 03:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbpos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`) VALUES
(5, 'LUX', 'Lux adalah merek sabun kecantikan yang dikelola oleh Unilever. Selain sabun, Lux juga termasuk merek shampo, shower gel, dan kondisioner. Lux diperkenalkan pada tahun 1899 sebagai Sunlight Flakes.', 'uploads/brands/5.jpg?v=1645066872', 1, 0, '2022-02-17 11:01:12'),
(7, 'WARDAH', 'Wardah Cosmetics adalah merek produk kecantikan yang diproduksi oleh salah satu perusahaan manufaktur komestik terbesar di Indonesia. Produk-produk wardah menawarkan variasi produk kecantikan yang terdiri dari perawatan wajah, bibir, makeup.', 'uploads/brands/7.jpg?v=1673241936', 1, 0, '2023-01-09 12:25:36'),
(8, 'Y.O.U', 'Y.O.U merupakan Brand yang berada di bawah PT Beauty Style. Y.O.U mulai ikut meramaikan pasar kosmetik Indonesia dan berkomitmen membantu setiap wanita untuk menemukan versi terbaik.', 'uploads/brands/8.jpg?v=1673242447', 1, 0, '2023-01-09 12:34:07'),
(9, 'IMPLORA', 'Implora Cosmetics adalah brand kecantikan. Salah satu produk best seller-nya, Implora Cosmetics Urban Lip Cream Matte. Implora juga tergolong terjangkau dan aman untuk berbagai jenis kulit, sehingga menjadi incaran banyak orang hingga kerap sold out.', 'uploads/brands/9.jpg?v=1673242728', 1, 0, '2023-01-09 12:38:47'),
(10, 'FF (Fenny Frans)', 'Cream FF Fenny Frans ini merupakan produk kosmetika (skincare) untuk perawatan semua jenis kulit wajah baik wanita maupun pria, yang terdiri dari empat jenis produk, yaitu krim siang, krim malam, sabun dan toner. Paket cream FF yang terdiri dari empat jenis produk', 'uploads/brands/10.jpg?v=1673357964', 1, 0, '2023-01-10 20:39:24'),
(11, 'Ratu Glow', 'Ratu glow merupakan brand perawatan kecantikan yang telah teruji klinis dan mendapatkan serifikasi Badan POM sehingga aman digunakan sehari-hari dan dalam waktu yang panjang. Selain itu ratu glow adalah produk kecantikan dan perawatan wajah yang cocok untuk berbagai jenis kulit.', 'uploads/brands/11.jpg?v=1673358236', 1, 1, '2023-01-10 20:42:18'),
(12, 'VIVA QUEEN', 'Viva Queen Perfect Look CC Foundation adalah produk kosmetik persembahan Viva berupa paduan bedak padat dan alas bedak yang praktis digunakan untuk tata rias sehari-hari. Mengandung UV Filter berguna untuk melindungi kulit dari pengaruh buruk sinar matahari dan squalane yang mampu menjaga kulit tetap lembab.', 'uploads/brands/12.jpg?v=1673358684', 1, 0, '2023-01-10 20:51:24'),
(13, 'LIFEBUOY', 'Lifebuoy sabun merupakan sabun mandi bersertifikat halal yang berfungsi untuk membersihkan 10 kuman penyebab penyakit dan mengurangi permasalah di kulit, seperti gatal atau jerawat. Lifebuoy Sabun mengandung formula ActiveSilver dan daun thymol yang memiliki sifat antiseptik alami, sehingga dapat mencegah serangan kuman atau bakteri penyebab penyakit.', 'uploads/brands/13.png?v=1673392535', 1, 0, '2023-01-11 06:15:35'),
(14, 'BIORE', 'Biore body merupakan sabun mandi dengan kandungan Green Tea Extract yang membantu membersihkan dan juga menjaga kelembapan kulit.', 'uploads/brands/14.png?v=1673392752', 1, 0, '2023-01-11 06:19:12'),
(15, 'HANASUI', 'Hanasui merupakan salah satu merk kecantikan. Produk Hanasui sendiri telah dikenal cukup lama karena menawarkan variasi rangkaian perawatan mulai dari perawatan rambut, tubuh, makeup hingga rambut. Menariknya lagi harga produk Hanasui terjangkau, ramah di kantong.', 'uploads/brands/15.png?v=1673791947', 1, 0, '2023-01-15 21:12:27'),
(16, 'THE FACE TEMULAWAK', 'The Face Cream Temulawak Siang & Malam adalah cream yang mengandung temulawak extract yang memiliki textur yang lembut sehingga bermanfaat untuk menyamarkan kerutan halus di wajah sehingga warna kulit wajah anda tampak lebih cantik dan halus.', 'uploads/brands/16.png?v=1673791998', 1, 0, '2023-01-15 21:13:18'),
(17, 'BIOAQUA', 'BIOAQUA merupakan brand kecantikan dari Cina yang sudah meramaikan beauty industry. Hingga sekarang, brand ini masih menjadi salah satu pilihan sebagian wanita untuk mempercantik penampilan wajahnya.', 'uploads/brands/17.png?v=1673792047', 1, 0, '2023-01-15 21:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Skin Care', 'Skincare atau perawatan kulit menurut laman HealthGuide, adalah rangkaian produk yang Anda gunakan secara rutin untuk merawat atau melindungi kulit. Proses ini berperan penting untuk membentengi Anda dari patogen luar dan menjaga keseimbangan organ internal.', 1, 0, '2022-02-17 11:27:11'),
(2, 'Oral Care', 'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.', 1, 1, '2022-02-17 11:27:24'),
(3, 'Body Care', 'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.', 1, 1, '2022-02-17 11:27:45'),
(4, 'Perfumes', 'Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.', 1, 1, '2022-02-17 11:27:55'),
(5, 'Hair Care', 'Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo.', 1, 1, '2022-02-17 11:28:38'),
(6, 'Sun Care', 'Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.', 1, 1, '2022-02-17 11:29:00'),
(7, 'Decorative', 'Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis.', 1, 1, '2022-02-17 11:29:19'),
(8, 'Lipsticks', 'Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.', 1, 0, '2022-02-17 11:29:38'),
(9, 'Lip Tint', 'Donec eu porttitor quam. Etiam mollis consequat risus quis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 1, '2022-02-17 11:29:59'),
(10, 'test', 'test', 0, 1, '2022-02-17 11:31:18'),
(11, 'Powder', 'Bedak adalah bubuk yang digunakan sebagai kosmetik untuk mempercantik muka atau sebagai obat kulit. Bedak membantu memberi rona pada wajah dan mempercantik penampilan.', 1, 0, '2023-01-09 12:44:35'),
(12, 'Fasial Wash', 'Facial wash adalah sabun pembersih wajah dan diformulakan khusus untuk area wajah agar lebih bersih. Biasanya penggunaan facial wash ini sebelum tidur, setelah memakai make up, setelah bepergian dan sebagainya.', 1, 0, '2023-01-10 20:02:23'),
(13, 'Facial Makeup', 'Face Makeup atau tata rais wajah adalah untuk mempercantik tampilan wajah dengan menutupi kekurangan dan menonjolkan kelebihan pada wajah sehingga menjadikan wajah cantik dan menambah kepercayaan dalam diri seorang wanita.', 1, 0, '2023-01-11 05:06:32'),
(14, 'Body Wash', 'Sabun mandi sendiri adalah sebuah surfaktan yang digunakan untuk membersihkan tubuh dari debu, kotoran, keringat, bakteri, dan lain-lain. aktifitas kita setiap hari menyebabkan kuman-kuman itu menempel pada tubuh.', 1, 0, '2023-01-11 06:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `status`, `delete_flag`, `date_created`) VALUES
(2, 'Samantha Jane', 'Miller', 'Female', '09123456789', 'sam23@sample.com', '45bff2a14658fc9b21c6e5e9bf75186b', 'Sample Address', 1, 1, '2022-02-17 14:24:00'),
(3, 'Novi ', 'Rahmadani Damis', 'Female', '081342775838', 'novirahmadani374@gmail.com', '26c30ba9c8c40c7d384e82a933db3aa9', 'Belopa', 1, 0, '2023-01-08 21:47:37'),
(4, 'Fitriani', 'Iwan Yunus', 'Female', '085242809689', 'fitrianyiy19@gmail.com', '3a8cca43b4f1c44e3d12cdae6ceb1c1a', 'Sabe', 1, 0, '2023-01-09 11:37:11'),
(5, 'Novita', 'Sari', 'Female', '08123648908', 'novita12@gmail.com', '3ab58f794c8cf3a448e1b43a150ed181', 'Palopo', 1, 0, '2023-01-11 06:59:33'),
(6, 'Tamara', 'Kahar', 'Female', '081342666777', 'tamarakahar@gmail.com', 'b4bd15e18040aeed3fea89609b0b1944', 'Padang Sappa', 1, 0, '2023-01-11 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `variant` text NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(7, 'Variant 1', 5, 150, 40, '2023-01-09 13:09:32', '2023-01-09 13:11:50'),
(8, 'Variant 1', 6, 200, 43, '2023-01-09 13:31:14', '2023-01-09 13:31:54'),
(9, 'Variant 1', 7, 200, 40, '2023-01-09 13:50:04', NULL),
(10, 'Varian 1', 8, 200, 45, '2023-01-09 14:03:56', '2023-01-10 21:21:21'),
(11, 'Variant 1', 13, 200, 130, '2023-01-10 21:17:40', '2023-01-10 21:21:13'),
(12, 'Variant 1', 10, 150, 55, '2023-01-10 21:18:38', '2023-01-10 21:20:45'),
(14, 'Variant 1', 14, 100, 45, '2023-01-10 21:22:26', NULL),
(15, 'Variant 1', 23, 200, 15, '2023-01-11 06:32:54', '2023-01-11 06:40:24'),
(16, 'Variant 1', 25, 200, 4, '2023-01-11 06:34:40', '2023-01-11 06:40:15'),
(17, 'Variant 1', 22, 150, 20, '2023-01-11 06:35:55', '2023-01-11 06:40:05'),
(18, 'Variant 1', 21, 150, 45, '2023-01-11 06:36:19', '2023-01-11 06:39:58'),
(19, 'Variant 1', 24, 200, 15000, '2023-01-11 06:36:48', '2023-01-14 09:41:55'),
(20, 'Variant 1', 15, 200, 45000, '2023-01-11 06:37:43', '2023-01-14 09:40:43'),
(21, 'Variant 1', 16, 200, 25000, '2023-01-11 06:38:13', '2023-01-14 09:40:36'),
(22, 'Variant 1', 19, 150, 38000, '2023-01-11 06:38:49', '2023-01-14 09:40:28'),
(23, 'Variant 1', 18, 150, 55000, '2023-01-11 06:40:59', '2023-01-14 09:40:21'),
(24, 'Variant 1', 20, 150, 65000, '2023-01-11 06:41:24', '2023-01-14 09:40:14'),
(25, 'Variant 1', 17, 150, 55000, '2023-01-11 06:42:47', '2023-01-14 09:40:06'),
(26, 'Variant 1', 9, 200, 30000, '2023-01-11 06:43:20', '2023-01-14 09:28:59'),
(27, 'Variant 1', 11, 150, 35000, '2023-01-11 06:43:57', '2023-01-14 09:30:03'),
(28, 'Variant 1', 27, 100, 60000, '2023-01-15 21:33:24', NULL),
(29, 'Variant 1', 28, 100, 65000, '2023-01-15 21:33:47', NULL),
(30, 'Variant 1', 26, 200, 25000, '2023-01-15 21:34:09', NULL),
(31, 'Variant 1', 30, 200, 23000, '2023-01-15 21:34:31', NULL),
(32, 'Variant 1', 29, 100, 110000, '2023-01-15 21:34:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = pending,\r\n1= Packed,\r\n2 = Out for Delivery,\r\n3=Delivered,\r\n4=cancelled',
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_code`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(11, '20230100001', 3, 'Belopa', 'cod', 0, 30, 0, 0, '2023-01-12 20:34:52', NULL),
(12, '20230100002', 3, 'Belopa', 'cod', 0, 30000, 0, 0, '2023-01-14 09:36:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double(10,0) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(13, 11, 24, 2, 15, 30),
(14, 12, 9, 1, 30000, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specs` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `specs`, `status`, `delete_flag`, `date_created`) VALUES
(2, 5, 7, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 1, '2022-02-17 11:54:02'),
(5, 7, 11, 'Wardah Acnederm Face Powder', '&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;Wardah Acnederm Face Powder&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;Bedak tabur yang bantu mencerahkan sekaligus menyerap minyak berlebih. Dengan kombinasi bahan aktif terpilih yaitu Derma Control Actives dengan Salicylic Acid + Soybean Extract. Bedak tabur translucent yang dirancang khusus untuk jenis kulit berjerawat atau cenderung berjerawat (wajah dengan minyak berlebih). Formula ringan dan tekstur yang halus tidak menyumbat pori-pori kulit.&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;Kegunaan:&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Bantu mencerahkan kulit secara alami,&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Bantu menyerap minyak berlebih pada wajah,&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Bantu merawat kulit yang berjerawat,&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Kulit terasa lebih halus, segar dan lembab,&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Bantu kurangi kulit kemerahan akibat iritasi,&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;img draggable=&quot;false&quot; role=&quot;img&quot; class=&quot;emoji&quot; alt=&quot;✔&quot; src=&quot;https://s.w.org/images/core/emoji/13.0.1/svg/2714.svg&quot; style=&quot;box-sizing: inherit; border-width: initial !important; border-color: initial !important; border-image: initial !important; display: inline !important; box-shadow: none !important; height: 1em !important; width: 1em !important; margin: 0px 0.07em !important; vertical-align: -0.1em !important; background: none !important; padding: 0px !important;&quot;&gt;Hasil applikasi yang matte.&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; color: rgba(0, 0, 0, 0.87); font-family: Roboto, sans-serif; font-size: 15px; background-color: rgb(245, 245, 245);&quot;&gt;Cara Pakai: Sapukan pada wajah dan leher yang telah dibersihkan. Untuk hasil maksimal gunakan secara rutin Wardah Acnederm Series.&lt;/p&gt;', 1, 0, '2023-01-09 13:00:35'),
(6, 7, 11, 'Wardah Luminous Face Powder', '&lt;p&gt;&lt;font color=&quot;#000000&quot; style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;Merek&lt;/font&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Wardah&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp;12 bulan&lt;/p&gt;&lt;p&gt;Stok&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 200&lt;/p&gt;&lt;p&gt;Wardah Luminous Face Powder&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(140, 142, 144); font-family: Montserrat, sans-serif; font-size: 14px;&quot;&gt;Face Powder non-comedogenic yang ringan mengandung Micro Coated Particle sehingga membuat tata rias lebih tahan lama natural di kulit wajah dengan hasil akhir matte. Berperan sebagai oil control dalam menyerap minyak berlebih. Dapat digunakan dengan atau tanpa foundation, dan juga sebagai sentuhan akhir make-up.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-09 13:26:20'),
(7, 7, 11, 'Wardah Lightening Powder Foundation', '&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Wardah Lightening Powder Foundation&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Wardah Lightening&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;Matte Powder menjadikan kulit tampak lebih cerah, noda hitam dan bintik gelap berkurang, memperbaiki hiperpigmentasi kulit yang mencerahkan kulit dan jerawat meradang. Mengandung Moist Plus dengan antioksidan yang membantu melindungi kulit dari paparan berbagai radikal bebas.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;Cara Pakai : Ulaskan pada wajah dengan cara tap-tap menggunakan sponge.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-09 13:47:53'),
(8, 7, 11, 'Wardah Lightening Liquid Foundation', '&lt;p&gt;Wardah Lightening Liquid Foundation&lt;/p&gt;&lt;p&gt;Wardah Lightening Liquid Foundation adalah liquid foundation yang terasa ringan dan nyaman digunakan sehari-hari. Memiliki coverage medium, mencerahkan dan tahan lama hingga 12 jam.&lt;/p&gt;&lt;p&gt;Cara Pakai :&amp;nbsp;&lt;/p&gt;&lt;p&gt;1. Aplikasikan Wardah Lightening Liquid Foundation secukupnya pada wajah.&lt;/p&gt;&lt;p&gt;2. Ratakan ke seluruh wajah menggunakan tangan/brush/sponge.&lt;/p&gt;&lt;p&gt;3. Wajah cerahmu siap untuk menjalani aktivitas.&lt;/p&gt;', 1, 0, '2023-01-09 14:02:37'),
(9, 7, 1, 'Wardah Lightening Paket Skincare Essentials', '&lt;div class=&quot;VYmrqq&quot; style=&quot;display: flex; margin-bottom: 1.125rem; color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif;&quot;&gt;&lt;label class=&quot;zgeHL-&quot; style=&quot;color: rgba(0, 0, 0, 0.4); font-size: 0.875rem; width: 8.75rem; padding-right: 0.75rem; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;&quot;&gt;&lt;span style=&quot;color: rgb(52, 58, 64); font-family: &amp;quot;Source Sans Pro&amp;quot;, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 0.875rem; font-weight: 400;&quot;&gt;Lightening Skincare Essentials Bundling, berisi:&lt;/span&gt;&lt;br&gt;&lt;/label&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;- Wardah Lightening Day Cream Advanced Niacinamide 30g&lt;/p&gt;&lt;p&gt;- Wardah Lightening Night Cream Advanced Niacinamide 30g&lt;/p&gt;&lt;p&gt;- Wardah Lightening Face Toner 125ml&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;- Wardah&amp;nbsp;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;Lightening Day Cream Advanced Niacinamide merupakan krim pelembap pertama di indonesia dengan UV &amp;amp; Blue Light Protection. Dengan SPF 30 PA++ dan Advanced Niacinamide, pencerah kulit wajah yang memberikan perlindungan ekstra terhadap penyebab utama kulit kusam dan noda gelap di wajah.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;-&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 0.875rem;&quot;&gt;Wardah Lightening Night Cream Advanced Niacinamide merupakan krim pelembab malam hari dengan tekstur ringan. Kombinasi Advanced Niacinamide dan Licorice Extra yang mecerahkan, menutrisi dan menyamarkan noda hitam. Mencegah efek negatif dari blue light. Wajah cerah optimal, glowing, dan terlindungi.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;- Toner dengan formula pH balance yang menyegarkan sekaligus membantu penyerapan produk selanjutnya dan mencerahkan dengan Advanced Niacinamide. Cocok untuk semua jenis kulit . Wajah cerah, glowing, lembap.&lt;/p&gt;', 1, 0, '2023-01-10 19:28:21'),
(10, 9, 11, 'Implora Seamless Liquid Foundation', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Implora Seamless Liquid Foundation (33ML) dengan formula ringan mampu menyamarkan noda hitam, pori-pori dan warna kulit yang tidak merata. Tampilan matte menyatu dengan kulit dan tahan lama.\r\n\r\nTersedia 6 macam varian Implora seamless liquid foundation :\r\n1. 110 Ivory\r\n2. 115 Light Cream\r\n3. 210 Classic Nude\r\n4. 240 Warm Beige\r\n5. 320 Natural\r\n6. 430 Tan&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-10 19:56:53'),
(11, 8, 12, 'Y.O.U Hy Amino Acne Facial Wash', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify; font-size: 12px;&quot;&gt;Facial Wash yang diperkaya dengan 5D Hyaluronic Acid, Asam Amino, dan Oil-Control Complex untuk membersihkan pori-pori, mengeksfoliasi kulit, dan membersihkan minyak berlebih untuk kulit yang segar dan sehat.&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;Key Selling Point:&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;- 5D HYALURONIC ACID&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;Mengandung 5 jenis Hyaluronic Acid yang membantu menghidrasi kulit.&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;- AMINO ACID FORMULA&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;Diperkaya dengan 4 jenis Asam Amino untuk membantu menjaga kelembapan kulit.&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;- OIL-CONTROL COMPLEX&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;Mengandung Salicylic Acid, Glycolic Acid, dan Volcanic Soil untuk membantu membersihkan pori-pori, mengeksfoliasi kulit dengan lembut, dan membersihkan minyak berlebih.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;Cara Pakai&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;1) Tuangkan secukupnya pada telapak tangan yang basah dan gosok hingga berbusa.&lt;/span&gt;&lt;br style=&quot;-webkit-font-smoothing: antialiased; color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;2) Usapkan pada wajah dengan lembut. Bilas hingga bersih.&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Lato-Regular, sans-serif; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-10 20:17:06'),
(13, 10, 1, 'Cream FF (Fenny Frans)', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : FF (Fenny Frans)&lt;/p&gt;&lt;p&gt;Jenis Paket&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Perawatan Wajah&lt;/p&gt;&lt;p&gt;Jenis Masker&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Masker Krim&lt;/p&gt;&lt;p&gt;Formulasi&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Lainnya&lt;/p&gt;&lt;p&gt;Manfaat&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Melembabkan&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp;: 24 Bulan&lt;/p&gt;&lt;p&gt;Jenis Kulit&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Semua Jenis Kulit&lt;/p&gt;&lt;p&gt;Area Pengaplikasian&amp;nbsp; : Wajah&lt;/p&gt;&lt;p&gt;Jumlah Produk&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: 4&lt;/p&gt;&lt;p&gt;Ukuran Per Produk&amp;nbsp; &amp;nbsp; &amp;nbsp;: 50 ML&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Cream FF (Fenny Frans) \r\n\r\nManfaat cream FF :\r\n\r\n1. mencerahkan kulit wajah anda glowing dalam pemakaian seketika\r\n2. menghilangkan flek hitam\r\n3. menghilangkan jerawat\r\n4. mengecilkan pori-pori kulit\r\n5. mengencangkan kulit\r\n6. mengangkat sel kulit mati\r\n7. menyamarkan kerutan\r\n8.menghilangkan bekas jerawat\r\n9. untuk pemakaian satu paket dengan produk lainya akan memberikan hasil yang maksimal \r\ndapatkan kulit wajah cerah dan glowing.\r\n\r\n1 paket komplit 4 produk yaitu :\r\n\r\n1 Day cream FF\r\n1.Night cream FF\r\n1 Sabun FF\r\n1 Toner FF\r\n\r\n- Cream Original.\r\n- Untuk pemesanan barang ready tiap hari 24 jam.\r\n- Penjual ramah dan asik komunikasinya.\r\n- Chat online siap respon dengan sistem respon cepat.\r\n- Packing rapi aman dengan dos dan double babel warm plus  waterproof.\r\n- Kami pastikan packing rapi dan aman karena itu adalah salah satu amanah produk ini sampai dengan baik dan bisa di gunakan dengan baik pula oleh konsumen toko kami.&lt;/span&gt;&lt;/p&gt;', 1, 0, '2023-01-10 21:02:44'),
(14, 12, 11, 'Viva Queen CC Foundation', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Viva Queen&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; : 24 bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Viva Queen Perfect Look CC Foundation merupakan produk inovatif berupa foundation yang menggabungkan fungsi tata rias dan fungsi perawatan dalam satu kemasan. CC yang merupakan singkatan dari Complete Care yang mampu memberi hasil maksimal untuk mempercantik penampilan. Diformulasi sebagai smart foundation yang warnanya dapat sesuai untuk hampir semua warna kulit wanita Indonesia. Dilengkapi dengan bahan aktif pilihan untuk merawat kecantikan kulit wajah serta UV Filter untuk melindungi kulit wajah dari paparan sinar matahari.\r\n\r\nHASIL NYATA 10 manfaat untuk tampil sempurna\r\n♡ Meratakan warna kulit wajah\r\n♡ Menyamarkan garis halus\r\n♡ Menyamarkan noda\r\n♡ Wajah tampak halus\r\n♡ Tahan lama\r\n♡ Melindungi terhadap pengaruh sinar UV\r\n♡ Membantu menjaga keremajaan kulit\r\n♡ Membantu mencerahkan kulit\r\n♡ Melembabkan kulit\r\n♡ Wajah tampak sehat berseri\r\nTemukan manfaatnya dengan pemakaian yang teratur untuk hasil maksimal.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-10 21:14:55'),
(15, 7, 13, 'Wardah Eyexpert Aqua Lash Mascara', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Wardah&lt;/p&gt;&lt;p&gt;Tahan Air&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Tidak&lt;/p&gt;&lt;p&gt;Masa Penyimpanan : 24 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Dengan Water-Based Technology dan Fiber sehingga mudah diapplikasikan untuk bulu mata yang lebih tebal, panjang dan kandungan Vit.E untuk perlindungan dan nutrisi bulu mata setiap harinya.\r\n\r\nCara Pakai:\r\n1. Aplikasikan maskara dengan mengarahkan bagian cekung sikat ke bawah dan gerakkan secara zig-zag pada bulu mata dari akar hingga ujung. \r\n2. Balikkan arah sikat hingga cekungan berada di bagian atas, ulangi gerakan zig zag untuk merapikan dan mengangkat bulu mata sehingga terlihat lentik dan tanpa gumpalan. \r\n3. Ulangi beberapa kali untuk mendapatkan hasil bulu mata yang panjang, tebal, dan lentik optimal.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 05:14:26'),
(16, 7, 13, 'Wardah Lightening Face Mist', '&lt;p&gt;Wardah Lightening Face Mist, 3 in 1 mist untuk primer make up, setting spray, dan fresh kulitdengan Advanced Niacinamide yang mencerahkan &amp;amp; melindungi dari efek negatif blue light. Diformulasikan khusus untuk bantu menjaga tampilan make up lebih tahan lama. Cocok untuk semua jenis kulit.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Cara Pakai:&lt;/p&gt;&lt;p&gt;1. Semprot merata ke area wajah.&lt;/p&gt;&lt;p&gt;2. Beri jarak sekitar 30cm.&lt;/p&gt;&lt;p&gt;3. Tunggu hinggs meresap.&lt;/p&gt;', 1, 0, '2023-01-11 05:27:31'),
(17, 8, 13, 'Y.O.U Perfect Blush Countour Palette', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Y.O.U&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; : 24 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Y.O.U Perfect Blush Contour Palette\r\nNetto : 12g\r\nNO BPOM ada di kemasan\r\nEXP : 21/01/2024\r\n\r\nAvailable :\r\n- 01\r\n- 02\r\n\r\n4 in 1 contour palette yang terdiri dari blush, contour, dan highlight untuk menghasilkan riasan wajah yang tegas dan tahan lama.\r\n\r\nSuper Long-Lasting\r\nPalette dengan formula yang memiliki daya tahan tinggi, sehingga wajah dapat tampil merona sepanjang hari.\r\n\r\nHyper-pigmented\r\nDiformulasikan dengan pigmentasi yang tinggi, sehingga mudah diaplikasikan, dibaurkan, dan tidak mudah luntur.\r\n\r\nContour &amp;amp; Highlight Palette\r\nDilengkapi dengan contour &amp;amp; highlightuntuk shading / mempertegas bentuk wajah dan membuat wajah lebih berkilau.\r\n&lt;/span&gt;&lt;/p&gt;&lt;div&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 05:35:19'),
(18, 8, 13, 'Y.O.U Eyeshadow Palette', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Y.O.U&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; : 24 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Eyeshadow palette all-in-one dengan 15 warna untuk berbagai tampilan, dari tekstur matte, shimmer hingga glitter, menghasilkan tampilan yang natural hingga bold.\r\n\r\nSelling Points &amp;amp; Benefits:\r\nHigh Impact Color: Memiliki pigmentasi tinggi dengan berbagai tampilan, mulai dari hasil matte &amp;amp; satin hingga shimmery &amp;amp; metalic - Cocok untuk skin-tone Anda.\r\nExtreme Blendability：Setiap shade memiliki pigmentasi tinggi dan formula velvet yang lembut, mudah untuk dibaurkan dan menyatu di mata Anda serta tidak mudah luntur.\r\nAll Day Long Wear：Memiliki varian warna yang unik, mudah untuk diaplikasikan dan membuat riasan mata Anda tetap cantik sepanjang hari.\r\n\r\nCara Pemakaian: \r\n1. Aplikasikan eyeshadow dengan menggunakan jari atau kuas, lalu ratakan untuk hasil makeup mata yang indah.\r\n2. Gunakan kuas yang dibasahkan untuk hasil warna yang lebih intens.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 05:40:40'),
(19, 8, 13, 'Y.O.U Dual Eyebrow Styler Pro Brow Definer', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Y.O.U&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp;: 24 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Y.O.U Eyebrow Styler Pro Brow Definer merupakan pensil alis yang memiliki ujung berbentuk segitiga, dapat diputar, serta dilengkapi brush untuk membentuk alis yang natural.\r\n\r\nManfaat :\r\n- Tahan lama sepanjang hari\r\n- Tahan air sehingga tidak mudah luntur\r\n- Warna yang pigmented dengan tekstur ringan\r\n\r\nKeunggulan :\r\nUjung pensil alis berbentuk segitiga dan dapat di putar. Brush untuk membentuk alis yang natural.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 05:45:53'),
(20, 8, 13, 'Y.O.U Lipstick Matte', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Y.O.U&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 24 Bulan&lt;/p&gt;&lt;p&gt;Jumlah Produk Dalam Kemasan&amp;nbsp; &amp;nbsp;: 1&lt;/p&gt;&lt;p&gt;Hasil Akhir Makeup&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Velvet Matte&lt;/p&gt;&lt;p&gt;Berat Produk&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 4,5g&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 05:55:31'),
(21, 9, 13, 'Implora New Eyeshadow Palette', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Implora&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; : 24 Bulan&lt;/p&gt;', 1, 0, '2023-01-11 06:01:43'),
(22, 9, 13, 'Implora Cheek Blossom Blush On', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Implora&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp;: 24 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Implora Cheek Blossom Blush On hadir dengan 4 pilihan warna natural dan matte finish yang menyempurnakan setiap penampilan perempuan Indonesia. &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 06:05:51'),
(23, 14, 14, 'Biore Body Wash Refill Foam', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Neue-Helvetica-Paneuropean-Light, sans-serif; font-size: 16px;&quot;&gt;Biore Bright Body Foam! Sabun mandi pertama di Indonesia dengan teknologi Japan Bright Micellar untuk kulit cerah, bercahaya.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Neue-Helvetica-Paneuropean-Light, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Neue-Helvetica-Paneuropean-Light, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Neue-Helvetica-Paneuropean-Light, sans-serif; font-size: 16px;&quot;&gt;Diperkaya dengan Brightening Natural Scrub, angkat sel kulit mati dengan lembut. Kulit menjadi halus dan terjaga kelembapannya.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 06:24:03'),
(24, 5, 14, 'Lux Botanicals Body Wash', '&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;sabun Lux Botanicals dapat&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;membuat kulit Anda menjadi lebih lembap dan lembut&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;. Vitamin C essence juga terdapat dalam sabun Lux Botanicals. Kandungan tersebut berkhasiat untuk membantu mencerahkan kulit sehingga kulit tampak lebih putih.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 06:28:05'),
(25, 13, 14, 'Lifebuoy Bar Soap', '&lt;p&gt;&lt;span style=&quot;color: rgb(65, 65, 65); font-family: ArialRoundedMT;&quot;&gt;Lifebuoy Bar Soap Mildcare&amp;nbsp; merupakan sabun mandi yang diformulasi khusus dengan memadukan kebaikan alami susu dan oat yang baik untuk menjadikan kulit halus dan lembut. Juga diperkaya dengan formula Active 5, bahan perlindungan kuman mutakhir yang mampu memberikan pelindungan dari 10 jenis kuman penyebab masalah kesehatan. Dengan formula ringan dan busa melimpah, Lifebuoy Bar Soap Mild Care membersihkan kulit secara lembut, menjaga kulit tetap sehat, dan menghilangkan kuman yang dapat menyebabkan 10 jenis infeksi kulit.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-11 06:31:25'),
(26, 9, 8, 'Implora Liptint', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Implora&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; : 5 Tahun&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Implora Cheek And Lip Tint\r\n\r\nMengandung Vitamin C dan Omega 3,6,9\r\nMudah diaplikasikan\r\nTerasa ringan di bibir dan tahan lama\r\n&lt;/span&gt;&lt;/p&gt;', 1, 0, '2023-01-15 21:10:24'),
(27, 17, 1, 'Beauty Cream Bioaqua', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Bioaqua&lt;/p&gt;&lt;p&gt;Manfaat Perawatan&amp;nbsp; &amp;nbsp; &amp;nbsp; :&amp;nbsp;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 0.875rem;&quot;&gt;Noda Hitam/Hiperpegmentasi, Jerawat/Noda, Anti-Penuaan Dini, Kusam/Tekstur Tidak Merata, Warna Kulit Tidak Merata&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Jenis Kulit&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Semua Jenis Kulit&lt;/p&gt;&lt;p&gt;Formulasi&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Krim&lt;/p&gt;&lt;p&gt;Warna Kulit&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Sedang&lt;/p&gt;&lt;p&gt;Coverage Foundation&amp;nbsp; : Full&lt;/p&gt;&lt;p&gt;Berat Produk&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 20gr&lt;/p&gt;&lt;p&gt;Masa Penyimpanann&amp;nbsp; &amp;nbsp; : 36 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;BIOAQUA Beauty Cream \r\nProduk cushion small mushroom BIOAQUA ini sudah termasuk All in One yaitu Concelear, Foundation, Moizturizer dan Sun Proof. Sehingga memudahkan bermake up tanpa membawa barang make up yang banyak. Jadi kamu tidak perlu lagi memakai BB cream, CC cream atau foundation sebelum memoles wajah kamu dengan riasan lainnya.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Keunggulan CUSHION SMALL MUSHROOM BIOAQUA:\r\n☑ Creates clear nude makeup, light and breathable natural nude makeup!\r\n☑ Contains moisturizing ingredients to maintain a perfect finish and a refreshing, clear look!\r\n☑ Covers dark circles, pimple and spots, evens and brightens skin tone.\r\n☑ Isolation of the external environment from damage, protect and care for the tender skin.\r\n☑ Deeply hydrates and helps improve dry skin, skin is hydrated and not tight.\r\n☑ Provides an even, matte finish and long lasting makeup effect.\r\n\r\ncocok untuk semua jenis kulit, bahkan untuk kulit sensitive sekalipun\r\n\r\nNetto 20gr\r\n\r\nCARA PAKAI :\r\nTepuk-tepuk bantalan untuk mengambil snow bb cream lalu tepuk perlahan tapi berkali-kali ke wajah anda dan ratakan perlahan ke seluruh bagian wajah dan tunggu beberapa menit, cream akan teroksidasi menyatu dengan warna kulit anda.  Wajah tampak bersih dan cerah.&lt;/span&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-15 21:20:24'),
(28, 17, 11, 'Bioaqua X Sunisa Bedak Cushion Waterproff', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Bioaqua&lt;/p&gt;&lt;p&gt;Manfaat Perawatan&amp;nbsp; &amp;nbsp; &amp;nbsp; :&amp;nbsp;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 0.875rem;&quot;&gt;Noda Hitam/Hiperpegmentasi, Pori-pori Besar, Jerawat/Noda&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Jenis Kulit&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;:&amp;nbsp;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 0.875rem;&quot;&gt;Semua Jenis Kulit, Kulit Kombinasi, Kering, Normal, Kulit Berminyak&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Formulasi&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Krim&lt;/p&gt;&lt;p&gt;Berat Produk&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 20gr&lt;/p&gt;&lt;p&gt;Masa Penyimpanan&amp;nbsp; &amp;nbsp; &amp;nbsp; : 36 Bulan&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Fitur: \r\n1. Bom jamur kecil, memperbaiki keindahan dan satu langkah di tempat; \r\n2. Bom kepala spons, ketika bertemu air, menjadi lebih besar dan lebih lembut, portabel, ramah di kulit, tidak buntu dan seluruh proses tidak kotor; \r\n3. Film bionik elastis kulit-ramah, Film bionik lembut ditekan secara merata halus BB cream; \r\n4. Kecerdikan jamur kecil kepulan stick, jamur kecil = make-up telur + kuas + puff, make-up adalah pembantu yang baik \r\n&lt;/span&gt;&lt;/p&gt;&lt;div&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;Cara pemakaian :\r\n\r\n1. Mengambil BB cushion dengan Menekan Perlahan\r\nKetika mengambil BB cushion, jangan langsung ditekan dengan kencang ya. Kenapa? Karena jika kamu menekannya terlalu kencang, bb cream yang terserap oleh air puff kamu akan menjadi jauh lebih banyak dibanding yang kamu butuhkan. Dengan begitu, tentunya kamu akan boros dalam menggunakan BB cushion tersebut.\r\n\r\nSelain itu, dengan menekan cushion terlalu kencang, kemungkinan bb cream menjadi muncrat sehingga mengotori bagian luar air puff kamu juga bisa terjadi, lho. So, lebih baik jika kamu mengambil BB cushion dengan menekankan air puff pada cushion dengan perlahan, ladies.\r\n\r\n2. Mengaplikasikan BB cushion dengan Gerakan Menepuk\r\nSelanjutnya, ketika mengaplikasikan BB cushion ke kulit wajah, sebaiknya kamu melakukan gerakan menepuk-nepukkan air puff pada seluruh permukaan wajah ya. Dengan cara ini, BB cushion kan mampu meng-cover seluruh permukaan wajah kamu secara merata, tanpa menggeser produk bb cream yang menempel pada bagian tertentu, lho.\r\n\r\nSelain itu, cara menepuk ini juga lebih mampu menutupi noda-noda pada wajah seperti bekas jerawat, noda hitam, ataupun kemerahan. So yeah, gerakan menepuk merupakan hal penting dalam mengaplikasikan BB cushion, ladies.&lt;/span&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;', 1, 0, '2023-01-15 21:24:23'),
(29, 16, 1, 'The Face Temulawak', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: The Face Temulawak&lt;/p&gt;&lt;p&gt;Berat Produk&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 50gr&lt;/p&gt;&lt;p&gt;Jenis Kulit&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;:&amp;nbsp;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 0.875rem;&quot;&gt;Semua Jenis Kulit&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Manfaat Perawatan&amp;nbsp; &amp;nbsp; :&amp;nbsp;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 0.875rem;&quot;&gt;Jerawat/Noda, Anti-Penuaan Dini, Komedo, Pori-pori Tersumbat, Noda Hitam/Hiperpegmentasi&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Formulasi&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Krim&lt;/p&gt;&lt;p&gt;Masa penyimpanan&amp;nbsp; &amp;nbsp;: 20 Hari&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, 文泉驛正黑, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;儷黑 Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, 微軟正黑體, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; white-space: pre-wrap;&quot;&gt;TEMULAWAK THE FACE CREM\r\nDay &amp;amp; Night cream yang dikembangkan secara profesional mengandung temulawak extract, texturnya yang lembut .Dengan pemakaian yang teratur menjadikan kulit wajah anda tampak halus dan lembut serta diperkaya dengan UV filter melindungi kulit wajah dari pengaruh buruk sinar matahari,dapat digunakan sebagai alas bedak(Day Crem) dan (Night Crem) \r\n\r\nCara Penggunaan : Dipakai setiap hari waktu siang dan malam dengan cara terlebih dahulu membersihkan muka anda kemudian baru memakai cream ini.Ia hanya perlu sapu satu lapisan yang tipis saja&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-15 21:28:02'),
(30, 15, 8, 'Lip Cream Hanasui Boba', '&lt;p&gt;Merek&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Hanasui&lt;/p&gt;&lt;p&gt;Diproduksi Oleh&amp;nbsp; &amp;nbsp;: PT. Eka Jaya Internasional&lt;/p&gt;&lt;p&gt;Berat Bersih&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : 4gr&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-01-15 21:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(11, 11, 30, '2023-01-12 20:34:52'),
(12, 12, 30000, '2023-01-14 09:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Belopa Kosmetik'),
(6, 'short_name', 'Kosmetik'),
(11, 'logo', 'uploads/logo-1673394706.jpg?v=1673394706'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1673394724.jpg?v=1673394724');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1645064505', NULL, 1, '2021-01-20 14:02:37', '2022-02-17 10:21:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
