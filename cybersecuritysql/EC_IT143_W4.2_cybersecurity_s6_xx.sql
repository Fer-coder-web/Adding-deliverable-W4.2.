
/*
EC_IT143_W4.2_cybersecurity_s6_xx.sql

Step 6: Load the table from the view.

Purpose:
Clear existing records and insert the latest
website classification counts from the view.
*/

-- Clear the table.
TRUNCATE TABLE dbo.t_Cybersecurity_WebsiteCounts;
GO

-- Load the results from the view.
INSERT INTO dbo.t_Cybersecurity_WebsiteCounts
(
    WebsiteClassification,
    WebsiteCount
)
SELECT
    WebsiteClassification,
    WebsiteCount
FROM dbo.v_Cybersecurity_WebsiteCounts;
GO

-- Verify the inserted records.
SELECT *
FROM dbo.t_Cybersecurity_WebsiteCounts
ORDER BY WebsiteClassification;
GO
