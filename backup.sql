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
INSERT INTO `courses` VALUES (1,'いろは坂・千手ヶ浜・華厳の滝','ＪＲ日光駅をスタート地点とし、千手ヶ浜と戦場ヶ原まで行き往復するルート。\r\n適度な距離で見どころを詰め込んであるのでゆっくり観光しながら走ることができます。\r\n時間に余裕があれば日光東照宮まで足を運んでみてはいかがでしょう。\r\n東照宮周辺にはお土産屋さんや食べ歩きができるお店もあります。\r\n千手ヶ浜や中禅寺湖の少し先にある中禅寺湖畔ボートハウスでは湖を眺めながら休憩できます。\r\n駅付近にもお店がたくさんあるので、グルメを中心としても楽しめます。\r\nスイーツでは日光プリン亭や松月氷室のかき氷が人気です。','71km','1232m','5時間30分','ＪＲ日光駅','https://ridewithgps.com/routes/37519704','DuIV5r02FNMKbkQhtnxSf227GJAjAjIGIWpP0AMa.jpg','vOb55spVfaCkhnlvGbx0DdmYcQCqunBMmDDRlra3.png','2021-12-03 07:43:02','2021-12-06 14:25:04'),(2,'金精峠・霧降高原','ロードバイクで行ける日光の最高到達地点、金精峠まで行くルートです。\r\n標高は1843ｍ。\r\n山の斜面に道路が作られているので、自分が登ってきた道を上から眺めることができます。\r\n麓の湯の湖はもちろん奥日光全体を望むことができるフォトスポットがあります。\r\n川俣方面の山王林道や大笹牧場までも登りがありクライマーにはたまらないルートです。\r\n湯の湖付近には足湯があるのでヒルクライムで疲れた足を癒すのに最適です。\r\n山王林道からは飲食店が少ないので補給をしっかり持って行くことをおすすめします。','113.9ｍ','2703ｍ','9時間','ＪＲ日光駅','https://ridewithgps.com/routes/37519765','XOc6tS8yjyagsVyMzcdu6sUWpMfcfDPQPs3NIv2H.jpg','y79dNFAFnffZ390n1AaA8tIrsbewDREmgddqm3I4.png','2021-12-04 09:17:23','2021-12-04 10:54:47'),(3,'古峯神社・前日光ハイランドロッジ','道の駅日光をスタート地点とし、前日光方面へ行くルートです。\r\n観光名所としてはそこまで有名ではないですがしばらく続く杉並木は圧巻です。\r\n川がとても奇麗な大芦川沿いを走るので夏は川へ入って休憩することもでき、毎年たくさんの人で賑わっています。\r\n古峯神社は紅葉の時期が人気でおすすめとなっています。\r\n日足トンネルは通らずに旧道を通るルートです。\r\n通る人は多くないですが静かで雰囲気のいい道です。\r\n秋以降は落ち葉や枝が多くなっているので、ダウンヒルには注意してください。','96.1ｋｍ','1877ｍ','7時間','道の駅日光','https://ridewithgps.com/routes/37519608','oqpNmW5wkK6b7oIUz00lEGqMJW0kwBb4MUXHaGxe.jpg','wSRTItCXvjNdhdkKSMWpVXS9zGBU9Z2YMA4LED81.png','2021-12-04 09:30:56','2021-12-06 09:00:43'),(4,'霧降高原・川治ダム・五十里ダム','日光の有名なダムを巡るルートです。\r\n周辺にはダムが点在しているので興味があれば他のダムにも寄ってみるといいと思います。\r\n川俣ダムは遊歩道を歩かないといけないのでルートに載せていませんが、渓谷もあり眺望がいいです。\r\n霧降高原までも長いヒルクライムがありますので、登り好きにも満足できるルートだと思います。\r\nキスゲ平園地はニッコウキスゲが咲く夏がおすすめです。','102.4ｋｍ','2207ｍ','8時間','ＪＲ日光駅','https://ridewithgps.com/routes/37519790','PxY7cr0JS3eqpsbfKXHE0mPsJ9CYeA0CXtYXz6fs.jpg','pGrcLLVAJWTRcFZmP4BVDFSAV5R0THGbZyUwxI2c.png','2021-12-04 09:40:15','2021-12-04 11:08:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highlights`
--

LOCK TABLES `highlights` WRITE;
/*!40000 ALTER TABLE `highlights` DISABLE KEYS */;
INSERT INTO `highlights` VALUES (1,1,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','l5OMnxzN75NtdNjANFH7oWVOUMBGWpVmVe3r2TwS.jpg','BnxzbNzjyZBL9JH0dYqIUbLWDJ1HtctTvqB7CkXU.png','2021-12-03 07:48:03','2021-12-07 01:41:28'),(2,1,'神橋','二荒山(男体山)をご神体としてまつる二荒山神社の朱塗りの橋。\r\n透明度が極めて高い大谷川の清流に架かる。世界遺産「日光の社寺」の玄関と言える。\r\nその透明度が美しい大谷川と朱く塗られた神々しい橋との競演による絶景に、日々多くの観光客が写真に収めていきます。','MyFGihwkwNpWTS0z8LtaPlgElSqPsE8ll8PQMEyu.jpg','s837tD9zHEXHwlB1iu8wnutLfC3mPku6VIyvhoID.png','2021-12-03 11:27:43','2021-12-07 01:41:42'),(3,1,'明智平','第二いろは坂を登りきったところにある明智平。\r\n駐車場が広く、アイスやお菓子を販売してる店があり、休憩している多くの観光客で賑わっています。\r\n自転車でいろは坂を登りきった際には、その駐車場から見える景色に誰もが達成感を感じ、疲れも忘れさせることでしょう。\r\nまた、ロープウェイも出ており約3分で日光で一番といわれる明智平展望台に着き中禅寺湖・華厳の滝・男体山など雄大なスケールで見渡せます。','civIcQ5aZuWmENZVTdUxVIUuEtZd7VldoHCAhlG0.jpg','PDqie73atCnQf36ofSm8HiINXkm5AXo2EYOOJtVw.png','2021-12-04 11:11:04','2021-12-07 01:41:50'),(4,1,'中禅寺湖','奥日光の入り口に位置する中禅寺湖は、周囲約25km、最大水深163mで、およそ2万年前に男体山の噴火による溶岩で渓谷がせき止められ、原形ができたといわれています。\r\nまた、海抜1269mの日本一の高さを誇っており、春のヤツオツツジ、秋の紅葉が特に見事で年間多くの観光客が足を運んでいます。','E6oQQMOmOiSFxYYFZMB2VV8vffA9MNIfHoUDAvwt.jpg','FCjjX6x5haamPxGj7Y9RqL5jAxOlEOUwCaS6WRag.png','2021-12-04 11:13:12','2021-12-07 01:42:00'),(5,1,'千手ヶ浜','中禅寺湖の西の端にある南北2キロにわたる浜で、周辺には樹齢200年以上のミズナラやハルニレなどが林をつくる他、6月にはクリンソウが咲き誇る自然豊かな環境です。\r\n浜の水は透明度が高く、小さな山に囲まれている情景のため秘境に地に来た事を感じさせてくれます。\r\n自家用車での侵入は出来ないため、低公害バスに乗る交通手段がありますが、6月のクリンソウの時期には満席がなることが多いため自転車であれば楽に行くことが出来ます。','ep63MeeOuqGNpwC1jy9SePEMbc1rz43kObBTy4fF.jpg','PNtHHkTIHhX3jNFaRubgMgKPecNk1g2Q3ZWcwrvU.png','2021-12-04 11:20:16','2021-12-07 01:45:32'),(6,1,'戦場ヶ原','この地が中禅寺湖をめぐって男体山の神と赤城山の神が争った「戦場」だった、という神話が名前の由来といわれる戦場ヶ原。\r\n男体山の噴火によって出来た湿原で高層湿原、低層湿原、中間湿原と全ての全ての種類の湿原があり４００ヘクタールの広大な面積を2時間ほどで歩いて見渡せるハイキングコースがあります。\r\n戦場ヶ原の直線道路はロードバイクで走ると爽快で気持ちいいです。','FNyITiieZu3CGOLcqmsMI8q3UTZyoQg4uiFutinc.jpg','xjLnRuOGrU6IrYxvsED9rt7hK1OyBfQslTwMbz7F.png','2021-12-04 11:21:03','2021-12-07 01:47:43'),(7,1,'華厳の滝','日光の四十八ある滝の中でも最も有名、且つ日本三名瀑の一つでもある日光華厳の滝。\r\n中禅寺湖の水が高さ97メートルの岸壁を一気に落下する壮大な滝で、エレベーターで行ける観瀑台から、滝つぼを間近で見ることができ、自然の雄大さをその迫力を以って味わうことが出来ます。\r\n新緑や紅葉、凍りついた状態の滝など四季折々の景色を楽しむことが出来るのも大きな魅力です。','Qv8qX4q3qFNTGyjHrQ0PT9Sr95jeKQTjPcuyndSN.jpg','CvSIvLhalmyo0PhxW6YS5tp2M4dQ9NpsMAmDUSdX.png','2021-12-04 11:22:06','2021-12-07 01:48:41'),(8,1,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。エントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','kQ4MdWd6IxshvdDUL2D2TOUL1cKnDx10OWbIA2FK.jpg','Nznk2QsPksHPgUk8pB7Dry0lT3SZ6x7jZ5HCmHqa.png','2021-12-07 01:56:28','2021-12-07 01:56:28'),(9,2,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','7F7YPiAN4iMksrDcXy2PzEBBqBsRikd1oMHKOzTY.jpg','Fl4mXXG6jXd1ae9TEKfkGHtp1alUZSFWazddrqRZ.png','2021-12-07 02:15:02','2021-12-07 02:15:02'),(10,2,'明智平','第二いろは坂を登りきったところにある明智平。\r\n駐車場が広く、アイスやお菓子を販売してる店があり、休憩している多くの観光客で賑わっています。\r\n自転車でいろは坂を登りきった際には、その駐車場から見える景色に誰もが達成感を感じ、疲れも忘れさせることでしょう。\r\nまた、ロープウェイも出ており約3分で日光で一番といわれる明智平展望台に着き中禅寺湖・華厳の滝・男体山など雄大なスケールで見渡せます。','xNNcXCucnkrhP81Ou5Kg3L1zBcA4eaYwdjf6jwnL.jpg','fAnbf2MV178b6lj4XmxsYcNI49e233PV9YiNrLcI.png','2021-12-07 02:59:57','2021-12-07 02:59:57'),(11,2,'中禅寺湖','奥日光の入り口に位置する中禅寺湖は、周囲約25km、最大水深163mで、およそ2万年前に男体山の噴火による溶岩で渓谷がせき止められ、原形ができたといわれています。\r\nまた、海抜1269mの日本一の高さを誇っており、春のヤツオツツジ、秋の紅葉が特に見事で年間多くの観光客が足を運んでいます。','1u2pKbf3EWTcjyP3KvJYqblMAL5ai7373VbfbCMm.jpg','DQr7PGurMVOgKp3lkCXrurm3JeTdVJvPIAVx4iDU.png','2021-12-07 03:05:08','2021-12-07 03:05:08'),(12,2,'戦場ヶ原','この地が中禅寺湖をめぐって男体山の神と赤城山の神が争った「戦場」だった、という神話が名前の由来といわれる戦場ヶ原。\r\n男体山の噴火によって出来た湿原で高層湿原、低層湿原、中間湿原と全ての全ての種類の湿原があり４００ヘクタールの広大な面積を2時間ほどで歩いて見渡せるハイキングコースがあります。\r\n戦場ヶ原の直線道路はロードバイクで走ると爽快で気持ちいいです。','7wXKTsBmDmmpMyO742skhfCcnrpEW8aBzruYW5sb.jpg','mUYAA6sC3LW5BGIpdWLCucvAdbyXtCbl3ucqf24C.png','2021-12-07 03:06:27','2021-12-07 03:06:27'),(13,2,'金精峠','日光市と群馬県片品村との境にある金精峠は周りを白根山、男体山などで囲まれる高所のため峠の標高は2024mと高い。\r\n上に登っていくに連れて湯の湖や男体山がくっきりと映る大パノラマが広がり、また9月下旬から10月上旬にかけて紅葉が楽しめます。\r\n自転車で行く際には湖の近くを走るのと標高が高いため10月上旬くらいにはかなり寒いため冬の装備をしていくことをおすすめします。\r\nなお、12月下旬から4月下旬まで降雪のため金精峠は冬季閉鎖されます。','EBr7kMN3Vrig4Bw6DyPQoUKOa1siQr20fRO5mRSz.jpg','y2gI8GfJDSqf9XLd8S2x2FaTK41utsllY8y6sijT.png','2021-12-07 03:09:39','2021-12-07 03:09:39'),(14,2,'川俣大橋','湯西川から川俣温泉に向かう途中にある橋で、川俣ダムに架かっています。\r\n両側が強固な岩山で、川俣湖をつり橋で越えていくフォルムは、さながらゴールデンゲートブリッジのようできれいです。また、橋の上からは、川俣湖の景色をきれいに見ることができます。\r\n湯西川側には駐車スペースがありますのでそこから歩いて写真などを収める人が多くいます。','hzUN1faCMOmv4P6bw1vyqDpH8FBZudmq8Xt1DADn.jpg','c5CIegFGeYLC7vEM2VzgBZraBqxjfHZr15pHqfS7.png','2021-12-07 03:14:59','2021-12-07 03:14:59'),(15,2,'大笹牧場','四季折々の自然と絶品グルメが味わえる雲海と天空のリゾート牧場大笹牧場は、面積362haの全国屈指の広さを誇っており、新鮮な牛乳を使ってアイスクリーム作り体験などができます。\r\nアイスクリームは販売もしており自転車で訪れた際に、のどかな牧場の景色を楽しみながらアイスクリームを食べれば幸せな気分を味わえます。\r\nサイクルラックも置いているため気軽に寄ることが出来ます。','uP1d0E6yNQvxIjuv74x8VgpkRJOIJBudhITt05EU.jpg','KF6Q07yerctT9seQainyK3VZqusxFokqINyjcUmG.png','2021-12-07 03:16:56','2021-12-07 03:16:56'),(16,2,'六方沢橋','標高1434m、長さ290mの巨大な橋、六方沢橋は、栗山ダムや筑波山などの雄大な眺望が広がります。\r\nまた、早起きすれば関東平野から昇る日の出を見ることが出来ます。\r\n橋を渡った少し先で写真を撮ると橋全体を写せます。','eABwrV0NhWNaLtkH4K4Z1tYHIQ4TqgDc6RLsRxns.jpg','GhPZ1q2L1dKf1iPIYZYDypJlbTssBSkkkHKnZx5U.png','2021-12-07 03:20:13','2021-12-07 03:20:13'),(17,2,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','oFd0qCJtNktHMh1YjAucqMOpsUeyugq6WcqHpiey.jpg','t61wxcBWgRyMavsb3JM3JQqxbUnISgMpeBOOsZMq.png','2021-12-07 03:21:17','2021-12-07 03:21:17'),(18,3,'道の駅日光','世界遺産指定「日光の社寺」や「鬼怒川温泉・川治温泉」などへの玄関口として全国でも非常に珍しい、市街地に建てられた道の駅日光。\r\n日光駅からサイクリングする場合この道の駅が近いため乗り初め、あるいは最後を締めくくるのに、お蕎麦や甘いワッフル食べたりお土産を買って行ったりすることができる場所で、サイクルラックも完備しているため気軽に立ち寄ることが出来ます。','zxi6wvfdRXarQZkZVbcaMUScDUjkX6YzxlehegVD.jpg','cPAcyK8OQbZiKfXjPAToJHj6bnl7gVEClisSNRFD.png','2021-12-07 04:55:55','2021-12-07 04:55:55'),(19,3,'日光杉並木街道','日光杉並木街道は、日光街道・例幣使街道・会津西街道の３つの街道に渡り、全長37ｋｍもの道の両側に１万2126本もの杉の木がうっそうとそびえ立つ並木道です。\r\n高さ約30ｍにも成長したこの杉並木は現在日本で唯一、特別史跡と特別天然記念物の二重指定を受けており、平成4年には「世界一長い並木道」としてギネスブックに認定されています。\r\n日光東照宮まで行くハイキングコースが整備されており、直線道路になっているためその自然の中を風を切って自転車で走るのも気持ちいいです。','FzbJOuc9gDLjdQ6F3uXsz7BGKnAFZEHRtQQEyKUY.jpg','BiDkqNfT3W6m0CrGGzeIyOFFfAnge5mWWyb8tKmH.png','2021-12-07 04:58:51','2021-12-07 04:58:51'),(20,3,'古峯神社','栃木県の古峯ヶ原（こぶがはら）にある500ヘクタールの広大な領域を持つ古峯神社。\r\n御祭神の使者である天狗は災厄を除災するとして古くから信仰を集めており、別名「天狗の社」とも呼ばれ、境内では大小様々な天狗さまに逢うことが出来ます。\r\nまた、「天狗の宿」としても知られ、厳粛に行われる1番祈祷を受けることにより、より一層の御加護を賜ることが出来るそう。','QbgKh1Tk1AhsBPEdmDAargh803DpAfPe81GPaZ9O.jpg','dsnJP4dAnVT7oV60fGQoLJi7qmCdOVVYvlvI1ve5.png','2021-12-07 05:00:03','2021-12-07 05:00:03'),(21,3,'前日光ハイランドロッジ','夕刻の空のグラデーション。夜に出会える野生生物。自分を覆いつくす無数の星々。\r\nそして早朝、澄んだ空気に浮かび上がる数百km彼方の山並みの絶景を味わうことができる宿泊施設、前日光ハイランドロッジ。\r\n横根高原のハイキングの基点としてもぴったりで、横根山および井戸湿原の周遊コースで四季折々のすばらしい景色を楽しめます。\r\nまた、日帰り入浴やバーベキューや食事、休憩もでき、売店もあります。','yOtC3iKw2OLC72CnITIIg9ERDlPRwarTFWlM1nud.jpg','NMT4nIxNSIjj825vqFBoTjhfTspxczHhj6FEFFSy.png','2021-12-07 05:01:23','2021-12-07 05:01:23'),(22,3,'足尾駅','かの有名な足尾銅山を観光出来る渡良瀬渓谷鉄道の駅の一つ、足尾駅。\r\n構内には朽ちてしまった古い車両が展示されており、時の流れが止まったようなノスタルジックで魅力的な駅です。\r\nまた、1両だけの列車が運行しており、自然に溶け込むかのような色合いをしていることから、より田舎な雰囲気を満喫出来ます。','XHdJIg1ky9vfCWP9hHNI6nbfoHzekgehz67nhITD.jpg','3yyPrXqEoPFQEOzlGMSxOoHrea2K8YF98GNDU2ST.png','2021-12-07 05:02:23','2021-12-07 05:02:23'),(23,3,'神橋','二荒山(男体山)をご神体としてまつる二荒山神社の朱塗りの橋。\r\n透明度が極めて高い大谷川の清流に架かる。\r\n世界遺産「日光の社寺」の玄関と言える。\r\nその透明度が美しい大谷川と朱く塗られた神々しい橋との競演による絶景に、日々多くの観光客が写真に収めていきます。','L6PtdHsvVVXiX8dKWTxYgNuKzXsaHTEP8xGF8Bdu.jpg','gzge5LKlYJF5GIElUneGaX4mAC2AGvk08to2eLkQ.png','2021-12-07 05:03:22','2021-12-07 05:03:22'),(24,3,'道の駅日光','世界遺産指定「日光の社寺」や「鬼怒川温泉・川治温泉」などへの玄関口として全国でも非常に珍しい、市街地に建てられた道の駅日光。\r\n日光駅からサイクリングする場合この道の駅が近いため乗り初め、あるいは最後を締めくくるのに、お蕎麦や甘いワッフル食べたりお土産を買って行ったりすることができる場所で、サイクルラックも完備しているため気軽に立ち寄ることが出来ます。','hfPlbn2Mq9GPB89lNVe3644SMt4XStHtnSILGQ1f.jpg','HwGrAux6pJlik5bs6D5VVh9a44I0xNCYDZFayLfj.png','2021-12-07 05:05:27','2021-12-07 05:05:27'),(25,4,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','2PDU0EQF71KFawZ88GeeY8bJkOGiIHDwJEd9RQmQ.jpg','MBbkU3E0TWN8GJI8TENKdDEUZua2CjiODBxY5apB.png','2021-12-07 05:06:39','2021-12-07 05:06:39'),(26,4,'キスゲ平園地','キスゲ平は赤薙山の中腹、標高1,300ｍ～1,600ｍにかけて広がる高原です。\r\n3月下旬のマンサクから始まり、4月～6月にかけてはカタクリやツツジ類など、100種類を超すたくさんの種類の花が春から秋まで楽しめます。\r\nその中でも6月中旬から7月にかけて咲くニッコウキスゲの群落は一見の価値があります。\r\n遊歩道と天空回廊と呼ばれる1,445段の階段が整備され、ゆっくり眺望や草花を楽しみながら歩いて園内を散策していただけます。','qDenIUBRCZlxmIaU6aToYF9n8iojT2cp8MJ4y6fK.jpg','A7s1fJkElznW9xjL4vhmNNoF1BE6JlV5Zvi4kQvR.png','2021-12-07 05:08:43','2021-12-07 05:08:43'),(27,4,'大笹牧場','四季折々の自然と絶品グルメが味わえる雲海と天空のリゾート牧場大笹牧場は、面積362haの全国屈指の広さを誇っており、新鮮な牛乳を使ってアイスクリーム作り体験などができます。\r\nアイスクリームは販売もしており自転車で訪れた際に、のどかな牧場の景色を楽しみながらアイスクリームを食べれば幸せな気分を味わえます。\r\nサイクルラックも置いているため気軽に寄ることが出来ます。','C8wAy39DvrA6rORgZu4RbMw5pEfr66L8Wnhx10Js.jpg','kOhkIZcYQXKmZ9P0Zz9WeS4CUJPeWHErErRvvB1O.png','2021-12-07 05:09:40','2021-12-07 05:09:40'),(28,4,'五十里ダム','五十里ダムは、鬼怒川の支川である男鹿川に、昭和31年、当時日本で最も高いダム(112m)として完成しました。\r\n洪水による下流河川のはんらんを防ぐための洪水調節、農業用水の供給、発電を目的としてつくられた、重力式コンクリートダムです。\r\n山に囲まれた地形に位置し、山の景色が湖面に反射して見えた時のその景色は幻想的な気分になります。','bo0MmPOFMTsJiVD80YEpqLuV0OqQ1rjchypCHent.jpg','5LFFJ6OHqC6SGKVuGSHMLL74ZE9apRklvmGyss99.png','2021-12-07 05:25:14','2021-12-07 05:25:14'),(29,4,'川治ダム','川治ダムは、利根川総合開発の一環として鬼怒川に計画されたダムです。\r\n洪水による下流河川のはんらんを防ぐための洪水調節、農業用水や都市用水の供給を目的につくられました。\r\n堤の高さが140mと鬼怒川にある数あるダムの中でも一番高く、6つの放水口から放流してる時の様子は圧巻の一言です。\r\n放流していない状態でもそのダムの大きさに心奪われると思います。','BwjYvRmG3BtjdPMfb6duhLFt0r5KsI05BEZUsSHz.jpg','7kqiPj08LwjOnKGS3kpMkfgP6Q9GybnaXX4a7ILZ.png','2021-12-07 05:25:55','2021-12-07 05:25:55'),(30,4,'ＪＲ日光駅','年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。\r\nエントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','6vleqfEzGUs6a8cBRRoLckDoZ25U7fA3mwOiUFgS.jpg','dwJ40CiJDztjj6lnOPZliXmL7wypiIi8deaIbPpo.png','2021-12-07 05:27:22','2021-12-07 05:27:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
INSERT INTO `spots` VALUES (1,'いろは坂','栃木県日光市街と中禅寺湖、奥日光を結ぶ全長15.8kmの山岳道路で、日本の道100選の1つ。下り専用の第一いろは坂と上り専用の第二いろは坂を合計すると48ヶ所もの急カーブがある。登りも下りも多くのサイクリストを唸らせる急坂となっており約500mもの標高差もありますが、新緑の時期や10月中旬から11月上旬にかけて見頃な紅葉前線が下りていく眺めが素晴らしいです。登っている最中には黒髪平、明智平と呼ばれる更なる絶景ポイントがあるためそこを目掛けて頑張っていく方が多くいます。',NULL,NULL,NULL,NULL,NULL,'{lat:36.73895, lng:139.52779 }','自然','wqOSnpD1Jktnzv6wx1eMCLzhbSokSmOKNjChn2Qb.jpg','5CJ7AzLgyxUZB7nfRE5qwWgzrceCnUmedV7MI3p3.jpg','2021-12-04 11:49:54','2021-12-07 05:34:43'),(2,'明智平','第二いろは坂を登りきったところにある明智平。駐車場が広く、アイスやお菓子を販売してる店があり、休憩している多くの観光客で賑わっています。自転車でいろは坂を登りきった際には、その駐車場から見える景色に誰もが達成感を感じ、疲れも忘れさせることでしょう。また、ロープウェイも出ており約3分で\r\n日光で一番といわれる明智平展望台に着き中禅寺湖・華厳の滝・男体山など雄大なスケールで見渡せます。',NULL,NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/19/','{lat:36.73703, lng:139.51771 }','自然','6QoYxpoRXHRufJJDGM50iIwEYJ3Ixprz0OHGL6Ck.jpg','G2zEtbrhLeI26nvzOmupRKv6as0Fx8GnMDwRTMu2.jpg','2021-12-07 05:36:17','2021-12-07 05:36:17'),(3,'道の駅日光','世界遺産指定「日光の社寺」や「鬼怒川温泉・川治温泉」などへの玄関口として全国でも非常に珍しい、市街地に建てられた道の駅日光。日光駅からサイクリングする場合この道の駅が近いため乗り初め、あるいは最後を締めくくるのに、お蕎麦や甘いワッフル食べたりお土産を買って行ったりすることができる場所で、サイクルラックも完備しているため気軽に立ち寄ることが出来ます。','栃木県日光市今市719-1','0288-25-7771','9:00〜18:00',NULL,'https://www.nikko-honjin.jp/','{lat:36.72511, lng:139.68815}','建物','EOO4VV1JXpBgTvJG7pRvT9weYkYmeJ1ZORA44mW5.jpg','sYeDbCarpD4dseqO0HeVsYwDvhekLrhmyXpZDk3J.jpg','2021-12-07 05:37:45','2021-12-07 05:37:45'),(4,'JR日光駅','東照宮などの世界遺産や、奥日光の雄大な自然が魅力の観光地「日光」。年間を通して国内や海外からの観光客が多く訪れる世界遺産日光の玄関口の一つで、古く美しい姿を見せる大正時代の白亜の洋館「JR日光駅舎」。エントランスには東照宮の鳴龍を思わせる共鳴する天井、2階には白い漆喰の壁と明治時代のシャンデリアが煌めくホワイトルーム、駅前には日光名水があります。\r\n日光を観光する自転車乗りにとっても輪行旅の起点となります。','栃木県日光市相生町115','050-2016-1600',NULL,NULL,'http://www.jreast.co.jp/','{lat:36.74731, lng:139.62206}','建物','ZH87xVo9Q50Dpjwfz6AvUhlxRxkiQnqK19K4qTwP.jpg','eWjzZpcdiHCo3WFnVMPLb6bfCmHLdf64kWHdkhMu.jpg','2021-12-07 05:39:42','2021-12-07 05:39:42'),(5,'中禅寺湖','奥日光の入り口に位置する中禅寺湖は、周囲約25km、最大水深163mで、およそ2万年前に男体山の噴火による溶岩で渓谷がせき止められ、原形ができたといわれています。\r\nまた、海抜1269mの日本一の高さを誇っており、春のヤツオツツジ、秋の紅葉が特に見事で年間多くの観光客が足を運んでいます。','栃木県日光市中宮祠','0288-21-1180',NULL,NULL,'http://www.nikko-kankou.org/spot/12/','{lat:36.73370 , lng:139.48236}','自然','KSk7VNfnIJGQjf2EKYFzuP3fmTsNSF40ycAU2OYN.jpg','KkMvpmTihwFVaBzDPLySiif7H3XhikWW6jeEoBT5.jpg','2021-12-07 05:40:54','2021-12-07 05:41:48'),(6,'神橋','二荒山(男体山)をご神体としてまつる二荒山神社の朱塗りの橋。透明度が極めて高い大谷川の清流に架かる。世界遺産「日光の社寺」の玄関と言える。\r\nその透明度が美しい大谷川と朱く塗られた神々しい橋との競演による絶景に、日々多くの観光客が写真に収めていきます。','栃木県日光市上鉢石町',NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/21/','{lat:36.75351, lng:139.60402 }','建物','xlHXdJaRFT82QOOPD5MoGKZ7TOgctezYjjZgaoGN.jpg','VjCpzUQlZSUt1h0J2TWjZc9lDXW9M5kLlgu2ukSb.jpg','2021-12-07 05:42:52','2021-12-07 05:42:52'),(7,'日光東照宮','日本を代表する世界遺産の一つ、「日光の社寺」。その中でも最も有名な日光東照宮は江戸幕府初代将軍の徳川家康を神としてまつる神社で、数多くの国宝や重要文化財が軒を連ねています。入り口には高さ9mの石鳥居があり、境内を進むと五重塔や三猿、そして東照宮のシンボル的な存在である陽明門があり、金と白で彩られた門に凄まじい量の彫刻の数に目を奪われます。','栃木県日光市山内2301','0288-54-0560','8:00〜17:00',NULL,NULL,'{lat:36.75795, lng:139.59937}','建物','50K6LJkvl2AoKpUEkPcSO7AazRBwMekIwznPP0ZU.jpg','N5JzPEKHwC1kOSNRIR5vdSzNqjniNYQQKkCqxFMg.jpg','2021-12-07 05:44:24','2021-12-07 05:44:24'),(8,'五重塔','日光東照宮の石鳥居をくぐった左側に存在する重要文化財、36メートルの高さを誇る五重の塔。1650年に建てられその後1815年に落雷によって焼失してしまいました。しかし200年以上もの長い歴史を経てもなお、美しい風貌を保ち、「心柱と屋根」を用いた、地震が来ても崩れない建築様式は、あの東京スカイツリーにも採用されており注目を集めています。','栃木県日光市山内2301-2','8:00〜16:00',NULL,NULL,'https://sanraku.premierhotel-group.com/kinugawa/blog/1456/','{lat:36.75673, lng:139.59920}','建物','Oqe9i1pcBzmhAVdIk9kLUAOqkzm1GUHgBafj6Duz.jpg','IU89C1hPaL0xS38r32QlzVZtBUA0xf1XI46rIvMa.jpg','2021-12-07 05:45:35','2021-12-07 05:45:35'),(9,'輪王寺','徳川三代将軍家光の霊廟、輪王寺は15の支院全体のことで、「日光の社寺」として世界遺産に登録されています。壮麗な二天門、竜宮城を思わせる皇嘉門など、見どころが多い。また、日光三山の本地仏をまつるお堂「三仏堂」には千手観音（男体山）・阿弥陀如来（女峰山）・馬頭観音（太郎山）三体の仏像がまつられています。','栃木県日光市山内2300','0288-54-0531','4月～10月 8：00～17：00　11月～3月 8：00～16：00',NULL,'http://www.nikko-kankou.org/spot/3/','{lat:36.75799, lng:139.59597}','建物','bXqUQu1k7fs2OFVmZnjGtlZz2Svah7ywMPe4v7Nl.jpg','2aqzPi4myQaOFe1JjGThKIpXB5etHsB5YAa27gAY.jpg','2021-12-07 05:47:05','2021-12-07 05:47:05'),(10,'二荒山神社','日光の山岳信仰の中心として古くから崇拝されてきた神社。関東の守り神として幕府・豪族の信仰を集めたとされている。二荒山(男体山)をご身体としてまつり、現在では縁結びのご利益で人気の社となっています。','栃木県日光市山内2307','0288-54-0535','4月～10月 8：00～17：00　11月～3月 8：00～16：00',NULL,'http://www.futarasan.jp/','{lat:36.75849, lng:139.59643}','建物','0VYWo05VpHYYfWVrnybSE5FJKQpTMoc5Y3ydxwaN.jpg','MhAqsO5XnMC4Zhlsq7Ia6Pru12vDKI5bX6HK7nAp.jpg','2021-12-07 05:48:39','2021-12-07 05:48:39'),(11,'華厳の滝','日光の四十八ある滝の中でも最も有名、且つ日本三名瀑の一つでもある日光華厳の滝。中禅寺湖の水が高さ97メートルの岸壁を一気に落下する壮大な滝で、エレベーターで行ける観瀑台から、滝つぼを間近で見ることができ、自然の雄大さをその迫力を以って味わうことが出来ます。新緑や紅葉、凍りついた状態の滝など四季折々の景色を楽しむことが出来るのも大きな魅力です。',NULL,NULL,'3月～4月 9：00～17：00　5月～11月 8：00～17：00　　　12月～2月 9：00～16：30',NULL,'http://kegon.jp/','{lat:36.73802, lng:139.50194}','自然','aFNS9U0YCK2jLgqvTptMQ33xNIleJK6ki9RrQ3sW.jpg','5rshetwyHx5i7uyDAcgPacoZ6y7f16D95dHKxZRP.jpg','2021-12-07 05:49:56','2021-12-07 06:46:39'),(12,'中禅寺湖スカイライン','日本名道50選にも選ばれている中禅寺湖スカイラインは、男体山と中禅寺湖を一望できる標高1753mの半月山駐車場へと続く穴場の絶景ロードです。かつては有料道路であったためカーブが多いものの、走りやすくドライブや、自転車好きにはたまらない道となっています。',NULL,NULL,NULL,NULL,NULL,'{lat:36.72705, lng:139.49155 }','自然','w8Rj71isPgFYrejrmGjQ8TwrbbPpnfIfNbSsjto5.jpg','inH18LazF3PiyclGQV7FPMhb9vjGNjf6XINXHDgn.jpg','2021-12-07 06:47:29','2021-12-07 06:47:29'),(13,'竜頭の滝','男体山の噴火によって出来た溶岩の上を210mにわたって流れ落ちる滝で、幅10mほどの階段状の岩場を勢いよく流れます。滝つぼ近くが大きな岩によって二分されて、その様子が竜の頭に似ているためこの名が付けられています。サイクリングで疲れた体を観瀑台の休憩所で団子やお汁粉を食べながら癒し、そこから見られる滝つぼの景色は最高です。','栃木県日光市中宮祠',NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/6/','{lat:36.75862, lng:139.45129}','自然','hWg40Mos0XkuDgtLE9qncyF41DGP3QhLnqk0CG7R.jpg','64WqXVAYKggNCSZdjW5wyqvxv8gaBw4P7xlKWJly.jpg','2021-12-07 06:48:34','2021-12-07 06:48:34'),(14,'戦場ヶ原','この地が中禅寺湖をめぐって男体山の神と赤城山の神が争った「戦場」だった、という神話が名前の由来といわれる戦場ヶ原。男体山の噴火によって出来た湿原で高層湿原、低層湿原、中間湿原と全ての全ての種類の湿原があり４００ヘクタールの広大な面積を2時間ほどで歩いて見渡せるハイキングコースがあります。','栃木県日光市中宮祠',NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/10/','{lat:36.77869, lng:139.44400}','自然','LtceSn6wXPWZJo5A1rkbncZxOnHvj9zHXOBDbJW5.jpg','ruEDQfuaRAja7TqLwe9YQJcsO9RSF4hWoVusNakZ.jpg','2021-12-07 06:49:29','2021-12-07 06:49:29'),(15,'千手ヶ浜','中禅寺湖の西の端にある南北2キロにわたる浜で、周辺には樹齢200年以上のミズナラやハルニレなどが林をつくる他、6月にはクリンソウが咲き誇る自然豊かな環境です。\r\n浜の水は透明度が高く、小さな山に囲まれている情景のため秘境に地に来た事を感じさせてくれます。\r\n自家用車での侵入は出来ないため、低公害バスに乗る交通手段がありますが、6月のクリンソウの時期には満席がなることが多いため自転車であれば楽に行くことが出来ます。',NULL,NULL,NULL,NULL,NULL,'{lat:36.74906, lng:139.42220}','自然','r0gUORm3iA8GfcDwRAD9ZeINlsD1Fa3sfZB9JwuG.jpg','WHXtnC3XrTmpQH4mQyaGilcQ7xkAifAP6jqOrMK7.jpg','2021-12-07 06:50:34','2021-12-07 06:50:34'),(16,'湯ノ湖','北東にある三岳火山の噴火によってつくられた堰止湖で、日光白根山からの水に加え、湖畔にある日光湯元温泉からの湯が流れ込んでいる。周囲が約3kmのハイキングコースとなっており、湖の南端には湯滝がある。湯滝は戦場ヶ原へのハイキングコースの起点になっており、約1時間で一周できるためオススメのスポットとなっています。',NULL,NULL,NULL,NULL,NULL,'{lat:36.79931, lng:139.42523}','自然','oA1IfjQXxkjx2KcVLDjIMERX0icf0Vnd2fDWUzOR.jpg','NbebXQIl36pwDjxaUIckj1hY5sZAzRLPVpfn3PKk.jpg','2021-12-07 06:51:24','2021-12-07 06:51:24'),(17,'湯滝','湯ノ湖の南端にある高さ７０メートル、長さ１１０メートルの滝で、湯川をせき止めて湯ノ湖をつくった三岳溶岩流の岩壁を湖水が流れ落ちる。\r\n滝壺目の前に観爆台があり、迫力ある姿を眺めることができます。\r\n戦場ヶ原から北上するハイキングコースの途中にあり、またバス停「湯滝入口」からも近いため是非訪れたい場所となっています。',NULL,NULL,NULL,NULL,NULL,'{lat:36.79663, lng:139.42855}','自然','UupixBqBxRwwSlpY4BjPf8RvJayxsOpvThWkCVZP.jpg','el93jQPCIyk4RoeFWgD1cYTZJkMZL4q8EsGEAu7J.jpg','2021-12-07 06:52:11','2021-12-07 06:52:11'),(18,'小田代原','日光国立公園内にある約3キロ湿地で、湯の湖から流れる湯川の西側に広がっている。初夏から夏にかけてはウマノアシガタ、ホザキシモツケ、ニッコウアザミといった花が咲き、秋にはミズナラの黄葉や草紅葉の絶景を楽しむことが出来、ハイキングコースが整備されています。',NULL,NULL,NULL,NULL,NULL,'{lat:36.77518 , lng:139.42620}','自然','vTUU8wYWn6vIO4ni6iYXCiUp3XPUv5Bk0I4MVQEc.jpg','J5BfWqGTTG851ACPCMnfw6WfkQYOeApgbTtZ3Ysd.jpg','2021-12-07 06:55:08','2021-12-07 06:55:08'),(19,'金精峠','日光市と群馬県片品村との境にある金精峠は周りを白根山、男体山などで囲まれる高所のため峠の標高は2024mと高い。\r\n上に登っていくに連れて湯の湖や男体山がくっきりと映る大パノラマが広がり、また9月下旬から10月上旬にかけて紅葉が楽しめます。\r\n自転車で行く際には湖の近くを走るのと標高が高いため10月上旬くらいにはかなり寒いため冬の装備をしていくことをおすすめします。\r\nなお、12月下旬から4月下旬まで降雪のため金精峠は冬季閉鎖されます。',NULL,NULL,NULL,NULL,NULL,'{lat:36.82027, lng:139.39456}','自然','Ab0YGHpnGMehtzwdIee8dnzchkNAGlTyA7RiUKAW.jpg','xqgk288UxfSTOxST9sezJ9EKLrLwLkXpZcM4Ff64.jpg','2021-12-07 06:56:03','2021-12-07 06:56:03'),(20,'キスゲ平園地','キスゲ平は赤薙山の中腹、標高1,300ｍ～1,600ｍにかけて広がる高原です。3月下旬のマンサクから始まり、4月～6月にかけてはカタクリやツツジ類など、100種類を超すたくさんの種類の花が春から秋まで楽しめます。その中でも6月中旬から7月にかけて咲くニッコウキスゲの群落は一見の価値があります。遊歩道と天空回廊と呼ばれる1,445段の階段が整備され、ゆっくり眺望や草花を楽しみながら歩いて園内を散策していただけます。','栃木県日光市所野1531','0288-53-5337',NULL,NULL,'http://www.kirifuri-kogen.jp/','{lat:36.80722, lng:139.59280}','建物','ons5sPz7Sdk5fo2Fd4TxdIrcZDa0g6av4gjWjbCg.jpg','Ps3NyMpWWndKV8HHVow9yRsBn4FeAKCgooqzmPwR.jpg','2021-12-07 06:58:01','2021-12-07 06:58:01'),(21,'六方沢橋','標高1434m、長さ290mの巨大な橋、六方沢橋は、栗山ダムや筑波山などの雄大な眺望が広がります。また、早起きすれば関東平野から昇る日の出を見ることが出来ます。橋の前後に駐車場があるためそこから歩くと便利です。',NULL,NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/37/','{lat:36.81622, lng:139.58751}','自然','VZkP30X6RHvvEb65imXkUD3fl2RzBv9f67NjWjr1.jpg','ya2nrxGhWto4gfRuqkynt5IDvGIL5r1taH7V2MxQ.jpg','2021-12-07 06:58:51','2021-12-07 06:58:51'),(22,'前日光ハイランドロッジ','夕刻の空のグラデーション。夜に出会える野生生物。自分を覆いつくす無数の星々。そして早朝、澄んだ空気に浮かび上がる数百km彼方の山並みの絶景を味わうことができる宿泊施設、前日光ハイランドロッジ。横根高原のハイキングの基点としてもぴったりで、横根山および井戸湿原の周遊コースで四季折々のすばらしい景色を楽しめます。また、日帰り入浴やバーベキューや食事、休憩もでき、売店もあります。','栃木県鹿沼市粕尾1936','0288-93-4141','10:00～16:00','12月～4月中旬 （4月下旬～11月30日営業）','https://www.tochinavi.net/spot/home/?id=9651','{lat:36.62320, lng:139.51598}','建物','d4eSD7GEJ2P2yregjjux0C5IEI0aOknAqZ2BlF7z.jpg','Rwz9pwbvGzsfNGBdnWrFLcrZXXFV6J117wVbEN2F.jpg','2021-12-07 07:01:27','2021-12-07 07:01:27'),(23,'大笹牧場','四季折々の自然と絶品グルメが味わえる雲海と天空のリゾート牧場大笹牧場は、面積362haの全国屈指の広さを誇っており、新鮮な牛乳を使ってアイスクリーム作り体験などができます。アイスクリームは販売もしております。\r\nサイクルラックも置いているため気軽に寄ることが出来ます。','栃木県日光市瀬尾字大笹原3405','0288-97-1116','8:45～16:45 (冬季 9:30～16:15)',NULL,'https://www.nikko-ozasa.jp/','{lat:36.84115, lng:139.61718}','建物','BgfzA9xVIQLtxi91Vl0k9pKA3VZSuLC2L0dTPDfP.jpg','rGo4i8DWRFnnOVBOO3pFKWWLoiwVMxPNQgsmvZjG.jpg','2021-12-07 07:03:26','2021-12-07 07:03:26'),(24,'古峯神社','栃木県の古峯ヶ原（こぶがはら）にある500ヘクタールの広大な領域を持つ古峯神社。御祭神の使者である天狗は災厄を除災するとして古くから信仰を集めており、別名「天狗の社」とも呼ばれ、境内では大小様々な天狗さまに逢うことが出来ます。また、「天狗の宿」としても知られ、厳粛に行われる1番祈祷を受けることにより、より一層の御加護を賜ることが出来るそう。','栃木県鹿沼市草久3027','0289-74-2111','8:00〜17:00',NULL,'http://www.furumine-jinjya.jp/','{lat:36.65505, lng:139.52650}','建物','iDvtL3AKkSd8ySe9ey8psgRXR2GnjYROmvr2Yipj.jpg','RbeyhIPqiRdjk9sZslaipcsdztpM0csYsigMBCjt.jpg','2021-12-07 07:04:32','2021-12-07 07:04:32'),(25,'日光杉並木街道','日光杉並木街道は、日光街道・例幣使街道・会津西街道の３つの街道に渡り、全長37ｋｍもの道の両側に１万2126本もの杉の木がうっそうとそびえ立つ並木道です。\r\n高さ約30ｍにも成長したこの杉並木は現在日本で唯一、特別史跡と特別天然記念物の二重指定を受けており、平成4年には「世界一長い並木道」としてギネスブックに認定されています。\r\n日光東照宮まで行くハイキングコースが整備されており、直線道路になっているためその自然の中を風を切って自転車で走るのも気持ちいいです。','栃木県日光市瀬川地内　杉並木公園他',NULL,NULL,NULL,'http://www.nikko-kankou.org/spot/36/','{lat:36.68825, lng:139.71774}','自然','jj5dxY2FybjZ0o2OoTPMLHd6BqrBE0XISiB0c6DC.jpg','XzCxKXzN2WzQ6x8uZ3U6vicmBfYFwikbZekv07l5.jpg','2021-12-07 07:05:41','2021-12-07 07:05:41'),(26,'川俣大橋','湯西川から川俣温泉に向かう途中にある橋で、川俣ダムに架かっています。\r\n両側が強固な岩山で、川俣湖をつり橋で越えていくフォルムは、さながらゴールデンゲートブリッジのようできれいです。また、橋の上からは、川俣湖の景色をきれいに見ることができます。\r\n湯西川側には駐車スペースがありますのでそこから歩いて写真などを収める人が多くいます。','栃木県日光市川俣',NULL,NULL,NULL,'https://www.tochigiji.or.jp/s/spot/18966/','{lat:36.87742, lng:139.50105}','自然','wSZlvyOYSqMq1iM8iCyPhAuwOFXy4kYBs0hivUOF.jpg','9aytzUeEW29UrHi2C3M4H9dhjhrG68WAxSPMohRo.jpg','2021-12-07 07:07:03','2021-12-07 07:07:03'),(27,'川治ダム','川治ダムは、利根川総合開発の一環として鬼怒川に計画されたダムです。洪水による下流河川のはんらんを防ぐための洪水調節、農業用水や都市用水の供給を目的につくられました。堤の高さが140mと鬼怒川にある数あるダムの中でも一番高く、6つの放水口から放流してる時の様子は圧巻の一言です。放流していない状態でもそのダムの大きさに心奪われると思います。','栃木県日光市川治温泉川治293-3',NULL,NULL,NULL,'https://www.ktr.mlit.go.jp/kinudamu/kinudamu_index005.html','{lat:36.89911, lng:139.69292}','ダム','iDGNhML67QCUPnj0ete8aDPq95W8qpmXmNh3CHoV.jpg','DRW03tNgx26dERimVFKBHB0LNxgph1anuzDmX1Ev.jpg','2021-12-07 07:08:08','2021-12-07 07:08:08'),(28,'五十里ダム','五十里ダムは、鬼怒川の支川である男鹿川に、昭和31年、当時日本で最も高いダム(112m)として完成しました。洪水による下流河川のはんらんを防ぐための洪水調節、農業用水の供給、発電を目的としてつくられた、重力式コンクリートダムです。\r\n山に囲まれた地形に位置し、山の景色が湖面に反射して見えた時のその景色は幻想的な気分になります。','栃木県日光市川治温泉川治',NULL,NULL,NULL,'https://www.ktr.mlit.go.jp/kinudamu/kinudamu_index003.html','{lat:36.90307, lng:139.70580}','ダム','ZHNSaV0S7hHWhxMWZ4zwDA7tItVaGpV5RS057Gkr.jpg','kPx9HhenXSjbtRdUSMhkd7CzgwJIoWJ2zV1XrF7r.jpg','2021-12-07 07:08:57','2021-12-07 07:08:57'),(29,'足尾駅','かの有名な足尾銅山を観光出来る渡良瀬渓谷鉄道の駅の一つ、足尾駅。構内には朽ちてしまった古い車両が展示されており、\r\n時の流れが止まったようなノスタルジックで魅力的な駅です。また、1両だけの列車が運行しており、自然に溶け込むかのような色合いをしていることから、より田舎な雰囲気を満喫出来ます。','栃木県日光市足尾町掛水6',NULL,NULL,NULL,NULL,'{lat:36.64180, lng:139.44797}','建物','Kjnh6g8XQ1RMRjW3g9jdAOP5D5VHkG6nmuAVzWvh.jpg','D3t8XLQu16EzK8UJJDrgSrnEQSac3wuMIPs3IkCR.jpg','2021-12-07 07:09:47','2021-12-07 07:09:47');
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

-- Dump completed on 2021-12-07  7:45:36
