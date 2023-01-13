-- SQLINES DEMO *** ----------------------------------------
-- Inserts
-- SQLINES DEMO *** ----------------------------------------

-- User
-- 10 Users
-- SQLINES DEMO *** OT EXISTS `User` (
-- SQLINES DEMO ***  NULL AUTO_INCREMENT,
-- SQLINES DEMO *** NULL,
-- SQLINES DEMO *** 255) NOT NULL,
-- SQLINES DEMO *** NOT NULL,
-- SQLINES DEMO *** e` TEXT NOT NULL,
-- SQLINES DEMO *** NT NOT NULL,
-- SQLINES DEMO ***  NOT NULL,
-- SQLINES DEMO *** s` DATETIME,
-- SQLINES DEMO ***  NOT NULL,
-- SQLINES DEMO *** NOT NULL,
-- SQLINES DEMO ***  NOT NULL,
-- 	`BirthDate` DATE,
-- SQLINES DEMO *** e` DATETIME NOT NULL,
-- SQLINES DEMO *** ER NOT NULL,
-- SQLINES DEMO *** `),
-- 	UNIQUE (`Email`)
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID0', 'info0@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID1', 'info1@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID2', 'info2@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID3', 'info3@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID4', 'info4@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID5', 'info5@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID6', 'info6@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID7', 'info7@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID8', 'info8@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID9', 'info9@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);

-- Club
-- 3 Clubs
-- SQLINES DEMO *** OT EXISTS `Club` (
-- SQLINES DEMO ***  NULL AUTO_INCREMENT,
-- SQLINES DEMO *** 55) NOT NULL,
-- 	`AdminId` INTEGER,
-- SQLINES DEMO *** NULL,
-- 	`PaidTill` DATE,
-- SQLINES DEMO *** TEXT NOT NULL,
-- SQLINES DEMO *** NULL,
-- SQLINES DEMO *** NULL,
-- SQLINES DEMO *** OT NULL,
-- SQLINES DEMO *** OT NULL,
-- SQLINES DEMO ***  NOT NULL,
-- SQLINES DEMO *** minId`) REFERENCES `User` (`Id`),
-- SQLINES DEMO *** `),
-- 	UNIQUE (`Link`)
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club1', 1, 'AT12345678901234', TO_DATE('01/05/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben1', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben1');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club2', 2, 'AT12345678901234', TO_DATE('01/01/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben2', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben2');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club3', 3, 'AT12345678901234', TO_DATE('01/05/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben3', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben3');

-- ClubEvent
-- 3 Events per Club
-- SQLINES DEMO *** OT EXISTS `ClubEvent` (
-- SQLINES DEMO ***  NULL AUTO_INCREMENT,
-- SQLINES DEMO ***  NULL,
-- SQLINES DEMO *** NOT NULL,
-- SQLINES DEMO *** NULL,
-- SQLINES DEMO *** d` INTEGER NOT NULL,
-- SQLINES DEMO *** ubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 3);

-- ClubNews
-- 3 News per Club
-- SQLINES DEMO *** OT EXISTS `ClubNews` (
-- SQLINES DEMO ***  NULL AUTO_INCREMENT,
-- SQLINES DEMO ***  NULL,
-- SQLINES DEMO *** NULL,
-- SQLINES DEMO *** ME NOT NULL,
-- SQLINES DEMO *** d` INTEGER NOT NULL,
-- SQLINES DEMO *** ubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE,
-- 	PRIMARY KEY (`Id`)
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 3);

-- CourtType
-- SQLINES DEMO *** t = 1, Grass = 2, Hard = 3 }
-- SQLINES DEMO *** rtType` (
-- SQLINES DEMO ***  NULL AUTO_INCREMENT PRIMARY KEY,
-- SQLINES DEMO *** OT NULL
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CourtType (Name) VALUES ('Sand');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CourtType (Name) VALUES ('Carpet');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CourtType (Name) VALUES ('Grass');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO CourtType (Name) VALUES ('Hard');

-- Court
-- 2 Courts per Club
-- SQLINES DEMO *** rt` (
-- SQLINES DEMO *** OT NULL AUTO_INCREMENT PRIMARY KEY,
-- SQLINES DEMO *** T NULL,
-- SQLINES DEMO *** YINT NOT NULL,
-- SQLINES DEMO ***  NOT NULL,
-- SQLINES DEMO *** E NOT NULL,
-- SQLINES DEMO *** E NULL,
-- SQLINES DEMO *** TEGER NOT NULL,
-- SQLINES DEMO *** TEGER NOT NULL,
-- SQLINES DEMO *** ill` INTEGER NOT NULL,
-- SQLINES DEMO *** nId` INTEGER NOT NULL,
-- SQLINES DEMO *** Type`) REFERENCES `CourtType` (`Id`) ON DELETE CASCADE,
-- SQLINES DEMO *** ClubNavigationId`) REFERENCES `Club` (`Id`) ON DELETE CASCADE
-- );
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 1);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 2);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 3);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 3);

-- Reservation
-- SQLINES DEMO *** r Court
-- SQLINES DEMO *** ervation` (
-- SQLINES DEMO *** OT NULL AUTO_INCREMENT PRIMARY KEY,
-- SQLINES DEMO *** T NULL,
-- SQLINES DEMO *** TETIME NOT NULL,
-- SQLINES DEMO *** TIME NOT NULL,
-- SQLINES DEMO *** onId` INTEGER NULL,
-- SQLINES DEMO *** nId` INTEGER NULL,
-- SQLINES DEMO ***  NULL,
-- SQLINES DEMO *** CourtNavigationId`) REFERENCES `Court` (`Id`),
-- SQLINES DEMO *** UserNavigationId`) REFERENCES `User` (`Id`)
-- );
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID1', '2017-01-01 00:12:00', '2017-01-01 00:13:59', 1, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID2', '2017-01-01 00:12:00', '2017-01-01 00:13:59', 2, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID3', '2017-01-01 00:16:00', '2017-01-01 00:17:59', 2, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID4', '2017-01-01 00:12:00', '2017-01-01 00:13:59', 3, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID5', '2017-01-01 00:16:00', '2017-01-01 00:17:59', 3, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID6', '2017-01-01 00:12:00', '2017-01-01 00:13:59', 5, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID7', '2017-01-01 00:12:00', '2017-01-01 00:13:59', 8, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID8', '2017-01-01 00:16:00', '2017-01-01 00:17:59', 8, 1, 'Comment');
-- -- SQLINES LICENSE FOR EVALUATION USE ONLY
-- INSERT INTO Booking (UUID, StartTime, EndTime, CourtNavigationId, CustomerNavigationId, Info) VALUES ('UUID9', '2017-01-01 00:20:00', '2017-01-01 00:21:59', 8, 1, 'Comment');