START TRANSACTION;
DROP DATABASE TennisBooking;
CREATE DATABASE IF NOT EXISTS TennisBooking;
USE TennisBooking;

CREATE TABLE IF NOT EXISTS `User` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`UUID` TEXT NOT NULL,
	`Email` VARCHAR(255) NOT NULL,
	`Password` TEXT NOT NULL,
	`VerificationCode` TEXT NOT NULL,
	`Verified` TINYINT NOT NULL,
	`ResetCode` TEXT NOT NULL,
	`ResetCodeExpires` DATETIME,
	`FirstName` TEXT NOT NULL,
	`LastName` TEXT NOT NULL,
	`Gender` INTEGER NOT NULL,
	`BirthDate` DATE,
	`RegistrationDate` DATETIME NOT NULL,
	`Welcomed` INTEGER NOT NULL,
	PRIMARY KEY (`Id`),
	UNIQUE (`Email`)
);
CREATE TABLE IF NOT EXISTS `Club` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Link` VARCHAR(255) NOT NULL,
	`AdminId` INTEGER,
	`IBAN` TEXT NOT NULL,
	`PaidTill` TEXT,
	`FreeTrialTill` TEXT NOT NULL,
	`Name` TEXT NOT NULL,
	`Info` TEXT NOT NULL,
	`Address` TEXT NOT NULL,
	`ZipCode` TEXT NOT NULL,
	`ImagePath` TEXT NOT NULL,
	FOREIGN KEY (`AdminId`) REFERENCES `User` (`Id`),
	PRIMARY KEY (`Id`),
	UNIQUE (`Link`)
);
CREATE TABLE IF NOT EXISTS `ClubEvent` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Title` TEXT NOT NULL,
	`Time` DATETIME NOT NULL,
	`Info` TEXT NOT NULL,
	`ClubNavigationId` INTEGER NOT NULL,
	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
	PRIMARY KEY (`Id`)
);
CREATE TABLE IF NOT EXISTS `ClubNews` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Title` TEXT NOT NULL,
	`Info` TEXT NOT NULL,
	`Written` DATETIME NOT NULL,
	`ClubNavigationId` INTEGER NOT NULL,
	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
	PRIMARY KEY (`Id`)
);
CREATE TABLE `CourtType` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` TEXT NOT NULL
);
CREATE TABLE `Court` (
   `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `Name` TEXT NOT NULL,
   `Bookable` TINYINT NOT NULL,
   `Type` INTEGER NOT NULL,
   `APrice` DOUBLE NOT NULL,
   `BPrice` DOUBLE NULL,
   `ATimeFrom` INTEGER NOT NULL,
   `ATimeTill` INTEGER NOT NULL,
   `AWeekendTimeTill` INTEGER NOT NULL,
   `ClubNavigationId` INTEGER NOT NULL,
   FOREIGN KEY (`Type`) REFERENCES `CourtType` (`Id`) ON DELETE CASCADE,
   FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE
);
CREATE TABLE `Reservation` (
   `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `UUID` TEXT NOT NULL,
   `StartTime` DATETIME NOT NULL,
   `EndTime` DATETIME NOT NULL,
   `CourtNavigationId` INTEGER NULL,
   `UserNavigationId` INTEGER NULL,
   `Comment` TEXT NULL,
   FOREIGN KEY (`CourtNavigationId`) REFERENCES `Court` (`Id`),
   FOREIGN KEY (`UserNavigationId`) REFERENCES `User` (`Id`)
);
COMMIT;