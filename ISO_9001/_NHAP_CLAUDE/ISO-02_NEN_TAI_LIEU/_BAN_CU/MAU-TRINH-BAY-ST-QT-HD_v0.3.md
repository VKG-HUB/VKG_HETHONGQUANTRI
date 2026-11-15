# Mẫu trình bày cho ST, QT, HD

Phiên bản v0.3 · 14/11/2026 · Nhánh ISO-02 · Kiểm: HTQT-00, 13/11/2026 (bản v0.1) · Trạng thái: **đã viết, chưa duyệt**; nhóm BM xem phong cách trước khi các nhóm dùng (HT-014)
Áp cho: sổ tay, chính sách (ST), quy trình (QT), hướng dẫn và tiêu chí kiểm (HD) của cả 3 nhóm; cùng khung Word dùng cho hợp đồng, văn bản dài (NS-01 → 03, DH-02). **Không áp cho phiếu, sổ dạng Excel**: theo nền macro của nhóm BM (QĐ-120 đến QĐ-122).

**Căn cứ và lịch sử:**
- HT-009 (13/11/2026, HTQT-00): chức danh, Arial, logo bàn giao; chân trang phương án 1 (ghi ngày rõ).
- HT-012 (14/11/2026, **Giám đốc**): mọi tài liệu, biểu mẫu quản trị dựng trên nền và theo phong cách nhóm BM.
- HT-013 (14/11/2026, HTQT-00): **thay chân trang của HT-009** bằng kiểu BM; header QĐ-120 lặp mọi trang; ngày hiệu lực ghi ở khung đầu.
- HT-014 (14/11/2026, HTQT-00 theo góp ý nhóm BM): chân trang là biến thể QĐ-122 cho tài liệu không phải chứng từ; mã ngày = ngày công bố áp dụng; bản nháp ghi `.NHAP`; một khung Word duy nhất dựng từ bản nháp DH-02 `.dotx`.

## 1. Khung Word chung

File `KHUNG-TAI-LIEU-VKG_v0.2.dotx`, dựng bằng `dung-khung-dotx.ps1` (cùng thư mục). Nhấp đúp `.dotx` ra bản mới, khung không đổi.

| Phần | Quy cách | Nguồn |
|---|---|---|
| Khổ, lề | A4 đứng; lề trái, phải 45 pt (vùng chữ 505 pt, bằng bề rộng header biểu mẫu); trên 92 pt, dưới 50 pt; header, footer cách mép 22 pt | Bề rộng 505 pt theo `tao-anh-header.ps1`; khoảng cách theo DH-02 |
| **Header (QĐ-120)** | Ảnh logo + tên công ty + địa chỉ CN1, CN2 + hotline, email, website + thanh xanh đỏ; **lặp mọi trang** | Ảnh dựng bằng `tao-anh-header.ps1` của skill `vkg-bm-lap-bieu-mau` (logo bàn giao QĐ-55) |
| **Chân trang (QĐ-122, biến thể HT-014)** | Trái `<mã>.<mã ngày>` · giữa `v<X.Y>` · phải `Trang x/y`. Mã ngày = ngày công bố áp dụng: YY + chữ tháng (A=1 … H=8, J=9, K=10, L=11, M=12, bỏ I) + DD, ví dụ `QT-01.26L23` = 23/11/2026. Bản nháp: `QT-01.NHAP` | HT-014 |
| Chữ | Arial; thân 10,5 pt; bảng 9,5 pt; tiêu đề mục 11 pt đậm; chân trang 8 pt | DH-02 (thân 10,5, bảng 9,5) |
| Màu | Chữ, đường kẻ xanh đậm `#0A2E5C`; dòng tiêu đề bảng nền rất nhạt (như DH-02); không xám nhạt; không chữ trắng trên nền tối | Skill `vkg-bm-lap-bieu-mau` bước 3; `LOGO\00-README.md` |
| Ô cần điền | Gạch chấm `……` | Skill `vkg-bm-lap-bieu-mau` |
| Kiểu đoạn có sẵn | `VKG Mục`, `VKG Thân`, `VKG Đầu dòng`, `VKG Bảng`, `VKG Nhỏ` | — |

## 2. Khung đầu (mọi ST, QT, HD)

| <MÃ> · <TÊN TÀI LIỆU> | Phiên bản **vX.Y** · Hiệu lực: dd/mm/yyyy |
|---|---|
| Soạn: <chức danh> · Kiểm: <chức danh> · Duyệt: Giám đốc – <số quyết định> | Điều ISO liên quan · Nhóm chủ |

- Ghi **chức danh**, không ghi họ tên (HT-009).
- **Ngày hiệu lực ghi rõ ở khung đầu** (HT-013), vì chân trang chỉ có mã ngày.
- Logo đã có ở header mọi trang nên **không đặt thêm logo trong khung đầu** (thay ý "logo trang 1" của HT-009).
- Cuối tài liệu luôn có bảng **Lịch sử**: Phiên bản · Ngày · Nội dung · Duyệt (QT-01 mục 2).

## 3. Bố cục theo loại

| Loại | Mục bắt buộc | Độ dài |
|---|---|---|
| **ST** | Khung đầu · nội dung (bảng là chính) · nguồn · lịch sử | 1 trang (ST-03: 1 trang A3) |
| **QT** | Khung đầu · 1 Để làm gì, áp cho ai · 2 Quy tắc chung (nếu cần) · 3 Các bước (bảng mục 4) · 4 Ngoại lệ · 5 Hồ sơ (tên, ai giữ, nơi lưu, giữ bao lâu) · lịch sử | **≤ 2 trang A4** (kế hoạch ISO v1 mục 2) |
| **HD** | Khung đầu · Dùng cho máy / việc / sản phẩm nào · Các bước kèm **ảnh thật** · Tiêu chí đạt / không đạt (ảnh mẫu đạt, mẫu lỗi) · Dụng cụ đo dùng · lịch sử | 1 trang; in A5 dán tại máy được. Mỗi máy 2 HD: an toàn (NS) và vận hành, tiêu chí kiểm (ISO), in chung một tờ A5 hai mặt (HT-011) |

## 4. Cách đánh số bước trong QT

| Quy ước | Ví dụ |
|---|---|
| Bước đánh `B1, B2, B3…`, mỗi bước một dòng bảng: **Bước · Ai · Làm gì · Biểu mẫu / hồ sơ** | `B3 · QC kiêm nhiệm · Kiểm theo thẻ, chụp ảnh gửi nhóm QC · CL-xx` |
| Rẽ nhánh thêm chữ: `B4a`, `B4b` | `B4a` hàng đạt → dán tem; `B4b` hàng lỗi → để riêng |
| Dẫn chiếu sang quy trình khác: ghi mã + bước | "sang QT-05 B2" |
| Không đánh số kiểu 1.1.1 nhiều tầng | Thợ đọc nhanh, nói miệng được "bước 3" |

## 5. Cách dựng file

1. Viết nháp `.md` theo mục 2–4.
2. Chạy `dung-docx-iso.ps1 -Md <nháp.md> -Out <file.docx> -Ma <mã> -PhienBan <X.Y> [-MaNgay NHAP|26L23]` → ra `.docx` và `.pdf` trên khung chung, báo số trang.
3. Mở PDF xem từng trang (header, chân trang, bảng sang trang) rồi mới gửi.
4. Bản phát hành là PDF; bản gốc `.docx` (QT-01 B5, B6).

Đã thử: QT-01 v0.4 dựng trên khung v0.2 ra **đúng 2 trang A4**, header lặp cả 2 trang, chân trang `QT-01.NHAP · v0.4 · Trang x/2` (14/11/2026).

## Lịch sử

| Phiên bản | Ngày | Nội dung | Duyệt |
|---|---|---|---|
| v0.1 | 13/11/2026 | Nháp đầu: khung đầu, bố cục 3 loại, đánh số bước, 2 phương án chân trang | Chưa |
| v0.2 | 13/11/2026 | Theo HT-009: chân trang phương án 1; chức danh; Arial; logo trang 1 | Chưa |
| v0.3 | 14/11/2026 | Theo HT-012, HT-013, HT-014: khung Word chung kiểu BM (header QĐ-120 mọi trang, chân trang mã + mã ngày, phiên bản, số trang; bản nháp NHAP); bỏ logo trong khung đầu; cỡ chữ theo DH-02; thêm cách dựng file | Chưa |
