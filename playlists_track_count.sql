-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT COUNT(t.TrackId) AS 'Count'
      ,pl.Name AS Name
FROM Playlist pl
LEFT OUTER JOIN PlaylistTrack pt ON
        pl.PlaylistId = pt.PlaylistId
LEFT OUTER JOIN Track t ON
        pt.TrackId = t.TrackId
GROUP BY pl.PlaylistId;
