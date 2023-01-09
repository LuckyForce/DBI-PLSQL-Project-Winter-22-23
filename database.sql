BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "SocialHubs" (
	"Id"	INTEGER NOT NULL,
	"Facebook"	TEXT NOT NULL,
	"Instagram"	TEXT NOT NULL,
	"Twitter"	TEXT NOT NULL,
	"Youtube"	TEXT NOT NULL,
	"LinkedIn"	TEXT NOT NULL,
	"Telephone"	TEXT NOT NULL,
	"Email"	TEXT NOT NULL,
	"Website"	TEXT NOT NULL,
	CONSTRAINT "PK_SocialHubs" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Users" (
	"Id"	INTEGER NOT NULL,
	"UUID"	TEXT NOT NULL,
	"Email"	TEXT NOT NULL,
	"Password"	TEXT NOT NULL,
	"VerificationCode"	TEXT NOT NULL,
	"Verified"	INTEGER NOT NULL,
	"ResetCode"	TEXT NOT NULL,
	"ResetCodeExpires"	TEXT,
	"FirstName"	TEXT NOT NULL,
	"LastName"	TEXT NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"BirthDate"	TEXT,
	"RegistrationDate"	TEXT NOT NULL,
	"Welcomed"	INTEGER NOT NULL,
	CONSTRAINT "PK_Users" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Clubs" (
	"Id"	INTEGER NOT NULL,
	"Link"	TEXT NOT NULL,
	"AdminId"	INTEGER,
	"IBAN"	TEXT NOT NULL,
	"PaidTill"	TEXT,
	"FreeTrialTill"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Info"	TEXT NOT NULL,
	"Address"	TEXT NOT NULL,
	"ZipCode"	TEXT NOT NULL,
	"ImagePath"	TEXT NOT NULL,
	"SocialHubId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Clubs_Users_AdminId" FOREIGN KEY("AdminId") REFERENCES "Users"("Id"),
	CONSTRAINT "FK_Clubs_SocialHubs_SocialHubId" FOREIGN KEY("SocialHubId") REFERENCES "SocialHubs"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Clubs" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "PhoneNumbers" (
	"UserId"	INTEGER NOT NULL,
	"Prefix"	TEXT NOT NULL,
	"Number"	TEXT NOT NULL,
	CONSTRAINT "FK_PhoneNumbers_Users_UserId" FOREIGN KEY("UserId") REFERENCES "Users"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_PhoneNumbers" PRIMARY KEY("UserId")
);
CREATE TABLE IF NOT EXISTS "ClubEvents" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Time"	TEXT NOT NULL,
	"Info"	TEXT NOT NULL,
	"ClubNavigationId"	INTEGER NOT NULL,
	CONSTRAINT "FK_ClubEvents_Clubs_ClubNavigationId" FOREIGN KEY("ClubNavigationId") REFERENCES "Clubs"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_ClubEvents" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "ClubNews" (
	"Id"	INTEGER NOT NULL,
	"Title"	TEXT NOT NULL,
	"Info"	TEXT NOT NULL,
	"Written"	TEXT NOT NULL,
	"ClubNavigationId"	INTEGER NOT NULL,
	CONSTRAINT "FK_ClubNews_Clubs_ClubNavigationId" FOREIGN KEY("ClubNavigationId") REFERENCES "Clubs"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_ClubNews" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Courts" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Bookable"	INTEGER NOT NULL,
	"Type"	INTEGER NOT NULL,
	"APrice"	REAL NOT NULL,
	"BPrice"	REAL,
	"ATimeFrom"	INTEGER NOT NULL,
	"ATimeTill"	INTEGER NOT NULL,
	"AWeekendTimeTill"	INTEGER NOT NULL,
	"ClubNavigationId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Courts_Clubs_ClubNavigationId" FOREIGN KEY("ClubNavigationId") REFERENCES "Clubs"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Courts" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Trainers" (
	"Id"	INTEGER NOT NULL,
	"FirstName"	TEXT NOT NULL,
	"LastName"	TEXT NOT NULL,
	"Gender"	INTEGER NOT NULL,
	"Info"	TEXT NOT NULL,
	"TrainingTime"	INTEGER NOT NULL,
	"ImagePath"	TEXT,
	"ClubNavigationId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Trainers_Clubs_ClubNavigationId" FOREIGN KEY("ClubNavigationId") REFERENCES "Clubs"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Trainers" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Reservations" (
	"Id"	INTEGER NOT NULL,
	"UUID"	TEXT NOT NULL,
	"StartTime"	TEXT NOT NULL,
	"EndTime"	TEXT NOT NULL,
	"CourtNavigationId"	INTEGER,
	"UserNavigationId"	INTEGER,
	"Comment"	TEXT,
	CONSTRAINT "FK_Reservations_Courts_CourtNavigationId" FOREIGN KEY("CourtNavigationId") REFERENCES "Courts"("Id"),
	CONSTRAINT "FK_Reservations_Users_UserNavigationId" FOREIGN KEY("UserNavigationId") REFERENCES "Users"("Id"),
	CONSTRAINT "PK_Reservations" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE INDEX IF NOT EXISTS "IX_ClubEvents_ClubNavigationId" ON "ClubEvents" (
	"ClubNavigationId"
);
CREATE INDEX IF NOT EXISTS "IX_ClubNews_ClubNavigationId" ON "ClubNews" (
	"ClubNavigationId"
);
CREATE INDEX IF NOT EXISTS "IX_Clubs_AdminId" ON "Clubs" (
	"AdminId"
);
CREATE INDEX IF NOT EXISTS "IX_Clubs_SocialHubId" ON "Clubs" (
	"SocialHubId"
);
CREATE INDEX IF NOT EXISTS "IX_Courts_ClubNavigationId" ON "Courts" (
	"ClubNavigationId"
);
CREATE INDEX IF NOT EXISTS "IX_Reservations_CourtNavigationId" ON "Reservations" (
	"CourtNavigationId"
);
CREATE INDEX IF NOT EXISTS "IX_Reservations_UserNavigationId" ON "Reservations" (
	"UserNavigationId"
);
CREATE INDEX IF NOT EXISTS "IX_Trainers_ClubNavigationId" ON "Trainers" (
	"ClubNavigationId"
);
COMMIT;
