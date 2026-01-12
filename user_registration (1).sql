-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2026 at 03:20 PM
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
-- Database: `user_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `birthday`, `username`, `email`, `password`, `created_at`) VALUES
(1, '1111-01-01', 'adf', 'aldrinclave81a@gmail.com', 'scrypt:32768:8:1$z4ETPSGjdiPs36OR$de74b809914d21583bbc151edef5ee5e9b21e4b90337fbb40b26bd9610265c50f29013bb78aa9ea919e96b144fd1d5b4ed0789182069b850c70791268363c61a', '2026-01-12 13:12:13'),
(2, '1111-01-01', 'adfa', 'aldrinclave81aa@gmail.com', 'scrypt:32768:8:1$KmJoIY7kaQQipKcQ$e5932d0a288a88e4ad1650cd1d279e49a75a8c51051e05946d47ca55d5461264e3b2a83b133675c3d0056e8877ffe11fba62360280eebc3eaea620602000e655', '2026-01-12 13:12:30'),
(3, '1111-01-01', 'adfaa', 'aldrinclave8a1aa@gmail.com', 'scrypt:32768:8:1$8HAd39PSn8GN2nN3$b3fbf8fd8a5e753e6131123ab6c808fa9b3331861a5587736145984e6089fc95716e5c04137aeb5e8cdd8879d14f8c0b667d49c662a1f486b8c79b0eedbc150e', '2026-01-12 13:53:05'),
(4, '1111-01-01', 'adfaaa', 'aldrinclave8aa1aa@gmail.com', 'scrypt:32768:8:1$rxfU9fZjS9B5cYKB$6382f811292ead90a1e86ec20b2a6f85d012b5cedccbdf7b0fd56c00eade99e0141c13085b2966c04e4269fe6ffb4dd725036958ca8328f84933ceddeaed95d6', '2026-01-12 13:56:47'),
(5, '1111-01-01', 'adfaaaa', 'aldrinclave8aaa1aa@gmail.com', 'scrypt:32768:8:1$4q35jiT1QSsbx634$d3ee61ad0b2f2742bdac480f19478e08c5b7bdee5f5a8bfc1e8f240b976b64b9e3d4c20a2b8329333f193adfa3ba27b147a6d78c71cdcd56849c1333e74d3146', '2026-01-12 13:57:22'),
(6, '1111-01-01', 'adfaaaaa', 'aldrinclave8aaaa1aa@gmail.com', 'scrypt:32768:8:1$7jVrztwWeAbcClDU$1824202df8a4416321d1f1c24c5c0a9980011d0b66e248c515da289c98df1c68afaced7da82ee66e990d23c48b13827e884b37768ec618594879141c7b979a9d', '2026-01-12 13:58:09'),
(7, '1111-01-01', 'adfaaaaaa', 'aldrinclave8aaaaa1aa@gmail.com', 'scrypt:32768:8:1$BBOQg7oULuAo4SQ7$b06ab74392bbef6e08ab9be305bbef32e0490d779478d1ac63463aa0890f9ac002c1f12e298bdb0b10094dd12617611c40129d9d2ad3eab07e25773b6af562f3', '2026-01-12 14:02:30'),
(8, '1111-01-01', 'adfaaaaaaa', 'aldrinclave8aaaaaa1aa@gmail.com', 'scrypt:32768:8:1$CZPVkDBDJUQAE3hB$e0a64f20a9c9a62a79569d967788b02f76af6c1c1749075ddfcd669974badc94c3f34632653575bf2a514d95ddf767e6bb952e6964faff361e8306588bd90218', '2026-01-12 14:05:18'),
(9, '1111-01-01', 'adfaaaaaaaa', 'aldrinclave8aaaaaaa1aa@gmail.com', 'scrypt:32768:8:1$ztT0CpcYClQLrYla$6a843142ae0d226c7155c8b9b2c91527c576ad157c680fd8a1a3fe9942bc2ec66c3eb856cb5fbf436934986d290931ec6f0f672b96cf0cec3bee7bc8fec7ee82', '2026-01-12 14:09:37'),
(10, '1111-01-01', 'adfaaaaaaaaA', 'aldrinclave8aaAaaaaa1aa@gmail.com', 'scrypt:32768:8:1$drNx8ZCL2ljwkuQG$c3ed51c72a27dcc68595b5eeb99ca046a30dee710b705d45a21562331d81f3f5b2d9936a24979a606c21c45bac30a175821f519412b3dddb24d1f2dd0bdb2777', '2026-01-12 14:14:00'),
(11, '1111-01-01', 'adfaaaaaaaaAA', 'aldrinclave8aaAaaaaaA1aa@gmail.com', 'scrypt:32768:8:1$76xCkAGaJXCbOhdy$6f6479e53f6f561a70c85af6f65845d026753b35f585c3745db059fef7f6ccfd62b5581ae2865574d00b3b9713b2696a86cbff9d0a4e92d5069525e5021191e7', '2026-01-12 14:14:41'),
(12, '1111-01-01', 'adfaaaaaaaaAAA', 'aldrinclave8aaAAaaaaaA1aa@gmail.com', 'scrypt:32768:8:1$Ag6vJSFxms9ZkXIf$6f8d2b3f6ad0011561bbb26900314d7ca1b556f221bc63f8b0e45e82c83a081f6d98a6f1257ba2aad47c64e53f0d295e6375c2eb6b753dfa269eebd459ad0804', '2026-01-12 14:16:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
