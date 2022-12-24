USE Animal_Shelter;
GO

SELECT 

    * 

    ,(SELECT MAX(Adoption_Fee) FROM Adoptions) AS MaxFeeEver

--Get percent discount from MaxPrice ever
    ,(
        ((SELECT MAX(Adoption_Fee) FROM Adoptions) - Adoption_Fee) * 100) 
        / --Division
        (SELECT MAX(Adoption_Fee) FROM Adoptions) 
            AS DiscountPerent
--Get Window Function of Max Percent by Species
    ,MAX(Adoption_Fee) OVER (PARTITION BY Species) AS MaxFeeBySpecies

FROM   
    Adoptions;

/* Here is the last window function but written as a correlated subquery instead

SELECT *
        , (
            SELECT MAX(Adoption_Fee)
            FROM Adoptions AS A2    -- Must write as A2 because inner and outer queries are selecting from same table
            WHERE A2.Species = A1.Species   --See?
            ) 
            AS MaxFeeSubquery

FROM Adoptions AS A1

*/