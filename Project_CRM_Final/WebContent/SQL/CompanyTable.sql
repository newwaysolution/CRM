USE [CRM]
GO

/****** Object:  Table [dbo].[CompanyTable]    Script Date: 10/28/2013 21:41:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CompanyTable](
	[CompanyName] [varchar](50) NOT NULL,
	[CompanyCode] [varchar](50) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
	[EmployeeId] [varchar](50) NULL,
	[EmployeeCNo] [varchar](50) NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](32) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Zip] [varchar](50) NULL,
	[LicenseStartDate] [datetime] NULL,
	[LicenseEndDate] [datetime] NULL,
	[IsEnable] [varchar](50) NULL,
	[VerificationId] [uniqueidentifier] NULL,
	[IsVerified] [varchar](50) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_CompanyTable] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

