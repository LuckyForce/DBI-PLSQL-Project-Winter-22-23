------------------------------------------------------------------------
-- Runs a series of tests on the procedures to check the business logic
------------------------------------------------------------------------

-- Functions
SELECT isUserAdminOfClub( 1, 1 ) FROM dual; -- Should return 1
SELECT isUserAdminOfClub( 1, 2 ) FROM dual; -- Should return 0

SELECT CLUBPAID( 1) FROM dual; -- Should return 1
SELECT CLUBPAID( 2) FROM dual; -- Should return 0

SELECT ISVERIFIED( 1) FROM dual; -- Should return 1
SELECT ISVERIFIED( 2) FROM dual; -- Should return 0

-- Procedures
-- Register a new user
BEGIN
 REGISTER('Test1', 'admin1234');
END;

-- Verify a user
BEGIN
 VERIFY('Test1', '233213');
END;

-- Set_personal_data
BEGIN
    SET_PERSONAL_DATA(1, 'Stephan', 'Schauer');
END;

-- create a new club
BEGIN
    CREATE_CLUB(1, 'TestClub', 'TestClubDescription');
END;

-- create a new clubevent
BEGIN
    CREATE_EVENT('TestClubEvent', 'TestClubEventDescription', 1, 1);
END;

-- create a new clubnews
BEGIN
    CREATE_NEWS('TestClubNews', 'TestClubNewsDescription', 1, 1);
END;

-- create court
BEGIN
    CREATE_COURT(1, 'TestCourt', 'TestCourtDescription');
END;

-- edit_club_link
BEGIN
    EDIT_CLUB_LINK(1, 'TestClubLink', 'TestClubLinkDescription');
END;
