-------------------
-- Procedures
-------------------

-- Procedure register(email, password)
CREATE OR REPLACE PROCEDURE register(p_email IN VARCHAR2, p_password IN VARCHAR2)
IS
    v_user_id NUMBER;
    CURSOR c_customer IS
        SELECT ID
        FROM customer
        WHERE email = p_email;
BEGIN
    OPEN c_customer;
    FETCH c_customer INTO v_user_id;
    IF c_customer%FOUND THEN
        CLOSE c_customer;
        RAISE_APPLICATION_ERROR(-20001, 'Email already exists');
    END IF;
    CLOSE c_customer;
    INSERT INTO customer (uuid, email, password, verificationcode, verified, resetcode, firstname, lastname, gender, welcomed)
    VALUES (sys_guid(), p_email, p_password, '233213', 0, '132321', 'Some Name', 'Some Name', 1, 0);
END;

-- Procedure verify(email, verificationcode)
CREATE OR REPLACE PROCEDURE verify(p_email IN VARCHAR2, p_verificationcode IN VARCHAR2)
IS
    v_user_id NUMBER;
    CURSOR c_customer IS
        SELECT ID
        FROM customer
        WHERE email = p_email AND verificationcode = p_verificationcode;
BEGIN
    OPEN c_customer;
    FETCH c_customer INTO v_user_id;
    IF NOT c_customer%FOUND THEN
        CLOSE c_customer;
        RAISE_APPLICATION_ERROR(-20002, 'Customer does not exist');
    END IF;
    CLOSE c_customer;
    UPDATE customer
    SET verified = 1
    WHERE email = p_email AND verificationcode = p_verificationcode;
END;

-- Procedure set_personal_data(FirstName, LastName, Gender, BirthDate, user_id)
CREATE OR REPLACE PROCEDURE set_personal_data(p_costumer_id NUMBER, p_firstname IN VARCHAR2, p_lastname IN VARCHAR2)
IS
    v_verified BOOLEAN := isverified(p_costumer_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    UPDATE customer
    SET firstname = p_firstname, lastname = p_lastname
    WHERE id = p_costumer_id;
END;

-- Procedure create_club(name, link, user)
CREATE OR REPLACE PROCEDURE create_club(p_name IN VARCHAR2, p_link IN VARCHAR2, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    INSERT INTO CLUB (LINK, ADMINID, IBAN, PAIDTILL, FREETRIALTILL, NAME, INFO, ADDRESS, ZIPCODE, IMAGEPATH)
    VALUES (p_link, p_user_id, 'NL00RABO0000000000', SYSDATE, SYSDATE + 30, p_name, '', '', '', '');
END;

-- Procedure pay_club(club_id, user_id)
CREATE OR REPLACE PROCEDURE pay_club(p_club_id NUMBER, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_club_id, p_user_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;
    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'User is not admin of club');
    END IF;

    UPDATE CLUB
    SET PAIDTILL = SYSDATE + 30
    WHERE ID = p_club_id;
END;

-- Procedure create_event(name, description, date, time, location, club_id, user_id)
CREATE OR REPLACE PROCEDURE create_event(p_title IN VARCHAR2, p_info IN VARCHAR2, p_club_id NUMBER, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_user_id, p_club_id);
    v_is_paid BOOLEAN := ISCLUBPAID(p_club_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer is not admin of club');
    END IF;

    IF NOT v_is_paid THEN
        RAISE_APPLICATION_ERROR(-20005, 'Club is not paid');
    END IF;

    INSERT INTO CLUBEVENT (TITLE, INFO, CLUBNAVIGATIONID)
    VALUES (p_title, p_info, p_club_id);
END;

-- Procedure create_news(title, description, date, club_id, user_id)
CREATE OR REPLACE PROCEDURE create_news(p_title IN VARCHAR2, p_info IN VARCHAR2, p_club_id NUMBER, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_user_id, p_club_id);
    v_is_paid BOOLEAN := ISCLUBPAID(p_club_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer is not admin of club');
    END IF;

    IF NOT v_is_paid THEN
        RAISE_APPLICATION_ERROR(-20005, 'Club is not paid');
    END IF;

    INSERT INTO CLUBNEWS (TITLE, INFO, CLUBNAVIGATIONID)
    VALUES (p_title, p_info, p_club_id);
END;

-- Procedure create_court(name, location, club_id)
CREATE OR REPLACE PROCEDURE create_court(p_name IN VARCHAR2, p_club_id NUMBER, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_user_id, p_club_id);
    v_is_paid BOOLEAN := ISCLUBPAID(p_club_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer is not admin of club');
    END IF;

    IF NOT v_is_paid THEN
        RAISE_APPLICATION_ERROR(-20005, 'Club is not paid');
    END IF;

    INSERT INTO COURT (NAME, BOOKABLE, TYPE, APRICE, BPRICE, ATIMEFROM, ATIMETILL, AWEEKENDTIMETILL, CLUBNAVIGATIONID)
    VALUES (p_name, 1, 1, 10, 10, 10, 10, 10, p_club_id);
END;

-- Procedure edit_club_link(club_id, link)
CREATE OR REPLACE PROCEDURE edit_club_link(p_club_id NUMBER, p_link IN VARCHAR2, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_user_id, p_club_id);
    v_is_paid BOOLEAN := ISCLUBPAID(p_club_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer is not admin of club');
    END IF;

    IF NOT v_is_paid THEN
        RAISE_APPLICATION_ERROR(-20005, 'Club is not paid');
    END IF;

    UPDATE CLUB
    SET LINK = p_link
    WHERE ID = p_club_id;
END;

-- Procedure edit_club_name(club_id, name)
CREATE OR REPLACE PROCEDURE edit_club_name(p_club_id NUMBER, p_name IN VARCHAR2, p_user_id NUMBER)
IS
    v_verified BOOLEAN := isverified(p_user_id);
    v_is_admin BOOLEAN := ISUSERADMINOFCLUB(p_user_id, p_club_id);
    v_is_paid BOOLEAN := ISCLUBPAID(p_club_id);
BEGIN
    IF v_verified THEN
        RAISE_APPLICATION_ERROR(-20003, 'Customer is not verified');
    END IF;

    IF NOT v_is_admin THEN
        RAISE_APPLICATION_ERROR(-20004, 'Customer is not admin of club');
    END IF;

    IF NOT v_is_paid THEN
        RAISE_APPLICATION_ERROR(-20005, 'Club is not paid');
    END IF;

    UPDATE CLUB
    SET NAME = p_name
    WHERE ID = p_club_id;
END;

-- Get all clubs
CREATE OR REPLACE PROCEDURE get_clubs(p_search IN VARCHAR2)
IS
BEGIN
    SELECT NAME, LINK FROM CLUB
    WHERE NAME LIKE '%' || p_search || '%';
END;

-- Get all courts
CREATE OR REPLACE PROCEDURE get_courts(p_club_id NUMBER)
IS
BEGIN
    SELECT NAME FROM COURT
    WHERE CLUBNAVIGATIONID = p_club_id;
END;

-- Get all events
CREATE OR REPLACE PROCEDURE get_events(p_club_id NUMBER)
IS
BEGIN
    SELECT TITLE, INFO FROM CLUBEVENT
    WHERE CLUBNAVIGATIONID = p_club_id;
END;

-- Get all news
CREATE OR REPLACE PROCEDURE get_news(p_club_id NUMBER)
IS
BEGIN
    SELECT TITLE, INFO FROM CLUBNEWS
    WHERE CLUBNAVIGATIONID = p_club_id;
END;


