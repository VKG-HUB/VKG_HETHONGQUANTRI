# Hướng dẫn dự án ISO 9001 – Việt Khoa (AI đọc đầu mỗi phiên)

> **Từ 12/11/2026 nhóm ISO thuộc chương trình HTQT (HT-001).** Đọc trước: `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\00_DIEU_PHOI_CHUNG\CLAUDE.md` (quy tắc chung 3 nhóm, mỗi việc một chủ), `QUY-TAC-MA-CHUNG.md` (HT-002). Chỗ nào file này khác file chung thì theo file chung. Phiên ISO-00 nay là **HTQT-00**.

## Đích cuối (nhắc ở đầu mọi câu trả lời dài)

> **Đạt chứng nhận ISO 9001:2026 trước 30/11/2027** cho gia công kim loại tấm theo bản vẽ, chế tạo thiết bị inox và thiết kế, chế tạo máy theo yêu cầu (mở rộng theo ISO-QĐ-08, 14/11/2026), tại xưởng CN1 Đông Hòa và CN2 Phước Tân.
> Căn cứ: ISO-QĐ-01 đến ISO-QĐ-04 (12/11/2026).

## Thông tin doanh nghiệp

Lấy từ `OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\VKG_HR OFFICER\00_TONG QUAN\VKG_ho-so-chung-doanh-nghiep.md`. Không chép lại, không tự điền mục `[CẦN XÁC NHẬN]`.
Tóm tắt: 15 người (kế hoạch 26), 2 xưởng, thiếu nhân sự văn phòng, chưa có chứng chỉ hệ thống nào.

## Thư mục

| Nơi | Đường dẫn |
|---|---|
| Thư mục chính (nhân sự dùng) | `C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\ISO_9001` |
| Nháp của Claude | `D:\VKG_TECHNICAL\VIỆT KHOA\_VKG_SANG_LOC_CLAUDE\11_ISO_9001\<mã nhánh>` |
| Kế hoạch tổng | `11_ISO_9001\ISO-00_DIEU_TIET\KE-HOACH-ISO-9001_v1.md` |
| Danh mục nguồn mở | `11_ISO_9001\ISO-00_DIEU_TIET\DANH-MUC-NGUON-MO-ISO_v1.md` |

## Quy tắc bắt buộc

1. **Khoá chủ đề.** Mỗi đoạn chat chỉ làm đúng mã nhánh của mình. Câu hỏi ngoài phạm vi nhánh: không trả lời nội dung, trả lời một dòng "Ngoài phạm vi nhánh <mã>, em ghi vào Mục chờ", ghi vào `BAO_CAO_NHANH\<mã nhánh>.md` mục "Đề xuất mở nhánh mới". Chat điều tiết xếp lịch.
2. **Nội dung mới, lớn** (từ 3 bước, có đầu ra riêng): đề xuất mở đoạn chat mới qua chat điều tiết. Làm xong thì đóng nhánh, báo về điều tiết.
3. **Một file một người sửa.** Nhánh chỉ ghi vào thư mục nháp của mình và `00_QUAN_LY_DU_AN\BAO_CAO_NHANH\<mã nhánh>.md`. Chỉ chat điều tiết sửa `BANG-DIEU-KHIEN.md`, `NHAT-KY-QUYET-DINH.md`, `DANG-LAM-DO.md`.
4. **Số quyết định** dạng `ISO-QĐ-nn`, chỉ chat điều tiết cấp số. Nhánh ghi "đề xuất quyết định" không có số.
5. **Không bịa.** Không tự đặt số liệu, tên người, giá. Chỗ thiếu ghi `[CẦN XÁC NHẬN]`. Không tự thêm quy định cho đủ ý.
6. **Trạng thái** ghi rõ: đã viết / đã kiểm / đã duyệt. AI làm xong chưa phải đã duyệt. Giám đốc là người chốt.
7. **Hỏi bằng việc thật**, không bằng thuật ngữ. Ví dụ hỏi "Ai đang đo kích thước trước khi giao hàng?" thay vì "Ai thực hiện 8.6?".
8. **Ghi tiến độ sau mỗi bước lớn**, không đợi cuối buổi.
9. **Dữ liệu công ty không đưa lên dịch vụ ngoài** khi chưa hỏi Giám đốc.
10. **Tải tài liệu** từ internet: hỏi trước, lưu vào `01_TAI_LIEU_THAM_KHAO`, không sửa.

## Cổng duyệt

Trao đổi → Duyệt bố cục → Duyệt nháp → Cho dùng thử → Phát hành → Ghi kinh nghiệm. Mỗi cổng một quyết định.

## Mở lại sau khi bị ngắt

Đọc `BANG-DIEU-KHIEN.md`, `NHAT-KY-QUYET-DINH.md`, `DANG-LAM-DO.md`. Báo việc đang dở, tới đâu, file nào, bước kế tiếp, việc chờ duyệt. Kiểm file thật trước khi làm tiếp.
