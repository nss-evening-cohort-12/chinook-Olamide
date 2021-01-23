--  Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

-- -- 

Select c.FirstName, c.LastName, i.InvoiceId, i.BillingCountry, i.InvoiceDate
FROM Invoice i
INNER JOIN Customer c USING(CustomerId) 
where BillingCountry == 'Brazil'
