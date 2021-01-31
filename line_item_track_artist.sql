-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceLineId
      ,t.Name
      ,a.Name

FROM InvoiceLine i 
INNER JOIN Track t ON 
        t.TrackId = i.TrackId
INNER JOIN Album al ON  
          al.AlbumId = t.AlbumId
INNER JOIN Artist a ON
        a.ArtistId = al.ArtistId
ORDER BY i.InvoiceId
        ,i.InvoiceLineId
