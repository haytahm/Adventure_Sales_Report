-- cleansed DIMPRODUCT TABLE --
SELECT 
	   [ProductKey]
      ,p.ProductAlternateKey AS [Product Code]
     -- ,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
     -- ,[SizeUnitMeasureCode]
      ,[EnglishProductName]
	  ,ps.EnglishProductSubcategoryName AS [Sub Category] -- Joined From DimProductSubcategory Table
	  ,pc.EnglishProductCategoryName AS [Category] -- Joined From DimProductCategory Table
     -- ,[SpanishProductName]
     -- ,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,[Color]
     -- ,[SafetyStockLevel]
     -- ,[ReorderPoint]
     -- ,[ListPrice]
      ,[Size]
     -- ,[SizeRange]
     -- ,[Weight]
     -- ,[DaysToManufacture]
      ,p.ProductLine AS [Line]
     -- ,[DealerPrice]
     -- ,[Class]
     -- ,[Style]
      ,p.ModelName AS [Model Name]
     -- ,[LargePhoto]
      ,p.EnglishDescription AS [Description]
     -- ,[FrenchDescription]
     -- ,[ChineseDescription]
     -- ,[ArabicDescription]
     -- ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
     -- ,[StartDate]
     -- ,[EndDate]
     -- ,[Status]
	  ,ISNULL (p.status , 'outDated') AS [Status]
  FROM dbo.DimProduct P
  LEFT JOIN DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN DimProductCategory pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey