------------------------------------------------------------------------
-- Runs a series of tests on the procedures to check the business logic
------------------------------------------------------------------------

-- Functions
BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISUSERADMINOFCLUB(1, 1)));
END;
BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISUSERADMINOFCLUB(1, 2)));
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISCLUBPAID(1)));
END;
BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISCLUBPAID(2)));
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISVERIFIED(1)));
END;
BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISVERIFIED(2)));
END;

-- Procedures
-- Register a new user
BEGIN
 REGISTER('Test1', 'admin1234');
 COMMIT;
END;

-- Verify a user
BEGIN
 VERIFY('Test1', '233213');
 COMMIT;
END;

-- Set_personal_data
BEGIN
    SET_PERSONAL_DATA(1, 'Stephan', 'Schauer');
    COMMIT;
END;

-- create a new club
BEGIN
    CREATE_CLUB(1, 'TestClub', 'TestClubDescription');
    COMMIT;
END;

-- Pay for a club
BEGIN
    PAY_CLUB(1, 1);
    COMMIT;
END;

-- create a new clubevent
BEGIN
    CREATE_EVENT('TestClubEvent', 'TestClubEventDescription', 1, 1);
    COMMIT;
END;

-- create a new clubnews
BEGIN
    CREATE_NEWS('TestClubNews', 'TestClubNewsDescription', 1, 1);
    COMMIT;
END;

-- create court
BEGIN
    CREATE_COURT(1, 'TestCourt', 'TestCourtDescription');
    COMMIT;
END;

-- edit_club_link
BEGIN
    EDIT_CLUB_LINK(1, 'TestClubLink', 'TestClubLinkDescription');
    COMMIT;
END;
