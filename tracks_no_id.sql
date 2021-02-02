-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.


SELECT t.NAME AS 'Track  Name'
      ,a.Title AS 'Album Name'
      ,mt.Name AS 'Media Type'
      ,g.Name AS 'Genre'
      ,t.Composer
      ,t.Milliseconds AS 'Time'
      ,t.Bytes AS 'Size'
      ,t.UnitPrice AS 'Price'
FROM Track t
INNER JOIN Album a ON
        a.AlbumId = t.AlbumId
INNER JOIN MediaType mt ON
        t.MediaTypeId = mt.MediaTypeId
INNER JOIN Genre g ON
        g.GenreId = t.GenreId
