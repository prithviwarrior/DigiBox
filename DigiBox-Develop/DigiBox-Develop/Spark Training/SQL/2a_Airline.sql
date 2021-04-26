/****** Object:  Table [dbo].[Airline]    Script Date: 2/16/2021 2:46:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Airline](
	[AirlineID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[ADDRESS] [char](250) NULL,
	[IATACode] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[AirlineID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT INTO [dbo].[Airline]([NAME],[ADDRESS],[IATACode])
VALUES ('Air India','India','AI'),
('IndiGo','India','6E'),
('Vistara','India','UK'),
('SpiceJet','India','SG'),
('Qatar Airways','India','QR'),
('Delta Air Lines','US','DL'),
('Lufthansa','India','LH'),
('Air Canada','Canada','AC'),
('JetBlue Airways','India','B6')

