
/*
EC_IT143_W4.2_hello_world_s8_xx.sql

Step 8: Execute the stored procedure.

Purpose:
Run the stored procedure to refresh the table
with the current date and time.
*/

-- Execute the stored procedure.
EXEC dbo.usp_hello_world_load_datetime;
GO

-- Verify the results.
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO
