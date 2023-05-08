-- muluck.community definition

CREATE TABLE `community` (
  `community_no` int(11) NOT NULL,
  `community_category` varchar(200) NOT NULL,
  PRIMARY KEY (`community_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  CONSTRAINT `bbs_FK` FOREIGN KEY (`community_no`) REFERENCES `community` (`community_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.reply definition

CREATE TABLE `reply` (
  `reply_no` int(11) NOT NULL AUTO_INCREMENT,
  `reply_` varchar(200) NOT NULL,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`reply_no`),
  KEY `reply_FK` (`bbs_no`),
  CONSTRAINT `reply_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.heart definition

CREATE TABLE `heart` (
  `heart_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`heart_no`),
  KEY `heart_FK` (`bbs_no`),
  CONSTRAINT `heart_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.bookmark definition

CREATE TABLE `bookmark` (
  `bookmark_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_no` int(11) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  PRIMARY KEY (`bookmark_no`),
  KEY `bookmark_FK` (`bbs_no`),
  CONSTRAINT `bookmark_FK` FOREIGN KEY (`bbs_no`) REFERENCES `bbs` (`bbs_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.follow definition

CREATE TABLE `follow` (
  `follow_no` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` varchar(200) NOT NULL,
  `following_id` varchar(200) NOT NULL,
  `follow_management` tinyint(1) NOT NULL,
  PRIMARY KEY (`follow_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;