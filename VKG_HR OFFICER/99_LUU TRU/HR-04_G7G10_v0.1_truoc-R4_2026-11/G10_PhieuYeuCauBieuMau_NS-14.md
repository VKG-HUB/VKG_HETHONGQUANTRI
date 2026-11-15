# G10 – Phiếu yêu cầu biểu mẫu gửi nhóm BM: NS-14 Phiếu KPI sản xuất theo tuần

**Phục vụ ISO điều:** 9.1.1 (theo dõi, đo), 6.2 (số liệu mục tiêu chất lượng), 7.5.3 (hồ sơ)
**Căn cứ pháp luật (tra ngày 14/11/2026):** không có mẫu nhà nước.
**Trạng thái:** đã viết, đã tự kiểm, chưa rà soát, chưa duyệt · v0.1 – 14/11/2026 · Người viết: phiên HR-04 (gói G10) · Gửi: điều tiết nhóm BM (qua HR-00)

> Theo HTQT quy tắc 1, 2: NS nêu cần ghi gì, vì sao, điều ISO nào; BM dựng, phát hành ở `BIEU-MAU-VKG`.
> **Thử 20–30/11 (HT-007):** đội trưởng CN1 ghi 1 tuần bằng bản nháp Excel theo nền nhóm BM (HT-012 → HT-014): `05_DANH GIA KPI\IN_THU\macro\NS-14_Phieu-KPI-san-xuat-tuan.xltm` (chân trang `NS-14.NHAP`), PDF bản trắng ở `IN_THU\PDF\`. Phiếu này gửi bản sửa theo thử **trước 05/12/2026**.
> Căn cứ nội dung: `KPI-SX` (`VKG_HR_KPI-SX_SanXuat_v0.1_2026-11.md`), ST-05 v0.3 (nhóm ISO).

---

## Yêu cầu – NS-14 Phiếu KPI sản xuất theo tuần (mã đã cấp 13/11/2026)

| Mục | Nội dung |
|---|---|
| Vì sao | ST-05 đo theo tháng nhưng chưa có nơi ghi hằng ngày ở xưởng. Đội trưởng ghi tuần để có số đếm cho X-01 → X-06 (KPI-SX), làm mốc 01–03/2027 để Giám đốc chốt chỉ tiêu. ISO 9.1.1, 6.2 |
| Đầu phiếu | Xưởng (CN1/CN2) · Tuần từ – đến · Người ghi (chức danh) |
| Phần A – đơn giao (mỗi đơn 1 dòng, ~12 dòng) | **Tuần thử 20–30/11:** TT · Mã hồ sơ đơn · Ngày hẹn giao · Ngày giao thực tế · Đúng hẹn (Đ/T) · Ảnh QC cuối (C/K) · Làm lại do xưởng (C/K) · Công đoạn gây lỗi · Khách phản ánh (C/K) · Ghi chú. **Khi sổ HS-01 chạy (01/12 hoặc 23/11):** bỏ 3 cột ngày hẹn, ngày giao, đúng hẹn; đội trưởng chỉ ghi mã hồ sơ và các cột của xưởng (nhóm BM xem, HTQT-00 đồng ý 14/11) |
| Phần B – theo ngày (6 dòng) | Ngày · Số ca · Ca có phiếu cuối ca NS-12 · Tai nạn lao động · Sự cố không ai bị thương · Hàng lỗi phát hiện trong xưởng · Ký nháy ghi xong trong ngày |
| Phần C – cộng tuần | 12 ô đếm, **cùng thứ tự cột với sheet NhapTuan** của bảng tính KPI-SX; khi HS-01 chạy: ô (1) đơn đã giao, (2) đơn giao đúng hẹn do **Phó Giám đốc lọc từ HS-01 sáng thứ Hai**, đội trưởng không đếm; không nối công thức sang HS-01 · Khó khăn khi ghi · Người ghi ký · Người nhận ký |
| Không ghi | Tên thợ (KPI xưởng không ghi người – Khung KPI mục 8) |
| Ai ghi, ai giữ | Đội trưởng ghi; nộp sáng thứ Hai cho Đại diện ISO (khi cử) hoặc Giám đốc; lưu `05_DANH GIA KPI` theo tháng |
| Khổ, dạng | **A4 ngang**, 2 trang (A trang 1; B, C trang 2) hoặc 1 tờ 2 mặt; giấy để ghi tại xưởng. Bản Excel nhập: dùng sheet NhapTuan của KPI-SX (NS giữ), BM không cần dựng thêm |
| Khi nào cần | Mẫu chính thức trước 01/2027 (bắt đầu đo mốc). Bản nháp Excel `NS-14.NHAP` đủ cho thử |
| Điều ISO | 9.1.1, 6.2, 7.5.3 |

## Lưu ý tránh ghi hai lần (gửi kèm HTQT-00)

Ngày hẹn, ngày giao có ở sổ hồ sơ HS-01 (từ 01/12/2026), DH-01, GH-02. **Đã chốt (nhóm BM xem NS-14, HTQT-00 đồng ý 14/11):** tuần thử 20–30/11 giữ tạm 3 cột ngày hẹn, ngày giao, đúng hẹn. Khi HS-01 chạy (01/12 hoặc 23/11) NS-14 bỏ 3 cột này; Phó Giám đốc lọc số đơn giao, đơn đúng hẹn từ HS-01 sáng thứ Hai. Không dùng công thức nối sang HS-01. Phong cách: dòng đầu bảng Saira SemiBold, tiêu đề cột gọn (ví dụ "Đúng hẹn (Đ/T)").

## Việc cần xác nhận

| # | Nội dung | Ai |
|---|---|---|
| M1 | Ngày làm việc trong tuần (Phần B để 6 ngày, thứ Hai → thứ Bảy) | Giám đốc (giờ làm việc – G4) |
| M2 | ~~NS-14 lấy ngày từ HS-01 hay ghi riêng~~ – đã chốt 14/11 (xem mục trên) | Xong |
| M3 | Ai nhận phiếu sáng thứ Hai khi chưa cử Đại diện ISO | Giám đốc (H3) |
