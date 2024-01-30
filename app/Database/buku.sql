-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 04:51 PM
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
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `nama_b` text NOT NULL,
  `cover` text NOT NULL,
  `penulis` text NOT NULL,
  `penerbit` text NOT NULL,
  `tahun` text NOT NULL,
  `sinopsis` text NOT NULL,
  `stok` text NOT NULL,
  `link` text NOT NULL,
  `kategori` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id_book`, `nama_b`, `cover`, `penulis`, `penerbit`, `tahun`, `sinopsis`, `stok`, `link`, `kategori`, `created_at`) VALUES
(1, 'Dilan: Dia Adalah Dilanku Tahun 1990', '1706500940_a749544eb4477a5f3443.jpg', ' Pidi Baiq', 'MIZAN', '10 Maret 2016', 'Cinta, walaupun sudah berlalu sekian lama, tetap saja, saat dikenang begitu manis.  Milea, dia kembali ke tahun 1990 untuk menceritakan seorang laki-laki yang pernah menjadi seseorang yang sangat dicintainya, Dilan.  Laki-laki yang mendekatinya (milea) bukan dengan seikat bunga atau kata-kata manis untuk menarik perhatiannya. Namun, melalui ramalan seperti tergambarkan pada penggalan cerita berikut :  “Aku ramal, nanti kita bertemu di kantin.” – Dilan -hlm. 20  Tapi, sayang sekali ramalannya salah. Hari itu, Miela tidak ke kantin karena ia harus membicarakan urusan kelas dengan kawan-kawannya. Sebuah cara sederhana namun bikin senyum dipilih Dilan untuk kembali menarik perhatian dari Milea. Dian mengirim Piyan untuk menyampaikan suratnya yang isinya :  “Milea, ramalanku, kita akan bertemu di kantin. Ternyata salah. Maaf, tapi ingin meramal lagi : besok kita akan bertemu.”  – Dilan – halaman. 22  Tunggu, besok yang dimaksud oleh dilan itu adalah hari minggu. Ngga mungkin, kan mereka bertemu? Namun, ternyata ramalannya kali ini benar. Dilan datang ke rumah Miela untuk menyampaikan surat undangannya yang isinya :  “Bismillahirrahmanirrahim. Dengan nama Allah Yang Maha Pengasih lagiPenyayang. Dengan ini, dengan penuh perasaan, mengundang Milea Adnan untuk sekolah pada : Hari Senin, Selasa, Rabu, Kamis, Jumat, dan Sabtu.” – Dilan – hlm. 27  Hal-hal yang sederhana ini nyatanya dapat membuat Milea tersenyum, dan perlahan mulai menaruh perhatiannya kepada Dilan. Sampai-sampai, sebentar dia lupa, ada Beni yaitu pacarnya yang berada di Jakarta.  Milea tak mau kehilangan Dilan. Baginya, Dilan seperti sesuatu yang selalu dapat membuat hari-harinya penuh warna. Tapi, dia tampak sangat jahat pada Dilan, karena dia mau untuk menerima perhatian dari Dilan, padahal dia sudah ada yang memiliki.  Sampai pada waktu milea memutuskan hubungannya dengan beni, pacarnya di jakarta. Ia cowok yang sangat emosian dan manja. Karena suatu hal yang ga perlu dijelaskan. Semenjak itu hubugan Dilan dan Milea semakin erat saja.', '5', '4c1f2f1d903cfd88ad0615f9860b57b9.pdf', 5, '2024-01-29 03:52:28'),
(12, 'The Love Hypothesis', '1706509823_59c73149c63134de72ce.jpg', 'Ali Hazelwood', 'Penguin Random House', '2021', 'As a third-year Ph.D. candidate, Olive Smith doesn\'t believe in lasting romantic relationships--but her best friend does, and that\'s what got her into this situation. Convincing Anh that Olive is dating and well on her way to a happily ever after was always going to take more than hand-wavy Jedi mind tricks: Scientists require proof. So, like any self-respecting biologist, Olive panics and kisses the first man she sees.', '110', 'Ga ada ', 5, '2024-01-29 06:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_k` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_k`, `created_at`) VALUES
(1, 'Korea', '2024-01-27 22:36:11'),
(3, 'Sastra', '2024-01-27 11:54:48'),
(5, 'Romance', '2024-01-29 05:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `koleksi`
--

CREATE TABLE `koleksi` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2023-10-09 19:57:33', NULL, NULL),
(2, 'Petugas', '2023-10-09 19:57:33', NULL, NULL),
(3, 'User', '2023-10-09 19:57:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `jumlah` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_book`, `tgl_pinjam`, `tgl_kembali`, `jumlah`, `status`) VALUES
(12, 2, 1, '2024-01-29', '2024-01-12', '100', 'Dikembalikan'),
(14, 2, 1, '2024-01-29', '2024-02-29', '10', 'Dipinjam');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `hapus` AFTER DELETE ON `peminjaman` FOR EACH ROW BEGIN
    UPDATE book SET stok = stok + OLD.jumlah WHERE id_book = OLD.id_book;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `masuk` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
    UPDATE book SET stok = stok - NEW.jumlah WHERE id_book = NEW.id_book;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN
 
    IF NEW.status = 'Dikembalikan' AND OLD.status != 'Dikembalikan' THEN
       
        UPDATE book SET stok = stok + NEW.jumlah WHERE id_book = NEW.id_book;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `level` int(11) NOT NULL,
  `foto` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `level`, `foto`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 'Admin', 'Admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', 1, 'default.png', '2024-01-27 14:27:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Petugas', 'Petugas', '0cc175b9c0f1b6a831c399e269772661', 'petugas@gmail.com', 2, 'default.png', '2024-01-27 02:55:31', '2024-01-27 03:12:07', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
