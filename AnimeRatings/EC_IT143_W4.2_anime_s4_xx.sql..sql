
/*
EC_IT143_W4.2_anime_s4_xx.sql

Step 4: Create a view.

Purpose:
Store the query that retrieves the 10 highest-rated
anime as a reusable database view.

View:
v_Anime_Top10ByRating
*/

CREATE OR ALTER VIEW dbo.v_Anime_Top10ByRating
AS
    SELECT TOP (10)
        anime_id,
        name,
        genre,
        type,
        episodes,
        rating,
        members
    FROM EC_IT143_Community_Analysis.dbo.Anime
    WHERE rating IS NOT NULL
    ORDER BY
        rating DESC,
        members DESC;
GO

-- Test the view.
SELECT *
FROM dbo.v_Anime_Top10ByRating
ORDER BY rating DESC, members DESC;
GO
