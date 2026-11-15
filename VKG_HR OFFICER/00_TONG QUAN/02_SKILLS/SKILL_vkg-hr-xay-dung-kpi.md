---
name: vkg-hr-xay-dung-kpi
description: Xây dựng khung và bộ KPI cho phòng ban / vị trí tại VKG, gồm công thức, nguồn dữ liệu, tần suất, chỉ tiêu, tỷ trọng và cách quy đổi điểm. Dùng khi thiết kế hoặc rà soát KPI.
---

# Xây dựng KPI VKG

**Phiên bản: v1.2 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

> **Phạm vi:** Dùng trong Project VKG_HR OFFICER. Nếu không đọc được file 01–04 và Hồ sơ chung doanh nghiệp, báo người dùng và ghi [CẦN XÁC NHẬN], không tự điền.

## Đầu vào
Mục tiêu công ty / phòng ban; vị trí; JD (nếu có); dữ liệu nào đang đo được.

## Đầu ra (bảng tính)
| Mã KPI | Loại (Chính / Phụ) | Tên KPI | Nhóm (Tài chính / Khách hàng / Quy trình / Học hỏi) | Công thức | Đơn vị | Nguồn dữ liệu | Tần suất | Chỉ tiêu | Tỷ trọng | Thang điểm |

Kèm theo: cách quy đổi điểm, xếp loại (A/B/C/D), liên kết với thưởng (nếu đã có quy chế).

## Yêu cầu bảng tính (file 03 mục 2)
- Mọi số tính toán (điểm, tổng tỷ trọng, xếp loại) dùng **công thức**, không nhập tay.
- Có **sheet Hướng dẫn**: cách nhập, ý nghĩa cột, cách tính điểm.
- Dữ liệu mẫu là **dữ liệu giả** (Nhân viên A, NV001…), không dùng tên thật hay số liệu cá nhân thật.
- Có ô kiểm tra tổng tỷ trọng KPI chính = 100%.

## Quy tắc
- Mỗi vị trí có **5–7 KPI chính**, tổng tỷ trọng KPI chính = 100%.
- Có thể thêm **3–5 KPI phụ nếu cần**. KPI phụ ghi rõ cách dùng: cộng/trừ điểm, điều kiện, hay chỉ để theo dõi. Nếu chưa có quy chế quyết định cách dùng, ghi [CẦN XÁC NHẬN].
- KPI phải đo được bằng dữ liệu có thật. Nếu chưa có nguồn dữ liệu, đánh dấu "cần xây dựng nguồn".
- Ưu tiên KPI kết quả hơn KPI hoạt động.
- Phân tầng: KPI công ty → phòng ban → cá nhân; ghi rõ liên kết.
- Tên bộ phận theo file `01_BOI_CANH_DU_AN.md`. Đặt tên file theo `04_QUY_TAC_VAN_HANH.md` (mã KPI).

## Kiểm tra trước khi giao
1. Chạy phiếu tự kiểm C1–C7 trong `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`.
2. Cuối bảng tính (hoặc sheet riêng) có mục **Việc cần xác nhận**.
3. Nhắc người dùng **rà soát độc lập (bắt buộc)** bằng skill `vkg-hr-ra-soat-chat-luong` trước khi trình duyệt. Nếu KPI liên kết với lương, thưởng hoặc kỷ luật: thêm skill `vkg-hr-ra-soat-phap-ly`. Nên chạy rà soát trong một hội thoại riêng.
4. Khi bộ KPI được duyệt (v1.0), nhắc ghi **Nhật ký quyết định** (`00_TONG QUAN`).

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Số KPI: 5–7 KPI chính + 3–5 KPI phụ nếu cần (Giám đốc chốt); thêm cột Loại; thêm yêu cầu bảng tính (công thức, sheet hướng dẫn, dữ liệu giả); thêm mục Việc cần xác nhận, phiếu tự kiểm, rà soát độc lập, ghi Nhật ký quyết định. Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
| v1.2 | 2026-11-02 | Thêm câu phạm vi: chỉ dùng trong Project VKG_HR OFFICER; không đọc được file căn cứ thì báo người dùng và ghi [CẦN XÁC NHẬN] (Giám đốc chọn đề xuất A). Bản v1.1 lưu tại `99_LUU TRU/02_SKILLS_v1.1_2026-11` | Giám đốc Đỗ Việt Khoa |
