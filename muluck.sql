-- muluck.bbs definition

CREATE TABLE `bbs` (
  `bbs_no` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_title` varchar(200) NOT NULL,
  `bbs_content` text NOT NULL,
  `bbs_img` varchar(200) DEFAULT NULL,
  `member_no` int(11) NOT NULL,
  `community_no` int(11) NOT NULL,
  PRIMARY KEY (`bbs_no`),
  KEY `bbs_FK` (`community_no`),
  KEY `bbs_FK_1` (`member_no`),
  CONSTRAINT `bbs_FK` FOREIGN KEY (`community_no`) REFERENCES `community` (`community_no`),
  CONSTRAINT `bbs_FK_1` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.bookmark definition

CREATE TABLE `bookmark` (
  `bookmark_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`bookmark_no`),
  KEY `bookmark_FK` (`bbs_no`),
  KEY `bookmark_FK_1` (`member_no`),
  CONSTRAINT `bookmark_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`),
  CONSTRAINT `bookmark_FK_1` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.community definition

CREATE TABLE `community` (
  `community_no` int(11) NOT NULL,
  `community_category` varchar(200) NOT NULL,
  PRIMARY KEY (`community_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.follow definition

CREATE TABLE `follow` (
  `follow_no` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` varchar(200) NOT NULL,
  `following_id` varchar(200) NOT NULL,
  `follow_management` tinyint(1) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`follow_no`),
  KEY `follow_FK` (`member_no`),
  CONSTRAINT `follow_FK` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.heart definition

CREATE TABLE `heart` (
  `heart_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`heart_no`),
  KEY `heart_FK` (`bbs_no`),
  KEY `heart_FK_1` (`member_no`),
  CONSTRAINT `heart_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`),
  CONSTRAINT `heart_FK_1` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.`member` definition

CREATE TABLE `member` (
  `member_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(100) NOT NULL,
  `member_pw` varchar(100) NOT NULL,
  `member_email` varchar(100) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_tel` int(11) NOT NULL,
  `member_nickname` varchar(100) NOT NULL,
  `member_img` varchar(100) DEFAULT NULL,
  `member_gender` varchar(100) DEFAULT NULL,
  `member_ageRange` varchar(100) DEFAULT NULL,
  `member_management` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_no`),
  UNIQUE KEY `member_un` (`member_id`,`member_email`,`member_tel`,`member_nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.memberactivity definition

CREATE TABLE `memberactivity` (
  `activity_no` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_no` int(11) DEFAULT NULL,
  `reply_no` int(11) DEFAULT NULL,
  `heart_no` int(11) DEFAULT NULL,
  `bookmark_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`activity_no`),
  KEY `memberactivity_FK_1` (`reply_no`),
  KEY `memberactivity_FK_2` (`heart_no`),
  KEY `memberactivity_FK` (`bbs_no`),
  KEY `memberactivity_FK_3` (`bookmark_no`),
  CONSTRAINT `memberactivity_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`),
  CONSTRAINT `memberactivity_FK_1` FOREIGN KEY (`reply_no`) REFERENCES `reply` (`reply_no`),
  CONSTRAINT `memberactivity_FK_2` FOREIGN KEY (`heart_no`) REFERENCES `heart` (`heart_no`),
  CONSTRAINT `memberactivity_FK_3` FOREIGN KEY (`bookmark_no`) REFERENCES `bookmark` (`bookmark_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.reply definition

CREATE TABLE `reply` (
  `reply_no` int(11) NOT NULL AUTO_INCREMENT,
  `reply_content` varchar(200) NOT NULL,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`reply_no`),
  KEY `reply_FK` (`bbs_no`),
  KEY `reply_FK_1` (`member_no`),
  CONSTRAINT `reply_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`),
  CONSTRAINT `reply_FK_1` FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;