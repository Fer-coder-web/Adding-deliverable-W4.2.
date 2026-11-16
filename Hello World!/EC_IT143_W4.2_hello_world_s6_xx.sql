
/*
EC_IT143_W4.2_hello_world_s6_xx.sql

Step 6: Load the table from the view.

Purpose:
Clear the table and insert the current date and time
obtained from the view.
*/

-- Remove existing rows.
TRUNCATE TABLE dbo.t_hello_world_current_datetime;
GO

-- Insert the current date and time from the view.
INSERT INTO dbo.t_hello_world_current_datetime
    (CurrentDateTime)
SELECT CurrentDateTime
FROM dbo.v_hello_world_current_datetime;
GO

-- Verify the loaded data.
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO
