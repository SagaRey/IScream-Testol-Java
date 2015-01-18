/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : testol

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-03-13 13:56:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cno` varchar(16) NOT NULL,
  `operate` varchar(16) NOT NULL,
  `tqno` int(11) NOT NULL,
  `optionA` varchar(255) DEFAULT NULL,
  `optionB` varchar(255) DEFAULT NULL,
  `optionC` varchar(255) DEFAULT NULL,
  `optionD` varchar(255) DEFAULT NULL,
  `optionE` varchar(255) DEFAULT NULL,
  `optionF` varchar(255) DEFAULT NULL,
  `optionG` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventcno` (`cno`),
  CONSTRAINT `eventcno` FOREIGN KEY (`cno`) REFERENCES `testcard` (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES ('1', '2014-03-01 21:05:27', '13123100010101', 'create', '1', 'A', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('2', '2014-03-01 21:06:21', '13123100010101', 'create', '2', 'B', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('3', '2014-03-04 21:07:17', '13123100010101', 'create', '3', 'C', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('4', '2014-03-04 21:09:07', '13123100010101', 'create', '4', 'D', null, null, null, null, null, '1', '10');
INSERT INTO `event` VALUES ('5', '2014-03-04 21:09:28', '13123100010101', 'create', '5', 'D', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('6', '2014-03-04 21:09:46', '13123100010101', 'create', '6', 'A', 'C', null, null, null, null, '2', '0');
INSERT INTO `event` VALUES ('7', '2014-03-04 21:10:08', '13123100010101', 'create', '7', 'B', 'C', null, null, null, null, '2', '0');
INSERT INTO `event` VALUES ('8', '2014-03-04 21:10:36', '13123100010101', 'craete', '8', 'B', 'C', 'D', null, null, null, '3', '0');
INSERT INTO `event` VALUES ('9', '2014-03-04 21:10:54', '13123100010101', 'create', '9', null, null, null, null, null, null, '4', '0');
INSERT INTO `event` VALUES ('10', '2014-03-04 21:11:06', '13123100010101', 'create', '10', null, null, null, null, null, null, '3', '0');
INSERT INTO `event` VALUES ('12', '2014-03-05 00:26:18', '13123100010101', 'final', '1', 'A', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('13', '2014-03-05 00:37:46', '13123100010101', 'final', '2', 'B', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('14', '2014-03-05 00:38:30', '13123100010101', 'final', '3', 'C', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('15', '2014-03-05 00:38:45', '13123100010101', 'final', '4', 'D', null, null, null, null, null, '1', '10');
INSERT INTO `event` VALUES ('16', '2014-03-05 00:39:16', '13123100010101', 'final', '5', 'D', null, null, null, null, null, '1', '0');
INSERT INTO `event` VALUES ('17', '2014-03-05 00:39:33', '13123100010101', 'final', '6', 'A', 'C', null, null, null, null, '2', '0');
INSERT INTO `event` VALUES ('18', '2014-03-05 00:39:54', '13123100010101', 'final', '7', 'B', 'C', null, null, null, null, '2', '0');
INSERT INTO `event` VALUES ('19', '2014-03-05 00:40:43', '13123100010101', 'final', '8', 'B', 'C', 'D', null, null, null, '3', '0');
INSERT INTO `event` VALUES ('20', '2014-03-05 00:41:01', '13123100010101', 'final', '9', null, null, null, null, null, null, '4', '0');
INSERT INTO `event` VALUES ('21', '2014-03-05 00:41:15', '13123100010101', 'final', '10', null, null, null, null, null, null, '3', '0');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `managermid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qno` varchar(16) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `chapter` int(11) NOT NULL,
  `tid` varchar(16) NOT NULL,
  `knowledge1` varchar(32) DEFAULT NULL,
  `knowledge2` varchar(32) DEFAULT NULL,
  `knowledge3` varchar(32) DEFAULT NULL,
  `keyword1` varchar(32) DEFAULT NULL,
  `keyword2` varchar(32) DEFAULT NULL,
  `keyword3` varchar(32) DEFAULT NULL,
  `type` varchar(16) NOT NULL,
  `difficulty` int(16) NOT NULL,
  `point` int(16) NOT NULL,
  `question` varchar(1024) NOT NULL,
  `optionA` varchar(255) DEFAULT NULL,
  `optionB` varchar(255) DEFAULT NULL,
  `optionC` varchar(255) DEFAULT NULL,
  `optionD` varchar(255) DEFAULT NULL,
  `optionE` varchar(255) DEFAULT NULL,
  `optionF` varchar(255) DEFAULT NULL,
  `optionG` int(11) DEFAULT NULL,
  `optionH` varchar(255) DEFAULT NULL,
  `optionI` varchar(255) DEFAULT NULL,
  `optionJ` varchar(255) DEFAULT NULL,
  `optionK` varchar(255) DEFAULT NULL,
  `optionL` varchar(255) DEFAULT NULL,
  `optionM` varchar(255) DEFAULT NULL,
  `optionN` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qno` (`qno`),
  KEY `questiontid` (`tid`),
  CONSTRAINT `questiontid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '2014-03-06 10:12:25', '10130210', '马克思主义', '1', '11610001', '马克思主义', null, null, '理论品质', null, null, '单选', '8', '10', '马克思主义的理论品质是？', '与时俱进', '自我批判', '批判与继承的统一', '不迷信权威', '', null, '4', 'C', '', null, null, null, null, '1');
INSERT INTO `question` VALUES ('2', '2014-03-06 10:12:27', '10130411', '马克思主义', '2', '11610001', '马克思主义', null, null, '科学社会主义', null, null, '单选', '9', '10', '在马克思主义理论体系中，科学社会主义是其( )', '核心内容', '理论基础', '指导原则', '前提条件', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('3', '2014-03-06 10:12:29', '10142512', '马克思主义', '3', '11610001', '马克思主义', null, null, '哲学', null, null, '单选', '8', '10', '哲学的基本问题是( )', '物质和意识的关系问题', '物质和运动的关系问题', '物质和时空的关系问题', '理论和实践的关系问题 ', null, null, '4', 'B', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('4', '2014-03-06 10:12:32', '10052513', '马克思主义', '4', '11610001', '马克思主义', null, null, '哲学', null, null, '单选', '9', '10', '从哲学上看，运动和静止的关系属于( )', '现象和本质的关系', '一般和个别的关系', '绝对和相对的关系', '抽象和具体的关系', null, null, '4', 'D', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('5', '2014-03-06 10:12:40', '10102544', '马克思主义', '5', '11610001', '马克思主义', null, null, '实践含义', null, null, '单选', '9', '10', '下列选项中，正确表述了实践含义的是( )', '实践是主体纯主观的精神性活动', '实践是主观创造客观世界的活动 ', '实践是主体应付外部环境的活动', '实践是主体改造和探索客体的社会性物质活动', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('6', '2014-03-06 10:12:42', '10095515', '马克思主义', '1', '11610001', '马克思主义', null, null, '主观能动性', null, null, '多选', '8', '10', '在客观规律面前，人的主观能动性表现在( )', '人可以创造规律 ', '人可以消灭规律 ', '人可以改变规律', '人可以认识和利用规律', '概念、\r\n\r\n判断、推理', null, '5', 'A', 'B', null, null, null, null, '2');
INSERT INTO `question` VALUES ('7', '2014-03-06 10:12:44', '10204516', '马克思主义', '3', '11610001', '马克思主义', null, null, '金无足赤', null, null, '多选', '8', '10', '“金无足赤，人无完人”这是一种( )', '相对主义观点', '辩证法观点', '形而上学观点', '折衷主义观点', '人可以改变规律 ', null, '5', 'A', 'B', 'C', null, null, null, '3');
INSERT INTO `question` VALUES ('8', '2014-03-06 10:12:46', '10010207', '马克思主义', '5', '11610001', '马克思主义', null, null, '感性认识', null, null, '多选', '8', '10', '感性认识的形式是( )', '感觉、知觉、表象', '分析和综合', '概念、判断、推理', '总结和概括', '相对主义观点', null, '5', 'C', 'D', null, null, null, null, '2');
INSERT INTO `question` VALUES ('9', '2014-03-05 00:19:33', '10050628', '马克思主义', '2', '11610001', '马克思主义', null, null, '马克思主义哲学', null, null, '简答', '10', '10', '马克思主义哲学是马克思恩格斯将黑格尔的辩证法和费尔巴哈的唯物主义结合在一起的产物。', null, null, null, null, null, null, null, '历史唯心主义观点', '唯意志论', '宿命论', '人际关系', '科学实验', null, '5');
INSERT INTO `question` VALUES ('10', '2014-03-05 00:19:35', '10102059', '马克思主义', '5', '11610001', '马克思主义', null, null, '马克思主义', null, null, '简答', '10', '10', '谈谈什么是马克思主义', null, null, null, null, null, null, null, '全体和部分', '共性和个性', '本质和现象', '内容和形式', '主要\r\n\r\n矛盾和次要矛盾', null, '5');
INSERT INTO `question` VALUES ('11', '2014-03-06 10:12:48', '20054530', '思想道德修养', '5', '11610002', '思想道德修养', null, null, '十一届三中全会', null, null, '单选', '8', '10', '党的十一届三中全会明确作出了把党和国家的工作重点转移到（   ）上来的战略决策。', '经济建设', '政治建设', '文化建设', '社会建\r\n\r\n设', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('12', '2014-03-06 10:12:50', '20142521', '思想道德修养', '3', '11610002', '思想道德修养', null, null, '无产阶级政党', null, null, '单选', '9', '10', '是无产阶级政党的根本组织原则()', '民主集中制', '经济建设', '议会选举制', '多党合作制\r\n        ', null, null, '4', 'B', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('13', '2014-03-06 10:12:51', '20124512', '思想道德修养', '2', '11610002', '思想道德修养', null, null, '改革', null, null, '单选', '8', '10', '我国改革的性质是', '社会主义制度的自我完善和发展', '改变社会主义基本制度', '国家利益', '主张一切国家一律平等', null, null, '4', 'A', '', null, null, null, null, '1');
INSERT INTO `question` VALUES ('14', '2014-03-06 10:12:54', '20154553', '思想道德修养', '1', '11610002', '思想道德修养', null, null, '两岸三通', null, null, '单选', '7', '10', '实现两岸和平统一的前提是()', '实现两岸三通', '坚持一个中国原则', '促进两岸关系良性互动', '人民代表大会', null, null, '4', 'C', '', null, null, null, null, '1');
INSERT INTO `question` VALUES ('15', '2014-03-06 10:12:53', '20040504', '思想道德修养', '3', '11610002', '思想道德修养', null, null, '生产总值', null, null, '单选', '6', '10', '我国人均国内生产总值到2020年力争比()', '2000年翻一番', '2000年翻两番', '2010年翻两番', '2010年翻三番', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('16', '2014-03-06 10:12:57', '20124555', '思想道德修养', '5', '11610002', '思想道德修养', null, null, '邓小平理论', null, null, '多选', '10', '10', '邓小平理论的历史发展经历了', '党的八大到党的十一届三中全会前的酝酿产生阶段\r\n ', '党的十一届三中全会到十二大的基本命题的提出阶段\r\n\r\n', '党的十二大到十三大的逐步展开和形成理论轮廓的阶段', '党的十三大到十五大的科学体系形成并最终确立指导地位的阶段', '党的七大到党的十一届三中全会前的酝酿产生\r\n\r\n阶段', null, '5', 'A', 'C', 'D', null, null, null, '3');
INSERT INTO `question` VALUES ('17', '2014-03-06 10:12:58', '20125456', '思想道德修养', '2', '11610002', '思想道德修养', null, null, '科学发展观', null, null, '多选', '10', '10', '科学发展观的基本要求是', '全面发展', '协调发展', '高速发展', '可持续发展', '不可持续发展', null, '5', 'B', 'C', 'D', null, null, null, '3');
INSERT INTO `question` VALUES ('18', '2014-03-06 10:12:56', '20154627', '思想道德修养', '3', '11610002', '思想道德修养', null, null, '社会主义', null, null, '多选', '9', '10', '社会主义的根本任务是发展生产力。这是因为，发展生产力是（）', '发挥社会主义制度优越性的需要', '巩固社会主义制度的需要', '社会主义本\r\n\r\n质的内在要求', '为实现共产主义奠定物质基础', '可持续发展', null, '5', 'A', 'D', null, null, null, null, '2');
INSERT INTO `question` VALUES ('19', '2014-03-06 10:13:02', '20134528', '思想道德修养', '5', '11610002', '思想道德修养', null, null, '执政能力', null, null, '简答', '8', '10', '.为什么说执政能力建设是党执政后的一项根本建设？', null, null, null, null, null, null, null, '城乡协调发展', '统筹区域协调发展', '统筹建设', '统筹发展', '统筹生产力', null, '5');
INSERT INTO `question` VALUES ('20', '2014-03-06 10:13:00', '20124539', '思想道德修养', '1', '11610002', '思想道德修养', null, null, '三个有利于', null, null, '简答', '7', '10', '简述“三个有利于标准。', null, null, null, null, null, null, null, '三个有利于', '生活水平', '得失成败标准', null, null, null, '3');
INSERT INTO `question` VALUES ('21', '2014-03-06 10:13:03', '30000111', '毛泽东思想', '1', '11610003', '毛泽东思想', null, null, '主要创立者', null, null, '单选', '6', '10', '毛泽东思想的主要创立者是( )', '毛泽东', '陈晓杰', '周恩来', '邓小平', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('22', '2014-03-06 10:13:06', '30000222', '毛泽东思想', '2', '11610003', '毛泽东', null, null, '马克思主义在中国具体化', null, null, '单选', '7', '10', '毛泽东第一次明确提出 \"使马克思主义在中国具体化\" 科学命题的会议是( ) ', '古田会议 ', '遵义会议 ', '中共六届六中全会 ', '中\r\n\r\n共六届七中全会 ', null, null, '4', 'C', null, '', null, null, null, '1');
INSERT INTO `question` VALUES ('23', '2014-03-06 10:13:22', '30000333', '毛泽东思想', '3', '11610003', '实事求是', null, null, '前提', null, null, '单选', '7', '10', '做到实事求是的基本前提是( )', '一切一切从原则出发 \r\n', '一切从实际出发', '认识与实践相统一', '主观与客观相统一', null, null, '4', 'B', '', null, null, null, null, '1');
INSERT INTO `question` VALUES ('24', '2014-03-06 10:13:21', '30000444', '毛泽东思想', '4', '11610003', '官僚资本主义', null, null, '革命对象', null, null, '单选', '8', '10', '毛泽东明确把官僚资本主义列为革命对象之一的论著是( )', '《中国革命和中国共产党》', '《论人民民主专政》', '《论联合政府》 ', '《在\r\n\r\n晋绥干部会议上的讲话》', null, null, '4', 'D', null, null, '', null, null, '1');
INSERT INTO `question` VALUES ('25', '2014-03-06 10:13:20', '30000555', '毛泽东思想', '5', '11610003', '新民主主义', null, null, '内容', null, null, '单选', '9', '10', '新民主主义革命的中心内容是( )', '没收封建地主阶级的土地归农民所有', '没收四大家族的垄断资本归新民主主义国家所有', '没收帝国主义在华财产归\r\n\r\n人民所有', '没收一切私有财产归全民所有', null, null, '4', 'A', null, null, null, null, null, '1');
INSERT INTO `question` VALUES ('26', '2014-03-06 10:13:18', '30001116', '毛泽东思想', '3', '11610003', '毛泽东思想', null, null, '科学含义', null, null, '多选', '9', '10', '毛泽东思想的科学含义是( )', '毛泽东思想是马克思列宁主义在中国的运用和发展 ', '毛泽东思想是被实践证明了的关于中国革命和建设的正确的\r\n\r\n理论原则和经验总结', '毛泽东思想是中国共产党集体智慧的结晶', '毛泽东思想是夺取中国革命胜利的理论武器', '毛泽东思想是中华民族团结振兴的精神支柱 ', null, '5', 'A', 'B', 'C', null, null, null, '3');
INSERT INTO `question` VALUES ('27', '2014-03-06 10:13:16', '30001217', '毛泽东思想', '4', '11610003', '红色政权', null, null, '发展条件', null, null, '多选', '9', '10', '中国的红色政权存在和发展的条件是( )', '政治经济发展的不平衡', '良好的群众基础 ', '向前发展的革命形势 ', '相当力量的正式红军的存在 ', '\r\n\r\n共产党的正确领导 ', null, '5', 'A', 'B', 'C', 'D', 'E', null, '5');
INSERT INTO `question` VALUES ('28', '2014-03-06 10:13:15', '30001318', '毛泽东思想', '5', '11610003', '人民民主专政', null, null, '主要特点', null, null, '多选', '9', '10', '我国人民民主专政的主要特点是( )', '民主与专政的相互结合', '衔接民主革命和社会主义革命两个革命阶段', '扩大了人民民主的范围 ', '扩\r\n\r\n大了对敌人专政的范围', '概念表述准确鲜明', null, '5', null, 'B', 'C', null, 'E', null, '3');
INSERT INTO `question` VALUES ('29', '2014-03-06 10:13:14', '30001419', '毛泽东思想', '5', '11610003', '民族区域自治', null, null, '优越性', null, null, '简答', '9', '10', '我国民族区域自治制度的优越性是什么？', null, null, null, null, null, null, null, '平等关系', '社会发展', '共同繁荣', null, null, null, '3');
INSERT INTO `question` VALUES ('30', '2014-03-06 10:13:12', '30001510', '毛泽东思想', '5', '11610003', '中国共产党', null, null, '历史意义', null, null, '简答', '9', '10', '中国共产党成立的伟大历史意义是什么？', null, null, null, null, null, null, null, '胜利发展', '与中国实际相结合', '客观可能性', null, null, null, '3');
INSERT INTO `question` VALUES ('31', '2014-03-13 12:20:54', '20122323', '思想道德修养', '3', '11610002', '新文化运动', null, null, '新文化运动', null, null, '简答', '6', '10', '中国新文化运动期间的两面旗帜是？', null, null, null, null, null, null, null, '民主', '科学', null, null, null, null, '2');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cno` varchar(16) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reportcno` (`cno`),
  CONSTRAINT `reportcno` FOREIGN KEY (`cno`) REFERENCES `testcard` (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('1', '13123100010101', '89');
INSERT INTO `report` VALUES ('2', '14020500020101', '77');
INSERT INTO `report` VALUES ('3', '14022700030101', '87');
INSERT INTO `report` VALUES ('4', '13123100010102', '67');
INSERT INTO `report` VALUES ('5', '14020500020102', '87');
INSERT INTO `report` VALUES ('6', '14022700030102', '98');
INSERT INTO `report` VALUES ('7', '13123100010103', '63');
INSERT INTO `report` VALUES ('8', '14020500020103', '81');
INSERT INTO `report` VALUES ('9', '14022700030103', '70');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(16) NOT NULL,
  `sname` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studentsid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1111610101', '程天爽', '111111');
INSERT INTO `student` VALUES ('2', '1111610102', '叶小梅', '123456');
INSERT INTO `student` VALUES ('3', '1111610103', '程羽蒙', '242424');
INSERT INTO `student` VALUES ('4', '1111610204', '李嘉华', '456789');
INSERT INTO `student` VALUES ('5', '1111610105', '赫本', '456963');
INSERT INTO `student` VALUES ('6', '1111610201', '陈小雨', '456123');
INSERT INTO `student` VALUES ('7', '1111610202', '吴泽楷', '222222');
INSERT INTO `student` VALUES ('8', '1111610203', '朱莉', '456128');
INSERT INTO `student` VALUES ('9', '1111610205', '胡宇阳', '458755');
INSERT INTO `student` VALUES ('10', '1111610206', '孙雨萌', '488858');
INSERT INTO `student` VALUES ('11', '1111610301', '陈邵琨', '451266');
INSERT INTO `student` VALUES ('12', '1111610302', '卡门', '453554');
INSERT INTO `student` VALUES ('13', '1111610303', '马凯', '456123');
INSERT INTO `student` VALUES ('14', '1111610304', '吕小布', '458796');
INSERT INTO `student` VALUES ('15', '1111610305', '耿花花', '123456');
INSERT INTO `student` VALUES ('16', '1111610401', '日月循', '456987');
INSERT INTO `student` VALUES ('17', '1111610402', '卡夫卡', '254698');
INSERT INTO `student` VALUES ('18', '1111610403', '袁术', '487569');
INSERT INTO `student` VALUES ('19', '1111610404', '卡萨帝', '154662');
INSERT INTO `student` VALUES ('20', '1111610405', '席慕容', '756888');
INSERT INTO `student` VALUES ('21', '1111610505', '徐志摩', 'xuzhimo');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(16) NOT NULL,
  `tname` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `subject` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teachertid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '11610001', '蔡晋民', '111111', '马克思主义');
INSERT INTO `teacher` VALUES ('2', '11610002', '于丽', '321456', '思想道德修养');
INSERT INTO `teacher` VALUES ('3', '11610003', '宋梅秋', '987654', '毛泽东思想');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tno` varchar(16) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `tid` varchar(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `difficulty` int(2) NOT NULL,
  `total` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtno` (`tno`),
  KEY `testtid` (`tid`),
  CONSTRAINT `testtid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '2013-12-31 00:00:00', '1312310001', '马克思主义', '11610001', '10', '6000', '5', '100');
INSERT INTO `test` VALUES ('2', '2014-02-05 00:00:00', '1402050002', '思想道德修养', '11610002', '10', '6000', '7', '100');
INSERT INTO `test` VALUES ('3', '2014-02-27 00:00:00', '1402270003', '毛泽东思想', '11610003', '10', '6000', '6', '100');

-- ----------------------------
-- Table structure for testcard
-- ----------------------------
DROP TABLE IF EXISTS `testcard`;
CREATE TABLE `testcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cno` varchar(16) NOT NULL,
  `sid` varchar(16) NOT NULL,
  `tno` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testcardcno` (`cno`),
  KEY `testcardsid` (`sid`),
  KEY `testcardtno` (`tno`),
  CONSTRAINT `testcardsid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `testcardtno` FOREIGN KEY (`tno`) REFERENCES `test` (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testcard
-- ----------------------------
INSERT INTO `testcard` VALUES ('1', '2014-03-01 00:00:00', '13123100010101', '1111610101', '1312310001');
INSERT INTO `testcard` VALUES ('2', '2014-03-01 00:00:00', '14020500020101', '1111610101', '1402050002');
INSERT INTO `testcard` VALUES ('3', '2014-03-02 00:00:00', '14022700030101', '1111610101', '1402270003');
INSERT INTO `testcard` VALUES ('4', '2014-03-01 00:00:00', '13123100010102', '1111610102', '1312310001');
INSERT INTO `testcard` VALUES ('5', '2014-03-01 00:00:00', '14020500020102', '1111610102', '1402050002');
INSERT INTO `testcard` VALUES ('6', '2014-03-02 00:00:00', '14022700030102', '1111610102', '1402270003');
INSERT INTO `testcard` VALUES ('7', '2014-03-01 00:00:00', '13123100010103', '1111610103', '1312310001');
INSERT INTO `testcard` VALUES ('8', '2014-03-01 00:00:00', '14020500020103', '1111610103', '1402050002');
INSERT INTO `testcard` VALUES ('9', '2014-03-02 00:00:00', '14022700030103', '1111610103', '1402270003');

-- ----------------------------
-- Table structure for ttoq
-- ----------------------------
DROP TABLE IF EXISTS `ttoq`;
CREATE TABLE `ttoq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(16) NOT NULL,
  `tqno` int(11) NOT NULL,
  `qno` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ttoqqno` (`qno`),
  KEY `ttoqtno` (`tno`),
  CONSTRAINT `ttoqqno` FOREIGN KEY (`qno`) REFERENCES `question` (`qno`),
  CONSTRAINT `ttoqtno` FOREIGN KEY (`tno`) REFERENCES `test` (`tno`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttoq
-- ----------------------------
INSERT INTO `ttoq` VALUES ('1', '1312310001', '1', '10130210');
INSERT INTO `ttoq` VALUES ('2', '1312310001', '2', '10130411');
INSERT INTO `ttoq` VALUES ('3', '1312310001', '3', '10142512');
INSERT INTO `ttoq` VALUES ('4', '1312310001', '4', '10052513');
INSERT INTO `ttoq` VALUES ('5', '1312310001', '5', '10102544');
INSERT INTO `ttoq` VALUES ('6', '1312310001', '6', '10095515');
INSERT INTO `ttoq` VALUES ('7', '1312310001', '7', '10204516');
INSERT INTO `ttoq` VALUES ('8', '1312310001', '8', '10010207');
INSERT INTO `ttoq` VALUES ('9', '1312310001', '9', '10050628');
INSERT INTO `ttoq` VALUES ('10', '1312310001', '10', '10102059');
INSERT INTO `ttoq` VALUES ('11', '1402050002', '1', '20054530');
INSERT INTO `ttoq` VALUES ('12', '1402050002', '2', '20142521');
INSERT INTO `ttoq` VALUES ('13', '1402050002', '3', '20124512');
INSERT INTO `ttoq` VALUES ('14', '1402050002', '4', '20154553');
INSERT INTO `ttoq` VALUES ('15', '1402050002', '5', '20040504');
INSERT INTO `ttoq` VALUES ('16', '1402050002', '6', '20124555');
INSERT INTO `ttoq` VALUES ('17', '1402050002', '7', '20125456');
INSERT INTO `ttoq` VALUES ('18', '1402050002', '8', '20154627');
INSERT INTO `ttoq` VALUES ('19', '1402050002', '9', '20134528');
INSERT INTO `ttoq` VALUES ('20', '1402050002', '10', '20124539');
INSERT INTO `ttoq` VALUES ('21', '1402270003', '1', '30000111');
INSERT INTO `ttoq` VALUES ('22', '1402270003', '2', '30000222');
INSERT INTO `ttoq` VALUES ('23', '1402270003', '3', '30000333');
INSERT INTO `ttoq` VALUES ('24', '1402270003', '4', '30000444');
INSERT INTO `ttoq` VALUES ('25', '1402270003', '5', '30000555');
INSERT INTO `ttoq` VALUES ('26', '1402270003', '6', '30001116');
INSERT INTO `ttoq` VALUES ('27', '1402270003', '7', '30001217');
INSERT INTO `ttoq` VALUES ('28', '1402270003', '8', '30001318');
INSERT INTO `ttoq` VALUES ('29', '1402270003', '9', '30001419');
INSERT INTO `ttoq` VALUES ('30', '1402270003', '10', '30001510');

-- ----------------------------
-- View structure for eventinfo
-- ----------------------------
DROP VIEW IF EXISTS `eventinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%`  VIEW `eventinfo` AS SELECT
`event`.id,
`event`.date,
`event`.cno,
`event`.operate,
question.type,
testcard.sid,
student.sname,
test.`subject`,
testcard.tno,
`event`.tqno,
ttoq.qno,
question.chapter,
question.point,
`event`.score,
`event`.optionA,
`event`.optionB,
`event`.optionC,
`event`.optionD,
`event`.optionE,
`event`.optionF,
`event`.optionG,
question.optionH,
question.optionI,
question.optionJ,
question.optionK,
question.optionL,
question.optionM,
question.optionN
FROM
`event`
INNER JOIN testcard ON `event`.cno = testcard.cno
INNER JOIN student ON testcard.sid = student.sid
INNER JOIN test ON testcard.tno = test.tno
INNER JOIN ttoq ON ttoq.tno = test.tno
INNER JOIN question ON ttoq.qno = question.qno ;

-- ----------------------------
-- View structure for questioninfo
-- ----------------------------
DROP VIEW IF EXISTS `questioninfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `questioninfo` AS SELECT

question.id,

question.qno,

question.`subject`,

question.chapter,

question.tid,

teacher.tname,
question.question,
question.difficulty,

question.point,

question.knowledge1,

question.knowledge2,

question.knowledge3,

question.keyword1,

question.keyword2,

question.keyword3,
question.type,

question.optionA,

question.optionB,

question.optionC,

question.optionD,

question.optionE,

question.optionF,

question.optionG,

question.optionH,

question.optionI,

question.optionJ,

question.optionK,

question.optionL,

question.optionM,

question.optionN,

question.date

FROM

question

INNER JOIN teacher ON question.tid = teacher.tid ;

-- ----------------------------
-- View structure for reportinfo
-- ----------------------------
DROP VIEW IF EXISTS `reportinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `reportinfo` AS SELECT
report.id,
report.cno,
testcard.sid,
student.sname,
testcard.date,
testcard.tno,
test.`subject`,
test.difficulty,
report.score,
test.total
FROM
	report

INNER JOIN testcard ON report.cno = testcard.cno
INNER JOIN student ON testcard.sid = student.sid
INNER JOIN test ON testcard.tno = test.tno ;

-- ----------------------------
-- View structure for teacherinfo
-- ----------------------------
DROP VIEW IF EXISTS `teacherinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `teacherinfo` AS SELECT
teacher.id,
teacher.tid,
teacher.tname,
test.tno,
teacher.`subject`,
question.qno,
question.type,
question.chapter,
question.difficulty
FROM
teacher
INNER JOIN test ON test.tid = teacher.tid
INNER JOIN question ON question.tid = teacher.tid ;

-- ----------------------------
-- View structure for testcardinfo
-- ----------------------------
DROP VIEW IF EXISTS `testcardinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `testcardinfo` AS SELECT
testcard.id,
testcard.cno,
testcard.sid,
student.sname,
testcard.tno,
test.`subject`,
test.difficulty,
test.quantity,
test.duration,
test.total,
testcard.date
FROM
testcard
INNER JOIN student ON testcard.sid = student.sid
INNER JOIN test ON testcard.tno = test.tno ;

-- ----------------------------
-- View structure for testinfo
-- ----------------------------
DROP VIEW IF EXISTS `testinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `testinfo` AS SELECT

test.id,

test.tno,

test.tid,

teacher.tname,

test.`subject`,
test.difficulty,
test.quantity,

test.duration,

test.total,

test.date

FROM

test

INNER JOIN teacher ON test.tid = teacher.tid ;

-- ----------------------------
-- View structure for ttoqinfo
-- ----------------------------
DROP VIEW IF EXISTS `ttoqinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%`  VIEW `ttoqinfo` AS SELECT
ttoq.id,
ttoq.tno,
ttoq.tqno,
ttoq.qno,
question.tid,
question.question,
question.`subject`,
question.chapter,
question.difficulty,
question.point,
question.knowledge1,
question.knowledge2,
question.knowledge3,
question.keyword1,
question.keyword2,
question.keyword3,
question.type,
question.optionA,
question.optionB,
question.optionC,
question.optionD,
question.optionE,
question.optionF,
question.optionG,
question.optionH,
question.optionI,
question.optionJ,
question.optionK,
question.optionL,
question.optionM,
question.optionN
FROM
ttoq
INNER JOIN question ON ttoq.qno = question.qno ;
