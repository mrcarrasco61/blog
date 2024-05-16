-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.14-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- muhammetblog için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `muhammetblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `muhammetblog`;

-- tablo yapısı dökülüyor muhammetblog.aciklama
CREATE TABLE IF NOT EXISTS `aciklama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aciklama` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- muhammetblog.aciklama: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `aciklama` DISABLE KEYS */;
INSERT INTO `aciklama` (`id`, `aciklama`) VALUES
	(3, '&lt;p&gt;TEKNOBLOG 2021 Haziranın\'da MUHAMMET ALİ KÖSE  tarafından kuruldu ve kodlandı. İnternet ve dijital teknoloji alanındaki gelişmeleri inceleyer ve analiz eder &lt;/p&gt;');
/*!40000 ALTER TABLE `aciklama` ENABLE KEYS */;

-- tablo yapısı dökülüyor muhammetblog.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(100) NOT NULL DEFAULT '0',
  `alt_baslik` varchar(250) NOT NULL DEFAULT '0',
  `aciklama` text NOT NULL DEFAULT '0',
  `tarih` date NOT NULL DEFAULT current_timestamp(),
  `resim` varchar(500) DEFAULT NULL,
  `aktif` int(1) NOT NULL DEFAULT 0,
  `kategori` varchar(50) DEFAULT NULL,
  `yazar` varchar(50) DEFAULT 'admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- muhammetblog.blog: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `baslik`, `alt_baslik`, `aciklama`, `tarih`, `resim`, `aktif`, `kategori`, `yazar`) VALUES
	(29, 'Yerli üretim realme C21 İncelemesi', 'İlk yerli üretim Realme telefonu giriş segmentinin iddialı bir üyesi', '&lt;h2 style=&quot;box-sizing: border-box; color: #111111; font-weight: 400; margin: 30px auto 20px; font-size: 27px; line-height: 38px; background-color: #ffffff; font-family: &#039;Source Sans Pro&#039; !important;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;realme C21 inceleme: Tasarım&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px auto 26px; font-family: &#039;Open Sans&#039;; font-size: 16px; line-height: 26px; overflow-wrap: break-word; color: #222222; background-color: #ffffff;&quot;&gt;&amp;Ouml;ncelikle kutu i&amp;ccedil;eriğiyle başlayalım. realme telefonlarının alıştığımız sarı renkli kutusunu C21 ile birlikte bir kez daha g&amp;ouml;r&amp;uuml;yoruz. Kutuyu a&amp;ccedil;tığımızda &amp;ouml;ncelikle SIM kart tepsisini a&amp;ccedil;mayı sağlayan iğne ve garanti belgesinin i&amp;ccedil;inde bulunduğu bir zarf bizi karşılıyor. Daha sonra da realme C21&amp;rsquo;i, g&amp;uuml;&amp;ccedil; adapt&amp;ouml;r&amp;uuml;n&amp;uuml; ve USB kablosunu g&amp;ouml;r&amp;uuml;yoruz.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px auto 26px; font-family: &#039;Open Sans&#039;; font-size: 16px; line-height: 26px; overflow-wrap: break-word; color: #222222; background-color: #ffffff;&quot;&gt;realme C21, klasik bir Android telefon tasarımına sahip. Yuvarlatılmış k&amp;ouml;şeleri telefona sıcak bir hava verirken, arka y&amp;uuml;z&amp;uuml;n kenarlara doğru hafif kavis yapması telefonun ergonomisini artırıyor. 8.9 milimetre kalınlıklı ve 190 gr. ağırlıklı g&amp;ouml;vdenin sağlamlık hissini iyi bi&amp;ccedil;imde verdiğini belirtelim. Zaten realme de, C21&amp;rsquo;in d&amp;uuml;nyanın T&amp;Uuml;V Rheinland Y&amp;uuml;ksek G&amp;uuml;venilirlik Sertifikası alan ilk akıllı telefonu olduğunu belirtiyor. Bilmeyenler i&amp;ccedil;in s&amp;ouml;yleyecek olursak, T&amp;Uuml;V Rheinland Akıllı Telefon Y&amp;uuml;ksek G&amp;uuml;venilirlik Sertifikası; d&amp;uuml;şme, aşınma, aşırı sıcaklık, nem, voltaj dalgalanmaları, d&amp;uuml;ğmeler ve konekt&amp;ouml;rler, statik elektrik, hava basıncı ve diğer bileşen g&amp;uuml;venilirlik testlerinin i&amp;ccedil;inde bulunduğu 10 g&amp;uuml;nl&amp;uuml;k kullanım senaryo testini, 7 extreme ortam senaryo testini ve 6 bileşen g&amp;uuml;venilirlik senaryo testini başarıyla ge&amp;ccedil;en telefonlara veriliyor.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px auto 26px; font-family: &#039;Open Sans&#039;; font-size: 16px; line-height: 26px; overflow-wrap: break-word; color: #222222; background-color: #ffffff;&quot;&gt;realme&amp;rsquo;nin en iyi giriş segment telefonu olarak nitelendirdiği C21, bu testlerden başarıyla ge&amp;ccedil;ti ve size sunuldu. S&amp;ouml;ylediğimiz gibi C21, realme&amp;rsquo;nin ilk yerli &amp;uuml;retim telefonu. Ve bunun şerefine C21 T&amp;uuml;rkiye&amp;rsquo;de, &amp;uuml;lkemize &amp;ouml;zel &amp;ldquo;Dem Siyahı&amp;rdquo; ve &amp;ldquo;Boğaz Mavisi&amp;rdquo; gibi iki renk se&amp;ccedil;eneğiyle sunuluyor. C21&amp;rsquo;in arka kapağında, kum saatini andıran cesur, geometrik sana tasarımı ve &amp;ouml;zellikle gen&amp;ccedil; kullanıcıların ilgisini &amp;ccedil;ekecek bir tasarım kullanılmış. &amp;Ouml;te yandan arka y&amp;uuml;z&amp;uuml;n hafif y&amp;uuml;zey s&amp;uuml;rt&amp;uuml;nmesi telefonu tek elle kullanımı kolaylaştırıyor, parmak izi lekeleri ve &amp;ccedil;izilmelerin etkisini de azaltıyor.&lt;/p&gt;', '2021-06-10', 'https://www.teknoblog.com/wp-content/uploads/2021/06/realme-c21-inceleme-070621-6.jpg.webp', 1, 'gunluk', 'editor'),
	(30, 'Apple WWDC 2021 etkinliği', 'iOS 15\'ten iPadOS 15\'e tüm yenilikler', '&lt;p class=&quot;&quot; style=&quot;font-family: &#039;Inter var&#039;, system-ui, sans-serif; box-sizing: inherit; margin: 0px 0px 30px; font-size: 20px; line-height: 1.7; color: #525659; font-stretch: normal; background-color: #f2f2f3;&quot;&gt;Apple&#039;ın her yıl d&amp;uuml;zenlediği&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;D&amp;uuml;nya Geliştiriciler Konferansı&#039;nın (&lt;a style=&quot;box-sizing: inherit; cursor: pointer; text-decoration-line: none; font-stretch: normal; line-height: 0.85; background-image: linear-gradient(0deg, rgba(243, 208, 46, 0.5), rgba(243, 208, 46, 0.5)); background-size: 5px 5px; background-repeat: repeat-x; background-position: center bottom;&quot; href=&quot;https://webrazzi.com/etiket/wwdc/&quot;&gt;WWDC&lt;/a&gt;)&lt;/span&gt;&amp;nbsp;bu yıl&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;7 Haziran ve 11 Haziran&lt;/span&gt;&amp;nbsp;tarihleri ​​arasında ger&amp;ccedil;ekleşeceğini ve ge&amp;ccedil;tiğimiz yıl olduğu gibi yalnızca online bir etkinlik olacağını ge&amp;ccedil;tiğimiz Mart ayında sizlere&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; cursor: pointer; text-decoration-line: none; font-stretch: normal; line-height: 0.85; background-image: linear-gradient(0deg, rgba(243, 208, 46, 0.5), rgba(243, 208, 46, 0.5)); background-size: 5px 5px; background-repeat: repeat-x; background-position: center bottom;&quot; href=&quot;https://webrazzi.com/2021/03/30/apple-wwdc-2021-7-ve-11-haziran-tarihleri-arasinda-gerceklesecek/&quot;&gt;aktarmıştık&lt;/a&gt;&lt;/span&gt;. Merakla beklenen&amp;nbsp;&lt;a style=&quot;font-weight: bold; box-sizing: inherit; cursor: pointer; text-decoration-line: none; font-stretch: normal; line-height: 0.85; background-image: linear-gradient(0deg, rgba(243, 208, 46, 0.5), rgba(243, 208, 46, 0.5)); background-size: 5px 5px; background-repeat: repeat-x; background-position: center bottom;&quot; href=&quot;https://webrazzi.com/etiket/wwdc-2021/&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;WWDC 2021&lt;/span&gt;&lt;/a&gt;, bug&amp;uuml;n T&amp;uuml;rkiye saati ile 20.00&#039;de&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;Keynote&lt;/span&gt;&amp;nbsp;ile başlayacak.&lt;/p&gt;\r\n&lt;p class=&quot;&quot; style=&quot;font-family: &#039;Inter var&#039;, system-ui, sans-serif; box-sizing: inherit; margin: 0px 0px 30px; font-size: 20px; line-height: 1.7; color: #525659; font-stretch: normal; background-color: #f2f2f3;&quot;&gt;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; cursor: pointer; text-decoration-line: none; font-stretch: normal; line-height: 0.85; background-image: linear-gradient(0deg, rgba(243, 208, 46, 0.5), rgba(243, 208, 46, 0.5)); background-size: 5px 5px; background-repeat: repeat-x; background-position: center bottom;&quot; href=&quot;https://www.isbank.com.tr/&quot;&gt;T&amp;uuml;rkiye İş Bankası&lt;/a&gt;&lt;/span&gt;&#039;nın katkılarıyla takip edeceğimiz WWDC 2021&#039;in ile ilgili t&amp;uuml;m detaylara buradan ulaşabilirsiniz. Etkinlikte karşımıza &amp;ccedil;ıkacak olan t&amp;uuml;m detayları her yıl olduğu gibi&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;canlı&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold; box-sizing: inherit; color: var(--color-webrazzi-gray-dark); font-stretch: normal; line-height: 1;&quot;&gt;bloglama&lt;/span&gt;&amp;nbsp;ile sizlere aktaracağız. WWDC 2021&#039;de tanıtılması beklenen yenilikleri ge&amp;ccedil;tiğimiz haftalarda sizlere aktarmıştık.&lt;/p&gt;', '2021-06-10', 'https://cdn.webrazzi.com/uploads/2021/06/screen-shot-2021-06-07-at-214659-194.jpg', 1, 'gunluk', 'editor'),
	(31, 'Battlefield 2042 128 oyunculu dev savaşlara sahne olacak', 'Battlefield 2042', '&lt;p style=&quot;box-sizing: border-box; margin: 0px auto 26px; font-family: &#039;Open Sans&#039;; font-size: 16px; overflow-wrap: break-word; color: #222222; background-color: #ffffff; line-height: 1.8 !important;&quot;&gt;Battlefield serisinin merakla beklenen yeni oyununun ismi ve &amp;ccedil;ıkış tarihi sonunda a&amp;ccedil;ıklandı. DICE&amp;rsquo;ın geliştiriciliğini, EA&amp;rsquo;in yayıncılığını &amp;uuml;stlendiği oyun, Battlefield 2042 adını taşıyor. Ekim ayında &amp;ccedil;ıkacak olan oyunun&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #f04a0a; text-decoration-line: none; pointer-events: auto;&quot; href=&quot;https://youtu.be/ASzOzrB-a9E&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;ilk fragmanı&lt;/a&gt;&amp;nbsp;da oyuncuları nelerin beklediği konusunda ipucu veriyor.&lt;/p&gt;\r\n&lt;div class=&quot;td-a-ad id_inline_ad0 id_ad_content-horiz-center&quot; style=&quot;box-sizing: border-box; margin-bottom: 15px; text-align: center; color: #222222; font-family: &#039;Open Sans&#039;; font-size: 16px; background-color: #ffffff;&quot;&gt;\r\n&lt;div id=&quot;tekno-5b7278f51b0b3e37e04b10c355993cee&quot; class=&quot;tekno-5b7278f51b0b3e37e04b10c355993cee tekno-banner-alani-2&quot; style=&quot;box-sizing: border-box;&quot;&gt;\r\n&lt;div id=&quot;tekno-882243299&quot; class=&quot;tekno-banner-alani-2&quot; style=&quot;box-sizing: border-box;&quot;&gt;\r\n&lt;div id=&quot;tekno-149573251&quot; style=&quot;box-sizing: border-box; float: left; margin-top: 10px; margin-right: 20px; margin-bottom: 10px;&quot;&gt;&lt;ins class=&quot;adsbygoogle gadsense_slot_1&quot; style=&quot;box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: inline-block; width: 336px; height: 280px;&quot; data-ad-client=&quot;ca-pub-3224249425647164&quot; data-ad-slot=&quot;2985751020&quot; data-adsbygoogle-status=&quot;done&quot; data-ad-status=&quot;filled&quot;&gt;&lt;ins id=&quot;aswift_2_expand&quot; style=&quot;box-sizing: border-box; background: transparent; text-decoration-line: none; display: inline-table; border: none; height: 280px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 336px;&quot; tabindex=&quot;0&quot; title=&quot;Advertisement&quot; aria-label=&quot;Advertisement&quot;&gt;&lt;ins id=&quot;aswift_2_anchor&quot; style=&quot;box-sizing: border-box; background: transparent; text-decoration-line: none; display: block; border: none; height: 280px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 336px;&quot;&gt;&lt;iframe id=&quot;aswift_2&quot; style=&quot;box-sizing: border-box; max-width: 100%; left: 0px; position: absolute; top: 0px; border-width: 0px; border-style: initial; width: 336px; height: 280px;&quot; src=&quot;https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3224249425647164&amp;amp;output=html&amp;amp;h=280&amp;amp;slotname=2985751020&amp;amp;adk=1807609376&amp;amp;adf=3483349044&amp;amp;pi=t.ma~as.2985751020&amp;amp;w=336&amp;amp;lmt=1623307845&amp;amp;rafmt=12&amp;amp;psa=1&amp;amp;format=336x280&amp;amp;url=https%3A%2F%2Fwww.teknoblog.com%2Fbattlefield-2042-128-oyunculu-dev-savaslara-sahne-olacak%2F&amp;amp;flash=0&amp;amp;wgl=1&amp;amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi43NyIsW11d&amp;amp;dt=1623309365679&amp;amp;bpp=1&amp;amp;bdt=382&amp;amp;idt=94&amp;amp;shv=r20210607&amp;amp;cbv=%2Fr20190131&amp;amp;ptt=9&amp;amp;saldr=aa&amp;amp;abxe=1&amp;amp;cookie=ID%3Dbd209302393b913f-226225585dc8000a%3AT%3D1623307417%3ART%3D1623307417%3AS%3DALNI_MZybk21_M41HPaHdG0h6c2F9DyvXg&amp;amp;prev_fmts=0x0%2C300x600&amp;amp;nras=1&amp;amp;correlator=6447053395247&amp;amp;frm=20&amp;amp;pv=1&amp;amp;ga_vid=2066892725.1623307418&amp;amp;ga_sid=1623309366&amp;amp;ga_hid=185968994&amp;amp;ga_fc=0&amp;amp;u_tz=180&amp;amp;u_his=2&amp;amp;u_java=0&amp;amp;u_h=864&amp;amp;u_w=1536&amp;amp;u_ah=824&amp;amp;u_aw=1536&amp;amp;u_cd=24&amp;amp;u_nplug=3&amp;amp;u_nmime=4&amp;amp;adx=226&amp;amp;ady=1169&amp;amp;biw=1519&amp;amp;bih=722&amp;amp;scr_x=0&amp;amp;scr_y=0&amp;amp;eid=31060615%2C44744015&amp;amp;oid=3&amp;amp;pvsid=317838737057294&amp;amp;pem=401&amp;amp;ref=https%3A%2F%2Fwww.teknoblog.com%2F&amp;amp;eae=0&amp;amp;fc=1920&amp;amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C722&amp;amp;vis=1&amp;amp;rsz=%7C%7CoeEbr%7C&amp;amp;abl=CS&amp;amp;pfx=0&amp;amp;fu=256&amp;amp;bc=31&amp;amp;ifi=3&amp;amp;uci=a!3&amp;amp;btvi=2&amp;amp;fsb=1&amp;amp;xpc=f0k7VF0Pnx&amp;amp;p=https%3A//www.teknoblog.com&amp;amp;dtd=99&quot; name=&quot;aswift_2&quot; width=&quot;336&quot; height=&quot;280&quot; frameborder=&quot;0&quot; marginwidth=&quot;0&quot; marginheight=&quot;0&quot; scrolling=&quot;no&quot; sandbox=&quot;allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation&quot; allowfullscreen=&quot;true&quot; data-google-container-id=&quot;a!3&quot; data-google-query-id=&quot;CMLcgNHCjPECFTvquwgd2pkKlg&quot; data-load-complete=&quot;true&quot;&gt;&lt;/iframe&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/ins&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px auto 26px; font-family: &#039;Open Sans&#039;; font-size: 16px; overflow-wrap: break-word; color: #222222; background-color: #ffffff; line-height: 1.8 !important;&quot;&gt;Videonun ilk iki dakikasında her şey normal g&amp;ouml;r&amp;uuml;nse de, bu dakikada bir ATV&amp;rsquo;nin helikoptere saldırması işlerin değişeceğini g&amp;ouml;steriyor. Yaklaşık &amp;uuml;&amp;ccedil;&amp;uuml;nc&amp;uuml; dakikada ise iki jetin birbirini kovaladığı g&amp;ouml;r&amp;uuml;l&amp;uuml;yor. Ancak bu kovalamaca bildiğimiz &amp;ldquo;it dalaşı&amp;rdquo; şeklinde ilerlemiyor. &amp;Ouml;ndeki u&amp;ccedil;ağın pilotu, kokpitin camını a&amp;ccedil;arak u&amp;ccedil;aktan &amp;ccedil;ıkıyor ve bir roketatar ile takip&amp;ccedil;isini vurduktan sonra yeniden kokpite d&amp;ouml;nerek u&amp;ccedil;ağının kontrol&amp;uuml;ne ge&amp;ccedil;iyor. Bunun 2002 &amp;ccedil;ıkışlı Battlefield 1942&amp;rsquo;nin pop&amp;uuml;ler sahnelerinden birine saygı duruşu niteliği taşıdığını belirtmekte fayda var.&lt;/p&gt;', '2021-06-10', 'https://www.teknoblog.com/wp-content/uploads/2021/06/battlefield-2042-100521.jpeg.webp', 1, 'diger', 'editor'),
	(32, 'Windows 10 21H1 Güncellemesi Yayınlandı: İşte Yeni Gelen Özellikler', 'Windows 10 21H1', '&lt;div class=&quot;content-body__description&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: -apple-system, BlinkMacSystemFont, &#039;segoe ui&#039;, Roboto, Oxygen, Ubuntu, Cantarell, &#039;fira sans&#039;, &#039;droid sans&#039;, &#039;helvetica neue&#039;, sans-serif; margin-top: 16px; font-size: 1.5em; line-height: 1.5em; color: #222222; letter-spacing: -0.2px; background-color: #ffffff;&quot;&gt;Microsoft, her yıl bahar d&amp;ouml;neminde &amp;ccedil;ıkardığı b&amp;uuml;y&amp;uuml;k Windows 10 g&amp;uuml;ncellemelerin en yenisi 21H1&amp;rsquo;i kullanıma a&amp;ccedil;tı. G&amp;uuml;ncellemenin en b&amp;uuml;y&amp;uuml;k getirisi, Windows Hello &amp;ouml;zelliğinde harici kamera kullanılabilmesi olacak. Bir&amp;ccedil;ok &amp;ouml;zelliğin de hızlanması sağlanacak.&lt;/div&gt;\r\n&lt;div class=&quot;inread-tagon&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: #222222; font-family: -apple-system, BlinkMacSystemFont, &#039;segoe ui&#039;, Roboto, Oxygen, Ubuntu, Cantarell, &#039;fira sans&#039;, &#039;droid sans&#039;, &#039;helvetica neue&#039;, sans-serif; font-size: 16px; letter-spacing: -0.2px; background-color: #ffffff;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div class=&quot;content-body__detail&quot; style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: -apple-system, BlinkMacSystemFont, &#039;segoe ui&#039;, Roboto, Oxygen, Ubuntu, Cantarell, &#039;fira sans&#039;, &#039;droid sans&#039;, &#039;helvetica neue&#039;, sans-serif; margin-top: 16px; font-size: 1.125em; line-height: 1.75em; color: #222222; letter-spacing: -0.2px; background-color: #ffffff;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bolder;&quot;&gt;Windows 10&amp;rsquo;un&lt;/span&gt;&amp;nbsp;sıradaki b&amp;uuml;y&amp;uuml;k g&amp;uuml;ncellemesi,&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bolder;&quot;&gt;bug&amp;uuml;n cihazlara getirilmeye başlıyor&lt;/span&gt;. G&amp;uuml;ncelleme, &amp;ccedil;oğunlukla uzaktan &amp;ccedil;alışma tecr&amp;uuml;besini geliştirecek &amp;ouml;zelliklere getirilen geliştirmeleri kapsayacak. B&amp;ouml;ylece bir s&amp;uuml;re daha hayatımızın bir par&amp;ccedil;ası olacak olan pandemi s&amp;uuml;reci devam ederken&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bolder;&quot;&gt;evlerinden &amp;ccedil;alışan Windows kullanıcılarına hız ve kolaylık sağlanacak&lt;/span&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;B&amp;uuml;y&amp;uuml;k g&amp;uuml;ncellemeyle birlikte gelen en b&amp;uuml;y&amp;uuml;k geliştirme, girişte kolaylık ve g&amp;uuml;venlik sağlayan&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bolder;&quot;&gt;Windows Hello&lt;/span&gt;&amp;nbsp;&amp;ouml;zelliğine getirilecek. Artık oturum a&amp;ccedil;mak i&amp;ccedil;in&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bolder;&quot;&gt;harici kamera kullanımı m&amp;uuml;mk&amp;uuml;n olacak&lt;/span&gt;. Bunun yanında g&amp;uuml;venlik i&amp;ccedil;in geliştirilen ve iş hayatında da &amp;ouml;nem taşıyan bazı uygulamaların hızlanması sağlanacak.&lt;/p&gt;\r\n&lt;/div&gt;', '2021-06-10', 'https://www.webtekno.com/images/editor/default/0003/12/1cfe8037b3de6dc50f89d2236a9c5703046b609c.jpeg', 1, 'diger', 'editor');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- tablo yapısı dökülüyor muhammetblog.iletisim
CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `mesaj` text DEFAULT NULL,
  `okundu` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8mb4;

-- muhammetblog.iletisim: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `iletisim` DISABLE KEYS */;
INSERT INTO `iletisim` (`id`, `email`, `mesaj`, `okundu`) VALUES
	(583, 'admin@test.com', 'testyorumm', 1),
	(584, 'muhammet@mail.com', 'test12345', 0);
/*!40000 ALTER TABLE `iletisim` ENABLE KEYS */;

-- tablo yapısı dökülüyor muhammetblog.kullanicilar
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kullaniciadi` varchar(50) NOT NULL DEFAULT '0',
  `parola` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- muhammetblog.kullanicilar: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `kullanicilar` DISABLE KEYS */;
INSERT INTO `kullanicilar` (`id`, `kullaniciadi`, `parola`) VALUES
	(2, 'editor', '4321');
/*!40000 ALTER TABLE `kullanicilar` ENABLE KEYS */;

-- tablo yapısı dökülüyor muhammetblog.yorumlar
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `yorum` text DEFAULT NULL,
  `icerik_id` int(11) NOT NULL,
  `onay` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_yorumlar_blog` (`icerik_id`),
  CONSTRAINT `FK_yorumlar_blog` FOREIGN KEY (`icerik_id`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- muhammetblog.yorumlar: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yorumlar` DISABLE KEYS */;
INSERT INTO `yorumlar` (`id`, `isim`, `email`, `yorum`, `icerik_id`, `onay`) VALUES
	(13, 'muhammet', 'muhammet@mail.com', 'test1234', 32, 0),
	(14, 'muhammet', 'muhammet@mail.com', 'testyazi1234', 32, 0);
/*!40000 ALTER TABLE `yorumlar` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;