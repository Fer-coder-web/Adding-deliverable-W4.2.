
/*
EC_IT143_W4.2_anime_s6_xx.sql

Step 6: Load the table from the view.

Purpose:
Clear the existing records and reload the
10 highest-rated anime from the view.
*/

-- Clear existing records.
TRUNCATE TABLE dbo.t_Anime_Top10ByRating;
GO

-- Insert records from the view.
INSERT INTO dbo.t_Anime_Top10ByRating
(
    anime_id,
    name,
    genre,
    type,
    episodes,
    rating,
    members
)
SELECT
    anime_id,
    name,
    genre,
    type,
    episodes,
    rating,
    members
FROM dbo.v_Anime_Top10ByRating;
GO

-- Verify the inserted records.
SELECT *
FROM dbo.t_Anime_Top10ByRating
ORDER BY rating DESC, members DESC;
GO
