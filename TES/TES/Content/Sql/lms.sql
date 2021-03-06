USE [LMS]
GO
/****** Object:  ForeignKey [FK157C5AB0826AE614]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] DROP CONSTRAINT [FK157C5AB0826AE614]
GO
/****** Object:  ForeignKey [FK157C5AB0B83FEBBF]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0B83FEBBF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] DROP CONSTRAINT [FK157C5AB0B83FEBBF]
GO
/****** Object:  ForeignKey [FK3D9907E17C2A16DA]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E17C2A16DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E17C2A16DA]
GO
/****** Object:  ForeignKey [FK3D9907E1925954FB]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1925954FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E1925954FB]
GO
/****** Object:  ForeignKey [FK3D9907E1DF0B88A1]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1DF0B88A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E1DF0B88A1]
GO
/****** Object:  ForeignKey [FKF52FC5B4372FBDC9]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4372FBDC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4372FBDC9]
GO
/****** Object:  ForeignKey [FKF52FC5B470125470]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B470125470]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B470125470]
GO
/****** Object:  ForeignKey [FKF52FC5B4826AE614]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4826AE614]
GO
/****** Object:  ForeignKey [FKF52FC5B4C38DA29D]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4C38DA29D]
GO
/****** Object:  ForeignKey [FK2FB4195C4C7560E5]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195C4C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] DROP CONSTRAINT [FK2FB4195C4C7560E5]
GO
/****** Object:  ForeignKey [FK2FB4195CC4571880]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195CC4571880]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] DROP CONSTRAINT [FK2FB4195CC4571880]
GO
/****** Object:  ForeignKey [FK79D7D46D43904E6]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK79D7D46D43904E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemFunction]'))
ALTER TABLE [dbo].[SystemFunction] DROP CONSTRAINT [FK79D7D46D43904E6]
GO
/****** Object:  ForeignKey [FK9E03B252C38DA29D]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK9E03B252C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]'))
ALTER TABLE [dbo].[TranportOrderItem] DROP CONSTRAINT [FK9E03B252C38DA29D]
GO
/****** Object:  ForeignKey [FK7F8230855F6246DA]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F8230855F6246DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F8230855F6246DA]
GO
/****** Object:  ForeignKey [FK7F823085826AE614]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F823085826AE614]
GO
/****** Object:  ForeignKey [FK7F82308598ED6E69]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F82308598ED6E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F82308598ED6E69]
GO
/****** Object:  ForeignKey [FK7F823085F36A1D5A]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085F36A1D5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F823085F36A1D5A]
GO
/****** Object:  ForeignKey [FK625C3C934C7560E5]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C934C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] DROP CONSTRAINT [FK625C3C934C7560E5]
GO
/****** Object:  ForeignKey [FK625C3C937D00C015]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C937D00C015]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] DROP CONSTRAINT [FK625C3C937D00C015]
GO
/****** Object:  Table [dbo].[BillingItem]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E17C2A16DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E17C2A16DA]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1925954FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E1925954FB]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1DF0B88A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] DROP CONSTRAINT [FK3D9907E1DF0B88A1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillingItem]') AND type in (N'U'))
DROP TABLE [dbo].[BillingItem]
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] DROP CONSTRAINT [FK157C5AB0826AE614]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0B83FEBBF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] DROP CONSTRAINT [FK157C5AB0B83FEBBF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Billing]') AND type in (N'U'))
DROP TABLE [dbo].[Billing]
GO
/****** Object:  Table [dbo].[TranportOrderItem]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK9E03B252C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]'))
ALTER TABLE [dbo].[TranportOrderItem] DROP CONSTRAINT [FK9E03B252C38DA29D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]') AND type in (N'U'))
DROP TABLE [dbo].[TranportOrderItem]
GO
/****** Object:  Table [dbo].[DeliveryForm]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4372FBDC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4372FBDC9]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B470125470]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B470125470]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4826AE614]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] DROP CONSTRAINT [FKF52FC5B4C38DA29D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryForm]') AND type in (N'U'))
DROP TABLE [dbo].[DeliveryForm]
GO
/****** Object:  Table [dbo].[Role_SystemFunction]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195C4C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] DROP CONSTRAINT [FK2FB4195C4C7560E5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195CC4571880]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] DROP CONSTRAINT [FK2FB4195CC4571880]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]') AND type in (N'U'))
DROP TABLE [dbo].[Role_SystemFunction]
GO
/****** Object:  Table [dbo].[TransportOrder]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F8230855F6246DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F8230855F6246DA]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F823085826AE614]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F82308598ED6E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F82308598ED6E69]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085F36A1D5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] DROP CONSTRAINT [FK7F823085F36A1D5A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportOrder]') AND type in (N'U'))
DROP TABLE [dbo].[TransportOrder]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C934C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] DROP CONSTRAINT [FK625C3C934C7560E5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C937D00C015]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] DROP CONSTRAINT [FK625C3C937D00C015]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Role]') AND type in (N'U'))
DROP TABLE [dbo].[User_Role]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicle]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
DROP TABLE [dbo].[Client]
GO
/****** Object:  Table [dbo].[SystemFunction]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK79D7D46D43904E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemFunction]'))
ALTER TABLE [dbo].[SystemFunction] DROP CONSTRAINT [FK79D7D46D43904E6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemFunction]') AND type in (N'U'))
DROP TABLE [dbo].[SystemFunction]
GO
/****** Object:  Table [dbo].[SystemSetting]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetting]') AND type in (N'U'))
DROP TABLE [dbo].[SystemSetting]
GO
/****** Object:  Table [dbo].[SystemUser]    Script Date: 03/03/2014 10:12:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUser]') AND type in (N'U'))
DROP TABLE [dbo].[SystemUser]
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
DROP TABLE [dbo].[Dictionary]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Driver]') AND type in (N'U'))
DROP TABLE [dbo].[Driver]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03/03/2014 10:12:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[RoleName] [nvarchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (1, 0, N'业务员', 1)
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (2, 0, N'调度员', 1)
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (3, 0, N'业务员', 1)
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (4, 0, N'财务人员', 1)
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (5, 0, N'系统管理员', 1)
INSERT [dbo].[Role] ([ID], [Version], [RoleName], [IsActive]) VALUES (6, 0, N'超级用户', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Driver]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Driver]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Driver](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[BasicSalary] [decimal](19, 5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Driver] ON
INSERT [dbo].[Driver] ([ID], [Version], [UserName], [Account], [Password], [IsActive], [BasicSalary]) VALUES (1, 0, N'Driver1', N'Driver1', N'1', 1, CAST(3000.00000 AS Decimal(19, 5)))
INSERT [dbo].[Driver] ([ID], [Version], [UserName], [Account], [Password], [IsActive], [BasicSalary]) VALUES (2, 0, N'Driver2', N'Driver2', N'1', 1, CAST(3000.00000 AS Decimal(19, 5)))
SET IDENTITY_INSERT [dbo].[Driver] OFF
/****** Object:  Table [dbo].[Dictionary]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dictionary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[Name] [nvarchar](20) NULL,
	[Type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Dictionary] ON
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (1, 0, N'重庆市', 1)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (2, 0, N'北京市', 1)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (3, 0, N'四川省', 1)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (4, 0, N'路桥费', 2)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (5, 0, N'加油费', 2)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (6, 0, N'车辆维护费', 2)
INSERT [dbo].[Dictionary] ([ID], [Version], [Name], [Type]) VALUES (7, 0, N'其它可报销费用', 2)
SET IDENTITY_INSERT [dbo].[Dictionary] OFF
/****** Object:  Table [dbo].[SystemUser]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[SystemUser] ON
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (1, 0, N'管理员', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (2, 0, N'超级用户', N'sa', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (3, 0, N'测试权限', N'test', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (4, 0, N'业务员', N'ywy', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (5, 0, N'调度员', N'ddy', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (6, 0, N'司机', N'sj', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (7, 0, N'财务', N'cw', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[SystemUser] ([ID], [Version], [UserName], [Account], [Password], [IsActive]) VALUES (8, 0, N'决策分析', N'jc', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
SET IDENTITY_INSERT [dbo].[SystemUser] OFF
/****** Object:  Table [dbo].[SystemSetting]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[DataBaseVersion] [int] NOT NULL,
	[DefaultPassword] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[SystemSetting] ON
INSERT [dbo].[SystemSetting] ([ID], [Version], [DataBaseVersion], [DefaultPassword]) VALUES (1, 0, 1, N'E10ADC3949BA59ABBE56E057F20F883E')
SET IDENTITY_INSERT [dbo].[SystemSetting] OFF
/****** Object:  Table [dbo].[SystemFunction]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SystemFunction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SystemFunction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[SystemFunctionName] [nvarchar](20) NOT NULL,
	[ClassName] [nvarchar](200) NOT NULL,
	[ControllerName] [nvarchar](50) NULL,
	[ActionName] [nvarchar](200) NULL,
	[Idx] [int] NULL,
	[IsShow] [bit] NULL,
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[SystemFunction] ON
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (1, 0, N'控制面板', N'', NULL, NULL, 100, 1, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (2, 0, N'用户管理', N'ZDSoft.LMS.Web.Controllers.UserController', N'User', N'Index', 0, 1, 1)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (3, 0, N'角色管理', N'ZDSoft.LMS.Web.Controllers.RoleController', N'Role', N'Index', 0, 1, 1)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (4, 0, N'权限管理', N'ZDSoft.LMS.Web.Controllers.AuthorizeController', N'Authorize', N'Index', 0, 0, 1)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (5, 0, N'修改密码', N'ZDSoft.LMS.Web.Controllers.UserController', N'User', N'ChangePassword', 0, 1, 1)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (6, 0, N'首页', N'ZDSoft.LMS.Web.Controllers.HomeController', N'Home', N'Index', 1, 1, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (7, 0, N'业务管理', N'', NULL, NULL, 10, 1, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (8, 0, N'接单管理', N'ZDSoft.LMS.Web.Controllers.TransportOrderController', N'TransportOrder', N'Index', 0, 1, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (9, 0, N'调度管理', N'ZDSoft.LMS.Web.Controllers.DispatchController', N'Dispatch', N'Index', 0, 1, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (10, 0, N'业务跟踪', N'ZDSoft.LMS.Web.Controllers.TraceController', N'Trace', N'Index', 0, 0, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (11, 0, N'送货单管理', N'ZDSoft.LMS.Web.Controllers.DeliveryFormController', N'DeliveryForm', N'Index', 0, 1, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (12, 0, N'回车报销', N'ZDSoft.LMS.Web.Controllers.BillingController', N'Billing', N'Index', 0, 1, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (13, 0, N'决策分析', N'', NULL, NULL, 80, 0, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (14, 0, N'创建货物运单', N'ZDSoft.LMS.Web.Controllers.TransportOrderController', N'TransportOrder', N'Create', 0, 1, 7)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (15, 0, N'报表管理', N'', NULL, NULL, 60, 0, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (16, 0, N'创建月报表', N'ZDSoft.LMS.Web.Controllers.ReportController', N'Report', N'CreateMonthly', 0, 1, 15)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (17, 0, N'创建年报表', N'ZDSoft.LMS.Web.Controllers.ReportController', N'Report', N'CreateYearly', 0, 1, 15)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (18, 0, N'工资管理', N'ZDSoft.LMS.Web.Controllers.SalaryController', N'Salary', N'Index', 70, 1, NULL)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (19, 0, N'月度分析', N'ZDSoft.LMS.Web.Controllers.AnalysisController', N'Analysis', N'MonthlyAnalysis', 0, 1, 13)
INSERT [dbo].[SystemFunction] ([ID], [Version], [SystemFunctionName], [ClassName], [ControllerName], [ActionName], [Idx], [IsShow], [ParentID]) VALUES (20, 0, N'季度分析', N'ZDSoft.LMS.Web.Controllers.AnalysisController', N'Analysis', N'SeasonAnalysis', 0, 1, 13)
SET IDENTITY_INSERT [dbo].[SystemFunction] OFF
/****** Object:  Table [dbo].[Client]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[Name] [nvarchar](8) NOT NULL,
	[Telephone] [nvarchar](12) NOT NULL,
	[Address] [nvarchar](20) NOT NULL,
	[PostNumber] [nvarchar](6) NOT NULL,
	[Email] [nvarchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vehicle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[VehicleNumber] [nvarchar](50) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[VehicleType] [nvarchar](50) NOT NULL,
	[LoadCount] [decimal](19, 5) NOT NULL,
	[MonthlyDepreciation] [decimal](19, 5) NOT NULL,
	[LoadedFuelConsumption] [decimal](19, 5) NOT NULL,
	[EmptyFuelConsumption] [decimal](19, 5) NOT NULL,
	[GenerateNumber] [nvarchar](50) NOT NULL,
	[InsuranceNumber] [nvarchar](50) NOT NULL,
	[FrameNumber] [nvarchar](50) NOT NULL,
	[ChassisNumber] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON
INSERT [dbo].[Vehicle] ([ID], [Version], [VehicleNumber], [DepartmentName], [VehicleType], [LoadCount], [MonthlyDepreciation], [LoadedFuelConsumption], [EmptyFuelConsumption], [GenerateNumber], [InsuranceNumber], [FrameNumber], [ChassisNumber]) VALUES (1, 0, N'渝A23123', N'三五运输', N'Big', CAST(20.00000 AS Decimal(19, 5)), CAST(15000.00000 AS Decimal(19, 5)), CAST(3.00000 AS Decimal(19, 5)), CAST(3.00000 AS Decimal(19, 5)), N'F4324324', N'b000001', N'2', N'D123')
INSERT [dbo].[Vehicle] ([ID], [Version], [VehicleNumber], [DepartmentName], [VehicleType], [LoadCount], [MonthlyDepreciation], [LoadedFuelConsumption], [EmptyFuelConsumption], [GenerateNumber], [InsuranceNumber], [FrameNumber], [ChassisNumber]) VALUES (2, 0, N'渝A23124', N'三五运输', N'Middle', CAST(20.00000 AS Decimal(19, 5)), CAST(15000.00000 AS Decimal(19, 5)), CAST(3.00000 AS Decimal(19, 5)), CAST(3.00000 AS Decimal(19, 5)), N'F4324141324321', N'b000002', N'2', N'D124')
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
/****** Object:  Table [dbo].[User_Role]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User_Role](
	[RoleID] [int] NOT NULL,
	[UserID] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (1, 4)
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (2, 5)
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (3, 4)
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (4, 7)
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (5, 1)
INSERT [dbo].[User_Role] ([RoleID], [UserID]) VALUES (6, 2)
/****** Object:  Table [dbo].[TransportOrder]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransportOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[StartStation] [nvarchar](30) NOT NULL,
	[Destionation] [nvarchar](30) NOT NULL,
	[DeliveryType] [int] NULL,
	[StartStationLocation] [nvarchar](30) NOT NULL,
	[DeliveryLocation] [nvarchar](30) NOT NULL,
	[CommissionedorRemark] [nvarchar](1000) NOT NULL,
	[TransportorRemark] [nvarchar](1000) NOT NULL,
	[Price] [float] NOT NULL,
	[AttachedFile] [nvarchar](1000) NOT NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ProvinceID] [int] NULL,
	[CommisionedorID] [int] NULL,
	[ReceiverID] [int] NULL,
	[CreatorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role_SystemFunction]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role_SystemFunction](
	[RoleID] [int] NOT NULL,
	[SystemFunctionID] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 7)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 8)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (1, 14)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (2, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (2, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (2, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 7)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 8)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (3, 14)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 2)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 3)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 4)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (5, 7)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (2, 9)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (2, 10)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 12)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 16)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 17)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (4, 18)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 1)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 2)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 3)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 4)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 5)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 6)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 7)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 8)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 9)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 10)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 11)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 12)
INSERT [dbo].[Role_SystemFunction] ([RoleID], [SystemFunctionID]) VALUES (6, 13)
/****** Object:  Table [dbo].[DeliveryForm]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeliveryForm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DeliveryForm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[TransportCarID] [int] NULL,
	[TransporterID] [int] NULL,
	[CreatorID] [int] NULL,
	[TranportOrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TranportOrderItem]    Script Date: 03/03/2014 10:12:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TranportOrderItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[CargoName] [nvarchar](20) NOT NULL,
	[CabinetSort] [nvarchar](20) NOT NULL,
	[CabinetType] [nvarchar](20) NOT NULL,
	[Counter] [int] NOT NULL,
	[CabinetNumber] [nvarchar](20) NOT NULL,
	[SealedNumber] [nvarchar](20) NOT NULL,
	[TransportFee] [decimal](19, 5) NOT NULL,
	[TranportOrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Billing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Billing](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[CreateDate] [datetime] NULL,
	[DeliveryFormID] [int] NULL,
	[CreatorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BillingItem]    Script Date: 03/03/2014 10:12:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillingItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BillingItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [int] NULL,
	[ItemName] [nvarchar](100) NOT NULL,
	[Fee] [decimal](19, 5) NULL,
	[Remark] [nvarchar](500) NULL,
	[BillingID] [int] NULL,
	[DictionaryID] [int] NULL,
	[CostorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK157C5AB0826AE614]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK157C5AB0826AE614] FOREIGN KEY([CreatorID])
REFERENCES [dbo].[SystemUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK157C5AB0826AE614]
GO
/****** Object:  ForeignKey [FK157C5AB0B83FEBBF]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0B83FEBBF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK157C5AB0B83FEBBF] FOREIGN KEY([DeliveryFormID])
REFERENCES [dbo].[DeliveryForm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK157C5AB0B83FEBBF]') AND parent_object_id = OBJECT_ID(N'[dbo].[Billing]'))
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK157C5AB0B83FEBBF]
GO
/****** Object:  ForeignKey [FK3D9907E17C2A16DA]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E17C2A16DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem]  WITH CHECK ADD  CONSTRAINT [FK3D9907E17C2A16DA] FOREIGN KEY([CostorID])
REFERENCES [dbo].[SystemUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E17C2A16DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] CHECK CONSTRAINT [FK3D9907E17C2A16DA]
GO
/****** Object:  ForeignKey [FK3D9907E1925954FB]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1925954FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem]  WITH CHECK ADD  CONSTRAINT [FK3D9907E1925954FB] FOREIGN KEY([DictionaryID])
REFERENCES [dbo].[Dictionary] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1925954FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] CHECK CONSTRAINT [FK3D9907E1925954FB]
GO
/****** Object:  ForeignKey [FK3D9907E1DF0B88A1]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1DF0B88A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem]  WITH CHECK ADD  CONSTRAINT [FK3D9907E1DF0B88A1] FOREIGN KEY([BillingID])
REFERENCES [dbo].[Billing] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK3D9907E1DF0B88A1]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillingItem]'))
ALTER TABLE [dbo].[BillingItem] CHECK CONSTRAINT [FK3D9907E1DF0B88A1]
GO
/****** Object:  ForeignKey [FKF52FC5B4372FBDC9]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4372FBDC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm]  WITH CHECK ADD  CONSTRAINT [FKF52FC5B4372FBDC9] FOREIGN KEY([TransporterID])
REFERENCES [dbo].[Driver] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4372FBDC9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] CHECK CONSTRAINT [FKF52FC5B4372FBDC9]
GO
/****** Object:  ForeignKey [FKF52FC5B470125470]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B470125470]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm]  WITH CHECK ADD  CONSTRAINT [FKF52FC5B470125470] FOREIGN KEY([TransportCarID])
REFERENCES [dbo].[Vehicle] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B470125470]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] CHECK CONSTRAINT [FKF52FC5B470125470]
GO
/****** Object:  ForeignKey [FKF52FC5B4826AE614]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm]  WITH CHECK ADD  CONSTRAINT [FKF52FC5B4826AE614] FOREIGN KEY([CreatorID])
REFERENCES [dbo].[SystemUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] CHECK CONSTRAINT [FKF52FC5B4826AE614]
GO
/****** Object:  ForeignKey [FKF52FC5B4C38DA29D]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm]  WITH CHECK ADD  CONSTRAINT [FKF52FC5B4C38DA29D] FOREIGN KEY([TranportOrderID])
REFERENCES [dbo].[TransportOrder] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKF52FC5B4C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[DeliveryForm]'))
ALTER TABLE [dbo].[DeliveryForm] CHECK CONSTRAINT [FKF52FC5B4C38DA29D]
GO
/****** Object:  ForeignKey [FK2FB4195C4C7560E5]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195C4C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction]  WITH CHECK ADD  CONSTRAINT [FK2FB4195C4C7560E5] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195C4C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] CHECK CONSTRAINT [FK2FB4195C4C7560E5]
GO
/****** Object:  ForeignKey [FK2FB4195CC4571880]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195CC4571880]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction]  WITH CHECK ADD  CONSTRAINT [FK2FB4195CC4571880] FOREIGN KEY([SystemFunctionID])
REFERENCES [dbo].[SystemFunction] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK2FB4195CC4571880]') AND parent_object_id = OBJECT_ID(N'[dbo].[Role_SystemFunction]'))
ALTER TABLE [dbo].[Role_SystemFunction] CHECK CONSTRAINT [FK2FB4195CC4571880]
GO
/****** Object:  ForeignKey [FK79D7D46D43904E6]    Script Date: 03/03/2014 10:12:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK79D7D46D43904E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemFunction]'))
ALTER TABLE [dbo].[SystemFunction]  WITH CHECK ADD  CONSTRAINT [FK79D7D46D43904E6] FOREIGN KEY([ParentID])
REFERENCES [dbo].[SystemFunction] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK79D7D46D43904E6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SystemFunction]'))
ALTER TABLE [dbo].[SystemFunction] CHECK CONSTRAINT [FK79D7D46D43904E6]
GO
/****** Object:  ForeignKey [FK9E03B252C38DA29D]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK9E03B252C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]'))
ALTER TABLE [dbo].[TranportOrderItem]  WITH CHECK ADD  CONSTRAINT [FK9E03B252C38DA29D] FOREIGN KEY([TranportOrderID])
REFERENCES [dbo].[TransportOrder] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK9E03B252C38DA29D]') AND parent_object_id = OBJECT_ID(N'[dbo].[TranportOrderItem]'))
ALTER TABLE [dbo].[TranportOrderItem] CHECK CONSTRAINT [FK9E03B252C38DA29D]
GO
/****** Object:  ForeignKey [FK7F8230855F6246DA]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F8230855F6246DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder]  WITH CHECK ADD  CONSTRAINT [FK7F8230855F6246DA] FOREIGN KEY([CommisionedorID])
REFERENCES [dbo].[Client] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F8230855F6246DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] CHECK CONSTRAINT [FK7F8230855F6246DA]
GO
/****** Object:  ForeignKey [FK7F823085826AE614]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder]  WITH CHECK ADD  CONSTRAINT [FK7F823085826AE614] FOREIGN KEY([CreatorID])
REFERENCES [dbo].[SystemUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085826AE614]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] CHECK CONSTRAINT [FK7F823085826AE614]
GO
/****** Object:  ForeignKey [FK7F82308598ED6E69]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F82308598ED6E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder]  WITH CHECK ADD  CONSTRAINT [FK7F82308598ED6E69] FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Dictionary] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F82308598ED6E69]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] CHECK CONSTRAINT [FK7F82308598ED6E69]
GO
/****** Object:  ForeignKey [FK7F823085F36A1D5A]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085F36A1D5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder]  WITH CHECK ADD  CONSTRAINT [FK7F823085F36A1D5A] FOREIGN KEY([ReceiverID])
REFERENCES [dbo].[Client] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK7F823085F36A1D5A]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransportOrder]'))
ALTER TABLE [dbo].[TransportOrder] CHECK CONSTRAINT [FK7F823085F36A1D5A]
GO
/****** Object:  ForeignKey [FK625C3C934C7560E5]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C934C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK625C3C934C7560E5] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C934C7560E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK625C3C934C7560E5]
GO
/****** Object:  ForeignKey [FK625C3C937D00C015]    Script Date: 03/03/2014 10:12:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C937D00C015]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK625C3C937D00C015] FOREIGN KEY([UserID])
REFERENCES [dbo].[SystemUser] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK625C3C937D00C015]') AND parent_object_id = OBJECT_ID(N'[dbo].[User_Role]'))
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK625C3C937D00C015]
GO
