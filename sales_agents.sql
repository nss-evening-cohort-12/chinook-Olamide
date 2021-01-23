-- Provide a query showing only the Employees who are Sales Agents.

Select *
From Employee
where Title Like '%sales%' AND Title LIKE '%agent%'
