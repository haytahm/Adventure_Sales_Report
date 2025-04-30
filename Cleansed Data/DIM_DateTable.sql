-- cleansed DIM_DATE Table -- 
SELECT 
	   [DateKey]
      ,[FullDateAlternateKey] AS Date
    --  ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
    --  ,[SpanishDayNameOfWeek]
    --  ,[FrenchDayNameOfWeek]
    --  ,[DayNumberOfMonth] 
    --  ,[DayNumberOfYear] 
      ,[WeekNumberOfYear] AS WeekNm
      ,[EnglishMonthName] AS Month
	  ,LEFT(EnglishMonthName,3) AS MonthShort
    --  ,[SpanishMonthName]
    --  ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MontNm
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
    --  ,[CalendarSemester]
    --  ,[FiscalQuarter]
    --  ,[FiscalYear]
    --  ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2023


