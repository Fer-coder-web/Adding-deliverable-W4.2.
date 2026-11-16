
/*
EC_IT143_W4.2_anime_s8_xx.sql

Step 8: Execute the stored procedure.

Purpose:
Run the Anime loading procedure and verify
that the table contains the expected records.
*/

EXEC dbo.usp_Anime_LoadTop10ByRating;
GO

-- Display the final results.
SELECT *
FROM dbo.t_Anime_Top10ByRating
ORDER BY rating DESC, members DESC;
GO
