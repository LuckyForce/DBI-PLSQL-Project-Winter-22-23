INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID0', 'info0@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID1', 'info1@adrian-schauer.at', '123456', '000000', 1, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID2', 'info2@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID3', 'info3@adrian-schauer.at', '123456', '000000', 1, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID4', 'info4@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID5', 'info5@adrian-schauer.at', '123456', '000000', 1, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID6', 'info6@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID7', 'info7@adrian-schauer.at', '123456', '000000', 1, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID8', 'info8@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);
INSERT INTO Customer (UUID, Email, Password, VerificationCode, Verified, ResetCode, FirstName, LastName, Gender, Welcomed) VALUES ('UUID9', 'info9@adrian-schauer.at', '123456', '000000', 0, '000000', 'Adrian', 'Schauer', 0, 0);

INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club1', 1, 'AT12345678901234', TO_DATE('01/05/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben1', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben1');
INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club2', 2, 'AT12345678901234', TO_DATE('01/01/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben2', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben2');
INSERT INTO Club (Link, AdminId, IBAN, PaidTill, FreeTrialTill, Name, Info, Address, ZipCode, ImagePath) VALUES ('club3', 3, 'AT12345678901234', TO_DATE('01/05/23', 'DD/MM/YY'), TO_DATE('01/05/23', 'DD/MM/YY'), 'TC Eichgraben3', 'Super CLub Info', 'Einestraße 5', '3032', '/tceichgraben3');

INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 1);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 1);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 1);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 2);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 2);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 2);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event1', 'Event Info', 3);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event2', 'Event Info', 3);
INSERT INTO ClubEvent (Title, Info, ClubNavigationId) VALUES ('Event3', 'Event Info', 3);

INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 1);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 1);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 1);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 2);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 2);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 2);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News1', 'News Info', 3);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News2', 'News Info', 3);
INSERT INTO ClubNews (Title, Info, ClubNavigationId) VALUES ('News3', 'News Info', 3);

INSERT INTO CourtType (Name) VALUES ('Sand');
INSERT INTO CourtType (Name) VALUES ('Carpet');
INSERT INTO CourtType (Name) VALUES ('Grass');
INSERT INTO CourtType (Name) VALUES ('Hard');

INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 1);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 1);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 1);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 2);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 2);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 2);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court1', 1, 1, 10.0, 5.0, 8, 22, 20, 3);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court2', 1, 2, 10.0, 5.0, 8, 22, 20, 3);
INSERT INTO Court (Name, Bookable, Type, APrice, BPrice, ATimeFrom, ATimeTill, AWeekendTimeTill, ClubNavigationId) VALUES ('Court3', 1, 3, 10.0, 5.0, 8, 22, 20, 3);