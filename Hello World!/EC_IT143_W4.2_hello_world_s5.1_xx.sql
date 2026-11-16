
/*
EC_IT143_W4.2_hello_world_s5.1_xx.sql

Step 5.1: Create a table from the view.

Purpose:
Use SELECT INTO to create a physical table
containing the result returned by the view.
*/

-- Remove the table if it already exists.
IF OBJECT_ID('dbo.t_hello_world_current_datetime', 'U') IS NOT NULL
    DROP TABLE dbo.t_hello_world_current_datetime;
GO

-- Create and populate the table from the view.
SELECT *
INTO dbo.t_hello_world_current_datetime
FROM dbo.v_hello_world_current_datetime;
GO

-- Verify the table.
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO
