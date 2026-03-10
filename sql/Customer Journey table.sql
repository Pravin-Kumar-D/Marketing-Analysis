Select * from [dbo].[customer_journey]

---Checking for duplicates
With DuplicateRecords as(
   Select
      JourneyID,
      CustomerID,
      ProductID,
      VisitDate,
      Stage,
      Action,
      Duration,
      ROW_NUMBER() Over (Partition By CustomerID, ProductID, VisitDate, Stage, Action Order By JourneyID) as row_num
    From
      [dbo].[customer_journey])

Select * from DuplicateRecords where row_num > 1 Order By JourneyID

---Main Query

Select
      JourneyID,
      CustomerID,
      ProductID,
      VisitDate,
      Stage,
      Action,
      Coalesce(Duration, Avg_Duration) as Duration
    From

(
Select
      JourneyID,
      CustomerID,
      ProductID,
      VisitDate,
      Upper(Stage) as Stage,
      Action,
      Duration,
      Avg(Duration) Over (Partition By VisitDate) as Avg_Duration,
      ROW_NUMBER() Over (Partition By CustomerID, ProductID, VisitDate, Upper(Stage), Action Order By JourneyID) as row_num
    From
      [dbo].[customer_journey]
) as sub_query

Where row_num = 1
