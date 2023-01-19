----------------------
-- Functions
----------------------

-- Check if Admin of Club
CREATE OR REPLACE FUNCTION isUserAdminOfClub(p_customer_id INTEGER, p_club_id INTEGER)
RETURN BOOLEAN
AS
    v_is_admin BOOLEAN;
    v_club_id INTEGER;
    CURSOR v_clubs IS SELECT Id FROM Club WHERE AdminId = p_customer_id AND Id = p_club_id;
BEGIN
    OPEN v_clubs;
    FETCH v_clubs INTO v_club_id;
    IF v_clubs%FOUND THEN
        v_is_admin := TRUE;
    ELSE
        v_is_admin := FALSE;
    END IF;
    CLOSE v_clubs;
    RETURN v_is_admin;
END;

-- ClubPaid
CREATE OR REPLACE FUNCTION isClubPaid(p_club_id INTEGER)
RETURN BOOLEAN
AS
    v_is_paid BOOLEAN;
    v_paid_date DATE;
    CURSOR v_club IS SELECT PAIDTILL FROM Club WHERE Id = p_club_id;
BEGIN
    OPEN v_club;
    FETCH v_club INTO v_paid_date;
    IF v_club%NOTFOUND THEN
        v_is_paid := FALSE;
    ELSE
        IF v_paid_date > SYSDATE THEN
            v_is_paid := TRUE;
        ELSE
            v_is_paid := FALSE;
        END IF;
    END IF;
    CLOSE v_club;
    RETURN v_is_paid;
END;

-- User Verified
CREATE OR REPLACE FUNCTION isVerified(p_customer_id INTEGER)
RETURN BOOLEAN
AS
    v_is_verified BOOLEAN;
    v_costumer_id INTEGER;
    CURSOR v_user IS SELECT ID FROM Customer WHERE Id = p_customer_id AND Verified = 1;
BEGIN
    OPEN v_user;
    FETCH v_user INTO v_costumer_id;
    IF v_user%NOTFOUND THEN
        v_is_verified := FALSE;
    ELSE
        v_is_verified := TRUE;
    END IF;
    CLOSE v_user;
    RETURN v_is_verified;
END;

-- Court Type Valid
CREATE OR REPLACE FUNCTION isCourtTypeValid(p_court_type_id INTEGER)
RETURN BOOLEAN
AS
    v_is_valid BOOLEAN;
    v_court_type_id INTEGER;
    CURSOR v_court_type IS SELECT ID FROM CourtType WHERE Id = p_court_type_id;
BEGIN
    OPEN v_court_type;
    FETCH v_court_type INTO v_court_type_id;
    IF v_court_type%NOTFOUND THEN
        v_is_valid := FALSE;
    ELSE
        v_is_valid := TRUE;
    END IF;
    CLOSE v_court_type;
    RETURN v_is_valid;
END;

