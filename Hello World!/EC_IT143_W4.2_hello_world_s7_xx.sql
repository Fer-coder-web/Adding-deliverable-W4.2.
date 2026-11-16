
/*
EC_IT143_W4.2_hello_world_s7_xx.sql

Step 7: Create a stored procedure.

Purpose:
Create a reusable procedure that clears the table
and loads it with the current date and time from the view.
*/

CREATE OR ALTER PROCEDURE dbo.usp_hello_world_load_datetime
AS
BEGIN
    SET NOCOUNT ON;

    -- Clear existing records.
    TRUNCATE TABLE dbo.t_hello_world_current_datetime;

    -- Load the latest date and time.
    INSERT INTO dbo.t_hello_world_current_datetime
        (CurrentDateTime)
    SELECT CurrentDateTime
    FROM dbo.v_hello_world_current_datetime;
END;
GO
