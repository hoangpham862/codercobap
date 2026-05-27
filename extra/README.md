# Hướng dẫn sử dụng Script Tách Nền Ảnh (make_transparent.py)

Script này giúp tự động loại bỏ nền màu trắng bên ngoài của hình ảnh và chuyển đổi sang dạng PNG trong suốt (`transparent background`), đồng thời giữ lại màu trắng bên trong đối tượng (như lòng mắt, khuôn mặt) nhờ thuật toán loang màu (`flood-fill`) từ 4 góc và làm mịn biên (`anti-aliasing`).

## 1. Yêu cầu hệ thống

Bạn cần cài đặt Python 3 và thư viện xử lý ảnh `Pillow`.

Cài đặt thư viện `Pillow` bằng lệnh sau trong Terminal:
```bash
pip install Pillow
```

## 2. Cách chạy Script

Mở Terminal tại thư mục gốc của dự án và chạy lệnh theo cấu trúc sau:

```bash
python extra/make_transparent.py <đường_dẫn_ảnh_gốc> <đường_dẫn_ảnh_đầu_ra>
```

### Ví dụ cụ thể:

Nếu bạn muốn tách nền của một ảnh có tên là `my_avatar.png` và xuất ra file mới `my_avatar_transparent.png`:
```bash
python extra/make_transparent.py my_avatar.png my_avatar_transparent.png
```

Hoặc cập nhật trực tiếp vào tài nguyên ứng dụng:
```bash
python extra/make_transparent.py path/to/input.png presentation/resources/assets/images/splash_screen.png
```

## 3. Cơ chế hoạt động của Script
- **Flood Fill từ 4 góc**: Script sẽ bắt đầu dò quét từ 4 góc ngoài cùng của ảnh (0,0), (Rộng-1, 0), (0, Cao-1), (Rộng-1, Cao-1) và tìm tất cả các pixel màu trắng liên kết trực tiếp với bên ngoài để làm trong suốt. Điều này tránh việc làm mất màu trắng nằm *bên trong* đối tượng (ví dụ: lòng trắng mắt hoặc nền mặt của con mèo).
- **Anti-aliasing (Làm mịn viền)**: Tính toán độ mờ viền mềm mại (`alpha` chuyển tiếp từ 0 đến 255) tại các vị trí tiếp giáp giữa nét vẽ đen và nền trắng để ảnh không bị răng cưa sau khi tách nền.
