# 03 – TIÊU CHÍ THỰC HIỆN & NGHIỆM THU

**Phiên bản: v1.1 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

## 1. Tiêu chí chung cho mọi sản phẩm
| # | Tiêu chí | Đạt khi |
|---|---|---|
| C1 | Đúng pháp luật | Không trái quy định hiện hành; ghi rõ căn cứ pháp lý và ngày hiệu lực của văn bản dẫn chiếu |
| C2 | Đúng thực tế VKG | Phù hợp quy mô, cơ cấu và hiện trạng ở file 01; không dùng thông tin giả định mà không đánh dấu |
| C3 | Áp dụng được ngay | Có người thực hiện, người duyệt, thời hạn, biểu mẫu đi kèm |
| C4 | Nhất quán | Thuật ngữ, mã số, tên phòng ban thống nhất giữa các tài liệu |
| C5 | Đúng thể thức | Theo quy tắc trình bày và đặt tên ở file 04 |
| C6 | Bảo mật | Không chứa dữ liệu cá nhân thật; ví dụ dùng dữ liệu giả |
| C7 | Minh bạch giả định | Cuối tài liệu có mục "Việc cần xác nhận" |

## 2. Tiêu chí theo loại sản phẩm
**Chính sách / Quy chế / Nội quy**
- Có: mục đích, phạm vi áp dụng, đối tượng, định nghĩa, nội dung, trách nhiệm, hiệu lực, điều khoản thi hành.
- Nội quy lao động: đủ các nội dung bắt buộc theo Điều 118 BLLĐ 2019; ghi chú thủ tục đăng ký nếu thuộc diện phải đăng ký (Điều 119; VKG từ 10 lao động trở lên nên thuộc diện này).

**Quy trình**
- Có: sơ đồ luồng, bảng bước (Bước – Nội dung – Người thực hiện – Người duyệt – Thời hạn – Biểu mẫu), điểm kiểm soát, chỉ số đo.
- Tối đa 12 bước chính, không quy định số bước tối thiểu. Đây là số khởi tạo, sẽ điều chỉnh khi có thông tin thực tế.
- Bước nào cũng có người chịu trách nhiệm.

**Mô tả công việc (JD)**
- Có: mục đích vị trí, báo cáo cho ai, nhiệm vụ chính (có tỷ trọng %), quyền hạn, tiêu chuẩn (học vấn, kinh nghiệm, năng lực), KPI (5–7 KPI chính, thêm KPI phụ nếu cần), điều kiện làm việc.

**Bộ KPI**
- Mỗi KPI có: tên, công thức, đơn vị, nguồn dữ liệu, tần suất, chỉ tiêu, tỷ trọng.
- Mỗi vị trí có 5–7 KPI chính, tổng tỷ trọng KPI chính 100%.
- Có thể thêm 3–5 KPI phụ nếu cần; ghi rõ cách dùng KPI phụ (cộng/trừ điểm, điều kiện, hay chỉ theo dõi).

**Biểu mẫu**
- Có mã số, tên, phiên bản, ngày ban hành; trường thông tin rõ ràng; in được trên khổ A4.

**Bảng tính (lương, theo dõi)**
- Có công thức, không nhập tay số liệu tính toán; có sheet hướng dẫn; dữ liệu mẫu là dữ liệu giả.

## 3. Quy trình nghiệm thu
1. **Nháp (v0.x):** Claude soạn và tự kiểm theo mục 1–2.
2. **Rà soát độc lập (bắt buộc):** vì Giám đốc vừa phụ trách vừa phê duyệt, mọi bản nháp phải qua skill `vkg-hr-ra-soat-chat-luong`. Tài liệu có nội dung HĐLĐ, lương, BHXH, kỷ luật, chấm dứt HĐLĐ, nội quy, ATVSLĐ hoặc dữ liệu cá nhân phải qua thêm skill `vkg-hr-ra-soat-phap-ly`. Chạy rà soát trong một hội thoại riêng, không dùng lại hội thoại đã soạn bản nháp.
3. **Góp ý:** bộ phận liên quan góp ý.
4. **Duyệt (v1.0):** Giám đốc phê duyệt.
5. **Ban hành:** ký, lưu bản chính thức vào thư mục phân hệ, ghi Nhật ký quyết định.

## 4. Định nghĩa "Hoàn thành"
Một hạng mục chỉ được coi là hoàn thành khi: đạt C1–C7, đã qua rà soát độc lập, đã được duyệt v1.0, đã lưu đúng thư mục và đã ghi vào Nhật ký quyết định.

## 5. Phiếu tự kiểm (Claude dùng trước khi giao bản nháp)
```
[ ] Căn cứ pháp lý đã ghi và còn hiệu lực
[ ] Khớp thông tin VKG trong file 01
[ ] Có người thực hiện / duyệt / thời hạn
[ ] Thuật ngữ, mã số thống nhất
[ ] Đúng tên file và phiên bản
[ ] Không có dữ liệu cá nhân thật
[ ] Có mục "Việc cần xác nhận"
```

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Quy trình: tối đa 12 bước, bỏ mức tối thiểu; KPI: 5–7 KPI chính + 3–5 KPI phụ nếu cần; JD dẫn theo số KPI mới; nội quy nhắc Điều 119; rà soát độc lập chuyển từ agent sang skill `vkg-hr-ra-soat-chat-luong` / `vkg-hr-ra-soat-phap-ly`, mở rộng danh mục nội dung phải rà soát pháp lý, yêu cầu chạy trong hội thoại riêng; "Hoàn thành" thêm điều kiện đã qua rà soát độc lập. Bản v1.0 lưu tại `99_LUU TRU/01_NEN TANG DU AN_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
