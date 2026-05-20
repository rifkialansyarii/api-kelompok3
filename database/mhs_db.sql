-- phpMyAdmin SQL Dump (Updated v2)
-- Perubahan:
-- 1. id_mahasiswa pakai UUID() otomatis via variable
-- 2. Kolom yang datanya dari kelompok lain dikosongkan (NULL)
-- 3. Data dikurangi jadi 40 baris

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- ============================================================
-- Generate UUID untuk 40 mahasiswa
-- ============================================================
SET @m01 = UUID(); SET @m02 = UUID(); SET @m03 = UUID(); SET @m04 = UUID(); SET @m05 = UUID();
SET @m06 = UUID(); SET @m07 = UUID(); SET @m08 = UUID(); SET @m09 = UUID(); SET @m10 = UUID();
SET @m11 = UUID(); SET @m12 = UUID(); SET @m13 = UUID(); SET @m14 = UUID(); SET @m15 = UUID();
SET @m16 = UUID(); SET @m17 = UUID(); SET @m18 = UUID(); SET @m19 = UUID(); SET @m20 = UUID();
SET @m21 = UUID(); SET @m22 = UUID(); SET @m23 = UUID(); SET @m24 = UUID(); SET @m25 = UUID();
SET @m26 = UUID(); SET @m27 = UUID(); SET @m28 = UUID(); SET @m29 = UUID(); SET @m30 = UUID();
SET @m31 = UUID(); SET @m32 = UUID(); SET @m33 = UUID(); SET @m34 = UUID(); SET @m35 = UUID();
SET @m36 = UUID(); SET @m37 = UUID(); SET @m38 = UUID(); SET @m39 = UUID(); SET @m40 = UUID();

-- ============================================================
-- Tabel mahasiswa
-- Kolom dari kelompok lain dikosongkan (NULL):
--   id_dosen (kelompok2), tahunakademik_id (kelompok1),
--   kurikulum_kode (kelompok1), jurusan_id (kelompok1),
--   prodi_id (kelompok1), id_keuangan_mhs (kelompok4)
-- ============================================================

CREATE TABLE `mahasiswa` (
  `id_mahasiswa`    char(36)    NOT NULL,
  `nim`             varchar(20) NOT NULL,
  `nama_mahasiswa`  varchar(100) NOT NULL,
  `tahunakademik_id` int(11)    DEFAULT NULL,
  `kurikulum_kode`  char(12)    DEFAULT NULL,
  `id_keuangan_mhs` varchar(20)    DEFAULT NULL,
  `id_dosen`        char(36)    DEFAULT NULL,
  `jurusan_id`      int(11)     DEFAULT NULL,
  `prodi_id`        int(11)     DEFAULT NULL,
  `jalur_pendaftaran` enum('SNBP','SNBT','Mandiri','Prestasi','Kerja Sama','Lainnya') DEFAULT NULL,
  `gelombang`       varchar(50) DEFAULT NULL,
  `tanggal_awal_masuk`   date  DEFAULT NULL,
  `tanggal_daftar_ulang` date  DEFAULT NULL,
  `is_kebutuhan_khusus`  tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama_mahasiswa`, `tahunakademik_id`, `kurikulum_kode`, `id_keuangan_mhs`, `id_dosen`, `jurusan_id`, `prodi_id`, `jalur_pendaftaran`, `gelombang`, `tanggal_awal_masuk`, `tanggal_daftar_ulang`, `is_kebutuhan_khusus`) VALUES
(@m01, 'C030124001', 'Andi Pratama',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2024-08-19', '2024-08-02', 0),
(@m02, 'C030125002', 'Siti Nurhaliza',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2025-08-18', '2025-08-03', 0),
(@m03, 'C030223003', 'Rizky Saputra',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-04', 0),
(@m04, 'C030224004', 'Maya Lestari',        NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2024-08-19', '2024-08-05', 0),
(@m05, 'C030325005', 'Fajar Ramadhan',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2025-08-18', '2025-08-01', 0),
(@m06, 'C030323006', 'Nadia Putri',         NULL, NULL, NULL, NULL, NULL, NULL, 'Prestasi',  'Gelombang 1', '2023-08-21', '2023-08-02', 0),
(@m07, 'C030425007', 'Bagas Nugroho',       NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2025-08-18', '2025-08-03', 0),
(@m08, 'C030422008', 'Dewi Anggraini',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2022-08-22', '2022-08-04', 0),
(@m09, 'C030523009', 'Ilham Maulana',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-05', 0),
(@m10, 'C030524010', 'Aulia Rahmawati',     NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2024-08-19', '2024-08-01', 0),
(@m11, 'M040125011', 'Yoga Firmansyah',     NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2025-08-18', '2025-08-02', 0),
(@m12, 'M040123012', 'Putri Amalia',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2023-08-21', '2023-08-03', 0),
(@m13, 'M040224013', 'Dimas Arya',          NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2024-08-19', '2024-08-04', 0),
(@m14, 'M040225014', 'Laras Permata',       NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2025-08-18', '2025-08-05', 0),
(@m15, 'M040323015', 'Rafi Kurniawan',      NULL, NULL, NULL, NULL, NULL, NULL, 'Kerja Sama','Gelombang 1', '2023-08-21', '2023-08-01', 0),
(@m16, 'M040324016', 'Nabila Zahra',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2024-08-19', '2024-08-02', 0),
(@m17, 'M040423017', 'Reza Alfarizi',       NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2023-08-21', '2023-08-03', 0),
(@m18, 'M040424018', 'Intan Puspita',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2024-08-19', '2024-08-04', 0),
(@m19, 'M040525019', 'Arif Setiawan',       NULL, NULL, NULL, NULL, NULL, NULL, 'Kerja Sama','Gelombang 1', '2025-08-18', '2025-08-05', 0),
(@m20, 'M040524020', 'Melati Safitri',      NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2024-08-19', '2024-08-01', 0),
(@m21, 'E050123021', 'Hendra Wijaya',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-02', 0),
(@m22, 'E050124022', 'Citra Maharani',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2024-08-19', '2024-08-03', 0),
(@m23, 'E050225023', 'Kevin Ardiansyah',    NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2025-08-18', '2025-08-04', 0),
(@m24, 'E050223024', 'Salma Fitriani',      NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2023-08-21', '2023-08-05', 0),
(@m25, 'E050324025', 'Gilang Ramadhan',     NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2024-08-19', '2024-08-01', 0),
(@m26, 'E050325026', 'Anisa Maulida',       NULL, NULL, NULL, NULL, NULL, NULL, 'Prestasi',  'Gelombang 1', '2025-08-18', '2025-08-02', 0),
(@m27, 'E050425027', 'Farhan Hakim',        NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2025-08-18', '2025-08-03', 0),
(@m28, 'E050422028', 'Vina Oktaviani',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2022-08-22', '2022-08-04', 0),
(@m29, 'E050523029', 'Ridho Prakoso',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-05', 0),
(@m30, 'E050524030', 'Indah Sari',          NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2024-08-19', '2024-08-01', 0),
(@m31, 'E050625031', 'Agus Santoso',        NULL, NULL, NULL, NULL, NULL, NULL, 'Kerja Sama','Gelombang 1', '2025-08-18', '2025-08-02', 0),
(@m32, 'E050622032', 'Rani Wulandari',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2022-08-22', '2022-08-03', 0),
(@m33, 'A060123033', 'Bima Febrianto',      NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-04', 0),
(@m34, 'A060124034', 'Tiara Kusuma',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2024-08-19', '2024-08-05', 0),
(@m35, 'A060225035', 'Doni Saputra',        NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2025-08-18', '2025-08-01', 0),
(@m36, 'A060223036', 'Nisa Aprilia',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-02', 0),
(@m37, 'A060323037', 'Iqbal Maulana',       NULL, NULL, NULL, NULL, NULL, NULL, 'SNBT',      'Gelombang 1', '2023-08-21', '2023-08-03', 0),
(@m38, 'A060324038', 'Fira Natasya',        NULL, NULL, NULL, NULL, NULL, NULL, 'Prestasi',  'Gelombang 1', '2024-08-19', '2024-08-04', 0),
(@m39, 'A060423039', 'Aldi Pranata',        NULL, NULL, NULL, NULL, NULL, NULL, 'Mandiri',   'Gelombang 2', '2023-08-21', '2023-08-05', 0),
(@m40, 'A060424040', 'Yuni Kartika',        NULL, NULL, NULL, NULL, NULL, NULL, 'SNBP',      'Gelombang 1', '2024-08-19', '2024-08-01', 0);

-- ============================================================
-- Tabel biodata_mahasiswa
-- kode_negara dikosongkan (dari kelompok 2)
-- ============================================================

CREATE TABLE `biodata_mahasiswa` (
  `id_biodata`           int(11)      NOT NULL,
  `id_mahasiswa`         char(36)     NOT NULL,
  `jenis_kelamin`        enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `tempat_lahir`         varchar(100) DEFAULT NULL,
  `tanggal_lahir`        date         DEFAULT NULL,
  `agama`                enum('Islam','Kristen','Katolik','Hindu','Buddha','Konghucu','Lainnya') DEFAULT NULL,
  `suku`                 varchar(50)  DEFAULT NULL,
  `berat_badan`          int(11)      DEFAULT NULL,
  `tinggi_badan`         int(11)      DEFAULT NULL,
  `golongan_darah`       enum('A','B','AB','O','Belum Tahu') DEFAULT NULL,
  `transportasi`         enum('Kendaraan Umum','Sepeda','Motor','Mobil') DEFAULT NULL,
  `no_telepon`           varchar(20)  DEFAULT NULL,
  `no_hp`                varchar(20)  NOT NULL,
  `kepemilikan`          enum('Milik sendiri','Keluarga','Lainnya') DEFAULT NULL,
  `email_kampus`         varchar(255) DEFAULT NULL,
  `email_pribadi`        varchar(255) NOT NULL,
  `id_negara`            int(11)      DEFAULT NULL,
  `nik`                  varchar(16)  DEFAULT NULL,
  `paspor`               varchar(50)  DEFAULT NULL,
  `no_kk`                varchar(16)  DEFAULT NULL,
  `npwp`                 varchar(25)  DEFAULT NULL,
  `no_kps`               varchar(50)  DEFAULT NULL,
  `status_nikah`         enum('Lajang','Menikah') DEFAULT 'Lajang',
  `ukuran_jas_almamater` enum('S','M','L','XL','XXL','XXXL') DEFAULT NULL,
  `file_akta_kelahiran`  varchar(255) DEFAULT NULL,
  `updated_at`           timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `biodata_mahasiswa` (`id_biodata`, `id_mahasiswa`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `suku`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `transportasi`, `no_telepon`, `no_hp`, `kepemilikan`, `email_kampus`, `email_pribadi`, `id_negara`, `nik`, `paspor`, `no_kk`, `npwp`, `no_kps`, `status_nikah`, `ukuran_jas_almamater`, `file_akta_kelahiran`, `updated_at`) VALUES
(1,  @m01, 'Laki-Laki', 'Banjarmasin', '2006-02-02', 'Islam', 'Banjar', 49, 156, 'A',          'Motor',          '0511000001', '081200000001', 'Milik sendiri', 'c030124001@student.kampus.ac.id', 'c030124001@gmail.com', NULL, '6371000000000001', NULL, '6371000000000101', NULL, NULL, 'Lajang', 'M',    'uploads/akta/c030124001.pdf', '2026-05-05 14:23:50'),
(2,  @m02, 'Perempuan', 'Banjarmasin', '2007-03-03', 'Islam', 'Banjar', 50, 157, 'B',          'Sepeda',         '0511000002', '081200000002', 'Lainnya',       'c030125002@student.kampus.ac.id', 'c030125002@gmail.com', NULL, '6371000000000002', NULL, '6371000000000102', NULL, NULL, 'Lajang', 'L',    'uploads/akta/c030125002.pdf', '2026-05-05 14:23:50'),
(3,  @m03, 'Laki-Laki', 'Banjarmasin', '2005-04-04', 'Islam', 'Banjar', 51, 158, 'AB',         'Mobil',          '0511000003', '081200000003', 'Keluarga',      'c030223003@student.kampus.ac.id', 'c030223003@gmail.com', NULL, '6371000000000003', NULL, '6371000000000103', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/c030223003.pdf', '2026-05-05 14:23:50'),
(4,  @m04, 'Perempuan', 'Banjarmasin', '2006-05-05', 'Islam', 'Banjar', 52, 159, 'Belum Tahu', 'Kendaraan Umum', '0511000004', '081200000004', 'Milik sendiri', 'c030224004@student.kampus.ac.id', 'c030224004@gmail.com', NULL, '6371000000000004', NULL, '6371000000000104', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/c030224004.pdf', '2026-05-05 14:23:50'),
(5,  @m05, 'Laki-Laki', 'Banjarmasin', '2007-06-06', 'Islam', 'Banjar', 53, 160, 'O',          'Motor',          '0511000005', '081200000005', 'Lainnya',       'c030325005@student.kampus.ac.id', 'c030325005@gmail.com', NULL, '6371000000000005', NULL, '6371000000000105', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/c030325005.pdf', '2026-05-05 14:23:50'),
(6,  @m06, 'Perempuan', 'Banjarmasin', '2005-07-07', 'Islam', 'Banjar', 54, 161, 'A',          'Sepeda',         '0511000006', '081200000006', 'Keluarga',      'c030323006@student.kampus.ac.id', 'c030323006@gmail.com', NULL, '6371000000000006', NULL, '6371000000000106', NULL, NULL, 'Lajang', 'S',    'uploads/akta/c030323006.pdf', '2026-05-05 14:23:50'),
(7,  @m07, 'Laki-Laki', 'Banjarmasin', '2007-08-08', 'Islam', 'Banjar', 55, 162, 'B',          'Mobil',          '0511000007', '081200000007', 'Milik sendiri', 'c030425007@student.kampus.ac.id', 'c030425007@gmail.com', NULL, '6371000000000007', NULL, '6371000000000107', NULL, NULL, 'Lajang', 'M',    'uploads/akta/c030425007.pdf', '2026-05-05 14:23:50'),
(8,  @m08, 'Perempuan', 'Banjarmasin', '2004-09-09', 'Islam', 'Banjar', 56, 163, 'AB',         'Kendaraan Umum', '0511000008', '081200000008', 'Lainnya',       'c030422008@student.kampus.ac.id', 'c030422008@gmail.com', NULL, '6371000000000008', NULL, '6371000000000108', NULL, NULL, 'Lajang', 'L',    'uploads/akta/c030422008.pdf', '2026-05-05 14:23:50'),
(9,  @m09, 'Laki-Laki', 'Banjarmasin', '2005-10-10', 'Islam', 'Banjar', 57, 164, 'Belum Tahu', 'Motor',          '0511000009', '081200000009', 'Keluarga',      'c030523009@student.kampus.ac.id', 'c030523009@gmail.com', NULL, '6371000000000009', NULL, '6371000000000109', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/c030523009.pdf', '2026-05-05 14:23:50'),
(10, @m10, 'Perempuan', 'Banjarmasin', '2006-11-11', 'Islam', 'Banjar', 58, 165, 'O',          'Sepeda',         '0511000010', '081200000010', 'Milik sendiri', 'c030524010@student.kampus.ac.id', 'c030524010@gmail.com', NULL, '6371000000000010', NULL, '6371000000000110', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/c030524010.pdf', '2026-05-05 14:23:50'),
(11, @m11, 'Laki-Laki', 'Banjarbaru',  '2007-12-12', 'Islam', 'Banjar', 59, 166, 'A',          'Mobil',          '0511000011', '081200000011', 'Lainnya',       'm040125011@student.kampus.ac.id', 'm040125011@gmail.com', NULL, '6371000000000011', NULL, '6371000000000111', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/m040125011.pdf', '2026-05-05 14:23:50'),
(12, @m12, 'Perempuan', 'Banjarbaru',  '2005-01-13', 'Islam', 'Banjar', 60, 167, 'B',          'Kendaraan Umum', '0511000012', '081200000012', 'Keluarga',      'm040123012@student.kampus.ac.id', 'm040123012@gmail.com', NULL, '6371000000000012', NULL, '6371000000000112', NULL, NULL, 'Lajang', 'S',    'uploads/akta/m040123012.pdf', '2026-05-05 14:23:50'),
(13, @m13, 'Laki-Laki', 'Banjarbaru',  '2006-02-14', 'Islam', 'Banjar', 61, 168, 'AB',         'Motor',          '0511000013', '081200000013', 'Milik sendiri', 'm040224013@student.kampus.ac.id', 'm040224013@gmail.com', NULL, '6371000000000013', NULL, '6371000000000113', NULL, NULL, 'Lajang', 'M',    'uploads/akta/m040224013.pdf', '2026-05-05 14:23:50'),
(14, @m14, 'Perempuan', 'Banjarbaru',  '2007-03-15', 'Islam', 'Banjar', 62, 169, 'Belum Tahu', 'Sepeda',         '0511000014', '081200000014', 'Lainnya',       'm040225014@student.kampus.ac.id', 'm040225014@gmail.com', NULL, '6371000000000014', NULL, '6371000000000114', NULL, NULL, 'Lajang', 'L',    'uploads/akta/m040225014.pdf', '2026-05-05 14:23:50'),
(15, @m15, 'Laki-Laki', 'Banjarbaru',  '2005-04-16', 'Islam', 'Banjar', 63, 170, 'O',          'Mobil',          '0511000015', '081200000015', 'Keluarga',      'm040323015@student.kampus.ac.id', 'm040323015@gmail.com', NULL, '6371000000000015', NULL, '6371000000000115', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/m040323015.pdf', '2026-05-05 14:23:50'),
(16, @m16, 'Perempuan', 'Banjarbaru',  '2006-05-17', 'Islam', 'Banjar', 64, 171, 'A',          'Kendaraan Umum', '0511000016', '081200000016', 'Milik sendiri', 'm040324016@student.kampus.ac.id', 'm040324016@gmail.com', NULL, '6371000000000016', NULL, '6371000000000116', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/m040324016.pdf', '2026-05-05 14:23:50'),
(17, @m17, 'Laki-Laki', 'Banjarbaru',  '2005-06-18', 'Islam', 'Banjar', 65, 172, 'B',          'Motor',          '0511000017', '081200000017', 'Lainnya',       'm040423017@student.kampus.ac.id', 'm040423017@gmail.com', NULL, '6371000000000017', NULL, '6371000000000117', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/m040423017.pdf', '2026-05-05 14:23:50'),
(18, @m18, 'Perempuan', 'Banjarbaru',  '2006-07-19', 'Islam', 'Banjar', 66, 173, 'AB',         'Sepeda',         '0511000018', '081200000018', 'Keluarga',      'm040424018@student.kampus.ac.id', 'm040424018@gmail.com', NULL, '6371000000000018', NULL, '6371000000000118', NULL, NULL, 'Lajang', 'S',    'uploads/akta/m040424018.pdf', '2026-05-05 14:23:50'),
(19, @m19, 'Laki-Laki', 'Banjarbaru',  '2007-08-20', 'Islam', 'Banjar', 67, 174, 'Belum Tahu', 'Mobil',          '0511000019', '081200000019', 'Milik sendiri', 'm040525019@student.kampus.ac.id', 'm040525019@gmail.com', NULL, '6371000000000019', NULL, '6371000000000119', NULL, NULL, 'Lajang', 'M',    'uploads/akta/m040525019.pdf', '2026-05-05 14:23:50'),
(20, @m20, 'Perempuan', 'Banjarbaru',  '2006-09-21', 'Islam', 'Banjar', 68, 155, 'O',          'Kendaraan Umum', '0511000020', '081200000020', 'Lainnya',       'm040524020@student.kampus.ac.id', 'm040524020@gmail.com', NULL, '6371000000000020', NULL, '6371000000000120', NULL, NULL, 'Lajang', 'L',    'uploads/akta/m040524020.pdf', '2026-05-05 14:23:50'),
(21, @m21, 'Laki-Laki', 'Martapura',   '2005-10-22', 'Islam', 'Banjar', 69, 156, 'A',          'Motor',          '0511000021', '081200000021', 'Keluarga',      'e050123021@student.kampus.ac.id', 'e050123021@gmail.com', NULL, '6371000000000021', NULL, '6371000000000121', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/e050123021.pdf', '2026-05-05 14:23:50'),
(22, @m22, 'Perempuan', 'Martapura',   '2006-11-23', 'Islam', 'Banjar', 70, 157, 'B',          'Sepeda',         '0511000022', '081200000022', 'Milik sendiri', 'e050124022@student.kampus.ac.id', 'e050124022@gmail.com', NULL, '6371000000000022', NULL, '6371000000000122', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/e050124022.pdf', '2026-05-05 14:23:50'),
(23, @m23, 'Laki-Laki', 'Martapura',   '2007-12-24', 'Islam', 'Banjar', 71, 158, 'AB',         'Mobil',          '0511000023', '081200000023', 'Lainnya',       'e050225023@student.kampus.ac.id', 'e050225023@gmail.com', NULL, '6371000000000023', NULL, '6371000000000123', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/e050225023.pdf', '2026-05-05 14:23:50'),
(24, @m24, 'Perempuan', 'Martapura',   '2005-01-25', 'Islam', 'Banjar', 72, 159, 'Belum Tahu', 'Kendaraan Umum', '0511000024', '081200000024', 'Keluarga',      'e050223024@student.kampus.ac.id', 'e050223024@gmail.com', NULL, '6371000000000024', NULL, '6371000000000124', NULL, NULL, 'Lajang', 'S',    'uploads/akta/e050223024.pdf', '2026-05-05 14:23:50'),
(25, @m25, 'Laki-Laki', 'Martapura',   '2006-02-26', 'Islam', 'Banjar', 73, 160, 'O',          'Motor',          '0511000025', '081200000025', 'Milik sendiri', 'e050324025@student.kampus.ac.id', 'e050324025@gmail.com', NULL, '6371000000000025', NULL, '6371000000000125', NULL, NULL, 'Lajang', 'M',    'uploads/akta/e050324025.pdf', '2026-05-05 14:23:50'),
(26, @m26, 'Perempuan', 'Martapura',   '2007-03-27', 'Islam', 'Banjar', 74, 161, 'A',          'Sepeda',         '0511000026', '081200000026', 'Lainnya',       'e050325026@student.kampus.ac.id', 'e050325026@gmail.com', NULL, '6371000000000026', NULL, '6371000000000126', NULL, NULL, 'Lajang', 'L',    'uploads/akta/e050325026.pdf', '2026-05-05 14:23:50'),
(27, @m27, 'Laki-Laki', 'Martapura',   '2007-04-01', 'Islam', 'Banjar', 75, 162, 'B',          'Mobil',          '0511000027', '081200000027', 'Keluarga',      'e050425027@student.kampus.ac.id', 'e050425027@gmail.com', NULL, '6371000000000027', NULL, '6371000000000127', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/e050425027.pdf', '2026-05-05 14:23:50'),
(28, @m28, 'Perempuan', 'Martapura',   '2004-05-02', 'Islam', 'Banjar', 76, 163, 'AB',         'Kendaraan Umum', '0511000028', '081200000028', 'Milik sendiri', 'e050422028@student.kampus.ac.id', 'e050422028@gmail.com', NULL, '6371000000000028', NULL, '6371000000000128', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/e050422028.pdf', '2026-05-05 14:23:50'),
(29, @m29, 'Laki-Laki', 'Martapura',   '2005-06-03', 'Islam', 'Banjar', 77, 164, 'Belum Tahu', 'Motor',          '0511000029', '081200000029', 'Lainnya',       'e050523029@student.kampus.ac.id', 'e050523029@gmail.com', NULL, '6371000000000029', NULL, '6371000000000129', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/e050523029.pdf', '2026-05-05 14:23:50'),
(30, @m30, 'Perempuan', 'Martapura',   '2006-07-04', 'Islam', 'Banjar', 78, 165, 'O',          'Sepeda',         '0511000030', '081200000030', 'Keluarga',      'e050524030@student.kampus.ac.id', 'e050524030@gmail.com', NULL, '6371000000000030', NULL, '6371000000000130', NULL, NULL, 'Lajang', 'S',    'uploads/akta/e050524030.pdf', '2026-05-05 14:23:50'),
(31, @m31, 'Laki-Laki', 'Martapura',   '2007-08-05', 'Islam', 'Banjar', 79, 166, 'A',          'Mobil',          '0511000031', '081200000031', 'Milik sendiri', 'e050625031@student.kampus.ac.id', 'e050625031@gmail.com', NULL, '6371000000000031', NULL, '6371000000000131', NULL, NULL, 'Lajang', 'M',    'uploads/akta/e050625031.pdf', '2026-05-05 14:23:50'),
(32, @m32, 'Perempuan', 'Martapura',   '2004-09-06', 'Islam', 'Banjar', 80, 167, 'B',          'Kendaraan Umum', '0511000032', '081200000032', 'Lainnya',       'e050622032@student.kampus.ac.id', 'e050622032@gmail.com', NULL, '6371000000000032', NULL, '6371000000000132', NULL, NULL, 'Lajang', 'L',    'uploads/akta/e050622032.pdf', '2026-05-05 14:23:50'),
(33, @m33, 'Laki-Laki', 'Kandangan',   '2005-10-07', 'Islam', 'Banjar', 81, 168, 'AB',         'Motor',          '0511000033', '081200000033', 'Keluarga',      'a060123033@student.kampus.ac.id', 'a060123033@gmail.com', NULL, '6371000000000033', NULL, '6371000000000133', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/a060123033.pdf', '2026-05-05 14:23:50'),
(34, @m34, 'Perempuan', 'Kandangan',   '2006-11-08', 'Islam', 'Banjar', 82, 169, 'Belum Tahu', 'Sepeda',         '0511000034', '081200000034', 'Milik sendiri', 'a060124034@student.kampus.ac.id', 'a060124034@gmail.com', NULL, '6371000000000034', NULL, '6371000000000134', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/a060124034.pdf', '2026-05-05 14:23:50'),
(35, @m35, 'Laki-Laki', 'Kandangan',   '2007-12-09', 'Islam', 'Banjar', 83, 170, 'O',          'Mobil',          '0511000035', '081200000035', 'Lainnya',       'a060225035@student.kampus.ac.id', 'a060225035@gmail.com', NULL, '6371000000000035', NULL, '6371000000000135', NULL, NULL, 'Lajang', 'XXXL', 'uploads/akta/a060225035.pdf', '2026-05-05 14:23:50'),
(36, @m36, 'Perempuan', 'Kandangan',   '2005-01-10', 'Islam', 'Banjar', 84, 171, 'A',          'Kendaraan Umum', '0511000036', '081200000036', 'Keluarga',      'a060223036@student.kampus.ac.id', 'a060223036@gmail.com', NULL, '6371000000000036', NULL, '6371000000000136', NULL, NULL, 'Lajang', 'S',    'uploads/akta/a060223036.pdf', '2026-05-05 14:23:50'),
(37, @m37, 'Laki-Laki', 'Kandangan',   '2005-02-11', 'Islam', 'Banjar', 85, 172, 'B',          'Motor',          '0511000037', '081200000037', 'Milik sendiri', 'a060323037@student.kampus.ac.id', 'a060323037@gmail.com', NULL, '6371000000000037', NULL, '6371000000000137', NULL, NULL, 'Lajang', 'M',    'uploads/akta/a060323037.pdf', '2026-05-05 14:23:50'),
(38, @m38, 'Perempuan', 'Kandangan',   '2006-03-12', 'Islam', 'Banjar', 86, 173, 'AB',         'Sepeda',         '0511000038', '081200000038', 'Lainnya',       'a060324038@student.kampus.ac.id', 'a060324038@gmail.com', NULL, '6371000000000038', NULL, '6371000000000138', NULL, NULL, 'Lajang', 'L',    'uploads/akta/a060324038.pdf', '2026-05-05 14:23:50'),
(39, @m39, 'Laki-Laki', 'Kandangan',   '2005-04-13', 'Islam', 'Banjar', 87, 174, 'Belum Tahu', 'Mobil',          '0511000039', '081200000039', 'Keluarga',      'a060423039@student.kampus.ac.id', 'a060423039@gmail.com', NULL, '6371000000000039', NULL, '6371000000000139', NULL, NULL, 'Lajang', 'XL',   'uploads/akta/a060423039.pdf', '2026-05-05 14:23:50'),
(40, @m40, 'Perempuan', 'Kandangan',   '2006-05-14', 'Islam', 'Banjar', 88, 155, 'O',          'Kendaraan Umum', '0511000040', '081200000040', 'Milik sendiri', 'a060424040@student.kampus.ac.id', 'a060424040@gmail.com', NULL, '6371000000000040', NULL, '6371000000000140', NULL, NULL, 'Lajang', 'XXL',  'uploads/akta/a060424040.pdf', '2026-05-05 14:23:50');

-- ============================================================
-- Tabel alamat_mahasiswa
-- kode_kelurahan, kode_kecamatan, kode_kota, kode_provinsi
-- dikosongkan karena dari kelompok 2
-- ============================================================

CREATE TABLE `alamat_mahasiswa` (
  `id_alamat`              int(11)   NOT NULL,
  `id_mahasiswa`           char(36)  NOT NULL,
  `alamat_ktp`             text      NOT NULL,
  `rt_ktp`                 varchar(5)  DEFAULT NULL,
  `rw_ktp`                 varchar(5)  DEFAULT NULL,
  `dusun_ktp`              varchar(100) DEFAULT NULL,
  `id_kelurahan_ktp`     int(11)   DEFAULT NULL,
  `id_kecamatan_ktp`     int(11)   DEFAULT NULL,
  `id_kota_ktp`          int(11)   DEFAULT NULL,
  `id_provinsi_ktp`      int(11)   DEFAULT NULL,
  `kode_pos_ktp`           varchar(10) NOT NULL,
  `is_domisili_sesuai_ktp` tinyint(1)  DEFAULT 0,
  `alamat_domisili`        text      DEFAULT NULL,
  `rt_domisili`            varchar(5)  DEFAULT NULL,
  `rw_domisili`            varchar(5)  DEFAULT NULL,
  `dusun_domisili`         varchar(100) DEFAULT NULL,
  `id_kelurahan_domisili`  int(11)  DEFAULT NULL,
  `id_kecamatan_domisili`  int(11)  DEFAULT NULL,
  `id_kota_domisili`      int(11)   DEFAULT NULL,
  `id_provinsi_domisili`  int(11)   DEFAULT NULL,
  `kode_pos_domisili`      varchar(10) DEFAULT NULL,
  `status_tinggal`         enum('Orang Tua','Kos','Asrama','Kontrak','Lainnya') DEFAULT NULL,
  `updated_at`             timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `alamat_mahasiswa` (`id_alamat`, `id_mahasiswa`, `alamat_ktp`, `rt_ktp`, `rw_ktp`, `dusun_ktp`, `id_kelurahan_ktp`, `id_kecamatan_ktp`, `id_kota_ktp`, `id_provinsi_ktp`, `kode_pos_ktp`, `is_domisili_sesuai_ktp`, `alamat_domisili`, `rt_domisili`, `rw_domisili`, `dusun_domisili`, `id_kelurahan_domisili`, `id_kecamatan_domisili`, `id_kota_domisili`, `id_provinsi_domisili`, `kode_pos_domisili`, `status_tinggal`, `updated_at`) VALUES
(1,  @m01, 'Jl. Belitung Darat Gang Keluarga No. 12, Banjarmasin',      '02','02',NULL,          NULL,NULL,NULL,NULL,'70116',1,'Jl. Belitung Darat Gang Keluarga No. 12, Banjarmasin',      '02','02',NULL,NULL,NULL,NULL,NULL,'70116','Orang Tua','2026-05-05 14:44:52'),
(2,  @m02, 'Jl. Sultan Adam Komplek Mandiri Permai Blok B No. 8, Bjm',  '03','03',NULL,          NULL,NULL,NULL,NULL,'70122',1,'Jl. Sultan Adam Komplek Mandiri Permai Blok B No. 8, Bjm',  '03','03',NULL,NULL,NULL,NULL,NULL,'70122','Orang Tua','2026-05-05 14:44:52'),
(3,  @m03, 'Jl. Pramuka Komplek Semanda No. 21, Banjarmasin',           '04','04',NULL,          NULL,NULL,NULL,NULL,'70238',1,'Jl. Pramuka Komplek Semanda No. 21, Banjarmasin',           '04','04',NULL,NULL,NULL,NULL,NULL,'70238','Orang Tua','2026-05-05 14:44:52'),
(4,  @m04, 'Jl. Kelayan A Gang Setia No. 14, Banjarmasin',              '05','05',NULL,          NULL,NULL,NULL,NULL,'70242',1,'Jl. Kelayan A Gang Setia No. 14, Banjarmasin',              '05','05',NULL,NULL,NULL,NULL,NULL,'70242','Orang Tua','2026-05-05 14:44:52'),
(5,  @m05, 'Jl. Cempaka Besar No. 31, Banjarmasin',                     '06','06',NULL,          NULL,NULL,NULL,NULL,'70111',1,'Jl. Cempaka Besar No. 31, Banjarmasin',                     '06','06',NULL,NULL,NULL,NULL,NULL,'70111','Orang Tua','2026-05-05 14:44:52'),
(6,  @m06, 'Jl. Kuin Selatan Gang Hikmah No. 9, Banjarmasin',           '07','01',NULL,          NULL,NULL,NULL,NULL,'70128',1,'Jl. Kuin Selatan Gang Hikmah No. 9, Banjarmasin',           '07','01',NULL,NULL,NULL,NULL,NULL,'70128','Orang Tua','2026-05-05 14:44:52'),
(7,  @m07, 'Jl. Veteran Gang Baru No. 17, Banjarmasin',                 '08','02',NULL,          NULL,NULL,NULL,NULL,'70236',1,'Jl. Veteran Gang Baru No. 17, Banjarmasin',                 '08','02',NULL,NULL,NULL,NULL,NULL,'70236','Orang Tua','2026-05-05 14:44:52'),
(8,  @m08, 'Jl. Gatot Subroto Komplek Bumi Mas No. 44, Banjarmasin',    '09','03',NULL,          NULL,NULL,NULL,NULL,'70235',1,'Jl. Gatot Subroto Komplek Bumi Mas No. 44, Banjarmasin',    '09','03',NULL,NULL,NULL,NULL,NULL,'70235','Orang Tua','2026-05-05 14:44:52'),
(9,  @m09, 'Jl. Bumi Mas Raya Gang Sejahtera No. 6, Banjarmasin',       '01','04',NULL,          NULL,NULL,NULL,NULL,'70249',1,'Jl. Bumi Mas Raya Gang Sejahtera No. 6, Banjarmasin',       '01','04',NULL,NULL,NULL,NULL,NULL,'70249','Orang Tua','2026-05-05 14:44:52'),
(10, @m10, 'Jl. Sungai Andai Komplek Herlina Perkasa Blok C No. 18',    '02','05',NULL,          NULL,NULL,NULL,NULL,'70122',1,'Jl. Sungai Andai Komplek Herlina Perkasa Blok C No. 18',    '02','05',NULL,NULL,NULL,NULL,NULL,'70122','Orang Tua','2026-05-05 14:44:52'),
(11, @m11, 'Jl. Banua Anyar No. 27, Banjarmasin',                       '03','06',NULL,          NULL,NULL,NULL,NULL,'70239',1,'Jl. Banua Anyar No. 27, Banjarmasin',                       '03','06',NULL,NULL,NULL,NULL,NULL,'70239','Orang Tua','2026-05-05 14:44:52'),
(12, @m12, 'Jl. Antasan Kecil Timur Gang Sahabat No. 5, Banjarmasin',   '04','01',NULL,          NULL,NULL,NULL,NULL,'70123',1,'Jl. Antasan Kecil Timur Gang Sahabat No. 5, Banjarmasin',   '04','01',NULL,NULL,NULL,NULL,NULL,'70123','Orang Tua','2026-05-05 14:44:52'),
(13, @m13, 'Jl. Simpang Telawang No. 33, Banjarmasin',                  '05','02',NULL,          NULL,NULL,NULL,NULL,'70114',1,'Jl. Simpang Telawang No. 33, Banjarmasin',                  '05','02',NULL,NULL,NULL,NULL,NULL,'70114','Orang Tua','2026-05-05 14:44:52'),
(14, @m14, 'Jl. HKSN Komplek AMD Permai Blok D No. 11, Banjarmasin',    '06','03',NULL,          NULL,NULL,NULL,NULL,'70125',1,'Jl. HKSN Komplek AMD Permai Blok D No. 11, Banjarmasin',    '06','03',NULL,NULL,NULL,NULL,NULL,'70125','Orang Tua','2026-05-05 14:44:52'),
(15, @m15, 'Jl. Pangeran Antasari Gang Melati No. 19, Banjarmasin',     '07','04',NULL,          NULL,NULL,NULL,NULL,'70234',1,'Jl. Pangeran Antasari Gang Melati No. 19, Banjarmasin',     '07','04',NULL,NULL,NULL,NULL,NULL,'70234','Orang Tua','2026-05-05 14:44:52'),
(16, @m16, 'Jl. Cemara Raya Komplek Kayu Tangi II No. 23, Banjarmasin', '08','05',NULL,          NULL,NULL,NULL,NULL,'70123',1,'Jl. Cemara Raya Komplek Kayu Tangi II No. 23, Banjarmasin', '08','05',NULL,NULL,NULL,NULL,NULL,'70123','Orang Tua','2026-05-05 14:44:52'),
(17, @m17, 'Jl. Teluk Dalam Gang Amanah No. 7, Banjarmasin',            '09','06',NULL,          NULL,NULL,NULL,NULL,'70115',1,'Jl. Teluk Dalam Gang Amanah No. 7, Banjarmasin',            '09','06',NULL,NULL,NULL,NULL,NULL,'70115','Orang Tua','2026-05-05 14:44:52'),
(18, @m18, 'Jl. Sutoyo S Komplek Pelangi No. 20, Banjarmasin',          '01','01',NULL,          NULL,NULL,NULL,NULL,'70119',1,'Jl. Sutoyo S Komplek Pelangi No. 20, Banjarmasin',          '01','01',NULL,NULL,NULL,NULL,NULL,'70119','Orang Tua','2026-05-05 14:44:52'),
(19, @m19, 'Jl. Rantauan Darat Gang Bersama No. 16, Banjarmasin',       '02','02',NULL,          NULL,NULL,NULL,NULL,'70243',1,'Jl. Rantauan Darat Gang Bersama No. 16, Banjarmasin',       '02','02',NULL,NULL,NULL,NULL,NULL,'70243','Orang Tua','2026-05-05 14:44:52'),
(20, @m20, 'Jl. Tembus Mantuil No. 29, Banjarmasin',                    '03','03',NULL,          NULL,NULL,NULL,NULL,'70245',1,'Jl. Tembus Mantuil No. 29, Banjarmasin',                    '03','03',NULL,NULL,NULL,NULL,NULL,'70245','Orang Tua','2026-05-05 14:44:52'),
(21, @m21, 'Jl. Jahri Saleh Komplek Kenanga No. 10, Banjarmasin',       '04','04',NULL,          NULL,NULL,NULL,NULL,'70121',1,'Jl. Jahri Saleh Komplek Kenanga No. 10, Banjarmasin',       '04','04',NULL,NULL,NULL,NULL,NULL,'70121','Orang Tua','2026-05-05 14:44:52'),
(22, @m22, 'Jl. Rawasari Gang Damai No. 13, Banjarmasin',               '05','05',NULL,          NULL,NULL,NULL,NULL,'70115',1,'Jl. Rawasari Gang Damai No. 13, Banjarmasin',               '05','05',NULL,NULL,NULL,NULL,NULL,'70115','Orang Tua','2026-05-05 14:44:52'),
(23, @m23, 'Jl. Basirih Selatan No. 36, Banjarmasin',                   '06','06',NULL,          NULL,NULL,NULL,NULL,'70246',1,'Jl. Basirih Selatan No. 36, Banjarmasin',                   '06','06',NULL,NULL,NULL,NULL,NULL,'70246','Orang Tua','2026-05-05 14:44:52'),
(24, @m24, 'Jl. Tanjung Pagar Gang Karya No. 15, Banjarmasin',          '07','01',NULL,          NULL,NULL,NULL,NULL,'70247',1,'Jl. Tanjung Pagar Gang Karya No. 15, Banjarmasin',          '07','01',NULL,NULL,NULL,NULL,NULL,'70247','Orang Tua','2026-05-05 14:44:52'),
(25, @m25, 'Jl. Kayu Tangi Ujung Komplek Permai No. 41, Banjarmasin',   '08','02',NULL,          NULL,NULL,NULL,NULL,'70126',1,'Jl. Kayu Tangi Ujung Komplek Permai No. 41, Banjarmasin',   '08','02',NULL,NULL,NULL,NULL,NULL,'70126','Orang Tua','2026-05-05 14:44:52'),
(26, @m26, 'Jl. Dharma Praja Komplek Praja Permai No. 22, Banjarmasin', '09','03',NULL,          NULL,NULL,NULL,NULL,'70238',1,'Jl. Dharma Praja Komplek Praja Permai No. 22, Banjarmasin', '09','03',NULL,NULL,NULL,NULL,NULL,'70238','Orang Tua','2026-05-05 14:44:52'),
(27, @m27, 'Jl. Panglima Batur No. 18, Banjarbaru',                     '01','04',NULL,          NULL,NULL,NULL,NULL,'70711',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 27, Banjarmasin','03','04',NULL,NULL,NULL,NULL,NULL,'70123','Kos',      '2026-05-05 14:44:52'),
(28, @m28, 'Jl. Karang Anyar I No. 9, Banjarbaru',                      '02','05',NULL,          NULL,NULL,NULL,NULL,'70714',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 28, Banjarmasin','04','01',NULL,NULL,NULL,NULL,NULL,'70123','Kos',      '2026-05-05 14:44:52'),
(29, @m29, 'Jl. Gotong Royong No. 25, Banjarbaru',                      '03','06',NULL,          NULL,NULL,NULL,NULL,'70712',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 29, Bjm',  '05','02',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(30, @m30, 'Jl. A. Yani Km. 33 No. 7, Banjarbaru',                     '04','01',NULL,          NULL,NULL,NULL,NULL,'70721',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 30, Bjm',  '01','03',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(31, @m31, 'Jl. Sekumpul Ujung No. 16, Martapura',                      '05','02','Sekumpul',    NULL,NULL,NULL,NULL,'70614',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 31, Banjarmasin','02','04',NULL,NULL,NULL,NULL,NULL,'70123','Kos',      '2026-05-05 14:44:52'),
(32, @m32, 'Jl. Menteri Empat No. 11, Martapura',                       '06','03','Keraton',     NULL,NULL,NULL,NULL,'70613',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 32, Banjarmasin','03','01',NULL,NULL,NULL,NULL,NULL,'70123','Kos',      '2026-05-05 14:44:52'),
(33, @m33, 'Jl. Pangeran Antasari No. 30, Martapura',                   '07','04','Tanjung Rema',NULL,NULL,NULL,NULL,'70611',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 33, Bjm',  '04','02',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(34, @m34, 'Jl. Ahmad Yani Km. 47 No. 5, Astambul',                     '08','05','Astambul',    NULL,NULL,NULL,NULL,'70671',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 34, Bjm',  '05','03',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(35, @m35, 'Jl. Aluh Idut No. 22, Amuntai',                             '09','06','Sungai Malang',NULL,NULL,NULL,NULL,'71418',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 35, Banjarmasin','01','04',NULL,NULL,NULL,NULL,NULL,'70123','Kos',     '2026-05-05 14:44:52'),
(36, @m36, 'Jl. Basuki Rahmat No. 14, Tanjung',                         '01','01','Pembataan',   NULL,NULL,NULL,NULL,'71513',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 36, Banjarmasin','02','01',NULL,NULL,NULL,NULL,NULL,'70123','Kos',      '2026-05-05 14:44:52'),
(37, @m37, 'Jl. Ahmad Yani No. 51, Kandangan',                          '02','02','Kandangan Kota',NULL,NULL,NULL,NULL,'71211',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 37, Bjm','03','02',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(38, @m38, 'Jl. Singakarsa No. 8, Kandangan',                           '03','03','Jambu Hilir', NULL,NULL,NULL,NULL,'71213',0,'Asrama Mahasiswa, Jl. Brigjen H. Hasan Basri No. 38, Bjm',  '04','03',NULL,NULL,NULL,NULL,NULL,'70124','Asrama',   '2026-05-05 14:44:52'),
(39, @m39, 'Jl. Merdeka No. 40, Barabai',                               '04','04','Barabai Darat',NULL,NULL,NULL,NULL,'71311',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 39, Banjarmasin','05','04',NULL,NULL,NULL,NULL,NULL,'70123','Kos',    '2026-05-05 14:44:52'),
(40, @m40, 'Jl. Murakata No. 19, Barabai',                              '05','05','Barabai Timur',NULL,NULL,NULL,NULL,'71313',0,'Kos Mawar Kayu Tangi, Jl. Kayu Tangi II No. 40, Banjarmasin','01','01',NULL,NULL,NULL,NULL,NULL,'70123','Kos',    '2026-05-05 14:44:52');

-- ============================================================
-- Tabel krs
-- tahunakademik_id dikosongkan (dari kelompok 1)
-- ============================================================

CREATE TABLE `krs` (
  `id_krs`             int(11)   NOT NULL,
  `id_mahasiswa`       char(36)  NOT NULL,
  `tahunakademik_id`   int(11)   DEFAULT NULL,
  `semester_saat_ini`  int(11)   NOT NULL,
  `batas_total_sks`    int(11)   NOT NULL,
  `status_krs`         enum('Draft','Diajukan','Divalidasi','Ditolak') DEFAULT 'Draft',
  `catatan_pembimbing` text      DEFAULT NULL,
  `created_at`         timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at`         timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `krs` (`id_krs`, `id_mahasiswa`, `tahunakademik_id`, `semester_saat_ini`, `batas_total_sks`, `status_krs`, `catatan_pembimbing`, `created_at`, `updated_at`) VALUES
(1,  @m01, NULL, 3, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(2,  @m02, NULL, 1, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(3,  @m03, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(4,  @m04, NULL, 3, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(5,  @m05, NULL, 1, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(6,  @m06, NULL, 5, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(7,  @m07, NULL, 1, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(8,  @m08, NULL, 7, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(9,  @m09, NULL, 5, 24, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(10, @m10, NULL, 3, 24, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(11, @m11, NULL, 1, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(12, @m12, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(13, @m13, NULL, 3, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(14, @m14, NULL, 1, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(15, @m15, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(16, @m16, NULL, 3, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(17, @m17, NULL, 5, 24, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(18, @m18, NULL, 3, 24, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(19, @m19, NULL, 1, 20, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(20, @m20, NULL, 3, 20, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(21, @m21, NULL, 5, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(22, @m22, NULL, 3, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(23, @m23, NULL, 1, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(24, @m24, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(25, @m25, NULL, 3, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(26, @m26, NULL, 1, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(27, @m27, NULL, 1, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(28, @m28, NULL, 7, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(29, @m29, NULL, 5, 24, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(30, @m30, NULL, 3, 24, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(31, @m31, NULL, 1, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(32, @m32, NULL, 7, 24, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(33, @m33, NULL, 5, 22, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(34, @m34, NULL, 3, 22, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(35, @m35, NULL, 1, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(36, @m36, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(37, @m37, NULL, 5, 24, 'Draft',     'Lengkapi pilihan mata kuliah.', '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(38, @m38, NULL, 3, 24, 'Diajukan',  NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(39, @m39, NULL, 1, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38'),
(40, @m40, NULL, 5, 22, 'Divalidasi',NULL,                            '2026-05-05 14:24:38', '2026-05-05 14:24:38');

-- ============================================================
-- Tabel krs_detail
-- mk_kode tetap diisi string kode MK (referensi ke kelompok 2)
-- tapi data aslinya tetap ada sebagai foreign key reference
-- ============================================================

CREATE TABLE `krs_detail` (
  `id_krs_detail` int(11)     NOT NULL,
  `id_krs`        int(11)     NOT NULL,
  `mk_kode`       varchar(12) NOT NULL,
  `created_at`    timestamp   NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `krs_detail` (`id_krs_detail`, `id_krs`, `mk_kode`, `created_at`) VALUES
(1, 1,'MKU001','2026-05-05 14:24:49'),(2, 2,'MKU001','2026-05-05 14:24:49'),(3, 3,'MKU001','2026-05-05 14:24:49'),
(4, 4,'MKU001','2026-05-05 14:24:49'),(5, 5,'MKU001','2026-05-05 14:24:49'),(6, 6,'MKU001','2026-05-05 14:24:49'),
(7, 7,'MKU001','2026-05-05 14:24:49'),(8, 8,'MKU001','2026-05-05 14:24:49'),(9, 9,'MKU001','2026-05-05 14:24:49'),
(10,10,'MKU001','2026-05-05 14:24:49'),(11,11,'MKU001','2026-05-05 14:24:49'),(12,12,'MKU001','2026-05-05 14:24:49'),
(13,13,'MKU001','2026-05-05 14:24:49'),(14,14,'MKU001','2026-05-05 14:24:49'),(15,15,'MKU001','2026-05-05 14:24:49'),
(16,16,'MKU001','2026-05-05 14:24:49'),(17,17,'MKU001','2026-05-05 14:24:49'),(18,18,'MKU001','2026-05-05 14:24:49'),
(19,19,'MKU001','2026-05-05 14:24:49'),(20,20,'MKU001','2026-05-05 14:24:49'),(21,21,'MKU001','2026-05-05 14:24:49'),
(22,22,'MKU001','2026-05-05 14:24:49'),(23,23,'MKU001','2026-05-05 14:24:49'),(24,24,'MKU001','2026-05-05 14:24:49'),
(25,25,'MKU001','2026-05-05 14:24:49'),(26,26,'MKU001','2026-05-05 14:24:49'),(27,27,'MKU001','2026-05-05 14:24:49'),
(28,28,'MKU001','2026-05-05 14:24:49'),(29,29,'MKU001','2026-05-05 14:24:49'),(30,30,'MKU001','2026-05-05 14:24:49'),
(31,31,'MKU001','2026-05-05 14:24:49'),(32,32,'MKU001','2026-05-05 14:24:49'),(33,33,'MKU001','2026-05-05 14:24:49'),
(34,34,'MKU001','2026-05-05 14:24:49'),(35,35,'MKU001','2026-05-05 14:24:49'),(36,36,'MKU001','2026-05-05 14:24:49'),
(37,37,'MKU001','2026-05-05 14:24:49'),(38,38,'MKU001','2026-05-05 14:24:49'),(39,39,'MKU001','2026-05-05 14:24:49'),
(40,40,'MKU001','2026-05-05 14:24:49'),
(41, 1,'MKU002','2026-05-05 14:24:49'),(42, 2,'MKU002','2026-05-05 14:24:49'),(43, 3,'MKU002','2026-05-05 14:24:49'),
(44, 4,'MKU002','2026-05-05 14:24:49'),(45, 5,'MKU002','2026-05-05 14:24:49'),(46, 6,'MKU002','2026-05-05 14:24:49'),
(47, 7,'MKU002','2026-05-05 14:24:49'),(48, 8,'MKU002','2026-05-05 14:24:49'),(49, 9,'MKU002','2026-05-05 14:24:49'),
(50,10,'MKU002','2026-05-05 14:24:49'),(51,11,'MKU002','2026-05-05 14:24:49'),(52,12,'MKU002','2026-05-05 14:24:49'),
(53,13,'MKU002','2026-05-05 14:24:49'),(54,14,'MKU002','2026-05-05 14:24:49'),(55,15,'MKU002','2026-05-05 14:24:49'),
(56,16,'MKU002','2026-05-05 14:24:49'),(57,17,'MKU002','2026-05-05 14:24:49'),(58,18,'MKU002','2026-05-05 14:24:49'),
(59,19,'MKU002','2026-05-05 14:24:49'),(60,20,'MKU002','2026-05-05 14:24:49');

-- ============================================================
-- Tabel orang_tua_wali (tidak ada kolom dari kelompok lain)
-- ============================================================

CREATE TABLE `orang_tua_wali` (
  `id_ortu_wali`       int(11)      NOT NULL,
  `id_mahasiswa`       char(36)     NOT NULL,
  `jenis_peran`        enum('Ayah','Ibu','Wali') NOT NULL,
  `nama_lengkap`       varchar(100) NOT NULL,
  `nik`                varchar(16)  DEFAULT NULL,
  `tanggal_lahir`      date         DEFAULT NULL,
  `status_hidup`       enum('Hidup','Meninggal','Tidak Diketahui') DEFAULT NULL,
  `status_kekerabatan` enum('Kandung','Tiri','Angkat','Lainnya') DEFAULT NULL,
  `pendidikan_terakhir` enum('SD - Sekolah Dasar','SMP - SMP/Sederajat','SMA - SMA/SMK Sederajat','D1 - Diploma 1','D2 - Diploma 2','D3 - Diploma 3','D4 - Sarjana Terapan','S1 - Strata 1','Prof - Profesi','S2 - Strata 2','MTr - S2 Terapan','Sp-1 - Spesialis 1','S3 - Strata 3','DTr - S3 Terapan','Sp-2 - Spesialis 2') DEFAULT NULL,
  `pekerjaan`          enum('Tidak Bekerja','Bekerja','Ibu Rumah Tangga','Belum Bekerja','PNS') DEFAULT NULL,
  `penghasilan`        enum('Kurang dari/Sama dengan 500.000','500.000 - 2.000.000','2.000.000 - 5.000.000','Diatas 5.000.000') DEFAULT NULL,
  `alamat`             text         DEFAULT NULL,
  `no_telepon`         varchar(20)  DEFAULT NULL,
  `email`              varchar(255) DEFAULT NULL,
  `updated_at`         timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `orang_tua_wali` (`id_ortu_wali`, `id_mahasiswa`, `jenis_peran`, `nama_lengkap`, `nik`, `tanggal_lahir`, `status_hidup`, `status_kekerabatan`, `pendidikan_terakhir`, `pekerjaan`, `penghasilan`, `alamat`, `no_telepon`, `email`, `updated_at`) VALUES
(1,  @m01,'Ayah','Rudi Hartono',       '6300000000005001','1975-01-02','Hidup','Kandung','SMA - SMA/SMK Sederajat','Bekerja',        '2.000.000 - 5.000.000',          'Jl. Belitung Darat No. 12, Banjarmasin',     '085200001001','rudi.hartono1@gmail.com',     '2026-05-05 15:21:01'),
(2,  @m02,'Ibu', 'Sri Wahyuni',        '6300000000005002','1975-01-03','Hidup','Kandung','D3 - Diploma 3',         'PNS',            'Diatas 5.000.000',               'Jl. Sultan Adam No. 8, Banjarmasin',         '085200001002','sri.wahyuni2@gmail.com',      '2026-05-05 15:21:01'),
(3,  @m03,'Ayah','Agus Setiawan',      '6300000000005003','1975-01-04','Hidup','Kandung','SMP - SMP/Sederajat',    'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Pramuka No. 21, Banjarmasin',            '085200001003','agus.setiawan3@gmail.com',    '2026-05-05 15:21:01'),
(4,  @m04,'Ibu', 'Marlina Rahmawati',  '6300000000005004','1975-01-05','Hidup','Kandung','D4 - Sarjana Terapan',   'Bekerja',        '500.000 - 2.000.000',            'Jl. Kelayan A No. 14, Banjarmasin',          '085200001004','marlina.rahmawati4@gmail.com','2026-05-05 15:21:01'),
(5,  @m05,'Ayah','Bambang Prakoso',    '6300000000005005','1975-01-06','Hidup','Kandung','S1 - Strata 1',          'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Cempaka Besar No. 31, Banjarmasin',      '085200001005','bambang.prakoso5@gmail.com',  '2026-05-05 15:21:01'),
(6,  @m06,'Ibu', 'Nur Aisyah',         '6300000000005006','1975-01-07','Hidup','Kandung','SMA - SMA/SMK Sederajat','Ibu Rumah Tangga','Diatas 5.000.000',              'Jl. Kuin Selatan No. 9, Banjarmasin',        '085200001006','nur.aisyah6@gmail.com',       '2026-05-05 15:21:01'),
(7,  @m07,'Ayah','Hasan Basri',        '6300000000005007','1975-01-08','Hidup','Kandung','D3 - Diploma 3',         'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Veteran No. 17, Banjarmasin',            '085200001007','hasan.basri7@gmail.com',      '2026-05-05 15:21:01'),
(8,  @m08,'Wali','Ahmad Fauzi',        '6300000000005008','1982-01-09','Hidup','Lainnya','SMP - SMP/Sederajat',    'Bekerja',        '500.000 - 2.000.000',            'Jl. Gatot Subroto No. 44, Banjarmasin',      '085200001008','ahmad.fauzi8@gmail.com',      '2026-05-05 15:21:01'),
(9,  @m09,'Ayah','Syamsul Arifin',     '6300000000005009','1975-01-10','Hidup','Kandung','D4 - Sarjana Terapan',   'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Bumi Mas Raya No. 6, Banjarmasin',       '085200001009','syamsul.arifin9@gmail.com',   '2026-05-05 15:21:01'),
(10, @m10,'Ibu', 'Kartini Lestari',    '6300000000005010','1975-01-11','Hidup','Kandung','S1 - Strata 1',          'Bekerja',        'Diatas 5.000.000',               'Jl. Sungai Andai No. 18, Banjarmasin',       '085200001010','kartini.lestari10@gmail.com', '2026-05-05 15:21:01'),
(11, @m11,'Ayah','Joko Santoso',       '6300000000005011','1975-01-12','Hidup','Kandung','SMA - SMA/SMK Sederajat','Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Banua Anyar No. 27, Banjarmasin',        '085200001011','joko.santoso11@gmail.com',    '2026-05-05 15:21:01'),
(12, @m12,'Ibu', 'Rina Susanti',       '6300000000005012','1975-01-13','Hidup','Kandung','D3 - Diploma 3',         'Ibu Rumah Tangga','500.000 - 2.000.000',           'Jl. Antasan Kecil Timur No. 5, Banjarmasin', '085200001012','rina.susanti12@gmail.com',    '2026-05-05 15:21:01'),
(13, @m13,'Ayah','Dedi Kurniawan',     '6300000000005013','1975-01-14','Hidup','Kandung','SMP - SMP/Sederajat',    'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Simpang Telawang No. 33, Banjarmasin',   '085200001013','dedi.kurniawan13@gmail.com',  '2026-05-05 15:21:01'),
(14, @m14,'Ibu', 'Yuliana Sari',       '6300000000005014','1975-01-15','Hidup','Kandung','D4 - Sarjana Terapan',   'PNS',            'Diatas 5.000.000',               'Jl. HKSN No. 11, Banjarmasin',               '085200001014','yuliana.sari14@gmail.com',    '2026-05-05 15:21:01'),
(15, @m15,'Ayah','Mulyadi Rahman',     '6300000000005015','1975-01-16','Hidup','Kandung','S1 - Strata 1',          'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Pangeran Antasari No. 19, Banjarmasin',  '085200001015','mulyadi.rahman15@gmail.com',  '2026-05-05 15:21:01'),
(16, @m16,'Wali','Zainal Abidin',      '6300000000005016','1982-01-17','Hidup','Lainnya','SMA - SMA/SMK Sederajat','Bekerja',        '500.000 - 2.000.000',            'Jl. Cemara Raya No. 23, Banjarmasin',        '085200001016','zainal.abidin16@gmail.com',   '2026-05-05 15:21:01'),
(17, @m17,'Ayah','Herman Saputra',     '6300000000005017','1975-01-18','Hidup','Kandung','D3 - Diploma 3',         'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Teluk Dalam No. 7, Banjarmasin',         '085200001017','herman.saputra17@gmail.com',  '2026-05-05 15:21:01'),
(18, @m18,'Ibu', 'Fitri Handayani',    '6300000000005018','1975-01-19','Hidup','Kandung','SMP - SMP/Sederajat',    'Ibu Rumah Tangga','Diatas 5.000.000',              'Jl. Sutoyo S No. 20, Banjarmasin',           '085200001018','fitri.handayani18@gmail.com', '2026-05-05 15:21:01'),
(19, @m19,'Ayah','Suharto Wijaya',     '6300000000005019','1975-01-20','Hidup','Kandung','D4 - Sarjana Terapan',   'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Rantauan Darat No. 16, Banjarmasin',     '085200001019','suharto.wijaya19@gmail.com',  '2026-05-05 15:21:01'),
(20, @m20,'Ibu', 'Masitah Noor',       '6300000000005020','1975-01-21','Hidup','Kandung','S1 - Strata 1',          'PNS',            '500.000 - 2.000.000',            'Jl. Tembus Mantuil No. 29, Banjarmasin',     '085200001020','masitah.noor20@gmail.com',    '2026-05-05 15:21:01'),
(21, @m21,'Ayah','Rahmat Hidayat',     '6300000000005021','1975-01-22','Hidup','Kandung','SMA - SMA/SMK Sederajat','Bekerja',        '2.000.000 - 5.000.000',          'Jl. Jahri Saleh No. 10, Banjarmasin',        '085200001021','rahmat.hidayat21@gmail.com',  '2026-05-05 15:21:01'),
(22, @m22,'Ibu', 'Endang Sulastri',    '6300000000005022','1975-01-23','Hidup','Kandung','D3 - Diploma 3',         'Bekerja',        'Diatas 5.000.000',               'Jl. Rawasari No. 13, Banjarmasin',           '085200001022','endang.sulastri22@gmail.com', '2026-05-05 15:21:01'),
(23, @m23,'Ayah','Iskandar Zulkarnain','6300000000005023','1975-01-24','Hidup','Kandung','SMP - SMP/Sederajat',    'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Basirih Selatan No. 36, Banjarmasin',    '085200001023','iskandar.zulkarnain23@gmail.com','2026-05-05 15:21:01'),
(24, @m24,'Wali','Mahmud Yunus',       '6300000000005024','1982-01-25','Hidup','Lainnya','D4 - Sarjana Terapan',   'Bekerja',        '500.000 - 2.000.000',            'Jl. Tanjung Pagar No. 15, Banjarmasin',      '085200001024','mahmud.yunus24@gmail.com',    '2026-05-05 15:21:01'),
(25, @m25,'Ayah','Abdul Hamid',        '6300000000005025','1975-01-26','Hidup','Kandung','S1 - Strata 1',          'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Kayu Tangi No. 41, Banjarmasin',         '085200001025','abdul.hamid25@gmail.com',     '2026-05-05 15:21:01'),
(26, @m26,'Ibu', 'Siti Aminah',        '6300000000005026','1975-01-27','Hidup','Kandung','SMA - SMA/SMK Sederajat','PNS',            'Diatas 5.000.000',               'Jl. Dharma Praja No. 22, Banjarmasin',       '085200001026','siti.aminah26@gmail.com',     '2026-05-05 15:21:01'),
(27, @m27,'Ayah','Usman Effendi',      '6300000000005027','1975-01-28','Hidup','Kandung','D3 - Diploma 3',         'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Panglima Batur No. 18, Banjarbaru',      '085200001027','usman.effendi27@gmail.com',   '2026-05-05 15:21:01'),
(28, @m28,'Ibu', 'Norhayati',          '6300000000005028','1975-01-29','Hidup','Kandung','SMP - SMP/Sederajat',    'Bekerja',        '500.000 - 2.000.000',            'Jl. Karang Anyar I No. 9, Banjarbaru',       '085200001028','norhayati28@gmail.com',       '2026-05-05 15:21:01'),
(29, @m29,'Ayah','Hendra Gunawan',     '6300000000005029','1975-01-30','Hidup','Kandung','D4 - Sarjana Terapan',   'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Gotong Royong No. 25, Banjarbaru',       '085200001029','hendra.gunawan29@gmail.com',  '2026-05-05 15:21:01'),
(30, @m30,'Ibu', 'Latifah Hanum',      '6300000000005030','1975-01-31','Hidup','Kandung','S1 - Strata 1',          'Ibu Rumah Tangga','Diatas 5.000.000',              'Jl. A. Yani Km. 33 No. 7, Banjarbaru',      '085200001030','latifah.hanum30@gmail.com',   '2026-05-05 15:21:01'),
(31, @m31,'Ayah','Slamet Riyadi',      '6300000000005031','1975-02-01','Hidup','Kandung','SMA - SMA/SMK Sederajat','Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Sekumpul No. 16, Martapura',             '085200001031','slamet.riyadi31@gmail.com',   '2026-05-05 15:21:01'),
(32, @m32,'Wali','Burhanuddin',        '6300000000005032','1982-02-02','Hidup','Lainnya','D3 - Diploma 3',         'Bekerja',        '500.000 - 2.000.000',            'Jl. Menteri Empat No. 11, Martapura',        '085200001032','burhanuddin32@gmail.com',     '2026-05-05 15:21:01'),
(33, @m33,'Ayah','Taufik Rahman',      '6300000000005033','1975-02-03','Hidup','Kandung','SMP - SMP/Sederajat',    'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Pangeran Antasari No. 30, Martapura',   '085200001033','taufik.rahman33@gmail.com',   '2026-05-05 15:21:01'),
(34, @m34,'Ibu', 'Dahlia Safitri',     '6300000000005034','1975-02-04','Hidup','Kandung','D4 - Sarjana Terapan',   'Bekerja',        'Diatas 5.000.000',               'Jl. Ahmad Yani Km. 47 No. 5, Astambul',     '085200001034','dahlia.safitri34@gmail.com',  '2026-05-05 15:21:01'),
(35, @m35,'Ayah','Sofyan Anwar',       '6300000000005035','1975-02-05','Hidup','Kandung','S1 - Strata 1',          'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Aluh Idut No. 22, Amuntai',             '085200001035','sofyan.anwar35@gmail.com',    '2026-05-05 15:21:01'),
(36, @m36,'Ibu', 'Halimah Putri',      '6300000000005036','1975-02-06','Hidup','Kandung','SMA - SMA/SMK Sederajat','Ibu Rumah Tangga','500.000 - 2.000.000',           'Jl. Basuki Rahmat No. 14, Tanjung',         '085200001036','halimah.putri36@gmail.com',   '2026-05-05 15:21:01'),
(37, @m37,'Ayah','Wahyu Nugroho',      '6300000000005037','1975-02-07','Hidup','Kandung','D3 - Diploma 3',         'Bekerja',        '2.000.000 - 5.000.000',          'Jl. Ahmad Yani No. 51, Kandangan',          '085200001037','wahyu.nugroho37@gmail.com',   '2026-05-05 15:21:01'),
(38, @m38,'Ibu', 'Faridah',            '6300000000005038','1975-02-08','Hidup','Kandung','SMP - SMP/Sederajat',    'PNS',            'Diatas 5.000.000',               'Jl. Singakarsa No. 8, Kandangan',           '085200001038','faridah38@gmail.com',         '2026-05-05 15:21:01'),
(39, @m39,'Ayah','Eko Prasetyo',       '6300000000005039','1975-02-09','Hidup','Kandung','D4 - Sarjana Terapan',   'Tidak Bekerja',  'Kurang dari/Sama dengan 500.000','Jl. Merdeka No. 40, Barabai',               '085200001039','eko.prasetyo39@gmail.com',    '2026-05-05 15:21:01'),
(40, @m40,'Wali','Ridwan Maulana',     '6300000000005040','1982-02-10','Hidup','Lainnya','S1 - Strata 1',          'Bekerja',        '500.000 - 2.000.000',            'Jl. Murakata No. 19, Barabai',              '085200001040','ridwan.maulana40@gmail.com',  '2026-05-05 15:21:01');

-- ============================================================
-- Tabel sekolah_mahasiswa
-- kode_provinsi & kode_kota dari kelompok 2, dikosongkan
-- ============================================================

CREATE TABLE `sekolah_mahasiswa` (
  `id_sekolah`           int(11)      NOT NULL,
  `id_mahasiswa`         char(36)     NOT NULL,
  `pendidikan_asal`      enum('MA','SMA','Paket C','Pondok Pesantren','SMA Di Luar Negeri') NOT NULL,
  `id_provinsi_sekolah`  int(11)     DEFAULT NULL,
  `id_kota_sekolah`      int(11)      DEFAULT NULL,
  `nama_sekolah`         varchar(150) NOT NULL,
  `alamat_sekolah`       text         DEFAULT NULL,
  `telepon_sekolah`      varchar(20)  DEFAULT NULL,
  `nomor_ijazah`         varchar(50)  DEFAULT NULL,
  `nisn`                 varchar(20)  NOT NULL,
  `file_ijazah_terakhir` varchar(255) DEFAULT NULL,
  `updated_at`           timestamp    NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `sekolah_mahasiswa` (`id_sekolah`, `id_mahasiswa`, `pendidikan_asal`, `id_provinsi_sekolah`, `id_kota_sekolah`, `nama_sekolah`, `alamat_sekolah`, `telepon_sekolah`, `nomor_ijazah`, `nisn`, `file_ijazah_terakhir`, `updated_at`) VALUES
(1,  @m01,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100701','IJZ-2025-0001','0000000001','uploads/ijazah/c030124001.pdf','2026-05-05 14:32:24'),
(2,  @m02,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100702','IJZ-2025-0002','0000000002','uploads/ijazah/c030125002.pdf','2026-05-05 14:32:24'),
(3,  @m03,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100703','IJZ-2025-0003','0000000003','uploads/ijazah/c030223003.pdf','2026-05-05 14:32:24'),
(4,  @m04,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100704','IJZ-2025-0004','0000000004','uploads/ijazah/c030224004.pdf','2026-05-05 14:32:24'),
(5,  @m05,'MA',               NULL,NULL,'MAN 2 Kota Banjarmasin',        'Jl. Batu Benawa Raya No. 32, Banjarmasin',             '051100705','IJZ-2025-0005','0000000005','uploads/ijazah/c030325005.pdf','2026-05-05 14:32:24'),
(6,  @m06,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100706','IJZ-2025-0006','0000000006','uploads/ijazah/c030323006.pdf','2026-05-05 14:32:24'),
(7,  @m07,'Paket C',          NULL,NULL,'PKBM Bina Warga Banjarmasin',   'Jl. Kelayan A No. 18, Banjarmasin',                    '051100707','IJZ-2025-0007','0000000007','uploads/ijazah/c030425007.pdf','2026-05-05 14:32:24'),
(8,  @m08,'SMA',              NULL,NULL,'SMAN 1 Banjarmasin',            'Jl. Mulawarman No. 25, Banjarmasin',                   '051100708','IJZ-2025-0008','0000000008','uploads/ijazah/c030422008.pdf','2026-05-05 14:32:24'),
(9,  @m09,'Pondok Pesantren', NULL,NULL,'Pondok Pesantren Darul Hijrah', 'Jl. Cindai Alus, Martapura, Kabupaten Banjar',         '051100709','IJZ-2025-0009','0000000009','uploads/ijazah/c030523009.pdf','2026-05-05 14:32:24'),
(10, @m10,'MA',               NULL,NULL,'MAN 2 Kota Banjarmasin',        'Jl. Batu Benawa Raya No. 32, Banjarmasin',             '051100710','IJZ-2025-0010','0000000010','uploads/ijazah/c030524010.pdf','2026-05-05 14:32:24'),
(11, @m11,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100711','IJZ-2025-0011','0000000011','uploads/ijazah/m040125011.pdf','2026-05-05 14:32:24'),
(12, @m12,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100712','IJZ-2025-0012','0000000012','uploads/ijazah/m040123012.pdf','2026-05-05 14:32:24'),
(13, @m13,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100713','IJZ-2025-0013','0000000013','uploads/ijazah/m040224013.pdf','2026-05-05 14:32:24'),
(14, @m14,'Paket C',          NULL,NULL,'SKB Banjarbaru',                'Jl. RO Ulin No. 22, Banjarbaru',                       '051100714','IJZ-2025-0014','0000000014','uploads/ijazah/m040225014.pdf','2026-05-05 14:32:24'),
(15, @m15,'MA',               NULL,NULL,'MAN 1 Banjarbaru',              'Jl. A. Yani Km. 31, Loktabat Selatan, Banjarbaru',     '051100715','IJZ-2025-0015','0000000015','uploads/ijazah/m040323015.pdf','2026-05-05 14:32:24'),
(16, @m16,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100716','IJZ-2025-0016','0000000016','uploads/ijazah/m040324016.pdf','2026-05-05 14:32:24'),
(17, @m17,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100717','IJZ-2025-0017','0000000017','uploads/ijazah/m040423017.pdf','2026-05-05 14:32:24'),
(18, @m18,'Pondok Pesantren', NULL,NULL,'Pondok Pesantren Al-Falah',     'Jl. A. Yani Km. 23, Landasan Ulin, Banjarbaru',        '051100718','IJZ-2025-0018','0000000018','uploads/ijazah/m040424018.pdf','2026-05-05 14:32:24'),
(19, @m19,'SMA',              NULL,NULL,'SMKN 2 Banjarbaru',             'Jl. STM No. 12, Banjarbaru',                           '051100719','IJZ-2025-0019','0000000019','uploads/ijazah/m040525019.pdf','2026-05-05 14:32:24'),
(20, @m20,'MA',               NULL,NULL,'MAN 1 Banjarbaru',              'Jl. A. Yani Km. 31, Loktabat Selatan, Banjarbaru',     '051100720','IJZ-2025-0020','0000000020','uploads/ijazah/m040524020.pdf','2026-05-05 14:32:24'),
(21, @m21,'Paket C',          NULL,NULL,'SKB Banjarbaru',                'Jl. RO Ulin No. 22, Banjarbaru',                       '051100721','IJZ-2025-0021','0000000021','uploads/ijazah/e050123021.pdf','2026-05-05 14:32:24'),
(22, @m22,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100722','IJZ-2025-0022','0000000022','uploads/ijazah/e050124022.pdf','2026-05-05 14:32:24'),
(23, @m23,'SMA Di Luar Negeri',NULL,NULL,'Sekolah Indonesia Kuala Lumpur','Lorong Tun Ismail, Kuala Lumpur, Malaysia',           '+60300000000','IJZ-2025-0023','0000000023','uploads/ijazah/e050225023.pdf','2026-05-05 14:32:24'),
(24, @m24,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100724','IJZ-2025-0024','0000000024','uploads/ijazah/e050223024.pdf','2026-05-05 14:32:24'),
(25, @m25,'MA',               NULL,NULL,'MAN 1 Banjarbaru',              'Jl. A. Yani Km. 31, Loktabat Selatan, Banjarbaru',     '051100725','IJZ-2025-0025','0000000025','uploads/ijazah/e050324025.pdf','2026-05-05 14:32:24'),
(26, @m26,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100726','IJZ-2025-0026','0000000026','uploads/ijazah/e050325026.pdf','2026-05-05 14:32:24'),
(27, @m27,'Pondok Pesantren', NULL,NULL,'Pondok Pesantren Darul Hijrah', 'Jl. Cindai Alus, Martapura, Kabupaten Banjar',         '051100727','IJZ-2025-0027','0000000027','uploads/ijazah/e050425027.pdf','2026-05-05 14:32:24'),
(28, @m28,'Paket C',          NULL,NULL,'PKBM Bina Warga Banjarmasin',   'Jl. Kelayan A No. 18, Banjarmasin',                    '051100728','IJZ-2025-0028','0000000028','uploads/ijazah/e050422028.pdf','2026-05-05 14:32:24'),
(29, @m29,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100729','IJZ-2025-0029','0000000029','uploads/ijazah/e050523029.pdf','2026-05-05 14:32:24'),
(30, @m30,'MA',               NULL,NULL,'MAN 1 Banjarbaru',              'Jl. A. Yani Km. 31, Loktabat Selatan, Banjarbaru',     '051100730','IJZ-2025-0030','0000000030','uploads/ijazah/e050524030.pdf','2026-05-05 14:32:24'),
(31, @m31,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100731','IJZ-2025-0031','0000000031','uploads/ijazah/e050625031.pdf','2026-05-05 14:32:24'),
(32, @m32,'SMA',              NULL,NULL,'SMAN 1 Martapura',              'Jl. A. Yani Km. 39, Martapura',                        '051100732','IJZ-2025-0032','0000000032','uploads/ijazah/e050622032.pdf','2026-05-05 14:32:24'),
(33, @m33,'SMA',              NULL,NULL,'SMKN 1 Banjarmasin',            'Jl. Brigjen H. Hasan Basri No. 7, Banjarmasin',        '051100733','IJZ-2025-0033','0000000033','uploads/ijazah/a060123033.pdf','2026-05-05 14:32:24'),
(34, @m34,'SMA',              NULL,NULL,'SMKN 1 Banjarmasin',            'Jl. Brigjen H. Hasan Basri No. 7, Banjarmasin',        '051100734','IJZ-2025-0034','0000000034','uploads/ijazah/a060124034.pdf','2026-05-05 14:32:24'),
(35, @m35,'MA',               NULL,NULL,'MAN 2 Kota Banjarmasin',        'Jl. Batu Benawa Raya No. 32, Banjarmasin',             '051100735','IJZ-2025-0035','0000000035','uploads/ijazah/a060225035.pdf','2026-05-05 14:32:24'),
(36, @m36,'Pondok Pesantren', NULL,NULL,'Pondok Pesantren Al-Falah',     'Jl. A. Yani Km. 23, Landasan Ulin, Banjarbaru',        '051100736','IJZ-2025-0036','0000000036','uploads/ijazah/a060223036.pdf','2026-05-05 14:32:24'),
(37, @m37,'SMA',              NULL,NULL,'SMKN 1 Banjarmasin',            'Jl. Brigjen H. Hasan Basri No. 7, Banjarmasin',        '051100737','IJZ-2025-0037','0000000037','uploads/ijazah/a060323037.pdf','2026-05-05 14:32:24'),
(38, @m38,'SMA',              NULL,NULL,'SMKN 1 Banjarmasin',            'Jl. Brigjen H. Hasan Basri No. 7, Banjarmasin',        '051100738','IJZ-2025-0038','0000000038','uploads/ijazah/a060324038.pdf','2026-05-05 14:32:24'),
(39, @m39,'SMA',              NULL,NULL,'SMKN 1 Banjarmasin',            'Jl. Brigjen H. Hasan Basri No. 7, Banjarmasin',        '051100739','IJZ-2025-0039','0000000039','uploads/ijazah/a060423039.pdf','2026-05-05 14:32:24'),
(40, @m40,'MA',               NULL,NULL,'MAN 2 Kota Banjarmasin',        'Jl. Batu Benawa Raya No. 32, Banjarmasin',             '051100740','IJZ-2025-0040','0000000040','uploads/ijazah/a060424040.pdf','2026-05-05 14:32:24');

-- ============================================================
-- INDEXES & CONSTRAINTS
-- ============================================================

ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `idx_id_dosen` (`id_dosen`);

ALTER TABLE `biodata_mahasiswa`
  ADD PRIMARY KEY (`id_biodata`),
  ADD UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD UNIQUE KEY `email_pribadi` (`email_pribadi`),
  ADD UNIQUE KEY `email_kampus` (`email_kampus`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `paspor` (`paspor`),
  ADD UNIQUE KEY `npwp` (`npwp`);

ALTER TABLE `alamat_mahasiswa`
  ADD PRIMARY KEY (`id_alamat`),
  ADD UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`);

ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD UNIQUE KEY `id_mahasiswa_tahun` (`id_mahasiswa`, `tahunakademik_id`);

ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`id_krs_detail`),
  ADD UNIQUE KEY `id_krs_mk` (`id_krs`, `mk_kode`);

ALTER TABLE `orang_tua_wali`
  ADD PRIMARY KEY (`id_ortu_wali`),
  ADD UNIQUE KEY `id_mahasiswa_peran` (`id_mahasiswa`, `jenis_peran`);

ALTER TABLE `sekolah_mahasiswa`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`);

ALTER TABLE `biodata_mahasiswa`  MODIFY `id_biodata`    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
ALTER TABLE `alamat_mahasiswa`   MODIFY `id_alamat`     int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
ALTER TABLE `krs`                MODIFY `id_krs`        int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
ALTER TABLE `krs_detail`         MODIFY `id_krs_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
ALTER TABLE `orang_tua_wali`     MODIFY `id_ortu_wali`  int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
ALTER TABLE `sekolah_mahasiswa`  MODIFY `id_sekolah`    int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `biodata_mahasiswa`
  ADD CONSTRAINT `biodata_mahasiswa_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
ALTER TABLE `alamat_mahasiswa`
  ADD CONSTRAINT `alamat_mahasiswa_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
ALTER TABLE `krs_detail`
  ADD CONSTRAINT `krs_detail_ibfk_1` FOREIGN KEY (`id_krs`) REFERENCES `krs` (`id_krs`);
ALTER TABLE `orang_tua_wali`
  ADD CONSTRAINT `orang_tua_wali_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);
ALTER TABLE `sekolah_mahasiswa`
  ADD CONSTRAINT `sekolah_mahasiswa_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;