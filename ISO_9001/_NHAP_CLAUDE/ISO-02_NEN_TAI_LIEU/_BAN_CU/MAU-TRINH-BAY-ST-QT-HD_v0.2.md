# Mẫu trình bày cho ST, QT, HD

Phiên bản v0.2 · 13/11/2026 · Nhánh ISO-02 · Kiểm: HTQT-00, 13/11/2026 · Trạng thái: **đã kiểm, chưa duyệt** (trình Giám đốc cùng bộ GĐ1)
Áp cho: sổ tay, chính sách (ST), quy trình (QT), hướng dẫn và tiêu chí kiểm (HD) của cả 3 nhóm. **Không áp cho biểu mẫu**: biểu mẫu do nhóm BM trình bày theo QĐ-120 đến QĐ-122.
Căn cứ chốt: **HT-009** (HTQT-00 quyết theo HT-006, 13/11/2026) – chân trang, chức danh, chữ Arial, logo.

## 1. Khung đầu (mọi ST, QT, HD)

| [logo] <MÃ> · <TÊN TÀI LIỆU> | Phiên bản **vX.Y** · Hiệu lực: dd/mm/yyyy |
|---|---|
| Soạn: <chức danh> · Kiểm: <chức danh> · Duyệt: Giám đốc – <số quyết định> | Điều ISO liên quan · Nhóm chủ |

- Ghi **chức danh**, không ghi họ tên (HT-009).
- **Logo nhỏ** ở ô trái khung đầu, **chỉ trang 1** (HT-009). File: `VKG_K0_B_he1_viet-khoa_group-ky-thuat-co-khi_color_2048.png` trong bộ bàn giao (QĐ-55) – cùng file bộ biểu mẫu đang dùng. Cao khoảng 9 mm, giữ đúng tỷ lệ gốc.
- Cuối tài liệu luôn có bảng **Lịch sử**: Phiên bản · Ngày · Nội dung · Duyệt (QT-01 mục 3).

## 2. Bố cục theo loại

| Loại | Mục bắt buộc | Độ dài |
|---|---|---|
| **ST** | Khung đầu · nội dung (bảng là chính) · nguồn · lịch sử | 1 trang (ST-03: 1 trang A3) |
| **QT** | Khung đầu · 1 Để làm gì, áp cho ai · 2 Các bước (bảng mục 3) · 3 Khi có sự cố, ngoại lệ · 4 Hồ sơ của quy trình (tên, ai giữ, nơi lưu, giữ bao lâu) · lịch sử | **≤ 2 trang A4** (kế hoạch ISO v1 mục 2) |
| **HD** | Khung đầu · Dùng cho máy / việc / sản phẩm nào · Các bước kèm **ảnh thật** · Tiêu chí đạt / không đạt (ảnh mẫu đạt, mẫu lỗi) · Dụng cụ đo dùng · lịch sử | 1 trang; in A5 dán tại máy được |

## 3. Cách đánh số bước trong QT

| Quy ước | Ví dụ |
|---|---|
| Bước đánh `B1, B2, B3…`, mỗi bước một dòng bảng: **Bước · Ai · Làm gì · Biểu mẫu / hồ sơ** | `B3 · QC kiêm nhiệm · Kiểm theo thẻ, chụp ảnh gửi nhóm QC · CL-xx` |
| Rẽ nhánh thêm chữ: `B4a`, `B4b` | `B4a` hàng đạt → dán tem; `B4b` hàng lỗi → để riêng |
| Dẫn chiếu sang quy trình khác: ghi mã + bước | "sang QT-05 B2" |
| Không đánh số kiểu 1.1.1 nhiều tầng | Thợ đọc nhanh, nói miệng được "bước 3" |

## 4. Chân trang (HT-009)

| Trái | Giữa | Phải |
|---|---|---|
| `QT-01 · v1.0` | `Hiệu lực 05/01/2027` | `Trang 1/2` |

Biểu mẫu giữ chân trang mã ngày theo QĐ-121, QĐ-122 của nhóm BM (`CL-01.27A05`).

## 5. Khổ giấy, chữ, màu, in

- A4 đứng; lề 15 mm; ST-03 A3 ngang.
- Chữ **Arial** cho cả tiêu đề và nội dung (HT-009). Nội dung 10 pt, bảng 9 pt, tiêu đề mục 11 pt đậm, chân trang 8 pt.
- Chữ, đường kẻ màu xanh đậm `#0A2E5C`; chữ tối thiểu 8 pt; không chữ trắng trên nền tối; không để ý nghĩa nằm ở màu (in trắng đen, photocopy vẫn đọc được) – theo quy tắc in của bộ biểu mẫu (`vkg-bm-lap-bieu-mau`, bước 3).
- Bản phát hành là PDF; bản gốc `.docx` (QT-01 mục 4).

## 6. File mẫu

Bản `.docx` dựng thử đầu tiên là QT-01 v0.3 (`QT-01_Kiem-soat-tai-lieu-va-ho-so_v0.3.docx`), dựng bằng script `dung-docx-iso.ps1` cùng thư mục. File mẫu trắng riêng cho ST, QT, HD: tách ra từ bản này sau khi Giám đốc duyệt bộ GĐ1.

## Lịch sử

| Phiên bản | Ngày | Nội dung | Duyệt |
|---|---|---|---|
| v0.1 | 13/11/2026 | Nháp đầu: khung đầu, bố cục 3 loại, đánh số bước, 2 phương án chân trang | Chưa |
| v0.2 | 13/11/2026 | Theo HT-009: chân trang phương án 1; chức danh; Arial; logo trang 1. Gỡ các ô [CẦN XÁC NHẬN] tương ứng; thêm khổ giấy, cỡ chữ | Chưa |
