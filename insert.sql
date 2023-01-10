------------------------------------------------------------
-- Inserts
------------------------------------------------------------

-- User
-- 10 Users
-- CREATE TABLE IF NOT EXISTS `User` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`UUID` TEXT NOT NULL,
-- 	`Email` VARCHAR(255) NOT NULL,
-- 	`Password` TEXT NOT NULL,
-- 	`VerificationCode` TEXT NOT NULL,
-- 	`Verified` TINYINT NOT NULL,
-- 	`ResetCode` TEXT NOT NULL,
-- 	`ResetCodeExpires` DATETIME,
-- 	`FirstName` TEXT NOT NULL,
-- 	`LastName` TEXT NOT NULL,
-- 	`Gender` INTEGER NOT NULL,
-- 	`BirthDate` DATE,
-- 	`RegistrationDate` DATETIME NOT NULL,
-- 	`Welcomed` INTEGER NOT NULL,
-- 	PRIMARY KEY (`Id`),
-- 	UNIQUE (`Email`)
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
-- 3 Clubs
-- CREATE TABLE IF NOT EXISTS `Club` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Link` VARCHAR(255) NOT NULL,
-- 	`AdminId` INTEGER,
-- 	`IBAN` TEXT NOT NULL,
-- 	`PaidTill` DATE,
-- 	`FreeTrialTill` TEXT NOT NULL,
-- 	`Name` TEXT NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`Address` TEXT NOT NULL,
-- 	`ZipCode` TEXT NOT NULL,
-- 	`ImagePath` TEXT NOT NULL,
-- 	FOREIGN KEY (`AdminId`) REFERENCES `User` (`Id`),
-- 	PRIMARY KEY (`Id`),
-- 	UNIQUE (`Link`)
-- );
INSERT INTO `Club` (`Link`, `AdminId`, `IBAN`, `PaidTill`, `FreeTrialTill`, `Name`, `Info`, `Address`, `ZipCode`, `ImagePath`) VALUES 
('club1', 1, 'AT12345678901234', '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'TC Eichgraben1', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben1'),
('club2', 2, 'AT12345678901234', '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'TC Eichgraben2', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben2'),
('club3', 3, 'AT12345678901234', '2023-05-01 00:00:00', '2023-05-01 00:00:00', 'TC Eichgraben3', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben3');

-- ClubEvent
-- 3 Events per Club
-- CREATE TABLE IF NOT EXISTS `ClubEvent` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Title` TEXT NOT NULL,
-- 	`Time` DATETIME NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`ClubNavigationId` INTEGER NOT NULL,
-- 	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );
INSERT INTO `ClubEvent` (`Title`, `Time`, `Info`, `ClubNavigationId`) VALUES 
('Event1', '2017-01-01 00:00:00', 'Event Info', 1),
('Event2', '2017-01-01 00:00:00', 'Event Info', 1),
('Event3', '2017-01-01 00:00:00', 'Event Info', 1),
('Event1', '2017-01-01 00:00:00', 'Event Info', 2),
('Event2', '2017-01-01 00:00:00', 'Event Info', 2),
('Event3', '2017-01-01 00:00:00', 'Event Info', 2),
('Event1', '2017-01-01 00:00:00', 'Event Info', 3),
('Event2', '2017-01-01 00:00:00', 'Event Info', 3),
('Event3', '2017-01-01 00:00:00', 'Event Info', 3);

-- ClubNews
-- 3 News per Club
-- CREATE TABLE IF NOT EXISTS `ClubNews` (
-- 	`Id` INTEGER NOT NULL AUTO_INCREMENT,
-- 	`Title` TEXT NOT NULL,
-- 	`Info` TEXT NOT NULL,
-- 	`Written` DATETIME NOT NULL,
-- 	`ClubNavigationId` INTEGER NOT NULL,
-- 	FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );
INSERT INTO `ClubNews` (`Title`, `Info`, `Written`, `ClubNavigationId`) VALUES 
('News1', 'News Info', '2017-01-01 00:00:00', 1),
('News2', 'News Info', '2017-01-01 00:00:00', 1),
('News3', 'News Info', '2017-01-01 00:00:00', 1),
('News1', 'News Info', '2017-01-01 00:00:00', 2),
('News2', 'News Info', '2017-01-01 00:00:00', 2),
('News3', 'News Info', '2017-01-01 00:00:00', 2),
('News1', 'News Info', '2017-01-01 00:00:00', 3),
('News2', 'News Info', '2017-01-01 00:00:00', 3),
('News3', 'News Info', '2017-01-01 00:00:00', 3);

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
-- 2 Courts per Club
-- CREATE TABLE `Court` (
--    `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `Name` TEXT NOT NULL,
--    `Bookable` TINYINT NOT NULL,
--    `Type` INTEGER NOT NULL,
--    `APrice` DOUBLE NOT NULL,
--    `BPrice` DOUBLE NULL,
--    `ATimeFrom` INTEGER NOT NULL,
--    `ATimeTill` INTEGER NOT NULL,
--    `AWeekendTimeTill` INTEGER NOT NULL,
--    `ClubNavigationId` INTEGER NOT NULL,
--    FOREIGN KEY (`Type`) REFERENCES `CourtType` (`Id`) ON DELETE CASCADE,
--    FOREIGN KEY (`ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE
-- );
INSERT INTO `Court` (`Name`, `Bookable`, `Type`, `APrice`, `BPrice`, `ATimeFrom`, `ATimeTill`, `AWeekendTimeTill`, `ClubNavigationId`) VALUES
('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 1),
('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 1),
('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 1),
('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 2),
('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 2),
('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 2),
('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 3),
('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 3),
('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 3);

-- Reservation
-- 2 Reservations per Court
-- CREATE TABLE `Reservation` (
--    `Id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `UUID` TEXT NOT NULL,
--    `StartTime` DATETIME NOT NULL,
--    `EndTime` DATETIME NOT NULL,
--    `CourtNavigationId` INTEGER NULL,
--    `UserNavigationId` INTEGER NULL,
--    `Comment` TEXT NULL,
--    FOREIGN KEY (`CourtNavigationId`) REFERENCES `Court` (`Id`),
--    FOREIGN KEY (`UserNavigationId`) REFERENCES `User` (`Id`)
-- );
-- INSERT INTO `Reservation` (`UUID`, `StartTime`, `EndTime`, `CourtNavigationId`, `UserNavigationId`, `Comment`) VALUES