/* 
# of vaccinations each animal has received
include animals that were never vaccinated
EXCLUDE - rabbits, rabies vax, and animals vaxed >= 10/01/2019
name, species, primary color, breed, # vaccinations

SELECT * FROM Vaccinations;
SELECT * FROM Animals;

Good first strategy is to SELECT(*) FROM X INNER JOIN Y just to see what you're working with
*/

SELECT 
	A.Name
	,A.Primary_Color --Could theoretically make this a dummy value like MAX(x) to leave out of GROUP BY
	,A.Species
	,A.Breed
	,COUNT(V.Vaccine) AS VaxCount
	,MAX(V.Vaccination_Time) AS FirstVax

FROM Animals AS A
LEFT OUTER JOIN Vaccinations as V
		ON A.Name = V.Name 
			AND 
		A.Species = V.Species
		
WHERE 
	( A.Species <> 'Rabbit')
		AND 
	(V.Vaccine <> 'Rabies' OR V.Vaccine IS NULL) --Only way to do this in SQL Server			
GROUP BY 
	A.Name
	,A.Primary_Color
	,A.Species
	,A.Breed
HAVING MAX(V.Vaccination_Time) < '2019-10-01' -- Can also write '20191001' but looks like shit
		OR MAX(V.Vaccination_Time) IS NULL
ORDER BY VaxCount DESC