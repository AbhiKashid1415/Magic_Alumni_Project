USE [master]
GO
/****** Object:  Database [AlumniProject]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE DATABASE [AlumniProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlumniProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AlumniProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlumniProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AlumniProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AlumniProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlumniProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlumniProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlumniProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlumniProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlumniProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlumniProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlumniProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AlumniProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlumniProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlumniProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlumniProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlumniProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlumniProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlumniProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlumniProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlumniProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AlumniProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlumniProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlumniProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlumniProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlumniProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlumniProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AlumniProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlumniProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AlumniProject] SET  MULTI_USER 
GO
ALTER DATABASE [AlumniProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlumniProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlumniProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlumniProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlumniProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AlumniProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AlumniProject] SET QUERY_STORE = OFF
GO
USE [AlumniProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTbl](
	[AdminId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdminTbl] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityTbl](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NULL,
	[StateId] [bigint] NOT NULL,
 CONSTRAINT [PK_CityTbl] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyAdminTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAdminTbl](
	[CompanyAdminId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [bigint] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[MobileNo] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[CityId] [bigint] NOT NULL,
 CONSTRAINT [PK_CompanyAdminTbl] PRIMARY KEY CLUSTERED 
(
	[CompanyAdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTbl](
	[CompanyId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
	[LogoPath] [nvarchar](max) NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[CityId] [bigint] NOT NULL,
	[WebsiteUrl] [nvarchar](max) NULL,
	[ContactPersonName] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompanyTbl] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTbl](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_CountryTbl] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventRegistrationTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventRegistrationTbl](
	[EventRegistrationId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[EventId] [bigint] NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[IsAccepted] [bit] NOT NULL,
	[AcceptedById] [bigint] NOT NULL,
 CONSTRAINT [PK_EventRegistrationTbl] PRIMARY KEY CLUSTERED 
(
	[EventRegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTbl](
	[EventId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventTitle] [nvarchar](max) NULL,
	[EventShortDesc] [nvarchar](max) NULL,
	[EventDateTime] [datetime2](7) NOT NULL,
	[EventLogo] [nvarchar](max) NULL,
	[EventType] [int] NOT NULL,
	[RegistrationFromDate] [datetime2](7) NOT NULL,
	[RegistrationToDate] [datetime2](7) NOT NULL,
	[MemberLimit] [bigint] NOT NULL,
	[EventMode] [int] NOT NULL,
	[CreatedById] [bigint] NOT NULL,
 CONSTRAINT [PK_EventTbl] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedsPhoto]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedsPhoto](
	[FeedsPhotoId] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedsId] [bigint] NOT NULL,
	[PhotoPathFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_FeedsPhoto] PRIMARY KEY CLUSTERED 
(
	[FeedsPhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedsTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedsTbl](
	[FeedsId] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedsDate] [datetime2](7) NOT NULL,
	[FeedsTitle] [nvarchar](max) NULL,
	[FeedType] [int] NOT NULL,
	[FeedsDescription] [nvarchar](max) NULL,
	[FeedStatus] [int] NOT NULL,
	[MemberId] [bigint] NOT NULL,
 CONSTRAINT [PK_FeedsTbl] PRIMARY KEY CLUSTERED 
(
	[FeedsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedsVideo]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedsVideo](
	[FeedsVideoId] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedsId] [bigint] NOT NULL,
	[VideoUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_FeedsVideo] PRIMARY KEY CLUSTERED 
(
	[FeedsVideoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTbl](
	[JobId] [bigint] IDENTITY(1,1) NOT NULL,
	[JobTitle] [nvarchar](max) NULL,
	[JobDescription] [nvarchar](max) NULL,
	[MinimumEducation] [nvarchar](max) NULL,
	[Experience] [nvarchar](max) NULL,
	[JobRole] [nvarchar](max) NULL,
	[IsOpen] [bit] NOT NULL,
	[CompanyName] [nvarchar](max) NULL,
	[ReferenceName] [nvarchar](max) NULL,
	[NoOfVacancies] [nvarchar](max) NULL,
	[AnyOtherInfo] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CompanyAdminId] [bigint] NOT NULL,
 CONSTRAINT [PK_JobTbl] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberConnectionRequestTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberConnectionRequestTbl](
	[MemberConnectionRequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestFromID] [bigint] NOT NULL,
	[RequestToID] [bigint] NOT NULL,
	[RequestDate] [datetime2](7) NOT NULL,
	[RequestStatus] [int] NOT NULL,
	[RequestNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_MemberConnectionRequestTbl] PRIMARY KEY CLUSTERED 
(
	[MemberConnectionRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberConnectionTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberConnectionTbl](
	[MemberConnectionId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[ConnectedMemberId] [bigint] NOT NULL,
	[ConnectionRequestId] [bigint] NOT NULL,
	[AcceptDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MemberConnectionTbl] PRIMARY KEY CLUSTERED 
(
	[MemberConnectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberCourseDetTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberCourseDetTbl](
	[MemberCourseDetId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[AttendedYear] [nvarchar](max) NULL,
 CONSTRAINT [PK_MemberCourseDetTbl] PRIMARY KEY CLUSTERED 
(
	[MemberCourseDetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberEducationTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberEducationTbl](
	[MemberEducationId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[EducationTitle] [nvarchar](max) NULL,
	[PassoutYear] [nvarchar](max) NULL,
	[UniversityOrCollegeName] [nvarchar](max) NULL,
	[GradeOrPercentage] [nvarchar](max) NULL,
 CONSTRAINT [PK_MemberEducationTbl] PRIMARY KEY CLUSTERED 
(
	[MemberEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberExperienceTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberExperienceTbl](
	[MemberExperienceId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[ExperienceTitle] [nvarchar](max) NULL,
	[ExperienceDuration] [float] NOT NULL,
	[ExperienceDescription] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[FromDate] [datetime2](7) NOT NULL,
	[ToDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MemberExperienceTbl] PRIMARY KEY CLUSTERED 
(
	[MemberExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberRequestTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberRequestTbl](
	[MemberRequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[RequestDate] [datetime2](7) NOT NULL,
	[RequestStatus] [int] NOT NULL,
 CONSTRAINT [PK_MemberRequestTbl] PRIMARY KEY CLUSTERED 
(
	[MemberRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberResumeTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberResumeTbl](
	[MemberResumeId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[ResumeFilePath] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[LastUpadatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_MemberResumeTbl] PRIMARY KEY CLUSTERED 
(
	[MemberResumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberSkillsTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberSkillsTbl](
	[MemberSkillsId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[SkillId] [bigint] NOT NULL,
	[Proficiency] [int] NOT NULL,
	[NoOfYears] [int] NOT NULL,
 CONSTRAINT [PK_MemberSkillsTbl] PRIMARY KEY CLUSTERED 
(
	[MemberSkillsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberTbl](
	[MemberId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[CityId] [bigint] NOT NULL,
	[DateOfBirth] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[EmailId] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[MobileNo] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_MemberTbl] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollOptionTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollOptionTbl](
	[PollOptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Option] [nvarchar](max) NULL,
	[IsCorrect] [bit] NOT NULL,
	[PollId] [bigint] NOT NULL,
 CONSTRAINT [PK_PollOptionTbl] PRIMARY KEY CLUSTERED 
(
	[PollOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollResponseOptionTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollResponseOptionTbl](
	[PollResponseOptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[PollResponseID] [bigint] NOT NULL,
	[PollOptionId] [bigint] NOT NULL,
 CONSTRAINT [PK_PollResponseOptionTbl] PRIMARY KEY CLUSTERED 
(
	[PollResponseOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollResponseTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollResponseTbl](
	[PollResponseId] [bigint] IDENTITY(1,1) NOT NULL,
	[PollResponseDate] [datetime2](7) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[PollId] [bigint] NOT NULL,
 CONSTRAINT [PK_PollResponseTbl] PRIMARY KEY CLUSTERED 
(
	[PollResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollTbl](
	[PollId] [bigint] IDENTITY(1,1) NOT NULL,
	[PollDate] [datetime2](7) NOT NULL,
	[PollStatus] [int] NOT NULL,
	[PollQuestion] [nvarchar](max) NULL,
	[CreatedById] [bigint] NOT NULL,
 CONSTRAINT [PK_PollTbl] PRIMARY KEY CLUSTERED 
(
	[PollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [bigint] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateTbl]    Script Date: 11-Dec-24 1:24:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateTbl](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](max) NULL,
	[CountryId] [bigint] NOT NULL,
 CONSTRAINT [PK_StateTbl] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241008111524_Init', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241010061129_AddMobiletoMember', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241011044303_AddAddressToMember', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241017050158_PollChanges', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241018085253_FeedChanges', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241023061942_MemberChanges', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241024125337_AddJobProfileTables', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241123135610_UpdateMemberSkillsSchema', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[AdminTbl] ON 

INSERT [dbo].[AdminTbl] ([AdminId], [FirstName], [LastName], [Address], [ContactNo], [EmailId], [Password]) VALUES (1, N'Abhishek', N'Kashid', N'Borawade', N'8275111415', N'percyakr11@gmail.com', N'4321')
SET IDENTITY_INSERT [dbo].[AdminTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[CityTbl] ON 

INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (1, N'Kolhapur', 1)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (2, N'Los Angeles', 2)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (3, N'Melbourne', 3)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (4, N'Gaziabad', 4)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (5, N'Miami', 6)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (6, N'Sydney', 5)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (7, N'Pune', 1)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (8, N'Muzaffarnagar', 4)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (9, N'Gowtham', 2)
INSERT [dbo].[CityTbl] ([CityId], [CityName], [StateId]) VALUES (10, N'New York', 2)
SET IDENTITY_INSERT [dbo].[CityTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyAdminTbl] ON 

INSERT [dbo].[CompanyAdminTbl] ([CompanyAdminId], [CompanyId], [FirstName], [LastName], [EmailId], [MobileNo], [Address], [Password], [CityId]) VALUES (1, 1, N'John', N'Wick', N'john@hotmail.com', N'9146154529', N'Borawade', N'1234', 1)
SET IDENTITY_INSERT [dbo].[CompanyAdminTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[CompanyTbl] ON 

INSERT [dbo].[CompanyTbl] ([CompanyId], [CompanyName], [Address], [EmailId], [ContactNo], [LogoPath], [RegistrationDate], [CityId], [WebsiteUrl], [ContactPersonName]) VALUES (1, N'Continental', N'Akurdi', N'continental@hotmail.com', N'7896321450', NULL, CAST(N'2024-10-08T00:00:00.0000000' AS DateTime2), 7, N'https://continental.com', N'Winston')
SET IDENTITY_INSERT [dbo].[CompanyTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[CountryTbl] ON 

INSERT [dbo].[CountryTbl] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[CountryTbl] ([CountryId], [CountryName]) VALUES (2, N'USA')
INSERT [dbo].[CountryTbl] ([CountryId], [CountryName]) VALUES (3, N'Australia')
SET IDENTITY_INSERT [dbo].[CountryTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[EventRegistrationTbl] ON 

INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (1, 6, 1, CAST(N'2024-10-16T07:14:02.4876859' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (2, 9, 1, CAST(N'2024-10-16T07:20:33.4121283' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (4, 6, 10004, CAST(N'2024-10-16T10:27:17.3739537' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (5, 9, 10003, CAST(N'2024-10-16T10:41:07.1992258' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (6, 9, 10005, CAST(N'2024-10-16T10:41:13.7955692' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (7, 9, 10002, CAST(N'2024-10-16T10:41:26.9514987' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (8, 3, 10004, CAST(N'2024-10-16T10:42:33.9457090' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (9, 3, 10003, CAST(N'2024-10-16T10:42:37.0080914' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (10, 3, 1, CAST(N'2024-10-16T10:42:40.5089660' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (12, 13, 1, CAST(N'2024-10-16T10:43:17.9314539' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (14, 13, 10003, CAST(N'2024-10-16T10:43:22.9795855' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (15, 10, 10004, CAST(N'2024-10-16T12:14:27.2226734' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (16, 10, 10005, CAST(N'2024-10-16T12:14:33.9917866' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (17, 10, 10002, CAST(N'2024-10-16T12:14:39.6799272' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (18, 8, 1, CAST(N'2024-10-16T17:12:17.5315190' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (19, 8, 10008, CAST(N'2024-10-16T17:12:22.0846430' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (20, 14, 1, CAST(N'2024-10-16T17:13:26.2592146' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (21, 14, 10008, CAST(N'2024-10-16T17:13:39.4014334' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (22, 14, 10003, CAST(N'2024-10-16T17:13:42.2866131' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (23, 13, 10008, CAST(N'2024-10-16T18:23:43.1925725' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (24, 15, 10008, CAST(N'2024-10-18T14:16:56.3308478' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (25, 15, 1, CAST(N'2024-10-18T17:10:50.9446680' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (26, 15, 10004, CAST(N'2024-10-19T18:57:38.1738557' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (27, 6, 10008, CAST(N'2024-10-20T13:05:13.9556883' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (28, 9, 10008, CAST(N'2024-10-20T14:46:49.9860808' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (29, 12, 10008, CAST(N'2024-10-20T19:56:45.8116519' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (30, 10, 10008, CAST(N'2024-10-20T19:57:09.1859993' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (31, 7, 10008, CAST(N'2024-10-20T19:57:27.8032523' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (32, 3, 10008, CAST(N'2024-10-20T19:57:51.5199273' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (33, 16, 10004, CAST(N'2024-10-21T09:37:32.0817332' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (35, 17, 10004, CAST(N'2024-10-21T09:55:37.5343599' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (36, 8, 10004, CAST(N'2024-10-21T10:00:13.9385137' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (37, 7, 10004, CAST(N'2024-10-21T11:50:07.6172785' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (38, 13, 10004, CAST(N'2024-10-21T14:23:02.3928619' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (39, 14, 10004, CAST(N'2024-10-21T14:24:42.3100052' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (41, 20, 10013, CAST(N'2024-10-23T19:05:47.5177678' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (42, 20, 10012, CAST(N'2024-10-23T19:05:53.6682760' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (43, 20, 10002, CAST(N'2024-10-23T19:06:03.3622939' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (44, 18, 10013, CAST(N'2024-10-23T19:08:35.7747313' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (45, 18, 10012, CAST(N'2024-10-23T19:08:40.1635336' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (47, 17, 10013, CAST(N'2024-10-23T19:09:35.6287336' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (48, 17, 10012, CAST(N'2024-10-23T19:09:39.2464973' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (49, 17, 10005, CAST(N'2024-10-23T19:09:45.7166086' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (50, 16, 10013, CAST(N'2024-10-23T19:10:46.5655939' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (51, 16, 10012, CAST(N'2024-10-23T19:10:51.8207293' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (52, 15, 10013, CAST(N'2024-10-23T19:12:29.0034680' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (53, 3, 10013, CAST(N'2024-10-23T19:12:44.8715566' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (55, 6, 10013, CAST(N'2024-10-23T19:13:11.5873277' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (56, 6, 10012, CAST(N'2024-10-23T19:13:14.4796461' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (57, 13, 10013, CAST(N'2024-10-23T19:13:27.0208152' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (59, 13, 10012, CAST(N'2024-10-23T19:13:33.3241983' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (60, 15, 10012, CAST(N'2024-10-23T19:16:36.6287609' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (61, 15, 10014, CAST(N'2024-10-25T16:47:11.7755555' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (62, 15, 10020, CAST(N'2024-11-22T10:51:42.5393933' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (63, 6, 10019, CAST(N'2024-11-24T15:10:15.3544090' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (64, 15, 10019, CAST(N'2024-11-25T10:04:57.4879395' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (65, 21, 10019, CAST(N'2024-11-29T16:00:45.2415594' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (66, 21, 10018, CAST(N'2024-11-29T16:01:04.0269492' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (67, 21, 10020, CAST(N'2024-11-29T16:01:13.4126383' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (68, 9, 10015, CAST(N'2024-12-01T11:37:53.3020443' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (69, 15, 10015, CAST(N'2024-12-01T11:38:19.3871162' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (70, 14, 10015, CAST(N'2024-12-01T11:39:47.1083383' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (71, 13, 10015, CAST(N'2024-12-01T11:40:50.8428008' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (72, 16, 10015, CAST(N'2024-12-01T11:41:09.9070778' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (73, 17, 10015, CAST(N'2024-12-01T11:41:43.2693858' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (74, 18, 10015, CAST(N'2024-12-01T11:42:03.7420367' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (75, 20, 10015, CAST(N'2024-12-01T11:42:49.0882488' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (76, 6, 10015, CAST(N'2024-12-01T11:43:09.0119454' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (77, 21, 10012, CAST(N'2024-12-01T11:46:28.0692150' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (78, 7, 10012, CAST(N'2024-12-01T11:48:09.9979172' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (79, 23, 10015, CAST(N'2024-12-01T15:27:21.9220945' AS DateTime2), 0, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (80, 23, 10012, CAST(N'2024-12-01T15:27:36.7272839' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (81, 3, 10022, CAST(N'2024-12-03T19:55:23.8381898' AS DateTime2), 1, 1)
INSERT [dbo].[EventRegistrationTbl] ([EventRegistrationId], [MemberId], [EventId], [RegistrationDate], [IsAccepted], [AcceptedById]) VALUES (82, 24, 10020, CAST(N'2024-12-07T12:59:59.9344740' AS DateTime2), 1, 1)
SET IDENTITY_INSERT [dbo].[EventRegistrationTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[EventTbl] ON 

INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (1, N'Annual Meet 2024', N'Meet Your BatchMates', CAST(N'2024-10-25T19:00:00.0000000' AS DateTime2), N'\EventPhotos\Event2.jpg', 2, CAST(N'2024-10-12T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-20T12:00:00.0000000' AS DateTime2), 10, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (2, N'Webinar on Machine Learning', N'Introduction to ML', CAST(N'2024-10-10T10:00:00.0000000' AS DateTime2), N'\EventPhotos\MLWebinar1.jpg', 1, CAST(N'2024-10-01T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-05T12:00:00.0000000' AS DateTime2), 15, 3, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10002, N'Networking Gala', N'Business Networking Event', CAST(N'2024-10-31T11:30:00.0000000' AS DateTime2), N'\EventPhotos\Gala.jpg', 2, CAST(N'2024-10-10T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-25T12:00:00.0000000' AS DateTime2), 15, 3, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10003, N'Spring Gathering', N'Spring Alumni Meetup', CAST(N'2024-10-24T20:00:00.0000000' AS DateTime2), N'\EventPhotos\330ec8ff-e772-4eda-819d-6a7f91357eb3_alumniNight.jpg', 2, CAST(N'2024-10-10T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-18T12:00:00.0000000' AS DateTime2), 15, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10004, N'Business Party', N'Business Networking Party', CAST(N'2024-10-28T18:00:00.0000000' AS DateTime2), N'\EventPhotos\Buisinessnetworking.jpg', 2, CAST(N'2024-10-15T18:00:00.0000000' AS DateTime2), CAST(N'2024-10-24T18:00:00.0000000' AS DateTime2), 10, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10005, N'Cybersecurity Talk', N'Securing your assets', CAST(N'2024-10-29T12:00:00.0000000' AS DateTime2), N'\EventPhotos\cyberSecurityTalks.jpeg', 1, CAST(N'2024-10-20T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-25T12:00:00.0000000' AS DateTime2), 10, 1, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10006, N'Startup Workshop', N'Building your first startup', CAST(N'2024-10-14T15:09:00.0000000' AS DateTime2), N'\EventPhotos\Startup2.jpg', 1, CAST(N'2024-10-01T18:00:00.0000000' AS DateTime2), CAST(N'2024-10-08T18:00:00.0000000' AS DateTime2), 10, 1, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10008, N'Fun Games Night', N'An evening of games and fun! Enjoyable Night!', CAST(N'2024-11-05T21:00:00.0000000' AS DateTime2), N'\EventPhotos\FunGamesNight.jpg', 2, CAST(N'2024-10-10T12:00:00.0000000' AS DateTime2), CAST(N'2024-10-30T12:00:00.0000000' AS DateTime2), 10, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10009, N'Alumni Fun & Food', N'Food and fun for alumni!', CAST(N'2024-11-15T20:00:00.0000000' AS DateTime2), N'\EventPhotos\FoodFest.jpg', 2, CAST(N'2024-11-01T12:00:00.0000000' AS DateTime2), CAST(N'2024-11-10T12:00:00.0000000' AS DateTime2), 20, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10012, N'Cultural and Arts', N'Showcase the artistic talents of alumni and current students through performances and exhibitions.', CAST(N'2024-12-22T18:00:00.0000000' AS DateTime2), N'\EventPhotos\CulturalEvents.webp', 2, CAST(N'2024-11-20T12:00:00.0000000' AS DateTime2), CAST(N'2024-12-15T12:00:00.0000000' AS DateTime2), 15, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10013, N'Alumni Travel ', N'Organize trips for alumni to explore Bali together.', CAST(N'2024-12-20T06:00:00.0000000' AS DateTime2), N'\EventPhotos\TravelEvent.jpg', 2, CAST(N'2024-11-15T12:00:00.0000000' AS DateTime2), CAST(N'2024-12-10T12:00:00.0000000' AS DateTime2), 20, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10014, N'Alumni Book Club', N' Start a book club for alumni to discuss books related to personal development, industry trends, or fiction.', CAST(N'2024-11-10T08:00:00.0000000' AS DateTime2), N'\EventPhotos\bookClubEvent.png', 2, CAST(N'2024-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-11-05T12:00:00.0000000' AS DateTime2), 20, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10015, N'Alumni Reunion', N'past students for networking and rekindling memories', CAST(N'2024-12-05T20:00:00.0000000' AS DateTime2), N'\EventPhotos\AlumniReunion.jpg', 2, CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-02T00:00:00.0000000' AS DateTime2), 10, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10016, N'Alumni Party!', N'reconnect with old friends and make new memories', CAST(N'2024-12-10T21:00:00.0000000' AS DateTime2), N'\EventPhotos\alumniparty.jpg', 2, CAST(N'2024-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-05T00:00:00.0000000' AS DateTime2), 15, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10017, N'Talent Night', N'showcase of alumni talents like singing, comedy, and more', CAST(N'2024-12-03T18:00:00.0000000' AS DateTime2), N'\EventPhotos\TalentNight.jpg', 2, CAST(N'2024-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-01T00:00:00.0000000' AS DateTime2), 10, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10018, N'Financial Planning', N'Practical advice on investment, savings, and tax planning for working professionals', CAST(N'2024-12-18T11:00:00.0000000' AS DateTime2), N'\EventPhotos\FinancialPlanning.jpg', 1, CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), 15, 3, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10019, N'Storytelling', N'Alumni share inspiring, humorous, or thought-provoking stories from their personal or professional lives.', CAST(N'2024-12-15T10:00:00.0000000' AS DateTime2), N'\EventPhotos\StoryTelling.jpg', 3, CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-08T00:00:00.0000000' AS DateTime2), 15, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10020, N'Camping ', N'outdoor trip with hiking, bonfires, and camaraderie', CAST(N'2024-12-15T05:00:00.0000000' AS DateTime2), N'\EventPhotos\Camping.jpg', 2, CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-10T00:00:00.0000000' AS DateTime2), 15, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10021, N'Alumni Carnival', N'A festive day with entertainment for all age groups', CAST(N'2024-12-31T21:00:00.0000000' AS DateTime2), N'\EventPhotos\CarnivalParty.jpg', 2, CAST(N'2024-12-01T12:00:00.0000000' AS DateTime2), CAST(N'2024-12-20T12:00:00.0000000' AS DateTime2), 20, 2, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10022, N'AI and You', N'Explores how AI is revolutionizing industries, with tips on upskilling and staying competitive', CAST(N'2024-12-15T11:00:00.0000000' AS DateTime2), N'\EventPhotos\FutureOfWork.webp', 1, CAST(N'2024-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), 15, 3, 1)
INSERT [dbo].[EventTbl] ([EventId], [EventTitle], [EventShortDesc], [EventDateTime], [EventLogo], [EventType], [RegistrationFromDate], [RegistrationToDate], [MemberLimit], [EventMode], [CreatedById]) VALUES (10024, N'Web API', N'Join our Web API Webinar to explore best practices, tools, and techniques for building and optimizing modern web APIs.', CAST(N'2024-12-20T20:34:00.0000000' AS DateTime2), N'\EventPhotos\WebAPIWebinar.webp', 1, CAST(N'2024-11-30T13:35:00.0000000' AS DateTime2), CAST(N'2024-12-12T19:35:00.0000000' AS DateTime2), 10, 3, 1)
SET IDENTITY_INSERT [dbo].[EventTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedsPhoto] ON 

INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (1, 1, N'\FeedPhotos\alumni_feed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (2, 3, N'\FeedPhotos\alumniFeed2.jpeg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (4, 8, N'\FeedPhotos\MIsmatchFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (5, 10, N'\FeedPhotos\BeachFeed3.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (6, 15, N'\FeedPhotos\realworldFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (7, 16, N'\FeedPhotos\BillFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (8, 17, N'\FeedPhotos\daredevilFeed.png')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (9, 18, N'\FeedPhotos\MonadyFeed.gif')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (10, 19, N'\FeedPhotos\steveFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (11, 20, N'\FeedPhotos\BumrahFeed.gif')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (12, 21, N'\FeedPhotos\AIRevolutionFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (13, 22, N'\FeedPhotos\SemiConductorFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (14, 23, N'\FeedPhotos\SatelliteFeed.jpg')
INSERT [dbo].[FeedsPhoto] ([FeedsPhotoId], [FeedsId], [PhotoPathFile]) VALUES (15, 25, N'\FeedPhotos\DCMCUFeed.jpg')
SET IDENTITY_INSERT [dbo].[FeedsPhoto] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedsTbl] ON 

INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (1, CAST(N'2024-10-18T18:05:49.6829170' AS DateTime2), N'Demo', 1, N'Demo', 3, 6)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (2, CAST(N'2024-10-18T18:14:02.8985579' AS DateTime2), N'Chin Tapak Dam Dam', 2, N'Also Me When I am With Homies! 😂 ', 2, 15)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (3, CAST(N'2024-10-18T18:32:44.4514089' AS DateTime2), N'Our Reunion', 1, N'Had a fantastic time at our reunion! Here’s a picture.', 2, 3)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (5, CAST(N'2024-10-19T12:56:38.9685304' AS DateTime2), N'Who had a never pick a call🙄', 2, N'Trying to call you is like trying to win the lottery — you know it’s never going to happen, but you still try. 📞🙄 How do you ignore every call and still manage to send memes in the group chat? 😂 #PhoneDecor #CallAvoider #ProfessionalMissedCalls', 2, 9)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (6, CAST(N'2024-10-19T12:58:30.7274054' AS DateTime2), N'Gotham’s Underworld Threat', 2, N'Gotham is under threat again. The criminal underground is growing stronger. We need to act swiftly to keep our city safe.', 2, 13)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (8, CAST(N'2024-10-19T13:04:16.6226365' AS DateTime2), N'Mismatched Socks, the Ultimate Trend', 1, N'Rocking the mismatched sock look today! It’s called ‘laundry day chic.’ Who needs matching when you can make a statement? 🧦😜', 2, 8)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (9, CAST(N'2024-10-19T13:06:50.8148154' AS DateTime2), N'Demo7', 2, N'Demo7', 1, 8)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (10, CAST(N'2024-10-19T17:38:48.7220246' AS DateTime2), N'A Day at the Beach', 1, N'Enjoying the sun, sand, and waves with friends!', 2, 6)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (11, CAST(N'2024-10-19T17:40:18.5867048' AS DateTime2), N'Weekend Adventures	', 2, N'Captured some amazing moments from our hike!', 2, 6)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (12, CAST(N'2024-10-19T17:51:59.4707534' AS DateTime2), N'Epic Ending: Vikram Rolex Scene', 2, N'The breathtaking ending of Vikram, featuring the iconic Rolex moment. What a climax!', 2, 3)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (13, CAST(N'2024-10-19T18:08:12.8201862' AS DateTime2), N'Epic Showdown: Son of Krypton vs. Bat of Gotham', 2, N'The intense battle between Superman and Batman. Who do you think won?', 2, 3)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (14, CAST(N'2024-10-19T18:46:13.9519612' AS DateTime2), N'New Vigilante in Town?', 2, N'A mysterious figure is taking the law into their own hands. Who is this new vigilante? Stay vigilant, Gotham.', 2, 13)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (15, CAST(N'2024-10-19T19:01:39.1320874' AS DateTime2), N'One Day Back at School... Never Again!', 1, N'Went back to school for a visit today… got lost, sat in the wrong class, and was asked if I needed help finding my locker. Never again! 😂', 2, 15)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (16, CAST(N'2024-10-20T10:44:37.4324833' AS DateTime2), N'Bills, Bills, Bills', 1, N'where you earn money just to give it away to bills. 💸', 2, 15)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (17, CAST(N'2024-10-20T10:49:48.3424464' AS DateTime2), N'Blind Justice… But Not for Finding My Keys!', 1, N'If Daredevil can take down criminals while blind, why can’t I find my keys in broad daylight? Maybe I need a radar sense just to survive Monday mornings. 🦸‍♂️🔑😅', 2, 15)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (18, CAST(N'2024-10-20T13:28:11.8140100' AS DateTime2), N'When You Realize Monday Is Tomorrow!', 1, N'That moment on Sunday night when you remember Monday is just around the corner... 😱 Time to panic! Why do weekends go by so fast? #MondayMood #SundayScaries', 2, 9)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (19, CAST(N'2024-10-20T19:16:33.3387800' AS DateTime2), N'When You’re Trying to Focus but… 😂', 1, N'When you’re trying to concentrate on the match, but your teammates can’t stop making fun of your batting stance! Why do they always have to bring it up? 😂🏏 #JustSmithThings #BattingInStyle #ChasingTheBall', 2, 14)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (20, CAST(N'2024-10-21T09:04:02.1316119' AS DateTime2), N'When the Yorkers Are Hitting Just Right!', 1, N'Had one of those days where the yorkers were on point! Batsmen looking at me like I’m throwing magic spells instead of cricket balls. 🧙‍♂️🏏😂 Who else loves that feeling when the stumps go flying? #BumrahMagic #YorkerKing #BowlingDay', 2, 14)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (21, CAST(N'2024-10-21T11:10:09.9124256' AS DateTime2), N'AI Revolution: How Artificial Intelligence Is Shaping Our Future', 1, N'From self-driving cars to personal assistants, AI is transforming how we live and work. What do you think — is AI a game-changer or a threat? 🤖💡 #AI #TechTrends #FutureOfWork', 2, 12)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (22, CAST(N'2024-10-21T11:19:44.2286553' AS DateTime2), N'Semiconductor Production Shift', 1, N'There are concerns about oversupply in the DRAM memory market as companies like CXMT and Samsung ramp up production. This is expected to influence prices in 2025, with memory demand stabilizing, especially in high-bandwidth memory (HBM) sectors. Samsung is also shifting more resources into DRAM production due to challenges with its 3-nanometer chip process', 2, 12)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (23, CAST(N'2024-10-21T11:28:42.4189484' AS DateTime2), N'Unlocking the Sky: The New Era of Satellite Spectrum Allocation', 1, N'Satellite spectrum refers to the specific frequency bands allocated for satellite communication, enabling data transmission between satellites and ground stations. This spectrum is crucial for various services, including television broadcasting, internet connectivity, and mobile communication, and is regulated by governmental bodies to prevent interference and ensure efficient usage​', 2, 12)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (25, CAST(N'2024-12-01T15:32:04.6469281' AS DateTime2), N'DCMCUFeed', 1, N'Marvel and DC have lost the trademark for the word "SuperHero" MeanWhile The Boys😂', 2, 23)
INSERT [dbo].[FeedsTbl] ([FeedsId], [FeedsDate], [FeedsTitle], [FeedType], [FeedsDescription], [FeedStatus], [MemberId]) VALUES (26, CAST(N'2024-12-01T15:38:55.3964892' AS DateTime2), N'Great Ending Climax', 2, N'Best Ever Ending in Cinema', 2, 23)
SET IDENTITY_INSERT [dbo].[FeedsTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedsVideo] ON 

INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (1, 2, N'\FeedVideos\Demo2.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (2, 5, N'\FeedVideos\NeverPickCallFeed.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (3, 6, N'\FeedVideos\bat2.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (5, 9, N'\FeedVideos\Demo5.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (6, 11, N'\FeedVideos\AdventureFeed.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (7, 12, N'\FeedVideos\Demo5.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (8, 13, N'\FeedVideos\bat.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (9, 14, N'\FeedVideos\bat3.mp4')
INSERT [dbo].[FeedsVideo] ([FeedsVideoId], [FeedsId], [VideoUrl]) VALUES (11, 26, N'\FeedVideos\Demo5.mp4')
SET IDENTITY_INSERT [dbo].[FeedsVideo] OFF
GO
SET IDENTITY_INSERT [dbo].[JobTbl] ON 

INSERT [dbo].[JobTbl] ([JobId], [JobTitle], [JobDescription], [MinimumEducation], [Experience], [JobRole], [IsOpen], [CompanyName], [ReferenceName], [NoOfVacancies], [AnyOtherInfo], [CreatedDate], [CompanyAdminId]) VALUES (2, N'DevOps Engineer', N' Automate infrastructure and deployment processes. Manage cloud services and ensure continuous integration and delivery (CI/CD) pipelines.', N'Bachelor''s Degree', N'1 to 3 years', N'DevOps Engineer', 1, N'CloudMasters', NULL, N'3', N'Experience with Docker, Kubernetes, and AWS', CAST(N'2024-10-25T10:11:41.0000000' AS DateTime2), 1)
INSERT [dbo].[JobTbl] ([JobId], [JobTitle], [JobDescription], [MinimumEducation], [Experience], [JobRole], [IsOpen], [CompanyName], [ReferenceName], [NoOfVacancies], [AnyOtherInfo], [CreatedDate], [CompanyAdminId]) VALUES (3, N'Project Manager', N' Lead and manage project teams to ensure the timely delivery of software products. Coordinate between clients, developers, and designers', N'Bachelor''s Degree', N'2 to 4 years', N'Project Manager', 1, N'AgileWorks', NULL, N'1', NULL, CAST(N'2024-10-24T20:08:38.0000000' AS DateTime2), 1)
INSERT [dbo].[JobTbl] ([JobId], [JobTitle], [JobDescription], [MinimumEducation], [Experience], [JobRole], [IsOpen], [CompanyName], [ReferenceName], [NoOfVacancies], [AnyOtherInfo], [CreatedDate], [CompanyAdminId]) VALUES (4, N'Data Analyst	', N'Analyze datasets to derive business insights and create reports.', N'Bachelor''s Degree	', N'0 to 2 years', N'Analyst	', 1, N'Data Solutions Ltd', NULL, NULL, N'Knowledge of SQL and Power BI', CAST(N'2024-10-25T10:12:37.0000000' AS DateTime2), 1)
INSERT [dbo].[JobTbl] ([JobId], [JobTitle], [JobDescription], [MinimumEducation], [Experience], [JobRole], [IsOpen], [CompanyName], [ReferenceName], [NoOfVacancies], [AnyOtherInfo], [CreatedDate], [CompanyAdminId]) VALUES (5, N'Cloud Infrastructure Enginner', N'Manage and secure the company''s cloud infrastructure and systems.', N'Bachelor''s Degree', N'0 to 3 years', N'Cloud Enginner', 1, N'CloudWorks Inc', NULL, NULL, N'AWS or Azure certification required.', CAST(N'2024-10-24T20:07:28.0000000' AS DateTime2), 1)
INSERT [dbo].[JobTbl] ([JobId], [JobTitle], [JobDescription], [MinimumEducation], [Experience], [JobRole], [IsOpen], [CompanyName], [ReferenceName], [NoOfVacancies], [AnyOtherInfo], [CreatedDate], [CompanyAdminId]) VALUES (6, N'Cybersecurity Analyst', N'Analyze security threats and implement security measures to protect information systems.', N'Bachelor''s Degree', N'0 to 2 years', N'Analyst', 1, N'SecureTech Solutions', NULL, NULL, N'Knowledge of SIEM tools required.', CAST(N'2024-10-24T20:08:30.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[JobTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberConnectionRequestTbl] ON 

INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (1, 17, 16, CAST(N'2024-10-21T14:21:54.0472378' AS DateTime2), 2, N'I am Your Friend From College')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (2, 13, 15, CAST(N'2024-10-21T14:24:16.1273477' AS DateTime2), 2, N'Hello Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (3, 14, 15, CAST(N'2024-10-21T14:25:10.0510158' AS DateTime2), 2, N'Hello Can you be My friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (4, 6, 15, CAST(N'2024-10-21T15:25:16.5366963' AS DateTime2), 2, N'Can You be My Friend?')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (5, 3, 15, CAST(N'2024-10-21T18:20:23.2593940' AS DateTime2), 3, N'Can You be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (6, 9, 15, CAST(N'2024-10-21T18:20:52.5912816' AS DateTime2), 2, N'Can You be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (7, 12, 15, CAST(N'2024-10-21T18:21:26.1981250' AS DateTime2), 2, N'Can You Be My Friend!!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (8, 3, 6, CAST(N'2024-10-21T22:19:01.6902544' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (9, 6, 8, CAST(N'2024-10-21T22:24:55.7944279' AS DateTime2), 2, N'Can You be My Friend
')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (10, 8, 3, CAST(N'2024-10-21T22:25:55.2500678' AS DateTime2), 2, N'Can you be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (13, 15, 10, CAST(N'2024-10-22T10:05:25.2907115' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (14, 6, 10, CAST(N'2024-10-22T10:22:00.8588086' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (15, 10, 3, CAST(N'2024-10-22T10:23:58.3051425' AS DateTime2), 2, N'Can You Be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (16, 9, 6, CAST(N'2024-10-22T11:52:16.4427018' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (17, 6, 12, CAST(N'2024-10-22T11:53:41.2195274' AS DateTime2), 2, N'Can You Be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (18, 6, 14, CAST(N'2024-10-22T16:59:24.4638935' AS DateTime2), 2, N'Can You be My Friend?')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (19, 14, 13, CAST(N'2024-10-22T17:00:33.2115736' AS DateTime2), 2, N'Can You be My Friend
')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (20, 18, 16, CAST(N'2024-10-23T08:58:53.2943436' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (21, 18, 17, CAST(N'2024-10-23T08:59:12.5148124' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (22, 19, 13, CAST(N'2024-10-23T10:30:36.3450434' AS DateTime2), 2, N'Can You Be My Friend!
')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (23, 19, 15, CAST(N'2024-10-23T10:30:57.4258658' AS DateTime2), 2, N'Can You be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (24, 20, 16, CAST(N'2024-10-23T12:30:47.9565650' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (25, 20, 17, CAST(N'2024-10-23T12:31:06.3407028' AS DateTime2), 2, N'Can You Be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (26, 20, 18, CAST(N'2024-10-23T12:31:23.7380109' AS DateTime2), 2, N'Can You Be My Friend!')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (27, 19, 14, CAST(N'2024-11-25T10:21:06.8529128' AS DateTime2), 2, N'Hello Can You  be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (28, 21, 6, CAST(N'2024-11-29T16:04:50.5092358' AS DateTime2), 2, N'Make my Frd.....')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (29, 21, 17, CAST(N'2024-11-29T16:05:32.7165217' AS DateTime2), 2, N'Can you Make my frd....???')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (30, 22, 13, CAST(N'2024-12-01T12:05:53.3672469' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (31, 23, 14, CAST(N'2024-12-01T15:40:20.5973828' AS DateTime2), 1, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (32, 23, 6, CAST(N'2024-12-01T15:40:37.7437427' AS DateTime2), 2, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (33, 3, 9, CAST(N'2024-12-03T19:59:11.2414200' AS DateTime2), 1, N'Can You Be My Friend')
INSERT [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId], [RequestFromID], [RequestToID], [RequestDate], [RequestStatus], [RequestNote]) VALUES (34, 3, 16, CAST(N'2024-12-03T19:59:43.4135674' AS DateTime2), 1, NULL)
SET IDENTITY_INSERT [dbo].[MemberConnectionRequestTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberConnectionTbl] ON 

INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (1, 13, 15, 2, CAST(N'2024-10-21T17:58:02.9969208' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (2, 15, 13, 2, CAST(N'2024-10-21T17:58:03.5928887' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (3, 14, 15, 3, CAST(N'2024-10-21T18:18:47.9316339' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (4, 15, 14, 3, CAST(N'2024-10-21T18:18:47.9316941' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (5, 17, 16, 1, CAST(N'2024-10-21T19:27:02.5005592' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (6, 16, 17, 1, CAST(N'2024-10-21T19:27:02.5005974' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (7, 9, 15, 6, CAST(N'2024-10-21T20:02:57.5993444' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (8, 15, 9, 6, CAST(N'2024-10-21T20:02:57.5993821' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (9, 3, 6, 8, CAST(N'2024-10-21T22:22:26.2046883' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (10, 6, 3, 8, CAST(N'2024-10-21T22:22:26.2048459' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (11, 6, 8, 9, CAST(N'2024-10-21T22:25:32.8758138' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (12, 8, 6, 9, CAST(N'2024-10-21T22:25:32.8758149' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (13, 8, 3, 10, CAST(N'2024-10-21T22:26:48.2178460' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (14, 3, 8, 10, CAST(N'2024-10-21T22:26:48.2178471' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (15, 12, 15, 7, CAST(N'2024-10-22T09:31:58.8009844' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (16, 15, 12, 7, CAST(N'2024-10-22T09:31:58.8010503' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (17, 6, 10, 14, CAST(N'2024-10-22T10:23:19.7191569' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (18, 10, 6, 14, CAST(N'2024-10-22T10:23:19.7191877' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (19, 15, 10, 13, CAST(N'2024-10-22T10:23:29.7694485' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (20, 10, 15, 13, CAST(N'2024-10-22T10:23:29.7694493' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (21, 10, 3, 15, CAST(N'2024-10-22T10:24:42.9914556' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (22, 3, 10, 15, CAST(N'2024-10-22T10:24:42.9914565' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (23, 9, 6, 16, CAST(N'2024-10-22T11:53:15.5149735' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (24, 6, 9, 16, CAST(N'2024-10-22T11:53:15.5150315' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (25, 6, 12, 17, CAST(N'2024-10-22T11:54:03.1586233' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (26, 12, 6, 17, CAST(N'2024-10-22T11:54:03.1586275' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (27, 6, 14, 18, CAST(N'2024-10-22T16:59:53.3040107' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (28, 14, 6, 18, CAST(N'2024-10-22T16:59:53.3040722' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (29, 14, 13, 19, CAST(N'2024-10-22T17:00:59.1186649' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (30, 13, 14, 19, CAST(N'2024-10-22T17:00:59.1186664' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (31, 18, 17, 21, CAST(N'2024-10-23T08:59:34.7989099' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (32, 17, 18, 21, CAST(N'2024-10-23T08:59:34.7989654' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (33, 18, 16, 20, CAST(N'2024-10-23T08:59:57.6627879' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (34, 16, 18, 20, CAST(N'2024-10-23T08:59:57.6627886' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (35, 20, 18, 26, CAST(N'2024-10-23T12:31:50.3431740' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (36, 18, 20, 26, CAST(N'2024-10-23T12:31:50.3432239' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (37, 20, 16, 24, CAST(N'2024-10-23T12:32:07.0570288' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (38, 16, 20, 24, CAST(N'2024-10-23T12:32:07.0570295' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (39, 20, 17, 25, CAST(N'2024-10-23T12:33:20.3091585' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (40, 17, 20, 25, CAST(N'2024-10-23T12:33:20.3091618' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (41, 19, 15, 23, CAST(N'2024-11-25T10:21:48.2977530' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (42, 15, 19, 23, CAST(N'2024-11-25T10:21:48.2978229' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (43, 19, 13, 22, CAST(N'2024-11-25T10:22:16.2839034' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (44, 13, 19, 22, CAST(N'2024-11-25T10:22:16.2839071' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (45, 19, 14, 27, CAST(N'2024-11-25T10:22:37.8893172' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (46, 14, 19, 27, CAST(N'2024-11-25T10:22:37.8893181' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (47, 21, 6, 28, CAST(N'2024-11-29T16:06:48.0286097' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (48, 6, 21, 28, CAST(N'2024-11-29T16:06:48.0287050' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (49, 21, 17, 29, CAST(N'2024-11-29T16:07:52.9619173' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (50, 17, 21, 29, CAST(N'2024-11-29T16:07:52.9619183' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (51, 22, 13, 30, CAST(N'2024-12-01T12:06:53.4797726' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (52, 13, 22, 30, CAST(N'2024-12-01T12:06:53.4798761' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (53, 23, 6, 32, CAST(N'2024-12-01T15:40:58.6307395' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (54, 6, 23, 32, CAST(N'2024-12-01T15:40:58.6307774' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (55, 6, 15, 4, CAST(N'2024-12-01T15:41:39.9937855' AS DateTime2))
INSERT [dbo].[MemberConnectionTbl] ([MemberConnectionId], [MemberId], [ConnectedMemberId], [ConnectionRequestId], [AcceptDate]) VALUES (56, 15, 6, 4, CAST(N'2024-12-01T15:41:39.9937869' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MemberConnectionTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberCourseDetTbl] ON 

INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (1, 3, N'Java', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (2, 6, N'Asp .Net Core', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (3, 7, N'Angular', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (4, 8, N'React JS', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (5, 9, N'PLC', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (6, 10, N'C++', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (7, 11, N'Java', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (8, 12, N'Java', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (9, 13, N'Flutter', N'2020')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (10, 14, N'Angular', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (11, 15, N'PLC', N'2021')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (12, 16, N'Python', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (13, 17, N'Python', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (14, 18, N'Python', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (15, 19, N'Angular', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (16, 20, N'Python', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (17, 21, N'Python', N'2023')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (18, 22, N'Angular', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (19, 23, N'Angular', N'2022')
INSERT [dbo].[MemberCourseDetTbl] ([MemberCourseDetId], [MemberId], [CourseName], [AttendedYear]) VALUES (20, 24, N'Java', N'2022')
SET IDENTITY_INSERT [dbo].[MemberCourseDetTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberEducationTbl] ON 

INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (1, 15, N'BTech CSE', N'2020', N'SGMCOE', N'80')
INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (2, 15, N'HSC', N'2016', N'M R College Gadhinglaj', N'64.38')
INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (3, 21, N'BE', N'2017', N'FAMT', N'84')
INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (4, 23, N'BTech CSE', N'2020', N'SGMCOE', N'64.38')
INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (5, 23, N'HSC', N'2016', N'M R College Gadhinglaj', N'80')
INSERT [dbo].[MemberEducationTbl] ([MemberEducationId], [MemberId], [EducationTitle], [PassoutYear], [UniversityOrCollegeName], [GradeOrPercentage]) VALUES (6, 3, N'BTech Electrical', N'2023', N'Shivaji University Kolhapur', N'88.99')
SET IDENTITY_INSERT [dbo].[MemberEducationTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberExperienceTbl] ON 

INSERT [dbo].[MemberExperienceTbl] ([MemberExperienceId], [MemberId], [ExperienceTitle], [ExperienceDuration], [ExperienceDescription], [CompanyName], [FromDate], [ToDate]) VALUES (1, 15, N'Developer', 8, N'I Create the API and User Interface', N'Tech Innovators Ltd', CAST(N'2022-03-15T09:30:00.0000000' AS DateTime2), CAST(N'2024-09-25T18:32:00.0000000' AS DateTime2))
INSERT [dbo].[MemberExperienceTbl] ([MemberExperienceId], [MemberId], [ExperienceTitle], [ExperienceDuration], [ExperienceDescription], [CompanyName], [FromDate], [ToDate]) VALUES (2, 15, N'Software Developer', 8, N'I am Create UI', N'AgileWorks', CAST(N'2019-06-25T17:19:00.0000000' AS DateTime2), CAST(N'2022-07-25T17:20:00.0000000' AS DateTime2))
INSERT [dbo].[MemberExperienceTbl] ([MemberExperienceId], [MemberId], [ExperienceTitle], [ExperienceDuration], [ExperienceDescription], [CompanyName], [FromDate], [ToDate]) VALUES (3, 23, N'Developer', 8, N'I am Working On ASP Net Core', N'Tech Innovators Ltd', CAST(N'2021-08-01T15:29:00.0000000' AS DateTime2), CAST(N'2024-12-01T16:29:00.0000000' AS DateTime2))
INSERT [dbo].[MemberExperienceTbl] ([MemberExperienceId], [MemberId], [ExperienceTitle], [ExperienceDuration], [ExperienceDescription], [CompanyName], [FromDate], [ToDate]) VALUES (4, 3, N'PLC Programmer', 8, N'ghfgdgdff', N'Wibro', CAST(N'2019-06-03T21:01:00.0000000' AS DateTime2), CAST(N'2024-12-03T20:04:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MemberExperienceTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberRequestTbl] ON 

INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (1, 3, CAST(N'2024-10-10T17:27:57.7869255' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (2, 6, CAST(N'2024-10-11T13:00:17.2009815' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (3, 7, CAST(N'2024-10-11T14:59:56.5817523' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (4, 8, CAST(N'2024-10-12T18:01:10.8893703' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (5, 9, CAST(N'2024-10-12T18:06:37.5577961' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (6, 10, CAST(N'2024-10-12T22:50:25.5814073' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (7, 11, CAST(N'2024-10-12T22:56:21.3049782' AS DateTime2), 1)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (8, 12, CAST(N'2024-10-14T10:55:20.7401221' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (9, 13, CAST(N'2024-10-14T17:14:18.7192745' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (10, 14, CAST(N'2024-10-14T17:31:53.3661836' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (11, 15, CAST(N'2024-10-18T14:02:33.4979682' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (12, 16, CAST(N'2024-10-21T08:40:43.0656519' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (13, 17, CAST(N'2024-10-21T08:42:29.7617548' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (14, 18, CAST(N'2024-10-22T17:03:57.3276908' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (15, 19, CAST(N'2024-10-22T17:11:30.5526477' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (16, 20, CAST(N'2024-10-23T12:01:01.0994689' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (17, 21, CAST(N'2024-11-29T15:54:50.8036524' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (18, 22, CAST(N'2024-12-01T11:59:44.3722308' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (19, 23, CAST(N'2024-12-01T15:26:07.3788429' AS DateTime2), 2)
INSERT [dbo].[MemberRequestTbl] ([MemberRequestId], [MemberId], [RequestDate], [RequestStatus]) VALUES (20, 24, CAST(N'2024-12-07T12:59:09.3099773' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[MemberRequestTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberResumeTbl] ON 

INSERT [dbo].[MemberResumeTbl] ([MemberResumeId], [MemberId], [ResumeFilePath], [FileType], [LastUpadatedDate]) VALUES (1, 15, N'\ResumesDoc\Abhinewupdated.pdf', N'PDF', CAST(N'2024-10-28T17:14:03.4852698' AS DateTime2))
INSERT [dbo].[MemberResumeTbl] ([MemberResumeId], [MemberId], [ResumeFilePath], [FileType], [LastUpadatedDate]) VALUES (2, 6, N'\ResumesDoc\Prajval Patil Resume.docx', N'DOCX', CAST(N'2024-10-28T16:43:39.8632353' AS DateTime2))
INSERT [dbo].[MemberResumeTbl] ([MemberResumeId], [MemberId], [ResumeFilePath], [FileType], [LastUpadatedDate]) VALUES (3, 21, N'\ResumesDoc\Abhishek Resume.pdf', N'PDF', CAST(N'2024-11-29T15:59:58.1287108' AS DateTime2))
INSERT [dbo].[MemberResumeTbl] ([MemberResumeId], [MemberId], [ResumeFilePath], [FileType], [LastUpadatedDate]) VALUES (4, 23, N'\ResumesDoc\Abhishek Resume.pdf', N'PDF', CAST(N'2024-12-01T15:30:07.9582663' AS DateTime2))
INSERT [dbo].[MemberResumeTbl] ([MemberResumeId], [MemberId], [ResumeFilePath], [FileType], [LastUpadatedDate]) VALUES (5, 3, N'\ResumesDoc\Abhishek Resume.pdf', N'PDF', CAST(N'2024-12-03T20:02:07.9045580' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MemberResumeTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberSkillsTbl] ON 

INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (7, 15, 1, 2, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (20, 6, 1, 1, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (21, 6, 2, 1, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (22, 3, 4, 3, 0)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (23, 3, 6, 3, 0)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (24, 15, 4, 2, 2)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (25, 20, 1, 1, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (26, 20, 2, 1, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (27, 20, 3, 1, 4)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (28, 21, 2, 1, 2)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (29, 23, 1, 1, 3)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (30, 23, 2, 1, 3)
INSERT [dbo].[MemberSkillsTbl] ([MemberSkillsId], [MemberId], [SkillId], [Proficiency], [NoOfYears]) VALUES (31, 23, 6, 1, 3)
SET IDENTITY_INSERT [dbo].[MemberSkillsTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberTbl] ON 

INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (3, N'Amar', N'Patil', 1, N'2002-01-31', 1, N'\ProfilePhoto\Passport_Photograph.jpg', N'amarpatil3254@gmail.com', N'1234', N'9359806464', N'Durgamanwad', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (6, N'Prajval', N'Patil', 8, N'2001-12-23', 1, N'\ProfilePhoto\Prajaval Patil.jpg', N'prajval2199@gmail.com', N'1234', N'9421198989', N'Borawade Kumbarwada', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (7, N'Ritesh', N'Netke', 8, NULL, 1, NULL, N'ritesh@gmail.com', N'1234', N'8965231470', NULL, 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (8, N'Aniket', N'Chougale', 1, N'2001-10-13', 1, N'\ProfilePhoto\WhatsApp Image 2022-07-19 at 8.48.07 PM.jpeg', N'aniket@gmail.com', N'1234', N'8975399697', N'Naratwade', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (9, N'Avinash', N'Patil', 7, N'2001-02-19', 1, N'\ProfilePhoto\Jaadu.jpg', N'avi@gmail.com', N'1234', N'7507336281', N'Dusra Gola', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (10, N'Atharva', N'Kumbar', 1, N'2001-12-25', 1, N'\ProfilePhoto\kaliyaprofile.jpg', N'atharvajr@gmail.com', N'1234', N'9067852056', N'Bhadgaon', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (11, N'Rushikesh', N'Lohar', 1, NULL, 1, NULL, N'rushi@gmail.com', N'1234', N'7057316518', NULL, 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (12, N'Suraj', N'Kadukar', 1, NULL, 1, NULL, N'suraj@gmail.com', N'1234', N'9130757289', NULL, 0)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (13, N'Bruce', N'Wayne', 9, N'1984-11-06', 1, N'\ProfilePhoto\batOfGowtham.jpg', N'brucebat@gmail.com', N'1234', N'8975631212', N'Main street Gowtham', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (14, N'Steven', N'Smith', 3, N'1989-06-02', 1, N'\ProfilePhoto\steve.jpg', N'steve@gmail.com', N'1234', N'9146785612', N'Main Street 21', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (15, N'Matt ', N'Murdock', 2, N'1982-07-27', 1, N'\ProfilePhoto\mattprofile.jpg', N'matt@gmail.com', N'1234', N'9632015477', N'Hells Kitchen', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (16, N'Vaishnavi', N'Pandit', 1, N'2001-02-22', 2, N'\ProfilePhoto\FemaleProfile2.png', N'vaish@gmail.com', N'1234', N'7896521430', N'Hajgoli', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (17, N'Ashu', N'Mutakekar', 1, N'2002-01-05', 2, N'\ProfilePhoto\FemaleProfile.webp', N'ashu@gmail.com', N'1234', N'9365258710', N'Dundage', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (18, N'Hannah', N'Baker', 6, N'1998-02-18', 2, N'\ProfilePhoto\hannahProfile2.webp', N'hannah@gmail.com', N'1234', N'8523697401', N'Evergreen', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (19, N'Thomas ', N'Shelby', 2, N'1988-06-27', 1, N'\ProfilePhoto\ShelbyProfile.jpg', N'shelby@gmail.com', N'1234', N'8975640231', N'Bermingham', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (20, N'Chloe', N'Decker', 2, N'1990-01-18', 2, N'\ProfilePhoto\ChloeProfile.jpg', N'detective@gmail.com', N'1234', N'9563412870', N'Main Street 24', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (21, N'Rohini', N'Chavan', 10, N'1997-12-16', 2, N'\ProfilePhoto\hannahProfile.jpg', N'rohini@gmail.com', N'1234', N'9765672392', N'Nigdi,Pune', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (22, N'Wade ', N'Wilson', 10, N'1986-10-27', 1, N'\ProfilePhoto\DeadpoolProfile.jpg', N'deadpool@gmail.com', N'1234', N'7852014693', N'Main Street 74', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (23, N'Bhushan', N'Shukla', 8, N'1996-06-08', 1, N'\ProfilePhoto\BhushanProfile.jpg', N'bhushan@gmail.com', N'1234', N'8956230147', N'Phulera', 1)
INSERT [dbo].[MemberTbl] ([MemberId], [FirstName], [LastName], [CityId], [DateOfBirth], [Gender], [ProfilePicture], [EmailId], [Password], [MobileNo], [Address], [IsActive]) VALUES (24, N'Vaibhav', N'sathe', 1, NULL, 1, NULL, N'vaibhav@gmail.com', N'1234', N'7878787878', N'Karad', 0)
SET IDENTITY_INSERT [dbo].[MemberTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[PollOptionTbl] ON 

INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (1, N'Friendships', 0, 3)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (2, N'Freedom', 0, 3)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (3, N'Campus Life', 0, 3)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (4, N'Learning Opportunities', 0, 3)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (5, N'Volunteer opportunities', 0, 2)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (6, N'Social events or reunions', 0, 2)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (7, N'Exclusive alumni benefits or perks', 0, 2)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (8, N'Professional development resources', 0, 2)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (9, N'Definitely', 0, 4)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (10, N'Not Interested', 0, 4)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (11, N'Maybe', 0, 4)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (12, N'Unlikely', 0, 4)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (14, N'Don’t Miss Extracurriculars', 0, 5)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (15, N'Make the Most of Learning Opportunities', 0, 5)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (16, N'Make Friends with Your Professors', 0, 5)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (17, N'Master the Art of Napping', 0, 5)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (18, N'Weekdays (morning)', 0, 6)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (19, N'Weekdays (evening)', 0, 6)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (20, N'Weekends ', 0, 6)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (21, N'depending on the event', 0, 6)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (22, N'Mentoring students', 0, 7)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (23, N'Organizing events', 0, 7)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (24, N'Fundraising efforts', 0, 7)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (25, N'Guest speaking or lectures', 0, 7)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (26, N'I had to attend a family wedding, couldn’t miss it!', 0, 8)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (27, N'My tiffin fell on my homework, full disaster!', 0, 8)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (28, N'My younger sibling scribbled all over my homework!', 0, 8)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (29, N'My pet dog ate the assignment… no, seriously!', 0, 8)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (30, N'Mind control to convince professors to postpone exams!', 0, 9)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (31, N'The power to convince the canteen to serve free food all day, every day!', 0, 9)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (32, N'The ability to rewind time so I could sleep in just 10 more minutes!', 0, 9)
INSERT [dbo].[PollOptionTbl] ([PollOptionId], [Option], [IsCorrect], [PollId]) VALUES (33, N'The ability to make my crush fall in love with my charming sense of humor!', 0, 9)
SET IDENTITY_INSERT [dbo].[PollOptionTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[PollResponseOptionTbl] ON 

INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (1, 1, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (2, 2, 5)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (3, 3, 7)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (4, 4, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (5, 5, 1)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (6, 6, 5)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (7, 7, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (8, 8, 1)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (9, 9, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (10, 10, 3)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (11, 11, 6)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (12, 12, 17)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (13, 13, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (14, 14, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (15, 15, 2)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (16, 16, 17)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (17, 17, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (18, 18, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (19, 19, 2)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (20, 20, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (21, 21, 1)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (22, 22, 16)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (23, 23, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (24, 24, 33)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (25, 25, 27)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (26, 26, 20)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (27, 27, 33)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (28, 28, 23)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (29, 29, 14)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (30, 30, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (31, 31, 1)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (32, 32, 33)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (33, 33, 28)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (34, 34, 20)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (35, 35, 5)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (36, 36, 33)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (37, 37, 25)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (38, 38, 29)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (39, 39, 33)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (40, 40, 27)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (41, 41, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (42, 42, 23)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (43, 43, 9)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (44, 44, 21)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (46, 46, 32)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (49, 49, 20)
INSERT [dbo].[PollResponseOptionTbl] ([PollResponseOptionId], [PollResponseID], [PollOptionId]) VALUES (50, 50, 33)
SET IDENTITY_INSERT [dbo].[PollResponseOptionTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[PollResponseTbl] ON 

INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (1, CAST(N'2024-10-17T16:47:23.1231248' AS DateTime2), 6, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (2, CAST(N'2024-10-17T17:35:09.2867382' AS DateTime2), 9, 2)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (3, CAST(N'2024-10-17T18:09:08.3402486' AS DateTime2), 6, 2)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (4, CAST(N'2024-10-17T18:56:25.6787608' AS DateTime2), 13, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (5, CAST(N'2024-10-18T09:36:38.7859509' AS DateTime2), 3, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (6, CAST(N'2024-10-18T11:56:55.5775909' AS DateTime2), 8, 2)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (7, CAST(N'2024-10-18T11:57:00.1562870' AS DateTime2), 8, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (8, CAST(N'2024-10-18T11:57:21.4272319' AS DateTime2), 10, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (9, CAST(N'2024-10-18T11:57:27.4044515' AS DateTime2), 10, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (10, CAST(N'2024-10-18T11:58:08.2744318' AS DateTime2), 14, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (11, CAST(N'2024-10-18T11:58:16.2841380' AS DateTime2), 14, 2)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (12, CAST(N'2024-10-18T12:07:24.8779548' AS DateTime2), 6, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (13, CAST(N'2024-10-18T12:08:04.5157405' AS DateTime2), 9, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (14, CAST(N'2024-10-18T12:08:45.9394893' AS DateTime2), 13, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (15, CAST(N'2024-10-18T12:08:51.2504468' AS DateTime2), 13, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (16, CAST(N'2024-10-18T12:09:19.0960466' AS DateTime2), 8, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (17, CAST(N'2024-10-18T12:09:47.8757882' AS DateTime2), 3, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (18, CAST(N'2024-10-18T12:16:51.7122107' AS DateTime2), 14, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (19, CAST(N'2024-10-18T13:32:19.0624896' AS DateTime2), 6, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (20, CAST(N'2024-10-18T14:17:41.6475890' AS DateTime2), 15, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (21, CAST(N'2024-10-20T18:42:00.6252995' AS DateTime2), 8, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (22, CAST(N'2024-10-20T18:47:31.3117729' AS DateTime2), 7, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (23, CAST(N'2024-10-20T18:49:42.1100987' AS DateTime2), 12, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (24, CAST(N'2024-10-23T10:14:42.7560592' AS DateTime2), 15, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (25, CAST(N'2024-10-23T10:14:58.7316632' AS DateTime2), 15, 8)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (26, CAST(N'2024-10-23T10:15:12.7255417' AS DateTime2), 15, 6)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (27, CAST(N'2024-10-23T19:06:22.7000781' AS DateTime2), 20, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (28, CAST(N'2024-10-23T19:06:31.7287651' AS DateTime2), 20, 7)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (29, CAST(N'2024-10-23T19:06:41.3179068' AS DateTime2), 20, 5)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (30, CAST(N'2024-10-23T19:06:46.5597246' AS DateTime2), 20, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (31, CAST(N'2024-10-23T19:06:53.8864848' AS DateTime2), 20, 3)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (32, CAST(N'2024-10-23T19:08:57.3916795' AS DateTime2), 18, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (33, CAST(N'2024-10-23T19:09:03.7671628' AS DateTime2), 18, 8)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (34, CAST(N'2024-10-23T19:09:10.1105476' AS DateTime2), 18, 6)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (35, CAST(N'2024-10-23T19:09:20.0861698' AS DateTime2), 18, 2)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (36, CAST(N'2024-10-23T19:09:53.3581786' AS DateTime2), 17, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (37, CAST(N'2024-10-23T19:10:00.1021118' AS DateTime2), 17, 7)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (38, CAST(N'2024-10-23T19:10:07.9334490' AS DateTime2), 17, 8)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (39, CAST(N'2024-10-23T19:10:28.1281372' AS DateTime2), 16, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (40, CAST(N'2024-10-23T19:10:32.6869021' AS DateTime2), 16, 8)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (41, CAST(N'2024-10-23T19:10:37.0717569' AS DateTime2), 16, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (42, CAST(N'2024-10-25T17:48:37.0004517' AS DateTime2), 15, 7)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (43, CAST(N'2024-11-28T12:53:09.4133534' AS DateTime2), 15, 4)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (44, CAST(N'2024-11-29T16:02:31.6824417' AS DateTime2), 21, 6)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (46, CAST(N'2024-12-01T15:30:38.5656092' AS DateTime2), 23, 9)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (49, CAST(N'2024-12-03T19:56:08.8012822' AS DateTime2), 3, 6)
INSERT [dbo].[PollResponseTbl] ([PollResponseId], [PollResponseDate], [MemberId], [PollId]) VALUES (50, CAST(N'2024-12-07T13:00:13.7768899' AS DateTime2), 24, 9)
SET IDENTITY_INSERT [dbo].[PollResponseTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[PollTbl] ON 

INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (2, CAST(N'2024-10-16T00:00:00.0000000' AS DateTime2), 1, N'What could encourage you to become more involved with the alumni community?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (3, CAST(N'2024-10-15T12:00:00.0000000' AS DateTime2), 1, N'What aspect of your college experience do you miss the most?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (4, CAST(N'2024-10-17T00:00:00.0000000' AS DateTime2), 1, N'If your college organized a 10-year reunion, would you attend?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (5, CAST(N'2024-10-18T20:00:00.0000000' AS DateTime2), 1, N'What advice would you give to current students at your college?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (6, CAST(N'2024-10-23T09:00:00.0000000' AS DateTime2), 1, N'What is the best time for you to participate in alumni events?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (7, CAST(N'2024-10-23T00:00:00.0000000' AS DateTime2), 1, N'What kind of alumni volunteering opportunities interest you the most?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (8, CAST(N'2024-10-23T11:11:00.0000000' AS DateTime2), 1, N'What was your most creative excuse for turning in an assignment late?', 1)
INSERT [dbo].[PollTbl] ([PollId], [PollDate], [PollStatus], [PollQuestion], [CreatedById]) VALUES (9, CAST(N'2024-10-23T14:15:00.0000000' AS DateTime2), 1, N'If you could have had one magical power in college, what would it be?', 1)
SET IDENTITY_INSERT [dbo].[PollTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (1, N'ASP Net Core')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (2, N'Python')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (3, N'Java')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (4, N'React')
INSERT [dbo].[Skills] ([SkillId], [SkillName]) VALUES (6, N'Angular')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[StateTbl] ON 

INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (1, N'Maharashtra', 1)
INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (2, N'California', 2)
INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (3, N'Victoria', 3)
INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (4, N'Uttar Pradesh', 1)
INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (5, N'New South Wales ', 3)
INSERT [dbo].[StateTbl] ([StateId], [StateName], [CountryId]) VALUES (6, N'Florida', 2)
SET IDENTITY_INSERT [dbo].[StateTbl] OFF
GO
/****** Object:  Index [IX_CityTbl_StateId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CityTbl_StateId] ON [dbo].[CityTbl]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyAdminTbl_CityId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyAdminTbl_CityId] ON [dbo].[CompanyAdminTbl]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyAdminTbl_CompanyId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyAdminTbl_CompanyId] ON [dbo].[CompanyAdminTbl]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyTbl_CityId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyTbl_CityId] ON [dbo].[CompanyTbl]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventRegistrationTbl_AcceptedById]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_EventRegistrationTbl_AcceptedById] ON [dbo].[EventRegistrationTbl]
(
	[AcceptedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventRegistrationTbl_EventId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_EventRegistrationTbl_EventId] ON [dbo].[EventRegistrationTbl]
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventRegistrationTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_EventRegistrationTbl_MemberId] ON [dbo].[EventRegistrationTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EventTbl_CreatedById]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_EventTbl_CreatedById] ON [dbo].[EventTbl]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedsPhoto_FeedsId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeedsPhoto_FeedsId] ON [dbo].[FeedsPhoto]
(
	[FeedsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedsTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeedsTbl_MemberId] ON [dbo].[FeedsTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedsVideo_FeedsId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeedsVideo_FeedsId] ON [dbo].[FeedsVideo]
(
	[FeedsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobTbl_CompanyAdminId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobTbl_CompanyAdminId] ON [dbo].[JobTbl]
(
	[CompanyAdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConnectionTbl_ConnectionRequestId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberConnectionTbl_ConnectionRequestId] ON [dbo].[MemberConnectionTbl]
(
	[ConnectionRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberConnectionTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberConnectionTbl_MemberId] ON [dbo].[MemberConnectionTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberCourseDetTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberCourseDetTbl_MemberId] ON [dbo].[MemberCourseDetTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberEducationTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberEducationTbl_MemberId] ON [dbo].[MemberEducationTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberExperienceTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberExperienceTbl_MemberId] ON [dbo].[MemberExperienceTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberRequestTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberRequestTbl_MemberId] ON [dbo].[MemberRequestTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberResumeTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberResumeTbl_MemberId] ON [dbo].[MemberResumeTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_MemberId_SkillId]    Script Date: 11-Dec-24 1:24:44 PM ******/
ALTER TABLE [dbo].[MemberSkillsTbl] ADD  CONSTRAINT [UQ_MemberId_SkillId] UNIQUE NONCLUSTERED 
(
	[MemberId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberSkillsTbl_MemberId_SkillId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberSkillsTbl_MemberId_SkillId] ON [dbo].[MemberSkillsTbl]
(
	[MemberId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberSkillsTbl_SkillId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberSkillsTbl_SkillId] ON [dbo].[MemberSkillsTbl]
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemberTbl_CityId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemberTbl_CityId] ON [dbo].[MemberTbl]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollOptionTbl_PollId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollOptionTbl_PollId] ON [dbo].[PollOptionTbl]
(
	[PollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollResponseOptionTbl_PollOptionId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollResponseOptionTbl_PollOptionId] ON [dbo].[PollResponseOptionTbl]
(
	[PollOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollResponseOptionTbl_PollResponseID]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollResponseOptionTbl_PollResponseID] ON [dbo].[PollResponseOptionTbl]
(
	[PollResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollResponseTbl_MemberId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollResponseTbl_MemberId] ON [dbo].[PollResponseTbl]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollResponseTbl_PollId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollResponseTbl_PollId] ON [dbo].[PollResponseTbl]
(
	[PollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PollTbl_CreatedById]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_PollTbl_CreatedById] ON [dbo].[PollTbl]
(
	[CreatedById] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_StateTbl_CountryId]    Script Date: 11-Dec-24 1:24:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_StateTbl_CountryId] ON [dbo].[StateTbl]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeedsTbl] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [MemberId]
GO
ALTER TABLE [dbo].[MemberTbl] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[PollOptionTbl] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [PollId]
GO
ALTER TABLE [dbo].[CityTbl]  WITH CHECK ADD  CONSTRAINT [FK_CityTbl_StateTbl_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateTbl] ([StateId])
GO
ALTER TABLE [dbo].[CityTbl] CHECK CONSTRAINT [FK_CityTbl_StateTbl_StateId]
GO
ALTER TABLE [dbo].[CompanyAdminTbl]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAdminTbl_CityTbl_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityTbl] ([CityId])
GO
ALTER TABLE [dbo].[CompanyAdminTbl] CHECK CONSTRAINT [FK_CompanyAdminTbl_CityTbl_CityId]
GO
ALTER TABLE [dbo].[CompanyAdminTbl]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAdminTbl_CompanyTbl_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[CompanyTbl] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyAdminTbl] CHECK CONSTRAINT [FK_CompanyAdminTbl_CompanyTbl_CompanyId]
GO
ALTER TABLE [dbo].[CompanyTbl]  WITH CHECK ADD  CONSTRAINT [FK_CompanyTbl_CityTbl_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityTbl] ([CityId])
GO
ALTER TABLE [dbo].[CompanyTbl] CHECK CONSTRAINT [FK_CompanyTbl_CityTbl_CityId]
GO
ALTER TABLE [dbo].[EventRegistrationTbl]  WITH CHECK ADD  CONSTRAINT [FK_EventRegistrationTbl_CompanyAdminTbl_AcceptedById] FOREIGN KEY([AcceptedById])
REFERENCES [dbo].[CompanyAdminTbl] ([CompanyAdminId])
GO
ALTER TABLE [dbo].[EventRegistrationTbl] CHECK CONSTRAINT [FK_EventRegistrationTbl_CompanyAdminTbl_AcceptedById]
GO
ALTER TABLE [dbo].[EventRegistrationTbl]  WITH CHECK ADD  CONSTRAINT [FK_EventRegistrationTbl_EventTbl_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[EventTbl] ([EventId])
GO
ALTER TABLE [dbo].[EventRegistrationTbl] CHECK CONSTRAINT [FK_EventRegistrationTbl_EventTbl_EventId]
GO
ALTER TABLE [dbo].[EventRegistrationTbl]  WITH CHECK ADD  CONSTRAINT [FK_EventRegistrationTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[EventRegistrationTbl] CHECK CONSTRAINT [FK_EventRegistrationTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[EventTbl]  WITH CHECK ADD  CONSTRAINT [FK_EventTbl_CompanyAdminTbl_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[CompanyAdminTbl] ([CompanyAdminId])
GO
ALTER TABLE [dbo].[EventTbl] CHECK CONSTRAINT [FK_EventTbl_CompanyAdminTbl_CreatedById]
GO
ALTER TABLE [dbo].[FeedsPhoto]  WITH CHECK ADD  CONSTRAINT [FK_FeedsPhoto_FeedsTbl_FeedsId] FOREIGN KEY([FeedsId])
REFERENCES [dbo].[FeedsTbl] ([FeedsId])
GO
ALTER TABLE [dbo].[FeedsPhoto] CHECK CONSTRAINT [FK_FeedsPhoto_FeedsTbl_FeedsId]
GO
ALTER TABLE [dbo].[FeedsTbl]  WITH CHECK ADD  CONSTRAINT [FK_FeedsTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[FeedsTbl] CHECK CONSTRAINT [FK_FeedsTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[FeedsVideo]  WITH CHECK ADD  CONSTRAINT [FK_FeedsVideo_FeedsTbl_FeedsId] FOREIGN KEY([FeedsId])
REFERENCES [dbo].[FeedsTbl] ([FeedsId])
GO
ALTER TABLE [dbo].[FeedsVideo] CHECK CONSTRAINT [FK_FeedsVideo_FeedsTbl_FeedsId]
GO
ALTER TABLE [dbo].[JobTbl]  WITH CHECK ADD  CONSTRAINT [FK_JobTbl_CompanyAdminTbl_CompanyAdminId] FOREIGN KEY([CompanyAdminId])
REFERENCES [dbo].[CompanyAdminTbl] ([CompanyAdminId])
GO
ALTER TABLE [dbo].[JobTbl] CHECK CONSTRAINT [FK_JobTbl_CompanyAdminTbl_CompanyAdminId]
GO
ALTER TABLE [dbo].[MemberConnectionTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberConnectionTbl_MemberConnectionRequestTbl_ConnectionRequestId] FOREIGN KEY([ConnectionRequestId])
REFERENCES [dbo].[MemberConnectionRequestTbl] ([MemberConnectionRequestId])
GO
ALTER TABLE [dbo].[MemberConnectionTbl] CHECK CONSTRAINT [FK_MemberConnectionTbl_MemberConnectionRequestTbl_ConnectionRequestId]
GO
ALTER TABLE [dbo].[MemberConnectionTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberConnectionTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberConnectionTbl] CHECK CONSTRAINT [FK_MemberConnectionTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberCourseDetTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberCourseDetTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberCourseDetTbl] CHECK CONSTRAINT [FK_MemberCourseDetTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberEducationTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberEducationTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberEducationTbl] CHECK CONSTRAINT [FK_MemberEducationTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberExperienceTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberExperienceTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberExperienceTbl] CHECK CONSTRAINT [FK_MemberExperienceTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberRequestTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberRequestTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberRequestTbl] CHECK CONSTRAINT [FK_MemberRequestTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberResumeTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberResumeTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[MemberResumeTbl] CHECK CONSTRAINT [FK_MemberResumeTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[MemberSkillsTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberSkillsTbl_Skills_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[MemberSkillsTbl] CHECK CONSTRAINT [FK_MemberSkillsTbl_Skills_SkillId]
GO
ALTER TABLE [dbo].[MemberTbl]  WITH CHECK ADD  CONSTRAINT [FK_MemberTbl_CityTbl_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityTbl] ([CityId])
GO
ALTER TABLE [dbo].[MemberTbl] CHECK CONSTRAINT [FK_MemberTbl_CityTbl_CityId]
GO
ALTER TABLE [dbo].[PollOptionTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollOptionTbl_PollTbl_PollId] FOREIGN KEY([PollId])
REFERENCES [dbo].[PollTbl] ([PollId])
GO
ALTER TABLE [dbo].[PollOptionTbl] CHECK CONSTRAINT [FK_PollOptionTbl_PollTbl_PollId]
GO
ALTER TABLE [dbo].[PollResponseOptionTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollResponseOptionTbl_PollOptionTbl_PollOptionId] FOREIGN KEY([PollOptionId])
REFERENCES [dbo].[PollOptionTbl] ([PollOptionId])
GO
ALTER TABLE [dbo].[PollResponseOptionTbl] CHECK CONSTRAINT [FK_PollResponseOptionTbl_PollOptionTbl_PollOptionId]
GO
ALTER TABLE [dbo].[PollResponseOptionTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollResponseOptionTbl_PollResponseTbl_PollResponseID] FOREIGN KEY([PollResponseID])
REFERENCES [dbo].[PollResponseTbl] ([PollResponseId])
GO
ALTER TABLE [dbo].[PollResponseOptionTbl] CHECK CONSTRAINT [FK_PollResponseOptionTbl_PollResponseTbl_PollResponseID]
GO
ALTER TABLE [dbo].[PollResponseTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollResponseTbl_MemberTbl_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[MemberTbl] ([MemberId])
GO
ALTER TABLE [dbo].[PollResponseTbl] CHECK CONSTRAINT [FK_PollResponseTbl_MemberTbl_MemberId]
GO
ALTER TABLE [dbo].[PollResponseTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollResponseTbl_PollTbl_PollId] FOREIGN KEY([PollId])
REFERENCES [dbo].[PollTbl] ([PollId])
GO
ALTER TABLE [dbo].[PollResponseTbl] CHECK CONSTRAINT [FK_PollResponseTbl_PollTbl_PollId]
GO
ALTER TABLE [dbo].[PollTbl]  WITH CHECK ADD  CONSTRAINT [FK_PollTbl_CompanyAdminTbl_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[CompanyAdminTbl] ([CompanyAdminId])
GO
ALTER TABLE [dbo].[PollTbl] CHECK CONSTRAINT [FK_PollTbl_CompanyAdminTbl_CreatedById]
GO
ALTER TABLE [dbo].[StateTbl]  WITH CHECK ADD  CONSTRAINT [FK_StateTbl_CountryTbl_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryTbl] ([CountryId])
GO
ALTER TABLE [dbo].[StateTbl] CHECK CONSTRAINT [FK_StateTbl_CountryTbl_CountryId]
GO
USE [master]
GO
ALTER DATABASE [AlumniProject] SET  READ_WRITE 
GO
