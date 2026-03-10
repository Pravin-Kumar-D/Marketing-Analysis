Select * from [dbo].[customer_reviews]


Select 
   ReviewID,
   CustomerID,
   ProductID,
   ReviewDate,
   Rating,
   Replace(ReviewText,'  ',' ') as ReviewText

From
   [dbo].[customer_reviews]