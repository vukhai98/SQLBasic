USE TEDU
GO
/*
-- Store procedure
-- Là chương trình hay hủ tục
-- Ta có  thể dùng Transact - SQL EXCUTE (EXEC) để thực thi các store procedure.
-- Stored procedure khác với các hàm xử lý là giá trị trả về của chúng
-- Không chứa trong tên và chúng không được sử dụng trực tiếp trong biểu thức
*/
/*
- Động : Có thể chỉnh sử khối lệnh, và tái sử dụng nhiều lần 
- Nhanh hơn : Tự phân tích cú pháp cho tối ưu .Và tạo bản sao để lần chạy sau không cần thực thi lại từ đầu
- Bảo mật : Giới hạn quyền cho user nào sử dựng user nào không
- Giảm bandwidth : Với các gói transaction lớn .Vài ngàn dòng lệnh một lúc thì dùng store sẽ đảm bảo 
*/
/*
CREATE PROC < NAME STORE>
[Paramter nếu có]
AS
BEGiN
	<Code xử lý>
END
*/
--EXEC  < NAME STORE>
