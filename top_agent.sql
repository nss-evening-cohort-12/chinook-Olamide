-- Which sales agent made the most in sales over all?

SELECT SalesAgent AS 'Top Sales Agent'
      ,MAX(TotalSales) AS 'Total Sales'
FROM (SELECT SUM(i.Total) AS TotalSales
            ,e.FirstName || ' ' || e.LastName AS SalesAgent
      FROM Invoice i
      INNER JOIN Customer c ON
              c.CustomerId = i.CustomerId
      INNER JOIN Employee e ON
              e.EmployeeId = c.SupportRepId
      GROUP BY SalesAgent) Sales
