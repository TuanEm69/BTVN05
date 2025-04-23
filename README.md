# BTVN05
Bài tập số 5 của SV: k225480106095 - Nguyễn Tuấn Anh - Hệ quản trị cơ sở dữ liệu
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

BÀI LÀM

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết

 - Tạo bảng Chi tiết đơn: 
![Ảnh chụp màn hình (147)](https://github.com/user-attachments/assets/17c8039f-7112-458b-acd1-d7deb0722d2f)

-  Tạo bảng Đơn đặt vé:
![Ảnh chụp màn hình (148)](https://github.com/user-attachments/assets/67da2201-b2e9-4f2e-8873-32e041b97294)

- Tạo bảng Người dùng:
![Ảnh chụp màn hình (149)](https://github.com/user-attachments/assets/6fd0c8f0-a20f-499d-a623-34beff689929)

- Tạo bảng Sự kiện:
![Ảnh chụp màn hình (150)](https://github.com/user-attachments/assets/f0cc096d-4f49-454c-a988-6386e6aac7c6)

- Tạo bảng Thanh toán:
![Ảnh chụp màn hình (151)](https://github.com/user-attachments/assets/2d1c44eb-88ec-42e7-86a3-a2859530972d)

- Tạo bảng Vé:
![Ảnh chụp màn hình (152)](https://github.com/user-attachments/assets/030f37e1-b21f-4321-992c-05acbec5ca5c)

- Với các ngoại khóa cho các bảng:
![Ảnh chụp màn hình (162)](https://github.com/user-attachments/assets/27ec062f-06ba-4f37-a1e6-a672ef1827f4)

![Ảnh chụp màn hình (163)](https://github.com/user-attachments/assets/cf234eed-dfe5-41a3-a6eb-dc0502ff7158)

![Ảnh chụp màn hình (164)](https://github.com/user-attachments/assets/08be85c4-fe77-45aa-b99d-dcdf6bdbbc56)

![Ảnh chụp màn hình (165)](https://github.com/user-attachments/assets/41d5c171-ff97-4936-b463-74d3ec11d6a6)

![Ảnh chụp màn hình (166)](https://github.com/user-attachments/assets/44128322-dc43-43b5-b40c-860d0fb41213)

![Ảnh chụp màn hình (167)](https://github.com/user-attachments/assets/3b4ebbe8-d4bc-41c4-9796-c698978c1f09)

- Sơ đồ liên kết thực thể:
![Ảnh chụp màn hình (153)](https://github.com/user-attachments/assets/e1333b89-c2a3-4608-b51b-10e943d4a8c7)

- Thêm dữ liệu có kiểm soát vào các bảng để kiểm tra kích hoạt tự động chạy:
![Ảnh chụp màn hình (154)](https://github.com/user-attachments/assets/e95ad171-6c9c-480b-8d94-70e1996c4480)

![Ảnh chụp màn hình (155)](https://github.com/user-attachments/assets/4a6a7068-e67d-48f4-9b1e-d86b62bcca85)

![Ảnh chụp màn hình (156)](https://github.com/user-attachments/assets/4144817c-4d3e-4565-9503-008f0ccda659)

![Ảnh chụp màn hình (157)](https://github.com/user-attachments/assets/a4b71ba3-a5a3-4388-8ec5-bd0b2099e19a)

![Ảnh chụp màn hình (158)](https://github.com/user-attachments/assets/a99f0dee-f290-47ce-b30a-86203309cd4c)

![Ảnh chụp màn hình (159)](https://github.com/user-attachments/assets/0d8fe084-ba0d-44a8-b433-ecf74c16c5a1)


B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

BÀI LÀM

2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
-Thêm "số lượng đã bán" vào bảng "Vé":
![Ảnh chụp màn hình (152)](https://github.com/user-attachments/assets/9f70ee74-4e56-44d2-8119-8cb1fdf65ad9)

3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu:
![Ảnh chụp màn hình (168)](https://github.com/user-attachments/assets/5f847f0c-ad06-429b-b5cd-65fab0a00da1)

4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
![Ảnh chụp màn hình (161)](https://github.com/user-attachments/assets/a3a1115a-6ecb-45e1-a174-98700671f93e)

5. Kết luận về Trigger đã giúp gì cho đồ án của em.
- Trigger giúp tự động cập nhật các trường phi chuẩn như soluong_daban và soluong_conlai trong bảng Vẽ mà không cần phải thao tác thủ công mỗi khi có một thanh toán thành công. Điều này rất hữu ích khi hệ thống có lượng đơn hàng lớn hoặc có sự thay đổi dữ liệu thường xuyên.
