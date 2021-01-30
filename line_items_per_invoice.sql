-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

select InvoiceId AS Invoice, COUNT(*) As 'Line Items'
FROM InvoiceLine
GROUP BY InvoiceId
