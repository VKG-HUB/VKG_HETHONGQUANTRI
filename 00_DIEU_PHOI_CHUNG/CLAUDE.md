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
| **ISO** Quy trình, chất lượng | Bối cảnh, chính sách, mục tiêu, rủi ro, bản đồ quá trình, quy trình, QC, hàng lỗi, dụng cụ đo, đánh giá nội bộ, chứng nhận | 4, 5, 6, 8.3–8.7, 9, 10 | **Điều tiết nhóm:** HR-00 (NS), BM-00 (BM), ISO-02 (ISO). **HTQT-00 là MỘT phiên duy nhất, Sonnet `local_b225c54e-6033-44cf-a32f-d088af6d3611`, điều tiết cả chương trình từ 16/11/2026** (phiên Opus cũ đã bàn giao và nghỉ; file bàn giao `BAN-GIAO-HTQT-00-OPUS-2026-11-16.md`) | `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\ISO_9001\00_QUAN_LY_DU_AN` |

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
10a. **Hạn mức sử dụng (HT-027, Giám đốc 15/11/2026, thay HT-022):** **không còn ngưỡng 70%** – các phiên chạy liên tục đến khi hết hạn mức 5 giờ. Khi gần hết (xem `get_usage` trước bước lớn; từ khoảng 90%) chỉ nhận bước nhỏ làm xong được; lưu file, trả khóa Office, ghi điểm dừng vào báo cáo nhanh, báo điều tiết nhóm một dòng, rồi chờ giờ đặt lại. Từ 16/11/2026 chạy lại sau mỗi lần đặt lại do **một tác vụ chung `vkg-chay-lai-sau-dat-lai`** (khoảng 5 giờ một lần, giờ cụ thể đổi theo ngày và được phiên đánh giá độc lập chỉnh lại mỗi đêm; Giám đốc giao tạo 16/11/2026). **Các phiên không tự đặt lịch nhắc riêng.** Phiên gần hết hạn mức chỉ lưu file và ghi điểm dừng rõ (việc dở, bước kế tiếp, việc chờ Giám đốc). Vẫn giữ chọn model theo việc (HT-024).
10. **Tên phiên:** `[HTQT·<NS|BM|ISO>] <mã> <việc>`.

## Trao đổi chéo

Các phiên ở cùng nhóm sidebar "HTQT · Hệ thống quản trị VKG". Cần nhóm khác: nhắn thẳng phiên điều tiết của nhóm đó; không nhắn được thì ghi vào file báo cáo của nhóm đó (BM: mục "Tin từ nhóm ISO/NS" trong bảng điều khiển BM; ISO: `ISO_9001\00_QUAN_LY_DU_AN\BAO_CAO_NHANH\`).

## Luồng câu hỏi và bảng điều hành (từ 16/11/2026)
Bảng https://claude.ai/artifact/M6h1N4c6rCwo3jPgdrAZyw là đầu mối duy nhất của chương trình cho Giám đốc.
1. **Một đầu mối trả lời:** phiên con báo điều tiết nhóm (HR-00, BM-00, ISO-02); điều tiết nhóm báo HTQT-00; HTQT-00 đưa câu lên `cau_hoi` kèm đề xuất và trường `nhanh` (phiên con nêu câu). **Nhánh con không hỏi Giám đốc trực tiếp.**
2. **Lọc:** câu nghiệp vụ trong quyền HT-006 thì HTQT-00 tự quyết và ghi vào `quyet_dinh` cho Giám đốc xem lại. Chỉ câu về tiền, người, pháp lý, ban hành, đổi đích hay phạm vi mới lên `cau_hoi`. Câu khó cần cân nhắc: đưa lên kèm `can_dgv: true` để kỳ sáng của đánh giá viên viết đề xuất.
3. **Ai ghi gì:** `cau_hoi`, `quyet_dinh`, `van_de`, `moc`, `viec`, `meta` do HTQT-00 ghi. `de_xuat_dgv` trong `cau_hoi` chỉ phiên Đánh giá độc lập ghi. `tra_loi` chỉ Giám đốc ghi (HTQT-00 không đổi câu đã lưu). `san_pham` do script `09_CONG_CU\quet-san-pham.ps1` sinh, HTQT-00 đẩy lên (xem `09_CONG_CU\HUONG-DAN-CAP-NHAT-SAN-PHAM.md`); không gõ tay.
4. **`van_de` (tab Vấn đề phát sinh):** mỗi dòng một sự cố ở nhánh con (lỗi, xung đột hai nhóm, việc bị chặn, rủi ro trễ mốc). Trường: ngay, nhom, nhanh, muc (Gấp, Cao, Thường), noi_dung, anh_huong, ai_xu_ly, trang_thai (Mở, Đang xử lý, Đã xong), ket_qua, nguon, cau_hoi (mã câu nếu cần Giám đốc). Điều tiết nhóm báo sự cố một dòng trong báo cáo mốc; HTQT-00 ghi vào đây.
5. Không đưa dữ liệu cá nhân thật lên bảng.

## Đọc và tải file trên OneDrive (từ 16/11/2026, Giám đốc quyết, phiên đánh giá chuyển lời; Giám đốc đồng ý ghi vào đây ngày 16/11)

Lý do: sáng 16/11 một lệnh `grep -r` trên OneDrive làm máy tải hàng loạt file từ mây, ổ C còn ~8 GB. Giám đốc đã cho "Free up space" và sẽ làm thường xuyên, nên file OneDrive có thể trở lại chỉ nằm trên mây bất cứ lúc nào.
1. Chỉ mở file thật sự cần, theo đúng đường dẫn. Không quét nội dung cả cây thư mục OneDrive.
2. Tìm chữ: chỉ trong thư mục đã biết, giới hạn loại file chữ (.md, .txt, .html, .csv, .ps1). Không `grep -r`, `Select-String -Recurse`, đọc hàng loạt bằng script. Không mở PDF, ảnh, video, bản vẽ, file nén chỉ để tìm chữ. Liệt kê tên, ngày sửa, dung lượng thì được.
3. Đừng coi "file đang có sẵn trên máy" là điều kiện của quy trình: mở theo đường dẫn, OneDrive tự tải lại đúng file đó.
4. Tài liệu tải từ nơi khác (thư điện tử, web, Downloads, file tạm của phiên) nếu còn dùng thì lưu vào thư mục nguồn của việc đó và ghi đường dẫn vào sổ hoặc điểm dừng của nhóm; không dẫn chiếu tới Downloads hay thư mục tạm.
5. Không xóa file, không tự chạy "Free up space", không đổi cài đặt OneDrive: việc của Giám đốc.
6. Việc buộc đọc nhiều file lớn (dựng lại hàng loạt, sao lưu, đối chiếu cả thư mục): báo trước một dòng ước lượng số file, dung lượng, chờ Giám đốc đồng ý.
7. Không giao nhánh model rẻ quét cả cây thư mục; giao thì chỉ danh sách file đã chỉ định.