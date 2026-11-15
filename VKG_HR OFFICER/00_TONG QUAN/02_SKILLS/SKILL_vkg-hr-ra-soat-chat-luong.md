---
name: vkg-hr-ra-soat-chat-luong
description: Rà soát độc lập chất lượng bản nháp tài liệu nhân sự VKG theo tiêu chí C1–C7 và quy tắc nhận diện doanh nghiệp. Bắt buộc dùng trước khi trình Giám đốc duyệt mọi tài liệu HR.
---

# Rà soát chất lượng tài liệu nhân sự VKG

**Phiên bản: v1.3 – 2026-11-14** · Lịch sử thay đổi ở cuối file.

> **Phạm vi:** Dùng trong Project VKG_HR OFFICER. Nếu không đọc được file 01–04 và Hồ sơ chung doanh nghiệp, báo người dùng và ghi [CẦN XÁC NHẬN], không tự điền.

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
   - Địa chỉ: trụ sở **46 Huỳnh Đình Hai, Phường Bình Thạnh, TP.HCM** cho thông tin pháp lý. Đơn vị phụ thuộc theo giấy tờ (HT-020): **CN1 Đông Hòa = Chi nhánh, mã số 0311563372-002**, địa chỉ đăng ký 144/46 Thống Nhất (giao dịch thực tế 42A Thống Nhất); **CN2 Phước Tân = Địa điểm kinh doanh 001, mã 00001**, trực thuộc công ty – KHÔNG phải chi nhánh. Không có mã -001. HĐLĐ: bên sử dụng lao động là công ty; nơi làm việc ghi đúng loại, tên, mã theo giấy. Tài liệu giao dịch, quảng bá không dùng 144/46.
   - Số người hiện có: **15** (không phải 17). Cả 15 người đã đóng BHXH.
   - Người ký văn bản nhân sự: **Giám đốc Đỗ Việt Khoa**. Phó Giám đốc Vũ Văn Tích **không** được ủy quyền ký văn bản nhân sự; chưa bổ nhiệm chính thức (quyết định bổ nhiệm đang soạn). Chưa có chức danh chính thức khác: tài liệu ghi "đề xuất" khi nói tới đội trưởng, trưởng kỹ thuật, phụ trách kế toán, Đại diện ISO, QC.
   - Quốc hiệu (HT-016): chỉ có ở HĐLĐ và mẫu nhà nước nộp cơ quan; quy chế, nội quy, quyết định, quy trình, hướng dẫn, JD, KPI, phiếu, sổ **không** có quốc hiệu.
   - Mã tài liệu theo `00_DIEU_PHOI_CHUNG\QUY-TAC-MA-CHUNG.md` (quy trình `QT-xx` dãy chung, biểu mẫu `NS-xx`; không dùng `QT-001`, `BM-`).
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

## Đồng bộ thông tin
Thông tin doanh nghiệp trong skill này chép từ Hồ sơ chung và file 01 tại ngày 2026-11-14. Nếu khác với Hồ sơ chung hiện hành, **theo Hồ sơ chung** và báo người dùng cập nhật skill.

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11-02 | Tạo mới từ agent `hr-reviewer-chat-luong` (`00_TONG QUAN/03_AGENTS`) để dùng được dưới dạng skill; thêm kiểm tra mã văn bản, tên bộ phận, số điện thoại cũ và hướng dẫn chạy trong hội thoại riêng | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Thêm câu phạm vi: chỉ dùng trong Project VKG_HR OFFICER; không đọc được file căn cứ thì báo người dùng và ghi [CẦN XÁC NHẬN] (Giám đốc chọn đề xuất A). Skill có chép thông tin doanh nghiệp: khi Hồ sơ chung thay đổi phải rà lại skill này (file 04 mục 8). Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.1_2026-11` (cùng bộ skill v1.1) | Giám đốc Đỗ Việt Khoa |
| v1.2 | 2026-11-14 | Đồng bộ thông tin doanh nghiệp theo Hồ sơ chung mới (file 04 mục 8): 15 người, đã đóng BHXH; Chi nhánh Đông Hòa -001, Chi nhánh Phước Tân -002 (HT-019); Phó Giám đốc chưa bổ nhiệm chính thức, chưa có chức danh chính thức (HT-018); thêm kiểm quốc hiệu (HT-016) và mã theo quy tắc chung (HT-002). Câu phạm vi "chỉ dùng trong Project" chưa đổi (chờ câu Q3). Bản v1.1 lưu tại `99_LUU TRU/02_SKILLS_v1.2_2026-11`. **Cần Giám đốc lưu lại skill vào tài khoản Claude** | Theo quyết định Giám đốc (HT-016, HT-018, HT-019); HR-00 sửa |
| v1.3 | 2026-11-14 | Đơn vị phụ thuộc theo giấy tờ (HT-020, thay HT-019): CN1 Chi nhánh 0311563372-002 (địa chỉ đăng ký 144/46 Thống Nhất), CN2 Địa điểm kinh doanh 001 mã 00001; bỏ mã -001. Bản v1.2 lưu `99_LUU TRU/02_SKILLS_v1.3_2026-11`. **Cần Giám đốc lưu lại skill vào tài khoản Claude** | Theo giấy tờ Giám đốc gửi (HT-020); HR-00 sửa |
