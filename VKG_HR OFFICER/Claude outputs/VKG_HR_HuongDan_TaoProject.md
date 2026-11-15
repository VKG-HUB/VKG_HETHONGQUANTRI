# HƯỚNG DẪN TẠO PROJECT "VKG_HR OFFICER" TRÊN CLAUDE

> Bàn giao từ giai đoạn khởi tạo (GĐ0), ngày 2026-11-02. Thời gian thực hiện: khoảng 10 phút.

## Bước 1 – Tạo Project
1. Mở **claude.ai**, chọn **Projects** ở thanh bên trái, rồi **Create project** (Tạo dự án).
2. Tên: `VKG_HR OFFICER`
3. Mô tả: `Xây dựng phòng Quản trị Nhân sự Công ty TNHH TM KT DV Việt Khoa từ đầu: tuân thủ pháp luật lao động, quy trình, biểu mẫu, JD, lương, KPI. Giám đốc kiêm nhiệm nhân sự.`

## Bước 2 – Dán chỉ dẫn
Trong Project, chọn **Instructions** (Set project instructions), rồi dán **toàn bộ nội dung** file:
- `00_TONG QUAN/VKG_HR_ChiDan_Project_Claude_v1.0.md` (phần từ "## 1. Vai trò" trở xuống)

## Bước 3 – Tải tài liệu lên Project knowledge (Files)
Tải đúng 7 file sau:
| # | File | Vị trí trên OneDrive |
|---|---|---|
| 1 | `VKG_ho-so-chung-doanh-nghiep.md` | Thư mục Hồ sơ chung (bản đã cập nhật) |
| 2 | `00_MUC_LUC.md` | 00_TONG QUAN/01_NEN TANG DU AN |
| 3 | `01_BOI_CANH_DU_AN.md` | 00_TONG QUAN/01_NEN TANG DU AN |
| 4 | `02_MUC_TIEU_PHAM_VI.md` | 00_TONG QUAN/01_NEN TANG DU AN |
| 5 | `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md` | 00_TONG QUAN/01_NEN TANG DU AN |
| 6 | `04_QUY_TAC_VAN_HANH.md` | 00_TONG QUAN/01_NEN TANG DU AN |
| 7 | `VKG_HR_HoSoCanCungCap.md` | 00_TONG QUAN |

Không tải lên: file Câu hỏi đã trả lời (đã gộp vào file 01), các file `_README.txt`.

## Bước 4 – Lưu Skills
Vào **Settings → Capabilities → Skills** (hoặc nhờ Claude trong Project đề xuất lưu skill), rồi dùng 5 file trong `00_TONG QUAN/02_SKILLS/`:
`vkg-hr-soan-van-ban`, `vkg-hr-thiet-ke-quy-trinh`, `vkg-hr-xay-dung-jd`, `vkg-hr-xay-dung-kpi`, `vkg-hr-ra-soat-phap-ly`.

3 file agent trong `03_AGENTS/` dùng làm **vai trò rà soát**: khi cần, dán nội dung file vào hội thoại và yêu cầu Claude rà soát theo vai trò đó.

## Bước 5 – Hội thoại đầu tiên
Mở hội thoại mới trong Project, đặt tên `[HR-00] Tổng quan – Chốt danh mục văn bản nền tảng`, rồi gửi:

```
Đọc toàn bộ tài liệu trong Project. Sau đó:
1. Tóm tắt hiện trạng và rủi ro pháp lý lớn nhất của VKG.
2. Đề xuất danh mục văn bản nền tảng cho MT1 (hạn 31/12/2026), sắp theo thứ tự ưu tiên, ghi rõ văn bản nào bắt buộc theo luật.
3. Lập kế hoạch GĐ1 (11–12/2026) theo tuần.
4. Liệt kê mục nào trong file VKG_HR_HoSoCanCungCap.md đang chặn việc nào.
```

## Bước 6 – Các hội thoại tiếp theo (gợi ý)
| Hội thoại | Nội dung |
|---|---|
| `[HR-02] Hồ sơ – Hợp thức hóa HĐLĐ & BHXH` | Ưu tiên số 1 |
| `[HR-06] Nội quy – Nội quy lao động & đăng ký` | Bắt buộc (từ 10 lao động) |
| `[HR-06] ATVSLĐ – Huấn luyện & khám sức khỏe` | Bắt buộc |
| `[HR-00] Tổ chức – Sơ đồ tổ chức` | Nền cho JD |
| `[HR-01] JD – Mô tả công việc các vị trí` | MT3 |
| `[HR-03] Lương – Quy chế lương` | Khó khăn #2 |

## Bước 7 – Việc bàn giao cho Project: lịch nhắc hồ sơ
Giai đoạn khởi tạo **không** đặt lịch nhắc. Project VKG_HR OFFICER là nơi cập nhật việc thường xuyên, nên tự thiết lập lịch nhắc này.

| Mục | Yêu cầu |
|---|---|
| Lịch | Thứ 2, Thứ 4, Thứ 6 hàng tuần, buổi sáng (giờ Việt Nam) |
| Nguồn kiểm tra | File `VKG_HR_HoSoCanCungCap.md`, chỉ nhắc các mục còn `[ ]` |
| Nội dung nhắc | Số mục còn thiếu; mục "gấp" lên đầu; mỗi mục một dòng (mã, nội dung, người cung cấp) |
| Điều kiện dừng | Khi mọi mục đều `[x]`: thông báo đã đủ và đề nghị tắt lịch |
| Giới hạn | Chỉ nhắc, không sửa file, không gửi email |

Câu lệnh gợi ý, gửi trong Project:
```
Tạo lịch nhắc vào Thứ 2, Thứ 4, Thứ 6 hàng tuần, buổi sáng (giờ Việt Nam). Mỗi lần:
đọc file VKG_HR_HoSoCanCungCap.md, liệt kê các mục còn [ ] (mục gấp lên đầu).
Nếu tất cả đã [x] thì báo đã đủ và đề nghị tắt lịch. Chỉ nhắc, không sửa file.
```

## Ghi nhớ khi vận hành
- Thông tin doanh nghiệp thay đổi: sửa Hồ sơ chung trước, rồi tải lại vào Project.
- Cung cấp xong hồ sơ ở file `VKG_HR_HoSoCanCungCap.md`: đánh `[x]` và tải lại bản mới vào Project.
- Kết thúc mỗi hội thoại: yêu cầu Claude tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
