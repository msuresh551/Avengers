create database avengers
USE [avengers]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 01/25/2015 14:07:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Fname] [nvarchar](100) NULL,
	[Lname] [nvarchar](100) NULL,
	[Role] [nvarchar](100) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Status] [nvarchar](10) NULL,
	[Gender] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[BillingAddress] [nvarchar](MAX) NULL,
	[TempAddres] [nvarchar](MAX)null
	
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



CREATE TABLE [dbo].[Advertisements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[AdvertisementTitle] nvarchar(max) null,
[Description] nvarchar(max) null,
[PaymentDone] bit null,
[Money] int null,
[UserID] int,
[Createdon]  datetime,
Image_url  VARCHAR(100) NULL)
  
select * from Advertisements

CREATE TABLE [dbo].[Frequency](
	[AddID] [int] IDENTITY(1,1) NOT NULL,
	[AdvertiseType_ID] [int] NULL,
	[Poster] [varchar](1000) NULL,
	[File] [varchar] (1000) NULL,
	[Description] [nvarchar](100) NULL,
	[Status] [nvarchar](10) NULL,
	Image_url  VARCHAR(100) NULL
)

select * from Frequency
--no need to run this script
alter table Frequency   add Image_url  VARCHAR(100) NULL

select * from Frequency
select * from dbo.Advertisements

--Get All Advertisements by User ID
select * from Frequency where AdvertiseType_ID in (select ID from Advertisements where UserID=2)

select * from 

--Get Users ID
select 


--Users Subcription 
 

CREATE TABLE [dbo].[Users_subscription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
   [UserId] int not null,
	[AdvertiseType_ID] [int] NULL,
	[Status] [nvarchar](10) NULL default('Active'),
)


 select * from users


 
 
 select * from Advertisements
 
 select   u.Id,u.Fname,u.Mobile,u.Email,u.BillingAddress  from [Users_subscription] Us left join Users u on u.Id=Us.userid
 left join Frequency f on f.AdvertiseType_ID=Us.AdvertiseType_ID
  where Us.AdvertiseType_ID in (select a.ID from Advertisements a where a.UserID=2)

 
 select from users where Status='Active'

select * from Frequency
select * from Users_subscription
select * from Advertisements
select * from Frequency
drop table Users_subscription


