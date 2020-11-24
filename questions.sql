/*
Navicat MySQL Data Transfer

Source Server         : Database
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : penang

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-24 11:01:51
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `questions` VALUES ('1', 'Đầy đủ tên của TNR trên Đăng ký kinh doanh là gì?', 'Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Việt Nam', 'Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Việt Nam', 'Công Ty Cổ Phần Đầu Tư Phát Triển Bất Động Sản TNR Holdings Vietnam', 'Công Ty Cổ Phần Đầu Tư & Phát Triển Bất Động Sản TNR Holdings Vietnam', null, '1', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('2', 'Slogan của TNR là gì?', 'Cộng hưởng giá trị - Hạnh phúc vững bền', 'Cộng hưởng giá trị - Hạnh phúc bền vững', 'Cộng hưởng vững bền – Giá trị hạnh phúc', 'Cộng hưởng hạnh phúc – Giá trị vững bền', null, '1', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('3', 'TNR được thành lập vào năm nào?', '2013', '2014', '2015', '2016', null, '2', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('4', 'Dòng sản phẩm TNR Stars được ra mắt vào năm nào?', '2014', '2015', '2016', '2017', null, '4', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('5', 'Dòng sản phẩm TNR Grand Palace được ra mắt vào năm nào?', '2017', '2018', '2019', '2020', null, '4', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('6', 'Toà văn phòng hạng A – TNR Tower 54A Nguyễn Chí Thanh được khai trương vào năm nào?', '2014', '2015', '2016', '2017', null, '2', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('7', 'Dự án TNR Goldmark City đã đạt kỷ lực nào?', 'Kỷ lục Tổ hợp căn hộ có nhiều Quảng trường nhất Việt Nam', 'Kỷ lục Bức tranh 3D dài nhất Việt Nam', 'Cả 2 đáp án trên đều đúng', 'Cả 2 đáp án đều không đúng', null, '3', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('8', 'TNR hiện có những dòng sản phẩm bất động sản nào đã chính thức ra mắt?', 'TNR Gold, TNR Stars, TNR Grand Palace', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Viva Panorama', 'TNR Gold, TNR Stars, TNR Grand Palace, TNR Royal, TNR Viva Panorama', null, '1', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('9', '5 Giá trị cốt lõi của TNR là gì?', 'Trách nhiệm – Chính trực – Tốc độ - Thấu hiểu – Hiệu quả', 'Trách nhiệm - Tốc Độ - Khách hàng - Hiệu quả -Sáng tạo', 'Trách nhiệm – Tốc độ - Khách hàng – Thấu hiểu – Đổi mới', 'Trách nhiệm – Thấu hiểu – Tốc độ - Khách hàng – Đổi mới', null, '2', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('10', 'Sứ mệnh của TNR là gì?', 'Nâng tầm chất lượng cuộc sống cho người Việt bằng các sản phẩm giá trị, hiện đại, sáng tạo và dẫn đầu xu hướng', 'Nâng tầm chất lượng cuộc sống cho người Việt', 'Nâng tầm chất lượng cuộc sống cho người Việt', 'Nâng tầm chất lượng cuộc sống cho TNGers', null, '1', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('11', 'Tầm nhìn của TNR là gì?', 'Trở thành tập đoàn quản lý và phát triển bất động sản thuộc Top đầu tại Việt Nam, hướng tới trở thành tập đoàn danh tiếng trong khu vực', 'Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu thế giới', 'Trở thành tập đoàn quản lý và phát triển bất động sản hàng đầu khu vực', 'Trở thành tập đoàn quản lý và phát triển bất động sản Số 1 tại Việt Nam', null, '1', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('12', 'Các tinh thần nền tảng văn hoá của TNR là gì?', 'Người dẫn đầu', 'Xây chuẩn mực', 'Tạo xu thế', 'Vượt giới hạn', 'Tất cả các đáp án trên', '5', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('13', 'Ban truyền thông có những vị trí nào?', 'Thiết kế, Nội dung', 'Thiết kế, thương hiệu, đối ngoại', 'Thiết kế, Thương hiệu, nội bộ, đối ngoại', 'Tất cả đáp án trên đều sai', null, '3', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('14', 'Người trẻ tuổi nhất  của ban truyền thông sinh năm bao nhiêu?', '1994', '1995', '1996', '1997', null, '2', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
INSERT INTO `questions` VALUES ('15', 'Trong Ban truyền thông team nào có tỷ lệ bình đẳng giới?', 'Team thiết kế', 'Team thương hiệu', 'Team nội bộ', 'Team đối ngoại', null, '3', '1', '2019-07-08 22:54:43', '2019-07-08 22:54:43');
