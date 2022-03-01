
USE HowKteam
GO

-- cấu trúc truy vấn:

SELECT * FROM dbo.BOMON -- lấy hết tất cả dữ liệu trong bảng bộ môn

-- lấy mã bộ môn + tên bộ môn trong bảng bộ môn
SELECT MaBM, TenBM FROM dbo.BOMON

-- đổi tên cột hiển thị
SELECT MaBM AS '1', TenBM AS '2' FROM dbo.BOMON

-- xuất ra mã giáo viên + tên + tên bộ môn giáo viên đó dạy
SELECT MAGV, HOTEN, TENBM FROM dbo.GIAOVIEN, dbo.BOMON



-- bài tập

-- 1. Truy xuất thông tin của bảng tham gia đề tài
SELECT * FROM dbo.THAMGIADT

-- 2. Lấy ra Mã khoa và tên khoa tương ứng
SELECT MAKHOA, TENKHOA FROM dbo.KHOA

-- 3. Lấy ra họ Mã GV, tên GV và họ tên người thân tương ứng
SELECT GV.MAGV, GV.HOTEN, NT.TEN FROM GIAOVIEN AS GV, dbo.NGUOITHAN AS NT

-- 4. Lấy ra Mã GV, tên GV và tên khoa của giáo viên đó làm việc. Gợi ý: bộ môn nằm trong khoa
SELECT GV.MAGV, GV.HOTEN, K.TENKHOA FROM GIAOVIEN AS GV, KHOA AS K
