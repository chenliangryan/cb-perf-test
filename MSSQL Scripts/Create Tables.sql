USE master;
GO

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'poc')
    BEGIN
        CREATE DATABASE poc;
    END
GO

USE poc;
GO

DROP TABLE IF EXISTS [dbo].[Orders];

CREATE TABLE [dbo].[Orders](
	[OrderID] [varchar](20) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Gender] [nvarchar](6) NULL,
	[Age] [tinyint] NULL,
	[Outlet] [nvarchar](20) NULL,
	[Model] [nvarchar](20) NULL,
	[Color] [nvarchar](12) NULL,
	[UnitPrice] [decimal](13, 2) NULL,
	[Quantity] [int] NULL,
	[TxTime] [datetime] NULL,
	[LastUpdate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

DROP TABLE IF EXISTS [dbo].[PerfStats];
GO

CREATE TABLE [dbo].[PerfStats](
	[StatsID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [varchar](20) NOT NULL,
	[OpType] [nvarchar](20) NULL,
	[ResponseTime] [float] NULL,
	[LastUpdate] [datetime2](7) NULL,
 CONSTRAINT [PK_PerfStats] PRIMARY KEY CLUSTERED
(
	[StatsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
