
/*
EC_IT143_W4.2_cybersecurity_s7_xx.sql

Step 7: Create a stored procedure.

Purpose:
Create a reusable procedure that refreshes
the website classification count table.
*/

CREATE OR ALTER PROCEDURE dbo.usp_Cybersecurity_LoadWebsiteCounts
AS
BEGIN
    SET NOCOUNT ON;

    -- Remove existing records.
    TRUNCATE TABLE dbo.t_Cybersecurity_WebsiteCounts;

    -- Insert updated classification counts.
    INSERT INTO dbo.t_Cybersecurity_WebsiteCounts
    (
        WebsiteClassification,
        WebsiteCount
    )
    SELECT
        WebsiteClassification,
        WebsiteCount
    FROM dbo.v_Cybersecurity_WebsiteCounts;
END;
GO
