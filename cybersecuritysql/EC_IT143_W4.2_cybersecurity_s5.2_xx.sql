
/*
EC_IT143_W4.2_cybersecurity_s5.2_xx.sql

Step 5.2: Refine the table structure.

Purpose:
Create a structured table with a primary key,
NOT NULL constraints, and appropriate data types.
*/

IF OBJECT_ID('dbo.t_Cybersecurity_WebsiteCounts', 'U') IS NOT NULL
    DROP TABLE dbo.t_Cybersecurity_WebsiteCounts;
GO

CREATE TABLE dbo.t_Cybersecurity_WebsiteCounts
(
    WebsiteClassification NVARCHAR(20) NOT NULL,
    WebsiteCount INT NOT NULL
        CONSTRAINT DF_Cybersecurity_WebsiteCount
        DEFAULT (0),

    CONSTRAINT PK_Cybersecurity_WebsiteCounts
        PRIMARY KEY (WebsiteClassification),

    CONSTRAINT CK_Cybersecurity_WebsiteCount
        CHECK (WebsiteCount >= 0)
);
GO

-- Inspect the table structure.
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 't_Cybersecurity_WebsiteCounts';
GO
