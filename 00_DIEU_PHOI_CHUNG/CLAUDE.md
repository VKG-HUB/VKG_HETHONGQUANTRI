# Chương trình Hệ thống quản trị VKG (HTQT) – AI đọc đầu mỗi phiên của 3 nhóm

Căn cứ: HT-001 đến HT-004 (Giám đốc duyệt 12/11/2026), đề xuất `DE-XUAT-GOM-3-NHOM-HTQT_v1.md` cùng thư mục.

## Đích cuối chung

> **Chứng nhận ISO 9001:2026 trước 30/11/2027** – phạm vi gia công kim loại tấm theo bản vẽ + chế tạo thiết bị inox + thiết kế, chế tạo máy theo yêu cầu (ISO-QĐ-08, 14/11/2026), CN1 và CN2.
> Mỗi nhóm giữ mốc riêng làm mốc trung gian. ISO 9001 là khung: mọi việc phải trả lời được "phục vụ điều nào của ISO".

## Quyền điều phối (HT-006, 13/11/2026)

HTQT-00 tự điều phối toàn chương trình và báo kết quả cho Giám đốc mỗi ngày. HTQT-00 tự quyết: thứ tự việc, giao việc giữa nhóm, cấp mã, cho nhánh viết nháp theo bố cục đề xuất, chuyển yêu cầu chéo, mở/đóng phiên. **Vẫn trình Giám đốc:** ban hành tài liệu, nội dung pháp lý, tiền, chọn người, đổi đích cuối hay phạm vi. Quyết định HTQT-00 tự quyết ghi `HT-nnn` với người chốt "HTQT-00".

**Mốc gần (HT-005):** 20/11/2026 nộp Giám đốc toàn bộ tài liệu hệ thống quản trị nhân sự; 20–30/11 Giám đốc kiểm tra, áp dụng thử từng phần, báo kết quả cho HTQT-00.

**Bảng điều hành cho Giám đốc (14/11/2026):** https://claude.ai/artifact/M6h1N4c6rCwo3jPgdrAZyw – 6 sheet: tổng quan, câu hỏi cho Giám đốc (kèm đề xuất, lý do, ảnh hưởng nếu chọn khác), quyết định HTQT-00/HR-00 ra thay Giám đốc (hướng, lý do, nút Xem lại), việc đã làm, mốc và rủi ro, cách dùng. Dữ liệu trong kho của trang (collection `cau_hoi`, `quyet_dinh`, `viec`, `moc`; câu trả lời của Giám đốc ở `tra_loi`; phân tích của HTQT-00 ở `phan_tich`). Chỉ HTQT-00 ghi `cau_hoi`, `quyet_dinh`, `viec`, `moc`, `phan_tich`. **Quy trình xử lý câu trả lời:** đồng ý → ghi quyết định (sổ của nhóm, HT nếu liên nhóm), đóng câu; ý khác hoặc "Xem lại" → HTQT-00 phân tích ảnh hưởng tới hướng và các quyết định đã ra, điều chỉnh (quyết định thay thế ghi "thay HT-xxx"), ghi kết quả vào `phan_tich/<id>` để hiện dưới câu.

## Ba nhóm

| Nhóm | Chủ trì | Điều ISO | Điều tiết nhóm | Thư mục / file nền |
|---|---|---|---|---|
| **NS** Nhân sự | Sơ đồ tổ chức, JD, đào tạo, tay nghề, KPI, nội quy, an toàn lao động, văn bản hành chính nhân sự | 5.3, 7.1.2, 7.1.4, 7.2, 7.3 | Phiên `[HTQT·NS] HR-00` | `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\VKG_HR OFFICER\00_TONG QUAN\01_NEN TANG DU AN` |
| **BM** Biểu mẫu, chứng từ | Dựng, trình bày, phát hành **mọi** biểu mẫu trắng; mã hồ sơ xuyên suốt; điều khoản | 7.5, 8.2, 8.5.2 | Phiên `00. ĐIỀU TIẾT CHUNG · Chuẩn hóa biểu mẫu vận hành` | `WEBSITE DN\00-CHIEN-LUOC\BIEU-MAU_BANG-DIEU-KHIEN.md`; phát hành `OneDrive\VKG\BIEU-MAU-VKG` |
| **ISO** Quy trình, chất lượng | Bối cảnh, chính sách, mục tiêu, rủi ro, bản đồ quá trình, quy trình, QC, hàng lỗi, dụng cụ đo, đánh giá nội bộ, chứng nhận | 4, 5, 6, 8.3–8.7, 9, 10 | Phiên `[HTQT·ISO] HTQT-00` (kiêm điều tiết chương trình) | `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\ISO_9001\00_QUAN_LY_DU_AN` |

## Sổ dùng chung (thư mục này) – chỉ HTQT-00 ghi

| File | Dùng để |
|---|---|
| `BANG-DIEU-KHIEN-HTQT.md` | Các nhóm, các phiên, lịch chung |
| `QUY-TAC-MA-CHUNG.md` | Mã mọi tài liệu của 3 nhóm |
| `DANH-MUC-TAI-LIEU-CHUNG.md` | Một danh sách mọi tài liệu, ai chủ, trạng thái |
| `NHAT-KY-QD-LIEN-NHOM.md` | Quyết định ảnh hưởng ≥ 2 nhóm, số `HT-nnn` |
| `TU-DIEN-THUAT-NGU.md` | Từ dễ hiểu sai |
| `VIEC-CHO-GIAM-DOC.md` | **Một** danh sách việc chờ Giám đốc của cả 3 nhóm |
| `../04_HO_SO_CONG_TY/VKG_ho-so-chung-doanh-nghiep.md` | Hồ sơ chung doanh nghiệp (bản gốc duy nhất, chuyển 14/11 theo HT-023) – chỉ HTQT-00 sửa; sửa xong báo nhóm BM chép bản sao sang `WEBSITE DN\07-TAI-LIEU-DN` |
| `../02_BIEU_MAU/`, `../09_CONG_CU/`, `../ISO_9001/_NHAP_CLAUDE/` | Danh mục nguồn nhóm BM + bản sao phát hành; công cụ chung (`dung-docx-iso.ps1`, khung Word); nháp ISO chép từ ổ D (HT-023) |

Sổ quyết định riêng của từng nhóm giữ nguyên số đang chạy: `QĐ-nnn` (BM, website), sổ HR, `ISO-QĐ-nn`. Quyết định nhóm nào ảnh hưởng nhóm khác: báo HTQT-00 để ghi thêm 1 dòng `HT-nnn`.

## Quy tắc bắt buộc (áp cho mọi phiên của 3 nhóm)

1. **Mỗi việc một chủ.** Việc thuộc nhóm khác: không tự làm, gửi yêu cầu "cần ghi gì, vì sao, điều ISO nào" cho điều tiết nhóm đó.
2. **Biểu mẫu chỉ phát hành ở `BIEU-MAU-VKG`.** **Mọi tài liệu, biểu mẫu quản trị dựng trên nền và theo phong cách nhóm BM (HT-012, HT-013):** đọc quy chuẩn chung trong `WEBSITE DN\00-CHIEN-LUOC\BIEU-MAU_BANG-DIEU-KHIEN.md`, skill `vkg-bm-lap-bieu-mau` (`KHO-TRI-THUC-VKG\01-CLAUDE-SKILLS\vkg-bm-lap-bieu-mau\`), mẫu đang dùng trong `BIEU-MAU-VKG`. Header QĐ-120, footer kiểu QĐ-121/122, chữ, đường kẻ `#0A2E5C`, Arial, logo bộ bàn giao (QĐ-55), điều khoản lấy từ DK-01. Nhóm NS, ISO được dựng **bản nháp** theo nền này trong thư mục nháp của mình; bản chính thức do BM dựng, phát hành.
2a. **Quốc hiệu chỉ dùng khi cần (HT-016):** có ở hợp đồng lao động, hợp đồng kinh tế và phụ lục, văn bản nộp nhà nước theo mẫu nhà nước. Mọi tài liệu khác (quy trình, quy chế, nội quy, quyết định nội bộ, biểu mẫu, biên bản, thư gửi khách) không ghi.
3. **Mã theo `QUY-TAC-MA-CHUNG.md`.** Cần mã mới: xin HTQT-00 cấp. Không tự đặt.
4. **Bất đồng giữa hai nhóm:** không tự chọn; đưa cả hai phương án lên `VIEC-CHO-GIAM-DOC.md` qua HTQT-00.
5. **Khi trình nội dung có lịch sử không liền mạch hoặc gom từ nhiều nguồn:** nói đủ nội dung và các phương án ngay trong chat, kèm lịch sử, nguồn (file, số QĐ, ngày, ai chốt) và bằng chứng; không chỉ trỏ tới file. (Giám đốc yêu cầu 12/11/2026, ghi nhận ở báo cáo ISO-02.)
6. **Khoá chủ đề.** Câu hỏi ngoài phạm vi phiên: không trả lời nội dung, ghi mục chờ, đề xuất mở phiên mới. Xong thì đóng phiên.
7. **Không bịa.** Chỗ thiếu ghi `[CẦN XÁC NHẬN]`. Không tự thêm quy định cho đủ ý. Trạng thái ghi rõ đã viết / đã kiểm / đã duyệt.
8. **Một file một người sửa.** Không sửa file nền của nhóm khác; nhắn điều tiết nhóm đó.
9. **Dữ liệu cá nhân thật** (CCCD, lương từng người, tài khoản, sức khoẻ) không đưa vào AI. Giấy tờ thật có số định danh để ở thư mục tên `…_KHONG-CHO-AI-DOC` – gốc `OneDrive\VKG\_KHONG-CHO-AI-DOC\` (01 giấy tờ pháp lý, 02 hồ sơ nhân sự thật, 03 BHXH): mọi phiên không mở, không Glob, Grep vào đó; cần thông tin thì đọc danh mục `04_HO_SO_CONG_TY\GIAY_TO_PHAP_LY\00_README.md` hoặc hồ sơ chung mục 1.1. Script, tìm kiếm quét rộng `OneDrive\VKG` phải loại trừ thư mục này và `THONG TIN NHAN SU BHXH`.
10a. **Hạn mức sử dụng (HT-022, Giám đốc 14/11/2026):** trước mỗi bước lớn (dựng Word, rà một file, soạn một văn bản) xem hạn mức 5 giờ (`get_usage`). **Dưới 70%: cứ chạy, không dừng sớm, không hoãn việc chờ giờ đặt lại.** **Chạm 70%: không nhận việc mới**; việc đang làm dở thì làm cho xong hết (có thể lên tới khoảng 80%, Giám đốc đã trừ hao), rồi ghi điểm dừng vào báo cáo nhanh, trả khóa Office, không mở phiên mới, báo điều tiết nhóm một dòng. **Trong 1 giờ cuối trước giờ đặt lại**, nếu còn hạn mức thì chạy tiếp đến gần hết (khoảng 95%): chỉ nhận bước nhỏ làm xong được, lưu file, trả khóa, rồi dừng chờ lần đặt lại sau. HTQT-00 nhắn các nhóm khi tới giờ chạy tiếp.
10. **Tên phiên:** `[HTQT·<NS|BM|ISO>] <mã> <việc>`.

## Trao đổi chéo

Các phiên ở cùng nhóm sidebar "HTQT · Hệ thống quản trị VKG". Cần nhóm khác: nhắn thẳng phiên điều tiết của nhóm đó; không nhắn được thì ghi vào file báo cáo của nhóm đó (BM: mục "Tin từ nhóm ISO/NS" trong bảng điều khiển BM; ISO: `ISO_9001\00_QUAN_LY_DU_AN\BAO_CAO_NHANH\`).
