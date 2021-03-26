SET foreign_key_checks = 0;

-- Add new affiliations to REF Table
UPDATE `appiandb`.`GID_REF_reference` SET `isActive` = '0', `updatedOn` = UTC_TIMESTAMP(), `updatedBy` = 'U69227703' WHERE (`refId` = '103');
UPDATE `appiandb`.`GID_REF_reference` SET `isActive` = '0', `updatedOn` = UTC_TIMESTAMP(), `updatedBy` = 'U69227703' WHERE (`refId` = '101');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('106', 'affiliation', 'Vendor / Contractor', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('107', 'affiliation', 'ROTC', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('108', 'affiliation', 'INTO', '1', UTC_TIMESTAMP(), 'U69227703');
REPLACE INTO `appiandb`.`GID_REF_reference` (`refId`, `refType`, `refValue`, `isActive`, `createdOn`, `createdBy`) VALUES ('109', 'affiliation', 'Research-Related', '1', UTC_TIMESTAMP(), 'U69227703');


-- Create Relationship Mapping Audit History table

CREATE TABLE IF NOT EXISTS `appiandb`.`GID_relationshipMappingAuditHistory` (
  `relationshipMappingAuditHistoryId` INT(11) NOT NULL AUTO_INCREMENT,
  `affiliation` INT(11) NULL,
  `actionPerformed` INT(11) NULL,
  `performedOn` DATETIME NULL,
  `performedBy` VARCHAR(9) NULL,
  `isVisible` TINYINT(1) NULL,
  `changeDesc` VARCHAR(255) NULL,
  PRIMARY KEY (`relationshipMappingAuditHistoryId`));

  -- Add new column "routedRequest" 
ALTER TABLE `appiandb`.`GID_request` 
ADD COLUMN `routedRequest` TINYINT(1) NULL DEFAULT 0 AFTER `outsidePrimeGlobalDept`;