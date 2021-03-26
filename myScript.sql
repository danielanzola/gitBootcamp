SET foreign_key_checks = 0;

-- Add new affiliations to REF Table
UPDATE `appiandb`.`GID_REF_reference` SET `isActive` = '0', `updatedOn` = UTC_TIMESTAMP(), `updatedBy` = 'U69227703' WHERE (`refId` = '103');
UPDATE `appiandb`.`GID_REF_reference` SET `isActive` = '0', `updatedOn` = UTC_TIMESTAMP(), `updatedBy` = 'U69227703' WHERE (`refId` = '101');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('106', 'affiliation', 'Vendor / Contractor', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('107', 'affiliation', 'ROTC', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('108', 'affiliation', 'INTO', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('109', 'affiliation', 'Research-Related', '1', UTC_TIMESTAMP(), 'U69227703');

-- Create Relationship Mapping table
CREATE TABLE IF NOT EXISTS `appiandb`.`GID_relationshipMapping` (
  `relationshipMappingId` INT(11) NOT NULL AUTO_INCREMENT,
  `affiliation` INT(11) NULL,
  `collegeCode` VARCHAR(9) NULL,
  `globalDeptId` INT(11) NULL,
  `globalDeptDesc` VARCHAR(45) NULL,
  `isActive` TINYINT(1) NULL,
  `createdOn` DATETIME NULL,
  `createdBy` VARCHAR(9) NULL,
  `updatedOn` DATETIME NULL,
  `updatedBy` VARCHAR(9) NULL,
  PRIMARY KEY (`relationshipMappingId`),
  CONSTRAINT  `FK_GID_relationshipMapping_affiliation`
  FOREIGN KEY (`affiliation`)
  REFERENCES `appiandb`.`GID_REF_reference` (`refId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);