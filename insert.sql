------------------------------------------------------------
-- Inserts
------------------------------------------------------------

-- User
-- CREATE TABLE IF NOT EXISTS `User` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`UUID` TEXT NOT NULL,
-- 	`Email` TEXT NOT NULL,
-- 	`Password` TEXT NOT NULL,
-- 	`VerificationCode` TEXT NOT NULL,
-- 	`Verified` INTEGER NOT NULL,
-- 	`ResetCode` TEXT NOT NULL,
-- 	`ResetCodeExpires` TEXT,
-- 	`FirstName` TEXT NOT NULL,
-- 	`LastName` TEXT NOT NULL,
-- 	`Gender` INTEGER NOT NULL,
-- 	`BirthDate` TEXT,
-- 	`RegistrationDate` TEXT NOT NULL,
-- 	`Welcomed` INTEGER NOT NULL,
-- 	PRIMARY KEY (`Id`)
-- );
INSERT INTO `User` (`UUID`, `Email`, `Password`, `VerificationCode`, `Verified`, `ResetCode`, `ResetCodeExpires`, `FirstName`, `LastName`, `Gender`, `BirthDate`, `RegistrationDate`, `Welcomed`) VALUES
('0000-0000-0000', 'info0@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0001', 'info1@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0002', 'info2@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0003', 'info3@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0004', 'info4@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0005', 'info5@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0006', 'info6@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0007', 'info7@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0008', 'info8@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0),
('0000-0000-0009', 'info9@adrian-schauer.at', '123456', '000000', 0, '000000', '2017-01-01 00:00:00', 'Adrian', 'Schauer', 0, '1995-01-01', '2017-01-01 00:00:00', 0);

-- Club
-- CREATE TABLE IF NOT EXISTS `Club` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Link` TEXT NOT NULL,
-- 	`AdminId` INTEGER,
-- 	`IBAN` TEXT NOT NULL,
-- 	`PaidTill` TEXT,
-- 	`FreeTrialTill` TEXT NOT NULL,
-- 	`Name` TEXT NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`Address` TEXT NOT NULL,
-- 	`ZipCode` TEXT NOT NULL,
-- 	`ImagePath` TEXT NOT NULL,
-- 	FOREIGN KEY (`AdminId`) REFERENCES `User` (`Id`),
-- 	PRIMARY KEY (`Id`)
-- );

-- ClubEvent
-- CREATE TABLE IF NOT EXISTS `ClubEvent` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Name` TEXT NOT NULL,
-- 	`Time` TEXT NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`ClubNavigationId` INTEGER NOT NULL,
-- 	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );

-- ClubNews
-- CREATE TABLE IF NOT EXISTS `ClubNews` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Title` TEXT NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`Written` TEXT NOT NULL,
-- 	`ClubNavigationId` INTEGER NOT NULL,
-- 	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );

-- CourtType
-- { Sand = 0, Carpet = 1, Grass = 2, Hard = 3 }
-- CREATE TABLE `CourtType` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     `Name` TEXT NOT NULL
-- );
INSERT INTO `CourtType` (`Name`) VALUES
('Sand'),
('Carpet'),
('Grass'),
('Hard');

-- Court
-- CREATE TABLE `Court` (
--    `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `Name` TEXT NOT NULL,
--    `Bookable` INTEGER NOT NULL,
--    `Type` INTEGER NOT NULL,
--    `APrice` REAL NOT NULL,
--    `BPrice` REAL NULL,
--    `ATimeFrom` INTEGER NOT NULL,
--    `ATimeTill` INTEGER NOT NULL,
--    `AWeekendTimeTill` INTEGER NOT NULL,
--    `ClubNavigationId` INTEGER NOT NULL,
--    FOREIGN KEY (`Type`) REFERENCES `CourtType` (`Id`) ON DELETE CASCADE,
--    FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE
-- );

-- Reservation
-- CREATE TABLE `Reservation` (
--    `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `UUID` TEXT NOT NULL,
--    `StartTime` TEXT NOT NULL,
--    `EndTime` TEXT NOT NULL,
--    `CourtNavigationId` INTEGER NULL,
--    `UserNavigationId` INTEGER NULL,
--    `Comment` TEXT NULL,
--    FOREIGN KEY (`CourtNavigationId`) REFERENCES `Court` (`Id`),
--    FOREIGN KEY (`UserNavigationId`) REFERENCES `User` (`Id`)
-- );
