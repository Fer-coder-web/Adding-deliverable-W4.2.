
/*
EC_IT143_W4.2_hello_world_s4_xx.sql

Step 4: Create a view.

Purpose:
Store the query that retrieves the current date
and time as a reusable database view.

View Name:
v_hello_world_current_datetime
*/

CREATE OR ALTER VIEW dbo.v_hello_world_current_datetime
AS
    SELECT CAST(GETDATE() AS datetime2(0)) AS CurrentDateTime;
GO

-- Test the view.
SELECT *
FROM dbo.v_hello_world_current_datetime;
GO
