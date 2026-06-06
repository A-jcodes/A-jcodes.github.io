/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Column_1]
      ,[NAME]
      ,[FOLLOWERS]
      ,[ER]
      ,[COUNTRY]
      ,[TOPIC_OF_INFLUENCE]
      ,[POTENTIAL_REACH]
  FROM [youtube_db].[dbo].[top_youtube_data_canada];

SELECT [NAME]
      ,[FOLLOWERS]
      ,[POTENTIAL_REACH]
FROM top_youtube_data_canada;

--extracting channel name using charindex--
SELECT CHARINDEX('@', NAME) FROM top_youtube_data_canada
SELECT CHARINDEX('@', NAME), NAME FROM top_youtube_data_canada
--Extraction--

SELECT SUBSTRING(NAME,1,CHARINDEX('@', NAME))FROM top_youtube_data_canada
SELECT SUBSTRING(NAME,1,CHARINDEX('@', NAME)-1)FROM top_youtube_data_canada
-- USING 'CAST' TO ENSURE THAT THE COLUMN ONLY TAKES STRINGS--

--SELECT CAST(SUBSTRING(NAME,1,CHARINDEX('@', NAME)-1)AS VARCHAR(100))FROM top_youtube_data_canada
SELECT CAST(SUBSTRING(NAME,1,CHARINDEX('@', NAME)-1)AS VARCHAR(100))as Channel_name,[FOLLOWERS],[POTENTIAL_REACH] FROM top_youtube_data_canada

-- Transform FOLLOWERS (only M values)
--droped ER column because data was insufficient.
   CASE
        WHEN FOLLOWERS LIKE '%M' 
            THEN CAST(CAST(REPLACE(FOLLOWERS, 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        ELSE 
            CAST(FOLLOWERS AS BIGINT)
    END AS FOLLOWERS,

    CASE
        WHEN [POTENTIAL_REACH] LIKE '%M' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        WHEN [POTENTIAL_REACH] LIKE '%K' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'K', '') AS FLOAT) * 1000 AS BIGINT)
        ELSE 
            CAST([POTENTIAL_REACH] AS BIGINT)
    END AS [POTENTIAL_REACH]

FROM top_youtube_data_canada;


/*SELECT
    CAST(SUBSTRING(NAME, 1, CHARINDEX('@', NAME) - 1) AS VARCHAR(100)) AS Channel_name,

    CASE
        WHEN FOLLOWERS LIKE '%M' 
            THEN CAST(CAST(REPLACE(FOLLOWERS, 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        ELSE 
            CAST(FOLLOWERS AS BIGINT)
    END AS FOLLOWERS,

	 
    CASE
        WHEN [POTENTIAL_REACH] LIKE '%M' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        WHEN [POTENTIAL_REACH] LIKE '%K' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'K', '') AS FLOAT) * 1000 AS BIGINT)
        ELSE 
            CAST([POTENTIAL_REACH] AS BIGINT)
    END AS [POTENTIAL_REACH]

FROM top_youtube_data_canada;*/
CREATE VIEW can_youtube_2024 AS

SELECT
    CAST(SUBSTRING(NAME, 1, CHARINDEX('@', NAME) - 1) AS VARCHAR(100)) AS Channel_name,

    CASE
        WHEN FOLLOWERS LIKE '%M' 
            THEN CAST(CAST(REPLACE(FOLLOWERS, 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        ELSE 
            CAST(FOLLOWERS AS BIGINT)
    END AS FOLLOWERS,

    CASE 
        WHEN ER = '-' THEN 0
        ELSE CAST(REPLACE(ER, '%', '') AS FLOAT) / 100
    END AS ER,

    CASE
        WHEN [POTENTIAL_REACH] LIKE '%M' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'M', '') AS FLOAT) * 1000000 AS BIGINT)
        WHEN [POTENTIAL_REACH] LIKE '%K' 
            THEN CAST(CAST(REPLACE([POTENTIAL_REACH], 'K', '') AS FLOAT) * 1000 AS BIGINT)
        ELSE 
            CAST([POTENTIAL_REACH] AS BIGINT)
    END AS [POTENTIAL_REACH]

FROM top_youtube_data_canada;







--1. row count check
SELECT COUNT(*) as no_of_rows from top_youtube_data_canada;
--2. Column count check
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='top_youtube_data_canada';

SELECT COLUMN_NAME,DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='can_youtube_2024';

--DUPLICATE RECORDS
SELECT NAME, COUNT(*) AS duplicate_count
FROM
  top_youtube_data_canada
GROUP BY NAME
HAVING COUNT(*) > 1