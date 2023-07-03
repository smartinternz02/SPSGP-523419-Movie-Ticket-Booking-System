-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: moviebooking
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `bdate` varchar(255) DEFAULT NULL,
  `noseat` int NOT NULL,
  `seats` varchar(255) DEFAULT NULL,
  `custid` int DEFAULT NULL,
  `movieid` int DEFAULT NULL,
  `showid` int DEFAULT NULL,
  `theatreid` int DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `FKjq1s7741cj5oclsqq2i0gmd80` (`custid`),
  KEY `FK2jwh3wmwv7a9raxd21ex07whd` (`movieid`),
  KEY `FK3vh3gyg09d2b0pih25ho6lt4f` (`showid`),
  KEY `FKr0v9d0ywcq5vh92pwhqelo4j4` (`theatreid`),
  CONSTRAINT `FK2jwh3wmwv7a9raxd21ex07whd` FOREIGN KEY (`movieid`) REFERENCES `movie` (`mid`),
  CONSTRAINT `FK3vh3gyg09d2b0pih25ho6lt4f` FOREIGN KEY (`showid`) REFERENCES `theatre_show` (`id`),
  CONSTRAINT `FKjq1s7741cj5oclsqq2i0gmd80` FOREIGN KEY (`custid`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKr0v9d0ywcq5vh92pwhqelo4j4` FOREIGN KEY (`theatreid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1062,'2023-06-29',6,'A3,A4,A5,A6,A7,A8',1,1,3,1),(2,354,'2023-07-01',2,'A7,A8',1,1,3,1),(3,354,'2023-07-07',2,'A1,A2',1,8,1,2),(4,354,'2023-07-01',2,'A9,A10',1,4,1,1),(5,177,'2023-07-01',1,'A9',1,4,1,1),(6,354,'2023-07-02',2,'A7,A8',1,8,3,1),(7,354,'2023-07-03',2,'A9,A10',1,8,1,1),(8,708,'2023-07-03',4,'A4,A5,A6,A7',4,9,3,1),(9,354,'2023-07-03',2,'B6,B7',1,9,3,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'shankar.20bci7218@vitap.ac.in','Male','8977771881','Shankar Jagatha'),(2,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL),(4,'shankarjagatha22@gmail.com','Male','8309276880','dhanush');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `actor` varchar(255) DEFAULT NULL,
  `actress` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `descr` varchar(500) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `reldate` varchar(255) DEFAULT NULL,
  `trailer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Vishwak Sen,Sushanth Reddy, Abhinav Gomatam, Venkatesh Kakamanu','Anisha Ambrose, Simran Choudhary','banners/fce16bb3-12ad-4507-aa72-7567fe795130.jpg','Ee Nagaraniki Emaindi is a 2018 Indian Telugu-language buddy comedy drama film written and directed by Tharun Bhascker, and produced by D. Suresh Babu under Suresh Productions. ','Tharun Bhascker','Ee Nagaraniki Emaindi','posters/0fa2970d-b916-424a-8491-929bf37f77f2.jpg','2023-06-29','https://youtu.be/E8JPYRjxzvk'),(2,' Nikhil Siddharth, Abhinav Gomatam','Iswarya Menon, Sanya Thakur','banners/101094879.webp','A R&AW agent unravels the connection between a notorious arms dealer and the hidden secrets of Netaji Subhash Chandra Bose, risking everything to protect India from impending chaos.','Garry BH','Spy','posters/289c732e-2f82-4f42-b436-c353cf04b881.webp','2023-06-29','https://youtu.be/eDTEiIC0_rE'),(3,'Prabhas, Saif Ali Khan ','Kriti Sanon','banners/456.jpeg','Adipurush is a 2023 Indian mythological action film based on the Hindu epic Ramayana.','Om Raut','Adipurush','posters/88c83d89-6980-46ca-822a-467e2d59df64.jpeg','2023-06-16','https://youtu.be/qkD5juVLDgM'),(4,'Shameik Moore, Oscar Isaac','Hailee Steinfeld','banners/5.webp','Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.','Joaquim Dos Santos, Kemp Powers, Justin K. Thompson','Spider-Man: Across the Spider-Verse','posters/fae1a697-caca-404f-8f55-c8a06cb7fc42.jpeg','2023-06-02','https://youtu.be/shW9i6k8cB0'),(5,'Ezra Miller','Sasha Calle','banners/b4d77ab9-5c67-4a1a-9c7b-a55421ea7fa0.jpg','Worlds collide when Barry uses his superpowers to travel back in time in order to change the events of the past. But when his attempt to save his family inadvertently alters the future, Barry becomes trapped in a reality where General Zod has returned and there are no Super Heroes to turn to','Andrés Muschietti','The Flash','posters/da7aa6a6-f6d1-493f-98dd-26aa9dadfcc7.webp','2023-06-15','https://youtu.be/hebWYacbdvc'),(6,'Vin Diesel,  Tyrese Gibson, Ludacris, John Cena ','Michelle Rodriguez, Nathalie Emmanuel, Jordana Brewster','banners/71f3c69b-b2f2-4543-a6c8-00d17d1195b8.jpg','Dom Toretto and his family must confront a terrifying new enemy who`s fueled by revenge.','Louis Leterrier','Fast X','posters/655fe496-e156-4196-9b81-1b4b0bfa35e0.jpg','2023-06-19','https://youtu.be/eoOaKN4qCKw'),(7,'Kartik Aaryan','Kiara Advani','banners/561464f9-ee15-4f04-88ac-b0c58c3d48ef.webp','A young dreamer Satyaprem gets married to the woman he loves, Katha, but she`s holding on to a secret that`s not easy to let go of. What will happen when Sattu uncovers the truth?','Sameer Vidwans','Satyaprem Ki Katha','posters/c9411c84-f69a-4049-a0a7-dc935cc2df9a.jpeg','2023-06-29','https://youtu.be/8EPJiFfWRfw'),(8,'Patrick Wilson, Ty Simpkins','Rose Byrne, Lin Shaye','banners/765f8f29-d59e-4dde-8eeb-ef8615fad7ba.jpg','The Red Door, the horror franchise`s original cast, returns for the final chapter of the Lambert family`s terrifying saga.\r\n\r\nTo put their demons to rest once and for all, Josh (Patrick Wilson) and a college-aged Dalton (Ty Simpkins) must go deeper into The Further, facing their family`s dark past and a host of new and more horrifying terrors that lurk behind the red door','Patrick Wilson','Insidious: The Red Door','posters/2ead1558-2a9d-4157-bc49-6b955c7cf5e6.jpg','2023-07-06','https://youtu.be/gexw4P68kbg'),(9,'Sree Vishnu','Reba Monica John','banners/Samajavaragamana_banner.webp','Samajavaragamana is the story of Balu (Sri Vishnu), working at Asian Cinema Theatres, who is a responsible middle class youth and the sole bread winner of his family. His father Uma Maheshwar Rao (Naresh VK) is attempting to finish his graduation for the last 30 years.\r\n','Ram Abbaraju','Samajavaragamana','posters/934d2462-60ee-4a15-b3f7-67bc91a16621.jpg','2023-06-29',' https://youtu.be/NrRhdApPgmQ');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `seats` int NOT NULL,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'40/1/56,  Trendset Mall MG Road,  Sai Nagar,  Kala Nagar,  Acharya Ranga Nagar,  Benz Circle Vijayawada,  Andhra Pradesh 520010,  India',177,120,'Capital Cinemas Trendset Mall, Kala Nagar, Vijayawada'),(2,'3rd Floor,  LEPL Icon,  Patamata,  Vijayawada,  Andhra Pradesh 520010',177,140,'INOX LEPL Icon, Patamata ,Vijayawada'),(3,'INOX Leisure Ltd.,  4th Floor,  Laila Mall,  M.G. Road,  Vijayawada,  Andhra Pradesh 520002,  India',177,140,'INOX Laila Mall, M.G Road, Vijayawada'),(4,'4th Floor,  PVP Square Mall,  MG Rd,  Mogalrajapuram,  Vijayawada,  Andhra Pradesh 520007,  India',177,140,'Cinepolis PVP Square, Vijayawada'),(5,'Andhra Ratna Road,  Gandhi Nagar,  520003',150,150,'G3 Theatres: Raj Yuvraj, Vijayawada'),(6,'  3rd Floor,  Ripples Mall MG Road  Vjaywada  Andhra Pradesh',177,110,'PVR Ripples Mall, Vijaywada'),(7,'Mahatma Gandhi Road, Labbipet, Vijayawada, ',177,150,'PVR: Ripples, Vijayawada');
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_show`
--

DROP TABLE IF EXISTS `theatre_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_show` (
  `id` int NOT NULL AUTO_INCREMENT,
  `endtime` varchar(255) DEFAULT NULL,
  `showname` varchar(255) DEFAULT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_show`
--

LOCK TABLES `theatre_show` WRITE;
/*!40000 ALTER TABLE `theatre_show` DISABLE KEYS */;
INSERT INTO `theatre_show` VALUES (1,'14:30','morning show ','11:10'),(2,'17:30','Matniee show','14:45'),(3,'21:00','First show','18:00'),(4,'23:45','Second show','21:30'),(5,'11.15','Early Mornig','8.30'),(6,'02:00','night show','23:00');
/*!40000 ALTER TABLE `theatre_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` varchar(255) NOT NULL,
  `id` int NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin',0,'admin','Admin','Administrator'),('shankar.20bci7218@vitap.ac.in',1,'12345','Customer','Shankar Jagatha'),('shankarjagatha22@gmail.com',4,'12345','Customer','dhanush');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 23:21:27
