-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_tokoonlinemirja
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'All Electronics'),(2,'Football'),(3,'Shirt'),(4,'Make-up'),(5,'Toys Gifting Store'),(6,'Backpack');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keranjang`
--

DROP TABLE IF EXISTS `keranjang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT 1,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`),
  UNIQUE KEY `id_user` (`id_user`,`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keranjang`
--

LOCK TABLES `keranjang` WRITE;
/*!40000 ALTER TABLE `keranjang` DISABLE KEYS */;
INSERT INTO `keranjang` VALUES (22,1,105,2,2),(24,1,103,2,1),(25,1,101,1,2),(27,2,111,1,6);
/*!40000 ALTER TABLE `keranjang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) DEFAULT NULL,
  `terjual` int(11) DEFAULT NULL,
  `foto_link` text DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES (101,'NIVIA Spider F.B G/Keeper Gloves Black',248,'https://m.media-amazon.com/images/I/81PudCJ5GWL._AC_UL320_.jpg',203,2,819.00,3.60),(102,'Apple 20W USB-C Power Adapter (for iPhone, iPad & AirPods)',61478,'https://m.media-amazon.com/images/I/61vtLhO6fDL._AC_UL320_.jpg',29286,1,NULL,NULL),(103,'boAt BassHeads 100 in-Ear Wired Headphones with Mic (Black)',375110,'https://m.media-amazon.com/images/I/719elVA3FvL._AC_UL320_.jpg',9378,1,NULL,NULL),(104,'OnePlus 11R 5G (Galactic Silver, 16GB RAM, 256GB Storage)',338,'https://m.media-amazon.com/images/I/613SAOPmLeL._AC_UL320_.jpg',402,1,NULL,NULL),(105,'Puma Unisex-Child Tacto Ii Fg/Ag Junior Football Shoe',14,'https://m.media-amazon.com/images/I/51SgGEKmqxL._AC_UL320_.jpg',58,2,1553.00,4.00),(106,'SanDisk Cruzer Blade 32GB USB Flash Drive',99698,'https://m.media-amazon.com/images/I/61DjwgS4cbL._AC_UL320_.jpg',7320,1,372.00,4.30),(107,'Redmi 10 Power (Power Black, 8GB RAM, 128GB Storage)',965,'https://m.media-amazon.com/images/I/81eM15lVcJL._AC_UL320_.jpg',2783,1,NULL,NULL),(108,'OnePlus Nord CE 2 Lite 5G (Blue Tide, 6GB RAM, 128GB Storage)',113956,'https://m.media-amazon.com/images/I/71AvQd3VzqL._AC_UL320_.jpg',57000,1,NULL,NULL),(110,'Allen Solly Men Slim Fit Shirt',12190,'https://m.media-amazon.com/images/I/71T3EQknkBL._AC_UL320_.jpg',1726,3,740.00,3.70),(111,'Gear Aspire 30L Water Restant Office Laptop Bag/Backpack for Men/Women/(Black)',5147,'https://m.media-amazon.com/images/I/81BCsKS7WuL._AC_UL320_.jpg',873,6,1768.00,4.30),(112,'Jockey Men Relaxed Fit Sweatpants',314,'https://m.media-amazon.com/images/I/61LkSqfcRIL._AC_UL320_.jpg',201,2,1199.00,3.90),(113,'Creatives Fun with Words pack of 1',11999,'https://m.media-amazon.com/images/I/71MVzFCrFnL._AC_UL320_.jpg',1230,5,36.00,4.30),(114,'Safari Hitech 35 Ltrs Water Resistant Backpack - Blue, L (Hitech19Cbblu)',894,'https://m.media-amazon.com/images/I/71hNHEiIfYL._AC_UL320_.jpg',311,6,1300.00,3.90),(115,'LAKMÉ Face It Compact, Marble, 9 g',860,'https://m.media-amazon.com/images/I/71Cmq6Lu5gL._AC_UL320_.jpg',283,4,28.00,4.10),(116,'Maybelline New York Eyeliner Glossy Finish, Intense Colour, Long-lasting, 36Hr wear, Lasting Drama G',3778,'https://m.media-amazon.com/images/I/61CTcbLlT1L._AC_UL320_.jpg',529,4,194.00,4.20);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teman`
--

DROP TABLE IF EXISTS `teman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teman` (
  `id_user` int(11) NOT NULL,
  `id_teman` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_teman`),
  KEY `id_teman` (`id_teman`),
  CONSTRAINT `teman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `teman_ibfk_2` FOREIGN KEY (`id_teman`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teman`
--

LOCK TABLES `teman` WRITE;
/*!40000 ALTER TABLE `teman` DISABLE KEYS */;
INSERT INTO `teman` VALUES (1,2);
/*!40000 ALTER TABLE `teman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Abdul'),(2,'Farhan'),(3,'Diny'),(4,'Pandu'),(5,'Layla');
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

-- Dump completed on 2024-12-08 14:29:04
