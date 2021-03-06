USE [dsdProjectTemplate]
GO
DROP PROCEDURE IF EXISTS [dbo].[usp_IsValidateUserRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSubMenu]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSubMenu] DROP CONSTRAINT IF EXISTS [FK_UserSubMenu_UserMainMenu]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSubMenu]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSubMenu] DROP CONSTRAINT IF EXISTS [FK_MenuHeaderAssignment_MenuConfiguration]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[UsersRoles] DROP CONSTRAINT IF EXISTS [FK_UsersRoles_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]') AND type in (N'U'))
ALTER TABLE [dbo].[UsersPendingSteps] DROP CONSTRAINT IF EXISTS [FK_UsersPendingSteps_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]') AND type in (N'U'))
ALTER TABLE [dbo].[UsersPendingSteps] DROP CONSTRAINT IF EXISTS [FK_UsersPendingSteps_PendingStepsInfo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersLoginPasswords]') AND type in (N'U'))
ALTER TABLE [dbo].[UsersLoginPasswords] DROP CONSTRAINT IF EXISTS [FK_UsersLoginPasswords_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [FK_Users_UserType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMainMenu]') AND type in (N'U'))
ALTER TABLE [dbo].[UserMainMenu] DROP CONSTRAINT IF EXISTS [FK_UserMainMenu_MenuConfiguration]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMainMenu]') AND type in (N'U'))
ALTER TABLE [dbo].[UserMainMenu] DROP CONSTRAINT IF EXISTS [FK_MenuHeaderConfiguration_UsersRoles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoftwareUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[SoftwareUsers] DROP CONSTRAINT IF EXISTS [FK_SoftwareUsers_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationRequestTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[RegistrationRequestTypes] DROP CONSTRAINT IF EXISTS [FK_RegistrationRequestTypes_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersUsers] DROP CONSTRAINT IF EXISTS [FK_ProvidersUsers_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersUsers] DROP CONSTRAINT IF EXISTS [FK_ProvidersUsers_Providers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersLocation] DROP CONSTRAINT IF EXISTS [FK_ProvidersLocation_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersLocation] DROP CONSTRAINT IF EXISTS [FK_ProvidersLocation_ProvidersContactInformation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersLocation] DROP CONSTRAINT IF EXISTS [FK_ProvidersLocation_Providers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersLocation] DROP CONSTRAINT IF EXISTS [FK_ProvidersLocation_Counties]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersContactTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersContactTypes] DROP CONSTRAINT IF EXISTS [FK_ProvidersContactTypes_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersContactInformation] DROP CONSTRAINT IF EXISTS [FK_ProvidersContractInformation_ProvidersContactTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ProvidersContactInformation] DROP CONSTRAINT IF EXISTS [FK_ProvidersContactInformation_Providers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Providers]') AND type in (N'U'))
ALTER TABLE [dbo].[Providers] DROP CONSTRAINT IF EXISTS [FK_Providers_ProvidersContactInformation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Providers]') AND type in (N'U'))
ALTER TABLE [dbo].[Providers] DROP CONSTRAINT IF EXISTS [FK_Providers_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationYears]') AND type in (N'U'))
ALTER TABLE [dbo].[OrganizationYears] DROP CONSTRAINT IF EXISTS [FK_OrganizationYears_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[OrganizationUsers] DROP CONSTRAINT IF EXISTS [FK_OrganizationUsers_UsersRoles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[OrganizationUsers] DROP CONSTRAINT IF EXISTS [FK_OrganizationUsers_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[OrganizationUsers] DROP CONSTRAINT IF EXISTS [FK_OrganizationUsers_RegistrationRequestTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[OrganizationUsers] DROP CONSTRAINT IF EXISTS [FK_OrganizationUsers_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type in (N'U'))
ALTER TABLE [dbo].[Organizations] DROP CONSTRAINT IF EXISTS [FK_Organizations_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type in (N'U'))
ALTER TABLE [dbo].[Organizations] DROP CONSTRAINT IF EXISTS [FK_Organizations_Cities]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsListControlValues]') AND type in (N'U'))
ALTER TABLE [dbo].[FormsListControlValues] DROP CONSTRAINT IF EXISTS [FK_Forms_ListControls_Values_FormsControls]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsGroups]') AND type in (N'U'))
ALTER TABLE [dbo].[FormsGroups] DROP CONSTRAINT IF EXISTS [FK_FormsGroups_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsData]') AND type in (N'U'))
ALTER TABLE [dbo].[FormsData] DROP CONSTRAINT IF EXISTS [FK_FormsData_FormsControls]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsData]') AND type in (N'U'))
ALTER TABLE [dbo].[FormsData] DROP CONSTRAINT IF EXISTS [FK_FormsData_Forms]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsControls]') AND type in (N'U'))
ALTER TABLE [dbo].[FormsControls] DROP CONSTRAINT IF EXISTS [FK_FormsControls_Forms]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forms]') AND type in (N'U'))
ALTER TABLE [dbo].[Forms] DROP CONSTRAINT IF EXISTS [FK_Forms_OrganizationYears]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forms]') AND type in (N'U'))
ALTER TABLE [dbo].[Forms] DROP CONSTRAINT IF EXISTS [FK_Forms_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forms]') AND type in (N'U'))
ALTER TABLE [dbo].[Forms] DROP CONSTRAINT IF EXISTS [FK_Forms_FormsGroups]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Counties]') AND type in (N'U'))
ALTER TABLE [dbo].[Counties] DROP CONSTRAINT IF EXISTS [FK_Counties_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsUsers] DROP CONSTRAINT IF EXISTS [FK_ClientsUsers_Users]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsUsers] DROP CONSTRAINT IF EXISTS [FK_ClientsUsers_Clients]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsContactTypes] DROP CONSTRAINT IF EXISTS [FK_ClientsContactTypes_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsContactInformation] DROP CONSTRAINT IF EXISTS [FK_ClientsContactInformation_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsContactInformation] DROP CONSTRAINT IF EXISTS [FK_ClientsContactInformation_Counties]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsContactInformation] DROP CONSTRAINT IF EXISTS [FK_ClientsContactInformation_ContactTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientsContactInformation] DROP CONSTRAINT IF EXISTS [FK_ClientsContactInformation_Cities]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_Organizations]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_Gender]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_Counties]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_ClientsContactInformation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT IF EXISTS [FK_Clients_Cities]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cities]') AND type in (N'U'))
ALTER TABLE [dbo].[Cities] DROP CONSTRAINT IF EXISTS [FK_Cities_States]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF_Users_ProfilePicture]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoftwareUsers]') AND type in (N'U'))
ALTER TABLE [dbo].[SoftwareUsers] DROP CONSTRAINT IF EXISTS [DF_SoftwareUsers_IsSuperAdmin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type in (N'U'))
ALTER TABLE [dbo].[Organizations] DROP CONSTRAINT IF EXISTS [DF_Organizations_IsAdminOnly]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type in (N'U'))
ALTER TABLE [dbo].[Organizations] DROP CONSTRAINT IF EXISTS [DF_Organizations_ParentOrganizationId]
GO
DROP TABLE IF EXISTS [dbo].[UserType]
GO
DROP TABLE IF EXISTS [dbo].[UserSubMenu]
GO
DROP TABLE IF EXISTS [dbo].[UsersRoles]
GO
DROP TABLE IF EXISTS [dbo].[UsersPendingSteps]
GO
DROP TABLE IF EXISTS [dbo].[UsersLoginPasswords]
GO
DROP TABLE IF EXISTS [dbo].[Users]
GO
DROP TABLE IF EXISTS [dbo].[UserMainMenu]
GO
DROP TABLE IF EXISTS [dbo].[States]
GO
DROP TABLE IF EXISTS [dbo].[SoftwareUsers]
GO
DROP TABLE IF EXISTS [dbo].[SecurityQuestions]
GO
DROP TABLE IF EXISTS [dbo].[RegistrationRequestTypes]
GO
DROP TABLE IF EXISTS [dbo].[ProvidersUsers]
GO
DROP TABLE IF EXISTS [dbo].[ProvidersLocation]
GO
DROP TABLE IF EXISTS [dbo].[ProvidersContactTypes]
GO
DROP TABLE IF EXISTS [dbo].[ProvidersContactInformation]
GO
DROP TABLE IF EXISTS [dbo].[Providers]
GO
DROP TABLE IF EXISTS [dbo].[PendingStepsInfo]
GO
DROP TABLE IF EXISTS [dbo].[OrganizationYears]
GO
DROP TABLE IF EXISTS [dbo].[OrganizationUsers]
GO
DROP TABLE IF EXISTS [dbo].[Organizations]
GO
DROP TABLE IF EXISTS [dbo].[MenuConfiguration]
GO
DROP TABLE IF EXISTS [dbo].[Gender]
GO
DROP TABLE IF EXISTS [dbo].[FormsListControlValues]
GO
DROP TABLE IF EXISTS [dbo].[FormsGroups]
GO
DROP TABLE IF EXISTS [dbo].[FormsData]
GO
DROP TABLE IF EXISTS [dbo].[FormsControls]
GO
DROP TABLE IF EXISTS [dbo].[Forms]
GO
DROP TABLE IF EXISTS [dbo].[ErrorLogs]
GO
DROP TABLE IF EXISTS [dbo].[Counties]
GO
DROP TABLE IF EXISTS [dbo].[ClientsUsers]
GO
DROP TABLE IF EXISTS [dbo].[ClientsContactTypes]
GO
DROP TABLE IF EXISTS [dbo].[ClientsContactInformation]
GO
DROP TABLE IF EXISTS [dbo].[Clients]
GO
DROP TABLE IF EXISTS [dbo].[Cities]
GO
DROP TABLE IF EXISTS [dbo].[AppAreas]
GO
DROP TABLE IF EXISTS [dbo].[AppActionsHistory]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppActionsHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppActionsHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NULL,
	[PrimaryKeyId] [bigint] NULL,
	[ActionType] [varchar](50) NULL,
	[OrganizationId] [bigint] NULL,
	[Data] [nvarchar](max) NULL,
	[UserId] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_AppActionHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppAreas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppAreas](
	[Id] [int] NOT NULL,
	[AreaName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AppAreas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CityName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[PrimaryContactId] [bigint] NULL,
	[ClientFileNumber] [int] NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NULL,
	[NickName] [nvarchar](100) NULL,
	[SSN] [nvarchar](10) NULL,
	[DOB] [datetime] NULL,
	[GenderId] [int] NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CityId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[ZipCode] [nvarchar](50) NULL,
	[CountyId] [int] NOT NULL,
	[CellPhoneNumber] [nvarchar](10) NULL,
	[HomePhoneNumber] [nvarchar](10) NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[CanWeSendCellPhoneSMS] [bit] NOT NULL,
	[CanWeSendEmailNotifications] [bit] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientsContactInformation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientId] [bigint] NOT NULL,
	[ContactTypeId] [int] NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NULL,
	[NickName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CityId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[ZipCode] [nvarchar](10) NULL,
	[CountyId] [int] NOT NULL,
	[CellPhoneNumber] [nvarchar](10) NULL,
	[HomePhoneNumber] [nvarchar](10) NULL,
	[WorkPhoneNumber] [nvarchar](10) NULL,
	[WorkPhoneExt] [nvarchar](10) NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[CanWeSendCellPhoneSMS] [bit] NOT NULL,
	[CanWeSendEmailNotifications] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ClientContactInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsContactTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientsContactTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[ContactTypeName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContactTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientsUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientsUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_ClientsUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Counties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Counties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[CountyName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ErrorLogs](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[LogType] [varchar](20) NULL,
	[LogTitle] [varchar](1000) NULL,
	[LogMessage] [varchar](max) NULL,
	[ErrorSource] [varchar](max) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_ErrorLogs] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Forms](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[OrganizationYearId] [bigint] NULL,
	[FormGroupId] [bigint] NULL,
	[FormName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[VersionNumber] [bigint] NULL,
	[IconUrl] [varchar](500) NULL,
	[Header] [nvarchar](max) NULL,
	[Footer] [nvarchar](max) NULL,
	[FormStatus] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Forms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsControls]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormsControls](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FormId] [bigint] NULL,
	[Control_Type] [varchar](50) NULL,
	[Control_Label_Text] [nvarchar](200) NULL,
	[Control_Placeholder_Text] [nvarchar](200) NULL,
	[IsRequired] [bit] NULL,
	[Validation_Message] [nvarchar](200) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FormsControls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormsData](
	[Id] [bigint] NOT NULL,
	[FormId] [bigint] NULL,
	[Form_Control_Id] [bigint] NULL,
	[Form_Control_Input_Data] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FormsData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormsGroups](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FormsGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormsListControlValues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormsListControlValues](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FormControl_Id] [bigint] NULL,
	[ValueText] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Forms_ListControls_Values] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gender]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderType] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Gender_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MenuConfiguration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MenuConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuKey] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[IsAdminOnly] [bit] NULL,
	[MenuController] [varchar](50) NULL,
	[MenuAction] [varchar](50) NULL,
	[MenuIcon] [varchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[AreaId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MenuConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Organizations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Organizations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentOrganizationId] [bigint] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[OrgCode] [nvarchar](10) NULL,
	[WorkNumber] [nvarchar](10) NOT NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[ContactEmail] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[ZipCode] [nvarchar](10) NOT NULL,
	[CityId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[IsAdminOnly] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[RoleId] [int] NULL,
	[RegistrationRequestTypeId] [int] NULL,
	[IsActive] [bit] NULL,
	[Note] [nvarchar](1000) NULL,
 CONSTRAINT [PK_OrganizationsOwners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrganizationYears]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrganizationYears](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[BeginDate] [date] NULL,
	[EndDate] [date] NULL,
	[ShortDescription] [nchar](100) NULL,
	[LongDescription] [nvarchar](1000) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FormYears] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PendingStepsInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PendingStepsInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PendingStepKey] [nvarchar](50) NULL,
	[PendingTitle] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PendingStepsInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Providers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Providers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[PrimaryContactId] [bigint] NULL,
	[ProviderFileNumber] [int] NOT NULL,
	[ProviderName] [nvarchar](100) NOT NULL,
	[FEIN] [int] NOT NULL,
	[LicenseNumber] [nvarchar](100) NOT NULL,
	[LicenseExpirationDate] [datetime] NOT NULL,
	[PrimaryPhoneNumber] [nvarchar](10) NOT NULL,
	[PrimaryFaxNumber] [nvarchar](10) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[FaceBook] [nvarchar](100) NULL,
	[TwitterAccount] [nvarchar](100) NULL,
	[InstagramAccount] [nvarchar](100) NULL,
	[ProdiverTypeId] [int] NOT NULL,
	[WaiverProvider] [bit] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProvidersContactInformation](
	[Id] [bigint] NOT NULL,
	[ProviderId] [bigint] NOT NULL,
	[ContactTypeId] [int] NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NULL,
	[NickName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[StateId] [int] NOT NULL,
	[ZipCode] [nvarchar](50) NULL,
	[CountyId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[CellPhoneNumber] [nvarchar](10) NULL,
	[WorkPhoneNumber] [nvarchar](10) NULL,
	[WorkPhoneExt] [nvarchar](10) NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[CanWeSendCellPhoneSMS] [bit] NOT NULL,
	[CanWeSendEmailNotifications] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProvidersContractInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersContactTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProvidersContactTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[ContactTypeName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProvidersContactTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProvidersLocation](
	[Id] [bigint] NOT NULL,
	[ProviderId] [bigint] NOT NULL,
	[PrimaryContactId] [bigint] NOT NULL,
	[LocationName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[StateId] [int] NOT NULL,
	[ZipCode] [nvarchar](50) NULL,
	[CountyId] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[PrimaryPhoneNumber] [nvarchar](10) NOT NULL,
	[PrimaryFaxNumber] [nvarchar](10) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProvidersLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProvidersUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProviderId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_ProvidersUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationRequestTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistrationRequestTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[TypeName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_RegistrationRequestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SecurityQuestions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SecurityQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](200) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SecurityQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SoftwareUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SoftwareUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IsSuperAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_SoftwareUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StatesMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMainMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserMainMenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[MenuID] [int] NULL,
	[MenuKey] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MenuHeaderConfiguration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NOT NULL,
	[ProfilePicture] [varchar](500) NULL,
	[SecurityQuestion1] [int] NULL,
	[AnswerSecurityQuestion1] [nvarchar](100) NULL,
	[SecurityQuestion2] [int] NULL,
	[AnswerSecurityQuestion2] [nvarchar](100) NULL,
	[SecurityQuestion3] [int] NULL,
	[AnswerSecurityQuestion3] [nvarchar](100) NULL,
	[PendingRegistration] [bit] NOT NULL,
	[RegistrationCellPhoneNumber] [nvarchar](15) NULL,
	[RegistrationWorkPhoneNumber] [nvarchar](15) NULL,
	[RegistrationWorkPhoneNumberExt] [nvarchar](15) NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[EmailTwoFactorAuthentication] [bit] NULL,
	[SMSTwoFactorAuthentication] [bit] NULL,
	[IsActive] [bit] NULL,
	[LastLoginDateTime] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_UsersName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersLoginPasswords]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersLoginPasswords](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[EncryptedPassword] [nvarchar](200) NOT NULL,
	[PasswordSalt] [nvarchar](200) NOT NULL,
	[SecurityToken] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UsersLoginPassword] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersPendingSteps](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[PendingStepId] [int] NOT NULL,
	[IsComplete] [bit] NULL,
	[CompletedDate] [datetime] NULL,
	[IsMandatory] [bit] NULL,
 CONSTRAINT [PK_UsersPendingSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsersRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [bigint] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[CanAddRecords] [bit] NOT NULL,
	[CanEditRecords] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UsersRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSubMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserSubMenu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MenuHeaderID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[DisplayName] [nchar](200) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MenuHeaderAssignment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ClientType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organizations_ParentOrganizationId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Organizations] ADD  CONSTRAINT [DF_Organizations_ParentOrganizationId]  DEFAULT ((0)) FOR [ParentOrganizationId]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Organizations_IsAdminOnly]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Organizations] ADD  CONSTRAINT [DF_Organizations_IsAdminOnly]  DEFAULT ((0)) FOR [IsAdminOnly]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SoftwareUsers_IsSuperAdmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SoftwareUsers] ADD  CONSTRAINT [DF_SoftwareUsers_IsSuperAdmin]  DEFAULT ((0)) FOR [IsSuperAdmin]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_ProfilePicture]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ProfilePicture]  DEFAULT ('https://image.flaticon.com/icons/png/512/1946/1946429.png') FOR [ProfilePicture]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cities_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cities]'))
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Cities_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cities]'))
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Cities]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_ClientsContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_ClientsContactInformation] FOREIGN KEY([PrimaryContactId])
REFERENCES [dbo].[ClientsContactInformation] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_ClientsContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_ClientsContactInformation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Counties] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Counties]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Gender]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Clients_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Clients]'))
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ClientsContactInformation_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation] CHECK CONSTRAINT [FK_ClientsContactInformation_Cities]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_ContactTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ClientsContactInformation_ContactTypes] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ClientsContactTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_ContactTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation] CHECK CONSTRAINT [FK_ClientsContactInformation_ContactTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ClientsContactInformation_Counties] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation] CHECK CONSTRAINT [FK_ClientsContactInformation_Counties]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ClientsContactInformation_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactInformation_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactInformation]'))
ALTER TABLE [dbo].[ClientsContactInformation] CHECK CONSTRAINT [FK_ClientsContactInformation_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactTypes]'))
ALTER TABLE [dbo].[ClientsContactTypes]  WITH CHECK ADD  CONSTRAINT [FK_ClientsContactTypes_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsContactTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsContactTypes]'))
ALTER TABLE [dbo].[ClientsContactTypes] CHECK CONSTRAINT [FK_ClientsContactTypes_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsUsers_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsUsers]'))
ALTER TABLE [dbo].[ClientsUsers]  WITH CHECK ADD  CONSTRAINT [FK_ClientsUsers_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsUsers_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsUsers]'))
ALTER TABLE [dbo].[ClientsUsers] CHECK CONSTRAINT [FK_ClientsUsers_Clients]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsUsers]'))
ALTER TABLE [dbo].[ClientsUsers]  WITH CHECK ADD  CONSTRAINT [FK_ClientsUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientsUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientsUsers]'))
ALTER TABLE [dbo].[ClientsUsers] CHECK CONSTRAINT [FK_ClientsUsers_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Counties_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Counties]'))
ALTER TABLE [dbo].[Counties]  WITH CHECK ADD  CONSTRAINT [FK_Counties_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Counties_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Counties]'))
ALTER TABLE [dbo].[Counties] CHECK CONSTRAINT [FK_Counties_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_FormsGroups]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_FormsGroups] FOREIGN KEY([FormGroupId])
REFERENCES [dbo].[FormsGroups] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_FormsGroups]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_FormsGroups]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_OrganizationYears]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_OrganizationYears] FOREIGN KEY([OrganizationYearId])
REFERENCES [dbo].[OrganizationYears] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_OrganizationYears]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forms]'))
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_OrganizationYears]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsControls_Forms]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsControls]'))
ALTER TABLE [dbo].[FormsControls]  WITH CHECK ADD  CONSTRAINT [FK_FormsControls_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsControls_Forms]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsControls]'))
ALTER TABLE [dbo].[FormsControls] CHECK CONSTRAINT [FK_FormsControls_Forms]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsData_Forms]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsData]'))
ALTER TABLE [dbo].[FormsData]  WITH CHECK ADD  CONSTRAINT [FK_FormsData_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsData_Forms]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsData]'))
ALTER TABLE [dbo].[FormsData] CHECK CONSTRAINT [FK_FormsData_Forms]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsData_FormsControls]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsData]'))
ALTER TABLE [dbo].[FormsData]  WITH CHECK ADD  CONSTRAINT [FK_FormsData_FormsControls] FOREIGN KEY([Form_Control_Id])
REFERENCES [dbo].[FormsControls] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsData_FormsControls]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsData]'))
ALTER TABLE [dbo].[FormsData] CHECK CONSTRAINT [FK_FormsData_FormsControls]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsGroups_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsGroups]'))
ALTER TABLE [dbo].[FormsGroups]  WITH CHECK ADD  CONSTRAINT [FK_FormsGroups_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FormsGroups_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsGroups]'))
ALTER TABLE [dbo].[FormsGroups] CHECK CONSTRAINT [FK_FormsGroups_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_ListControls_Values_FormsControls]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsListControlValues]'))
ALTER TABLE [dbo].[FormsListControlValues]  WITH CHECK ADD  CONSTRAINT [FK_Forms_ListControls_Values_FormsControls] FOREIGN KEY([FormControl_Id])
REFERENCES [dbo].[FormsControls] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forms_ListControls_Values_FormsControls]') AND parent_object_id = OBJECT_ID(N'[dbo].[FormsListControlValues]'))
ALTER TABLE [dbo].[FormsListControlValues] CHECK CONSTRAINT [FK_Forms_ListControls_Values_FormsControls]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organizations_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organizations]'))
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organizations_Cities]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organizations]'))
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_Cities]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organizations_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organizations]'))
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_Organizations_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Organizations_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[Organizations]'))
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_Organizations_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationUsers_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers] CHECK CONSTRAINT [FK_OrganizationUsers_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_RegistrationRequestTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationUsers_RegistrationRequestTypes] FOREIGN KEY([RegistrationRequestTypeId])
REFERENCES [dbo].[RegistrationRequestTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_RegistrationRequestTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers] CHECK CONSTRAINT [FK_OrganizationUsers_RegistrationRequestTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers] CHECK CONSTRAINT [FK_OrganizationUsers_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_UsersRoles]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationUsers_UsersRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UsersRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationUsers_UsersRoles]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationUsers]'))
ALTER TABLE [dbo].[OrganizationUsers] CHECK CONSTRAINT [FK_OrganizationUsers_UsersRoles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationYears_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationYears]'))
ALTER TABLE [dbo].[OrganizationYears]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationYears_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrganizationYears_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrganizationYears]'))
ALTER TABLE [dbo].[OrganizationYears] CHECK CONSTRAINT [FK_OrganizationYears_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Providers_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Providers]'))
ALTER TABLE [dbo].[Providers]  WITH CHECK ADD  CONSTRAINT [FK_Providers_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Providers_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[Providers]'))
ALTER TABLE [dbo].[Providers] CHECK CONSTRAINT [FK_Providers_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Providers_ProvidersContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Providers]'))
ALTER TABLE [dbo].[Providers]  WITH CHECK ADD  CONSTRAINT [FK_Providers_ProvidersContactInformation] FOREIGN KEY([PrimaryContactId])
REFERENCES [dbo].[ProvidersContactInformation] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Providers_ProvidersContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Providers]'))
ALTER TABLE [dbo].[Providers] CHECK CONSTRAINT [FK_Providers_ProvidersContactInformation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContactInformation_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]'))
ALTER TABLE [dbo].[ProvidersContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersContactInformation_Providers] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Providers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContactInformation_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]'))
ALTER TABLE [dbo].[ProvidersContactInformation] CHECK CONSTRAINT [FK_ProvidersContactInformation_Providers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContractInformation_ProvidersContactTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]'))
ALTER TABLE [dbo].[ProvidersContactInformation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersContractInformation_ProvidersContactTypes] FOREIGN KEY([ContactTypeId])
REFERENCES [dbo].[ProvidersContactTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContractInformation_ProvidersContactTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactInformation]'))
ALTER TABLE [dbo].[ProvidersContactInformation] CHECK CONSTRAINT [FK_ProvidersContractInformation_ProvidersContactTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContactTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactTypes]'))
ALTER TABLE [dbo].[ProvidersContactTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersContactTypes_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersContactTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersContactTypes]'))
ALTER TABLE [dbo].[ProvidersContactTypes] CHECK CONSTRAINT [FK_ProvidersContactTypes_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersLocation_Counties] FOREIGN KEY([CountyId])
REFERENCES [dbo].[Counties] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_Counties]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation] CHECK CONSTRAINT [FK_ProvidersLocation_Counties]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersLocation_Providers] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Providers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation] CHECK CONSTRAINT [FK_ProvidersLocation_Providers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_ProvidersContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersLocation_ProvidersContactInformation] FOREIGN KEY([PrimaryContactId])
REFERENCES [dbo].[ProvidersContactInformation] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_ProvidersContactInformation]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation] CHECK CONSTRAINT [FK_ProvidersLocation_ProvidersContactInformation]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersLocation_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersLocation_States]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersLocation]'))
ALTER TABLE [dbo].[ProvidersLocation] CHECK CONSTRAINT [FK_ProvidersLocation_States]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersUsers_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]'))
ALTER TABLE [dbo].[ProvidersUsers]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersUsers_Providers] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[Providers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersUsers_Providers]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]'))
ALTER TABLE [dbo].[ProvidersUsers] CHECK CONSTRAINT [FK_ProvidersUsers_Providers]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]'))
ALTER TABLE [dbo].[ProvidersUsers]  WITH CHECK ADD  CONSTRAINT [FK_ProvidersUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProvidersUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProvidersUsers]'))
ALTER TABLE [dbo].[ProvidersUsers] CHECK CONSTRAINT [FK_ProvidersUsers_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequestTypes]'))
ALTER TABLE [dbo].[RegistrationRequestTypes]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationRequestTypes_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestTypes_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequestTypes]'))
ALTER TABLE [dbo].[RegistrationRequestTypes] CHECK CONSTRAINT [FK_RegistrationRequestTypes_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoftwareUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoftwareUsers]'))
ALTER TABLE [dbo].[SoftwareUsers]  WITH CHECK ADD  CONSTRAINT [FK_SoftwareUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SoftwareUsers_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[SoftwareUsers]'))
ALTER TABLE [dbo].[SoftwareUsers] CHECK CONSTRAINT [FK_SoftwareUsers_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MenuHeaderConfiguration_UsersRoles]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserMainMenu]'))
ALTER TABLE [dbo].[UserMainMenu]  WITH CHECK ADD  CONSTRAINT [FK_MenuHeaderConfiguration_UsersRoles] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UsersRoles] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MenuHeaderConfiguration_UsersRoles]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserMainMenu]'))
ALTER TABLE [dbo].[UserMainMenu] CHECK CONSTRAINT [FK_MenuHeaderConfiguration_UsersRoles]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserMainMenu_MenuConfiguration]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserMainMenu]'))
ALTER TABLE [dbo].[UserMainMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserMainMenu_MenuConfiguration] FOREIGN KEY([MenuID])
REFERENCES [dbo].[MenuConfiguration] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserMainMenu_MenuConfiguration]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserMainMenu]'))
ALTER TABLE [dbo].[UserMainMenu] CHECK CONSTRAINT [FK_UserMainMenu_MenuConfiguration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_UserType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserType] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_UserType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersLoginPasswords_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersLoginPasswords]'))
ALTER TABLE [dbo].[UsersLoginPasswords]  WITH CHECK ADD  CONSTRAINT [FK_UsersLoginPasswords_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersLoginPasswords_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersLoginPasswords]'))
ALTER TABLE [dbo].[UsersLoginPasswords] CHECK CONSTRAINT [FK_UsersLoginPasswords_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersPendingSteps_PendingStepsInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]'))
ALTER TABLE [dbo].[UsersPendingSteps]  WITH CHECK ADD  CONSTRAINT [FK_UsersPendingSteps_PendingStepsInfo] FOREIGN KEY([PendingStepId])
REFERENCES [dbo].[PendingStepsInfo] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersPendingSteps_PendingStepsInfo]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]'))
ALTER TABLE [dbo].[UsersPendingSteps] CHECK CONSTRAINT [FK_UsersPendingSteps_PendingStepsInfo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersPendingSteps_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]'))
ALTER TABLE [dbo].[UsersPendingSteps]  WITH CHECK ADD  CONSTRAINT [FK_UsersPendingSteps_Users] FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersPendingSteps_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersPendingSteps]'))
ALTER TABLE [dbo].[UsersPendingSteps] CHECK CONSTRAINT [FK_UsersPendingSteps_Users]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersRoles_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersRoles]'))
ALTER TABLE [dbo].[UsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersRoles_Organizations] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organizations] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsersRoles_Organizations]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsersRoles]'))
ALTER TABLE [dbo].[UsersRoles] CHECK CONSTRAINT [FK_UsersRoles_Organizations]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MenuHeaderAssignment_MenuConfiguration]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserSubMenu]'))
ALTER TABLE [dbo].[UserSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_MenuHeaderAssignment_MenuConfiguration] FOREIGN KEY([MenuID])
REFERENCES [dbo].[MenuConfiguration] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MenuHeaderAssignment_MenuConfiguration]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserSubMenu]'))
ALTER TABLE [dbo].[UserSubMenu] CHECK CONSTRAINT [FK_MenuHeaderAssignment_MenuConfiguration]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserSubMenu_UserMainMenu]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserSubMenu]'))
ALTER TABLE [dbo].[UserSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserSubMenu_UserMainMenu] FOREIGN KEY([MenuHeaderID])
REFERENCES [dbo].[UserMainMenu] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserSubMenu_UserMainMenu]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserSubMenu]'))
ALTER TABLE [dbo].[UserSubMenu] CHECK CONSTRAINT [FK_UserSubMenu_UserMainMenu]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_IsValidateUserRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_IsValidateUserRole] AS' 
END
GO
ALTER Proc	[dbo].[usp_IsValidateUserRole]
(
@UserRoleID int,
@MenuAction varchar(200),
@MenuController varchar(200)
)
as	
select usrMainMenu.id  from UserMainMenu as usrMainMenu
inner join 
MenuConfiguration as menuCon on menuCon.Id=usrMainMenu.MenuID and usrMainMenu.UserRoleID=@UserRoleID and menuCon.IsActive=1
and IsAdminOnly=0
 and menuCon.MenuController=@MenuController
-- and menuCon.MenuAction=@MenuAction
union all 

select uSubMenu.Id from UserSubMenu as uSubMenu
                    inner join
    UserMainMenu as uMainMenu on uMainMenu.Id=uSubMenu.MenuHeaderID  and uMainMenu.IsActive=1
     inner join 
 MenuConfiguration as menuCon on menuCon.Id=uSubMenu.MenuID and IsAdminOnly=0 and menuCon.IsActive=1
 and  uMainMenu.UserRoleID=@UserRoleID and menuCon.MenuController=@MenuController
 --and  menuCon.MenuAction=@MenuAction

                    
GO

GO
/****** Object:  Table [dbo].[MenuIcons]    Script Date: 11/11/2021 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuIcons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Value] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MenuIcons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

