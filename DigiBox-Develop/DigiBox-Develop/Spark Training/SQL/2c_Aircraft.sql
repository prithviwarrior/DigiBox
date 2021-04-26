/****** Object:  Table [dbo].[Aircraft]    Script Date: 2/16/2021 2:46:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Aircraft](
	[AircraftID] [int] IDENTITY(1,1) NOT NULL,
	[AirlineID] [int] NOT NULL,
	[DepartureAirportID] [int] NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalAirportID] [int] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AircraftID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Aircraft]  WITH CHECK ADD FOREIGN KEY([AirlineID])
REFERENCES [dbo].[Airline] ([AirlineID])
GO

ALTER TABLE [dbo].[Aircraft]  WITH CHECK ADD FOREIGN KEY([ArrivalAirportID])
REFERENCES [dbo].[Airport] ([AirportID])
GO

ALTER TABLE [dbo].[Aircraft]  WITH CHECK ADD FOREIGN KEY([DepartureAirportID])
REFERENCES [dbo].[Airport] ([AirportID])
GO


INSERT INTO [dbo].[Aircraft]([AirlineID],[DepartureAirportID],[DepartureTime],[ArrivalAirportID],[ArrivalTime])
VALUES (1,1,getdate()-3,16,getdate()-1),
(1,16,getdate()-4,15,getdate()-2),
(2,10,getdate()-4,16,getdate()-3),
(2,9,getdate()-6,17,getdate()-4),
(4,9,getdate()-2,12,getdate()-1),
(6,1,getdate()-7,10,getdate()-2),
(6,13,getdate()-8,12,getdate()-3),
(6,13,getdate()-14,5,getdate()-4),
(7,5,getdate()-4,15,getdate()-5),
(7,13,getdate()-5,17,getdate()-1),
(7,4,getdate()-2,2,getdate()-1),
(1,11,getdate()-12,15,getdate()-3),
(8,3,getdate()-10,16,getdate()-1),
(8,8,getdate()-9,1,getdate()-2),
(8,11,getdate()-3,13,getdate()+1),
(9,10,getdate()+1,7,getdate()+4),
(9,2,getdate()-1,4,getdate()+2),
(9,6,getdate()-2,8,getdate()+5),
(9,12,getdate()-12,9,getdate()-1),
(3,7,getdate()-12,14,getdate()-1)