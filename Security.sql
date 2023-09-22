USE [AssetAnalysis]
GO

/****** Object:  Table [dbo].[Security]    Script Date: 9/22/2023 3:32:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Security](
	[SecurityID] [int] IDENTITY(1,1) NOT NULL,
	[SecurityName] [nvarchar](100) NULL,
	[SecurityType] [nvarchar](50) NULL,
	[TickerSymbol] [nvarchar](10) NULL,
	[Exchange] [nvarchar](50) NULL,
	[Issuer] [nvarchar](100) NULL,
	[Rating] [nvarchar](10) NULL,
	[Industry] [nvarchar](100) NULL,
	[Sector] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Currency] [nvarchar](10) NULL,
	[MarketPrice] [decimal](18, 2) NULL,
	[DividendYield] [decimal](5, 2) NULL,
	[EarningsPerShare] [decimal](5, 2) NULL,
	[PE_Ratio] [decimal](5, 2) NULL,
	[BookValue] [decimal](18, 2) NULL,
	[MarketCap] [decimal](18, 2) NULL,
	[Beta] [decimal](5, 2) NULL,
	[DebtToEquityRatio] [decimal](5, 2) NULL,
	[Volume] [int] NULL,
	[AverageVolume] [int] NULL,
	[High52Week] [decimal](18, 2) NULL,
	[Low52Week] [decimal](18, 2) NULL,
	[OpenPrice] [decimal](18, 2) NULL,
	[ClosePrice] [decimal](18, 2) NULL,
	[PreviousClose] [decimal](18, 2) NULL,
	[ForwardPE] [decimal](5, 2) NULL,
	[EPSGrowthRate] [decimal](5, 2) NULL,
	[DividendRate] [decimal](5, 2) NULL,
	[DividendPayoutRatio] [decimal](5, 2) NULL,
	[IntrinsicValue] [decimal](18, 2) NULL,
	[PriceToBookRatio] [decimal](5, 2) NULL,
	[PriceToSalesRatio] [decimal](5, 2) NULL,
	[ReturnOnEquity] [decimal](5, 2) NULL,
	[ReturnOnAssets] [decimal](5, 2) NULL,
	[EarningsGrowthRate] [decimal](5, 2) NULL,
	[SalesGrowthRate] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SecurityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [CHK_Security_Beta] CHECK  (([Beta]>=(0)))
GO

ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [CHK_Security_Beta]
GO

ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [CHK_Security_DebtToEquityRatio] CHECK  (([DebtToEquityRatio]>=(0)))
GO

ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [CHK_Security_DebtToEquityRatio]
GO

ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [CHK_Security_DividendYield] CHECK  (([DividendYield]>=(0)))
GO

ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [CHK_Security_DividendYield]
GO

ALTER TABLE [dbo].[Security]  WITH CHECK ADD  CONSTRAINT [CHK_Security_PE_Ratio] CHECK  (([PE_Ratio]>=(0)))
GO

ALTER TABLE [dbo].[Security] CHECK CONSTRAINT [CHK_Security_PE_Ratio]
GO

