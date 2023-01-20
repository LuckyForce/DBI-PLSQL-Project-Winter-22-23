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

BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISCOURTTYPEVALID(1)));
END;
BEGIN
    DBMS_OUTPUT.PUT_LINE(Sys.diutil.BOOL_TO_INT(ISCOURTTYPEVALID(10)));
END;

-- Procedures
-- Register a new user
BEGIN
 REGISTER('info@adrian-schauer.at', 'admin1234');
 COMMIT;
END;

-- Verify a user
BEGIN
 VERIFY('info@adrian-schauer.at', '233213');
 COMMIT;
END;

-- Set_personal_data
BEGIN
    SET_PERSONAL_DATA(1, 'Stephan', 'Schauer');
    COMMIT;
END;

-- create a new club
BEGIN
    CREATE_CLUB('TestClub', 'tc-eichgraben', 1);
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
    CREATE_COURT('TestCourt', 1, 1, 1);
    COMMIT;
END;

-- edit_club_link
BEGIN
    EDIT_CLUB_LINK(1, 'TestClubLink', 1);
    COMMIT;
END;

-- edit_club_name
BEGIN
    EDIT_CLUB_NAME(1, 'TestClubName', 1);
    COMMIT;
END;

-- get_clubs
BEGIN
    GET_CLUBS('TC');
END;

-- get_club_events
BEGIN
    GET_EVENTS(1);
END;

-- get_club_news
BEGIN
    GET_NEWS(1);
END;

-- get_club_courts
BEGIN
    GET_COURTS(1);
END;

