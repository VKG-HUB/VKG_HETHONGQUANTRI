# 04 – QUY TẮC VẬN HÀNH DỰ ÁN

**Phiên bản: v1.2 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

## 1. Tổ chức hội thoại trong Project
- Mỗi chủ đề một hội thoại. Tên: `[HR-<mã phân hệ>] <Phân hệ> – <Chủ đề>`.
  - Ví dụ: `[HR-00] Tổng quan – Lộ trình`, `[HR-03] Lương – Quy chế lương`.
- Hội thoại quá dài hoặc đổi hướng → mở hội thoại mới, dán tóm tắt kết luận của hội thoại cũ.
- Kết thúc mỗi hội thoại: yêu cầu Claude tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".

## 2. Mã phân hệ và mã văn bản
| Mã | Phân hệ | Thư mục |
|---|---|---|
| HR-00 | Tổng quan | 00_TONG QUAN |
| HR-01 | Tuyển dụng | 01_TUYEN DUNG |
| HR-02 | Hồ sơ nhân sự | 02_HO SO NHAN SU |
| HR-03 | Lương thưởng phúc lợi | 03_LUONG THUONG PHUC LOI |
| HR-04 | Đào tạo | 04_DAO TAO |
| HR-05 | Đánh giá KPI | 05_DANH GIA KPI |
| HR-06 | Nội quy chính sách | 06_NOI QUY CHINH SACH |
| HR-07 | Biểu mẫu | 07_BIEU MAU |

Loại văn bản: QĐ (quyết định), QC (quy chế), QT (quy trình), CS (chính sách), BM (biểu mẫu), TB (thông báo), JD (mô tả công việc), KPI (bộ chỉ số).
Số hiệu ban hành: `VKG/HR/<Loại>-<Số 3 chữ số>/<Năm>`.

## 3. Đặt tên file
`VKG_HR_<Loại>-<Số>_<TenNgan>_v<X.Y>_<YYYY-MM>.<đuôi>`
Ví dụ: `VKG_HR_QT-001_TuyenDung_v0.1_2026-11.docx`.
- Tên ngắn viết liền, không dấu.
- Không dùng tên kiểu "final", "moi", "sua lan 2".

## 4. Phiên bản
| Phiên bản | Ý nghĩa |
|---|---|
| v0.1, v0.2… | Bản nháp |
| v1.0 | Bản được duyệt, ban hành lần đầu |
| v1.1 | Sửa nhỏ (câu chữ, biểu mẫu) |
| v2.0 | Sửa nội dung chính sách |
Bản cũ chuyển vào `99_LUU TRU`, không xóa.

### 4.1. Cập nhật skill và bộ nền tảng
Áp dụng cho skill (`00_TONG QUAN/02_SKILLS`) và bộ nền tảng (`00_TONG QUAN/01_NEN TANG DU AN`, file 01–04):
1. **Tạo bản thay thế**, không sửa đè mà không để lại dấu vết. Ghi mã phiên bản ở đầu file (`Phiên bản: vX.Y – YYYY-MM-DD`) và thêm một dòng vào bảng **Lịch sử phiên bản** cuối file: phiên bản, ngày, nội dung thay đổi, người duyệt.
2. **Lưu bộ cũ** vào `99_LUU TRU/<tên thư mục gốc>_v<X.Y>_<YYYY-MM>`, ví dụ `99_LUU TRU/02_SKILLS_v1.0_2026-11`. Không xóa.
3. Thư mục gốc chỉ giữ bản đang hiệu lực.
4. **Skill:** lưu lại skill trong tài khoản Claude (qua thẻ đề xuất lưu skill) và kiểm tra phiên bản sau khi lưu.
5. **Bộ nền tảng:** tải bản mới lên Project, thay bản cũ.
6. Ghi **Nhật ký quyết định** (mục 6).

## 5. Phân quyền và bảo mật
| Thư mục | Ai được truy cập |
|---|---|
| 02_HO SO NHAN SU, 03_LUONG THUONG PHUC LOI | Chỉ HR phụ trách và lãnh đạo |
| Các thư mục khác | Theo phân công |
- Không đưa vào Project: số CCCD, tài khoản ngân hàng, lương cá nhân, thông tin sức khỏe, đánh giá cá nhân có tên thật.
- Chia sẻ artifact ra ngoài chỉ khi nội dung không chứa dữ liệu cá nhân.

## 6. Nhật ký quyết định (mẫu)
Lưu tại `00_TONG QUAN/VKG_HR_NhatKyQuyetDinh.xlsx` (hoặc bảng tương đương):
| Ngày | Mã | Nội dung quyết định | Người quyết định | Tài liệu liên quan | Phiên bản |
|---|---|---|---|---|---|

## 7. Ranh giới vai trò của Claude
- **Được làm:** soạn nháp, chuẩn hóa, rà soát, đối chiếu pháp lý, đề xuất phương án, tạo biểu mẫu.
- **Không làm:** ra quyết định nhân sự, khẳng định thay luật sư, tự điền thông tin VKG chưa được xác nhận, lưu dữ liệu cá nhân thật.

## 8. Tên, địa chỉ và nhận diện trên văn bản nhân sự
| Dùng ở đâu | Viết thế nào |
|---|---|
| HĐLĐ, quyết định, quy chế, văn bản gửi cơ quan nhà nước | Tên pháp lý: **CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT DỊCH VỤ VIỆT KHOA**, MST 0311563372, địa chỉ trụ sở theo giấy phép |
| Địa điểm làm việc trong HĐLĐ | Địa chỉ xưởng thực tế: CN1 (42A Thống Nhất, P. Đông Hòa, TP.HCM) hoặc CN2 (Phước Tân, Đồng Nai) |
| Tin tuyển dụng, truyền thông | VK Group / Việt Khoa Group; hotline 0911 365 365; vietkhoagroup.com. Không nêu số lượng nhân sự |
| Tài liệu nội bộ, tên file | VKG |
| Văn hóa, đánh giá, khen thưởng | Giá trị cốt lõi **Tâm · Tín · Trung thực** |

**Không dùng:** tên cũ ("TNHH TM KT DV", "TM KT DỊCH VỤ"), địa chỉ 144/46 Thống Nhất, số 0906 887 877, "thành lập 2011", "15 năm kinh nghiệm", các bộ giá trị cốt lõi cũ.

**Nguồn gốc thông tin:** file Hồ sơ chung doanh nghiệp. Thông tin thay đổi thì cập nhật Hồ sơ chung trước, rồi đến file 01 và các tài liệu HR.

**Đồng bộ skill:** hai skill `vkg-hr-ra-soat-chat-luong` và `vkg-hr-ra-soat-phap-ly` có chép thông tin doanh nghiệp (tên, địa chỉ, người ký, số lao động, hiện trạng HĐLĐ / BHXH / ATVSLĐ). Mỗi lần cập nhật Hồ sơ chung hoặc file 01, rà lại hai skill này và cập nhật theo mục 4.1 nếu có thay đổi.

**Phạm vi dùng skill:** các skill VKG chỉ dùng trong Project VKG_HR OFFICER, nơi có file 01–04 và Hồ sơ chung.

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Thêm mục 4.1 "Cập nhật skill và bộ nền tảng" (Giám đốc chốt 2026-11-02): bản thay thế có mã phiên bản và lịch sử, bộ cũ lưu `99_LUU TRU`, lưu lại skill / tải lại Project, ghi Nhật ký quyết định. Bản v1.0 lưu tại `99_LUU TRU/01_NEN TANG DU AN_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
| v1.2 | 2026-11-02 | Mục 8: thêm "Đồng bộ skill" (rà lại 2 skill rà soát khi Hồ sơ chung / file 01 thay đổi) và "Phạm vi dùng skill" (Giám đốc chọn đề xuất A). Bản v1.1 lưu tại `99_LUU TRU/01_NEN TANG DU AN_v1.1_2026-11` | Giám đốc Đỗ Việt Khoa |
