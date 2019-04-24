
USE [DB37]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE ApprovalStatustbl
(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(50)


CONSTRAINT ApprovalStatustbl_pk PRIMARY KEY (Id)
);


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE ActiveStatustbl
(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(50),

CONSTRAINT ActiveStatustbl_pk PRIMARY KEY (Id)
);


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE Studentstbl
(
Id INT IDENTITY(1,1) NOT NULL,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
RegistrationNumber NVARCHAR(50),
Username NVARCHAR(50),
StdPassword NVARCHAR(30),
CNIC NVARCHAR(15),
ApprovalStatusId INT,
ActiveStatusId INT,
CONSTRAINT Studentstbl_pk PRIMARY KEY (Id),
FOREIGN KEY(ApprovalStatusId) REFERENCES ApprovalStatustbl(Id) ON DELETE CASCADE,
FOREIGN KEY(ActiveStatusId) REFERENCES ActiveStatustbl(Id) ON DELETE CASCADE

);

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Parentstbl
(
Id INT IDENTITY(1,1) NOT NULL,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
PhoneNumber NVARCHAR(50),
PrntPassword NVARCHAR(30),
CNIC NVARCHAR(15),
ApprovalStatusId INT,
MailAddress NVARCHAR(50),
FOREIGN KEY(ApprovalStatusId) REFERENCES ApprovalStatustbl(Id) ON DELETE CASCADE,
CONSTRAINT Parentstbl_pk PRIMARY KEY (Id)
);


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Classtbl
(
Id INT IDENTITY(1,1) NOT NULL,
Section NVARCHAR(50),

CONSTRAINT Classtbl_pk PRIMARY KEY (Id)
);



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Subjectstbl
(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(50),

CONSTRAINT Subjectstbl_pk PRIMARY KEY (Id)

);

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ClassSubjecttbl
(
Id INT,
ClassId INT,
SubjectId INT,
FOREIGN KEY(ClassId) REFERENCES Classtbl(Id) ON DELETE CASCADE,
FOREIGN KEY(SubjectId) REFERENCES Subjectstbl(Id) ON DELETE CASCADE,
CONSTRAINT ClassSubjecttbl_pk PRIMARY KEY (Id)
);



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE StudentClasstbl
(
Id INT,
ClassId INT,
StudentId INT,

FOREIGN KEY(ClassId) REFERENCES Classtbl(Id) ON DELETE CASCADE,
FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id) ON DELETE CASCADE,

CONSTRAINT StudentClasstbl_pk PRIMARY KEY (Id)
);



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ParentStudenttbl
(
Id INT IDENTITY(1,1) NOT NULL,
ParentId INT,
StudentId INT,

FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id),
FOREIGN KEY(ParentId) REFERENCES Parentstbl(Id),
CONSTRAINT ParentStudenttbl_pk PRIMARY KEY (Id)
);



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE SchoolEventstbl
(
Id INT IDENTITY(1,1) NOT NULL,
Title NVARCHAR(50),
EventDescription NVARCHAR(MAX),
EventDate DateTime,
StartTime DateTime,
EndTime DateTime,
Contact NVARCHAR(20),
Charges NVARCHAR(20),


CONSTRAINT SchoolEventstbl_pk PRIMARY KEY (Id)
);





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE AttendanceStatustbl
(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(30)


CONSTRAINT AttendanceStatustbl_pk PRIMARY KEY (Id)
);





SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE AttendanceMarkingtbl
(
StudentId INT,
AttendanceDate DateTime,
AttendanceStatusId INT,

FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id) ON DELETE CASCADE,
FOREIGN KEY(AttendanceStatusId) REFERENCES AttendanceStatustbl(Id) ON DELETE CASCADE,
CONSTRAINT AttendanceMarkingtbl_pk PRIMARY KEY (StudentId,AttendanceDate)
);




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Adminstratortbl
(
Id INT IDENTITY(1,1) NOT NULL,
Username NVARCHAR(50),
Email NVARCHAR(50),
PhoneNumber NVARCHAR(50),
AdminPassword NVARCHAR(30),
CNIC NVARCHAR(20),


CONSTRAINT Administratortbl_pk PRIMARY KEY (Id, Username)
);




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Leavestbl
(
Id INT IDENTITY(1,1) NOT NULL,
ParentId INT,
StudentId INT,
LeaveDescription NVARCHAR(MAX),
DateFrom DATETIME,
DateEnd DATETIME,
ApprovalStatusId INT ,
FOREIGN KEY(ParentId) REFERENCES Parentstbl(Id) ,
FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id) ,
CONSTRAINT Leavestbl_pk PRIMARY KEY (Id)
);




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE StudentLefttbl
(
StudentId INT,
DateLeft DATETIME,
FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id) ON DELETE CASCADE,

CONSTRAINT StudentLefttbl_pk PRIMARY KEY (StudentId)
);




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE TimeTabletbl
(
WeeksDay NVARCHAR(30),
ClassId INT,
SubjectId INT,
LectureTime TIME,
FOREIGN KEY(ClassId) REFERENCES Classtbl(Id) ON DELETE CASCADE,
FOREIGN KEY(SubjectId) REFERENCES Subjectstbl(Id) ON DELETE CASCADE,
CONSTRAINT TimeTabletbl_pk PRIMARY KEY (WeeksDay, ClassId, SubjectId)
);



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Termstbl
(
Id INT IDENTITY(1,1) NOT NULL,
Name NVARCHAR(50)
CONSTRAINT Termstbl_pk PRIMARY KEY (Id)
);




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Markingstbl
(
ClassId INT,
SubjectId INT,
StudentId INT,
TotalMarks FLOAT,
ObtainedMarks FLOAT,
TermId INT

CONSTRAINT Markingstbl_pk PRIMARY KEY (ClassId, StudentId, SubjectId, TermId),
FOREIGN KEY(ClassId) REFERENCES Classtbl(Id) ON DELETE CASCADE,
FOREIGN KEY(SubjectId) REFERENCES Subjectstbl(Id) ON DELETE CASCADE,
FOREIGN KEY(StudentId) REFERENCES Studentstbl(Id) ON DELETE CASCADE,
FOREIGN KEY(TermId) REFERENCES Termstbl(Id) ON DELETE CASCADE
);


INSERT INTO Adminstratortbl("Username", Email, PhoneNumber, AdminPassword, CNIC)
VALUES ('Admin', 'admin@gmail.com', '03200498942', '123', '1234567890')

INSERT INTO AttendanceStatustbl(Name) VALUES ('Present')
INSERT INTO AttendanceStatustbl(Name) VALUES ('Absent')
INSERT INTO AttendanceStatustbl(Name) VALUES ('Leave')

INSERT INTO ApprovalStatustbl(Name) VALUES ('pending')
INSERT INTO ApprovalStatustbl(Name) VALUES ('approved')

INSERT INTO ActiveStatustbl(Name) VALUES ('Inavtice')
INSERT INTO ActiveStatustbl(Name) VALUES ('Active')


INSERT INTO Parentstbl (FirstName, LastName, PhoneNumber, PrntPassword, CNIC, ApprovalStatusId, MailAddress)
VALUES ('A', 'a', '21343234', '123', '11111', '2', 'A@gmail.com')
INSERT INTO Parentstbl (FirstName, LastName, PhoneNumber, PrntPassword, CNIC, ApprovalStatusId, MailAddress)
VALUES ('B', 'b', '243534', '123', '123213', '2', 'B@gmail.com')



INSERT INTO Studentstbl (FirstName, LastName, RegistrationNumber, Username, StdPassword, CNIC, ApprovalStatusId, ActiveStatusId)
VALUES ('C', 'A', NULL, 'C', '123', '1123342345435', '2', '2')
INSERT INTO Studentstbl (FirstName, LastName, RegistrationNumber, Username, StdPassword, CNIC, ApprovalStatusId, ActiveStatusId)
VALUES ('D', 'B', NULL, 'D', '123', '1165455', '2', '2')

INSERT INTO ParentStudenttbl(ParentId, StudentId)
VALUES ('1', '1')
INSERT INTO ParentStudenttbl(ParentId, StudentId)
VALUES ('2', '2')
