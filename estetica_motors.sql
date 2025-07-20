-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2025 at 05:29 PM
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
-- Database: `estetica_motors`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$FRYnxVxY/znYXyz4fG7K/uVZ5ZHIfpUwdLiVmSYqVui40FO5zU85q');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `konten` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `slug`, `konten`, `created_at`) VALUES
(5, 'Testing Article', 'testing-article', '<p>asdasdasdasdasd</p><p>asd</p><p>asd</p><p>ad</p><p>asdasdasdas</p><p>dasdasd</p><p>asdasd</p>', '2025-07-20 14:49:24'),
(6, 'test', 'test', '<p>asdasd</p>', '2025-07-20 15:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `filename`, `created_at`) VALUES
(0, '1753024774_jembatani.png', '2025-07-20 15:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_contents`
--

CREATE TABLE `dynamic_contents` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dynamic_contents`
--

INSERT INTO `dynamic_contents` (`id`, `type`, `content`) VALUES
(1, 'profile', '<p>Estetica Motors adalah perusahaan otomotif yang didirikan pada tahun 2006 dengan fokus pada inovasi desain dan teknologi canggih untuk menciptakan kendaraan roda empat yang tidak hanya berkualitas tinggi, tetapi juga memberikan pengalaman berkendara yang luar biasa. Dengan mengutamakan estetika, performa, dan keselamatan, Estetica&nbsp;</p><p>Motors bertujuan untuk memimpin pasar dengan mobil yang menggabungkan keindahan desain dan fungsionalitas, serta teknologi ramah lingkungan yang mendukung mobilitas berkelanjutan. Komitmen kami untuk selalu berinovasi dan memberikan layanan purna jual terbaik menjadikan Estetica Motors pilihan utama bagi konsumen yang menginginkan kendaraan yang dapat diandalkan dan penuh gaya.</p>'),
(2, 'visi-misi', '<p>Misi Kami</p><ul><li>Menyediakan mobil dengan teknologi terbaru yang memenuhi standar keselamatan dan kenyamanan bagi pengendara dan penumpang.</li><li>Berkomitmen untuk memberikan layanan pelanggan terbaik melalui jaringan distribusi dan purna jual yang luas.</li><li>Mendorong penggunaan kendaraan ramah lingkungan dengan memperkenalkan mobil listrik dan teknologi hemat energi.</li><li>Terus berinovasi dalam desain dan fitur untuk menciptakan pengalaman berkendara yang lebih baik dan lebih efisien.</li></ul><p><br></p><p>Visi Kami </p><p>Menjadi perusahaan otomotif terkemuka yang menghadirkan mobil dengan kualitas dan teknologi terbaik, serta memberikan pengalaman berkendara yang aman, nyaman, dan berkelanjutan.</p>'),
(3, 'contact', '<p>Kami senang mendengar dari Anda! Jika Anda memiliki pertanyaan, saran, atau ingin mendapatkan informasi lebih lanjut mengenai produk dan layanan kami, silakan hubungi kami melalui salah satu cara berikut:</p><p><br></p><p>Alamat Kantor Pusat: Jl. Raya No. 123</p><p>No. Telepon: (0285) 123-4567</p><p>Fax: (0285) 765-4321</p><p>Email: info@batikraya.co.id</p><p><br></p>'),
(4, 'about-us', '<p class=\"ql-align-justify\">Estetica Motors adalah perusahaan otomotif yang didirikan pada tahun 2020 dengan visi untuk meredefinisi standar kendaraan mewah dan elegan.&nbsp;Sejak awal, kami berkomitmen untuk menggabungkan desain artistik dengan&nbsp;teknologi otomotif terkini, menciptakan mobil yang tidak hanya memenuhi kebutuhan transportasi, tetapi juga memberikan pengalaman berkendara yang luar biasa.</p><p><br></p><p class=\"ql-align-justify\">Perusahaan kami bergerak di bidang manufaktur kendaraan premium, dengan fokus pada mobil yang mengutamakan kualitas, desain, dan performa. Kami percaya bahwa setiap kendaraan yang kami buat harus memiliki daya tarik visual yang kuat, sambil tetap memberikan kenyamanan dan keselamatan bagi pengendara.</p><p><br></p><p class=\"ql-align-justify\">Estetica Motors lahir dari kecintaan kami terhadap seni desain dan teknologi tinggi. Dengan tim yang terdiri dari desainer dan insinyur terbaik, kami terus berinovasi untuk menghadirkan kendaraan yang tidak hanya memenuhi harapan pasar, tetapi juga menciptakan standar baru dalam industri otomotif.</p>'),
(5, 'product', '<p><strong>Estetica City </strong></p><p>Mobil kompak yang ideal untuk perjalanan sehari-hari, dengan desain modern dan efisiensi bahan bakar yang luar biasa. Dilengkapi dengan fitur canggih dan teknologi keselamatan terbaru, Estetica City cocok untuk Anda yang mencari kendaraan praktis dan stylish. Harga: Rp 250.000.000,-</p><p><br></p><p><strong>Estetica SUV </strong></p><p>SUV yang menawarkan ruang luas, kenyamanan ekstra, dan performa tangguh untuk petualangan keluarga. Dengan kemampuan off-road yang hebat dan fitur hiburan kelas atas, Estetica SUV siap menemani perjalanan jauh Anda. Harga: Rp 450.000.000,-</p><p><br></p><p><strong>Estetica Lux </strong></p><p>Kendaraan premium dengan desain elegan dan fitur teknologi canggih. Estetica Lux menghadirkan pengalaman berkendara mewah dengan fitur keselamatan tingkat tinggi, serta interior yang nyaman dan stylish. Harga: Rp 750.000.000,-</p>');

-- --------------------------------------------------------

--
-- Table structure for table `foto_client`
--

CREATE TABLE `foto_client` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `filename`, `created_at`) VALUES
(1, '1753023592_people-1746789670185 (2).webp', '2025-07-20 14:59:52'),
(2, '1753023630_pay-gopay.webp', '2025-07-20 15:00:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dynamic_contents`
--
ALTER TABLE `dynamic_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_client`
--
ALTER TABLE `foto_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dynamic_contents`
--
ALTER TABLE `dynamic_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `foto_client`
--
ALTER TABLE `foto_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
