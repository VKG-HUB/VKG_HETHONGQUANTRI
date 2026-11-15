# Phương án quy tắc mã tài liệu ISO – Việt Khoa

Phiên bản v0.1 · 12/11/2026 · Nhánh ISO-02 · Trạng thái: **đã viết, chưa kiểm độc lập, chưa duyệt** · Người chốt: Giám đốc

> **ĐÍCH CUỐI:** Chứng nhận ISO 9001:2026 trước 30/11/2027. Quy tắc mã là việc nền: các nhánh ISO-03…07 dùng nó để đặt tên quy trình, biểu mẫu.

---

## 1. Công ty đang đánh mã thế nào (đã đọc, chỉ đọc, không sửa)

| Hệ mã đang dùng | Ví dụ | Căn cứ | Nơi phát hành |
|---|---|---|---|
| **Biểu mẫu theo bước công việc**: mã nhóm 2 chữ + số 2 chữ số (+ chữ phụ) | BG-01, BG-06A, DH-01, NT-03, GT-01 | Danh mục `BIEU-MAU-VKG\00-DANH-MUC-BIEU-MAU.xlsx`, sheet Quy tắc (QĐ-74) | `OneDrive\VKG\BIEU-MAU-VKG\01-DANG-DUNG`; bản cũ `03-NGUNG-DUNG` |
| Nhóm đã đặt tên | BG báo giá · DH đơn hàng, hợp đồng · SX sản xuất · GH giao nhận · TT thanh toán · NT nghiệm thu, thanh lý · GT giới thiệu năng lực | Như trên | Thư mục SX, GH, TT hiện **trống** |
| Tên file biểu mẫu | `<mã>_<Ten-ngan>_v<X.Y>` → `BG-01_Tieu-chuan_v3.1.xltx` | QĐ-74 | |
| Mã ngày ở chân trang biểu mẫu | `BG-01.26L23` (năm 26, tháng A–M bỏ chữ I, ngày 23); điều chỉnh thì nối thêm `.26M02` | QĐ-121, QĐ-122, QĐ-124 | |
| Bản gốc và bản phát hành tách riêng, chép một chiều | Gốc ở `WEBSITE DN\...\AN-PHAM`, phát hành ở `BIEU-MAU-VKG` | QĐ-74 | |
| **Số chứng từ / mã hồ sơ đơn hàng** (từ 01/12/2026) | `26110421-11-HGT` = ngày mở + số mảng + thứ tự, loại chứng từ, lượt, mã đối tác | `WIKI-CHUNG\quy-dinh-chung-tu.md` (QĐ-75 đến 77) | Người cấp số: Phó GĐ kiêm TP Kinh doanh, Giám đốc |
| Văn bản nhân sự | `VKG/HR/QT-001/2026`; file `VKG_HR_QT-001_TuyenDung_v0.1_2026-11.docx`; loại QĐ, QC (quy chế), QT, CS, BM, TB, JD, KPI | `VKG_HR OFFICER\00_TONG QUAN\01_NEN TANG DU AN\04_QUY_TAC_VAN_HANH.md` | `VKG_HR OFFICER` |
| Phiên bản (HR, biểu mẫu) | v0.x nháp · v1.0 ban hành lần đầu · v1.1 sửa nhỏ · v2.0 sửa nội dung | Như trên | |
| Số quyết định | QĐ-nn (nhật ký WEBSITE DN, tới QĐ-125) · QD-001 (nhật ký Hệ thống quản trị) · ISO-QĐ-nn (dự án ISO) | Các nhật ký quyết định | |

**Chỗ dễ đụng nhau nếu làm theo đúng chữ trong kế hoạch ISO v1:**

1. **`BM-xx` cho mọi biểu mẫu** → trùng với hệ BG/DH/NT đang chạy (11 mẫu đã phát hành, có mã ở chân trang theo QĐ-122) và trùng loại `BM` của HR. Nếu thêm BM-xx, một tờ báo giá sẽ có 2 mã.
2. **Phiên bản `R0, R1`** (kế hoạch GĐ3) → công ty đang dùng `v1.0, v1.1`. Hai cách gọi cho cùng một thứ.
3. **`QC` cho phiếu kiểm** → HR dùng `QC` = quy chế.
4. **`QT-01` (ISO) và `QT-001` (HR)** → khác số chữ số và có tiền tố `VKG/HR`, phân biệt được, nhưng đọc miệng dễ nhầm.

---

## 2. Ba phương án

### Phương án A – Một hệ mã chung, nối hệ đang có (**đề xuất**)

| Loại | Mã | Ví dụ |
|---|---|---|
| Cấp 1 – Sổ tay, chính sách, bản đồ quá trình | `ST-xx` | ST-01 Phạm vi và bối cảnh · ST-02 Chính sách chất lượng · ST-03 Bản đồ quá trình |
| Cấp 2 – Quy trình | `QT-xx` | QT-01 Kiểm soát tài liệu và hồ sơ |
| Cấp 3 – Hướng dẫn, tiêu chí kiểm | `HD-xx` | HD-01 Tiêu chí kiểm tấm cắt laser |
| Cấp 4 – Biểu mẫu | **Giữ hệ nhóm theo bước công việc** đang có (BG, DH, SX, GH, TT, NT, GT); thêm nhóm mới khi ISO cần | Nhóm mới đề xuất: `CL` chất lượng (thẻ kiểm, hàng lỗi) cho ISO-03 · `MH` mua hàng, NCC cho ISO-06 · `NL` nguồn lực (máy, dụng cụ đo, tay nghề) cho ISO-07. Đã tìm trong `OneDrive\VKG` (*.md): chưa nơi nào dùng CL-0x, MH-0x, NL-0x, ST-0x, HD-0x |
| Văn bản HR | Giữ nguyên mã HR | ISO chỉ ghi tên trong danh mục, không đổi mã |
| Phiên bản | `vX.Y` như công ty đang dùng; **bỏ cách gọi R0, R1** | "Bộ R0" trong kế hoạch = các tài liệu v1.0 |
| Ngày | QT, HD, ST: ghi rõ "Hiệu lực dd/mm/yyyy" ở khung đầu. Biểu mẫu in: mã ngày ở chân trang theo QĐ-122 | `CL-01.27A05` |

- **Được:** không đổi mã 11 mẫu đang dùng; nhân sự đã quen BG/DH; cùng một kiểu tên file và phiên bản với kho biểu mẫu; chuyên gia đánh giá nhìn vào danh mục là truy được.
- **Mất:** có 2 nơi phát hành (biểu mẫu gửi khách ở `BIEU-MAU-VKG`, tài liệu ISO ở `10_PHAT_HANH`) → phải có **một danh mục chung** trỏ tới cả hai. Thêm nhóm mới phải dò trùng trước.
- **Điều kiện thất bại:** danh mục chung không ai cập nhật → biểu mẫu mới ra ngoài danh mục. Cách giảm: chỉ một người (Đại diện ISO) cấp mã và ghi danh mục.

### Phương án B – Hệ ISO riêng như sách: QT-xx, HD-xx, BM-xx

- **Được:** đơn giản để viết, giống mẫu ISO phổ biến.
- **Mất:** mỗi mẫu BG/DH/NT có thêm một mã BM, hoặc phải đổi mã và in lại chân trang (vừa làm xong QĐ-122, QĐ-124); `BM` trùng HR; nhân sự phải nhớ 2 cách gọi.
- Chỉ nên chọn nếu Giám đốc muốn tách hẳn hệ ISO khỏi kho biểu mẫu văn phòng.

### Phương án C – Mã gắn theo quá trình: `<quá trình>-<loại>-xx`

Ví dụ `BH-QT-01` (bán hàng), `SX-HD-03`, `CL-BM-02`.

- **Được:** nhìn mã biết thuộc khâu nào trên bản đồ quá trình.
- **Mất:** mã dài; phụ thuộc bản đồ quá trình (chưa duyệt) – đổi bản đồ là đổi mã; BG-01 phải thành `BH-BG-01` hoặc để lệch hệ.
- Hợp với công ty nhiều phòng ban; chưa cần ở quy mô 15 người.

### Vì sao đề xuất A

Đi theo 7 tiêu chí của Quy tắc làm việc dự án Hệ thống quản trị: A **không thêm thao tác** cho người đang dùng mẫu, không đụng QĐ-74/QĐ-122 đã chốt, và là phương án ít thay đổi nhất mà vẫn đáp ứng ISO 7.5 (tài liệu có nhận diện, phiên bản, được duyệt, bản cũ được kiểm soát). Cái giá là một bảng danh mục chung – việc này ISO cũng bắt phải có.

---

## 3. Câu hỏi đợt 1 (5 câu)

1. **Chọn phương án mã:** A (đề xuất), B hay C?
2. **Phiếu nội bộ mới** như thẻ kiểm QC, phiếu hàng lỗi, sổ dụng cụ đo: Giám đốc muốn để chung kho `BIEU-MAU-VKG` (cùng chỗ báo giá, theo quy trình phát hành QĐ-74) hay để trong `ISO_9001\10_PHAT_HANH`? *Đề xuất: phiếu gửi khách ở `BIEU-MAU-VKG` như cũ; phiếu chỉ dùng trong xưởng ở `10_PHAT_HANH`, vì không cần dựng `.xltx` có logo.*
3. **Khi Giám đốc duyệt một quy trình:** ký tay lên bản in rồi chụp lại, hay chỉ cần ghi số quyết định `ISO-QĐ-nn` vào nhật ký, khung đầu tài liệu ghi "Duyệt: Giám đốc – ISO-QĐ-nn"? *Đề xuất: ghi số quyết định, không ký tay – đỡ một bước in, chụp.*
4. **Ở xưởng, thợ xem quy trình và thẻ kiểm bằng gì:** tờ in treo tại máy, hay mở trên điện thoại? (Nếu có tờ in thì khi đổi phiên bản phải thu tờ cũ về; nếu chỉ điện thoại thì chỉ cần thay file.)
5. **Ảnh QC, phiếu hàng lỗi giữ bao lâu?** Ví dụ: khách khiếu nại một lô giao cách đây 2 năm, Giám đốc có cần tìm lại ảnh lúc giao không? *Đề xuất: giữ ít nhất 3 năm (bằng một chu kỳ chứng chỉ), hồ sơ có tính pháp lý, kế toán theo luật riêng.*

Câu đang chờ ở chỗ khác, không hỏi lại: ai là Đại diện ISO (người cấp mã, giữ danh mục) – Bảng điều khiển ISO mục 3, việc 2.
