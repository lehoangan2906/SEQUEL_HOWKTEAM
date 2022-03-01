-- các kiểu dữ liệu hay sử dụng

-- int: kiểu dữ liệu số nguyên, tập hợp N
-- float: kiểu dữ liệu số thực, tập hợp R
-- char: kiểu ký tự, bộ nhớ cấp phát cứng
-- varchar: kiểu ký tự, bộ nhớ cấp phát động
-- nchar: kiểu ký tự, hỗ trợ tiếng Việt
-- nvarchar: kiểu ký tự, bộ nhớ cấp phát động, hỗ trợ tiếng Việt
-- date: lưu trữ ngày tháng, năm, giờ
-- time: lưu trữ giờ, phút, giây
-- bit: lưu giá trị 0 và 1
-- text: lưu văn bản lớn
-- ntext: lưu văn bản lớn chứa ký tự unicode

CREATE TABLE test
(
	Doc NVARCHAR(50), -- khai báo trường Doc kiểu nvarchar cấp phát động 50 ô nhớ
	masinhvien CHAR(10), -- khai báo trường masinhvien cấp phát cứng 10 ô nhớ
	birthday date,
	sex BIT, -- luu gia tri 0 hoac 1
)
go