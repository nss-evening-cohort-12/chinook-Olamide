-- Which sales agent made the most in sales in 2009?

SELECT SalesAgent AS 'Top 2009 Sales Agent'
      ,MAX(TotalSales) AS 'Total Sales 2009'
FROM (SELECT SUM(i.Total) AS TotalSales
            ,e.FirstName || ' ' || e.LastName AS SalesAgent
      FROM Invoice i
      INNER JOIN Customer c ON
              c.CustomerId = i.CustomerId
      INNER JOIN Employee e ON
              e.EmployeeId = c.SupportRepId
      WHERE STRFTIME('%Y', i.InvoiceDate) = '2009'
      GROUP BY SalesAgent) Sales
