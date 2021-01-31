-- What are the respective total sales for each of those years?

SELECT STRFTIME('%Y', InvoiceDate) AS YEAR
      ,SUM(Total) AS 'Sales Total'
FROM Invoice
WHERE STRFTIME('%Y', InvoiceDate) IN ('2009', '2011')
GROUP BY Year
