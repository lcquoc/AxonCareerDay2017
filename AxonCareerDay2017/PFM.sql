IF exists(select name from sysdatabases where name='PFM')
	BEGIN
		USE master
		Drop database PFM
	END
GO

Create database PFM
GO
Use PFM
GO

CREATE TABLE Users
(
	userId			int		IDENTITY(1,1) PRIMARY KEY,	
	passwords		nvarchar(50)
)
GO



CREATE TABLE Arise
(
	ariseId				int		IDENTITY(1,1),	
	userId				int		foreign key references UserInfo(userInforId),
	typeArise			bit,
	dateArise			date,
	moneyArise			int,
	descriptions		nvarchar(100),
	primary key(ariseId,userId)
)
go
CREATE TABLE UserInfo
(
	userInforId			int		IDENTITY(1,1) PRIMARY KEY,	
	name				nvarchar(50),
	birthday			date,
	gender				bit,
	email				varchar(50),
	phone				varchar(50),
	dailyLevel			int,
	weeklyLevel			int,
	monthly				int,
)
GO

-- Tạo procedure xóa dữ liệu tbl_sinhvien theo id

CREATE PROCEDURE del_userinfor 
@id int

AS
BEGIN
DELETE FROM UserInfo
WHERE 
userInforId = @id
END

-- Tạo procedure thêm dữ liệu
CREATE PROCEDURE insert_userinfor
@id varchar(50),
@name nvarchar(50),
@birthday date,
@gender  bit ,
@email nvarchar(50),
@phone nvarchar(50),
@dailylevel int,
@weeklylevel int,
@mothlylevel int
AS
BEGIN
INSERT INTO UserInfo(userInforId,name,birthday,gender,email,phone,dailylevel,weeklylevel,monthly) 
VALUES (@id,@name,@birthday,@gender,@email,@phone,@dailylevel,@weeklylevel,@mothlylevel ) 
END
--cap nhat giu lieu

CREATE PROCEDURE update_userinfor
@id varchar(50),
@name nvarchar(50),
@birthday date,
@gender  bit,
@email nvarchar(50),
@phone nvarchar(50),
@dailylevel int,
@weeklylevel int,
@mothlylevel int
AS
BEGIN
UPDATE UserInfo 
SET 

name = @name,
birthday= @birthday,
gender= @gender,
email= @email,
phone=@phone,
dailylevel=@dailylevel ,
weeklylevel=@weeklylevel ,
monthly=@mothlylevel 
WHERE userInforId = @id 
END

-- tao them xoa sua arise

-- Tạo procedure xóa dữ liệu tbl_sinhvien theo id


	ariseId				int		IDENTITY(1,1),	
	userId				int		foreign key references UserInfo(userInforId),
	typeArise			bit,
	dateArise			date,
	moneyArise			int,
	descriptions		int,
	primary key(ariseId,userId)


CREATE PROCEDURE del_arise 
@id int
AS
BEGIN
DELETE FROM Arise
WHERE 
ariseId = @id
END

-- Tạo procedure thêm dữ liệu
CREATE PROCEDURE update_raise
	@ariseId	int ,				
	@userId		int ,	
	@typeArise	 bit,
	@dateArise	date,
	@moneyArise		int	,
	@descriptions	nvarchar(100)
AS
BEGIN
INSERT INTO Arise (ariseId,userId,typeArise,dateArise,moneyArise,descriptions)
VALUES (@ariseId,@userId,@typeArise,@dateArise,@moneyArise,@descriptions) 
END
--cap nhat giu lieu

CREATE PROCEDURE update_arise
	@ariseId	int ,				
	@userId		int ,	
	@typeArise	 bit,
	@dateArise	date,
	@moneyArise		int	,
	@descriptions	nvarchar(100)
AS
BEGIN
UPDATE Arise 
SET 
	
	typeArise=@typeArise	,	
	 dateArise= @dateArise	,
	moneyArise =@moneyArise		,
	descriptions=@descriptions
WHERE ariseId=@ariseId
END
