CREATE TABLE `Animal` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(512) DEFAULT NULL,
`phone` varchar(512) DEFAULT NULL,
`desc` text,
`realm` varchar(512) DEFAULT NULL,
`username` varchar(512) DEFAULT NULL,
`password` varchar(512) DEFAULT NULL,
`credentials` text,
`challenges` text,
`email` varchar(512) DEFAULT NULL,
`emailVerified` tinyint(1) DEFAULT NULL,
`verificationToken` varchar(512) DEFAULT NULL,
`status` varchar(512) DEFAULT NULL,
`created` datetime DEFAULT NULL,
`lastUpdated` datetime DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `Role` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(512) DEFAULT NULL,
`description` varchar(512) DEFAULT NULL,
`created` datetime DEFAULT NULL,
`modified` datetime DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `RoleMapping` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`principalType` varchar(512) DEFAULT 'User',
`principalId` varchar(512) DEFAULT NULL,
`roleId` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `AccessToken` (
`id` varchar(255) NOT NULL,
`ttl` int(11) DEFAULT NULL,
`created` datetime DEFAULT NULL,
`userId` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB;
CREATE TABLE `ACL` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`model` varchar(512) DEFAULT NULL,
`property` varchar(512) DEFAULT NULL,
`accessType` varchar(512) DEFAULT NULL,
`permission` varchar(512) DEFAULT NULL,
`principalType` varchar(512) DEFAULT NULL,
`principalId` varchar(512) DEFAULT NULL,
PRIMARY KEY (`id`)
);
/* Replace with your SQL commands */
