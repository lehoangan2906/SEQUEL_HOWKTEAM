USE HowKteam
GO


SELECT GV.MAGV, HOTEN, NT.TEN FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

-- lấy ra giáo viên có lương > 2000
SELECT * FROM dbo.GIAOVIEN
WHERE LUONG > 2000


-- lấy ra giáo viên là nữ và lương > 2000
SELECT * FROM dbo.GIAOVIEN
WHERE LUONG > 2000 AND PHAI = N'Nữ'

-- lấy ra giáo viên lớn hơn 40 tuổi
	-- YEAR -> lấy ra năm của ngày
	-- GETDATE --> lấy ra ngày hiện tại

SELECT * FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 40

-- lấy ra Họ Tên giáo viên, năm sinh và tuổi của giáo viên nhỏ hơn 40 tuổi
SELECT HOTEN, NGSINH, GETDATE() - YEAR(NGSINH) FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) <= 40

-- lấy ra mã GV, Tên GV và tên Khoa của giáo viên đó làm việc.
SELECT gv.MAGV, gv.HOTEN, k.TENKHOA FROM dbo.GIAOVIEN AS gv, dbo.BOMON AS BM, dbo.KHOA AS K
WHERE gv.MABM = BM.MABM AND BM.MAKHOA = K.MAKHOA

-- lấy ra giáo viên là trưởng bộ môn
SELECT GV.* FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM
WHERE GV.MAGV = BM.TRUONGBM

-- đếm số lượng giáo viên 
-- COUNT(*) --> đếm số lượng của tất cả record
-- COUNT(tên field) --> đếm số lượng của field đó
SELECT COUNT(*) AS N'Số lượng giáo viên' FROM dbo.GIAOVIEN

-- đếm số lượng người thân của giáo viên có mã GV là 007
-- COUNT(tên field) --> đếm số lượng của field đó
SELECT COUNT(*) AS N'Số lượng người thân của giáo viên có mã 007' FROM dbo.GIAOVIEN, dbo.NGUOITHAN
WHERE GIAOVIEN.MAGV = '007' AND GIAOVIEN.MAGV = NGUOITHAN.MAGV

-- lấy ra tên giáo viên và tên đề tài người đó tham gia
SELECT * FROM dbo.GIAOVIEN, dbo.THAMGIADT, dbo.DETAI
WHERE GIAOVIEN.MAGV = THAMGIADT.MAGV AND THAMGIADT.MADT = DETAI.MADT

-- lấy ra tên giáo viên và tên đề tài người đó tham gia khi người đó tham gia nhiều hơn 1 lần
-- truy vấn lồng
SELECT * FROM dbo.GIAOVIEN, dbo.THAMGIADT, dbo.DETAI
WHERE GIAOVIEN.MAGV = THAMGIADT.MAGV AND THAMGIADT.MADT = DETAI.MADT
