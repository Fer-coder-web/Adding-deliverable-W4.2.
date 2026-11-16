
/*
EC_IT143_W4.2_cybersecurity_s4_xx.sql

Step 4: Create a view.

Purpose:
Store the website classification count query
as a reusable database view.
*/

CREATE OR ALTER VIEW dbo.v_Cybersecurity_WebsiteCounts
AS
    SELECT
        CASE
            WHEN Result = -1 THEN 'Legitimate'
            WHEN Result = 1 THEN 'Phishing'
            ELSE 'Unknown'
        END AS WebsiteClassification,
        COUNT(*) AS WebsiteCount
    FROM EC_IT143_Community_Analysis.dbo.PhishingWebsites
    GROUP BY Result;
GO

-- Test the view.
SELECT *
FROM dbo.v_Cybersecurity_WebsiteCounts;
GO
