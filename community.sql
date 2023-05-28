-- muluck.community definition

CREATE TABLE `community` (
  `community_no` int(11) NOT NULL DEFAULT '0',
  `community_category` varchar(200) NOT NULL,
  PRIMARY KEY (`community_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- muluck.bbs definition

CREATE TABLE `bbs` (
  `bbs_no` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_title` varchar(200) NOT NULL,
  `bbs_content` text NOT NULL,
  `bbs_img` varchar(200) DEFAULT NULL,
  `community_no` int(11) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`bbs_no`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- muluck.reply definition

CREATE TABLE `reply` (
  `reply_no` int(11) NOT NULL AUTO_INCREMENT,
  `reply_content` varchar(200) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`reply_no`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- muluck.heart definition

CREATE TABLE `heart` (
  `heart_no` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_no` int(11) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`heart_no`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

-- muluck.bookmark definition

CREATE TABLE `bookmark` (
  `bookmark_no` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_no` int(11) NOT NULL,
  `member_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookmark_no`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

-- muluck.follow definition

CREATE TABLE `follow` (
  `follow_no` int(11) NOT NULL AUTO_INCREMENT,
  `follower_user` int(11) DEFAULT NULL,
  `following_user` int(11) DEFAULT NULL,
  `follow_date` date DEFAULT NULL,
  PRIMARY KEY (`follow_no`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;