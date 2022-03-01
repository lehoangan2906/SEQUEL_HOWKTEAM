CREATE DATABASE testPrimaryKey
GO

USE testPrimaryKey
go

-- unique: duy nhất trong toàn bộ bảng. Trường nào có unique thì không thể có 2 giá trị trùng nhau
-- not null: trường đó không được phép null
-- default: giá trị mặc định của trường đó nếu không gán giá trị khi insert
CREATE TABLE testPrimaryKey1(
	ID INT UNIQUE NOT NULL,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'
)
GO

-- khi đã tạo bảng, muốn sửa cột thành primary key
ALTER TABLE dbo.testPrimaryKey1 ADD PRIMARY KEY (ID)

-- tạo primary key ngay khi tạo bảng
CREATE TABLE testPrimaryKey2(
	ID INT PRIMARY KEY,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'
)
GO

-- tạo primary key gián tiếp trong khi tạo bảng
CREATE TABLE testPrimaryKey3(
	ID INT NOT NULL,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'

	PRIMARY KEY(ID)
)
GO

--  tạo primary key ngay trong bảng mà đặt tên cho key đó luôn
CREATE TABLE testPrimaryKey4(
	ID INT NOT NULL,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'

	CONSTRAINT pktest4 -- sau này xóa key cho dễ
	PRIMARY KEY (ID)
)
GO

-- tạo primary key sau khi tạo bảng và đặt tên cho key đó 
CREATE TABLE testPrimaryKey5(
	ID INT NOT NULL,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'
)
GO

ALTER TABLE dbo.testPrimaryKey5 ADD CONSTRAINT pktest5 PRIMARY KEY (ID)

INSERT INTO dbo.testPrimaryKey1( ID)
VALUES
(   0  -- ID - int
    )
GO

INSERT INTO dbo.testPrimaryKey1( ID)
VALUES
(   1  -- ID - int
    )
GO

INSERT INTO dbo.testPrimaryKey1( ID)
VALUES
(   2  -- ID - int
    )
GO

INSERT INTO dbo.testPrimaryKey1( ID)
VALUES
(   3  -- ID - int
    )
GO 

-- khóa chính có 2 trường
CREATE TABLE testPrimaryKey6(
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	NAME NVARCHAR(100) DEFAULT	N'Howkteam.com'

	PRIMARY KEY (ID1, ID2)
)
GO

