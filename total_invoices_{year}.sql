-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
  OR InvoiceDate Like '2011%';

