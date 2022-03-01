-- tao database
CREATE DATABASE SQLDBQUERY2
go

-- su dung database
USE SQLDBQUERY2
go

-- tao table
CREATE TABLE GiaoVien
(
	MaGV NVARCHAR(10),
	Name NVARCHAR(100)
)
go

CREATE TABLE hocsinh
(
	MaHS NVARCHAR(10),
	Name NVARCHAR(100),
	NgaySinh date
)
go

-- thêm dữ liệu
	-- kiểu số -> số bình thường
	-- kiểu ký tự hoặc ngày cần để trong cặp nháy đơn
	-- nếu là unicode thì cần có N phía trước và đặt nháy đơn
INSERT INTO dbo.hocsinh(MaHS, Name,NgaySinh)
VALUES(   N'5',      -- MaHS - nvarchar(10)
		  N'howkteam.com',      -- Name - nvarchar(100)
		  GETDATE() -- NgaySinh - date
		)
go

CREATE TABLE test(
	MaSo INT,
	Ten NVARCHAR(10),
	NgaySinh DATE,
	Nam BIT,
	DiaChi CHAR(20),
	TienLuong float
)
go


INSERT INTO dbo.test(MaSo, Ten, NgaySinh, Nam, DiaChi, TienLuong)
VALUES
(   10,         -- MaSo - int
    N'an',       -- Ten - nvarchar(10)
    '20020629', -- NgaySinh - date
    1,      -- Nam - bit
    'dia chi ne',        -- DiaChi - char(20)
    1000.0        -- TienLuong - float
    )
GO

-- nếu muốn insert toàn bộ các field trong table mà không cần dài dòng thì có thể dùng
INSERT INTO dbo.test VALUES
(   10,         -- MaSo - int
    N'lê',       -- Ten - nvarchar(10)
    '20020629', -- NgaySinh - date
    1,      -- Nam - bit
    'dia chi moi ne',        -- DiaChi - char(20)
    4000.0        -- TienLuong - float
    )
GO

INSERT INTO dbo.test VALUES
(   11,         -- MaSo - int
    N'lê',       -- Ten - nvarchar(10)
    '20020629', -- NgaySinh - date
    1,      -- Nam - bit
    'dia chi moi ne',        -- DiaChi - char(20)
    4000.0        -- TienLuong - float
    )
GO

INSERT INTO dbo.test VALUES
(   12,         -- MaSo - int
    N'lê',       -- Ten - nvarchar(10)
    '20020629', -- NgaySinh - date
    1,      -- Nam - bit
    'dia chi moi ne',        -- DiaChi - char(20)
    4000.0        -- TienLuong - float
    )
GO

INSERT INTO dbo.test VALUES
(   111,         -- MaSo - int
    N'lê',       -- Ten - nvarchar(10)
    '20020629', -- NgaySinh - date
    1,      -- Nam - bit
    'dia chi moi ne',        -- DiaChi - char(20)
    4000.0        -- TienLuong - float
    )
GO

-- xóa dữ liệu kết hợp điều kiện
-- nếu chỉ delete <tên bảng> thì sẽ xóa toàn bộ dự liệu trong bảng
-- xóa trường mong muốn thì thêm WHERE
-- các toán tử:
	-- >, <, >=, <=, <>, And, Or, =
DELETE dbo.test WHERE MaSo = 12
DELETE dbo.test WHERE TienLuong > 5000
DELETE dbo.test WHERE TienLuong > 5000 AND MaSo < 15

-- Update dữ liệu toàn bộ bảng với một trường
UPDATE dbo.test SET TienLuong = 50000

-- Update dữ liệu toàn bộ bảng với nhiều trường
UPDATE dbo.test SET TienLuong = 10000, DiaChi = 'Dia Chi'

-- update dữ liệu của trường mong muốn
UPDATE dbo.test SET TienLuong = 100000 WHERE Ten = 'An'
