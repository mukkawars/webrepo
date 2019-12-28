-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 192.168.100.26    Database: group011_bookstore
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `auther` varchar(100) NOT NULL,
  `descp` varchar(450) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES ('1901','C++','Let Us C',620,'Yashwant Kanetkat','For C language programmers, it is must to master the complexity of the language to deal with programming software in engineering, gaming and other fields. In order to understand each concept of the C language, it is necessary to follow a good reference book in easy-to-understand text.','images/15.jpg'),('1902','Java','C++: The Complete Reference',1023,'Herbert Schildt','Best-selling genius Herb Schildt covers everything from keywords, syntax, and libraries, to advanced features such as overloading, inheritance, virtual functions, namespaces, templates, and RTTI&#8213;plus, a complete description of the Standard Template Library (STL).\r\n','images/2.jpg'),('1903','Java','Computer Networking',575,'James F. Kurose','The book is an introduction to computer networking for those seeking information on various aspects of establishing and maintaining wireless networks. A computer network is a group of computers that share data over a wireless or cable-connected set-up. To establish a computer network one needs to be equipped with the basic guidelines that help to lay down complex networks.\r\n','images/3.jpg'),('1904','Java','Core Python Programming',860,'R.Nageswara Rao',' Python is already occupying 2nd to 4th position and will be the most demanded language after Java in near future. Python is used with other programming languages on Internet as well as for developing standalone applications. Python programmers are paid high salaries in the software development industry. Hence, it is time for beginners as well as existing programmers to focus their attention on Python.\r\n','images/4.jpg'),('1905','Java','Core Java Volume 3',1455,'Cay S. Horstmann','Core Java, Volume IFundamentals, Eleventh Edition, is the definitive guide to writing robust, maintainable code. Whether youre using Java SE 9, 10, or 11, it will help you achieve a deep and practical understanding of the language and API, and its hundreds of realistic examples reveal the most powerful and effective ways to get the job done.\r\n','images/5.jpg'),('1906','Java','Core Java',1200,'R.Nageswara Rao','The book is written in such a way that learners without any background in programming are able to follow and understand it entirely. It discusses the concepts of Java in a simple and straightforward language with a clear cut explanation, without beating around the bush. The book provides ample solved programs which could be used by the students not only in their examinations but also to remove the fear of programming from their minds\r\n','images/6.jpg'),('1907','Java','Head First C#',850,'Andrew Stellman','Head First C# is a complete learning experience for learning how to program with C#, XAML, the .NET Framework, and Visual Studio. Fun and highly visual, this introduction to C# is designed to keep you engaged and entertained from first page to last. Updated for Windows 8.1 and Visual Studio 2013, and includes projects for all previous versions of Windows \r\n','images/7.jpg'),('1908','Java','Head First Java',999,'Kathy Sierra','Computer programming language Java is not easy to understand. It takes lot of time and practice to understand the complex programming language. But this book takes an interactive and fun approach for better understanding of different fundamentals of Java. The book offers multi-sensory and fun learning experience for new programmers, so they can easily pick up the new language.\r\n','images/8.jpg'),('1909','Java','Head First SQL',1550,'Lynn Beighley','Head First SQL has a visually rich format designed for the way your brain works, not a text-heavy approach that puts you to sleep.,Head First SQL will show you the fundamentals of SQL and how to really take advantage of it. We\'ll take you on a journey through the language.\r\n','images/9.jpg'),('1910','Java','HTML 5 in Action',1050,'Joe Lennon','HTML5 in Action provides a complete introduction to web development using HTML5. You\'ll explore every aspect of the HTML5 specification through real-world examples and code samples. It\'s much more than just a specification reference, though. It lives up to the name HTML5 in Action by giving you the practical, hands-on guidance you\'ll need to use key features.\r\n','images/10.jpg'),('1917','Java','Object Oriented Programming with C++',750,'E Balaguruswamy','Its always advisable to rely on a particular book when you are learning something new on your own. As the name suggests, Object Orients Programming with C++, the book introduces its readers with concepts of Object Oriented Programming using the programming language C++. However, it is essential that the reader should have basic knowledge of the programming language C\r\n','images/17.jpg'),('1919','Java','SQL The Complete Reference',550,'James R.Groff','SQL: The Complete Reference, Third Edition shows you how to work with SQL commands and statements, set up relational databases, load and modify database objects, perform powerful queries, tune performance, and implement reliable security policies. Learn how to employ DDL statements and APIs, integrate XML and Java scripts, use SQL objects, build web servers, handle remote access, and perform distributed transactions.\r\n','images/19.jpg'),('1920','Java','Thinking in Java',650,'Bruce Eckel','Thinking in Java is a printed version of Bruce Eckel\'s online materials that provides a useful perspective on mastering Java for those with previous programming experience. The author\'s take on the essence of Java as a new programming language and the thorough introduction to Java\'s features make this a worthwhile tutorial.\r\n','images/20.jpg'),('1921','Java','What is HTML5?',950,'Brett Mclaughlin','HTML5: Everyones using it, nobody knows what it is. I realize that sounds more like a line out of an existential movie  maybe Waiting for Godot or a screenplay by Sartre  than a statement about HTML5. But its really the truth: most of the people using HTML5 are treating it as HTML4+, or even worse, HTML4 \r\n','images/21.jpg'),('1935','Java','PHP: The Complete Reference',886,'Steven Holzner','PHP is a server-side programming language mainly used for web development and is also used as a general purpose programming language. It has become a rage in the Internet world. PHP: The Complete Reference, as the name suggests is a complete reference guide to the widely popular PHP.\r\n','images/18.jpg'),('1936','Java','HTML & CSS: The Complete Reference',995,' Thomas Powell','Written by a Web development expert, the fifth edition of this trusted resource has been thoroughly revised and reorganized to address HTML5, the revolutionary new Web standard. The book covers all the elements supported in today\'s Web browsers--from the standard (X)HTML tags to the archaic and proprietary tags that may be encountered.\r\n','images/12.jpg'),('1937','Java','Java Script ',750,' Lyza Danger Gardner','JavaScript on Things is your first step into the exciting and downright entertaining world of programming for small electronics. If you know enough JavaScript to hack a website together, you\'ll be making things go bleep, blink, and spin faster than you can say \"nodebot.\"\r\n','images/14.jpg'),('1938','Java','C# 7.0',1250,'John Paul Mueller ','C# 7.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. Since its debut in 2000, C# has become a language of unusual flexibility and breadth, but its continual growth means theres always more to learn.\r\n','images/1.jpg'),('1966','.NET','.Net',700,'Balagurusami','About .Net','images/1.jpg');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 19:53:34
