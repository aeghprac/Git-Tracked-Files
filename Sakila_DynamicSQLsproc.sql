--USE sakila
--GO

--CREATE OR ALTER PROCEDURE 
--	usp_GetTableData (@columns NVARCHAR(MAX), @table NVARCHAR(MAX))
--AS
--BEGIN
--		SET NOCOUNT ON;

--		DECLARE @sql NVARCHAR(MAX);

--		SET @sql = 
--			'SELECT ' +
--				@columns +
--			' FROM ' +
--				@table;
--		EXEC sp_executesql @sql;


--END;

DECLARE @cols VARCHAR(MAX) = 'title, description, original_language_id';
DECLARE @table VARCHAR(MAX) = 'sakila.dbo.film';


EXEC usp_GetTableData @cols, @table;