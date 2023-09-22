USE [AssetAnalysis]
GO

/****** Object:  Table [dbo].[Portfolio]    Script Date: 9/22/2023 3:32:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Portfolio](
	[PortfolioID] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioName] [nvarchar](100) NULL,
	[AssetClass] [nvarchar](50) NULL,
	[Region] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Sector] [nvarchar](50) NULL,
	[Currency] [nvarchar](3) NULL,
	[InvestmentType] [nvarchar](50) NULL,
	[PurchaseDate] [date] NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[MarketValue] [decimal](18, 2) NULL,
	[CurrentPrice] [decimal](18, 2) NULL,
	[DividendYield] [decimal](5, 2) NULL,
	[EarningsPerShare] [decimal](5, 2) NULL,
	[MarketCap] [decimal](18, 2) NULL,
	[Beta] [decimal](5, 2) NULL,
	[PE_Ratio] [decimal](5, 2) NULL,
	[BookValue] [decimal](18, 2) NULL,
	[ROE] [decimal](5, 2) NULL,
	[DebtToEquityRatio] [decimal](5, 2) NULL,
	[Volatility] [decimal](5, 2) NULL,
	[Liquidity] [decimal](5, 2) NULL,
	[52WeekHigh] [decimal](18, 2) NULL,
	[52WeekLow] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

