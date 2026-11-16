
/*
EC_IT143_W4.2_cybersecurity_s8_xx.sql

Step 8: Execute the stored procedure.

Purpose:
Run the procedure to refresh the website
classification counts and verify the results.
*/

-- Execute the stored procedure.
EXEC dbo.usp_Cybersecurity_LoadWebsiteCounts;
GO

-- Display the final results.
SELECT *
FROM dbo.t_Cybersecurity_WebsiteCounts
ORDER BY WebsiteClassification;
GO
