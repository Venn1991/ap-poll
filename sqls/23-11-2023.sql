
CREATE TABLE `country` (
  `state_pk` INT AUTO_INCREMENT PRIMARY KEY,
  `is_active` BOOLEAN DEFAULT true,
  `createdon` TIMESTAMP DEFAULT current_timestamp,
  `updatedon` TIMESTAMP DEFAULT NULL,
  `deletedon` TIMESTAMP DEFAULT NULL,
  `createdby` INT,
  `updatedby` INT DEFAULT NULL,
  `deletedby` INT DEFAULT NULL,
  `state_name` VARCHAR(100) NOT NULL
);