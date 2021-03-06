/*
Navicat MySQL Data Transfer

Source Server         : Database
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : penang

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-12-03 14:42:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_07_23_075215_create_presons_table', '2');
INSERT INTO `migrations` VALUES ('4', '2019_07_24_010925_create_questions_table', '3');
INSERT INTO `migrations` VALUES ('5', '2019_07_24_011338_create_truequestions_table', '3');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for presons
-- ----------------------------
DROP TABLE IF EXISTS `presons`;
CREATE TABLE `presons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `true` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vote` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of presons
-- ----------------------------
INSERT INTO `presons` VALUES ('1', 'Phạm Đình Cao', '025443', '5', null, '0', '0', '0', '2', null, null);
INSERT INTO `presons` VALUES ('2', 'Lê Hữu Tú', '025473', '4', '14;11;2;3;8', '5', '1', '0', '0', null, '2020-12-03 20:16:24');
INSERT INTO `presons` VALUES ('3', 'Bùi Thị Hồng Thúy', '025457', '4', '6;15;14;9;3', '3', '1', '0', '0', null, '2020-12-03 18:55:24');
INSERT INTO `presons` VALUES ('4', 'Nguyễn Thị Thanh Hương', '025448', '2', '9;1;12;7;10', '5', '1', '0', '0', null, '2020-12-03 20:21:40');
INSERT INTO `presons` VALUES ('6', 'Nguyễn Chi Mai', '025477', '1', '3;9;7;8;12', '5', '1', '0', '0', null, '2020-11-24 00:31:55');
INSERT INTO `presons` VALUES ('7', 'Nguyễn Huy Hoàng', '025482', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('8', 'Lê Thị Nga', '025452', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('9', 'Đỗ Mạnh Dũng', '025438', '1', null, '0', '0', '0', '2', null, null);
INSERT INTO `presons` VALUES ('10', 'Nguyễn Tiến Nam', '025453', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('11', 'Trương Long Hải', '025439', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('12', 'Nguyễn Thị Yến Ngọc', '025511', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('13', 'Hà Đăng Sáng', '025445', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('14', 'Phạm Thùy Linh', '025449', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('15', 'Phạm Thị Thu', '025456', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('16', 'Trần Thị Thúy Hằng', '025475', '0', '7;14;2;8;6', '0', '0', '0', '0', null, '2020-12-03 19:07:23');
INSERT INTO `presons` VALUES ('17', 'Lê Thu Thủy', '025437', '5', '7;11;5;8;3', '5', '1', '0', '0', null, '2020-12-03 19:28:14');
INSERT INTO `presons` VALUES ('18', 'Lê Xuân Trường', '025444', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('19', 'Phùng Thị Xuân Tuyết', '025713', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('20', 'Lê Thị Thu Hiền', '025481', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('21', 'Ngô Văn Tam', '025476', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('22', 'Phạm Văn Cảnh', '025472', '0', '15;3;7;11;13', '0', '0', '0', '0', null, '2020-12-03 20:45:31');
INSERT INTO `presons` VALUES ('23', 'Tống Thị Anh Khiêm', '025462', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('25', 'Vũ Thu Trang', '025463', '2', null, '0', '0', '0', '2', null, null);
INSERT INTO `presons` VALUES ('26', 'Lê Thùy Ngọc Khanh', '025451', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('27', 'Trần Thị Thu Hạnh', '025479', '5', '8;1;15;12;2', '3', '1', '0', '0', null, '2020-12-03 20:35:06');
INSERT INTO `presons` VALUES ('28', 'Hồ Hồng Ngọc', '025491', '1', '7;4;14;5;8', '4', '1', '0', '0', null, '2020-12-03 20:35:09');
INSERT INTO `presons` VALUES ('29', 'Nguyễn Thành Trung', '025455', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('31', 'Nguyễn Quang Minh', '025450', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('32', 'Trần Minh Hải', '025459', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('33', 'Nguyễn Minh Dũng', '025468', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('34', 'Phạm Trung Hiếu', '025470', '5', '6;13;3;8;1', '5', '1', '0', '0', null, '2020-12-03 21:02:49');
INSERT INTO `presons` VALUES ('35', 'Nguyễn Thị Thu Hiền', '025488', '5', '12;7;3;11;9', '5', '1', '0', '0', null, '2020-12-03 21:07:27');
INSERT INTO `presons` VALUES ('36', 'Trần Quang Hoài', '025490', '3', '6;3;2;12;10', '5', '1', '0', '0', null, '2020-11-22 00:55:43');
INSERT INTO `presons` VALUES ('37', 'Nguyễn Phương Thảo', '025458', '5', '9;6;14;13;12', '3', '1', '0', '0', null, '2020-12-03 20:34:00');
INSERT INTO `presons` VALUES ('38', 'Giang Diệu Linh', '025465', '4', '1;11;8;9;12', '4', '1', '0', '0', null, '2020-12-03 21:10:29');
INSERT INTO `presons` VALUES ('39', 'Hoàng Thị Thủy', '025471', '5', '9;7;6;15;3', '4', '1', '0', '0', null, '2020-12-03 21:05:54');
INSERT INTO `presons` VALUES ('40', 'Trần Mạnh Đạt', '025510', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('41', 'Nguyễn Mạnh Hải', '025484', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('42', 'Lê Trung Hiếu', '025485', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('43', 'Nguyễn Xuân Công', '025486', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('44', 'Nguyễn Thị Hà', '025489', '4', '4;5;13;1;14', '4', '1', '0', '0', null, '2020-12-03 21:11:21');
INSERT INTO `presons` VALUES ('45', 'Hoàng Thúy Duyên', '025442', '4', '2;7;6;5;4', '5', '1', '0', '0', null, '2020-11-24 00:28:39');
INSERT INTO `presons` VALUES ('46', 'Nguyễn Văn Hiếu', '025498', '2', '15;13;11;3;4', '4', '1', '0', '0', null, '2020-12-03 21:06:27');
INSERT INTO `presons` VALUES ('47', 'Vũ Văn Hoàng', '025499', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('48', 'Nguyễn Đức An', '025500', '3', '3;1;5;10;7', '4', '1', '0', '0', null, '2020-12-03 20:22:27');
INSERT INTO `presons` VALUES ('49', 'Phạm Văn Đạt', '025508', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('50', 'Phạm Trung Hiếu', '025493', '0', '14;11;10;6;1', '4', '1', '0', '0', null, '2020-12-03 18:56:34');
INSERT INTO `presons` VALUES ('51', 'Lê Yến Hồng', '025497', '2', '2;12;9;11;4', '4', '1', '0', '0', null, '2020-12-03 19:01:39');
INSERT INTO `presons` VALUES ('52', 'Phạm Vũ Quỳnh Như', '011785', '0', '6;14;12;5;3', '0', '0', '0', '0', null, '2020-12-03 20:19:57');
INSERT INTO `presons` VALUES ('53', 'Trịnh Ngọc Tú', '025506', '0', '10;6;9;7;5', '4', '1', '0', '0', null, '2020-12-03 20:58:04');
INSERT INTO `presons` VALUES ('54', 'Hà Hiến Thành', '025501', '4', '4;13;1;14;6', '3', '1', '0', '0', null, '2020-12-03 20:56:10');
INSERT INTO `presons` VALUES ('55', 'Phan Ngọc Toàn', '025504', '2', '10;3;13;5;6', '3', '1', '0', '0', null, '2020-12-03 20:47:31');
INSERT INTO `presons` VALUES ('56', 'Vũ Thị Tiên Lữ', '025503', '3', '7;2;12;13;8', '4', '1', '0', '0', null, '2020-12-03 20:53:41');
INSERT INTO `presons` VALUES ('57', 'Đoàn Thị Mỵ Dung', '025505', '5', '9;7;1;12;6', '3', '1', '0', '0', null, '2020-12-03 20:57:12');
INSERT INTO `presons` VALUES ('58', 'Trần Thị Bình', '025507', '3', '3;7;2;5;11', '5', '1', '0', '0', null, '2020-12-03 21:23:11');
INSERT INTO `presons` VALUES ('59', 'Hoàng Văn Thắng', '026256', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('60', 'Nguyễn Thị Yến', '026482', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('61', 'Nguyễn Thu Phương', '026741', '4', '7;10;11;9;13', '5', '1', '0', '0', null, '2020-12-03 18:58:00');
INSERT INTO `presons` VALUES ('62', 'Nguyễn Thị Dưỡng', '026815', '5', '8;6;2;11;3', '4', '1', '0', '0', null, '2020-12-03 20:42:49');
INSERT INTO `presons` VALUES ('63', 'Phạm Thị Thùy Linh', '026900', '5', '2;3;9;15;1', '5', '1', '0', '0', null, '2020-12-03 20:31:13');
INSERT INTO `presons` VALUES ('64', 'Quách Văn Ninh', '024964', '2', '15;5;4;1;11', '5', '1', '0', '0', null, '2020-12-03 21:08:07');
INSERT INTO `presons` VALUES ('65', 'Nguyễn Thị Khánh Trang', '026561', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('66', 'Vũ Thị Nga', '027167', '4', '4;14;7;3;1', '3', '1', '0', '0', null, '2020-12-03 20:15:09');
INSERT INTO `presons` VALUES ('67', 'Phan Thị Kim Dung', '027105', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('68', 'Đỗ Thị Hiên', '027201', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('69', 'Vũ Thu Nga', '024495', '3', '10;15;14;7;4', '4', '1', '0', '0', null, '2020-12-03 20:26:32');
INSERT INTO `presons` VALUES ('70', 'Trần Nguyệt Vân Hải', '024493', '0', '4;10;9;2;15', '0', '0', '0', '0', null, '2020-12-02 01:41:13');
INSERT INTO `presons` VALUES ('71', 'Phạm Quốc Đoài', '024496', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('72', 'Nguyễn Văn Khôi', '024492', '4', '5;2;3;7;13', '5', '1', '0', '0', null, '2020-12-03 20:38:42');
INSERT INTO `presons` VALUES ('73', 'Đào Văn Hân', '024497', '4', '5;4;12;6;14', '3', '1', '0', '0', null, '2020-12-03 20:32:46');
INSERT INTO `presons` VALUES ('74', 'Vũ Đỗ Quyên', '024498', '4', '15;6;1;5;13', '5', '1', '0', '0', null, '2020-12-03 20:56:06');
INSERT INTO `presons` VALUES ('75', 'Nguyễn Thu Hà', '026039', '5', '11;13;5;7;12', '4', '1', '0', '0', null, '2020-12-03 20:29:53');
INSERT INTO `presons` VALUES ('76', 'Công Thị Quỳnh', '024488', '1', '6;10;3;9;8', '3', '1', '0', '0', null, '2020-12-03 20:50:33');
INSERT INTO `presons` VALUES ('77', 'Hoàng Thọ Khánh Toàn', '027821', '4', null, '0', '0', '0', '2', null, null);
INSERT INTO `presons` VALUES ('78', 'Nguyễn Đức Minh', '012276', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('79', 'Nguyễn Hồng Quân', '024636', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('80', 'Trần Thanh Tùng', '024672', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('81', 'Nguyễn Duy Đông', '027341', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('82', 'Vương Việt Long', '024684', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('83', 'Nghiêm Thu Giang', '025783', '0', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('84', 'Lê Đức Anh', '025469', '1', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('85', 'Lê Trang Mỹ', '025461', '2', null, '0', '0', '0', '0', null, null);
INSERT INTO `presons` VALUES ('86', 'Nông Thị Mơ', '025483', '3', null, '0', '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `A` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `B` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `C` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `D` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `E` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `true_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'Đầy đủ tên của TNR trên Đăng ký kinh doanh là gì?', 'Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Việt Nam', 'Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Việt Nam', 'Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Vietnam', 'Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Vietnam', null, '1', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('2', 'Slogan của TNR là gì?', 'Cộng hưởng giá trị - Hạnh phúc vững bền', 'Cộng hưởng giá trị - Hạnh phúc bền vững', 'Cộng hưởng vững bền – Giá trị hạnh phúc', 'Cộng hưởng hạnh phúc – Giá trị vững bền', null, '1', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('3', 'TNR được thành lập vào năm nào?', '2013', '2014', '2015', '2016', null, '2', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('4', 'Dòng sản phẩm TNR Stars được ra mắt vào năm nào?', '2014', '2015', '2016', '2017', null, '4', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('5', 'Dòng sản phẩm TNR Grand Palace được ra mắt vào năm nào?', '2017', '2018', '2019', '2020', null, '4', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('6', 'Toà văn phòng hạng A – TNR Tower 54A Nguyễn Chí Thanh được khai trương vào năm nào?', '2014', '2015', '2016', '2017', null, '2', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('7', 'Dự án TNR Goldmark City đã đạt kỷ lực nào?', 'Kỷ lục Tổ hợp căn hộ có nhiều Quảng trường nhất Việt Nam', 'Kỷ lục Bức tranh 3D dài nhất Việt Nam', 'Cả 2 đáp án trên đều đúng', 'Cả 2 đáp án đều không đúng', null, '3', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('8', 'TNR hiện có những dòng sản phẩm bất động sản nào đã chính thức ra mắt?', 'TNR Gold, TNR Stars, TNR Grand Palace', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Viva Panorama', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal, TNR Viva Panorama', null, '1', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('9', '5 Giá trị cốt lõi của TNR là gì?', 'Trách nhiệm – Chính trực – Tốc độ - Thấu hiểu – Hiệu quả', 'Trách nhiệm - Tốc Độ - Khách hàng - Hiệu quả -Sáng tạo', 'Trách nhiệm – Tốc độ - Khách hàng – Thấu hiểu – Đổi mới', 'Trách nhiệm – Thấu hiểu – Tốc độ - Khách hàng – Đổi mới', null, '2', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('10', 'Sứ mệnh của TNR là gì?', 'Nâng tầm chất lượng cuộc sống cho người Việt bằng các sản phẩm giá trị, hiện đại, sáng tạo và dẫn đầu xu hướng', 'Nâng tầm chất lượng cuộc sống cho người Việt', 'Nâng tầm chất lượng cuộc sống cho người Việt', 'Nâng tầm chất lượng cuộc sống cho TNGers', null, '1', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('11', 'Tầm nhìn của TNR là gì?', 'Trở thành tập đoàn quản lý và phát triển bất động sản thuộc Top đầu tại Việt Nam, hướng tới trở thành tập đoàn danh tiếng trong khu vực', 'Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu thế giới', 'Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu khu vực', 'Trở thành tập đoàn quản lý và phát triển bất động sản Số 1 tại Việt Nam', null, '1', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('12', 'Các tinh thần nền tảng văn hoá của TNR là gì?', 'Người dẫn đầu', 'Xây chuẩn mực', 'Tạo xu thế', 'Vượt giới hạn', 'Tất cả các đáp án trên', '5', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('13', 'Ban truyền thông có những vị trí nào?', 'Thiết kế, Nội dung', 'Thiết kế, thương hiệu, đối ngoại', 'Thiết kế, Thương hiệu, nội bộ, đối ngoại', 'Tất cả đáp án trên đều sai', null, '3', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('14', 'Người trẻ tuổi nhất  của ban truyền thông sinh năm bao nhiêu?', '1994', '1995', '1996', '1997', null, '2', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `questions` VALUES ('15', 'Trong Ban truyền thông team nào có tỷ lệ bình đẳng giới?', 'Team thiết kế', 'Team thương hiệu', 'Team nội bộ', 'Team đối ngoại', null, '3', '1', '2019-07-09 05:54:43', '2019-07-09 05:54:43');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_member` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1', 'Team 1', '4', '2019-07-11 22:43:36', '2020-12-03 20:50:33');
INSERT INTO `teams` VALUES ('2', 'Team 2', '6', '2019-07-11 22:43:36', '2020-12-03 21:06:27');
INSERT INTO `teams` VALUES ('3', 'Team 3', '5', '2019-07-11 22:43:36', '2020-12-03 21:23:11');
INSERT INTO `teams` VALUES ('4', 'Team 4', '12', '2019-07-11 22:43:36', '2020-12-03 21:11:21');
INSERT INTO `teams` VALUES ('5', 'Team 5', '11', '2019-07-11 22:43:36', '2020-12-03 21:07:27');

-- ----------------------------
-- Table structure for truequestions
-- ----------------------------
DROP TABLE IF EXISTS `truequestions`;
CREATE TABLE `truequestions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `true_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of truequestions
-- ----------------------------
INSERT INTO `truequestions` VALUES ('1', 'A', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `truequestions` VALUES ('2', 'B', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `truequestions` VALUES ('3', 'C', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `truequestions` VALUES ('4', 'D', '2019-07-09 05:54:43', '2019-07-09 05:54:43');
INSERT INTO `truequestions` VALUES ('5', 'E', '2019-07-09 05:54:43', '2019-07-09 05:54:43');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Trần Quang Hoài', 'hoaitq2@tng-holdings.vn', null, '$2y$10$mYWPwCp.vDqW1oLCa.nRj.GOfhXb9xUQEjsbINuuqoxmTUe/QOwVy', null, '2019-10-11 03:22:19', '2019-10-11 03:22:19');
