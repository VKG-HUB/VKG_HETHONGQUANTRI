# Đề xuất: gom ISO 9001, Nhân sự, Biểu mẫu thành một chương trình

Phiên bản v1 · 12/11/2026 · Trạng thái: **đã viết, chưa duyệt** · Người chốt: Giám đốc
Người viết: chat ISO-00 (theo yêu cầu Giám đốc 12/11/2026). Nháp tạm để ở đây; khi duyệt sẽ chuyển lên `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\00_DIEU_PHOI_CHUNG\`.

---

## 1. Hiện trạng: 3 dự án, 3 nơi, 3 cách đặt mã

| | Nhân sự (HR) | Biểu mẫu (BM) | ISO 9001 |
|---|---|---|---|
| Mở từ | 02/11/2026 | 04/11/2026 (QĐ-60) | 12/11/2026 |
| Nơi làm với AI | **Project trên claude.ai** (chat `[HR-xx]`) | Claude Code, 11 phiên, nhóm "CHUẨN HÓA BIỂU MẪU VẬN HÀNH VKG" | Claude Code, 4 phiên, chưa vào nhóm |
| Thư mục | `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\VKG_HR OFFICER` | Bản gốc `WEBSITE DN\03-THIET-KE\THUONG-HIEU\AN-PHAM`, phát hành `BIEU-MAU-VKG` | `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\ISO_9001` |
| Sổ quyết định | `VKG_HR_NhatKyQuyetDinh.xlsx` (theo quy tắc HR; chưa thấy file) | `WEBSITE DN\00-CHIEN-LUOC\NHAT-KY-QUYET-DINH.md`, QĐ-001 → QĐ-138, dùng chung với website | `ISO_9001\...\NHAT-KY-QUYET-DINH.md`, ISO-QĐ-01 → 05 |
| Mã tài liệu | `VKG/HR/<QĐ, QC, QT, CS, BM, TB, JD, KPI>-001/2026` | Mã theo bước việc: BG, DH, SX, GH, TT, NT, GT (QĐ-74, QĐ-122) | Đang chờ chọn phương án A/B/C ở ISO-02 |

Còn một tầng trên nữa đã có sẵn: **"Dự án Tái xây dựng Hệ thống Quản trị Doanh nghiệp VKG"** (thư mục gốc `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP`, có Quy tắc làm việc V1.0, Custom Instructions V2.0, Nhật ký quyết định `QD-001…` **còn trống**). Quy tắc HR cũng ghi: ISO và 5S là việc của cấp Hệ thống quản trị, HR chỉ hỗ trợ.

## 2. Các xung đột đã thấy (có bằng chứng)

| # | Xung đột | Bằng chứng | Hậu quả nếu để nguyên |
|---|---|---|---|
| X1 | **Trùng mã QT**: HR đặt `QT-001` (quy trình nhân sự), ISO sẽ đặt `QT-01` (quy trình ISO) | `04_QUY_TAC_VAN_HANH.md` mục 2 của HR; báo cáo ISO-02 | Hai quy trình khác nhau cùng số, đánh giá viên ISO bắt lỗi kiểm soát tài liệu (điều 7.5) |
| X2 | **Chữ "BM" và "QC" mang 2 nghĩa**: BM = biểu mẫu (HR) và = tên nhóm dự án; QC = quy chế (HR) và = kiểm tra chất lượng (xưởng) | Quy tắc HR; kế hoạch ISO v1 ghi `BM-xx` | Nhân sự hiểu sai mã |
| X3 | **Biểu mẫu có 3 nơi**: `BIEU-MAU-VKG`, `VKG_HR OFFICER\07_BIEU MAU`, `ISO_9001\03_HE_THONG_TAI_LIEU\C4_BIEU_MAU` | Cây thư mục | Một biểu mẫu có nhiều bản, không biết bản nào đúng |
| X4 | **3–4 sổ quyết định**, số không liên thông; quyết định ảnh hưởng nhiều nhóm không biết ghi ở đâu | Như bảng mục 1 | Hai nhóm chốt ngược nhau mà không ai thấy |
| X5 | **Cùng một việc, nhiều nhóm làm**: sơ đồ tổ chức (HR GĐ1 ↔ ISO ST-04); đào tạo, tay nghề (HR-04 ↔ ISO-07); KPI (HR-05 ↔ mục tiêu chất lượng ISO); lệnh sản xuất, giao nhận (BM6B ↔ ISO-03); đơn hàng, báo giá (BM ↔ ISO-04) | Kế hoạch 3 bên | Làm 2 lần, 2 bản khác nhau |
| X6 | **Số liệu doanh nghiệp lệch**: hồ sơ chung ghi 15 người, bảng HR A1 ghi 17 (CN1 14, CN2 3); CN2 "chưa xác nhận hình thức đăng ký" nhưng HR đã chọn "địa điểm kinh doanh" | Báo cáo ISO-01 mục 5 | Mỗi nhóm dùng một con số |
| X7 | **HR ở nền tảng khác**: chat HR trên claude.ai không đọc được file chung, không nhắn được cho phiên BM, ISO | Danh sách phiên Claude Code không có HR | Không trao đổi chéo được, phải chép tay |

## 3. Đề xuất tổ chức

### 3.1 Một chương trình, ba nhóm, ISO 9001 làm khung

```
              CHƯƠNG TRÌNH HỆ THỐNG QUẢN TRỊ VKG (HTQT)
     Đích cuối: Chứng nhận ISO 9001:2026 trước 30/11/2027
     ┌──────────────────────────────────────────────────┐
     │  HTQT-00  Điều tiết chương trình                 │
     │  Giữ: hồ sơ chung DN · quy tắc mã chung ·        │
     │  danh mục tài liệu chung · sổ QĐ liên nhóm ·     │
     │  lịch chung · MỘT danh sách việc chờ Giám đốc    │
     └───────┬───────────────┬───────────────┬──────────┘
             │               │               │
   ┌─────────▼────┐  ┌───────▼───────┐  ┌────▼──────────────┐
   │ NHÓM NS      │  │ NHÓM BM       │  │ NHÓM ISO          │
   │ Con người    │  │ Biểu mẫu,     │  │ Quy trình,        │
   │              │  │ chứng từ      │  │ chất lượng        │
   │ ISO 5.3,     │  │ ISO 7.5 (mẫu, │  │ ISO 4, 5, 6, 8.3, │
   │ 7.1.2, 7.1.4,│  │ hồ sơ), 8.2,  │  │ 8.4, 8.5–8.7,     │
   │ 7.2, 7.3     │  │ 8.5.2 (mã HS) │  │ 9, 10             │
   └──────────────┘  └───────────────┘  └───────────────────┘
```

**Vì sao ISO làm khung:** 10 điều của ISO 9001 phủ hết việc của cả 3 nhóm. Mỗi việc của HR, BM đều trả lời được "phục vụ điều nào của ISO". Chương trình chỉ cần **một đích cuối**, mỗi nhóm giữ mốc riêng của mình làm mốc trung gian (HR: văn bản nền 31/12/2026; BM: chuyển hẳn mẫu mới 23/11/2026, mã hồ sơ 01/12/2026).

**Không gộp 3 nhóm thành 1:** mỗi nhóm đã có lịch sử, người duyệt, mốc riêng. Gộp hết sẽ làm đoạn chat điều tiết quá dài. Chỉ **thêm một tầng điều tiết chương trình** và **4 sổ dùng chung**.

### 3.2 Nguyên tắc "mỗi việc một chủ"

| Việc | Chủ (viết, giữ bản gốc) | Góp yêu cầu | Dùng |
|---|---|---|---|
| Hồ sơ chung doanh nghiệp (số người, địa chỉ, máy) | **HTQT-00** | Cả 3 | Cả 3 |
| Quy tắc mã, kiểm soát tài liệu (QT kiểm soát tài liệu) | **HTQT-00** (ISO-02 soạn, duyệt ở cấp chương trình) | NS, BM | Cả 3 |
| Sơ đồ tổ chức, trách nhiệm, JD | **NS** | ISO (vai trò Đại diện ISO, QC kiêm nhiệm) | ISO dẫn chiếu, không viết lại |
| Đào tạo, ma trận tay nghề, nhận thức | **NS** (HR-04) | ISO (yêu cầu điều 7.2, 7.3) | ISO lấy làm bằng chứng |
| KPI | **NS** (HR-05) | ISO (mục tiêu chất lượng là nguồn KPI sản xuất) | Cả 3 |
| Nội quy, an toàn lao động | **NS** (HR-06) | ISO (7.1.4) | — |
| Mọi biểu mẫu trắng (chứng từ, QC, NCR, nhân sự…) – dựng mẫu, trình bày, phát hành | **BM** | NS, ISO viết "cần ghi gì" | Cả 3 |
| Mã hồ sơ xuyên suốt, sổ hồ sơ | **BM** (BM5) | ISO (truy xuất 8.5.2) | Cả 3 |
| Quy trình (QT) mọi lĩnh vực, kể cả quy trình nhân sự | Nhóm có chuyên môn viết nội dung; **mã và mẫu trình bày theo quy tắc chung** | — | — |
| Chính sách, mục tiêu chất lượng, rủi ro, bản đồ quá trình | **ISO** | NS, BM | Cả 3 |
| QC cuối, hàng lỗi, dụng cụ đo, đánh giá nội bộ, chứng nhận | **ISO** | BM (dựng mẫu) | — |

Hệ quả cho kế hoạch ISO: **ISO-04 (bán hàng)** không mở riêng – ISO viết 1 quy trình ngắn dựa trên chuỗi BG → DH → NT mà nhóm BM đã làm. **ISO-07 (nguồn lực)** thu hẹp còn máy móc, bảo trì; đào tạo chuyển NS. **ST-04 sơ đồ tổ chức** lấy từ NS.

### 3.3 Bốn sổ dùng chung (một nguồn sự thật)

Đặt tại `HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\00_DIEU_PHOI_CHUNG\`:

| Sổ | Thay cho | Ai ghi |
|---|---|---|
| `QUY-TAC-MA-CHUNG.md` + `DANH-MUC-TAI-LIEU-CHUNG.xlsx` (mọi tài liệu của 3 nhóm, một danh sách) | 3 cách đặt mã riêng | HTQT-00 cấp mã |
| `NHAT-KY-QD-LIEN-NHOM.md` (số `HT-001…`) cho quyết định ảnh hưởng ≥ 2 nhóm | Nhật ký `QD-001` của dự án Hệ thống quản trị (đang trống, không mất gì) | HTQT-00 |
| `TU-DIEN-THUAT-NGU.md` (QC, BM, R0, NCR, đã viết/đã kiểm/đã duyệt…) | — | HTQT-00 |
| `VIEC-CHO-GIAM-DOC.md` – **một danh sách duy nhất**, chia theo nhóm, mỗi câu kèm phương án, lịch sử, nguồn | 3 danh sách: BM `HO-SO-VIEC-CHO-GIAM-DOC`, HR `CauHoiCanXacNhan`, ISO bảng điều khiển mục 3 | Mỗi nhóm điều tiết ghi phần mình; HTQT-00 xếp thứ tự |

Sổ quyết định riêng của từng nhóm **giữ nguyên số đang chạy** (QĐ-nnn của BM/website, HR, ISO-QĐ-nn), không đánh lại 138 quyết định cũ. Quyết định của nhóm nào ảnh hưởng nhóm khác thì ghi thêm 1 dòng vào sổ liên nhóm.

### 3.4 Quy tắc mã chung (đề xuất – giải X1, X2)

Dựa trên phương án A của ISO-02, mở rộng cho HR:

| Loại | Mã | Ví dụ | Ghi chú |
|---|---|---|---|
| Văn bản hành chính nhân sự (quy chế, chính sách, nội quy, quyết định, thông báo) | Giữ số hiệu ban hành HR: `VKG/HR/<QC, CS, NQ, QĐ, TB>-001/2026` | `VKG/HR/QC-001/2026` Quy chế lương | Văn bản pháp lý, có số hiệu hành chính |
| Sổ tay, chính sách chất lượng | `ST-xx` | ST-02 Chính sách chất lượng | Một dãy chung |
| Quy trình – **mọi lĩnh vực, một dãy số chung** | `QT-xx` | QT-01 Kiểm soát tài liệu; QT-0x Tuyển dụng | HR bỏ dãy `QT-001` riêng |
| Hướng dẫn, tiêu chí kiểm | `HD-xx` | HD-0x Tiêu chí kiểm mép cắt laser | |
| Biểu mẫu | Mã theo bước việc của nhóm BM, thêm nhóm mới: `NS` nhân sự, `CL` chất lượng, `MH` mua hàng, `NL` máy móc – dụng cụ đo | SX-01, GH-02, CL-01 Phiếu QC cuối, NS-01 Phiếu đề nghị tuyển dụng | **Bỏ tiền tố `BM-`**; chữ "QC" chỉ còn nghĩa quy chế trong mã |
| JD, KPI | `JD-<vị trí>`, `KPI-<bộ phận>` | | Giữ theo HR |
| Phiên bản | `vX.Y` cho mọi tài liệu (v0.x nháp, v1.0 ban hành) | | Bỏ cách gọi R0, R1 trong kế hoạch ISO |

### 3.5 Đưa nhóm Nhân sự về cùng nơi làm việc (giải X7)

**Đề xuất:** mở các phiên HR trong Claude Code, thư mục làm việc `VKG_HR OFFICER`, cùng nhóm sidebar với BM và ISO. Lợi ích: đọc được sổ chung, nhắn trực tiếp cho phiên BM, ISO; dùng được các skill `vkg-hr-*` đã có. Project trên claude.ai giữ làm nơi xem lại lịch sử, không làm việc mới ở đó.
Lưu ý: quy tắc HR cấm đưa dữ liệu cá nhân thật vào AI – giữ nguyên quy tắc này ở Claude Code.

### 3.6 Biểu mẫu chỉ phát hành một nơi (giải X3)

- Nơi phát hành duy nhất: `OneDrive\VKG\BIEU-MAU-VKG` (đã có quy trình phát hành, danh mục, app tra cứu).
- `VKG_HR OFFICER\07_BIEU MAU` và `ISO_9001\03_HE_THONG_TAI_LIEU\C4_BIEU_MAU`: chỉ còn **phiếu yêu cầu biểu mẫu** (cần ghi gì, vì sao, điều ISO nào), không giữ mẫu.
- Biểu mẫu nhân sự có thông tin mật (lương, hợp đồng) vẫn phát hành bản **trắng** ở `BIEU-MAU-VKG`. Bản đã điền lưu ở thư mục HR có phân quyền.

### 3.7 Đặt tên đoạn chat để biết ngay thuộc nhóm nào

`[HTQT·<nhóm>] <mã> <việc>` – ví dụ `[HTQT·ISO] ISO-03 QC cuối thí điểm`, `[HTQT·BM] BM6B Lệnh SX, giao nhận`, `[HTQT·NS] HR-04 Đào tạo`. Đích cuối chung ghi trong `CLAUDE.md` chung, không cần nhắc trong tên.
Nhóm sidebar: một nhóm "HTQT · Hệ thống quản trị VKG" chứa cả 3 nhóm.

### 3.8 Cách trao đổi chéo

| Tình huống | Làm gì |
|---|---|
| Phiên nhóm A cần nhóm B làm/sửa gì | Nhắn thẳng phiên điều tiết nhóm B; ghi 1 dòng vào sổ liên nhóm nếu thành quyết định |
| Hai nhóm bất đồng | Không tự chọn. Đưa cả hai phương án, lịch sử, nguồn lên `VIEC-CHO-GIAM-DOC.md` |
| Đổi hồ sơ chung DN, quy tắc mã | Chỉ HTQT-00 sửa, rồi báo 3 nhóm |
| Mỗi tuần | HTQT-00 rà 3 bảng điều khiển, cập nhật lịch chung và danh sách việc chờ Giám đốc |

## 4. Lịch chung, các mốc gần

| Mốc | Nhóm | Phụ thuộc chéo |
|---|---|---|
| **Trước 20/11/2026:** chốt quy tắc mã chung, lập 4 sổ chung, sửa hồ sơ chung (X6) | HTQT-00 | Phải xong trước khi BM phát hành SX-01, GH-02 |
| 23/11/2026: chuyển hẳn mẫu báo giá mới | BM | — |
| Trước phát hành SX-01, GH-02: sửa 4 điểm mức Nặng theo ISO-03 | BM ← ISO | Chờ Giám đốc duyệt |
| 01/12/2026: bật mã hồ sơ | BM | ISO dùng cho truy xuất |
| 31/12/2026: văn bản nền HR, sơ đồ tổ chức, JD (có nhiệm vụ Đại diện ISO, QC kiêm nhiệm) | NS ← ISO | ISO GĐ1 cần sơ đồ tổ chức |
| 15/01/2027: QT kiểm soát tài liệu, bản đồ quá trình, chính sách chất lượng | ISO | Dùng quy tắc mã chung |
| Trước 04/2027: hợp đồng lao động, BHXH, huấn luyện an toàn đầy đủ | NS | Đánh giá viên ISO có thể hỏi (rủi ro pháp lý, ISO-01 nêu) |

## 5. Việc chuyển ngay khi được duyệt

1. Đổi tên nhóm sidebar, xếp các phiên vào một nhóm (đã làm phần gom nhóm – xem mục 6).
2. Tạo `00_DIEU_PHOI_CHUNG` với 4 sổ và `CLAUDE.md` chung; chuyển đề xuất này vào đó.
3. Sửa kế hoạch ISO v1, README thư mục ISO theo quy tắc mã chung (bỏ `BM-xx`, `R0/R1`, bỏ `C4_BIEU_MAU`).
4. Nhắn phiên điều tiết BM và ISO-02, ISO-03 về quy tắc mã chung, nguyên tắc "mỗi việc một chủ".
5. Soạn câu lệnh mở phiên HR trên Claude Code (đọc file 01–04 HR + sổ chung).
6. Gom 3 danh sách việc chờ Giám đốc thành một.

## 6. Câu hỏi chờ Giám đốc

1. Đồng ý mô hình **1 chương trình HTQT – 3 nhóm – 1 điều tiết chương trình**, ISO 9001 làm khung? Đề xuất: đồng ý; phiên ISO-00 hiện tại đổi thành **HTQT-00**, kiêm điều tiết nhóm ISO.
2. Đồng ý **quy tắc mã chung** ở mục 3.4 (thay cho việc chọn A/B/C riêng ở ISO-02)? Đề xuất: đồng ý.
3. Đồng ý **sổ quyết định liên nhóm `HT-nnn`**, thay vai trò Nhật ký `QD-001` đang trống; sổ riêng của 3 nhóm giữ nguyên? Đề xuất: đồng ý.
4. **Chuyển việc HR sang Claude Code** để trao đổi chéo được? Đề xuất: đồng ý, bắt đầu từ chat HR-00.
5. **Số nhân sự đúng hiện nay**: 15 (hồ sơ chung, 30/10) hay 17 (HR A1, 02/11)? Và CN2 là địa điểm kinh doanh?
