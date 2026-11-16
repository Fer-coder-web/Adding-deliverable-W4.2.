
/*
EC_IT143_W4.2_hello_world_s5.2_xx.sql

Step 5.2: Refine the table structure.

Purpose:
Re-create the table with an identity primary key,
a NOT NULL constraint, and a default value.
*/

-- Drop the existing table.
IF OBJECT_ID('dbo.t_hello_world_current_datetime', 'U') IS NOT NULL
    DROP TABLE dbo.t_hello_world_current_datetime;
GO

-- Re-create the table with improved structure.
CREATE TABLE dbo.t_hello_world_current_datetime
(
    DateTimeID INT IDENTITY(1,1) NOT NULL,
    CurrentDateTime DATETIME2(0) NOT NULL
        CONSTRAINT DF_hello_world_current_datetime
        DEFAULT SYSDATETIME(),

    CONSTRAINT PK_hello_world_current_datetime
        PRIMARY KEY (DateTimeID)
);
GO

-- Verify the table structure and contents.
SELECT *
FROM dbo.t_hello_world_current_datetime;
GO
