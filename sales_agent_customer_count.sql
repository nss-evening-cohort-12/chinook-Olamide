-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName || ' ' || e.LastName As Agent
      ,COUNT(c.CustomerId) AS 'Customer Count'
FROM Employee e
INNER JOIN Customer c ON
        c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;
