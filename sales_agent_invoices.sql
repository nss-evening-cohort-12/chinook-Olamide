-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT agent.FirstName || ' ' || agent.LastName AS Full_Name
      ,i.*
FROM Employee agent
LEFT OUTER JOIN Customer cust ON
        cust.SupportRepId = agent.EmployeeId
INNER JOIN Invoice i ON
        i.CustomerId = cust.CustomerId
WHERE agent.Title LIKE 'Sales%Agent'
ORDER BY agent.LastName, agent.FirstName
