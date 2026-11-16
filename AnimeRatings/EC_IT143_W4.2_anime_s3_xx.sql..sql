
/*
EC_IT143_W4.2_anime_s3_xx.sql

Step 3: Write an ad hoc SQL query.

Purpose:
Retrieve the 10 highest-rated anime.
*/

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
