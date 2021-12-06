-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: cycling
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `elevation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'いろは坂・千手ヶ浜・華厳の滝','ＪＲ日光駅をスタート地点とし、千手ヶ浜と戦場ヶ原まで行き往復するルート。\r\n適度な距離で見どころを詰め込んであるのでゆっくり観光しながら走ることができます。\r\n時間に余裕があれば日光東照宮まで足を運んでみてはいかがでしょう。\r\n東照宮周辺にはお土産屋さんや食べ歩きができるお店もあります。\r\n千手ヶ浜や中禅寺湖の少し先にある中禅寺湖畔ボートハウスでは湖を眺めながら休憩できます。\r\n駅付近にもお店がたくさんあるので、グルメを中心としても楽しめます。\r\nスイーツでは日光プリン亭や松月氷室のかき氷が人気です。','71km','1232m','5時間30分','ＪＲ日光駅','https://ridewithgps.com/routes/37519704','DuIV5r02FNMKbkQhtnxSf227GJAjAjIGIWpP0AMa.jpg','vOb55spVfaCkhnlvGbx0DdmYcQCqunBMmDDRlra3.png','2021-12-03 07:43:02','2021-12-03 10:43:10'),(2,'金精峠・霧降高原','ロードバイクで行ける日光の最高到達地点、金精峠まで行くルートです。\r\n標高は1843ｍ。\r\n山の斜面に道路が作られているので、自分が登ってきた道を上から眺めることができます。\r\n麓の湯の湖はもちろん奥日光全体を望むことができるフォトスポットがあります。\r\n川俣方面の山王林道や大笹牧場までも登りがありクライマーにはたまらないルートです。\r\n湯の湖付近には足湯があるのでヒルクライムで疲れた足を癒すのに最適です。\r\n山王林道からは飲食店が少ないので補給をしっかり持って行くことをおすすめします。','113.9ｍ','2703ｍ','9時間','ＪＲ日光駅','https://ridewithgps.com/routes/37519765','XOc6tS8yjyagsVyMzcdu6sUWpMfcfDPQPs3NIv2H.jpg','y79dNFAFnffZ390n1AaA8tIrsbewDREmgddqm3I4.png','2021-12-04 09:17:23','2021-12-04 10:54:47'),(3,'古峯神社・前日光ハイランドロッジ','道の駅日光をスタート地点とし、前日光方面へ行くルートです。\r\n観光名所としてはそこまで有名ではないですがしばらく続く杉並木は圧巻です。\r\n川がとても奇麗な大芦川沿いを走るので夏は川へ入って休憩することもでき、毎年たくさんの人で賑わっています。\r\n古峯神社は紅葉の時期が人気でおすすめとなっています。\r\n日足トンネルは通らずに旧道を通るルートです。\r\n通る人は多くないですが静かで雰囲気のいい道です。\r\n秋以降は落ち葉や枝が多くなっているので、ダウンヒルには注意してください。','96.1ｋｍ','1877ｍ','7時間','道の駅日光','https://ridewithgps.com/routes/37519608','QHE5sHI0roy5WFCN143pADyErnrIA2LokJNVwZ4v.jpg','wSRTItCXvjNdhdkKSMWpVXS9zGBU9Z2YMA4LED81.png','2021-12-04 09:30:56','2021-12-04 11:05:44'),(4,'霧降高原・川治ダム・五十里ダム','日光の有名なダムを巡るルートです。\r\n周辺にはダムが点在しているので興味があれば他のダムにも寄ってみるといいと思います。\r\n川俣ダムは遊歩道を歩かないといけないのでルートに載せていませんが、渓谷もあり眺望がいいです。\r\n霧降高原までも長いヒルクライムがありますので、登り好きにも満足できるルートだと思います。\r\nキスゲ平園地はニッコウキスゲが咲く夏がおすすめです。','102.4ｋｍ','2207ｍ','8時間','ＪＲ日光駅','https://ridewithgps.com/routes/37519790','PxY7cr0JS3eqpsbfKXHE0mPsJ9CYeA0CXtYXz6fs.jpg','pGrcLLVAJWTRcFZmP4BVDFSAV5R0THGbZyUwxI2c.png','2021-12-04 09:40:15','2021-12-04 11:08:48');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `highlights`
--

DROP TABLE IF EXISTS `highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highlights`
--

LOCK TABLES `highlights` WRITE;
/*!40000 ALTER TABLE `highlights` DISABLE KEYS */;
INSERT INTO `highlights` VALUES (1,1,'0km','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','mlMgiD9j6xknCQHK4dlKE2Xkj62dYaZgzpJoUoUc.jpg','2wSrkHtgXEI51jiRQZ8Zm4OLNvuHgXlYeGuWnC5W.png','2021-12-03 07:48:03','2021-12-03 11:23:53'),(2,1,'1.8km','二荒山(男体山)をご神体としてまつる二荒山神社の朱塗りの橋。透明度が極めて高い大谷川の清流に架かる。世界遺産「日光の社寺」の玄関と言える。\r\nその透明度が美しい大谷川と朱く塗られた神々しい橋との競演による絶景に、日々多くの観光客が写真に収めていきます。','MyFGihwkwNpWTS0z8LtaPlgElSqPsE8ll8PQMEyu.jpg','ppFjkMi0bfZzS16oYPMDtqlXyoAL5tS4mtMKPxit.png','2021-12-03 11:27:43','2021-12-03 11:27:43'),(3,1,'17ｋｍ','第二いろは坂を登りきったところにある明智平。駐車場が広く、アイスやお菓子を販売してる店があり、休憩している多くの観光客で賑わっています。自転車でいろは坂を登りきった際には、その駐車場から見える景色に誰もが達成感を感じ、疲れも忘れさせることでしょう。また、ロープウェイも出ており約3分で\r\n日光で一番といわれる明智平展望台に着き中禅寺湖・華厳の滝・男体山など雄大なスケールで見渡せます。','civIcQ5aZuWmENZVTdUxVIUuEtZd7VldoHCAhlG0.jpg','o85VvK4NkDgZMTZyNRc6GrSi9CiaFKSedc34rwF5.png','2021-12-04 11:11:04','2021-12-04 11:11:04'),(4,1,'20km','奥日光の入り口に位置する中禅寺湖は、周囲約25km、最大水深163mで、およそ2万年前に男体山の噴火による溶岩で渓谷がせき止められ、原形ができたといわれています。\r\nまた、海抜1269mの日本一の高さを誇っており、春のヤツオツツジ、秋の紅葉が特に見事で年間多くの観光客が足を運んでいます。','E6oQQMOmOiSFxYYFZMB2VV8vffA9MNIfHoUDAvwt.jpg','TLtvG9QYypLnbtI4BFRI1CpfJ7pthZQT9trn5jrd.png','2021-12-04 11:13:12','2021-12-04 11:13:12'),(5,1,'45km','この地が中禅寺湖をめぐって男体山の神と赤城山の神が争った「戦場」だった、という神話が名前の由来といわれる戦場ヶ原。男体山の噴火によって出来た湿原で高層湿原、低層湿原、中間湿原と全ての全ての種類の湿原があり４００ヘクタールの広大な面積を2時間ほどで歩いて見渡せるハイキングコースがあります。\r\n戦場ヶ原のストレートな道はロードバイクで走ると爽快で気持ちいいです。','TvGe5R72jQLwO9ziBbRsnJYQJZkKNfcIyzuesYyA.jpg','ohciWYSvJKRhl4hjJheQOR8csW2PCOPGUtA36yGL.png','2021-12-04 11:20:16','2021-12-04 11:20:16'),(6,1,'54ｋｍ','日光の四十八ある滝の中でも最も有名、且つ日本三名瀑の一つでもある日光華厳の滝。中禅寺湖の水が高さ97メートルの岸壁を一気に落下する壮大な滝で、エレベーターで行ける観瀑台から、滝つぼを間近で見ることができ、自然の雄大さをその迫力を以って味わうことが出来ます。新緑や紅葉、凍りついた状態の滝など四季折々の景色を楽しむことが出来るのも大きな魅力です。','DjOSoKd9Tri9FIHhRA8kzgvJU00e2K2m6rdPzFd7.jpg','RnlvM68k4bAwchIMkPwulx2lVfjM8EP15vydjPcA.png','2021-12-04 11:21:03','2021-12-04 11:21:03'),(7,1,'71ｋｍ','東照宮などの世界遺産や、奥日光の雄大な自然が魅力の観光地「日光」。年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。エントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','yz74LuIkwFdO8yk8Xhq5quOH4g8Rj71CnJknE1BU.jpg','kTjkbifG6bejllaGSlYuMHviEl4FoLIRTyoMFyWr.png','2021-12-04 11:22:06','2021-12-04 11:22:06');
/*!40000 ALTER TABLE `highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2014_10_12_000000_create_users_table',1),(6,'2014_10_12_100000_create_password_resets_table',1),(16,'2021_10_22_132234_create_spots_table',2),(17,'2021_11_16_113510_create_courses_table',2),(18,'2021_11_18_060016_create_highlights_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path_s` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
INSERT INTO `spots` VALUES (1,'いろは坂','栃木県日光市街と中禅寺湖、奥日光を結ぶ全長15.8kmの山岳道路で、日本の道100選の1つ。下り専用の第一いろは坂と上り専用の第二いろは坂を合計すると48ヶ所もの急カーブがある。登りも下りも多くのサイクリストを唸らせる急坂となっており約500mもの標高差もありますが、新緑の時期や10月中旬から11月上旬にかけて見頃な紅葉前線が下りていく眺めが素晴らしいです。登っている最中には黒髪平、明智平と呼ばれる更なる絶景ポイントがあるためそこを目掛けて頑張っていく方が多くいます。',NULL,NULL,NULL,NULL,NULL,'{lat:36.73895, lng:139.52779 }','自然','lENPB3n31wGg26Ef8VJq6poAXoekz8d76cuq0973.jpg','aCNWbKTCcJ9emcLEitTIAGcZj3UBL653QL9epzOW.jpg','2021-12-04 11:49:54','2021-12-04 11:49:54');
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maho Okada','lumina.a310@gmail.com',NULL,'$2y$10$ApqXAjUjQjfQuBeNuRXXwubDc6aSGFNHHWMnQ1tRU9EYmChYBo7YK',NULL,'2021-10-20 06:13:51','2021-10-20 06:13:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06  4:24:45
