--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total AS Invoice_Total
      ,c.LastName || ', ' || c.FirstName AS Customer_Name
      ,c.Country AS Country
      ,e.FirstName || ' ' || e.LastName AS Sale_Agent
FROM Customer c
INNER JOIN Invoice i ON
        i.CustomerId= c.CustomerId
INNER JOIN Employee e ON
        e.EmployeeId = c.SupportRepId
ORDER By c.LastName        

