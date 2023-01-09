START TRANSACTION;
DROP DATABASE TennisBooking;
CREATE DATABASE IF NOT EXISTS TennisBooking;
USE TennisBooking;

CREATE TABLE IF NOT EXISTS `User` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`UUID` TEXT NOT NULL,
	`Email` TEXT NOT NULL,
	`Password` TEXT NOT NULL,
	`VerificationCode` TEXT NOT NULL,
	`Verified` INTEGER NOT NULL,
	`ResetCode` TEXT NOT NULL,
	`ResetCodeExpires` TEXT,
	`FirstName` TEXT NOT NULL,
	`LastName` TEXT NOT NULL,
	`Gender` INTEGER NOT NULL,
	`BirthDate` TEXT,
	`RegistrationDate` TEXT NOT NULL,
	`Welcomed` INTEGER NOT NULL,
	PRIMARY KEY (`Id`)
);
CREATE TABLE IF NOT EXISTS `Club` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Link` TEXT NOT NULL,
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
	PRIMARY KEY (`Id`)
);
CREATE TABLE IF NOT EXISTS `ClubEvent` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Name` TEXT NOT NULL,
	`Time` TEXT NOT NULL,
	`Info` TEXT NOT NULL,
	`ClubNavigationId` INTEGER NOT NULL,
	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
	PRIMARY KEY (`Id`)
);
CREATE TABLE IF NOT EXISTS `ClubNews` (
	`Id` INTEGER NOT NULL AUTO_INCREMENT,
	`Title` TEXT NOT NULL,
	`Info` TEXT NOT NULL,
	`Written` TEXT NOT NULL,
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
   `Bookable` INTEGER NOT NULL,
   `Type` INTEGER NOT NULL,
   `APrice` REAL NOT NULL,
   `BPrice` REAL NULL,
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
   `StartTime` TEXT NOT NULL,
   `EndTime` TEXT NOT NULL,
   `CourtNavigationId` INTEGER NULL,
   `UserNavigationId` INTEGER NULL,
   `Comment` TEXT NULL,
   FOREIGN KEY (`CourtNavigationId`) REFERENCES `Court` (`Id`),
   FOREIGN KEY (`UserNavigationId`) REFERENCES `User` (`Id`)
);
COMMIT;