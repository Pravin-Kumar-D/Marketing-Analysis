Select * from [dbo].[engagement_data]

Select
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    Upper(Replace(ContentType, 'Socialmedia', 'Social Media')) as ContentType,
    Left(ViewsClicksCombined, Charindex('-', ViewsClicksCombined)-1) as Views,
    Right(ViewsClicksCombined, Len(ViewsClicksCombined) - Charindex('-', ViewsClicksCombined)) as Clicks,
    Likes,
    Format(Convert(Date,EngagementDate), 'dd.mm.yyyy') as EngagementDate

From
    [dbo].[engagement_data]
Where
    ContentType != 'Newsletter'