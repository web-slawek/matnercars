-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Gru 2015, 21:35
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `matnercars`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL,
  `bannerName` varchar(200) NOT NULL,
  `bannerDesc` varchar(200) NOT NULL,
  `bannerUrl` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `banners`
--

INSERT INTO `banners` (`id`, `bannerName`, `bannerDesc`, `bannerUrl`, `status`, `createdBy`, `CreatedDate`, `type`) VALUES
(48, '6855_17-12-2015_diagnostyka.png', 'Diagnostyka komputerowa', 'resources/uploads/6855_17-12-2015_diagnostyka.png', 1, 'admin', '2015-12-17 12:59:34', 'uslugi'),
(49, '9024_17-12-2015_pomoc24.png', 'Pomoc drogowa', 'resources/uploads/9024_17-12-2015_pomoc24.png', 1, 'admin', '2015-12-17 13:11:01', 'uslugi'),
(50, '3709_17-12-2015_clima.png', 'Serwis klimatyzacji', 'resources/uploads/3709_17-12-2015_clima.png', 1, 'admin', '2015-12-17 13:23:22', 'uslugi'),
(51, '4160_28-12-2015_cc.png', 'Serwis klimatyzacji', 'resources/uploads/4160_28-12-2015_cc.png', 1, 'test', '2015-12-28 19:25:43', 'slider'),
(52, '3351_28-12-2015_s5.png', 'Wymiana oleju', 'resources/uploads/3351_28-12-2015_s5.png', 1, 'test', '2015-12-28 19:26:24', 'slider');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `main_settings`
--

CREATE TABLE IF NOT EXISTS `main_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(200) NOT NULL,
  `site_url` varchar(200) NOT NULL,
  `site_dcsc` text NOT NULL,
  `site_email` varchar(100) NOT NULL,
  `site_tags` text NOT NULL,
  `site_homepanel` text NOT NULL,
  `fb` varchar(250) NOT NULL,
  `tw` varchar(250) NOT NULL,
  `yt` varchar(250) NOT NULL,
  `rss` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `main_settings`
--

INSERT INTO `main_settings` (`id`, `site_name`, `site_url`, `site_dcsc`, `site_email`, `site_tags`, `site_homepanel`, `fb`, `tw`, `yt`, `rss`, `username`, `date`) VALUES
(1, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', '', '0000-00-00 00:00:00'),
(2, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', 'ali', '0000-00-00 00:00:00'),
(3, 'Awebarts web dedign', 'http://awebarts.com', 'awebarts site Description', 'aa@awebarts.com', 'awebarts  Site Tags', 'awebarts  Home panel notes', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss link here', 'ali', '0000-00-00 00:00:00'),
(4, 'test T', 'test', 'test', 'test@test.test', 'test', 'test', 'test', 'test', 'test', 'test', 'ali', '2013-10-11 21:57:48'),
(5, 'new awebarts name', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-11 22:05:56'),
(6, 'new awebarts name', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-11 22:07:21'),
(7, 'new awebarts name news', 'new url', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-12 23:36:47'),
(8, 'new awebarts name news 000', 'new url 00', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-10-13 01:55:32'),
(9, 'awebarts software co', 'new url 00', 'test test test test test test test test test test test test test test ', 'ali@alihamdi.com', 'test test test test test test test test test test test test test test ', 'test test test test test test test test test test test test test test ', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'rss', 'ali', '2013-11-23 12:16:26'),
(10, 'awebarts software co', 'http://awebarts.com/', '\r\n\r\nawebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 18:11:19'),
(11, 'awebarts software co', 'http://awebarts.com/', 'awebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 18:11:29'),
(12, 'awebarts software company', 'http://awebarts.com/', 'awebarts is one of the leading web designing companies that offers Clients web site designing services. We ensure that we provide the best of facilities for Clientsâ€™s Satisfaction by making a unique and sleek design, so that it gives the Client just the kind of look he desires. It is also about making your website a full-fledged online business and totally integrated with your offline business setup.\r\n\r\n.\r\n\r\nawebarts Provide you a creative website with quality images forms a functional solution for a successful business.  And interactive, stylish, and affordable website design services. Web-design can be considered as the practice of creating, presenting and arranging the text matter in an innovative manner so, that it promotes business of our clients. World Wide Web has lately been considered as a great measure to promote businesses at much affordable rates than any other means.\r\n\r\n.\r\n\r\nWe offer to our clientâ€™s unique, non-conventional web design well coupled with the corporate style of the company. Our stuff is a team providing a range of services, starting from creation of a site up to its promotion and support, and analysis of its economic efficiency.\r\n', 'ali@alihamdi.com', 'web design, HTML tutorials, web development, web site design, web site development, web page design, HTML development, XML development, Web software, HTML editors, Web editors, Web designers, XML schema, XML tutorials, \r\nXML,tutorial,HTML,DHTML,CSS,XSL,XHTML,JavaScript,ASP,ADO,VBScript,DOM,W3C,authoring,programming,learning,beginner''s guide,primer,lessons,school,howto,reference,free,examples,samples,source code,demos,tips,links,FAQ,tag list,forms,frames,color tables,Cascading Style Sheets,Active Server Pages,Dynamic HTML,Internet database development,Webbuilder,Sitebuilder,Webmaster,HTMLGuide,SiteExpert,\r\nØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, ØªØ·ÙˆÙŠØ± Ù…ÙˆØ§Ù‚Ø¹, Ø´Ø±ÙƒØ© ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹, Ø¨Ø±Ù…Ø¬Ø© Ù…ÙˆØ§Ù‚Ø¹,\r\ninterface design, interface design software, wireframe software, wireframe,\r\nweb design, webdesign, website design, web page design, web design company, web design services, web design solutions, design, designs, design service, design as a service, small business website design, web development,\r\nÙ…ØµØ±ØŒ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ…ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ù…ØµØ±ØŒ ØªØµÙ…ÙŠÙ… Ù…ÙˆØ§Ù‚Ø¹ Ø¹Ø±Ø¨ÙŠØ©ØŒ ØªØµÙ…ÙŠÙ… Ù…Ù†ØªØ¯ÙŠØ§ØªØŒ ØªØµÙ…ÙŠÙ… Ø¨ÙˆØ§Ø¨Ø©ØŒ Ø¥Ø³ØªØ¶Ø§ÙØ© Ù…ÙˆØ§Ù‚Ø¹ØŒ Ù…Ù‚Ø¯Ù…Ø§Øª ÙÙ„Ø§Ø´ØŒ Ø£Ù†Ø¸Ù…Ø© Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ØŒ\r\nopen source, web design, design, xhtml, web standards, free web templates, web templates, templates, css templates, css,\r\nAli, Ali Hamdi, Ali Hamdi Fergani, Ali Hamdi Fergani Ali,\r\nØ¹Ù„ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ , Ø¹Ù„ÙŠ Ø­Ù…Ø¯ÙŠ ÙØ±Ø¬Ø§Ù†ÙŠ , Ù…ØµÙ…Ù… Ù…ÙˆØ§Ù‚Ø¹ , Ù…Ø·ÙˆØ± Ù…ÙˆØ§Ù‚Ø¹ ØŒ Ø¥Ù†ØªØ±Ù†Øª ØŒ Ø¨Ù†ÙŠ Ø³ÙˆÙŠÙ ØŒ ÙƒÙˆÙ… Ø£Ø¨Ùˆ Ø®Ù„Ø§Ø¯ ,\r\nØªØ³ÙˆÙŠÙ‚ ØŒ Ø­Ù…Ù„Ø§Øª Ø¯Ø¹Ø§Ø¦ÙŠØ© ØŒ Ù…ØµØ± ØŒ Ø§Ù„ÙƒÙˆÙŠØª ØŒ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠØ© ØŒ Ø§Ù„Ø¥Ù…Ø§Ø±Ø§Øª ØŒ\r\n', 'Welcome admin !', 'https://www.facebook.com/awebarts', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'ali', '2014-01-22 21:21:21'),
(13, 'Matnercars - TwÃ³j Serwis Samochodowy', 'http://www.matnercars.pl/', 'Opis desc', 'slawcio1990@interia.pl', 'tagi', 'Welcome admin !', 'https://www.facebook.com/matnercars', 'http://twitter.com/ali7amdi', 'http://youtube.com/ali7amdi', 'http://www.awebarts.com/?feed=rss2', 'admin', '2015-12-17 18:04:15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_content` longtext NOT NULL,
  `page_status` varchar(50) NOT NULL,
  `page_visits` int(11) NOT NULL,
  `sectionId` int(9) NOT NULL,
  `page_image` varchar(250) NOT NULL,
  `page_date` varchar(50) NOT NULL,
  `createdBy` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_content`, `page_status`, `page_visits`, `sectionId`, `page_image`, `page_date`, `createdBy`) VALUES
(15, 'O firmie', 'Firma zaistniaÅ‚a 02.01.2012r. a jej zaÅ‚oÅ¼yciele od pokoleÅ„ zajmujÄ… siÄ™ tym czym potrafiÄ… najlepiej czyli mechanikÄ… pojazdowÄ…. MATNER CARS dostarcza swoim klientom kompleksowe usÅ‚ugi z zakresu mechaniki, elektromechaniki i diagnostyki komputerowej, pojazdÃ³w osobowych i dostawczych. Firma poprzez dynamiczny rozwÃ³j zyskuje nowych klientÃ³w i wchodzi na nowe rynki usÅ‚ug. W ostatnim czasie jej dziaÅ‚alnoÅ›Ä‡ poszerzyÅ‚a siÄ™ o bogatÄ… ofertÄ™ z zakresu serwisu ukÅ‚adu klimatyzacji w samochodach osobowych, ciÄ™Å¼arowych i autobusach. Codzienne starania i stawianie przed sobÄ… wysokich celÃ³w jakimi sÄ… dokÅ‚adnoÅ›Ä‡, profesjonalizm i fachowoÅ›Ä‡ poÅ›rÃ³d Å›wiadczonych usÅ‚ug ma prowadziÄ‡ do uzyskania zadowolenia klienta.', 'active', 0, 8, 'resources/images/logo.png', '17-12-15', 'admin'),
(16, 'Silnik i skrzynia biegÃ³w', 'W obecnych samochodach wystÄ™pujÄ… dwa rodzaje skrzyni biegÃ³w - rÄ™czna i automatyczna. W obsÅ‚udze rÄ™cznej skrzyni biegÃ³w niezbÄ™dne sÄ… nastÄ™pujÄ…ce elementy: sprzÄ™gÅ‚o, hydraulika sprzÄ™gÅ‚aoraz dÅºwignia zmiany biegÃ³w. SprzÄ™gÅ‚o odpowiedzialne jest za przeniesienie mocy z silnika do skrzyni biegÃ³w. Dokonuje siÄ™ tego za pomocÄ… tarczy sprzÄ™gÅ‚a, ktÃ³rej powierzchnia wykonana jest z materiaÅ‚u uÅ¼ywanego rÃ³wnieÅ¼ w okÅ‚adzinie szczÄ™k hamulcowych. W miarÄ™ upÅ‚ywu czasu powierzchnia tarczy sprzÄ™gÅ‚a zuÅ¼ywa siÄ™ - dlatego tarczÄ™ naleÅ¼y regularnie wymieniaÄ‡.\r\n\r\nZuÅ¼ycie sprzÄ™gÅ‚a zaleÅ¼y od wielu czynnikÃ³w. ZuÅ¼yte sprzÄ™gÅ‚o moÅ¼emy rozpoznaÄ‡, kiedy:\r\n\r\n    - wystÄ™pujÄ… trudnoÅ›ci ze zmianÄ… biegÃ³w lub wrzuceniem na tzw. â€žluzâ€\r\n    - wzrastajÄ… obroty silnika, ale prÄ™dkoÅ›Ä‡ siÄ™ nie zmienia\r\n    - trudno jest wjechaÄ‡ na wzniesienie\r\n    - w Å›rodku samochodu czuÄ‡ swÄ…d spalenizny\r\n\r\nMechanicy MATNER CARS bez trudu oceniÄ… zuÅ¼ycie sprzÄ™gÅ‚a. JeÅ›li bÄ™dzie ono wymagaÄ‡ wymiany, wykonamy jÄ… bez trudu w dogodnym dla Ciebie terminie, uÅ¼ywajÄ…c tylko czÄ™Å›ci wysokiej jakoÅ›ci.\r\n\r\nPrzy obsÅ‚udze automatycznej skrzyni biegÃ³w naleÅ¼y pamiÄ™taÄ‡ o regularnej wymianie oleju i filtra w niektÃ³rych typach przekÅ‚adni automatycznych.', 'active', 0, 9, 'images/logo.png', '17-12-15', 'admin'),
(17, 'Wymiana oleju', 'Wymiana oleju to podstawowa czynnoÅ›Ä‡ serwisowa, pozwalajÄ…ca na zachowanie osiÄ…gÃ³w silnika i zwiÄ™kszenie jego Å¼ywotnoÅ›ci.\r\n\r\nW trakcie jazdy samochodem olej ulega zanieczyszczeniu, przez co traci swoje parametry i nie gwarantuje wÅ‚aÅ›ciwego smarowania silnika. Dlatego naleÅ¼y go regularnie wymieniaÄ‡.\r\n\r\nOkresowoÅ›Ä‡ wymiany oleju ustala producent pojazdu, w zaleÅ¼noÅ›ci od wÅ‚aÅ›ciwoÅ›ci oleju i charakterystyki silnika. Informacje te znajdziemy w ksiÄ…Å¼ce serwisowej pojazdu. WiÄ™kszoÅ›Ä‡ produkowanych aktualnie aut wymaga wymiany oleju po przejechaniu 15 000 - 30 000 km lub po roku czasu. Jest to takÅ¼e uzaleÅ¼nione od pewnych czynnikÃ³w, takich jak zuÅ¼ycie oleju przez silnik i warunkÃ³w jazdy. W czasie jazdy po mieÅ›cie (maÅ‚e odlegÅ‚oÅ›ci, jazda z czÄ™stym ruszaniem i zatrzymywaniem auta) i na wysokich obrotach, silnik pracuje w trudnych warunkach. Dlatego teÅ¼ przy jeÅºdzie tego typu zaleca siÄ™ wymianÄ™ oleju nawet co 8 000 - 10 000 km.\r\n\r\nWobec tempa wspÃ³Å‚czesnego Å¼ycia szybka wymiana oleju jest dobrym rozwiÄ…zaniem dla zarÃ³wno zapracowanego kierowcy jak i zapracowanego silnika. Nasi Doradcy pomogÄ… Ci dobraÄ‡ najlepszy olej dla Twojego samochodu. MoÅ¼esz go kupiÄ‡ w naszym serwisie lub dostarczyÄ‡ wÅ‚asny.\r\n\r\nPonadto w ramach bezpÅ‚atnej kontroli przed kaÅ¼dÄ… naprawÄ… nasi mechanicy sprawdzajÄ… poziom oleju w Twoim aucie. JeÅ¼eli jest on za niski, ale nie wymaga jeszcze wymiany, zaproponujÄ… Ci uzupeÅ‚nienie. W kaÅ¼dej chwili moÅ¼esz sprawdziÄ‡ datÄ™ na zawieszce zostawionej w komorze silnika w Twoim samochodzie. Jednym sÅ‚owem, zrobimy wszystko, aby TwÃ³j silnik pracowaÅ‚ pÅ‚ynnie i bez zarzutu.', 'active', 0, 9, 'images/logo.png', '17-12-15', 'admin'),
(18, 'Remonty silnikÃ³w', '<p>Podejmujemy siÄ™ remont&oacute;w generalnych nawet najbardziej skomplikowanych i zaawansowanych technicznie silnik&oacute;w zar&oacute;wno benzynowych jaki diesli. Dajemy nowe Å¼ycie najbardzie wyekspoatowanym jednostkom napÄ™dowym, co pozwoli ich wÅ‚aÅ›cicielom cieszyÄ‡ siÄ™ bezawaryjnÄ… pracÄ… swojego pojazdu.</p>', 'active', 0, 10, 'resources/uploads/3642_28-12-2015_naprawy.png', '28-12-15', 'test'),
(19, 'Naprawy bieÅ¼Ä…ce', '<p>W przypadku zauwaÅ¼enia jakiejkolwiek usterki w samochodzie zalecamy moÅ¼liwie szybkie usuniÄ™cie ich u wykwalifikowanych mechanik&oacute;w. Taki nawyk wpÅ‚ywa pozytywnie nie tylko na Å¼ywotnoÅ›Ä‡ auta, ale r&oacute;wnieÅ¼ na niÅ¼sze spalanie paliwa co bezpoÅ›rednio wpÅ‚ywa na oszczÄ™dnoÅ›ci oraz bezpieczeÅ„stwo jazdy.</p>', 'active', 0, 10, 'resources/uploads/9681_28-12-2015_klucze.png', '28-12-15', 'test'),
(20, 'Wymiany eksploatacyjne', '<p>Wykonujemy kompleksowe przeglÄ…dy z wymianÄ… element&oacute;w eksploatacyjnych takich jak: oleje, filtry powietrza, oleju, paliwa, przeciwpyÅ‚kowy, wymiany Å›wiec zapÅ‚onowych, pÅ‚yn&oacute;w chÅ‚odniczych i hamulcowych. Wykonywanie przeglÄ…d&oacute;w okresowych zapewnia trwaÅ‚oÅ›Ä‡ oraz bezawaryjnÄ… eksploatacjÄ™.</p>', 'active', 0, 10, 'resources/uploads/7164_28-12-2015_olej.png', '28-12-15', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL,
  `sectionName` varchar(100) NOT NULL,
  `sectionStaus` varchar(20) NOT NULL,
  `sectionLocation` varchar(20) NOT NULL,
  `sectionDesc` varchar(250) NOT NULL,
  `sectionDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `sections`
--

INSERT INTO `sections` (`id`, `sectionName`, `sectionStaus`, `sectionLocation`, `sectionDesc`, `sectionDate`, `username`) VALUES
(7, 'usÅ‚ugi', 'active', 'Side', 'wyrÃ³Å¼nione usÅ‚ugi', '2015-12-17 12:57:42', 'admin'),
(8, 'o-firmie', 'active', 'Body', '', '2015-12-17 13:36:03', 'admin'),
(9, 'oferujemy', 'active', 'Body', '', '2015-12-17 19:07:22', 'admin'),
(10, 'mechanika-pojazdowa', 'active', 'Body', 'oferta mechanika pojazdowa', '2015-12-28 19:52:21', 'test');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Ali Hamdi', 'ali', 'abc', 'ali@alihamdi.com'),
(2, 'Admin ', 'admin', '123', 'admin@awebarts.com'),
(3, 'test user', 'test', 'test', 'ali_fergani2003@yahoo.com'),
(4, 'mustafa', 'mustafa', 'mustafa', 'mustafa@mustafa.com'),
(5, '', '', '', ''),
(6, 'alihamdi', 'test', 'test', 'ali_fergani2003@yahoo.ocm');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_settings`
--
ALTER TABLE `main_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT dla tabeli `main_settings`
--
ALTER TABLE `main_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
