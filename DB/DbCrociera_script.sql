--la password dell'utente admin è Password01!
--la password dell'utente AntonioCassini è Cassini77!
--la password dell'utente BiancaBenedetti è benBianca44.
--la password dell'utente ElenaSiciliano è sicEI55!
--la password dell'utente EnricoFornari è Enrico99.


USE [master]
GO
/****** Object:  Database [IdentityAuthDB]    Script Date: 21/07/2022 20:37:30 ******/
CREATE DATABASE [IdentityAuthDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IdentityAuthDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IdentityAuthDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IdentityAuthDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IdentityAuthDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IdentityAuthDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IdentityAuthDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IdentityAuthDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IdentityAuthDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IdentityAuthDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IdentityAuthDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IdentityAuthDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IdentityAuthDB] SET  MULTI_USER 
GO
ALTER DATABASE [IdentityAuthDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IdentityAuthDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IdentityAuthDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IdentityAuthDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IdentityAuthDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IdentityAuthDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IdentityAuthDB] SET QUERY_STORE = OFF
GO
USE [IdentityAuthDB]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventi]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventi](
	[CodEvento] [varchar](4) NOT NULL,
	[CodLocale] [varchar](4) NOT NULL,
	[NomeEvento] [varchar](50) NULL,
 CONSTRAINT [PK_Eventi] PRIMARY KEY CLUSTERED 
(
	[CodEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locali]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locali](
	[CodLocale] [varchar](4) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Luogo] [varchar](100) NULL,
	[Posti] [int] NULL,
 CONSTRAINT [PK_Locali] PRIMARY KEY CLUSTERED 
(
	[CodLocale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prenotazioni]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prenotazioni](
	[CodPrenotazione] [uniqueidentifier] NOT NULL,
	[CodUtente] [nvarchar](450) NOT NULL,
	[CodReplica] [varchar](4) NOT NULL,
	[Quantita] [int] NOT NULL,
 CONSTRAINT [PK_Prenotazioni] PRIMARY KEY CLUSTERED 
(
	[CodPrenotazione] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repliche]    Script Date: 21/07/2022 20:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repliche](
	[CodReplica] [varchar](4) NOT NULL,
	[CodEvento] [varchar](4) NOT NULL,
	[DataEOra] [smalldatetime] NULL,
	[Annullato] [bit] NULL,
 CONSTRAINT [PK_Repliche] PRIMARY KEY CLUSTERED 
(
	[CodReplica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'b5dad443-fd55-408a-8039-771d684dffd3', N'52ea3c72-81db-43fe-9f18-a2c0fadc22b8', N'Admin', N'ADMIN')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07ead05e-6ce7-4dd5-adc6-2360392928fe', N'b5dad443-fd55-408a-8039-771d684dffd3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'07ead05e-6ce7-4dd5-adc6-2360392928fe', 0, N'eff9cfdf-253c-4f98-a272-6b5ccc5dcd4a', N'admin@admin.it', 0, 1, NULL, N'ADMIN@ADMIN.IT', N'ADMIN', N'AQAAAAEAACcQAAAAEDJgc519+N8b4EA82qZ8qhSKFnipgc4oz6FJraoBs4PrUPe5BfVHZtOQwtE+9Gjd3g==', NULL, 0, N'AB47ZNRBRBBLEFXJMESBDADC5O4AZF5J', 0, N'Admin', NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'270035f8-1c05-4b00-9429-d05a28f743e6', 0, N'0ca86c3a-fccc-49de-95a9-4f33bf385472', N'sic89@tel.com', 0, 1, NULL, N'SIC89@TEL.COM', N'ELENASICILIANO', N'AQAAAAEAACcQAAAAENOHDoRxB9Ig7XYl9llbR6lm34JE7HsW79P7pwMkB9yzYi210B594e3xCjw7bUlc8Q==', N'3389988555', 0, N'7OTXCNKPCBGJXGUK6TAKLNAXAURFYKGF', 0, N'ElenaSiciliano', N'Elena', N'Siciliano')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'4125aa2b-a354-45d3-8ba8-332727ddfd56', 0, N'491ac74d-ed30-4794-b49f-3544e4635d27', N'for.enrico@mail.com', 0, 1, NULL, N'FOR.ENRICO@MAIL.COM', N'ENRICOFORNARI', N'AQAAAAEAACcQAAAAEB0WdNE5GuNEOG8Cv0fTMNZThZ4cVHbOJSAXKm/D/7Gi6X4Yg3nktd+LUhBvEdyW6g==', N'3335566223', 0, N'EBDJ5L6DN4LLT2YWP2ZVHY45IXA7TP2F', 0, N'EnricoFornari', N'Enrico', N'Fornari')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'bf325a56-3894-4173-ba32-d999bbe4a57e', 0, N'beffd1df-a34c-4aec-b1f3-572216e7a4df', N'b.bianca@usrmail.it', 0, 1, NULL, N'B.BIANCA@USRMAIL.IT', N'BIANCABENEDETTI', N'AQAAAAEAACcQAAAAEGJnEv1Z1rh4ZhpEk7A23rSUCJs30JpSeT3OqwWkcv++knijHNyd4ZS/k7yqILw/rg==', N'3384455666', 0, N'KBC2A4PIQRGWRJ6VA4K6KWTSG5NLVVML', 0, N'BiancaBenedetti', N'Bianca', N'Benedetti')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'cfa008e4-1db2-40d9-9d5e-85a5cbac5503', 0, N'c8570665-f3ef-4b6e-b9df-e32db62d7797', N'casi.anto@mail.com', 0, 1, NULL, N'CASI.ANTO@MAIL.COM', N'ANTONIOCASSINI', N'AQAAAAEAACcQAAAAEEVnB5CvIUbRi4uxHlCF0f5krl+Ye7zbVAaThn3PYoWxC20DdjUUNkndQlb4AqyYzQ==', N'3351122333', 0, N'EMJ5UDPGQRNXTTBUBKH7J2P4AKL27AWL', 0, N'AntonioCassini', N'Antonio', N'Cassini')
GO
INSERT [dbo].[Eventi] ([CodEvento], [CodLocale], [NomeEvento]) VALUES (N'0001', N'0001', N'Concerto di Chopin')
GO
INSERT [dbo].[Eventi] ([CodEvento], [CodLocale], [NomeEvento]) VALUES (N'0002', N'0001', N'Beethoven sul mare')
GO
INSERT [dbo].[Eventi] ([CodEvento], [CodLocale], [NomeEvento]) VALUES (N'0003', N'0002', N'Il ventaglio - Goldoni')
GO
INSERT [dbo].[Eventi] ([CodEvento], [CodLocale], [NomeEvento]) VALUES (N'0004', N'0004', N'Pool Brunch Party')
GO
INSERT [dbo].[Locali] ([CodLocale], [Nome], [Luogo], [Posti]) VALUES (N'0001', N'Music Lounge', N'Ponte3-Piano2', 150)
GO
INSERT [dbo].[Locali] ([CodLocale], [Nome], [Luogo], [Posti]) VALUES (N'0002', N'Teatro', N'Ponte8-Piano3', 350)
GO
INSERT [dbo].[Locali] ([CodLocale], [Nome], [Luogo], [Posti]) VALUES (N'0003', N'Casinò', N'Ponte7-Piano4', 450)
GO
INSERT [dbo].[Locali] ([CodLocale], [Nome], [Luogo], [Posti]) VALUES (N'0004', N'Piscina', N'Ponte5-Piano9', 150)
GO
INSERT [dbo].[Prenotazioni] ([CodPrenotazione], [CodUtente], [CodReplica], [Quantita]) VALUES (N'ca39fbe9-62c3-4b35-a36a-08da6b454932', N'4125aa2b-a354-45d3-8ba8-332727ddfd56', N'0001', 3)
GO
INSERT [dbo].[Prenotazioni] ([CodPrenotazione], [CodUtente], [CodReplica], [Quantita]) VALUES (N'f2257747-20eb-4620-793c-08da6b4579f5', N'4125aa2b-a354-45d3-8ba8-332727ddfd56', N'0001', 1)
GO
INSERT [dbo].[Prenotazioni] ([CodPrenotazione], [CodUtente], [CodReplica], [Quantita]) VALUES (N'15072d9a-419b-4d03-3fe5-08da6b45b45a', N'4125aa2b-a354-45d3-8ba8-332727ddfd56', N'0001', 1)
GO
INSERT [dbo].[Prenotazioni] ([CodPrenotazione], [CodUtente], [CodReplica], [Quantita]) VALUES (N'db43d174-4ca6-4f1b-90b5-08da6b46aa84', N'4125aa2b-a354-45d3-8ba8-332727ddfd56', N'0002', 2)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0001', N'0001', CAST(N'2020-07-27T20:30:00' AS SmallDateTime), 0)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0002', N'0001', CAST(N'2020-07-28T20:30:00' AS SmallDateTime), 0)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0003', N'0001', CAST(N'2020-07-29T20:30:00' AS SmallDateTime), 0)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0004', N'0002', CAST(N'2020-08-01T20:30:00' AS SmallDateTime), 0)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0005', N'0003', CAST(N'2020-07-30T21:00:00' AS SmallDateTime), 0)
GO
INSERT [dbo].[Repliche] ([CodReplica], [CodEvento], [DataEOra], [Annullato]) VALUES (N'0006', N'0004', CAST(N'2020-07-27T21:00:00' AS SmallDateTime), 1)
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Eventi]  WITH CHECK ADD  CONSTRAINT [FK_Eventi_Locali] FOREIGN KEY([CodLocale])
REFERENCES [dbo].[Locali] ([CodLocale])
GO
ALTER TABLE [dbo].[Eventi] CHECK CONSTRAINT [FK_Eventi_Locali]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_AspNetUsers] FOREIGN KEY([CodUtente])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_AspNetUsers]
GO
ALTER TABLE [dbo].[Prenotazioni]  WITH CHECK ADD  CONSTRAINT [FK_Prenotazioni_Repliche] FOREIGN KEY([CodReplica])
REFERENCES [dbo].[Repliche] ([CodReplica])
GO
ALTER TABLE [dbo].[Prenotazioni] CHECK CONSTRAINT [FK_Prenotazioni_Repliche]
GO
ALTER TABLE [dbo].[Repliche]  WITH CHECK ADD  CONSTRAINT [FK_Repliche_Eventi] FOREIGN KEY([CodEvento])
REFERENCES [dbo].[Eventi] ([CodEvento])
GO
ALTER TABLE [dbo].[Repliche] CHECK CONSTRAINT [FK_Repliche_Eventi]
GO
USE [master]
GO
ALTER DATABASE [IdentityAuthDB] SET  READ_WRITE 
GO
