-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl3966602
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl3966602`
--

/*!40000 DROP DATABASE IF EXISTS `cl3966602`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl3966602` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl3966602`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1707988717940.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyouxigonglve`
--

DROP TABLE IF EXISTS `discussyouxigonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyouxigonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏攻略评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyouxigonglve`
--

LOCK TABLES `discussyouxigonglve` WRITE;
/*!40000 ALTER TABLE `discussyouxigonglve` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussyouxigonglve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-02-15 09:10:37','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"游戏攻略\",\"menuJump\":\"列表\",\"tableName\":\"youxigonglve\"}],\"fontClass\":\"icon-common18\",\"menu\":\"游戏攻略管理\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"游戏资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common24\",\"menu\":\"旅游资讯管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"游戏分类\",\"menuJump\":\"列表\",\"tableName\":\"youxifenlei\"}],\"fontClass\":\"icon-common23\",\"menu\":\"游戏分类管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common26\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee2b;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"游戏攻略\",\"menuJump\":\"列表\",\"tableName\":\"youxigonglve\"}],\"fontClass\":\"icon-common18\",\"menu\":\"游戏攻略管理\",\"unicode\":\"&#xedff;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707988696720 DEFAULT CHARSET=utf8 COMMENT='游戏资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (41,'2024-02-15 09:10:37','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(42,'2024-02-15 09:10:37','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(43,'2024-02-15 09:10:37','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(44,'2024-02-15 09:10:37','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(45,'2024-02-15 09:10:37','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(46,'2024-02-15 09:10:37','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1707988696719,'2024-02-15 09:18:16','新游戏','简述','file/1707988690338.jpg','<p>详情</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707988536849 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1707988529916,'2024-02-15 09:15:29',65,'youxigonglve','游戏名称5','file/youxigonglveYouxitupian5.jpg','21',NULL,NULL,1707988457078),(1707988536848,'2024-02-15 09:15:36',66,'youxigonglve','游戏名称6','file/youxigonglveYouxitupian6.jpg','21',NULL,NULL,1707988457078);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1707988457078,'1','yonghu','用户','m6csee4npqibf0sxe2lkjnfvjbspb7yb','2024-02-15 09:14:20','2024-02-15 10:16:59'),(2,1,'admin','users','管理员','dpapolkfgntpnhqyfhgoowi38u5hrqz1','2024-02-15 09:16:00','2024-02-15 10:17:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-02-15 09:10:37','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1707988457079 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-02-15 09:10:37','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(32,'2024-02-15 09:10:37','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(33,'2024-02-15 09:10:37','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(34,'2024-02-15 09:10:37','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(35,'2024-02-15 09:10:37','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(36,'2024-02-15 09:10:37','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116'),(1707988457078,'2024-02-15 09:14:17','1','1','1','file/1707988450854.jpeg','女','13512312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxifenlei`
--

DROP TABLE IF EXISTS `youxifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youxifenlei` varchar(200) NOT NULL COMMENT '游戏分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youxifenlei` (`youxifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1707988706095 DEFAULT CHARSET=utf8 COMMENT='游戏分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxifenlei`
--

LOCK TABLES `youxifenlei` WRITE;
/*!40000 ALTER TABLE `youxifenlei` DISABLE KEYS */;
INSERT INTO `youxifenlei` VALUES (51,'2024-02-15 09:10:37','游戏分类1'),(52,'2024-02-15 09:10:37','游戏分类2'),(53,'2024-02-15 09:10:37','游戏分类3'),(54,'2024-02-15 09:10:37','游戏分类4'),(55,'2024-02-15 09:10:37','游戏分类5'),(56,'2024-02-15 09:10:37','游戏分类6'),(1707988706094,'2024-02-15 09:18:25','益智类');
/*!40000 ALTER TABLE `youxifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxigonglve`
--

DROP TABLE IF EXISTS `youxigonglve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxigonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) DEFAULT NULL COMMENT '游戏分类',
  `youxitupian` longtext COMMENT '游戏图片',
  `youxipingtai` varchar(200) DEFAULT NULL COMMENT '游戏平台',
  `youxibeijing` varchar(200) DEFAULT NULL COMMENT '游戏背景',
  `shipin` longtext COMMENT '视频',
  `jiaosebanyan` varchar(200) DEFAULT NULL COMMENT '角色扮演',
  `jiaosejieshao` varchar(200) DEFAULT NULL COMMENT '角色介绍',
  `jiqiaogonglve` longtext COMMENT '技巧攻略',
  `liuchengfenxi` longtext COMMENT '流程分析',
  `guanjiandiantishi` longtext COMMENT '关键点提示',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707988515460 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxigonglve`
--

LOCK TABLES `youxigonglve` WRITE;
/*!40000 ALTER TABLE `youxigonglve` DISABLE KEYS */;
INSERT INTO `youxigonglve` VALUES (61,'2024-02-15 09:10:37','游戏名称1','游戏分类1','file/youxigonglveYouxitupian1.jpg,file/youxigonglveYouxitupian2.jpg,file/youxigonglveYouxitupian3.jpg','PC','游戏背景1','','角色扮演1','角色介绍1','技巧攻略1','流程分析1','关键点提示1','2024-02-15','用户账号1','用户姓名1',1,1,1),(62,'2024-02-15 09:10:37','游戏名称2','游戏分类2','file/youxigonglveYouxitupian2.jpg,file/youxigonglveYouxitupian3.jpg,file/youxigonglveYouxitupian4.jpg','PC','游戏背景2','','角色扮演2','角色介绍2','技巧攻略2','流程分析2','关键点提示2','2024-02-15','用户账号2','用户姓名2',2,2,2),(63,'2024-02-15 09:10:37','游戏名称3','游戏分类3','file/youxigonglveYouxitupian3.jpg,file/youxigonglveYouxitupian4.jpg,file/youxigonglveYouxitupian5.jpg','PC','游戏背景3','','角色扮演3','角色介绍3','技巧攻略3','流程分析3','关键点提示3','2024-02-15','用户账号3','用户姓名3',3,3,3),(64,'2024-02-15 09:10:37','游戏名称4','游戏分类4','file/youxigonglveYouxitupian4.jpg,file/youxigonglveYouxitupian5.jpg,file/youxigonglveYouxitupian6.jpg','PC','游戏背景4','','角色扮演4','角色介绍4','技巧攻略4','流程分析4','关键点提示4','2024-02-15','用户账号4','用户姓名4',4,4,4),(65,'2024-02-15 09:10:37','游戏名称5','游戏分类5','file/youxigonglveYouxitupian5.jpg,file/youxigonglveYouxitupian6.jpg,file/youxigonglveYouxitupian7.jpg','PC','游戏背景5','','角色扮演5','角色介绍5','技巧攻略5','流程分析5','关键点提示5','2024-02-15','用户账号5','用户姓名5',6,5,5),(66,'2024-02-15 09:10:37','游戏名称6','游戏分类6','file/youxigonglveYouxitupian6.jpg,file/youxigonglveYouxitupian7.jpg,file/youxigonglveYouxitupian8.jpg','PC','游戏背景6','','角色扮演6','角色介绍6','技巧攻略6','流程分析6','关键点提示6','2024-02-15','用户账号6','用户姓名6',7,6,6),(1707988515459,'2024-02-15 09:15:15','王者','游戏分类1','file/1707988476569.jpg','移动设备','背景','file/1707988630984.mp4','后裔','介绍','技巧','<p>详情</p>','<p>关键点</p>','2024-02-15','1','1',0,0,0);
/*!40000 ALTER TABLE `youxigonglve` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 12:19:17
