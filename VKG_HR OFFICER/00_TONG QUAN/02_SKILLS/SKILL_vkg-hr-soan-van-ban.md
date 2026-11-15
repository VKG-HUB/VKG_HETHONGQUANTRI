---
name: vkg-hr-soan-van-ban
description: Soạn văn bản nhân sự VKG (quy chế, chính sách, nội quy, quyết định, thông báo) đúng thể thức, số hiệu và căn cứ pháp lý. Dùng khi người dùng yêu cầu soạn hoặc chuẩn hóa văn bản HR.
---

# Soạn văn bản nhân sự VKG

**Phiên bản: v1.2 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

> **Phạm vi:** Dùng trong Project VKG_HR OFFICER. Nếu không đọc được file 01–04 và Hồ sơ chung doanh nghiệp, báo người dùng và ghi [CẦN XÁC NHẬN], không tự điền.

## Khi nào dùng
Yêu cầu soạn mới, sửa, chuẩn hóa quy chế / chính sách / nội quy / quyết định / thông báo nhân sự.

## Đầu vào cần có (hỏi nếu thiếu, tối đa 3 câu)
1. Loại văn bản và mục đích.
2. Phạm vi và đối tượng áp dụng.
3. Người ký ban hành (mặc định Giám đốc).

## Cấu trúc bắt buộc
1. Tiêu đề: **tên pháp lý** (CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT DỊCH VỤ VIỆT KHOA) – Quốc hiệu, tiêu ngữ – số hiệu `VKG/HR/<Loại>-<Số 3 chữ số>/<Năm>` (ví dụ `VKG/HR/QĐ-001/2026`) – địa danh, ngày.
2. Trích yếu.
3. Căn cứ: điều lệ, văn bản pháp luật (ghi số hiệu và ngày hiệu lực), đề nghị của bộ phận.
4. Nội dung theo Chương / Điều / Khoản: mục đích – phạm vi áp dụng – **đối tượng áp dụng** – định nghĩa – nội dung – trách nhiệm – hiệu lực – **điều khoản thi hành**.
5. Nơi nhận, chữ ký.
6. Phụ lục / biểu mẫu kèm theo (nếu có).
7. Mục **Việc cần xác nhận** (không đưa vào bản ban hành).

## Quy tắc
- Kiểm tra hiệu lực các quy định dẫn chiếu. Nếu có thể đã thay đổi, tra cứu và ghi ngày tra cứu.
- Thông tin doanh nghiệp lấy từ Hồ sơ chung và file `01_BOI_CANH_DU_AN.md`. Thiếu thì ghi [CẦN XÁC NHẬN], không tự điền.
- Tên, địa chỉ, người ký theo mục 8 file `04_QUY_TAC_VAN_HANH.md`. Mặc định người ký: Giám đốc Đỗ Việt Khoa.
- Văn bản áp dụng ở xưởng: xét thêm yêu cầu ATVSLĐ.
- Nội quy lao động:
  - Đối chiếu đủ nội dung bắt buộc theo Điều 118 BLLĐ 2019.
  - VKG có từ 10 lao động trở lên nên thuộc diện **phải đăng ký nội quy** (Điều 119 BLLĐ 2019). Kèm ghi chú thủ tục đăng ký: hồ sơ, cơ quan tiếp nhận, thời hạn, thời điểm có hiệu lực. Tra cứu quy định hướng dẫn hiện hành và ghi ngày tra cứu.
- Đặt tên file theo `04_QUY_TAC_VAN_HANH.md`; bản nháp là v0.x.

## Kiểm tra trước khi giao
1. Chạy phiếu tự kiểm C1–C7 trong `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`.
2. Nhắc người dùng **rà soát độc lập (bắt buộc)** trước khi trình duyệt:
   - Mọi văn bản: skill `vkg-hr-ra-soat-chat-luong`.
   - Văn bản có nội dung HĐLĐ, lương, BHXH, kỷ luật, chấm dứt HĐLĐ, nội quy, ATVSLĐ hoặc dữ liệu cá nhân: thêm skill `vkg-hr-ra-soat-phap-ly`.
   - Nên chạy rà soát trong một hội thoại riêng để đánh giá khách quan.
3. Khi văn bản được duyệt (v1.0), nhắc ghi **Nhật ký quyết định** (`00_TONG QUAN`).

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Thêm "đối tượng áp dụng" và "điều khoản thi hành" vào cấu trúc (theo file 03 mục 2); thêm thủ tục đăng ký nội quy theo Điều 119; thêm bước rà soát độc lập và ghi Nhật ký quyết định (file 03 mục 3–4). Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
| v1.2 | 2026-11-02 | Số hiệu ghi rõ 3 chữ số theo file 04 mục 2 (mục 12). Thêm câu phạm vi: chỉ dùng trong Project VKG_HR OFFICER; không đọc được file căn cứ thì báo người dùng và ghi [CẦN XÁC NHẬN] (Giám đốc chọn đề xuất A). Bản v1.1 lưu tại `99_LUU TRU/02_SKILLS_v1.1_2026-11` | Giám đốc Đỗ Việt Khoa |
