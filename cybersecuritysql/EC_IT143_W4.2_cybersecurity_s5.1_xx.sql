
/*
EC_IT143_W4.2_cybersecurity_s5.1_xx.sql

Step 5.1: Create a table from the view.

Purpose:
Create a physical table containing the number
of legitimate and phishing websites.
*/

IF OBJECT_ID('dbo.t_Cybersecurity_WebsiteCounts', 'U') IS NOT NULL
    DROP TABLE dbo.t_Cybersecurity_WebsiteCounts;
GO

SELECT *
INTO dbo.t_Cybersecurity_WebsiteCounts
FROM dbo.v_Cybersecurity_WebsiteCounts;
GO

-- Verify the table.
SELECT *
FROM dbo.t_Cybersecurity_WebsiteCounts;
GO
