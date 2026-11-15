# Mẫu trình bày cho ST, QT, HD và văn bản có số

Phiên bản v0.4 · 14/11/2026 · Nhánh ISO-02 · Trạng thái: **đã viết, chưa duyệt**. Nhóm BM xem khung v0.2 ngày 14/11: đạt cho ST, QT, HD; v0.3 sửa theo HT-015, chờ BM xem lần cuối.
Áp cho: sổ tay, chính sách (ST), quy trình (QT), hướng dẫn và tiêu chí kiểm (HD) của cả 3 nhóm; hợp đồng, văn bản có số (NS-01 → 03, DH-02). **Không áp cho phiếu, sổ dạng Excel**: theo nền macro của nhóm BM (QĐ-120 đến QĐ-122).

> **Máy cần cài font Saira** (Saira, Saira SemiBold, Saira ExtraBold). Thiếu font thì Word thay chữ khác, script `dung-khung-dotx.ps1` báo cảnh báo.

**Căn cứ và lịch sử:**
- HT-009 (13/11/2026, HTQT-00): chức danh, Arial, logo bàn giao; chân trang ghi ngày rõ.
- HT-012 (14/11/2026, **Giám đốc**): mọi tài liệu, biểu mẫu quản trị dựng trên nền và theo phong cách nhóm BM.
- HT-013 (14/11/2026): thay chân trang của HT-009 bằng kiểu BM; header QĐ-120 lặp mọi trang; ngày hiệu lực ghi ở khung đầu.
- HT-014 (14/11/2026, theo góp ý BM): chân trang là biến thể QĐ-122; mã ngày = ngày công bố áp dụng; bản nháp `.NHAP`; một khung Word chung dựng từ bản nháp DH-02.
- HT-015 (14/11/2026, theo kết quả BM xem khung): **2 bản chân trang** (tài liệu / văn bản có số); **thay phần chữ của HT-009**: tên tài liệu, tiêu đề mục, đầu bảng dùng Saira; thân, bảng, chân trang giữ Arial.
- HT-016 (14/11/2026, theo ý **Giám đốc**): **quốc hiệu chỉ dùng ở hợp đồng.**

## 1. Hai khung Word

| File | Dùng cho | Chân trang |
|---|---|---|
| `KHUNG-TAI-LIEU-VKG_v0.3.dotx` | ST, QT, HD | (a) trái `<mã>.<mã ngày>` · giữa `v<X.Y>` · phải `Trang x/y` (HT-014) |
| `KHUNG-HOP-DONG-VKG_v0.3.dotx` | Hợp đồng, văn bản có số | (b) trái `<mã>.<mã ngày>` (ví dụ `NS-01.26Lxx`) · giữa `Số: ……` (số chứng từ) · phải `Trang x/y` – đúng QĐ-122 |

**Quốc hiệu (HT-016):** chỉ khung hợp đồng có khối "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM / Độc lập – Tự do – Hạnh phúc", căn giữa, chữ đậm, đặt **dưới header, trên tên hợp đồng**. Khung tài liệu (ST, QT, HD) **không có quốc hiệu**.

Dựng bằng `dung-khung-dotx.ps1 -Loai TaiLieu|HopDong`. Nhấp đúp `.dotx` ra bản mới, khung không đổi. Mã ngày = ngày công bố áp dụng: YY + chữ tháng (A=1 … H=8, J=9, K=10, L=11, M=12, bỏ I) + DD, ví dụ `QT-01.26L23` = 23/11/2026; bản nháp ghi `QT-01.NHAP`.

## 2. Quy cách chung của khung

| Phần | Quy cách | Nguồn |
|---|---|---|
| Khổ, lề | A4 đứng; lề trái, phải 45 pt (vùng chữ 505 pt, bằng bề rộng header biểu mẫu); trên 92 pt, dưới 50 pt; header, footer cách mép 22 pt | Header 505 pt theo `tao-anh-header.ps1`; BM xác nhận 14/11 |
| **Header (QĐ-120)** | Logo + tên công ty + địa chỉ CN1, CN2 + hotline, email, website + thanh xanh đỏ; **lặp mọi trang** | Ảnh do `tao-anh-header.ps1` (skill `vkg-bm-lap-bieu-mau`) dựng, logo bàn giao QĐ-55 |
| **Tên tài liệu** | Một dòng riêng ngay dưới thanh xanh đỏ, căn trái, **Saira ExtraBold 17 pt**, chữ hoa | HT-015; giống tên biểu mẫu NT-01 |
| Tiêu đề mục | **Saira đậm 11 pt** | HT-015 |
| Dòng đầu bảng | **Saira SemiBold 9,5 pt**, nền rất nhạt, lặp khi sang trang | HT-015; nền như DH-02 |
| Thân, bảng, chân trang | Arial 10,5 / 9,5 / 8 pt | HT-015; DH-02 |
| Cách dòng chữ Saira | Cố định (tên 22 pt, mục 15 pt, đầu bảng 12 pt), vì Saira mặc định cao dòng ~1,6 lần cỡ chữ | Thử QT-01 v0.5: để mặc định thì 3 trang, cố định thì 2 trang |
| Màu | Chữ, đường kẻ xanh đậm `#0A2E5C`; không xám nhạt; không chữ trắng trên nền tối | Skill `vkg-bm-lap-bieu-mau`; `LOGO\00-README.md` |
| Ô cần điền | Gạch chấm `……` | Skill `vkg-bm-lap-bieu-mau` |
| Kiểu đoạn có sẵn | `VKG Tên tài liệu`, `VKG Mục`, `VKG Thân`, `VKG Đầu dòng`, `VKG Bảng`, `VKG Đầu bảng`, `VKG Nhỏ`, `VKG Quốc hiệu` | — |

## 3. Khung đầu (ST, QT, HD)

Dòng tên tài liệu ở trên, rồi bảng:

| Mã: <MÃ> | Phiên bản **vX.Y** · Hiệu lực: dd/mm/yyyy |
|---|---|
| Soạn: <chức danh> · Kiểm: <chức danh> · Duyệt: Giám đốc – <số quyết định> | Điều ISO liên quan · Nhóm chủ |

- Ô trái dòng đầu **chỉ còn mã** (tên đã ở dòng riêng – HT-015).
- Ghi **chức danh**, không ghi họ tên (HT-009). **Ngày hiệu lực ghi rõ ở khung đầu** (HT-013).
- Không đặt logo trong khung đầu (header đã có).
- Cuối tài liệu luôn có bảng **Lịch sử**: Phiên bản · Ngày · Nội dung · Duyệt.

## 4. Bố cục theo loại

| Loại | Mục bắt buộc | Độ dài |
|---|---|---|
| **ST** | Tên · khung đầu · nội dung (bảng là chính) · nguồn · lịch sử. Không có quốc hiệu | 1 trang (ST-03: 1 trang A3) |
| **QT** | Tên · khung đầu · 1 Để làm gì, áp cho ai · 2 Quy tắc chung (nếu cần) · 3 Các bước (bảng mục 5) · 4 Ngoại lệ · 5 Hồ sơ · lịch sử | **≤ 2 trang A4** |
| **HD** | Tên · khung đầu · dùng cho máy / việc nào · các bước kèm **ảnh thật** · tiêu chí đạt / không đạt · dụng cụ đo · lịch sử | 1 trang; in A5 được. Mỗi máy 2 HD: an toàn (NS) và vận hành, tiêu chí kiểm (ISO), in chung một tờ A5 hai mặt (HT-011) |
| **Văn bản có số** | Quốc hiệu (chỉ hợp đồng, HT-016) · tên · số · căn cứ · các bên · điều khoản · chữ ký – nội dung do nhóm chủ (NS, BM) quyết | Theo văn bản |

## 5. Cách đánh số bước trong QT

| Quy ước | Ví dụ |
|---|---|
| Bước `B1, B2, B3…`, mỗi bước một dòng bảng: **Bước · Ai · Làm gì · Biểu mẫu / hồ sơ** | `B3 · QC kiêm nhiệm · Kiểm theo thẻ, chụp ảnh gửi nhóm QC · CL-xx` |
| Rẽ nhánh thêm chữ: `B4a`, `B4b` | `B4a` hàng đạt → dán tem; `B4b` hàng lỗi → để riêng |
| Dẫn chiếu quy trình khác: mã + bước | "sang QT-05 B2" |
| Không đánh số kiểu 1.1.1 nhiều tầng | Thợ nói miệng được "bước 3" |

## 6. Cách dựng file

0. **Giữ khóa Office trước** (HT-017): ghi vào `00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md` mục "Đang giữ" (phiên, giờ, việc, dự kiến xong); một lúc chỉ một phiên chạy Word, Excel tự động. Xong thì xóa khóa, ghi một dòng Lịch sử. Không tắt tiến trình Office của người khác; thấy tiến trình chạy ngầm sót thì ghi mục "Tiến trình sót".
1. Viết nháp `.md`: dòng `# TÊN TÀI LIỆU` đầu tiên, rồi bảng khung đầu, các mục `## …`.
2. Chạy `dung-docx-iso.ps1 -Md <nháp.md> -Out <file.docx> -Ma <mã> -PhienBan <X.Y> [-MaNgay NHAP|26L23] [-Loai TaiLieu|HopDong] [-So <số chứng từ>]` → ra `.docx` và `.pdf`, báo số trang.
3. Mở PDF xem từng trang (header, tên, chân trang, bảng sang trang) rồi mới gửi.
4. Bản phát hành là PDF; bản gốc `.docx` (QT-01 B5, B6).
5. Script tự đóng Word sạch. Nếu báo "file đang mở ở nơi khác": đợi vài giây cho Word lần trước thoát hẳn rồi chạy lại.

Đã thử (14/11/2026): QT-01 v0.5 trên khung tài liệu v0.3 ra **2 trang A4**; bản trắng hợp đồng trên khung hợp đồng v0.3 ra 1 trang, chân trang giữa `Số: ……`.

## Lịch sử

| Phiên bản | Ngày | Nội dung | Duyệt |
|---|---|---|---|
| v0.1 | 13/11/2026 | Nháp đầu: khung đầu, bố cục 3 loại, đánh số bước, 2 phương án chân trang | Chưa |
| v0.2 | 13/11/2026 | Theo HT-009: chân trang phương án 1; chức danh; Arial; logo trang 1 | Chưa |
| v0.3 | 14/11/2026 | Theo HT-012 → HT-014: khung Word chung kiểu BM; bỏ logo trong khung đầu | Chưa |
| v0.4 | 14/11/2026 | Theo HT-015: 2 khung (tài liệu / văn bản có số); tên tài liệu dòng riêng Saira ExtraBold; mục Saira đậm; đầu bảng Saira SemiBold; ô khung đầu chỉ còn mã; cách dòng cố định cho Saira; ghi "máy cần cài font Saira". Cùng ngày thêm quy tắc HT-016: quốc hiệu chỉ ở khung hợp đồng (khung, QT-01, ST đã kiểm: đúng sẵn, không phải sửa). Thêm bước 0 mục 6: giữ khóa Office theo HT-017 | Chưa |
