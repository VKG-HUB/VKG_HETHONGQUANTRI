---
name: vkg-hr-thiet-ke-quy-trinh
description: Thiết kế quy trình nhân sự VKG (tuyển dụng, tiếp nhận, nghỉ việc, đào tạo, đánh giá…) gồm sơ đồ luồng, bảng bước, trách nhiệm, thời hạn, biểu mẫu và điểm kiểm soát.
---

# Thiết kế quy trình nhân sự VKG

**Phiên bản: v1.1 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

## Khi nào dùng
Yêu cầu xây dựng hoặc cải tiến một quy trình HR.

## Đầu vào
- Tên quy trình, điểm bắt đầu và điểm kết thúc.
- Các bộ phận tham gia, người duyệt cuối.
- Hiện trạng đang làm thế nào (nếu có).

## Đầu ra (mã QT)
1. Thông tin chung: mục đích, phạm vi, định nghĩa, văn bản liên quan.
2. Sơ đồ luồng (Mermaid, chia làn theo bộ phận).
3. Bảng bước: STT | Nội dung | Người thực hiện | Người duyệt | Thời hạn | Biểu mẫu | Đầu ra.
4. Điểm kiểm soát và rủi ro.
5. Chỉ số đo hiệu quả quy trình (1–3 chỉ số).
6. Danh sách biểu mẫu cần tạo (mã BM).
7. Việc cần xác nhận.

## Quy tắc
- **Tối đa 12 bước chính, không quy định số bước tối thiểu.** Đây là số khởi tạo. Khi có thông tin thực tế sẽ điều chỉnh qua một phiên bản mới của skill.
- Bước nào cũng có người chịu trách nhiệm (RACI khi cần).
- Tên bộ phận dùng thống nhất theo file `01_BOI_CANH_DU_AN.md`: Ban giám đốc · Quản lý cấp trung (đội trưởng tổ SX) · Kỹ thuật · Sản xuất · Kế toán. Hiện chưa có bộ phận Nhân sự; việc nhân sự do Giám đốc kiêm nhiệm.
- Thời hạn tính bằng ngày làm việc.
- Bước có yếu tố pháp lý (thử việc, ký HĐLĐ, chấm dứt HĐLĐ, kỷ luật, BHXH, ATVSLĐ) phải ghi căn cứ.
- Đặt tên file theo `04_QUY_TAC_VAN_HANH.md`; bản nháp là v0.x.

## Kiểm tra trước khi giao
1. Chạy phiếu tự kiểm C1–C7 trong `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`.
2. Nhắc người dùng **rà soát độc lập (bắt buộc)** trước khi trình duyệt:
   - Mọi quy trình: skill `vkg-hr-ra-soat-chat-luong`.
   - Quy trình có bước HĐLĐ, lương, BHXH, kỷ luật, chấm dứt HĐLĐ, ATVSLĐ hoặc dữ liệu cá nhân: thêm skill `vkg-hr-ra-soat-phap-ly`.
   - Nên chạy rà soát trong một hội thoại riêng để đánh giá khách quan.
3. Khi quy trình được duyệt (v1.0), nhắc ghi **Nhật ký quyết định** (`00_TONG QUAN`).

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Bỏ mức tối thiểu 7 bước, giữ tối đa 12 bước làm số khởi tạo (Giám đốc chốt); thống nhất tên bộ phận theo file 01; thêm phiếu tự kiểm, rà soát độc lập, ghi Nhật ký quyết định. Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
