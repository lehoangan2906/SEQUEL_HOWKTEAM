
-- tao database
CREATE DATABASE SQLDBQUERY
go

-- su dung database
USE SQLDBQUERY
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
	Name NVARCHAR(100)
)
GO

 -- sua table, them cot ngay sinh
ALTER TABLE hocsinh ADD NgaySinh DATE 

-- chi xoa thong tin cua table chu khong xoa table 
TRUNCATE TABLE dbo.hocsinh

 -- xoa toan bo table hoc sinh khoi DB
DROP TABLE hocsinh
go