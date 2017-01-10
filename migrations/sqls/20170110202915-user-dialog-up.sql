CREATE TABLE `AnimalDialog` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`animalId` int(11) NOT NULL,
`dialogId` int(11) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `animal_dialog` (`animalId`, `dialogId`),
CONSTRAINT `animalAnimalDialog`
  FOREIGN KEY (`animalId`)
  REFERENCES `Animal` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
CONSTRAINT `dialogAnimalDialog`
  FOREIGN KEY (`dialogId`)
  REFERENCES `Dialog` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION
);
