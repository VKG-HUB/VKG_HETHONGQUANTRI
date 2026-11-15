# VKG_HR OFFICER – BỘ NỀN TẢNG DỰ ÁN (v1.0 – 11/2026)

Bộ tài liệu khởi tạo, dùng làm **bối cảnh cố định** cho Project "VKG_HR OFFICER" trên Claude.
Đây không phải tài liệu nghiệp vụ. Nó quy định *làm gì, vì sao, làm đến đâu, thế nào là đạt*.

| File | Nội dung | Đưa vào đâu |
|---|---|---|
| `VKG_ho-so-chung-doanh-nghiep.md` (file gốc, do Giám đốc quản lý) | Thông tin pháp lý, địa điểm, nhân sự, giá trị cốt lõi. **Nguồn gốc duy nhất** | Tải lên **Project knowledge** |
| `VKG_HR_ChiDan_Project_Claude_v1.0.md` (thư mục 00_TONG QUAN) | Chỉ dẫn ngắn cho Claude | Dán vào **Custom instructions** |
| `01_BOI_CANH_DU_AN.md` | Doanh nghiệp, hiện trạng, các bên liên quan | Tải lên **Project knowledge** |
| `02_MUC_TIEU_PHAM_VI.md` | Mục tiêu, phạm vi, giai đoạn, sản phẩm đầu ra | Tải lên **Project knowledge** |
| `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md` | Tiêu chuẩn chất lượng, điều kiện nghiệm thu | Tải lên **Project knowledge** |
| `04_QUY_TAC_VAN_HANH.md` | Đặt tên, phiên bản, phê duyệt, bảo mật, nhật ký quyết định | Tải lên **Project knowledge** |
| `02_SKILLS/SKILL_*.md` (5 file) | Mô tả các skill nghiệp vụ HR | Đính kèm vào hội thoại, lưu thành **Skills** (Bước 4, file Hướng dẫn) |
| `03_AGENTS/*.md` (3 file) | Vai trò rà soát chất lượng, pháp lý, điều phối | Đính kèm vào hội thoại khi cần, hoặc lưu thành skill |

## Thứ tự khởi tạo
1. Làm theo `00_TONG QUAN/VKG_HR_HuongDan_TaoProject.md` để tạo Project.
   Thông tin, hồ sơ còn thiếu: `00_TONG QUAN/VKG_HR_HoSoCanCungCap.md` (Project xử lý tiếp).
2. Tạo Project → dán Chỉ dẫn → tải Hồ sơ chung, file 00–04 và file Hồ sơ cần cung cấp lên.
3. Lưu 5 skill trong 02_SKILLS (Bước 4).
4. Mở hội thoại đầu tiên: `[HR-00] Tổng quan – Chốt danh mục văn bản nền tảng`.

## Quản lý thay đổi
Mọi sửa đổi bộ nền tảng: tăng phiên bản, ghi vào Nhật ký quyết định (file 04, mục 6), rồi tải lại bản mới lên Project và xóa bản cũ.
