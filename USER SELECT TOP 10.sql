/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [ItemName]
      ,[Price]
      ,[Quantity]
  FROM [eCommerce].[dbo].[Item]