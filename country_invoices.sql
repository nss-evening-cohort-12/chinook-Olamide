--  Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT BillingCountry
      ,Count(*)
FROM Invoice
GROUP BY BillingCountry
