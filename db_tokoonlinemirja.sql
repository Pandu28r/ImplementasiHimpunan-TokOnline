-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_tokoonlinemirja
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keranjang`
--

LOCK TABLES `keranjang` WRITE;
/*!40000 ALTER TABLE `keranjang` DISABLE KEYS */;
INSERT INTO `keranjang` VALUES (22,1,105,2,2),(24,1,103,2,1),(25,1,101,2,2),(27,2,111,1,6),(29,1,104,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES (101,'NIVIA Spider F.B G/Keeper Gloves Black',248,'https://m.media-amazon.com/images/I/81PudCJ5GWL._AC_UL320_.jpg',203,2,819.00,3.60),(102,'Apple 20W USB-C Power Adapter (for iPhone, iPad & AirPods)',61478,'https://m.media-amazon.com/images/I/61vtLhO6fDL._AC_UL320_.jpg',29286,1,311.00,4.60),(103,'boAt BassHeads 100 in-Ear Wired Headphones with Mic (Black)',375110,'https://m.media-amazon.com/images/I/719elVA3FvL._AC_UL320_.jpg',9378,1,600.00,4.10),(104,'OnePlus 11R 5G (Galactic Silver, 16GB RAM, 256GB Storage)',338,'https://m.media-amazon.com/images/I/613SAOPmLeL._AC_UL320_.jpg',402,1,44999.00,4.00),(105,'Puma Unisex-Child Tacto Ii Fg/Ag Junior Football Shoe',14,'https://m.media-amazon.com/images/I/51SgGEKmqxL._AC_UL320_.jpg',58,2,1553.00,4.00),(106,'SanDisk Cruzer Blade 32GB USB Flash Drive',99698,'https://m.media-amazon.com/images/I/61DjwgS4cbL._AC_UL320_.jpg',7320,1,372.00,4.30),(107,'Redmi 10 Power (Power Black, 8GB RAM, 128GB Storage)',965,'https://m.media-amazon.com/images/I/81eM15lVcJL._AC_UL320_.jpg',2783,1,18999.00,4.00),(108,'OnePlus Nord CE 2 Lite 5G (Blue Tide, 6GB RAM, 128GB Storage)',113956,'https://m.media-amazon.com/images/I/71AvQd3VzqL._AC_UL320_.jpg',57000,1,18999.00,4.30),(110,'Allen Solly Men Slim Fit Shirt',12190,'https://m.media-amazon.com/images/I/71T3EQknkBL._AC_UL320_.jpg',1726,3,740.00,3.70),(111,'Gear Aspire 30L Water Restant Office Laptop Bag/Backpack for Men/Women/(Black)',5147,'https://m.media-amazon.com/images/I/81BCsKS7WuL._AC_UL320_.jpg',873,6,1768.00,4.30),(112,'Jockey Men Relaxed Fit Sweatpants',314,'https://m.media-amazon.com/images/I/61LkSqfcRIL._AC_UL320_.jpg',201,2,1199.00,3.90),(113,'Creatives Fun with Words pack of 1',11999,'https://m.media-amazon.com/images/I/71MVzFCrFnL._AC_UL320_.jpg',1230,5,36.00,4.30),(114,'Safari Hitech 35 Ltrs Water Resistant Backpack - Blue, L (Hitech19Cbblu)',894,'https://m.media-amazon.com/images/I/71hNHEiIfYL._AC_UL320_.jpg',311,6,1300.00,3.90),(115,'LAKMÉ Face It Compact, Marble, 9 g',860,'https://m.media-amazon.com/images/I/71Cmq6Lu5gL._AC_UL320_.jpg',283,4,28.00,4.10),(116,'Maybelline New York Eyeliner Glossy Finish, Intense Colour, Long-lasting, 36Hr wear, Lasting Drama G',3778,'https://m.media-amazon.com/images/I/61CTcbLlT1L._AC_UL320_.jpg',529,4,194.00,4.20),(181,'Van Heusen Men Shirt',119,'https://m.media-amazon.com/images/I/81Sq8aCd-2L._AC_UL320_.jpg',30,3,1.00,4.10),(182,'The Flyers Bay Rc Stunt 360° Remote Control Car, Multicolor',28,'https://m.media-amazon.com/images/I/61Ha7QuWoYL._AC_UL320_.jpg',2721,5,679.00,3.30),(184,'Fair And Handsome Long Lasting Radiance Cream™',40,' https://m.media-amazon.com/images/I/61+15QObWpL._AC_UL320_.jpg',1233,4,161.00,4.20),(185,'Blue Heaven Hyper Matte Foundation (302 Honey Tan, Cream, 30 ml)',204,'https://m.media-amazon.com/images/I/41lxB1R1yAL._AC_UL320_.jpg',138,4,160.00,4.10),(186,'Intex Inflatable Rectangular Pool, Multi Color',1400,'https://m.media-amazon.com/images/I/61Xt7MeAYTL._AC_UL320_.jpg',208,5,484.00,4.20),(187,'Fantasy Dough Clay 8in1',2878,'https://m.media-amazon.com/images/I/71B9JtHvR9S._AC_UL320_.jpg',340,5,250.00,3.90),(188,'Skybags Brat Sea Green 46 Cms Casual Backpack',1000,'https://m.media-amazon.com/images/I/71U-5XbfSWL._AC_UL320_.jpg',679,6,659.00,4.00),(190,'Mi Step Out 12 L Mini Backpack (Small Size, Dark Blue, Water Repellant)',8131,'https://m.media-amazon.com/images/I/71FRRQKKSSL._AC_UL320_.jpg',573,6,299.00,4.10),(191,'Fur Jaden Anti Theft Backpack 15.6 Inch Laptop Bag with USB Charging Port',10738,'https://m.media-amazon.com/images/I/81MdmvloEkL._AC_UL320_.jpg',600,6,799.00,4.00),(193,'PALAY 9 ltrs (2 Cms) backpack(AZXO2-1KJ9ZNJ_black)',29,'https://m.media-amazon.com/images/I/51am+p8tPsL._AC_UL320_.jpg',120,6,1807.00,3.80),(194,'SUPER TOY Battery Operated Aeroplane Toy for Kids with Light and Sound - Assorted',1793,'https://m.media-amazon.com/images/I/615SgNTD0PL._AC_UL320_.jpg',428,5,449.00,3.50),(195,'Creative Educational Aids Match \'N\' Learn, The first Memory Game, 56 pieces (31 Set of two Piece Mat',2936,'https://m.media-amazon.com/images/I/71QOF1QrYML._AC_UL320_.jpg',80,5,275.00,4.50),(196,'Maybelline New York Lipstick, Matte Finish, Non-Sticky and Non-Drying, Sensational Liquid Matte, 21 ',17296,'https://m.media-amazon.com/images/I/41sXjSVQrbL._AC_UL320_.jpg',879,4,280.00,4.00),(197,'INSIGHT COSMETICS PORE MINIMIZER PRIMER',1525,'https://m.media-amazon.com/images/I/51CaDbfMAFL._AC_UL320_.jpg',497,4,99.00,4.00),(198,'PUMA Sport Unisex Quarter Socks Pack of 3',85,'https://m.media-amazon.com/images/I/51THJUi-cFL._AC_UL320_.jpg',348,2,199.00,4.10),(199,'Cosco Milano Synthetic-Fiber Foot Ball, Size 5 (White/Blue/Black)',238,'https://m.media-amazon.com/images/I/81cCxJmxthL._AC_UL320_.jpg',75,2,880.00,3.70),(200,'PSG Paris Football Jersey Messi 2022/23 with Shorts',3,'https://m.media-amazon.com/images/I/41W+0F3FSKL._AC_UL320_.jpg  ',564,2,435.00,4.60),(201,'Majestic Man Slim Fit Cotton Casual Check Shirt for Men',695,'https://m.media-amazon.com/images/I/61uBH8gIIIL._AC_UL320_.jpg ',847,3,449.00,3.90),(202,'UNIBLISS Men\'s Casual Shirt Printed Rayon Halfsleeve',713,'https://m.media-amazon.com/images/I/61FleZG8eFL._AC_UL320_.jpg  ',327,3,449.00,3.40),(203,'Lymio Casual Shirt for Men|| Shirt for Men|| Men Stylish Shirt || Men Printed Shirt (Shed Floral)',306,'https://m.media-amazon.com/images/I/7181NjMrq-L._AC_UL320_.jpg',24,3,349.00,4.30),(204,'UATHAYAM White Team Cotton Half Sleeve Solid Slim Fit Trending White Formal Shirt for Men Pack of 1 ',2,'https://m.media-amazon.com/images/I/41kdmCdFIML._AC_UL320_.jpg',733,3,535.00,5.00);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
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

-- Dump completed on 2024-12-09  7:41:13
