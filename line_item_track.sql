  
-- Provide a query that includes the purchased track name with each invoice line item.

SELECT t.Name
,i.InvoiceLineId
FROM Track t 
INNER JOIN InvoiceLine i ON
  i.TrackId = t.TrackId
ORDER BY t.Name
         ,i.InvoiceLineId
