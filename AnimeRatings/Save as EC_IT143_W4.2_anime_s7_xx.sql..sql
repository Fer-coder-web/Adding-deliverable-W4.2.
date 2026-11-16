
/*
EC_IT143_W4.2_anime_s7_xx.sql

Step 7: Create a stored procedure.

Purpose:
Create a reusable procedure that refreshes the
Anime table using the top-rated Anime view.
*/

CREATE OR ALTER PROCEDURE dbo.usp_Anime_LoadTop10ByRating
AS
BEGIN
    SET NOCOUNT ON;

    -- Remove existing records.
    TRUNCATE TABLE dbo.t_Anime_Top10ByRating;

    -- Load the latest records from the view.
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
END;
GO
