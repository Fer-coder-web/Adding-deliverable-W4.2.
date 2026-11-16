
/*
EC_IT143_W4.2_anime_s5.1_xx.sql

Step 5.1: Create a table from the view.

Purpose:
Use SELECT INTO to create a physical table
containing the top 10 highest-rated anime.
*/

IF OBJECT_ID('dbo.t_Anime_Top10ByRating', 'U') IS NOT NULL
    DROP TABLE dbo.t_Anime_Top10ByRating;
GO

SELECT *
INTO dbo.t_Anime_Top10ByRating
FROM dbo.v_Anime_Top10ByRating;
GO

-- Verify the table.
SELECT *
FROM dbo.t_Anime_Top10ByRating
ORDER BY rating DESC, members DESC;
GO
