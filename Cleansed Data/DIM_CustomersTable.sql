use AdventureWorksDW2022
SELECT 
	   c.CustomerKey AS [Customer Key]
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,c.firstname AS [First Name]
     -- ,[MiddleName]
      ,c.lastname AS [Last Name]
	  ,CONCAT (c.firstName , ' ' ,c.lastName) AS [Full Name]
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
		, CASE c.gender 
			WHEN 'M' THEN 'Male'
			WHEN 'F' THEN 'Female'
			END AS Gender
     -- ,[Gender]
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
        ,c.DateFirstPurchase AS [First Purchase Date]
    --  ,[CommuteDistance]
	    ,g.City AS [Customer City]
  FROM dbo.DimCustomer c
  LEFT JOIN dbo.dimgeography g -- Joined Customer City From Geography Table
	ON c.geographykey = g.geographykey
ORDER BY 
	customerkey ASC -- ordering by the customer key
	
