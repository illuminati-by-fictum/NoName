CREATE TABLE `Message` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`message` varchar(512) DEFAULT NULL,
`animalId` int(11) NOT NULL,
`dialogId` int(11) NOT NULL,
`time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (`id`),
CONSTRAINT `animalMessage`
  FOREIGN KEY (`animalId`)
  REFERENCES `Animal` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
CONSTRAINT `dialogMessage`
  FOREIGN KEY (`dialogId`)
  REFERENCES `Dialog` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION
);
