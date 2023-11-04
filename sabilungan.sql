-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Nov 2023 pada 13.53
-- Versi server: 8.0.29-0ubuntu0.21.10.2
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sabilungan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checklist`
--

CREATE TABLE `checklist` (
  `id` int UNSIGNED NOT NULL,
  `role_id` tinyint UNSIGNED NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` enum('checkbox','radio','text') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `checklist`
--

INSERT INTO `checklist` (`id`, `role_id`, `sequence`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Proposal Hibah Bansos', 'checkbox', NULL, NULL),
(2, 5, 2, 'Surat Keterangan Tanggung Jawab', 'checkbox', NULL, NULL),
(3, 5, 3, 'Surat Keterangan Kesediaan Menyediakan Dana Pendamping', 'checkbox', NULL, NULL),
(4, 5, 4, 'Gambar Rencana dan Konstruksi Bangunan', 'checkbox', NULL, NULL),
(5, 5, 5, '1. Akta Notaris Pendirian Lembaga', 'checkbox', NULL, NULL),
(6, 5, 6, '2. Surat Pernyataan Tanggung Jawab', 'checkbox', NULL, NULL),
(7, 5, 7, '3. Nomor Pokok Wajib Pajak', 'checkbox', NULL, NULL),
(8, 5, 8, '4. Surat Keterangan Domisili Lembaga dari Desa / Kelurahan Setempat', 'checkbox', NULL, NULL),
(9, 5, 9, '5. Izin Operasional Tanda Daftar Lembaga dari Instansi yang Berwenang', 'checkbox', NULL, NULL),
(10, 5, 10, '6. Bukti Kontrak Sesuai Gedung/Bangunan Bagi Lembaga yang Kantornya Menyewa', 'checkbox', NULL, NULL),
(11, 5, 11, '7. Salinan Fotocopy KTP Atas Nama Ketua dan Sekretaris', 'checkbox', NULL, NULL),
(12, 5, 12, '8. Salinan Rekening Bank yang Masih Aktif Atas Nama Lembaga dan/atau Pengurus Belanja Hibah', 'checkbox', NULL, NULL),
(13, 5, 13, 'Keterangan', 'text', NULL, NULL),
(14, 1, 1, 'Keterangan', 'text', NULL, NULL),
(15, 3, 1, 'Ya', 'radio', NULL, NULL),
(16, 3, 2, 'Tidak', 'radio', NULL, NULL),
(17, 3, 3, 'Besar Rekomendasi Dana', 'text', NULL, NULL),
(18, 3, 4, '1. Kesesuaian Harga Dalam Proposal dengan Standar Satuan Kerja', 'checkbox', NULL, NULL),
(19, 3, 5, '2. Kesesuaian Kebutuhan Peralatan dan Bahan dalam Kegiatan', 'checkbox', NULL, NULL),
(20, 3, 6, '3. Organisasi Tidak Fiktif', 'checkbox', NULL, NULL),
(21, 3, 7, '4. Alamat Organisasi/Ketua Sesuai dengan Proposal', 'checkbox', NULL, NULL),
(22, 3, 8, '5. Belum Pernah Menerima Satu Tahun Sebelumnya', 'checkbox', NULL, NULL),
(23, 3, 9, '6. Verifikasi KTP', 'checkbox', NULL, NULL),
(24, 3, 10, '7. Verifikasi Organisasi Berbadan Hukum', 'checkbox', NULL, NULL),
(25, 3, 11, 'Keterangan', 'text', NULL, NULL),
(26, 4, 1, 'Koreksi (Angka)', 'text', NULL, NULL),
(27, 4, 2, 'Keterangan', 'text', NULL, NULL),
(28, 2, 1, 'Nominal yang Direkomendasikan TAPD', 'text', NULL, NULL),
(29, 2, 2, 'Keterangan', 'text', NULL, NULL),
(30, 1, 2, 'Keterangan', 'text', NULL, NULL),
(31, 4, 1, 'Kategori Hibah Bansos', 'radio', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms`
--

CREATE TABLE `cms` (
  `page_id` varchar(25) NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `content` text NOT NULL,
  `type` enum('1','2','3') NOT NULL COMMENT '1:image, 2:text, 3:file',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cms`
--

INSERT INTO `cms` (`page_id`, `sequence`, `title`, `content`, `type`, `created_at`, `updated_at`) VALUES
('home', 1, NULL, '6b2dca096e66bf4a8b2136c1ab8e73a4.jpg', '1', NULL, NULL),
('home', 2, NULL, 'ad1af5d7a2961274e5b8d429b76dcca3.jpg', '1', NULL, NULL),
('peraturan', 1, 'SOP Bendaharan Hibah dan Bantuan Sosial (Repaired)', '01.02 SOP_Bendaharan Hibah dan Bantuan Sosial (Repaired).pdf', '3', NULL, NULL),
('peraturan', 2, 'SK PPK-PPKD 2016', 'e160fd3cb66cd95f6a36afe6ece53f0a.doc', '3', NULL, NULL),
('peraturan', 3, 'PERMENDAGRI 32 TAHUN 2011', '1d68bd38635b51f1c738e6f88b5e5bf5.pdf', '3', NULL, NULL),
('peraturan', 4, 'PERMENDAGRI 39 TAHUN 2012 PERUBAHAN ATAS PERATURAN MENTERI DALAM NEGERI NOMOR 32 TAHUN 2011 TENTANG PEDOMAN PEMBERIAN HIBAH DAN BANTUAN SOSIAL YANG BERSUMBER DARI ANGGARAN PENDAPATAN DAN BELANJA DAERAH', '5a3191e98ca3da46b4e36491ea7e6c86.pdf', '3', NULL, NULL),
('peraturan', 5, 'PERWAL NO 891 TAHUN 2011 TENTANG HIBAH BANSOS', 'c2dfcba5ab0fa9417b9b1f569931af7e.pdf', '3', NULL, NULL),
('peraturan', 6, 'PERWAL NO 836 THN 2012 PERUBAHAN I PERWAL 891-2011 HIBAH BANSOS', '5b396c4c46b2ac1516042f9df33fcdd5.pdf', '3', NULL, NULL),
('peraturan', 7, 'PERWAL NO 777 THN 2013 PERUBAHAN II PERWAL 891-2011 HIBAH BANSOS', 'dd67e7bac65d24c9833b07ac980c3a9e.pdf', '3', NULL, NULL),
('peraturan', 8, 'PERWAL NO. 825 THN 2013 PERUBAHAN III PERWAL 891-2011 HIBAH BANSOS-evdok', '50e1acf5536ff8d403d07bd796817c77.pdf', '3', NULL, NULL),
('peraturan', 9, 'PERWAL NO. 825 THN 2013 PERUBAHAN III PERWAL 891-2011 HIBAH BANSOS LAMPIRAN', '6f6da3e750f3985cac1e715a4399bc42.pdf', '3', NULL, NULL),
('peraturan', 10, 'PERWAL NO 1205 THN 2013 PERUBAHAN IV PERWAL 891-2011 HIBAH BANSOS', '5d6c162aeff5302cedf1ef43037c42a5.pdf', '3', NULL, NULL),
('peraturan', 11, 'PERWAL NO. 309 THN 2014 PERUBAHAN V PERWAL 891-2011 HIBAH BANSOS', '22bc1773be445df6fabd5584d5415694.pdf', '3', NULL, NULL),
('peraturan', 12, 'PERWAL NO. 691 THN 2014 PERUBAHAN V PERWAL 891-2011 HIBAH BANSOS', '7d83fc75dd4399e68bf4b2245367566b.pdf', '3', NULL, NULL),
('peraturan', 13, 'Hibah Bansos Online', '766d8fd943c05b384e6718396589c3c0.docx', '3', NULL, NULL),
('peraturan', 14, 'Peraturan Walikota Nomor 816 Tahun 2015', '790a40427091ac801345fd09747387c8.pdf', '3', NULL, NULL),
('peraturan', 15, 'SURAT EDARAN LPJ 2015', '7d50d38defe05ad8ba5272788a11fa6c.docx', '3', NULL, NULL),
('peraturan', 16, 'Surat Edaran Menteri Dalam Negeri Nomor 9004627SJ Tentang Penajaman Ketentuan Pasal 298 Ayat (5) Undang-Undang Nomor 23 Tahun 2014 Tentang Pemerintahan Daerah', '8597f9c4903623f66c0e90de1d74bf90.pdf', '3', NULL, NULL),
('peraturan', 17, 'Surat Permberitahuan Pemohon', '06e124370babc1f2a3e09d267a50c9c5.docx', '3', NULL, NULL),
('peraturan', 18, 'Surat Permberitahuan SKPD Terkait', '6225452be03b620f44f9712313c5ee06.docx', '3', NULL, NULL),
('tentang', 1, NULL, '<p>Sabilulungan, atau yang memiliki arti ‘Gotong Royong’ digagas oleh Pemerintah Kota Bandung untuk memfasilitasi keterbukaan dalam perwujudan program bansos dan hibah melalui media online.</p>\r\n<p>Program Sabilulungan bertujuan agar jalannya dana bantuan yang diturunkan Pemerintah Kota Bandung untuk membiayai berbagai proyek sosial yang diinginkan masyarakat dapat dipertanggungjawabkan secara terbuka. Seluruh proses dalam Sabilulungan dapat terlihat dan diawasi oleh seluruh lapisan masyarakat</p>\r\n<p>Melalui Sabilulungan, seluruh masyarakat dan organisasi di kota Bandung dapat:</p>\r\n<ol><li><p>Mengirimkan proposal terkait hibah bansos dan memonitor bagaimana status proposal tersebut (apakah diterima, ditolak, sedang diverifikasi, dan sebagainya); serta</p>\r\n</li>\r\n<li><p>Ikut berpartisipasi dalam memonitor jalannya hibah bansos yang sudah disetujui oleh Pemerintah Kota Bandung sehingga dapat turut memberikan masukan dan saran terkait jalannya hibah bansos tersebut.</p>\r\n</li>\r\n</ol>\r\n<p>Ayo ajukan ide kreatif kalian tanpa rasa takut akan penyelewengan dana yang diturunkan. Kita semua bersama dapat menjadi yang ahli dalam pembangunan Kota Bandung, Karena berani transparansi itu JUARA!</p>\r\n<h2>APA YANG SABILULUNGAN WUJUDKAN</h2>\r\n<p>BANSOS atau Bantuan Sosial, yaitu program bantuan dana diberikan secara selektif oleh pemerintah untuk ide-ide kreatif yang diusulkan oleh seluruh masyarakat Kota Bandung khususnya, secara perseorangan atau kelompok. Bantuan Sosial, bersifat sementara, tidak terus-menerus, tidak mengikat dan tidak wajib.</p>\r\n<p>HIBAH, yaitu program bantuan dana berkelanjutan dan terikat yang diberikan oleh pemerintah untuk setiap pengajuan proyek kreatif dari Lembaga Sosial Masyarakat (Non-Government Organitation atau NGO).</p>\r\n<h2>TAHAPAN SABILULUNGAN</h2>\r\n<p>Setiap masyarakat atau organisasi di kota Bandung yang ingin mengajukan proposal hibah bansos melalui Sabilulungan cukup mendaftarkan melalui aplikasi dan mengirimkan kelengkapan dokumen secara langsung, setelah itu Pemerintah Kota Bandung akan memverifikasi. Tahapan verifikasi selengkapnya sebagai berikut:</p>\r\n<ol><li><p>Masyarakat mendaftarkan proposal hibah bansos secara online melalui aplikasi Sabilulungan</p>\r\n</li>\r\n<li><p>Masyarakat menyerahkan kelengkapan dokumen secara langsung kepada Pemerintah Kota Bandung</p>\r\n</li>\r\n<li><p>TU Pimpinan akan memverifikasi kelengkapan proposal dan dokumen pendukung proposal tersebut</p>\r\n</li>\r\n<li><p>Walikota/wakil walikota akan memverifikasi proposal tersebut</p>\r\n</li>\r\n<li><p>Tim pertimbangan akan memverifikasi proposal dan mendisposisi proposal kepada SKPD (Satuan Kerja Perangkat Daerah) terkait</p>\r\n</li>\r\n<li><p>SKPD terkait akan memeriksa proposal tersebut dan memberikan rekomendasi besaran dana yang diusulkan untuk diberikan</p>\r\n</li>\r\n<li><p>Tim pertimbangan akan memeriksa usulan dana dari SKPD dan juga memberikan rekomendasi besaran dana yang diusulkan untuk diberikan</p>\r\n</li>\r\n<li><p>TAPD (Tim Anggaran Pemerintah Daerah) akan memeriksa usulan dana dari SKPD dan tim pertimbangan untuk kemudian memberikan rekomendasi final dana yang akan diberikan. Selanjutnya, seluruh proposal yang diberikan rekomendasi dana akan dikumpulkan dalam dokumen Daftar Nominatif Calon Penerima Belanja Hibah (DNC PBH)</p>\r\n</li>\r\n<li><p>Walikota/wakil walikota akan memeriksa DNC PBH. Apabila disetujui maka proposal-proposal yang termasuk dalam DNC PBH tersebut siap berjalan</p>\r\n</li>\r\n</ol>\r\n', '2', NULL, NULL),
('tentang', 2, NULL, '1ed40192f33a9a88fc2d166b11b079f6.jpg', '1', NULL, NULL),
('tentang', 3, NULL, '32596594590ef13591cc4c4a403dd69b.jpg', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `flow`
--

CREATE TABLE `flow` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `role_id` tinyint UNSIGNED NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `flow`
--

INSERT INTO `flow` (`id`, `name`, `role_id`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'Pemeriksaan Kelengkapan oleh Bagian TU', 5, 1, NULL, NULL),
(2, 'Pemeriksaan oleh Walikota', 1, 2, NULL, NULL),
(3, 'Klasifikasi sesuai SKPD oleh Tim Pertimbangan', 4, 3, NULL, NULL),
(4, 'Rekomendasi Dana oleh SKPD', 3, 4, NULL, NULL),
(5, 'Verifikasi Proposal oleh Tim Pertimbangan', 4, 5, NULL, NULL),
(6, 'Verifikasi Proposal oleh TAPD', 2, 6, NULL, NULL),
(7, 'Proyek Berjalan', 1, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `laporan_id` int UNSIGNED NOT NULL,
  `tahun` int UNSIGNED NOT NULL,
  `anggaran` decimal(18,2) NOT NULL,
  `realisasi_rp` decimal(18,2) NOT NULL,
  `realisasi_persen` float NOT NULL,
  `penerima_cair` int UNSIGNED NOT NULL,
  `penerima_lapor` int UNSIGNED NOT NULL,
  `nilai_lapor` decimal(18,2) NOT NULL,
  `file` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `log_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `activity` varchar(25) NOT NULL,
  `id` varchar(25) DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`log_id`, `user_id`, `activity`, `id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'login', NULL, '::1', NULL, NULL),
(2, 1, 'logout', NULL, '::1', NULL, NULL),
(3, 1, 'login', NULL, '::1', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `pengumuman_id` int NOT NULL,
  `judul` varchar(250) NOT NULL,
  `konten` longtext NOT NULL,
  `fl_aktif` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal`
--

CREATE TABLE `proposal` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `user` varchar(256) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `judul` varchar(256) NOT NULL,
  `latar_belakang` text NOT NULL,
  `maksud_tujuan` text NOT NULL,
  `address` varchar(512) NOT NULL,
  `file` varchar(64) DEFAULT NULL,
  `nphd` varchar(64) DEFAULT NULL,
  `foto` varchar(64) DEFAULT NULL,
  `type_id` tinyint UNSIGNED DEFAULT NULL,
  `skpd_id` int UNSIGNED DEFAULT NULL,
  `time_entry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_lpj` date DEFAULT NULL,
  `current_stat` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_approval`
--

CREATE TABLE `proposal_approval` (
  `proposal_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `flow_id` int UNSIGNED DEFAULT NULL,
  `action` enum('1','2') NOT NULL COMMENT '1=Approve, 2=Reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_approval_history`
--

CREATE TABLE `proposal_approval_history` (
  `proposal_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `flow_id` int UNSIGNED DEFAULT NULL,
  `role_id` tinyint UNSIGNED NOT NULL,
  `action` enum('1','2') NOT NULL COMMENT '1=Approve, 2=Reject',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_checklist`
--

CREATE TABLE `proposal_checklist` (
  `proposal_id` int UNSIGNED NOT NULL,
  `checklist_id` int UNSIGNED NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_dana`
--

CREATE TABLE `proposal_dana` (
  `proposal_id` int UNSIGNED NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `description` varchar(256) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `correction` decimal(18,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_lpj`
--

CREATE TABLE `proposal_lpj` (
  `proposal_id` int UNSIGNED NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `path` varchar(64) NOT NULL,
  `type` enum('1','2') NOT NULL COMMENT '1:image, 2:video',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_photo`
--

CREATE TABLE `proposal_photo` (
  `proposal_id` int UNSIGNED NOT NULL,
  `sequence` int UNSIGNED NOT NULL,
  `path` varchar(64) NOT NULL,
  `is_nphd` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `proposal_type`
--

CREATE TABLE `proposal_type` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `proposal_type`
--

INSERT INTO `proposal_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hibah', NULL, NULL),
(2, 'Bansos', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Walikota'),
(2, 'Tim Panitia Anggaran Daerah'),
(3, 'SKPD'),
(4, 'Tim Pertimbangan'),
(5, 'Tata Usaha'),
(6, 'Warga'),
(7, 'Administrator'),
(8, 'Operator'),
(9, 'Super Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skpd`
--

CREATE TABLE `skpd` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skpd`
--

INSERT INTO `skpd` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Perencanaan Pembangunan', NULL, NULL),
(2, 'Lingkungan Hidup', NULL, NULL),
(3, 'Pemberdayaan Perempuan dan Perlindungan Anak', NULL, NULL),
(4, 'Kesatuan Bangsa dan Politik dalam Negeri', NULL, NULL),
(5, 'Penanaman Modal', NULL, NULL),
(6, 'Pendidikan', NULL, NULL),
(7, 'Kesehatan', NULL, NULL),
(8, 'Pekerjaan Umum Bidang Jalan dan Jemabatan', NULL, NULL),
(9, 'Perumahan dan Urusan Penataan Ruang', NULL, NULL),
(10, 'Perhubungan', NULL, NULL),
(11, 'Kependudukan dan Catatn Sipil', NULL, NULL),
(12, 'Sosial, Keagamaan/Peribadatan dan Pendidikan Agama', NULL, NULL),
(13, 'Kesejahteraan Sosial', NULL, NULL),
(14, 'Ketenagakerjaan', NULL, NULL),
(15, 'Koperasi dan Usaha Kecil Menengah', NULL, NULL),
(16, 'Kepemudaan dan Olah Raga Non Profesional', NULL, NULL),
(17, 'Kebudayaan dan Adat Istiadat, Pariwisata dan Kesenian', NULL, NULL),
(18, 'Komunikasi dan Informatika', NULL, NULL),
(19, 'Pertanian', NULL, NULL),
(20, 'Otonomi Daerah dan Pemerintahan Umum', NULL, NULL),
(21, 'Perusahaan Daerah dan Perekonomian', NULL, NULL),
(22, 'Kearsipan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `address` varchar(512) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `ktp` varchar(64) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` tinyint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_skpd` bit(1) NOT NULL DEFAULT b'0',
  `skpd_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `address`, `phone`, `ktp`, `password`, `role_id`, `is_active`, `is_skpd`, `skpd_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'superadmin@sabilulungan.com', '', NULL, NULL, '$2y$10$3oSqvAHoEFxzrmorzRtzWefBLM1A2FM5NLKk6qrALvrIIFrfKqfAC', 9, 1, b'0', NULL, NULL, NULL),
(32, 'nizam', 'nizam@gmail.com', 'asfsa', '0912411', '12412', '$2y$10$3oSqvAHoEFxzrmorzRtzWefBLM1A2FM5NLKk6qrALvrIIFrfKqfAC', 6, 1, b'0', NULL, '2023-11-03 03:08:09', '2023-11-03 03:08:09'),
(33, 'adi', 'adi@gmail.com', 'asfsa', '12421121', '01251221', '$2y$10$SlkUAK5wP/OPw0mPsFkcHu7lwokqiomYRllh9iRoNuRGPi8K7Ew66', 6, 1, b'0', NULL, '2023-11-03 03:31:37', '2023-11-03 03:31:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `cms`
--
ALTER TABLE `cms`
  ADD UNIQUE KEY `page_id` (`page_id`,`sequence`);

--
-- Indeks untuk tabel `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sequence` (`sequence`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`laporan_id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `skpd_id` (`skpd_id`),
  ADD KEY `current_stat` (`current_stat`);

--
-- Indeks untuk tabel `proposal_approval`
--
ALTER TABLE `proposal_approval`
  ADD KEY `proposal_id` (`proposal_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flow_id` (`flow_id`);

--
-- Indeks untuk tabel `proposal_approval_history`
--
ALTER TABLE `proposal_approval_history`
  ADD KEY `proposal_id` (`proposal_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `flow_id` (`flow_id`);

--
-- Indeks untuk tabel `proposal_checklist`
--
ALTER TABLE `proposal_checklist`
  ADD UNIQUE KEY `proposal_id` (`proposal_id`,`checklist_id`),
  ADD KEY `checklist_id` (`checklist_id`);

--
-- Indeks untuk tabel `proposal_dana`
--
ALTER TABLE `proposal_dana`
  ADD UNIQUE KEY `proposal_id` (`proposal_id`,`sequence`);

--
-- Indeks untuk tabel `proposal_lpj`
--
ALTER TABLE `proposal_lpj`
  ADD UNIQUE KEY `proposal_id` (`proposal_id`,`sequence`);

--
-- Indeks untuk tabel `proposal_photo`
--
ALTER TABLE `proposal_photo`
  ADD UNIQUE KEY `proposal_id` (`proposal_id`,`sequence`);

--
-- Indeks untuk tabel `proposal_type`
--
ALTER TABLE `proposal_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skpd`
--
ALTER TABLE `skpd`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ktp` (`ktp`),
  ADD KEY `skpd_id` (`skpd_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `flow`
--
ALTER TABLE `flow`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `laporan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `pengumuman_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `proposal_type`
--
ALTER TABLE `proposal_type`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `skpd`
--
ALTER TABLE `skpd`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `checklist_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `flow`
--
ALTER TABLE `flow`
  ADD CONSTRAINT `flow_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `proposal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `proposal_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_ibfk_3` FOREIGN KEY (`skpd_id`) REFERENCES `skpd` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_ibfk_4` FOREIGN KEY (`current_stat`) REFERENCES `flow` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_approval`
--
ALTER TABLE `proposal_approval`
  ADD CONSTRAINT `proposal_approval_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_approval_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_approval_ibfk_3` FOREIGN KEY (`flow_id`) REFERENCES `flow` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_approval_history`
--
ALTER TABLE `proposal_approval_history`
  ADD CONSTRAINT `proposal_approval_history_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_approval_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_approval_history_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_approval_history_ibfk_4` FOREIGN KEY (`flow_id`) REFERENCES `flow` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_checklist`
--
ALTER TABLE `proposal_checklist`
  ADD CONSTRAINT `proposal_checklist_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposal_checklist_ibfk_2` FOREIGN KEY (`checklist_id`) REFERENCES `checklist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_dana`
--
ALTER TABLE `proposal_dana`
  ADD CONSTRAINT `proposal_dana_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_lpj`
--
ALTER TABLE `proposal_lpj`
  ADD CONSTRAINT `proposal_lpj_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `proposal_photo`
--
ALTER TABLE `proposal_photo`
  ADD CONSTRAINT `proposal_photo_ibfk_1` FOREIGN KEY (`proposal_id`) REFERENCES `proposal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`skpd_id`) REFERENCES `skpd` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
