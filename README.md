# BTL-Web-Java (Nhóm lớp 05 - Nhóm BTL 15)
Đề tài: Hệ thống quản lý đặt phòng khách sạn <br>
--Tài khoản đăng nhập--
```
admin URL: localhost:8080/admin 
admin account: admin 
password: admin


client URL: localhost:8080/  
client accounts: test1  -->   test14  
password: 123456
```
## Đóng góp của các thành viên
- Trần Trung Hiếu: Chức năng đặt phòng, đăng nhập, xem thống kê
- Ngô Văn Quyết: Khách hàng xem danh sách khách sạn, danh sách phòng
- Đăng Thị Hoa: 

## Mô tả dự án
Hệ thống quản lý đặt phòng khách sạn là phần mềm chạy trên nền tảng Web. Hệ thống được thiết kế dành cho khách hàng và nhân viên khách sạn. Khách hàng sử dụng phần mềm để xem thông tin khách sạn, chọn phòng, đặt phòng. Nhân viên có thể dùng phần mềm để quản lý thông tin khách san, loại phòng, xác nhận đơn đặt phòng của khách hàng.

Những người được vào hệ thống và chức năng mỗi người được thực hiện khi vào hệ thống được quy định như sau: <br>
--- Khách hàng: 
* Xem danh sách khách sạn
* Xem thông tin khách sạn, danh sách phòng của khách sạn
* Đặt phòng (Yêu cầu đăng nhập)
* Lịch sử đặt phòng, trạng thái đơn đặt phòng (Yêu cầu đăng nhập)

--- Nhân viên (Yêu cầu đăng nhập):
* Quản lý thông tin khách sạn (thêm, sửa thông tin)
* Quản lý loại phòng khách sạn (thêm ,sửa thông tin)
* Xác nhận đơn đặt phòng của khách hàng
* Xem thống kê đặt phòng
## Thiết kế hệ thống
* Sơ đồ lớp thực thể <br>
![Class Diagram](https://user-images.githubusercontent.com/84428937/171127732-c0bffbab-0c54-4f2f-afd3-fc7cbad21bfb.PNG) <br>

* Sơ đồ CSDL <br>
![EER Diagram](https://user-images.githubusercontent.com/84428937/171127976-70773a50-8457-41ec-bb57-9e3f21ef777d.PNG)

## Demo
### Giao diện dành cho khách hàng
`Giao diện trang chủ, danh sách khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171128578-d19cf2a2-7d6c-4465-ba32-1890b7e3fc95.png) <br>

`Giao diện chọn phòng khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171130073-730eac8c-d3d9-41fd-a512-6974ed34d8c1.png) <br>

`Giao diện đặt phòng khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171130312-e5e939ad-827f-4307-99f0-40323bdccf72.png) <br>

`Giao diện xem lịch sử đặt phòng`
![image](https://user-images.githubusercontent.com/84428937/171130587-9a2d9a3a-2d0a-4bc9-bafe-5563445c72c7.png) <br>


### Giao diện dành cho nhân viên
`Giao diện quản lý thông tin khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171131092-d6bd6d46-a664-4f18-95fa-7a2339831e1a.png) <br>

`Giao diện sửa thông tin khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171131343-77174706-78df-424b-bd1d-3ee94e5f1813.png) <br>

`Giao diện quản lý phòng khách sạn`
![image](https://user-images.githubusercontent.com/84428937/171131592-b61ac2fb-8b2d-4a1e-9d0f-33cea3afec47.png) <br>

`Giao diện thống kê đặt phòng`
![image](https://user-images.githubusercontent.com/84428937/171131806-19257ea0-7048-4836-87b5-e4c7cc02705a.png) <br>

`Giao diện thống kê chi tiết`
![image](https://user-images.githubusercontent.com/84428937/171131908-76fc15ff-380b-410e-83c9-77f7dd01f681.png)
![image](https://user-images.githubusercontent.com/84428937/171132035-a60eff96-eaed-4461-9127-2cf795df7ebb.png)





