/*
Example lesson stub
*/

SELECT
	ps.Hospital
 
	,COUNT(*) AS NumberOfAdmissions
 
	,SUM(ps.Tariff) AS TotalTariff
FROM
	PatientStay ps
GROUP BY
 ps.Hospital
HAVING
 COUNT(*) > 10
ORDER BY
 NumberOfAdmissions DESC;

/*
 Can you write a SQL statement based on the instructions below? Assume that the database contains an airports table with the appropriate columns.
List airports. Show the following columns: ident, iata_code, name, latitude_deg, longitude_deg, type, iso_country
Filter to those airports with
a type of ‘large_airport’
a latitude_deg between 49 and 54 degrees
an iso_country of ‘GB’
Order from the most northern airports to most southern airports
 */

SELECT
	a.ident
	,a.iata_code
	,a.name
	,a.latitude_deg
	,a.longitude_deg
	,a.[type]
	,a.iso_country
FROM
	airports a
WHERE a.[type] = 'large_airport'
	AND a.latitude_deg BETWEEN '49' AND '54'
	AND a.iso_country = 'GB'
ORDER BY a.longitude_deg ASC