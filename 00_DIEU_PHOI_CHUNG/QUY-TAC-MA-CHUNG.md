# Quy tắc mã tài liệu chung – Chương trình HTQT

Phiên bản v1.0 · 12/11/2026 · Căn cứ: **HT-002** (Giám đốc duyệt 12/11/2026). Thay cho việc chọn phương án A/B/C riêng ở nhánh ISO-02.
Người giữ, cấp mã: HTQT-00. Khi cử Đại diện ISO, người đó cấp mã theo quy tắc này.

## 1. Bảng mã

| Loại tài liệu | Mã | Ví dụ | Ai viết nội dung |
|---|---|---|---|
| Văn bản hành chính nhân sự: quy chế, chính sách, nội quy, quyết định, thông báo | `VKG/HR/<QC \| CS \| NQ \| QĐ \| TB>-<001>/<năm>` | `VKG/HR/QC-001/2026` | NS |
| Sổ tay, chính sách, mục tiêu, bản đồ quá trình | `ST-xx` | ST-02 Chính sách chất lượng | ISO |
| Quy trình – **mọi lĩnh vực, một dãy số chung** | `QT-xx` | QT-01 Kiểm soát tài liệu và hồ sơ | Nhóm có chuyên môn |
| Hướng dẫn công việc, tiêu chí kiểm | `HD-xx` | HD-xx Tiêu chí kiểm mép cắt laser | Nhóm có chuyên môn |
| Biểu mẫu | `<nhóm bước việc>-xx` | BG-03, DH-01, SX-01, GH-02, NT-01, TT-01, GT-01 | Dựng: BM. Yêu cầu: nhóm cần dùng |
| JD | `JD-<vị trí>` | | NS |
| Bộ KPI | `KPI-<bộ phận>` | | NS |

**Nhóm bước việc của biểu mẫu:** BG báo giá · DH đơn hàng, hợp đồng · SX sản xuất · GH giao nhận · TT thanh toán · NT nghiệm thu, thanh lý, bảo hành · GT giới thiệu năng lực (theo QĐ-74, QĐ-122). **Thêm từ 12/11/2026:** `NS` nhân sự · `CL` chất lượng (phiếu QC, hàng lỗi) · `MH` mua hàng, nhà cung cấp · `NL` máy móc, bảo trì, dụng cụ đo.

## 2. Điều đã bỏ

| Bỏ | Thay bằng | Lý do |
|---|---|---|
| Tiền tố `BM-xx` cho biểu mẫu | Mã nhóm bước việc | "BM" trùng tên nhóm Biểu mẫu |
| `QT-001` dãy riêng của HR | `QT-xx` dãy chung | Trùng số với quy trình ISO |
| "QC" nghĩa kiểm tra chất lượng trong mã | `CL` | "QC" trong mã HR là quy chế |
| Cách gọi R0, R1 trong kế hoạch ISO | `vX.Y` | Thống nhất với HR, BM |

## 3. Phiên bản

`v0.x` nháp · `v1.0` ban hành lần đầu · `v1.1` sửa nhỏ · `v2.0` sửa nội dung chính. Bản cũ chuyển thư mục lưu trữ của nhóm, không xoá.

## 4. Cấp mã

1. Nhóm cần mã nhắn HTQT-00: loại, tên, nhóm chủ.
2. HTQT-00 kiểm `DANH-MUC-TAI-LIEU-CHUNG.md`, cấp số kế tiếp, ghi ngay vào danh mục.
3. Mã đã cấp không dùng lại, kể cả khi tài liệu bị huỷ.

## 5. Còn chờ

- Định dạng chân trang cho ST, QT, HD (biểu mẫu đã có theo QĐ-121): nhánh ISO-02 đề xuất trong mẫu trình bày.
- Cách đánh số các bước công việc trong QT: ISO-02 đề xuất.
