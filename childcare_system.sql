-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-02-24 15:39:33
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `childcare_system`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE `address` (
  `area` varchar(10) NOT NULL,
  `province` varchar(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`area`, `province`, `area_id`, `province_id`) VALUES
('华南', '广东省', 1, 11),
('华南', '广西壮族自治区', 1, 12),
('华南', '海南省', 1, 13),
('华南', '广西壮族自治区', 1, 12),
('华南', '海南省', 1, 13),
('华南', '香港特别行政区', 1, 14),
('华南', '澳门特别行政区', 1, 15),
('华北', '北京市', 2, 21),
('华北', '天津市', 2, 22),
('华北', '河北省', 2, 23),
('华北', '山西省', 2, 24),
('华北', '内蒙古自治区', 2, 25),
('华东', '上海市', 3, 31),
('华东', '江苏省', 3, 32),
('华东', '浙江省', 3, 33),
('华东', '安徽省', 3, 34),
('华东', '江西省', 3, 35),
('华东', '福建省', 3, 36),
('华东', '山东省', 3, 37),
('华东', '台湾省', 3, 38),
('西北', '陕西省', 4, 41),
('西北', '甘肃省', 4, 42),
('西北', '青海省', 4, 43),
('西北', '宁夏回族自治区', 4, 44),
('西北', '新疆维吾尔自治区', 4, 45),
('西南', '重庆市', 5, 51),
('西南', '四川省', 5, 52),
('西南', '云南省', 5, 52),
('西南', '西藏自治区', 5, 52),
('西南', '贵州省', 5, 52),
('华中', '四川省', 6, 61),
('华中', '四川省', 6, 62),
('华中', '四川省', 6, 63),
('华中', '辽宁省', 7, 71),
('华中', '吉林省', 7, 72),
('华中', '黑龙江省', 7, 73);

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `text` text NOT NULL,
  `time` datetime NOT NULL,
  `author` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `name`, `text`, `time`, `author`) VALUES
(1, '标题1', '正文1', '2019-02-01 00:00:00', 'admin'),
(2, '标题2', '正文2', '2019-02-02 00:00:00', 'test'),
(3, '标题6', '正文1', '2019-02-05 14:00:02', 'admin'),
(4, '标题5', 'asdfasdfaasdfa', '2019-02-14 00:00:00', 'test'),
(5, '标题3', '正文2', '2019-02-03 00:12:33', 'test'),
(6, 'azxv', 'zvxc', '2019-02-14 00:00:00', 'zxcvzxcv'),
(7, '123', 'qweqwe', '2019-02-01 00:00:00', 'qwe'),
(9, '111', '111', '2019-02-02 00:00:00', '111');

-- --------------------------------------------------------

--
-- 表的结构 `reposts`
--

CREATE TABLE `reposts` (
  `id` int(11) NOT NULL,
  `repost_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `repost_user` varchar(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reposts`
--

INSERT INTO `reposts` (`id`, `repost_id`, `text`, `repost_user`, `time`) VALUES
(1, 1, '回复111', 'test', '2019-02-01 00:00:00'),
(2, 3, '回复211', 'admin', '2019-02-03 00:00:00'),
(3, 4, '回复3', 'admin', '2019-02-03 00:00:01'),
(4, 1, '回复4', 'admin', '2019-02-03 00:00:01');

-- --------------------------------------------------------

--
-- 表的结构 `state`
--

CREATE TABLE `state` (
  `state_name` varchar(5) NOT NULL,
  `state_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `state`
--

INSERT INTO `state` (`state_name`, `state_number`) VALUES
('备孕', 1),
('孕期', 2),
('产后', 3),
('在职', 4),
('离职', 5);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` int(5) NOT NULL COMMENT '两位数，前一位表示地区，后一位表示省市',
  `state` int(5) NOT NULL COMMENT '1：备孕 2：孕期 3：产后',
  `per` int(2) NOT NULL DEFAULT '1' COMMENT '0为管理员，1为普通用户'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `address`, `state`, `per`) VALUES
(1, 'admin', 'admin', 11, 2, 0),
(2, 'test', 'test', 22, 2, 1),
(3, 'root', 'root', 11, 3, 1),
(4, '111', '111', 11, 1, 0),
(5, '123', '123', 12, 2, 0),
(6, '1111', '1111', 15, 3, 0),
(7, 'root', 'root', 22, 1, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `reposts`
--
ALTER TABLE `reposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
