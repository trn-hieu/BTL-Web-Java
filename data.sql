-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `room_id` bigint DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq83pan5xy2a6rn0qsl9bckqai` (`room_id`),
  KEY `FKqtdxlvwg8vyoinka19ufqmo1b` (`type_id`),
  KEY `FKlnnelfsha11xmo2ndjq66fvro` (`customer_id`),
  CONSTRAINT `FKlnnelfsha11xmo2ndjq66fvro` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`user_id`),
  CONSTRAINT `FKq83pan5xy2a6rn0qsl9bckqai` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  CONSTRAINT `FKqtdxlvwg8vyoinka19ufqmo1b` FOREIGN KEY (`type_id`) REFERENCES `roomtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (4,'07:00:00','17:00:00','2022-04-09','2022-04-10','ACCEPTED',2,1,1),(5,'07:00:00','17:00:00','2022-04-13','2022-04-15','ACCEPTED',1,1,1),(6,'07:00:00','17:00:00','2022-04-09','2022-04-11','ACCEPTED',4,1,1),(7,'07:00:00','17:00:00','2022-04-11','2022-04-15','REQUEST',1,1,1),(8,'07:00:00','17:00:00','2022-04-11','2022-04-12','REQUEST',1,1,1),(9,'07:00:00','17:00:00','2022-04-10','2022-04-11','ACCEPTED',1,1,1),(10,'07:00:00','17:00:00','2022-04-11','2022-04-13','REQUEST',1,1,1),(11,'07:00:00','17:00:00','2022-04-10','2022-04-13','REFUSED',7,1,1),(12,'07:00:00','17:00:00','2022-04-09','2022-04-14','REQUEST',2,1,1),(13,'07:00:00','17:00:00','2022-04-08','2022-04-09','ACCEPTED',6,1,1),(14,'07:00:00','17:00:00','2022-04-14','2022-04-16','ACCEPTED',3,1,1),(15,'07:09:00','17:30:00','2022-04-02','2022-04-03','ACCEPTED',2,1,3),(16,'07:30:00','17:30:00','2022-05-25','2022-05-27','ACCEPTED',22,16,3),(17,'06:30:00','18:00:00','2022-03-10','2022-03-11','ACCEPTED',13,14,3),(18,'06:30:00','18:30:00','2022-01-04','2022-01-05','ACCEPTED',32,4,3),(19,'07:00:00','18:30:00','2022-02-02','2022-02-03','ACCEPTED',66,13,3),(20,'07:25:00','18:25:00','2021-11-10','2021-10-12','ACCEPTED',30,4,3),(21,'06:30:00','17:30:00','2022-01-03','2022-01-04','ACCEPTED',53,9,3),(22,'06:30:00','18:30:00','2021-12-10','2021-12-12','ACCEPTED',4,1,4),(23,'08:30:00','18:00:00','2022-01-15','2022-01-16','ACCEPTED',18,15,4),(24,'08:30:00','18:30:00','2022-03-10','2022-03-11','ACCEPTED',43,7,4),(25,'07:30:00','18:30:00','2022-04-20','2022-04-23','ACCEPTED',32,4,4),(26,'08:00:00','18:30:00','2022-04-13','2022-04-14','ACCEPTED',62,12,4),(27,'07:30:00','16:30:00','2022-03-17','2022-03-18','ACCEPTED',22,16,4),(28,'08:30:00','17:30:00','2022-03-07','2022-03-08','ACCEPTED',13,14,4),(29,'07:30:00','17:30:00','2021-12-06','2021-12-07','ACCEPTED',28,3,4),(30,'06:30:00','17:30:00','2022-02-09','2022-02-10','ACCEPTED',60,11,4),(31,'08:30:00','18:00:00','2022-04-06','2022-04-08','ACCEPTED',31,4,5),(32,'07:30:00','18:00:00','2022-04-30','2022-05-02','ACCEPTED',65,13,5),(33,'07:00:00','17:00:00','2022-04-30','2022-05-01','ACCEPTED',52,9,5),(34,'08:30:00','17:00:00','2022-02-16','2022-02-18','ACCEPTED',43,7,5),(35,'08:00:00','18:00:00','2022-02-10','2022-02-12','ACCEPTED',56,10,6),(36,'07:15:00','17:10:00','2022-04-29','2022-05-01','ACCEPTED',39,6,6),(37,'06:10:00','19:00:00','2021-12-15','2021-12-16','ACCEPTED',50,9,6),(38,'06:10:00','18:00:00','2022-02-23','2022-03-24','ACCEPTED',8,2,6),(39,'07:20:00','17:00:00','2021-11-24','2021-11-26','ACCEPTED',35,5,6),(40,'07:15:00','17:30:00','2022-01-13','2022-01-15','ACCEPTED',42,7,6),(41,'07:30:00','16:30:00','2022-05-20','2022-05-23','ACCEPTED',7,2,6),(42,'07:20:00','16:30:00','2021-10-20','2021-10-13','ACCEPTED',32,4,6),(43,'08:20:00','17:20:00','2021-11-29','2021-12-01','ACCEPTED',62,12,6),(44,'05:20:00','19:20:00','2022-04-18','2022-04-19','ACCEPTED',28,3,7),(45,'07:20:00','18:20:00','2022-04-18','2022-04-19','ACCEPTED',7,2,7),(46,'07:20:00','17:30:00','2022-02-16','2022-02-18','ACCEPTED',12,14,7),(47,'07:30:00','16:30:00','2021-11-20','2021-11-22','ACCEPTED',11,14,7),(48,'07:20:00','18:25:00','2022-01-06','2022-01-07','ACCEPTED',66,13,7),(49,'07:30:00','06:00:00','2021-10-21','2021-10-22','ACCEPTED',56,10,7),(50,'07:30:00','17:30:00','2022-04-17','2022-04-18','ACCEPTED',15,15,8),(51,'07:30:00','18:30:00','2022-03-10','2022-03-12','ACCEPTED',60,11,8),(52,'08:00:00','17:30:00','2021-11-11','2021-11-13','ACCEPTED',4,1,8),(53,'08:30:00','16:29:00','2022-05-06','2022-05-09','ACCEPTED',45,7,8),(54,'08:30:00','16:30:00','2022-05-03','2022-05-04','ACCEPTED',1,1,8),(55,'06:30:00','06:00:00','2022-05-03','2022-05-04','ACCEPTED',4,1,8);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKj8dlm21j202cadsbfkoem0s58` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('112 Lò Đúc','1999-01-18','Tran','Hieu','0394157864',1),('23/111 Cầu Giấy, HN','1991-10-11','Nguyen Van ','Nghia','0695483266',3),('123 Quang Trung, HBT, HN','1995-09-10','Lê Minh','An','0396456565',4),('12/43 Văn Quán, Hà Đông, HN','1997-11-11','Trần Trung','Dũng','0162549626',5),('145 Trần Khát Trân, HN','1990-01-11','Nguyễn Mạnh','Hùng','0631684856',6),('55 Lê Đại Hành, HN','1992-04-22','Lê Đăng','Khoa','0169551593',7),('19/181 Nguyễn Xiển, HN','1994-03-19','Đoàn Thùy','Linh','0395584895',8),('39 Đầm Trấu, HN','1999-09-03','Vũ Hải','Yến','0392188964',9),('45/220 Nguyễn Khoái, HN','1995-05-12','Nguyễn Minh','Nhật','0961584213',10),('333 Kim Ngưu ','1994-12-22','Đặng Minh','Quang','0245896351',11),('34 Bà Triệu','1997-10-15','Lê Quang','Nhật','0391984565',12),('43/139 Lĩnh Nam','1996-04-29','Trần Thanh ','Sơn','0169518568',13),('50 Bạch Mai, HN','1999-10-21','Nguyễn Khánh ','Ngọc','0392648658',14),('12/340 Tràng Thi, HN','1993-10-21','Đặng Ngọc','Khuê','0692684863',15),('54/231 Nguyễn Thái Học, HN','1999-03-18','Đặng Thành','Công','0169585535',16);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'126 Hàng Buồm','Hà Nội','Hoàn Kiếm','Aira Boutique Hanoi Hotel & Spa','03694148','Chào đón bạn đến với Khách sạn Essence Hà Nội, \"Mái nhà xa\" của bạn ở Hà Nội. Khách sạn Essence Hà Nội sẽ mang đến cho bạn quãng thời gian lưu trú thư giãn và dễ chịu nhất có thể. Đây cũng là lý do tại sao nhiều khách du lịch tiếp tục quay trở lại khách sạn sau nhiều năm.'),(2,'51-53 Bát Sứ, Hàng Bồ,Hanoi Chic Boutique Hotel nằm ở quận Hoàn Kiếm, thành phố Hà Nội','Hà Nội','Quận Hoàn Kiếm','Hanoi Chic Boutique Hotel','0396563458','Hanoi Chic Boutique Hotel nằm ở quận Hoàn Kiếm, thành phố Hà Nội, cách Chợ Đồng Xuân 500 m và Nhà thờ Lớn 600 m. Du khách có thể dùng bữa tại bar thức ăn nhẹ trong khuôn viên.'),(3,'40 Lò Sũ, Lý Thái Tổ','Hà Nội','Quận Hoàn Kiếm','Ma Coeur Boutique Hotel','0398525478','- Ma Coeur Boutique Hotel tọa lạc ở 40 Lò Sũ, quận Hoàn Kiếm, Hà Nội.\r\n- Khách sạn có “vị trí vàng” ngay khu trung tâm nội thành Hà Nội. Dù bạn lên kế hoạch cho chuyến đi khám phá thành phố hay công tác đều rất thuận tiện. Cách Hồ Gươm 50m – đây là một trong những địa điểm tham quan nổi tiếng ở trung tâm Hà Nội. Khoảng cách từ khách sạn đến Chợ Đồng Xuân, Nhà thờ lớn, phố bia Tạ Hiện chỉ hơn 500m. Khách sạn ở ngay sát siêu thị nhỏ Vinmart, Circle K, ngân hàng Sacombank, BIDV, Vietcombank. Phố Lò Sũ là đường 2 chiều, thuận tiện cho xe 45 chỗ đón trả khách ngay tại sảnh khách sạn. Bạn có thể lựa chọn các địa điểm tham quan nổi tiếng khác như Văn Miếu Quốc Tử Giám, Lăng Bác, nhà tù Hỏa Lò, trung tâm thương mại Vincom…'),(4,'1 Thanh Niên, Trúc Bạch','Hà Nội','Quận Ba Đình','Pan Pacific Hanoi','0698342468','Đứng sừng sững giữa thành phố với 20 tầng, Pan Pacific Hanoi có tầm nhìn ra Hồ Tây, Hồ Trúc Bạch và Sông Hồng. Khách sạn cách trung tâm thành phố chỉ vài phút nên quý khách có thể đi đến Khu Phố Cổ sôi động trong vòng chỉ 3 km hay dạo bộ ven hồ. Nơi đây có spa đầy đủ dịch vụ, hồ bơi bốn mùa nước nóng trong nhà với mái che có thể kéo vào được và Wi-Fi miễn phí trong toàn bộ khuôn viên.\r\n\r\nCác phòng nghỉ tại đây có phong cách hiện đại và được trang trí với tông màu vàng, trung tính, đồ nội thất hiện đại và thiết kế kiểu Việt Nam. Mỗi phòng đều được trang bị TV màn hình phẳng LCD và minibar đầy ắp đồ. Pan Pacific Hanoi có tầm nhìn ra Hồ Tây, Hồ Trúc Bạch và Sông Hồng. Khách sạn cách trung tâm thành phố chỉ vài phút nên quý khách có thể đi đến Khu Phố Cổ sôi động trong vòng chỉ 3 km hay dạo bộ ven hồ. Nơi đây có spa đầy đủ dịch vụ, hồ bơi bốn mùa nước nóng trong nhà với mái che có thể kéo vào được và Wi-Fi miễn phí trong toàn bộ khuôn viên.');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_service`
--

DROP TABLE IF EXISTS `hotel_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_service` (
  `hotel_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FKt396hq6f4k8qrv18i4k6omv3e` (`service_id`),
  KEY `FKa94xlwpvda1q3kh1gvcrxxhfa` (`hotel_id`),
  CONSTRAINT `FKa94xlwpvda1q3kh1gvcrxxhfa` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  CONSTRAINT `FKt396hq6f4k8qrv18i4k6omv3e` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_service`
--

LOCK TABLES `hotel_service` WRITE;
/*!40000 ALTER TABLE `hotel_service` DISABLE KEYS */;
INSERT INTO `hotel_service` VALUES (1,2,1),(1,3,2),(1,1,3),(1,7,4),(1,5,5),(1,6,6);
/*!40000 ALTER TABLE `hotel_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_CUSTOMER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo7gfniwldbki4d8my1oec5hoj` (`type`),
  CONSTRAINT `FKo7gfniwldbki4d8my1oec5hoj` FOREIGN KEY (`type`) REFERENCES `roomtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'P100',1),(2,'P101',1),(3,'P102',1),(4,'P103',1),(5,'P104',1),(6,'P105',2),(7,'P106',2),(8,'P107',2),(9,'P200',14),(10,'P201',14),(11,'P202',14),(12,'P203',14),(13,'P204',14),(14,'P205',14),(15,'P300',15),(16,'P301',15),(17,'P302',15),(18,'P303',15),(19,'P400',16),(20,'P401',16),(21,'P402',16),(22,'P403',16),(23,'P404',16),(24,'P500',17),(25,'P501',17),(26,'A100',3),(27,'A111',3),(28,'A110',3),(29,'A202',4),(30,'A205',4),(31,'A210',4),(32,'A222',4),(33,'201',5),(34,'202',5),(35,'203',5),(36,'204',5),(37,'300',6),(38,'303',6),(39,'305',6),(40,'310',6),(41,'311',6),(42,'400',7),(43,'402',7),(44,'404',7),(45,'411',7),(46,'510',8),(47,'505',8),(48,'511',8),(49,'521',8),(50,'B200',9),(51,'B201',9),(52,'B202',9),(53,'B203',9),(54,'B300',10),(55,'B301',10),(56,'B304',10),(57,'B305',10),(58,'B401',11),(59,'B402',11),(60,'B404',11),(61,'B500',12),(62,'B501',12),(63,'B600',13),(64,'B601',13),(65,'B602',13),(66,'B603',13);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `room_area` float NOT NULL,
  `room_view` varchar(255) DEFAULT NULL,
  `bed_infor` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `hotel_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhu9u5kqls1rs3pjfgwfe3570a` (`hotel_id`),
  CONSTRAINT `FKhu9u5kqls1rs3pjfgwfe3570a` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'Superior King Ocean',30,'Hướng biển','1 Giường King','Tối đa 3 người lớn | 2 người lớn & 2 trẻ em',1400000,1),(2,'Standard Double Room',18,'Hướng thành phố','2 Giường đơn','2 khách',1300000,2),(3,'Phòng Đôi Deluxe',25,'Hướng Quang cảnh thành phố','1 giường cỡ lớn','2 khách',1800000,2),(4,'FAMILY ROOM STANDARD',25,'Hướng biển','2 giường đôi','4 khách',2500000,2),(5,'Phòng Đôi Cổ Điển',16,'Hướng Quang cảnh vườn','1 giường đôi cỡ lớn','2 khách',1100000,3),(6,'Phòng Suite Premium',38,'Hướng Quang cảnh thành phố','1 giường cỡ lớn','2 khách',1250000,3),(7,'Phòng 2 Giường Đơn Junior',25,'Hướng Quang cảnh thành phố','2 giường đơn','3 khách',1000000,3),(8,'Phòng Dành Cho Gia Đình',60,'Hướng Quang cảnh thành phố','1 giường cỡ lớn và 2 giường đơn','4 khách',1900000,3),(9,'Deluxe Room',35,'Hướng thành phố','1 Giường đôi | 2 giường đơn','3 người lớn | 2 người lớn & 1 trẻ em',1650000,4),(10,'Premier Lake View Room',38,'Hướng sông','1 Giường lớn','2 khách',1200000,4),(11,'Pacific Club Room',40,'Hướng thành phố','1 Giường cỡ lớn và 1 giường đơn','3 khách',1300000,4),(12,'Executive Suite',50,'Hướng nội khu','1 Giường lớn và 1 giường đôi','3 người lớn & 1 trẻ em',1780000,4),(13,'Superior Double',25,'Hướng không cảnh quan','1 Giường lớn','2 người lớn',850000,2),(14,'Superior Double No View',30,'Hướng không cảnh quan','1 Giường cỡ lớn','2 người lớn',1000000,1),(15,'Deluxe Double City View',35,'Hướng thành phố','1 Giường cỡ lớn và 1 giường đơn','2 người lớn & 1 trẻ',1200000,1),(16,'Premier Deluxe Double City View',40,'Hướng thành phố','1 Giường cỡ lớn và 1 giường đơn','3 người lớn & 1 trẻ em ',1800000,1),(17,'Signature Suite Lake View',55,'Hướng thành phố | hồ','1 Giường cỡ lớn ','3 người lớn & 1 trẻ em',4000000,1);
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Bữa sáng miễn phí '),(2,'Bể bơi'),(3,'Bãi đỗ xe miễn phí'),(4,'Bãi đỗ xe trả phí'),(5,'Thang máy'),(6,'Quầy Bar'),(7,'Giặt ủi'),(8,'Bảo vệ 24/24'),(9,'Đổi ngoại tệ'),(10,'Cho thuê xe'),(11,'Đưa đón đến sân bay'),(12,'Dịch vụ thu tín');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$uG6HtVxBH3rEux0yY446uOrXC/N5/xleEmVcPnUftrWZK/PPbznka','admin'),(3,'$2a$10$FaQkdEsoZ36tfQIQTIpbROiJ5c3VAGCxkmfbQVr2XWKIsKvVT42qW','test1'),(4,'$2a$10$mKWRc.ljsqD8Mja2Y9sR8eGgnjAYjL2YMaNtMy6mbuvVZLkAkFlM6','test2'),(5,'$2a$10$PonvuHlj6Ec764GgYwBvt.w./Zat1HBTN2ydmGj7x9vNkYRVJjWV6','test3'),(6,'$2a$10$mS6aVchRL0voyIfiLAWZuuqJ6Iq/VOOOPOFwXAzNKIMrXy3AFv41C','test4'),(7,'$2a$10$6aCgJf4Qu9NrUhntSVYStu.LGaHCnfHXaB8N5HltxOxPIR/0nziHS','test5'),(8,'$2a$10$QqL5qHf1rnsEYKfrPaAYVeps1z6IKtxlbCvPY7GAFalgMufpWatjq','test6'),(9,'$2a$10$/BsqsPG.2fwLJE9LybOBl.TxMTIc4Pk7G2wRoq/FTTbOXAoHRpPwu','test7'),(10,'$2a$10$AKJhifT.75LNs8C6DHFCBubTl4OptPDEq5HpRzLqsrp20ZI.m7epq','test8'),(11,'$2a$10$t/RACfoZHdPpUmyxsXfjFOo0.qgXZtWCZGC1HCxK4A./epC6ihUhG','test9'),(12,'$2a$10$WC.Dnbvy8BPlOx25YkQNJ.2blHfdKXlb1PosOuR/mXojHQquCk2Qq','test10'),(13,'$2a$10$oG8/aiGMzFu9GRHM9ofR7uF1rF6fHEtEfanA4re5XppTzwlwtVcK2','test11'),(14,'$2a$10$xGPbzUud9GYdXxU79UcGNuhjsXdWMLAb6402ZsJEZZwkwHNv5v4TK','test12'),(15,'$2a$10$HwpeNkLIYdNO.O..2LxbQuqcC5uMS/sOGUSF2WAZOgy7bRn3a6s5O','test13'),(16,'$2a$10$m8CGdlZY4c0tNzYH6uDRd.lpxnw12CckQtd2AJrUBTj8su0194eGe','test14');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,2,12),(14,2,13),(15,2,14),(16,2,15);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 14:05:33
