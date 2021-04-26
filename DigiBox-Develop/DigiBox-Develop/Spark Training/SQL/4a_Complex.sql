/*Display Airline Name with latest Departure aircraft details*/
;WITH AircraftByDep AS (	
	SELECT
		ROW_NUMBER() OVER(PARTITION BY ac.AirlineID ORDER BY ac.[DepartureTime] DESC) AS rowNumber,
		ac.*
	FROM  [dbo].[Aircraft] ac )
SELECT 
	ar.NAME AS [Airline Name],
	ac.[AircraftID] AS [Flight ID],
	depap.[NAME] AS [Departure Airport],
	ac.[DepartureTime] AS[Departure Time],
	arrap.[NAME] AS [Arrival Airport],
	ac.[ArrivalTime] AS [Arrival Time]
FROM [dbo].Airline ar
INNER JOIN AircraftByDep ac ON ar.AirlineID = ac.AirlineID AND ac.rowNumber=1
INNER JOIN [dbo].[Airport] depap ON ac.[DepartureAirportID] = depap.[AirportID]
INNER JOIN [dbo].[Airport] arrap ON ac.[ArrivalAirportID] = arrap.[AirportID]
--WHERE ac.rowNumber=1
