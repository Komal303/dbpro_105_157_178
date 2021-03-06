USE [DB37]
GO
/****** Object:  Table [dbo].[ActiveStatustbl]    Script Date: 04/05/2019 23:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActiveStatustbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [ActiveStatustbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Adminstratortbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminstratortbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[AdminPassword] [nvarchar](30) NOT NULL,
	[CNIC] [nvarchar](20) NOT NULL,
 CONSTRAINT [Administratortbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApprovalStatustbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovalStatustbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [ApprovalStatustbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceMarkingtbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceMarkingtbl](
	[StudentId] [int] NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
	[AttendanceStatusId] [int] NOT NULL,
 CONSTRAINT [AttendanceMarkingtbl_pk] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[AttendanceDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceStatustbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceStatustbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [AttendanceStatustbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClassSubjecttbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSubjecttbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
 CONSTRAINT [ClassSubjecttbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classtbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classtbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Section] [nvarchar](50) NOT NULL,
 CONSTRAINT [Classtbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Leavestbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leavestbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[LeaveDescription] [nvarchar](max) NOT NULL,
	[DateFrom] [datetime] NOT NULL,
	[DateEnd] [datetime] NOT NULL,
	[ApprovalStatusId] [int] NOT NULL,
 CONSTRAINT [Leavestbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Markingstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markingstbl](
	[ClassId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[TotalMarks] [float] NOT NULL,
	[ObtainedMarks] [float] NOT NULL,
	[TermId] [int] NOT NULL,
 CONSTRAINT [Markingstbl_pk] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC,
	[StudentId] ASC,
	[SubjectId] ASC,
	[TermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parentstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parentstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[PrntPassword] [nvarchar](30) NOT NULL,
	[CNIC] [nvarchar](15) NOT NULL,
	[ApprovalStatusId] [int] NOT NULL,
	[MailAddress] [nvarchar](50) NOT NULL,
 CONSTRAINT [Parentstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParentStudenttbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentStudenttbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [ParentStudenttbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SchoolEventstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolEventstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[EventDescription] [nvarchar](max) NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Contact] [nvarchar](20) NOT NULL,
	[Charges] [nvarchar](20) NOT NULL,
 CONSTRAINT [SchoolEventstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentClasstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClasstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [StudentClasstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentLefttbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLefttbl](
	[StudentId] [int] NOT NULL,
	[DateLeft] [datetime] NOT NULL,
 CONSTRAINT [StudentLefttbl_pk] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studentstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[StdPassword] [nvarchar](30) NOT NULL,
	[CNIC] [nvarchar](15) NOT NULL,
	[ApprovalStatusId] [int] NOT NULL,
	[ActiveStatusId] [int] NOT NULL,
 CONSTRAINT [Studentstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjectstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjectstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [Subjectstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Termstbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Termstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [Termstbl_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeTabletbl]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTabletbl](
	[WeeksDay] [nvarchar](30) NOT NULL,
	[ClassId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[LectureTime] [time](7) NOT NULL,
 CONSTRAINT [TimeTabletbl_pk] PRIMARY KEY CLUSTERED 
(
	[WeeksDay] ASC,
	[ClassId] ASC,
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[School_Students]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[School_Students]
AS
SELECT Classtbl.Section as ClassName,
Studentstbl.RegistrationNumber, 
Studentstbl.FirstName + ' '+ Studentstbl.LastName AS StudentName
FROM Studentstbl JOIN
StudentClasstbl
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl
ON StudentClasstbl.ClassId = Classtbl.Id


GO
/****** Object:  View [dbo].[Show_Events]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View [dbo].[Show_Events]
AS
SELECT SchoolEventstbl.Title,EventDescription, StartTime, EndTime, Charges
FROM SchoolEventstbl



GO
/****** Object:  View [dbo].[ShowAllActiveStudents]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View [dbo].[ShowAllActiveStudents]
as
Select 
Studentstbl.FirstName +' '+ Studentstbl.LastName AS Name,
Classtbl.Section AS Class,
Studentstbl.RegistrationNumber AS RegistrationNumber
FROM Studentstbl 
JOIN
StudentClasstbl 
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl
ON StudentClasstbl.ClassId = Classtbl.id
WHERE Studentstbl.ActiveStatusId = (SELECT Id 
FROM ActiveStatustbl
Where ActiveStatustbl.Name = 'Active')



GO
/****** Object:  View [dbo].[ShowAllInActiveStudents]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create View [dbo].[ShowAllInActiveStudents]
as
Select 
Studentstbl.FirstName +' '+ Studentstbl.LastName AS Name,
Classtbl.Section AS Class,
Studentstbl.RegistrationNumber AS RegistrationNumber
FROM Studentstbl 
JOIN
StudentClasstbl 
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl
ON StudentClasstbl.ClassId = Classtbl.id
WHERE Studentstbl.ActiveStatusId = (SELECT Id 
FROM ActiveStatustbl
Where ActiveStatustbl.Name = 'Inactive')


GO
SET IDENTITY_INSERT [dbo].[ActiveStatustbl] ON 

INSERT [dbo].[ActiveStatustbl] ([Id], [Name]) VALUES (1, N'Inactive')
INSERT [dbo].[ActiveStatustbl] ([Id], [Name]) VALUES (2, N'Active')
SET IDENTITY_INSERT [dbo].[ActiveStatustbl] OFF
SET IDENTITY_INSERT [dbo].[Adminstratortbl] ON 

INSERT [dbo].[Adminstratortbl] ([Id], [Username], [Email], [PhoneNumber], [AdminPassword], [CNIC]) VALUES (1, N'Admin', N'admin@gmail.com', N'03200498942', N'123', N'1234567890')
SET IDENTITY_INSERT [dbo].[Adminstratortbl] OFF
SET IDENTITY_INSERT [dbo].[ApprovalStatustbl] ON 

INSERT [dbo].[ApprovalStatustbl] ([Id], [Name]) VALUES (1, N'pending')
INSERT [dbo].[ApprovalStatustbl] ([Id], [Name]) VALUES (2, N'approved')
SET IDENTITY_INSERT [dbo].[ApprovalStatustbl] OFF
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (5, CAST(N'2019-05-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (5, CAST(N'2019-05-05 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (6, CAST(N'2019-05-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (6, CAST(N'2019-05-05 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (7, CAST(N'2019-05-04 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (7, CAST(N'2019-05-05 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (11, CAST(N'2019-05-04 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[AttendanceMarkingtbl] ([StudentId], [AttendanceDate], [AttendanceStatusId]) VALUES (11, CAST(N'2019-05-05 00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[AttendanceStatustbl] ON 

INSERT [dbo].[AttendanceStatustbl] ([Id], [Name]) VALUES (1, N'Present')
INSERT [dbo].[AttendanceStatustbl] ([Id], [Name]) VALUES (2, N'Absent')
INSERT [dbo].[AttendanceStatustbl] ([Id], [Name]) VALUES (3, N'Leave')
SET IDENTITY_INSERT [dbo].[AttendanceStatustbl] OFF
SET IDENTITY_INSERT [dbo].[ClassSubjecttbl] ON 

INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (5, 9, 5)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (6, 9, 6)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (7, 9, 7)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (8, 9, 8)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (9, 9, 9)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (10, 9, 10)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (12, 10, 12)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (14, 10, 14)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (15, 10, 15)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (16, 10, 16)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (17, 10, 17)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (18, 10, 18)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (20, 11, 19)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (21, 11, 20)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (22, 11, 21)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (23, 9, 22)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (24, 10, 23)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (25, 11, 24)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (26, 11, 25)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (27, 11, 26)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (28, 11, 27)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (30, 12, 29)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (31, 12, 30)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (32, 12, 31)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (33, 12, 32)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (34, 12, 33)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (35, 12, 34)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (37, 13, 35)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (38, 13, 36)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (39, 13, 37)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (40, 13, 38)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (41, 13, 39)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (42, 13, 40)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (43, 13, 41)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (44, 14, 42)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (45, 15, 43)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (46, 16, 44)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (47, 17, 45)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (48, 18, 46)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (50, 14, 48)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (52, 16, 50)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (53, 17, 51)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (54, 18, 52)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (55, 14, 53)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (56, 15, 54)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (57, 16, 55)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (58, 17, 56)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (59, 18, 57)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (60, 14, 58)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (61, 15, 59)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (62, 16, 60)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (63, 17, 61)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (64, 18, 62)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (65, 14, 63)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (66, 15, 64)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (67, 16, 65)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (68, 17, 66)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (69, 18, 67)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (70, 14, 68)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (72, 16, 70)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (73, 14, 71)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (74, 15, 72)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (76, 15, 74)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (77, 15, 75)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (78, 16, 76)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (79, 17, 77)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (80, 18, 78)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (81, 17, 79)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (82, 18, 80)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (83, 17, 81)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (84, 18, 82)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (85, 17, 83)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (86, 18, 84)
INSERT [dbo].[ClassSubjecttbl] ([Id], [ClassId], [SubjectId]) VALUES (87, 12, 85)
SET IDENTITY_INSERT [dbo].[ClassSubjecttbl] OFF
SET IDENTITY_INSERT [dbo].[Classtbl] ON 

INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (9, N'1')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (10, N'2')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (11, N'3')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (12, N'4')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (13, N'5')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (14, N'6')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (15, N'7')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (16, N'8')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (17, N'9')
INSERT [dbo].[Classtbl] ([Id], [Section]) VALUES (18, N'10')
SET IDENTITY_INSERT [dbo].[Classtbl] OFF
SET IDENTITY_INSERT [dbo].[Leavestbl] ON 

INSERT [dbo].[Leavestbl] ([Id], [ParentId], [StudentId], [LeaveDescription], [DateFrom], [DateEnd], [ApprovalStatusId]) VALUES (1, 4, 4, N'sick leave', CAST(N'2019-05-21 00:00:00.000' AS DateTime), CAST(N'2019-05-22 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Leavestbl] ([Id], [ParentId], [StudentId], [LeaveDescription], [DateFrom], [DateEnd], [ApprovalStatusId]) VALUES (2, 4, 4, N'urgent piece of work', CAST(N'2019-05-25 00:00:00.000' AS DateTime), CAST(N'2019-05-26 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Leavestbl] ([Id], [ParentId], [StudentId], [LeaveDescription], [DateFrom], [DateEnd], [ApprovalStatusId]) VALUES (3, 4, 4, N'abc', CAST(N'2019-06-22 00:00:00.000' AS DateTime), CAST(N'2019-06-30 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Leavestbl] OFF
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 5, 4, 50, 40, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 6, 4, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 7, 4, 50, 50, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 8, 4, 40, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 9, 4, 50, 13, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 10, 4, 50, 49, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 22, 4, 50, 20, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 5, 5, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 6, 5, 50, 44, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 7, 5, 50, 48, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 8, 5, 40, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 9, 5, 50, 23, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 10, 5, 50, 34, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 22, 5, 50, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 5, 6, 50, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 6, 6, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 7, 6, 50, 31, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 8, 6, 40, 36, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 9, 6, 50, 35, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 10, 6, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 22, 6, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 5, 7, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 6, 7, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 7, 7, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 8, 7, 40, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 9, 7, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 10, 7, 50, 6, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 22, 7, 50, 36, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 5, 11, 50, 19, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 6, 11, 50, 17, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 7, 11, 50, 35, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 8, 11, 40, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 9, 11, 50, 10, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 10, 11, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (9, 22, 11, 50, 29, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 12, 9, 50, 43, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 14, 9, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 15, 9, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 16, 9, 50, 14, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 17, 9, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 18, 9, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 23, 9, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 12, 10, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 14, 10, 50, 33, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 15, 10, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 16, 10, 50, 23, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 17, 10, 50, 10, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 18, 10, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 23, 10, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 12, 12, 50, 46, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 14, 12, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 15, 12, 50, 33, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 16, 12, 50, 40, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 17, 12, 50, 39, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 18, 12, 50, 37, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 23, 12, 50, 48, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 12, 13, 50, 23, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 14, 13, 50, 29, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 15, 13, 50, 20, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 16, 13, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 17, 13, 50, 27, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 18, 13, 50, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 23, 13, 50, 36, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 12, 14, 50, 35, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 14, 14, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 15, 14, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 16, 14, 50, 26, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 17, 14, 50, 37, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 18, 14, 50, 13, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (10, 23, 14, 50, 33, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 19, 15, 50, 20, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 20, 15, 55, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 21, 15, 50, 49, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 24, 15, 45, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 25, 15, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 26, 15, 30, 29, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 27, 15, 45, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 19, 16, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 20, 16, 55, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 21, 16, 50, 31, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 24, 16, 45, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 25, 16, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 26, 16, 30, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 27, 16, 45, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 19, 17, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 20, 17, 55, 22, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 21, 17, 50, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 24, 17, 45, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 25, 17, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 26, 17, 30, 22, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 27, 17, 45, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 19, 18, 50, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 20, 18, 55, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 21, 18, 50, 29, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 24, 18, 45, 27, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 25, 18, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 26, 18, 30, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 27, 18, 45, 23, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 19, 19, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 20, 19, 55, 46, 1)
GO
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 21, 19, 50, 44, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 24, 19, 45, 0, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 25, 19, 50, 30, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 26, 19, 30, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (11, 27, 19, 45, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 29, 20, 50, 38, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 30, 20, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 31, 20, 45, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 32, 20, 45, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 33, 20, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 34, 20, 40, 35, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 85, 20, 60, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 29, 21, 50, 38, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 30, 21, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 31, 21, 45, 35, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 32, 21, 45, 44, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 33, 21, 50, 45, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 34, 21, 40, 38, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 85, 21, 60, 51, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 29, 22, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 30, 22, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 31, 22, 45, 49, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 32, 22, 45, 26, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 33, 22, 50, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 34, 22, 40, 37, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 85, 22, 60, 31, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 29, 23, 50, 25, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 30, 23, 50, 12, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 31, 23, 45, 42, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 32, 23, 45, 14, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 33, 23, 50, 41, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 34, 23, 40, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 85, 23, 60, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 29, 24, 50, 40, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 30, 24, 50, 9, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 31, 24, 45, 32, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 32, 24, 45, 22, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 33, 24, 50, 21, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 34, 24, 40, 22, 1)
INSERT [dbo].[Markingstbl] ([ClassId], [SubjectId], [StudentId], [TotalMarks], [ObtainedMarks], [TermId]) VALUES (12, 85, 24, 60, 55, 1)
SET IDENTITY_INSERT [dbo].[Parentstbl] ON 

INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (4, N'Ahmed', N'AbdulKhaliq', N'00000000000', N'123', N'0000000000000', 2, N'Ahmed106ak@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (5, N'Talit', N'Mehmood', N'00000000001', N'123', N'0000000000001', 2, N'Talitm555@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (6, N'Shireen', N'Gull', N'00000000002', N'123', N'0000000000002', 2, N'shireengull999@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (7, N'Arslan', N'Dogar', N'00000000003', N'123', N'0000000000003', 2, N'arslandogar112@yahoo.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (9, N'Hamza', N'Nasir', N'00000000005', N'123', N'0000000000005', 2, N'hn876366@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (10, N'Aqsa', N'Zahid', N'00000000006', N'123', N'0000000000006', 2, N'aqsazahid879@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (11, N'Muhammad', N'Faraz', N'00000000007', N'123', N'0000000000007', 2, N'muhammadfaraz840@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (12, N'Mehreen', N'Gull', N'00000000008', N'123', N'0000000000008', 2, N'gmehreen06@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (13, N'Komal', N'Shehzadi', N'00000000004', N'123', N'0000000000004', 2, N'shehzadikomal303@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (14, N'Hina', N'Hina', N'00000000009', N'123', N'0000000000009', 2, N'hina54796@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (15, N'Usama', N'Usama', N'00000000010', N'123', N'0000000000010', 2, N'usamab701@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (16, N'Hamza', N'Farooq', N'00000000011', N'123', N'0000000000011', 2, N'm.hamza.arif786@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (17, N'Maryam', N'Maryam', N'00000000012', N'123', N'0000000000012', 2, N'maryamnawaz724@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (18, N'Ayesha', N'Jabbar', N'00000000013', N'123', N'0000000000013', 2, N'aj1284906@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (19, N'Hafsa', N'Kamal', N'00000000014', N'123', N'0000000000014', 2, N'hafsakamal47@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (20, N'Ume', N'Habiba', N'00000000015', N'123', N'0000000000015', 2, N'umehabib.cs@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (21, N'Hira', N'Hira', N'00000000016', N'123', N'0000000000016', 2, N'hiranaeem953@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (22, N'Mehreen', N'Mehreen', N'00000000017', N'123', N'0000000000017', 2, N'Mehro_nisa@yahoo.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (23, N'Aqib', N'Aqib', N'00000000018', N'123', N'0000000000018', 2, N'goninside@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (24, N'Azhar', N'Azhar', N'00000000019', N'123', N'0000000000019', 2, N'muazhar964@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (25, N'Zainab', N'Zainab', N'00000000020', N'123', N'0000000000020', 2, N'zainabwajid14@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (26, N'Rida', N'Rida', N'00000000021', N'123', N'0000000000021', 2, N'ridazara16@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (27, N'Awais', N'Awais', N'00000000023', N'123', N'0000000000023', 2, N'awais8111998@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (28, N'Usman', N'Usman', N'00000000024', N'123', N'0000000000024', 2, N'muausman111@gmail.com')
INSERT [dbo].[Parentstbl] ([Id], [FirstName], [LastName], [PhoneNumber], [PrntPassword], [CNIC], [ApprovalStatusId], [MailAddress]) VALUES (29, N'Adeel', N'Adeel', N'00000000025', N'123', N'0000000000025', 2, N'rana.adeel7273@gmail.com')
SET IDENTITY_INSERT [dbo].[Parentstbl] OFF
SET IDENTITY_INSERT [dbo].[ParentStudenttbl] ON 

INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (4, 4, 4)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (5, 5, 5)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (6, 6, 6)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (7, 7, 7)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (9, 9, 9)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (10, 10, 10)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (11, 11, 11)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (12, 12, 12)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (13, 13, 13)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (14, 14, 14)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (15, 15, 15)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (16, 16, 16)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (17, 17, 17)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (18, 18, 18)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (19, 19, 19)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (20, 20, 20)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (21, 21, 21)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (22, 22, 22)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (23, 23, 23)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (24, 24, 24)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (25, 25, 25)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (26, 26, 26)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (27, 27, 27)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (28, 28, 28)
INSERT [dbo].[ParentStudenttbl] ([Id], [ParentId], [StudentId]) VALUES (29, 29, 29)
SET IDENTITY_INSERT [dbo].[ParentStudenttbl] OFF
SET IDENTITY_INSERT [dbo].[SchoolEventstbl] ON 

INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (5, N'Parent Teacher Meeting', N'For class Play group to 3. Parents can come along with their children', CAST(N'2019-05-02 00:00:00.000' AS DateTime), CAST(N'2019-04-28 08:00:00.000' AS DateTime), CAST(N'2019-04-28 11:00:00.000' AS DateTime), N'03200498942', N'0')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (6, N'Parent Teacher Meeting', N'For class 4 to 7. Parents can come along with their children', CAST(N'2019-05-03 00:00:00.000' AS DateTime), CAST(N'2019-04-28 08:00:00.000' AS DateTime), CAST(N'2019-04-28 11:00:00.000' AS DateTime), N'03200498942', N'0')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (7, N'Parent Teacher Meeting', N'For class 8 to 10. Parents must bring their children', CAST(N'2019-05-04 00:00:00.000' AS DateTime), CAST(N'2019-04-28 08:00:00.000' AS DateTime), CAST(N'2019-04-28 11:00:00.000' AS DateTime), N'03200498942', N'0')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (9, N'Prize Distribution', N'Refreshments will by provided. Prizes will be awarded', CAST(N'2019-05-06 00:00:00.000' AS DateTime), CAST(N'2019-04-28 08:00:00.000' AS DateTime), CAST(N'2019-04-28 12:00:00.000' AS DateTime), N'03200498942', N'0')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (10, N'BDS', N'Blood Donor Society Event', CAST(N'2020-05-05 00:00:00.000' AS DateTime), CAST(N'2019-04-30 01:00:00.000' AS DateTime), CAST(N'2019-04-30 05:00:00.000' AS DateTime), N'03200498942', N'100')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (11, N'Satrangee', N'Concert', CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-04-30 04:00:00.000' AS DateTime), CAST(N'2019-04-30 08:00:00.000' AS DateTime), N'03200498942', N'200')
INSERT [dbo].[SchoolEventstbl] ([Id], [Title], [EventDescription], [EventDate], [StartTime], [EndTime], [Contact], [Charges]) VALUES (12, N'Civcon', N'Ceremony', CAST(N'2019-05-15 00:00:00.000' AS DateTime), CAST(N'2019-04-30 04:00:00.000' AS DateTime), CAST(N'2019-04-30 08:00:00.000' AS DateTime), N'03200498942', N'200')
SET IDENTITY_INSERT [dbo].[SchoolEventstbl] OFF
SET IDENTITY_INSERT [dbo].[StudentClasstbl] ON 

INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (4, 9, 4)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (5, 9, 5)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (6, 9, 6)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (7, 9, 7)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (9, 10, 9)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (10, 10, 10)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (11, 9, 11)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (12, 10, 12)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (14, 10, 13)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (15, 10, 14)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (16, 11, 15)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (17, 11, 16)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (18, 11, 17)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (19, 11, 18)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (20, 11, 19)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (21, 12, 20)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (22, 12, 21)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (23, 12, 22)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (24, 12, 23)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (25, 12, 24)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (26, 13, 25)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (27, 13, 26)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (28, 13, 27)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (29, 13, 28)
INSERT [dbo].[StudentClasstbl] ([Id], [ClassId], [StudentId]) VALUES (30, 13, 29)
SET IDENTITY_INSERT [dbo].[StudentClasstbl] OFF
INSERT [dbo].[StudentLefttbl] ([StudentId], [DateLeft]) VALUES (4, CAST(N'2019-04-30 00:00:00.000' AS DateTime))
INSERT [dbo].[StudentLefttbl] ([StudentId], [DateLeft]) VALUES (9, CAST(N'2019-04-30 00:00:00.000' AS DateTime))
INSERT [dbo].[StudentLefttbl] ([StudentId], [DateLeft]) VALUES (20, CAST(N'2019-04-30 00:00:00.000' AS DateTime))
INSERT [dbo].[StudentLefttbl] ([StudentId], [DateLeft]) VALUES (25, CAST(N'2019-04-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Studentstbl] ON 

INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (4, N'Ahmed', N'Abdul Khaliq', N'SSS-1', N'Ahmed123', N'123', N'0000000000000', 2, 1)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (5, N'Talit', N'Mehmood', N'SSS-2', N'Talit123', N'123', N'0000000000001', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (6, N'Shireen', N'Gull', N'SSS-3', N'Shireen123', N'123', N'0000000000002', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (7, N'Arslan', N'Dogar', N'SSS-4', N'Arslan123', N'123', N'0000000000003', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (9, N'Hamza', N'Nasir', N'SSS-5', N'Hamza123', N'123', N'0000000000005', 2, 1)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (10, N'Aqsa', N'Zahid', N'SSS-6', N'Aqsa123', N'123', N'0000000000006', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (11, N'Muhammad', N'Faraz', N'SSS-7', N'Faraz123', N'123', N'0000000000007', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (12, N'Mehreen', N'Gull', N'SSS-8', N'Mehreen123', N'123', N'0000000000008', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (13, N'Komal', N'shehzadi', N'SSS-9', N'Komal123', N'123', N'0000000000004', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (14, N'Hina', N'Hina', N'SSS-10', N'Hina123', N'123', N'0000000000009', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (15, N'Usama', N'Usama', N'SSS-11', N'Usama123', N'123', N'0000000000010', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (16, N'Hamza', N'Hamza', N'SSS-12', N'Hamza111', N'123', N'0000000000011', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (17, N'Maryam', N'Maryam', N'SSS-13', N'Maryam123', N'123', N'0000000000012', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (18, N'Ayesha', N'Jabbar', N'SSS-14', N'Ayesha123', N'123', N'0000000000013', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (19, N'Hafsa', N'Kamal', N'SSS-15', N'Hafsa123', N'123', N'0000000000014', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (20, N'Ume', N'Habiba', N'SSS-16', N'Ume123', N'123', N'0000000000015', 2, 1)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (21, N'Hira', N'Hira', N'SSS-17', N'Hira123', N'123', N'0000000000016', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (22, N'Mehreen', N'Mehreen', N'SSS-19', N'Mehreenhabib123', N'123', N'0000000000017', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (23, N'Aqib', N'Aqib', N'SSS-18', N'Aqib123', N'123', N'0000000000018', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (24, N'Azhar', N'Azhar', N'SSS-19', N'Azhar123', N'123', N'0000000000019', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (25, N'Zainab', N'Zainab', N'SSS-20', N'Zainab123', N'123', N'0000000000020', 2, 1)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (26, N'Rida', N'Rida', N'SSS-21', N'Rida123', N'123', N'0000000000022', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (27, N'Awais', N'Awais', N'SSS-22', N'Awais123', N'123', N'0000000000023', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (28, N'Usman', N'Usman', N'SSS-23', N'Usman123', N'123', N'0000000000023', 2, 2)
INSERT [dbo].[Studentstbl] ([Id], [FirstName], [LastName], [RegistrationNumber], [Username], [StdPassword], [CNIC], [ApprovalStatusId], [ActiveStatusId]) VALUES (29, N'Adeel', N'Adeel', N'SSS-24', N'Adeel123', N'123', N'0000000000025', 2, 2)
SET IDENTITY_INSERT [dbo].[Studentstbl] OFF
SET IDENTITY_INSERT [dbo].[Subjectstbl] ON 

INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (5, N'English (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (6, N'Urdu (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (7, N'Math (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (8, N'Islamiyat (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (9, N'Social Studies (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (10, N'Science (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (12, N'English (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (14, N'Urdu (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (15, N'Math (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (16, N'Islamiyat (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (17, N'Social Studies (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (18, N'Science (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (19, N'English (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (20, N'Urdu (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (21, N'Math (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (22, N'Computer (1)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (23, N'Computer (2)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (24, N'Islamiyat (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (25, N'Social Studies (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (26, N'Science (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (27, N'Computer (3)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (29, N'Urdu (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (30, N'Math (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (31, N'Islamiyat (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (32, N'Social Studies (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (33, N'Science (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (34, N'Computer (4)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (35, N'English (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (36, N'Urdu (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (37, N'Math (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (38, N'Islamiyat (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (39, N'Social Studies (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (40, N'Science (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (41, N'Computer (5)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (42, N'English (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (43, N'English (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (44, N'English (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (45, N'English (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (46, N'English (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (48, N'Urdu (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (50, N'Urdu (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (51, N'Urdu (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (52, N'Urdu (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (53, N'Math (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (54, N'Math (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (55, N'Math (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (56, N'Math (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (57, N'Math (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (58, N'Islamiyat (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (59, N'Islamiyat (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (60, N'Islamiyat (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (61, N'Islamiyat (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (62, N'Islamiyat (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (63, N'Social Studies (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (64, N'Social Studies (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (65, N'Social Studies (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (66, N'Pakistan Studies (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (67, N'Pakistan Studies (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (68, N'Science (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (70, N'Science (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (71, N'Computer (6)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (72, N'Computer (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (74, N'Urdu (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (75, N'Science (7)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (76, N'Computer (8)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (77, N'Physics (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (78, N'Physics (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (79, N'Chemistry (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (80, N'Chemistry (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (81, N'Biology (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (82, N'Biology (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (83, N'Computer (9)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (84, N'Computer (10)')
INSERT [dbo].[Subjectstbl] ([Id], [Name]) VALUES (85, N'English (4)')
SET IDENTITY_INSERT [dbo].[Subjectstbl] OFF
SET IDENTITY_INSERT [dbo].[Termstbl] ON 

INSERT [dbo].[Termstbl] ([Id], [Name]) VALUES (1, N'Term1')
INSERT [dbo].[Termstbl] ([Id], [Name]) VALUES (2, N'Term2')
INSERT [dbo].[Termstbl] ([Id], [Name]) VALUES (3, N'Term3')
SET IDENTITY_INSERT [dbo].[Termstbl] OFF
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Friday', 9, 5, CAST(N'00:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Friday', 9, 6, CAST(N'08:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Friday', 9, 7, CAST(N'10:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Friday', 9, 8, CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Friday', 9, 9, CAST(N'11:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Monday', 9, 5, CAST(N'08:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Monday', 9, 6, CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Monday', 9, 7, CAST(N'10:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Monday', 9, 8, CAST(N'11:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Monday', 9, 9, CAST(N'00:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Thursday', 9, 5, CAST(N'00:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Thursday', 9, 8, CAST(N'11:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Thursday', 9, 9, CAST(N'08:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Thursday', 9, 10, CAST(N'10:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Thursday', 9, 22, CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Tuesday', 9, 6, CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Tuesday', 9, 8, CAST(N'08:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Tuesday', 9, 9, CAST(N'10:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Tuesday', 9, 10, CAST(N'11:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Tuesday', 9, 22, CAST(N'00:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Wednesday', 9, 5, CAST(N'11:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Wednesday', 9, 7, CAST(N'00:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Wednesday', 9, 8, CAST(N'10:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Wednesday', 9, 10, CAST(N'08:00:00' AS Time))
INSERT [dbo].[TimeTabletbl] ([WeeksDay], [ClassId], [SubjectId], [LectureTime]) VALUES (N'Wednesday', 9, 22, CAST(N'09:00:00' AS Time))
ALTER TABLE [dbo].[AttendanceMarkingtbl]  WITH CHECK ADD FOREIGN KEY([AttendanceStatusId])
REFERENCES [dbo].[AttendanceStatustbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AttendanceMarkingtbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassSubjecttbl]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classtbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassSubjecttbl]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjectstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Leavestbl]  WITH CHECK ADD FOREIGN KEY([ParentId])
REFERENCES [dbo].[Parentstbl] ([Id])
GO
ALTER TABLE [dbo].[Leavestbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Markingstbl]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classtbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Markingstbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Markingstbl]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjectstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Markingstbl]  WITH CHECK ADD FOREIGN KEY([TermId])
REFERENCES [dbo].[Termstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Parentstbl]  WITH CHECK ADD FOREIGN KEY([ApprovalStatusId])
REFERENCES [dbo].[ApprovalStatustbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentStudenttbl]  WITH CHECK ADD FOREIGN KEY([ParentId])
REFERENCES [dbo].[Parentstbl] ([Id])
GO
ALTER TABLE [dbo].[ParentStudenttbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentClasstbl]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classtbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentClasstbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentLefttbl]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Studentstbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Studentstbl]  WITH CHECK ADD FOREIGN KEY([ActiveStatusId])
REFERENCES [dbo].[ActiveStatustbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Studentstbl]  WITH CHECK ADD FOREIGN KEY([ApprovalStatusId])
REFERENCES [dbo].[ApprovalStatustbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTabletbl]  WITH CHECK ADD FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classtbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TimeTabletbl]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjectstbl] ([Id])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[AllTermMarksOfAClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AllTermMarksOfAClass] @classid INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
Termstbl.Name as TermName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
JOIN Termstbl
ON Markingstbl.TermId = Termstbl.Id
WHERE Classtbl.Id = @classid
Group BY Studentstbl.RegistrationNumber, Classtbl.Section, Termstbl.Name


GO
/****** Object:  StoredProcedure [dbo].[AllTermMarksOfEachStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AllTermMarksOfEachStudent] @id INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
Termstbl.Name as TermName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
JOIN Termstbl
ON Markingstbl.TermId = Termstbl.Id
WHERE Studentstbl.Id = @id 
Group BY Studentstbl.RegistrationNumber, Classtbl.Section, Termstbl.Name


GO
/****** Object:  StoredProcedure [dbo].[AttendanceofEachStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[AttendanceofEachStudent] @studentid INT
AS
SELECT 
Studentstbl.RegistrationNumber, 
Studentstbl.FirstName + ' '+ Studentstbl.LastName AS StudentName,
AttendanceStatustbl.Name as Attendance_Status,
AttendanceMarkingtbl.AttendanceDate AS AttendanceDate
FROM Studentstbl JOIN
AttendanceMarkingtbl
ON Studentstbl.Id = AttendanceMarkingtbl.StudentId
JOIN AttendanceStatustbl
ON AttendanceStatustbl.Id = AttendanceMarkingtbl.AttendanceStatusId
Where StudentId = @studentid

GO
/****** Object:  StoredProcedure [dbo].[AttendanceofWholeClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[AttendanceofWholeClass] @Classid INT
AS
SELECT Classtbl.Section AS ClassName, Studentstbl.RegistrationNumber, AttendanceMarkingtbl.AttendanceDate, AttendanceStatustbl.Name AS AttendanceStatus
FROM Studentstbl JOIN
AttendanceMarkingtbl
ON Studentstbl.Id = AttendanceMarkingtbl.StudentId
JOIN AttendanceStatustbl
ON AttendanceStatustbl.Id = AttendanceMarkingtbl.AttendanceStatusId
JOIN StudentClasstbl
ON StudentClasstbl.StudentId = AttendanceMarkingtbl.StudentId
JOIN Classtbl
ON Classtbl.Id = @Classid
ORDER BY AttendanceDate DESC

GO
/****** Object:  StoredProcedure [dbo].[AverageOfSchool]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AverageOfSchool]
AS
SELECT
Classtbl.Section AS ClassName,
str((Sum(Markingstbl.ObtainedMarks)/Sum(Markingstbl.TotalMarks))*100) AS AverageOfClass
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
Group BY Classtbl.Section


GO
/****** Object:  StoredProcedure [dbo].[ShowClassWiseActiveStudents]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[ShowClassWiseActiveStudents] @classid INT
as
Select 
Studentstbl.FirstName +' '+ Studentstbl.LastName AS Name,
Classtbl.Section AS Class,
Studentstbl.RegistrationNumber AS RegistrationNumber
FROM Studentstbl 
JOIN
StudentClasstbl 
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl
ON StudentClasstbl.ClassId = Classtbl.id
WHERE Studentstbl.ActiveStatusId = 
(SELECT Id 
FROM ActiveStatustbl
Where ActiveStatustbl.Name = 'Active')
AND Classtbl.Id = @classid


GO
/****** Object:  StoredProcedure [dbo].[ShowClassWiseInActiveStudents]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[ShowClassWiseInActiveStudents] @class INT
as
Select 
Studentstbl.FirstName +' '+ Studentstbl.LastName AS Name,
Classtbl.Section AS Class,
Studentstbl.RegistrationNumber AS RegistrationNumber
FROM Studentstbl 
JOIN
StudentClasstbl 
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl
ON StudentClasstbl.ClassId = Classtbl.id
WHERE Studentstbl.ActiveStatusId = 
(SELECT Id 
FROM ActiveStatustbl
Where ActiveStatustbl.Name = 'Inactive')
AND ClassId = @class



GO
/****** Object:  StoredProcedure [dbo].[ShowStudentInfo]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[ShowStudentInfo] @studentid INT
as
Select 
Studentstbl.FirstName +' '+ Studentstbl.LastName AS Name,
Studentstbl.RegistrationNumber AS RegistrationNumber,
Studentstbl.Username,
Studentstbl.CNIC
FROM Studentstbl
WHERE Studentstbl.Id = @studentid



GO
/****** Object:  StoredProcedure [dbo].[StudentsOfClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentsOfClass] @Class nvarchar(30)
AS
SELECT Studentstbl.RegistrationNumber,
Studentstbl.FirstName + ' '+ Studentstbl.LastName AS StudentName,
Studentstbl.CNIC,
Studentstbl.Username
FROM 
Studentstbl 
JOIN StudentClasstbl
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN Classtbl 
ON Classtbl.Id = StudentClasstbl.ClassId
WHERE Classtbl.Section = @Class


GO
/****** Object:  StoredProcedure [dbo].[SubjectsOfStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubjectsOfStudent] @id INT
AS
SELECT Subjectstbl.Name, Studentstbl.RegistrationNumber
FROM 
Studentstbl 
JOIN StudentClasstbl
ON Studentstbl.Id = StudentClasstbl.StudentId
JOIN ClassSubjecttbl 
ON StudentClasstbl.ClassId = ClassSubjecttbl.ClassId
JOIN Subjectstbl
ON Subjectstbl.Id = ClassSubjecttbl.SubjectId
WHERE Studentstbl.Id = @id


GO
/****** Object:  StoredProcedure [dbo].[SubjectWiseMarkingForEachStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubjectWiseMarkingForEachStudent] @studentId INT
AS
SELECT Studentstbl.FirstName + ' ' + Studentstbl.LastName AS "Student Name", 
Studentstbl.RegistrationNumber AS RegNo, 
Subjectstbl.Name AS SubjectName, 
str(Markingstbl.TotalMarks) as TotalMarks, str(Markingstbl.ObtainedMarks) AS ObtainedMarks,
Termstbl.Name AS TermName
FROM Markingstbl
JOIN Studentstbl
ON Markingstbl.StudentId = Studentstbl.Id
JOIN Subjectstbl
ON Subjectstbl.Id = Markingstbl.SubjectId
JOIN Termstbl 
ON Termstbl.Id = Markingstbl.TermId
WHERE Studentstbl.Id = @studentId


GO
/****** Object:  StoredProcedure [dbo].[SubjectWiseMarksForClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SubjectWiseMarksForClass] @ClassId INT
AS
SELECT Classtbl.Section AS Class, Studentstbl.FirstName + ' ' + Studentstbl.LastName AS "Student Name", 
Studentstbl.RegistrationNumber AS "Registration Number", 
Subjectstbl.Name AS "Subject Name", 
str(Markingstbl.TotalMarks) AS "Total Marks", 
str(Markingstbl.ObtainedMarks) AS "Obtained Marks",
Termstbl.Name AS TermName
FROM Markingstbl
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
JOIN Subjectstbl
ON Subjectstbl.Id = Markingstbl.SubjectId
JOIN Studentstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Termstbl
ON Termstbl.Id = Markingstbl.TermId
WHERE Classtbl.Id = @ClassId


GO
/****** Object:  StoredProcedure [dbo].[TermWiseMarksOfAClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TermWiseMarksOfAClass] @classid INT, @termid INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
Termstbl.Name as TermName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
JOIN Termstbl
ON Markingstbl.TermId = Termstbl.Id
WHERE Classtbl.Id = @classid AND Markingstbl.TermId = @termid
Group BY Studentstbl.RegistrationNumber, Classtbl.Section, Termstbl.Name


GO
/****** Object:  StoredProcedure [dbo].[TermWiseMarksOfEachStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TermWiseMarksOfEachStudent] @id INT, @termid INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
Termstbl.Name as TermName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
JOIN Termstbl
ON Markingstbl.TermId = Termstbl.Id
WHERE Studentstbl.Id = @id AND Markingstbl.TermId = @termid
Group BY Studentstbl.RegistrationNumber, Classtbl.Section, Termstbl.Name


GO
/****** Object:  StoredProcedure [dbo].[TimeTableForEachClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[TimeTableForEachClass] @classid INT
AS
SELECT 
TimeTabletbl.WeeksDay AS WeekDayName,
Classtbl.Section as ClassName,
Subjectstbl.Name as SubjectName,
TimeTabletbl.LectureTime
FROM 
TimeTabletbl 
JOIN Classtbl
ON TimeTabletbl.ClassId = Classtbl.Id
JOIN Subjectstbl
ON TimeTabletbl.SubjectId = Subjectstbl.Id
Where TimeTabletbl.ClassId = @classid


GO
/****** Object:  StoredProcedure [dbo].[TotalMarksOfAllClasses]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalMarksOfAllClasses]
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
Group BY Studentstbl.RegistrationNumber, Classtbl.Section



GO
/****** Object:  StoredProcedure [dbo].[TotalMarksOfEachClass]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalMarksOfEachClass] @classid INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
WHERE Classtbl.Id = @classid
Group BY Studentstbl.RegistrationNumber, Classtbl.Section


GO
/****** Object:  StoredProcedure [dbo].[TotalMarksOfEachStudent]    Script Date: 04/05/2019 23:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TotalMarksOfEachStudent] @id INT
AS
SELECT
Studentstbl.RegistrationNumber,
Classtbl.Section AS ClassName,
str(Sum(Markingstbl.TotalMarks)) as TotalMarks,
str(Sum(Markingstbl.ObtainedMarks)) AS ObtainedMarks
FROM 
Studentstbl 
JOIN Markingstbl
ON Studentstbl.Id = Markingstbl.StudentId
JOIN Classtbl
ON Markingstbl.ClassId = Classtbl.Id
WHERE Studentstbl.Id = @id
Group BY Studentstbl.RegistrationNumber, Classtbl.Section


GO
