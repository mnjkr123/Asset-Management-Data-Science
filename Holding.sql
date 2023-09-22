USE [AssetAnalysis]
GO

/****** Object:  Table [dbo].[Holding]    Script Date: 9/22/2023 3:31:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Holding](
	[HoldingID] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioID] [int] NULL,
	[SecurityID] [int] NULL,
	[AssetClass] [nvarchar](50) NULL,
	[Region] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[Sector] [nvarchar](50) NULL,
	[Currency] [nvarchar](3) NULL,
	[Quantity] [int] NULL,
	[MarketValue] [decimal](18, 2) NULL,
	[PurchaseDate] [date] NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[CouponRate] [decimal](5, 2) NULL,
	[MaturityDate] [date] NULL,
	[Issuer] [nvarchar](100) NULL,
	[PropertyType] [nvarchar](50) NULL,
	[PropertyLocation] [nvarchar](100) NULL,
	[PropertyValue] [decimal](18, 2) NULL,
	[PropertySize] [decimal](18, 2) NULL,
	[RealEstateType] [nvarchar](50) NULL,
	[PrivateEquityType] [nvarchar](50) NULL,
	[PrivateEquityInvestmentDate] [date] NULL,
	[PrivateEquityInvestmentAmount] [decimal](18, 2) NULL,
	[RealEstateInvestmentDate] [date] NULL,
	[RealEstateInvestmentAmount] [decimal](18, 2) NULL,
	[BondType] [nvarchar](50) NULL,
	[BondCouponFrequency] [nvarchar](20) NULL,
	[BondYield] [decimal](5, 2) NULL,
	[BondFaceValue] [decimal](18, 2) NULL,
	[BondDuration] [decimal](5, 2) NULL,
	[BondCreditRating] [nvarchar](10) NULL,
	[StockExchange] [nvarchar](50) NULL,
	[SharesOutstanding] [int] NULL,
	[EarningsPerShare] [decimal](5, 2) NULL,
	[DividendYield] [decimal](5, 2) NULL,
	[PriceEarningsRatio] [decimal](5, 2) NULL,
	[MarketCap] [decimal](18, 2) NULL,
	[Beta] [decimal](5, 2) NULL,
	[BookValue] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[HoldingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Holding]  WITH CHECK ADD  CONSTRAINT [FK_Holding_Portfolio] FOREIGN KEY([PortfolioID])
REFERENCES [dbo].[Portfolio] ([PortfolioID])
GO

ALTER TABLE [dbo].[Holding] CHECK CONSTRAINT [FK_Holding_Portfolio]
GO

ALTER TABLE [dbo].[Holding]  WITH CHECK ADD  CONSTRAINT [FK_Holding_Security] FOREIGN KEY([SecurityID])
REFERENCES [dbo].[Security] ([SecurityID])
GO

ALTER TABLE [dbo].[Holding] CHECK CONSTRAINT [FK_Holding_Security]
GO

