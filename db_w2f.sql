-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2014 pada 15.17
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_w2f`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_lengkap`, `username`, `password`, `status`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) DEFAULT NULL,
  `content` text,
  `gambar` varchar(250) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `content`, `gambar`, `createdate`, `lastupdate`, `status`) VALUES
(3, 'Aneka Kue Lebaran', '&lt;p&gt;Beberapa product terlaris yang ada di moment hari raya idul fitri...&lt;/p&gt;', 'asset/upload/583e45247249ec6809dffeb968057da6.jpg', '2014-06-21 09:14:47', '2014-08-23 01:35:32', 1),
(4, 'Nasi Box', '&lt;p&gt;Nasi Box ini bermacam-macam harga dan menu. Harga mulai dari 20.000 hingga 30.000... isi menu tergantung selera pelanggan&lt;/p&gt;', 'asset/upload/f633015dbfa2ff8e52ada10ea51ba688.jpg', '2014-06-21 09:15:10', '2014-08-23 01:34:13', 1),
(5, 'Pelanggan W2F', '&lt;p&gt;Allhmdulillah pelanggan W2F sudah sampai showroom mobil FORD, beliau juga slah satu pelanggan setia W2F. &lt;/p&gt;', 'asset/upload/6b7a73ef7b8639cc3f916fdf99c38a86.jpg', '2014-06-21 09:15:22', '2014-08-23 01:18:19', 1),
(6, 'Pelanggan W2F', '&lt;p&gt;Ini salah satu foto bersama dengan pelanggan W2F, yaitu PT. Sumber Alfaria Trijaya yang berada di Cikokol Tangerang.&lt;/p&gt;', 'asset/upload/c2ec8e92c74fb30980a7fb4c7c1b61a6.jpg', '2014-06-21 09:15:36', '2014-08-23 01:16:15', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nama_akun` varchar(50) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`, `nama_akun`, `no_rekening`) VALUES
(1, 'BANK BCA', 'Firgiawan Khafidli', '8680.3634.56'),
(2, 'BANK MANDIRI', 'Firgiawan Khafidli', '8680.3634.56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Special Cakes'),
(2, 'Cake Slices'),
(3, 'Gist & Sweets'),
(4, 'Breads'),
(5, 'Occassions'),
(6, 'Traditional Cakes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `tgl_transfer` datetime DEFAULT NULL,
  `nominal` float(15,2) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nama_akun` varchar(50) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  `gambar` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `order_id`, `member_id`, `bank_id`, `tgl_transfer`, `nominal`, `nama_bank`, `nama_akun`, `no_rekening`, `gambar`, `status`) VALUES
(1, 1, 1, 1, '2014-06-21 23:40:07', 43900.00, 'BANK BCA', 'Firgiawan Khafidli', '8680.3634.56', NULL, 2),
(2, 4, 1, 1, '2014-06-22 00:00:00', 110700.00, 'BANK BCA', 'Firgiawan Khafidli', '8680.3634.56', 'asset/upload/0b1d2f5fcea10bac00a0eeb6566f8aa7.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(250) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `email`, `telepon`, `kota`, `kode_pos`, `alamat`, `username`, `password`, `status`) VALUES
(1, 'Wijaya Kusuma', '1986-06-27', 'L', 'khafidli@ymail.com', '088801129001', 'Tangerang', '15143', 'Jl Rasuna Said No.55', 'member', 'aa08769cdcb26674c6706093503ff0a3', 1),
(2, 'atwinda', '0000-00-00', 'P', 'nda.kembar@yahoo.com', '021 5516521', 'tangerang', '15132', 'jl.garuda 4 no 25', 'nda.kembar@yahoo.com', 'bec2d332fb6019ca4042ceee13a68633', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `no_order` varchar(10) DEFAULT NULL,
  `tgl_order` datetime DEFAULT NULL,
  `tgl_expired` datetime DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `total_order` int(15) DEFAULT '0',
  `catatan` text,
  `status` int(11) DEFAULT '1' COMMENT '1 = PENDING, 2 = COMPLETED, -1 = CANCELLED',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `no_order`, `tgl_order`, `tgl_expired`, `member_id`, `total_order`, `catatan`, `status`) VALUES
(1, 'INV000001', '2014-06-21 20:00:14', '2014-07-21 20:00:15', 1, 43900, '@sampel by admin', 2),
(2, 'INV000002', '2014-06-21 20:00:14', '2014-07-21 20:00:15', 1, 68900, '@sampel by admin', 2),
(3, 'INV000003', '2014-06-21 20:00:14', '2014-07-21 20:00:15', 1, 43900, '@sampel by admin', 1),
(4, 'INV000004', '2014-06-22 23:10:09', NULL, 1, 110700, '@sampel by wijaya', 2),
(5, 'INV000005', '2014-06-22 23:45:16', NULL, 1, 46000, '@sampel 123', 1),
(6, 'INV000006', '2014-06-23 00:10:39', NULL, 1, 109400, '', 1),
(7, 'INV000007', '2014-08-23 14:37:23', NULL, 2, 95000, '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `detail_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `produk_id` int(10) DEFAULT NULL,
  `atribut_id` int(10) DEFAULT '0',
  `satuan` varchar(50) DEFAULT NULL,
  `harga` int(10) DEFAULT '0',
  `diskon` int(10) DEFAULT '0',
  `qty` int(10) NOT NULL DEFAULT '1',
  `subtotal` int(15) DEFAULT '0',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `produk_id`, `atribut_id`, `satuan`, `harga`, `diskon`, `qty`, `subtotal`) VALUES
(1, 1, 12, 3, 'PCS', 21000, 10, 1, 18900),
(2, 1, 11, 0, 'PCS', 25000, 0, 1, 25000),
(3, 2, 12, 3, 'PCS', 21000, 10, 1, 18900),
(4, 2, 11, 0, 'PCS', 25000, 0, 2, 50000),
(5, 3, 12, 3, 'PCS', 21000, 10, 1, 18900),
(6, 3, 11, 0, 'PCS', 25000, 0, 1, 25000),
(7, 4, 12, 3, 'PCS', 21000, 10, 3, 56700),
(8, 4, 10, 0, 'PCS', 20000, 10, 3, 54000),
(9, 5, 7, 0, 'PCS', 21000, 0, 1, 21000),
(10, 5, 11, 0, 'PCS', 25000, 0, 1, 25000),
(11, 6, 11, 0, 'PCS', 25000, 0, 2, 50000),
(12, 6, 3, 0, 'PCS', 22000, 10, 3, 59400),
(13, 7, 12, 3, 'PCS', 75000, 0, 1, 75000),
(14, 7, 11, 0, 'PCS', 2000, 0, 10, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(10) DEFAULT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `keterangan_singkat` tinytext,
  `keterangan_lengkap` text,
  `gambar` varchar(250) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `diskon` int(10) DEFAULT '0',
  `satuan` varchar(50) DEFAULT '0',
  `createdate` datetime DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(2) DEFAULT '1' COMMENT '1= available, 0 = non aktif',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `kode`, `nama`, `keterangan_singkat`, `keterangan_lengkap`, `gambar`, `harga`, `diskon`, `satuan`, `createdate`, `lastupdate`, `status`) VALUES
(1, 1, 'P000001', 'Nastar', '', '&lt;p&gt;Makanan ini sangat di tunggu di moment hari raya idul fitri. nastar paling banyak di pesan saat moment tersebut&lt;/p&gt;', 'asset/upload/3e02790faec4d3455bc74283d188f186.jpg', 35000, 0, 'PCS', '2014-06-21 19:16:55', '2014-08-23 01:33:39', 1),
(2, 6, 'P000002', 'Kue Sagu Keju', '', '&lt;p&gt;Kue sagu keju ini paling laris di saat moment hari raya idul fitri tiba&lt;/p&gt;', 'asset/upload/fae22a29db9777be78731b06de109622.jpg', 45000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 01:30:22', 1),
(3, 1, 'P000003', 'Nasi Box', '', '&lt;p&gt;Nasi box mulai dari 20.000 hingga 30.000.. isi box tergantung selera pelanggan&lt;/p&gt;', 'asset/upload/888dc0d337595f784776db6dd13a57fc.jpg', 20000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 01:28:25', 1),
(4, 1, 'P000004', 'Paketan', 'Less Sugar', '&lt;p&gt;Paketan ini macam-macam isi nya, sesuai selera pelanggan ingin isi apa ajah.. satu paket isinya 3 kue dan 1 air kemasan harga sudah termasuk dus&lt;/p&gt;', 'asset/upload/b1320f491b4f577e6732e8f569312194.jpg', 8000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 01:27:13', 1),
(5, 2, 'P000005', 'Bolu Kukus', 'Less Sugar', '', 'asset/upload/78ba509ddd095344af5f84fd2c6bb87d.jpeg', 2000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:57:15', 1),
(6, 1, 'P000006', 'Bolu Panggang', '', '&lt;p&gt;Bolu Panggang rasa&amp;nbsp; coklat &amp;amp; pandan ini paling laris untuk seserahan pernikahan atau acara lain nya. &lt;/p&gt;', 'asset/upload/2ad81c0abffe32ce7d2d5a9d97e58718.jpg', 45000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:55:27', 1),
(7, 1, 'P000007', 'Pai Buah', 'Less Sugar', '&lt;p&gt;Pai Buah, kue yang menurut saya paling cantik dengan hiasan buah di atas fla. pai buah ini bermacam-macam harganya mulai dari 3000 hingga 5000 ribu rupiah...&lt;/p&gt;', 'asset/upload/7efac0b7b8f31af373a2b1d2a3087ece.jpg', 3000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:53:24', 1),
(8, 3, 'P000008', 'Rainbow Cake', 'Less Sugar', '&lt;p&gt;Rainbow Cake, siapa yg tidak kenal dengan kue ini, kue yang cantik dengan warna yang menarik dan hiasan yang cantik. Harga rainbow cake ini mulai dari 65.000 sampai 110.000, yang artinya mulai dari ukuran sedang hingga besar.&lt;/p&gt;', 'asset/upload/178f9e072d12f77c08e222a1c6f7c107.jpg', 65000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:39:46', 1),
(9, 1, 'P000009', 'Risoles', 'Risolles Rasa Coklat', '&lt;p&gt;Risolles kini tidak hanya rasa original saja, kini hadir risolles isi coklat. begitu di gigit coklat nya pun meluber di mulut anda... yang belum pernah mencoba jangan sampai ketinggalan risolles rasa coklat.&lt;/p&gt;', 'asset/upload/801ae9f6677e0e66b762229431b413c7.jpg', 2000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:35:34', 1),
(10, 1, 'P000010', 'Kue Keju', 'Less Sugar', '&lt;p&gt;Harga kue keju ini bermacam-macam mulai dari 40.000 ribu sampai 60.000. ukuran nya pun dari yg kecil hingga yang besar.&lt;/p&gt;', 'asset/upload/59ce8d57f9f56466533baef2c21bb842.jpg', 40000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:31:12', 1),
(11, 1, 'P000011', 'Risolles', 'Original', '&lt;p&gt;Risolles Original sangat di gemari di lingkungan rumah saya,lingkungan kampus saya,bahkan sampai dosen pun menyukai risolles ini.&lt;/p&gt;', 'asset/upload/60c88e255e2b48043111ec3e9b9d6a86.jpg', 2000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-23 00:28:40', 1),
(12, 1, 'P000012', 'Black Forest', 'Ukuran sesuai Pesanan', '&lt;p&gt;Black Forest&lt;/p&gt;', 'asset/upload/4125b359f2aa158b0ab3b53ae617c1e4.jpg', 75000, 0, 'PCS', '2014-06-21 19:23:03', '2014-08-22 14:18:33', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_atribut`
--

CREATE TABLE IF NOT EXISTS `produk_atribut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `produk_id` int(10) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  `harga` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `produk_atribut`
--

INSERT INTO `produk_atribut` (`id`, `produk_id`, `nama`, `harga`) VALUES
(3, 12, 'Rasa Coklat', 75000),
(4, 12, 'Rasa Strawbery', 75000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonial`
--

CREATE TABLE IF NOT EXISTS `testimonial` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL DEFAULT '0',
  `komentar` text NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `testimonial`
--

INSERT INTO `testimonial` (`id`, `member_id`, `komentar`, `createdate`, `status`) VALUES
(1, 1, 'Saya selalu beli kue ultah\rdisini, selain harganya murah \rjuga rasanya enak\rT.O.P banget (^^) ', '2014-06-22 00:03:46', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
