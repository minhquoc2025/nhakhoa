USE [SHC_TEST]
GO
/****** Object:  Table [dbo].[SOS_Article_Group_Priority_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Article_Group_Priority_Setting](
	[Article_Group_Priority] [varchar](3) NOT NULL,
	[Article_Group_Priority_Seq] [int] NOT NULL,
 CONSTRAINT [PK_SOS_Article_Group_Priority_Setting] PRIMARY KEY CLUSTERED 
(
	[Article_Group_Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Article_Group_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Article_Group_Setting](
	[Article_Group_ID] [nvarchar](50) NOT NULL,
	[Article_Group_Priority] [varchar](3) NOT NULL,
	[Primary_Category] [nvarchar](50) NOT NULL,
	[Primary_Category_Desc] [nvarchar](50) NOT NULL,
	[Secondary_Category] [nvarchar](50) NOT NULL,
	[Secondary_Category_Desc] [nvarchar](50) NOT NULL,
	[Update_Time] [datetime] NOT NULL,
	[Update_By] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SOS_Article_Group_Setting] PRIMARY KEY CLUSTERED 
(
	[Article_Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Article_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Article_Setting](
	[Season] [char](4) NOT NULL,
	[Dev_Type] [varchar](50) NULL,
	[Upper_Tooling_Number] [nvarchar](10) NOT NULL,
	[Outsole_Tooling_Number] [nvarchar](10) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Model_Name] [nvarchar](50) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Article_Group_ID] [nvarchar](50) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[Special_Article] [char](1) NOT NULL,
	[Update_Time] [datetime] NOT NULL,
	[Update_By] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SOS_Article_Setting] PRIMARY KEY CLUSTERED 
(
	[Article_Group_ID] ASC,
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Article_Setting_Temp]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Article_Setting_Temp](
	[Season] [char](4) NOT NULL,
	[Dev_Type] [varchar](50) NULL,
	[Upper_Tooling_Number] [nvarchar](10) NOT NULL,
	[Outsole_Tooling_Number] [nvarchar](10) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Model_Name] [nvarchar](50) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Article_Group_ID] [nvarchar](50) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[Special_Article] [char](1) NOT NULL,
	[Update_Time] [datetime] NOT NULL,
	[Update_By] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SOS_Article_Setting_Temp] PRIMARY KEY CLUSTERED 
(
	[Article_Group_ID] ASC,
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Class_Code_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Class_Code_Setting](
	[Class_Code] [char](2) NOT NULL,
	[Class_Code_Priority] [int] NOT NULL,
	[Update_Time] [datetime] NOT NULL,
	[Update_By] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SOS_Class_Code_Setting] PRIMARY KEY CLUSTERED 
(
	[Class_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Destination_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Destination_Setting](
	[Destination] [nvarchar](50) NOT NULL,
	[Destination_Limit] [varchar](3) NOT NULL,
	[Update_Time] [datetime] NOT NULL,
	[Update_By] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SOS_Destination_Setting] PRIMARY KEY CLUSTERED 
(
	[Destination] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Order_Type_Setting]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Order_Type_Setting](
	[Order_Type] [char](4) NOT NULL,
	[Order_Type_Desc] [nvarchar](50) NULL,
	[Order_Type_Priority] [int] NULL,
	[Update_Time] [datetime] NULL,
	[Update_By] [nvarchar](50) NULL,
 CONSTRAINT [PK_SOS_Order_Type_Setting] PRIMARY KEY CLUSTERED 
(
	[Order_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOS_Sales_Order_Scheduling_Result]    Script Date: 4/8/2025 1:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOS_Sales_Order_Scheduling_Result](
	[Scheduling_Seq] [int] NULL,
	[Scheduling_Date] [date] NULL,
	[SID] [nvarchar](60) NULL,
	[Factory3] [nvarchar](60) NULL,
	[Factory_ID] [nvarchar](60) NULL,
	[Demand_Order_Header] [nvarchar](60) NOT NULL,
	[Demand_Order_Batch_Number] [nvarchar](60) NOT NULL,
	[Customer_Order_ID] [nvarchar](60) NOT NULL,
	[Batch_Qty] [numeric](17, 4) NULL,
	[Predict_Deliver_Date] [nvarchar](8) NULL,
	[Promise_Deliver_Date] [nvarchar](8) NULL,
	[Due_Date] [nvarchar](8) NULL,
	[Order_Date] [nvarchar](8) NULL,
	[Generic_Material] [nvarchar](60) NULL,
	[Model_NO] [nvarchar](50) NULL,
	[Model_Name] [nvarchar](50) NULL,
	[Article] [nvarchar](50) NULL,
	[Special_Article] [char](1) NULL,
	[Article_Group_ID] [nvarchar](50) NULL,
	[Article_Group_Priority] [varchar](3) NULL,
	[Article_Group_Priority_Seq] [int] NULL,
	[Demand_Order_Type] [nvarchar](60) NULL,
	[Order_Type_Priority] [int] NULL,
	[Demand_Order_Remark] [nvarchar](60) NULL,
	[Customer_ID] [nvarchar](60) NULL,
	[Customer_Name] [nvarchar](100) NULL,
	[Ship_To_Customer_ID] [nvarchar](60) NULL,
	[Ship_To_Customer_Name] [nvarchar](100) NULL,
	[Ship_To_Customer_Country] [nvarchar](100) NULL,
	[Destination_Limit] [varchar](3) NULL,
	[Class_Code] [nvarchar](60) NULL,
	[Class_Code_Priority] [int] NULL,
	[Hold_Shipment] [nvarchar](8) NULL,
	[Plan_Date] [nvarchar](8) NULL,
	[Lead_Time] [int] NULL,
	[Priority] [nvarchar](200) NULL,
 CONSTRAINT [PK_SOS_Sales_Order_Scheduling_Result] PRIMARY KEY CLUSTERED 
(
	[Demand_Order_Header] ASC,
	[Demand_Order_Batch_Number] ASC,
	[Customer_Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
