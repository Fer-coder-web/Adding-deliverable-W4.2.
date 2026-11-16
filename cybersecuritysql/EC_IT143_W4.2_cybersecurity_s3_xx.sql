
/*
EC_IT143_W4.2_cybersecurity_s3_xx.sql

Step 3: Write an ad hoc SQL query.

Purpose:
Count legitimate and phishing websites
using the Result column.
*/

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
