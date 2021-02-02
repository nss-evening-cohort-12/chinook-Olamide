-- sales_agent_total_sales.sql

SELECT SUM(i.Total)
      ,e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Invoice i
INNER JOIN Customer c ON
        c.CustomerId = i.CustomerId
INNER JOIN Employee e ON
        e.EmployeeId = c.SupportRepId
GROUP BY SalesAgent
