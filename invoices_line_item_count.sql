-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(il.InvoiceLineId) AS 'Invoice Line Count', i.*
FROM Invoice i
INNER JOIN InvoiceLine il ON
        il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId
