-- dùng toán tử like lấy ra thằng bắt đầu bằng a trong column CustomerName
select * from Customers
where CustomerName like 'a%'
-- dùng toán tử like lấy ra thằng kết thúc bằng a trong column CustomerName
select * from Customers
where CustomerName like '%a'
-- dùng toán tử like lấy ra thằng có or ở giữa chuỗi kí tự bằng a trong column CustomerName
select * from Customers
where CustomerName like '%or%'
--dùng toán tử like lấy ra thằng chuỗi có ký tự thứ 2 là r bằng a trong column CustomerName
select * from Customers
where CustomerName like '_r%'

select * from Customers
where CustomerName like 'a_%_%'
-- dùng toán tử like lấy ra thằng bắt đầu bằng a và kết thúc bằng a trong column CustomerName
select * from Customers
where CustomerName not like 'a%a'