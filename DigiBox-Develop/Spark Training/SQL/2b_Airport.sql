/****** Object:  Table [dbo].[Airport]    Script Date: 2/16/2021 2:47:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Airport](
	[AirportID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[City] [char](250) NULL,
	[Country] [char](250) NULL,
	[IATACode] [char](5) NULL,
	[Latitude] [decimal](20, 15) NULL,
	[Longitude] [decimal](20, 15) NULL,
PRIMARY KEY CLUSTERED 
(
	[AirportID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT INTO [dbo].[Airport]([NAME],[City],[Country],[IATACode],[Latitude],[Longitude])
VALUES ('Indira Gandhi International Airport','Delhi','India','DEL',28.5665,77.103104),
('Ottawa Macdonald-Cartier International Airport','Ottawa','Canada','YOW',45.3224983,-75.6691970),
('Frankfurt am Main Airport','Frankfurt','Germany','FRA',50.033333,8.570556),
('Eura Airport','Eura','Finland','EFE',68.36260,23.424299),
('London Luton Airport','London','United Kingdom','LTN',51.8746986,-0.368333011),
('Amsterdam Airport Schiphol','Amsterdam','Netherlands','AMS',52.308601,4.76389),
('Brisbane Archerfield Airport','Brisbane','Australia','ACF',-27.5702991486,153.007995605),
('Beijing Capital International Airport','Beijing','China','PEK',40.08010101,116.58499908),
('Los Angeles International Airport','Los Angeles','United States','LAX',33.94250107,-118.4079971),
('La Guardia Airport','New York','United States','LGA',40.77719879,-73.87259674),
('Dubai International Airport','Dubai','United Arab Emirates','DXB',25.2527999878,55.3643989563),
('Sheremetyevo International Airport','Moscow','Russia','SVO',55.972599,37.4146),
('Incheon International Airport','Seoul','South Korea','ICN',37.4691009,126.4509963),
('Narita International Airport','Tokyo','Japan','NRT',35.7647018433,140.386001587),
('Chennai International Airport','Chennai','India','MAA',12.990005493,80.169296264),
('Chhatrapati Shivaji International Airport','Mumbai','India','BOM',19.0886993408,72.8678970337),
('Kempegowda International Airport','Bangalore','India','BLR',13.1979,77.706299)
