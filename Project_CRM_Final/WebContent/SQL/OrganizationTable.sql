USE [CRM]
GO

/****** Object:  Table [dbo].[OrganizationTable]    Script Date: 10/26/2013 15:03:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OrganizationTable](
	[OrganizationId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[WebSite] [varchar](50) NOT NULL,
	[Employees] [varchar](50) NOT NULL,
	[AnnualRevenue] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[AssignedTo] [varchar](50) NOT NULL,
	[NotifyOwner] [varchar](50) NULL,
	[SICCOde] [varchar](50) NULL,
	[PrimaryEmail] [varchar](50) NOT NULL,
	[PrimaryPhone] [varchar](50) NOT NULL,
	[Industry] [varchar](50) NOT NULL,
	[Fax] [varchar](50) NULL,
	[Ownership] [varchar](50) NULL,
	[TickerSymbol] [varchar](50) NULL,
	[Rating] [varchar](50) NULL,
	[EmailOptOut] [varchar](50) NULL,
	[BillingAddress] [varchar](100) NOT NULL,
	[BillongPOBox] [varchar](50) NOT NULL,
	[BillingCity] [varchar](50) NOT NULL,
	[BillingState] [varchar](50) NOT NULL,
	[BillingCode] [varchar](50) NOT NULL,
	[BillingCountry] [varchar](50) NOT NULL,
	[ShippingAddress] [varchar](100) NULL,
	[ShippingPOBox] [varchar](50) NULL,
	[ShippingCity] [varchar](50) NULL,
	[ShippingState] [varchar](50) NULL,
	[ShippingCode] [varchar](50) NULL,
	[ShippingCountry] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_OrganizationTable] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

