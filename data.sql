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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (4,'07:00:00','17:00:00','2022-04-09','2022-04-10','REFUSED',2,1,1),(5,'07:00:00','17:00:00','2022-04-13','2022-04-15','ACCEPTED',1,1,1),(6,'07:00:00','17:00:00','2022-04-09','2022-04-11','ACCEPTED',4,1,1),(7,'07:00:00','17:00:00','2022-04-11','2022-04-15','CANCEL',1,1,1),(8,'07:00:00','17:00:00','2022-04-11','2022-04-12','ACCEPTED',5,1,1),(9,'07:00:00','17:00:00','2022-04-10','2022-04-11','ACCEPTED',1,1,1),(10,'07:00:00','17:00:00','2022-04-11','2022-04-13','CANCEL',1,1,1),(11,'07:00:00','17:00:00','2022-04-10','2022-04-13','REFUSED',7,1,1),(12,'07:00:00','17:00:00','2022-04-09','2022-04-14','REFUSED',2,1,1),(13,'07:00:00','17:00:00','2022-04-08','2022-04-09','ACCEPTED',6,1,1),(14,'07:00:00','17:00:00','2022-04-14','2022-04-16','REFUSED',3,1,1),(15,'07:09:00','17:30:00','2022-04-02','2022-04-03','ACCEPTED',3,1,3),(16,'07:30:00','17:30:00','2022-05-25','2022-05-27','ACCEPTED',22,16,3),(17,'06:30:00','18:00:00','2022-03-10','2022-03-11','ACCEPTED',13,14,3),(18,'06:30:00','18:30:00','2022-01-04','2022-01-05','ACCEPTED',32,4,3),(19,'07:00:00','18:30:00','2022-02-02','2022-02-03','ACCEPTED',66,13,3),(20,'07:25:00','18:25:00','2021-11-10','2021-10-12','ACCEPTED',30,4,3),(21,'06:30:00','17:30:00','2022-01-03','2022-01-04','ACCEPTED',53,9,3),(22,'06:30:00','18:30:00','2021-12-10','2021-12-12','ACCEPTED',4,1,4),(23,'08:30:00','18:00:00','2022-01-15','2022-01-16','ACCEPTED',18,15,4),(24,'08:30:00','18:30:00','2022-03-10','2022-03-11','ACCEPTED',43,7,4),(25,'07:30:00','18:30:00','2022-04-20','2022-04-23','ACCEPTED',32,4,4),(26,'08:00:00','18:30:00','2022-04-13','2022-04-14','ACCEPTED',62,12,4),(27,'07:30:00','16:30:00','2022-03-17','2022-03-18','ACCEPTED',22,16,4),(28,'08:30:00','17:30:00','2022-03-07','2022-03-08','ACCEPTED',13,14,4),(29,'07:30:00','17:30:00','2021-12-06','2021-12-07','ACCEPTED',28,3,4),(30,'06:30:00','17:30:00','2022-02-09','2022-02-10','ACCEPTED',60,11,4),(31,'08:30:00','18:00:00','2022-04-06','2022-04-08','ACCEPTED',31,4,5),(32,'07:30:00','18:00:00','2022-04-30','2022-05-02','ACCEPTED',65,13,5),(33,'07:00:00','17:00:00','2022-04-30','2022-05-01','ACCEPTED',52,9,5),(34,'08:30:00','17:00:00','2022-02-16','2022-02-18','ACCEPTED',43,7,5),(35,'08:00:00','18:00:00','2022-02-10','2022-02-12','ACCEPTED',56,10,6),(36,'07:15:00','17:10:00','2022-04-29','2022-05-01','ACCEPTED',39,6,6),(37,'06:10:00','19:00:00','2021-12-15','2021-12-16','ACCEPTED',50,9,6),(38,'06:10:00','18:00:00','2022-02-23','2022-03-24','ACCEPTED',8,2,6),(39,'07:20:00','17:00:00','2021-11-24','2021-11-26','ACCEPTED',35,5,6),(40,'07:15:00','17:30:00','2022-01-13','2022-01-15','ACCEPTED',42,7,6),(41,'07:30:00','16:30:00','2022-05-20','2022-05-23','ACCEPTED',7,2,6),(42,'07:20:00','16:30:00','2021-10-20','2021-10-13','ACCEPTED',32,4,6),(43,'08:20:00','17:20:00','2021-11-29','2021-12-01','ACCEPTED',62,12,6),(44,'05:20:00','19:20:00','2022-04-18','2022-04-19','ACCEPTED',28,3,7),(45,'07:20:00','18:20:00','2022-04-18','2022-04-19','ACCEPTED',7,2,7),(46,'07:20:00','17:30:00','2022-02-16','2022-02-18','ACCEPTED',12,14,7),(47,'07:30:00','16:30:00','2021-11-20','2021-11-22','ACCEPTED',11,14,7),(48,'07:20:00','18:25:00','2022-01-06','2022-01-07','ACCEPTED',66,13,7),(49,'07:30:00','06:00:00','2021-10-21','2021-10-22','ACCEPTED',56,10,7),(50,'07:30:00','17:30:00','2022-04-17','2022-04-18','ACCEPTED',15,15,8),(51,'07:30:00','18:30:00','2022-03-10','2022-03-12','ACCEPTED',60,11,8),(52,'08:00:00','17:30:00','2021-11-11','2021-11-13','ACCEPTED',4,1,8),(53,'08:30:00','16:29:00','2022-05-06','2022-05-09','ACCEPTED',45,7,8),(54,'08:30:00','16:30:00','2022-05-03','2022-05-04','ACCEPTED',1,1,8),(55,'06:30:00','06:00:00','2022-05-03','2022-05-04','ACCEPTED',4,1,8),(56,'07:25:00','16:30:00','2022-05-02','2022-05-03','CANCEL',NULL,11,3),(57,'08:30:00','17:00:00','2022-04-10','2022-04-12','ACCEPTED',24,17,4),(58,'10:30:00','16:00:00','2022-04-10','2022-04-13','ACCEPTED',25,17,5),(59,'09:30:00','16:00:00','2022-04-10','2022-04-11','REQUEST',NULL,14,8),(60,'08:30:00','17:00:00','2022-04-10','2022-04-13','REQUEST',NULL,17,12),(61,'07:30:00','17:00:00','2022-04-17','2022-04-19','ACCEPTED',25,17,12),(62,'08:15:00','17:15:00','2022-04-10','2022-04-12','ACCEPTED',18,15,15),(63,'08:30:00','17:00:00','2022-04-13','2022-04-14','ACCEPTED',17,15,11),(64,'07:45:00','17:00:00','2022-04-13','2022-04-16','ACCEPTED',18,15,10),(65,'08:50:00','16:15:00','2022-04-17','2022-04-17','ACCEPTED',17,15,14),(66,'08:32:00','16:20:00','2022-01-15','2022-01-17','ACCEPTED',21,16,7),(67,'08:15:00','17:10:00','2022-01-15','2022-01-16','ACCEPTED',23,16,9),(68,'08:00:00','15:15:00','2022-03-07','2022-03-09','ACCEPTED',21,16,12),(69,'09:05:00','17:15:00','2022-03-10','2022-03-11','ACCEPTED',22,16,4),(70,'08:30:00','15:40:00','2022-05-25','2022-05-27','ACCEPTED',11,14,15),(71,'07:30:00','17:30:00','2022-05-03','2022-05-04','ACCEPTED',13,14,13);
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
INSERT INTO `customer` VALUES ('112 L?? ????c','1999-01-18','Tran','Hieu','0394157864',1),('23/111 C???u Gi???y, HN','1991-10-11','Nguyen Van ','Nghia','0695483266',3),('123 Quang Trung, HBT, HN','1995-09-10','L?? Minh','An','0396456565',4),('12/43 V??n Qu??n, H?? ????ng, HN','1997-11-11','Tr???n Trung','D??ng','0162549626',5),('145 Tr???n Kh??t Tr??n, HN','1990-01-11','Nguy???n M???nh','H??ng','0631684856',6),('55 L?? ?????i H??nh, HN','1992-04-22','L?? ????ng','Khoa','0169551593',7),('19/181 Nguy???n Xi???n, HN','1994-03-19','??o??n Th??y','Linh','0395584895',8),('39 ?????m Tr???u, HN','1999-09-03','V?? H???i','Y???n','0392188964',9),('45/220 Nguy???n Kho??i, HN','1995-05-12','Nguy???n Minh','Nh???t','0961584213',10),('333 Kim Ng??u ','1994-12-22','?????ng Minh','Quang','0245896351',11),('34 B?? Tri???u','1997-10-15','L?? Quang','Nh???t','0391984565',12),('43/139 L??nh Nam','1996-04-29','Tr???n Thanh ','S??n','0169518568',13),('50 B???ch Mai, HN','1999-10-21','Nguy???n Kh??nh ','Ng???c','0392648658',14),('12/340 Tr??ng Thi, HN','1993-10-21','?????ng Ng???c','Khu??','0692684863',15),('54/231 Nguy???n Th??i H???c, HN','1999-03-18','?????ng Th??nh','C??ng','0169585535',16);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'126 H??ng Bu???m','Th??nh ph??? H?? N???i','Qu???n Ho??n Ki???m','Aira Boutique Hanoi Hotel & Spa','0369414854','Ch??o ????n b???n ?????n v???i Kh??ch s???n Essence H?? N???i, \"M??i nh?? xa\" c???a b???n ??? H?? N???i. Kh??ch s???n Essence H?? N???i s??? mang ?????n cho b???n qu??ng th???i gian l??u tr?? th?? gi??n v?? d??? ch???u nh???t c?? th???. ????y c??ng l?? l?? do t???i sao nhi???u kh??ch du l???ch ti???p t???c quay tr??? l???i kh??ch s???n sau nhi???u n??m.'),(2,'51-53 B??t S???, H??ng B???','Th??nh ph??? H?? N???i','Qu???n Ho??n Ki???m','Hanoi Chic Boutique Hotel','0396563458','Hanoi Chic Boutique Hotel n???m ??? qu???n Ho??n Ki???m, th??nh ph??? H?? N???i, c??ch Ch??? ?????ng Xu??n 500 m v?? Nh?? th??? L???n 600 m. Du kh??ch c?? th??? d??ng b???a t???i bar th???c ??n nh??? trong khu??n vi??n.'),(3,'40 Lo?? S??, L?? Th??i T???','Th??nh ph??? H?? N???i','Qu???n Ho??n Ki???m','Ma Coeur Boutique Hotel','0398525478','- Ma Coeur Boutique Hotel t???a l???c ??? 40 L?? S??, qu???n Ho??n Ki???m, H?? N???i.\r\n- Kh??ch s???n c?? ???v??? tr?? v??ng??? ngay khu trung t??m n???i th??nh H?? N???i. D?? b???n l??n k??? ho???ch cho chuy???n ??i kh??m ph?? th??nh ph??? hay c??ng t??c ?????u r???t thu???n ti???n. C??ch H??? G????m 50m ??? ????y l?? m???t trong nh???ng ?????a ??i???m tham quan n???i ti???ng ??? trung t??m H?? N???i. Kho???ng c??ch t??? kh??ch s???n ?????n Ch??? ?????ng Xu??n, Nh?? th??? l???n, ph??? bia T??? Hi???n ch??? h??n 500m. Kh??ch s???n ??? ngay s??t si??u th??? nh??? Vinmart, Circle K, ng??n h??ng Sacombank, BIDV, Vietcombank. Ph??? L?? S?? l?? ???????ng 2 chi???u, thu???n ti???n cho xe 45 ch??? ????n tr??? kh??ch ngay t???i s???nh kh??ch s???n. B???n c?? th??? l???a ch???n c??c ?????a ??i???m tham quan n???i ti???ng kh??c nh?? V??n Mi???u Qu???c T??? Gi??m, L??ng B??c, nh?? t?? H???a L??, trung t??m th????ng m???i Vincom???'),(4,'1 Thanh Ni??n, Tr??c B???ch','Th??nh ph??? H?? N???i','Qu???n Ba ????nh','Pan Pacific Hanoi','0698342468','?????ng s???ng s???ng gi???a th??nh ph??? v???i 20 t???ng, Pan Pacific Hanoi c?? t???m nh??n ra H??? T??y, H??? Tr??c B???ch v?? S??ng H???ng. Kh??ch s???n c??ch trung t??m th??nh ph??? ch??? v??i ph??t n??n qu?? kh??ch c?? th??? ??i ?????n Khu Ph??? C??? s??i ?????ng trong v??ng ch??? 3 km hay d???o b??? ven h???. N??i ????y c?? spa ?????y ????? d???ch v???, h??? b??i b???n m??a n?????c n??ng trong nh?? v???i m??i che c?? th??? k??o v??o ???????c v?? Wi-Fi mi???n ph?? trong to??n b??? khu??n vi??n.\r\n\r\nC??c ph??ng ngh??? t???i ????y c?? phong c??ch hi???n ?????i v?? ???????c trang tr?? v???i t??ng m??u v??ng, trung t??nh, ????? n???i th???t hi???n ?????i v?? thi???t k??? ki???u Vi???t Nam. M???i ph??ng ?????u ???????c trang b??? TV m??n h??nh ph???ng LCD v?? minibar ?????y ???p ?????. Pan Pacific Hanoi c?? t???m nh??n ra H??? T??y, H??? Tr??c B???ch v?? S??ng H???ng. Kh??ch s???n c??ch trung t??m th??nh ph??? ch??? v??i ph??t n??n qu?? kh??ch c?? th??? ??i ?????n Khu Ph??? C??? s??i ?????ng trong v??ng ch??? 3 km hay d???o b??? ven h???. N??i ????y c?? spa ?????y ????? d???ch v???, h??? b??i b???n m??a n?????c n??ng trong nh?? v???i m??i che c?? th??? k??o v??o ???????c v?? Wi-Fi mi???n ph?? trong to??n b??? khu??n vi??n.');
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_service`
--

LOCK TABLES `hotel_service` WRITE;
/*!40000 ALTER TABLE `hotel_service` DISABLE KEYS */;
INSERT INTO `hotel_service` VALUES (3,4,24),(3,5,25),(3,6,26),(3,8,27),(3,9,28),(4,1,29),(4,2,30),(4,3,31),(4,6,32),(4,7,33),(4,8,34),(4,9,35),(4,10,36),(2,1,172),(2,2,173),(2,3,174),(2,8,175),(2,10,176),(2,11,177),(2,12,178),(1,1,193),(1,2,194),(1,3,195),(1,5,196),(1,6,197),(1,8,198),(1,9,199);
/*!40000 ALTER TABLE `hotel_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `hotel_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnmctq4w6r7lkp880d4utoop2l` (`hotel_id`),
  CONSTRAINT `FKnmctq4w6r7lkp880d4utoop2l` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (8,'/images/hotel/Aira Boutique Hanoi Hotel & Spa.jpg',1),(9,'/images/hotel/Aira Boutique Hanoi Hotel & Spa.webp',1),(10,'/images/hotel/Aira Boutique Hanoi Hotel & Spa-1.jpg',1),(11,'/images/hotel/Aira Boutique Hanoi Hotel & Spa-2.jpg',1),(12,'/images/hotel/Hanoi Chic Boutique Hotel.jpg',2),(13,'/images/hotel/Hanoi Chic Boutique Hotel-1.jpg',2),(14,'/images/hotel/Hanoi Chic Boutique Hotel-2.jpg',2),(15,'/images/hotel/Hanoi Chic Boutique Hotel-3.jpg',2),(16,'/images/hotel/Ma Coeur Boutique Hotel.jpg',3),(17,'/images/hotel/Ma Coeur Boutique Hotel-1.jpg',3),(18,'/images/hotel/Ma Coeur Boutique Hotel-2.jpg',3),(19,'/images/hotel/Ma Coeur Boutique Hotel.webp',3),(20,'/images/hotel/Pan Pacific Hanoi.jpg',4),(21,'/images/hotel/Pan Pacific Hanoi-1.jpg',4),(22,'/images/hotel/Pan Pacific Hanoi-2.jpg',4),(23,'/images/hotel/Pan Pacific Hanoi-3.jpg',4);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'Superior King Ocean',30,'H?????ng bi???n','1 Gi?????ng King','T???i ??a 3 ng?????i l???n | 2 ng?????i l???n & 2 tr??? em',1400000,1),(2,'Standard Double Room',18,'H?????ng th??nh ph???','2 Gi?????ng ????n','2 kh??ch',1300000,2),(3,'Double Room Deluxe',25,'H?????ng Quang c???nh th??nh ph???','1 gi?????ng c??? l???n','2 kh??ch',1800000,2),(4,'Family Room Standard',25,'H?????ng bi???n','2 gi?????ng ????i','4 kh??ch',2500000,2),(5,'Ph??ng ????i C??? ??i???n',16,'H?????ng Quang c???nh v?????n','1 gi?????ng ????i c??? l???n','2 kh??ch',1100000,3),(6,'Ph??ng Suite Premium',38,'H?????ng Quang c???nh th??nh ph???','1 gi?????ng c??? l???n','2 kh??ch',1250000,3),(7,'Ph??ng 2 Gi?????ng ????n Junior',25,'H?????ng Quang c???nh th??nh ph???','2 gi?????ng ????n','3 kh??ch',1000000,3),(8,'Ph??ng D??nh Cho Gia ????nh',60,'H?????ng Quang c???nh th??nh ph???','1 gi?????ng c??? l???n v?? 2 gi?????ng ????n','4 kh??ch',1900000,3),(9,'Deluxe Room',35,'H?????ng th??nh ph???','1 Gi?????ng ????i | 2 gi?????ng ????n','3 ng?????i l???n | 2 ng?????i l???n & 1 tr??? em',1650000,4),(10,'Premier Lake View Room',38,'H?????ng s??ng','1 Gi?????ng l???n','2 kh??ch',1200000,4),(11,'Pacific Club Room',40,'H?????ng th??nh ph???','1 Gi?????ng c??? l???n v?? 1 gi?????ng ????n','3 kh??ch',1300000,4),(12,'Executive Suite',50,'H?????ng n???i khu','1 Gi?????ng l???n v?? 1 gi?????ng ????i','3 ng?????i l???n & 1 tr??? em',1780000,4),(13,'Superior Double',25,'H?????ng kh??ng c???nh quan','1 Gi?????ng l???n','2 ng?????i l???n',850000,2),(14,'Superior Double No View',30,'H?????ng kh??ng c???nh quan','1 Gi?????ng c??? l???n','2 ng?????i l???n',1000000,1),(15,'Deluxe Double City View',35,'H?????ng th??nh ph???','1 Gi?????ng c??? l???n v?? 1 gi?????ng ????n','2 ng?????i l???n & 1 tr???',1200000,1),(16,'Premier Deluxe Double City View',40,'H?????ng th??nh ph???','1 Gi?????ng c??? l???n v?? 1 gi?????ng ????n','3 ng?????i l???n & 1 tr??? em ',1800000,1),(17,'Signature Suite Lake View',55,'H?????ng th??nh ph??? | h???','1 Gi?????ng c??? l???n ','3 ng?????i l???n & 1 tr??? em',4000000,1);
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
INSERT INTO `service` VALUES (1,'B???a s??ng mi???n ph?? '),(2,'B??? b??i'),(3,'B??i ????? xe mi???n ph??'),(4,'B??i ????? xe tr??? ph??'),(5,'Thang m??y'),(6,'Qu???y Bar'),(7,'Gi???t ???i'),(8,'B???o v??? 24/24'),(9,'?????i ngo???i t???'),(10,'Cho thu?? xe'),(11,'????a ????n ?????n s??n bay'),(12,'D???ch v??? thu t??n');
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

-- Dump completed on 2022-05-30 17:45:06
