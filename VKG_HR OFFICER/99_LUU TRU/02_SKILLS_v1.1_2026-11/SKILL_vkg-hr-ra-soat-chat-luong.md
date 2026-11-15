---
name: vkg-hr-ra-soat-chat-luong
description: Rà soát độc lập chất lượng bản nháp tài liệu nhân sự VKG theo tiêu chí C1–C7 và quy tắc nhận diện doanh nghiệp. Bắt buộc dùng trước khi trình Giám đốc duyệt mọi tài liệu HR (v0.x → v1.0).
---

# Rà soát chất lượng tài liệu nhân sự VKG

**Phiên bản: v1.0 – 2026-11-02** · Lịch sử thay đổi ở cuối file.
Skill này thay cho agent `hr-reviewer-chat-luong` trong file 03 mục 3.

## Vì sao bắt buộc
Giám đốc Đỗ Việt Khoa vừa kiêm nhiệm nhân sự (đặt yêu cầu) vừa phê duyệt, ký ban hành. Không có người thứ hai kiểm tra, nên bước này là **lớp kiểm soát độc lập duy nhất** trước khi văn bản được ký.

Để khách quan: chạy skill trong **một hội thoại riêng**, chỉ đưa bản nháp và tài liệu căn cứ, không dùng lại hội thoại đã soạn bản nháp. Người rà soát **không** tham gia soạn và đánh giá như người ngoài.

## Tài liệu căn cứ (đọc trước khi rà soát)
- Hồ sơ chung doanh nghiệp (`VKG_ho-so-chung-doanh-nghiep.md`): nguồn gốc duy nhất cho thông tin doanh nghiệp.
- `01_BOI_CANH_DU_AN.md`: nhân sự, địa điểm, hiện trạng, phân quyền ký, tên bộ phận.
- `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`: tiêu chí C1–C7 và tiêu chí theo loại tài liệu.
- `04_QUY_TAC_VAN_HANH.md`: mã văn bản, đặt tên, phiên bản, mục 8 về tên và địa chỉ.
- `VKG_HR_HoSoCanCungCap.md`: các mục thông tin còn thiếu.

## Nhiệm vụ
1. Chấm theo C1–C7 và tiêu chí riêng của loại tài liệu (file 03 mục 2).
2. Kiểm tra riêng các lỗi hay gặp ở VKG:
   - Tên công ty trên văn bản chính thức: **CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT DỊCH VỤ VIỆT KHOA**, MST 0311563372. Không dùng "VKG", "VK Group" hay tên cũ ("TNHH TM KT DV", "TM KT DỊCH VỤ").
   - Địa chỉ: trụ sở **46 Huỳnh Đình Hai, Phường Bình Thạnh, TP.HCM** cho thông tin pháp lý. HĐLĐ ghi địa điểm làm việc thực tế: CN1 (42A Thống Nhất, P. Đông Hòa, TP.HCM) hoặc CN2 (Phước Tân, Đồng Nai). Không dùng 144/46 Thống Nhất.
   - Người ký văn bản nhân sự: **Giám đốc Đỗ Việt Khoa**. Phó Giám đốc Vũ Văn Tích **không** được ủy quyền ký văn bản nhân sự.
   - Không dùng thông tin cũ: "thành lập 2011", "15 năm kinh nghiệm", số 0906 887 877, các bộ giá trị cũ. Giá trị cốt lõi: **Tâm · Tín · Trung thực**.
   - Mã văn bản, số hiệu (`VKG/HR/<Loại>-<Số 3 chữ số>/<Năm>`), tên file, phiên bản đúng file 04.
   - Tên bộ phận thống nhất theo file 01.
   - Không chứa dữ liệu cá nhân thật (CCCD, lương từng người, tài khoản, sức khỏe).
   - Thông tin chưa có căn cứ phải ghi **[CẦN XÁC NHẬN]**, không tự điền.
   - Tin tuyển dụng, tài liệu ra ngoài: không nêu số lượng nhân sự.
3. Không sửa trực tiếp tài liệu. Chỉ báo cáo.

## Báo cáo đầu ra
- Bảng: Tiêu chí | Đạt / Chưa đạt | Bằng chứng (trích vị trí) | Đề xuất sửa.
- Danh sách lỗi theo mức độ: Nghiêm trọng → Cần sửa → Góp ý.
- Tài liệu có nội dung HĐLĐ, lương, BHXH, kỷ luật, chấm dứt HĐLĐ, nội quy, ATVSLĐ hoặc dữ liệu cá nhân: ghi rõ "Cần rà soát thêm bằng skill vkg-hr-ra-soat-phap-ly".
- Kết luận: Trình duyệt được / Cần sửa rồi trình / Làm lại.

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11-02 | Tạo mới từ agent `hr-reviewer-chat-luong` (`00_TONG QUAN/03_AGENTS`) để dùng được dưới dạng skill; thêm kiểm tra mã văn bản, tên bộ phận, số điện thoại cũ và hướng dẫn chạy trong hội thoại riêng | Giám đốc Đỗ Việt Khoa |
