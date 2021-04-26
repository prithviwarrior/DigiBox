/*Display Airline Name with aircraft details*/
SELECT 
	ar.NAME AS [Airline Name],
	ac.[AircraftID] AS [Flight ID],
	depap.[NAME] AS [Departure Airport],
	ac.[DepartureTime] AS[Departure Time],
	arrap.[NAME] AS [Arrival Airport],
	ac.[ArrivalTime] AS [Arrival Time]
FROM [dbo].Airline ar
INNER JOIN [dbo].[Aircraft] ac ON ar.AirlineID = ac.AirlineID
INNER JOIN [dbo].[Airport] depap ON ac.[DepartureAirportID] = depap.[AirportID]
INNER JOIN [dbo].[Airport] arrap ON ac.[ArrivalAirportID] = arrap.[AirportID]


/*Display Airline Name with total number of aircraft is operated*/
SELECT 
	ar.NAME,
	COUNT(ac.AirlineID) AS [Aircraft Count]
FROM [dbo].Airline ar
INNER JOIN [dbo].[Aircraft] ac ON ar.AirlineID = ac.AirlineID
GROUP BY ar.NAME

SELECT 
	ar.NAME,
	COUNT(ac.AirlineID) AS [Aircraft Count]
FROM [dbo].Airline ar
LEFT JOIN [dbo].[Aircraft] ac ON ar.AirlineID = ac.AirlineID
GROUP BY ar.NAME