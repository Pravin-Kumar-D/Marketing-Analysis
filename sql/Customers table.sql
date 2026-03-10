Select * from [dbo].[customers]

Select * from [dbo].[geography]

Select
   c.CustomerID,
   c.CustomerName,
   c.Email,
   c.Gender,
   c.Age,
   g.Country,
   g.City

From 
   [dbo].[customers] as c

Left Join
   [dbo].[geography] as g

On
   c.GeographyID = g.GeographyID

    