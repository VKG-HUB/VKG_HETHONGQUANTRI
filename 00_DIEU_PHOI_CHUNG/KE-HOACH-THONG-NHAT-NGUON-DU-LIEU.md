# Kế hoạch thống nhất nguồn dữ liệu HTQT (HT-023)

Giám đốc chốt 14/11/2026 (câu Q4-3 và trả lời trong chat HTQT-00). HTQT-00 chủ trì. Chạy **ngay sau giờ đặt lại hạn mức 14:40 ngày 14/11**.

## 1. Mục tiêu
1. Một gốc chung cho 3 nhóm Nhân sự, ISO, Biểu mẫu: `C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\` (gọi tắt **gốc HTQT**).
2. Mọi bản nháp, bản làm việc nằm trên OneDrive (không còn bản chỉ có trên ổ D).
3. Sao lưu: OneDrive → ổ cứng bằng công cụ chép của Windows (robocopy), chạy định kỳ, **không dùng Claude**. Claude đẩy lên GitHub (repo riêng tư) 15 ngày/lần; **lần đầu 15/11/2026** dù chưa hoàn thiện.

## 2. Nguyên tắc chuyển (giữ an toàn cho bộ nộp 20/11)
- **Chép trước, kiểm, rồi mới xoá/đổi chỗ cũ.** Bản cũ giữ ít nhất đến 30/11 trong `99_LUU_TRU`.
- **Không đổi tên, không dời thư mục mà các phiên đang mở làm thư mục làm việc** (`VKG_HR OFFICER`, `ISO_9001`, thư mục nháp ở ổ D). Đổi tên đẹp (01_, 03_…) để sau khi các phiên này đóng.
- Website (`WEBSITE DN`) và bộ mẫu đã phát hành (`BIEU-MAU-VKG`, nơi tin cậy trên 4 máy) **giữ chỗ cũ**; gốc HTQT có **bản sao** + ghi chú bản gốc ở đâu, chép lại mỗi lần phát hành.
- Trong lúc chuyển (dự kiến 14:45–15:30): các phiên không ghi file, không giữ khóa Office.

## 3. Sơ đồ gốc HTQT sau khi chuyển

| Thư mục | Nội dung | Làm gì |
|---|---|---|
| `00_DIEU_PHOI_CHUNG` | Sổ chung, bảng điều khiển, kế hoạch này | Giữ |
| `VKG_HR OFFICER` | Nhóm Nhân sự | Giữ chỗ (đổi tên `01_NHAN_SU` sau khi phiên NS đóng) |
| `02_BIEU_MAU` (mới) | `BAN_SAO_PHAT_HANH\` = bản sao `BIEU-MAU-VKG`; `00_README.md` chỉ bản gốc, sổ QĐ nhóm BM, danh mục mẫu | Chép |
| `ISO_9001` | Nhóm ISO; thêm `_NHAP_CLAUDE\` = toàn bộ nháp đang ở `D:\VKG_TECHNICAL\VIỆT KHOA\_VKG_SANG_LOC_CLAUDE\11_ISO_9001` | Chép nháp ổ D vào; ổ D chỉ còn README trỏ về |
| `04_HO_SO_CONG_TY` (mới) | Hồ sơ chung doanh nghiệp (bản gốc), danh mục giấy tờ pháp lý | Chuyển từ `VKG_HR OFFICER\00_TONG QUAN\` (để lại 1 dòng trỏ tới) |
| `09_CONG_CU` (mới) | `dung-docx-iso.ps1`, 3 khung Word chung, script sao lưu | Chép từ nơi đang dùng; nơi cũ giữ đến khi các phiên đổi đường dẫn |
| `QUẢNTRI _ CẢI TIẾN KINH DOANH`, `TÀI LIỆU XÂY DỰNG` | Chưa rõ nội dung | **Giữ nguyên**, chờ Giám đốc xem |
| `99_LUU_TRU` | Bản cũ trước khi chuyển | Giữ ≥ 30/11 |

**Dữ liệu thật (ngoài gốc HTQT, AI không đọc):** `C:\Users\VINH\OneDrive\VKG\_KHONG-CHO-AI-DOC\` gồm `01_GIAY_TO_PHAP_LY` (chuyển từ `_GIAY-TO-PHAP-LY-GOC_KHONG-CHO-AI-DOC`), `02_HO_SO_NHAN_SU` (hồ sơ nhân sự, ứng viên thật), `03_BHXH`. **Giám đốc tự chuyển** thư mục `OneDrive\VKG\THONG TIN NHAN SU BHXH` vào `03_BHXH` (AI không mở thư mục này) và đặt quyền chia sẻ: chỉ Giám đốc và người phụ trách nhân sự.

## 4. Các bước chạy (HTQT-00, sau 14:40)
1. Nhắn các phiên điều tiết: dừng ghi, trả khóa Office. Kiểm `KHOA-OFFICE.md` trống.
2. Tạo `02_BIEU_MAU`, `04_HO_SO_CONG_TY`, `09_CONG_CU`, `ISO_9001\_NHAP_CLAUDE`, `99_LUU_TRU\2026-11-14_truoc-thong-nhat\`.
3. Chép (robocopy, không xoá nguồn), so số file và dung lượng nguồn – đích.
4. Hồ sơ chung: chuyển bản gốc sang `04_HO_SO_CONG_TY`; chỗ cũ để file trỏ tới; BM chép lại bản sao 07 với dòng "Bản sao" mới.
5. Sửa đường dẫn trong: CLAUDE.md chung, DANH-MUC-TAI-LIEU-CHUNG, TU-DIEN, BANG-DIEU-KHIEN, DIEM-DUNG, quy tắc 9; báo từng nhóm sửa CLAUDE.md, báo cáo nhanh, script của nhóm mình.
6. Kiểm: mỗi nhóm mở được file nền theo đường dẫn mới; dựng thử 1 file Word bằng `09_CONG_CU\dung-docx-iso.ps1`.
7. Báo Giám đốc; các nhóm làm tiếp.

## 5. Sao lưu
- **Ổ cứng (không dùng Claude):** script `09_CONG_CU\sao-luu-o-cung.ps1` dùng robocopy chép gốc HTQT → `D:\VKG_BACKUP\HTQT\` (chép thêm, không xoá bên đích; mỗi tháng một thư mục mốc). Giám đốc tự đặt lịch trong Task Scheduler của Windows (em viết sẵn hướng dẫn). Loại trừ `_KHONG-CHO-AI-DOC` khỏi mọi script AI; sao lưu thư mục đó do Giám đốc tự làm.
- **GitHub 15 ngày/lần:** Giám đốc cài Git for Windows, tạo **1 repo PRIVATE**, đăng nhập trên máy. HTQT-00 viết `.gitignore` (loại `_KHONG-CHO-AI-DOC`, BHXH, hồ sơ thật, file tạm Office `~$*`, file > 50 MB) và tác vụ hẹn giờ đẩy lên 15 ngày/lần. **Lần đầu 15/11/2026.** Trước mỗi lần đẩy: quét không có số CCCD, tài khoản ngân hàng, lương cá nhân.

## 6. Việc của Giám đốc
1. Cài Git for Windows, tạo repo GitHub riêng tư, đăng nhập (trước 15/11).
2. Chuyển `THONG TIN NHAN SU BHXH` vào `_KHONG-CHO-AI-DOC\03_BHXH`, đặt quyền chia sẻ.
3. Đặt lịch sao lưu ổ cứng trong Task Scheduler theo hướng dẫn.
4. Xem 2 thư mục chưa rõ nội dung ở gốc HTQT.
