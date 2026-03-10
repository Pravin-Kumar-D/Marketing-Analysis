Select * from [dbo].[products]


Select 
    ProductID, 
    ProductName, 
    Price,
    Case 
        when Price < 50 then 'Low'
        when Price Between 50 and 200 then 'Medium'
        else 'High'
    End as PriceCategory
from 
    [dbo].[products]