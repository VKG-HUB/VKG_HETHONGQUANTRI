# 03 – TIÊU CHÍ THỰC HIỆN & NGHIỆM THU

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
- Nội quy lao động: đủ các nội dung bắt buộc theo Điều 118 BLLĐ 2019; ghi chú thủ tục đăng ký nếu thuộc diện phải đăng ký.

**Quy trình**
- Có: sơ đồ luồng, bảng bước (Bước – Nội dung – Người thực hiện – Người duyệt – Thời hạn – Biểu mẫu), điểm kiểm soát, chỉ số đo.
- Không quá [7–12] bước chính; bước nào cũng có người chịu trách nhiệm.

**Mô tả công việc (JD)**
- Có: mục đích vị trí, báo cáo cho ai, nhiệm vụ chính (có tỷ trọng %), quyền hạn, tiêu chuẩn (học vấn, kinh nghiệm, năng lực), KPI chính, điều kiện làm việc.

**Bộ KPI**
- Mỗi KPI có: tên, công thức, đơn vị, nguồn dữ liệu, tần suất, chỉ tiêu, tỷ trọng; tổng tỷ trọng 100%.
- Không quá [5–7] KPI cho mỗi vị trí.

**Biểu mẫu**
- Có mã số, tên, phiên bản, ngày ban hành; trường thông tin rõ ràng; in được trên khổ A4.

**Bảng tính (lương, theo dõi)**
- Có công thức, không nhập tay số liệu tính toán; có sheet hướng dẫn; dữ liệu mẫu là dữ liệu giả.

## 3. Quy trình nghiệm thu
1. **Nháp (v0.x):** Claude soạn và tự kiểm theo mục 1–2.
2. **Rà soát độc lập (bắt buộc):** vì Giám đốc vừa phụ trách vừa phê duyệt, mọi bản nháp phải qua agent `hr-reviewer-chat-luong`; văn bản có HĐLĐ, lương, bảo hiểm, kỷ luật, ATVSLĐ phải qua thêm agent `hr-phap-ly`.
3. **Góp ý:** bộ phận liên quan góp ý.
4. **Duyệt (v1.0):** Giám đốc phê duyệt.
5. **Ban hành:** ký, lưu bản chính thức vào thư mục phân hệ, ghi Nhật ký quyết định.

## 4. Định nghĩa "Hoàn thành"
Một hạng mục chỉ được coi là hoàn thành khi: đạt C1–C7, đã được duyệt v1.0, đã lưu đúng thư mục và đã ghi vào Nhật ký quyết định.

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
