CREATE DATABASE primary_Foreign
GO

USE primary_Foreign
GO

CREATE TABLE BoMon(
	MaBM CHAR(10) PRIMARY KEY,
	name NVARCHAR(100) default N'ten bo mon'
)
GO

CREATE TABLE lop(
	MaLop CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'ten lop'

	PRIMARY KEY(MaLop)
)
GO

-- điều kiện để tạo khóa ngoại
	-- tham chiếu tới khóa chính
	-- unique, not null
	-- cùng kiểu dữ liệu
	-- cùng số lượng trường có sắp xếp

-- lợi ích:
	-- đảm bảo toàn vẹn dữ liệu, không có trường hợp tham chiếu tới dữ liệu không tồn tại

CREATE TABLE GiaoVien1(
	MaGV CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'ten giao vien',
	DiaChi NVARCHAR(100) DEFAULT N'dia chi giao vien',
	NgaySinh DATE,
	Sex BIT,
    MaBM CHAR (10)

	-- Tạo khóa ngoại ngay khi tạo bảng
	FOREIGN KEY (MaBM) REFERENCES dbo.BoMon(MaBM)
)
GO

CREATE TABLE GiaoVien(
	MaGV CHAR(10) NOT NULL,
	Name NVARCHAR(100) DEFAULT N'ten giao vien',
	DiaChi NVARCHAR(100) DEFAULT N'dia chi giao vien',
	NgaySinh DATE,
	Sex BIT,
    MaBM CHAR (10)
)
GO

ALTER TABLE dbo.GiaoVien ADD PRIMARY KEY (MaGV)
GO

-- tạo khóa ngoại sau khi tạo bảng
ALTER TABLE dbo.GiaoVien ADD FOREIGN KEY (MaBM) REFERENCES dbo.BoMon(MaBM)
GO

CREATE TABLE HocSinh(
	MaHS CHAR(10) PRIMARY KEY,
	Name NVARCHAR(100),
	MaLop CHAR(10)
)
GO

-- Tạo khóa ngoại sau khi tạo bảng
ALTER TABLE dbo.HocSinh ADD FOREIGN KEY (MaLop) REFERENCES dbo.lop (MaLop)

INSERT INTO dbo.BoMon(MaBM, name)
VALUES
(   'BM01', -- MaBM - char(10)
    N'bộ môn 1' -- name - nvarchar(100)
    )

INSERT INTO dbo.BoMon(MaBM, name)
VALUES
(   'BM02', -- MaBM - char(10)
    N'bộ môn 2' -- name - nvarchar(100)
    )

INSERT INTO dbo.BoMon(MaBM, name)
VALUES
(   'BM03', -- MaBM - char(10)
    N'bộ môn 3' -- name - nvarchar(100)
    )

INSERT INTO dbo.GiaoVien
(
    MaGV,
    Name,
    DiaChi,
    NgaySinh,
    Sex,
    MaBM
)
VALUES
(   'GV01',        -- MaGV - char(10)
    N'GV 1',       -- Name - nvarchar(100)
    N'DC 1',       -- DiaChi - nvarchar(100)
    GETDATE(), -- NgaySinh - date
    1,      -- Sex - bit
    'BM03'         -- MaBM - char(10)
    )