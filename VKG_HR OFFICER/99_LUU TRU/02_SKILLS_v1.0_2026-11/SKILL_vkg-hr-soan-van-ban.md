---
name: vkg-hr-soan-van-ban
description: Soạn văn bản nhân sự VKG (quy chế, chính sách, nội quy, quyết định, thông báo) đúng thể thức, số hiệu và căn cứ pháp lý. Dùng khi người dùng yêu cầu soạn hoặc chuẩn hóa văn bản HR.
---

# Soạn văn bản nhân sự VKG

## Khi nào dùng
Yêu cầu soạn mới, sửa, chuẩn hóa quy chế / chính sách / nội quy / quyết định / thông báo nhân sự.

## Đầu vào cần có (hỏi nếu thiếu, tối đa 3 câu)
1. Loại văn bản và mục đích.
2. Phạm vi và đối tượng áp dụng.
3. Người ký ban hành (mặc định Giám đốc).

## Cấu trúc bắt buộc
1. Tiêu đề: **tên pháp lý** (CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT DỊCH VỤ VIỆT KHOA) – Quốc hiệu, tiêu ngữ – số hiệu `VKG/HR/<Loại>-<Số>/<Năm>` – địa danh, ngày.
2. Trích yếu.
3. Căn cứ: điều lệ, văn bản pháp luật (ghi số hiệu và ngày hiệu lực), đề nghị của bộ phận.
4. Nội dung theo Chương / Điều / Khoản: mục đích – phạm vi – định nghĩa – nội dung – trách nhiệm – hiệu lực.
5. Nơi nhận, chữ ký.
6. Phụ lục / biểu mẫu kèm theo (nếu có).
7. Mục **Việc cần xác nhận** (không đưa vào bản ban hành).

## Quy tắc
- Kiểm tra hiệu lực các quy định dẫn chiếu. Nếu có thể đã thay đổi, tra cứu và ghi ngày tra cứu.
- Thông tin doanh nghiệp lấy từ Hồ sơ chung và file `01_BOI_CANH_DU_AN.md`. Thiếu thì ghi [CẦN XÁC NHẬN], không tự điền.
- Tên, địa chỉ, người ký theo mục 8 file `04_QUY_TAC_VAN_HANH.md`. Mặc định người ký: Giám đốc Đỗ Việt Khoa.
- Văn bản áp dụng ở xưởng: xét thêm yêu cầu ATVSLĐ.
- Nội quy lao động: đối chiếu đủ nội dung bắt buộc theo Điều 118 BLLĐ 2019.
- Đặt tên file theo `04_QUY_TAC_VAN_HANH.md`; bản nháp là v0.x.

## Kiểm tra trước khi giao
Chạy phiếu tự kiểm trong `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`.
