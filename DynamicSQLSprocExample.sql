USE AdventureWorks2019;
GO

CREATE OR ALTER PROCEDURE dbo.uspGetValues
    (@columns NVARCHAR(MAX)
    ,@table NVARCHAR(MAX)
    ,@predicate NVARCHAR(MAX))

    AS

    BEGIN
        SET NOCOUNT ON;

        DECLARE @dynamic_sql NVARCHAR(MAX) = 
                'SELECT ' +
                    @columns +
                ' FROM ' +
                    @table +
                ' WHERE ' +
                    @predicate + ';'
                    ;

        EXECUTE sp_executesql @dynamic_sql;

    END;
GO

DECLARE @columns NVARCHAR(MAX) = 'AddressID, AddressLine1, City';
DECLARE @tables NVARCHAR(MAX) = 'Person.Address';
DECLARE @predicate NVARCHAR(MAX) = 'AddressLine1 = ''1970 Napa Ct.''';

EXEC dbo.uspGetValues @columns, @tables, @predicate;