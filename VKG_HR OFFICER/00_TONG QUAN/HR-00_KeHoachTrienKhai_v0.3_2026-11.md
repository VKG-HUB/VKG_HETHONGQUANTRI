# [HTQT·NS] Kế hoạch triển khai nhóm Nhân sự và quy tắc tự vận hành

Phiên bản **v0.3 – 13/11/2026 (đêm)** · Lập lại theo **HT-005** (nộp toàn bộ tài liệu ngày 20/11/2026), HT-006, HT-007, HT-008 · Trạng thái: **đã viết, chưa kiểm, chưa duyệt** · Người viết: phiên HR-00 · Người duyệt: Giám đốc
Bảng điều phối trực quan: https://claude.ai/artifact/T9HQBQKNE1hS8bcM9RNZru
**Ký hiệu:** "HS-H…" là mục hồ sơ trong `VKG_HR_HoSoCanCungCap.md` (vd. HS-H3 cách trả lương). "Chung H…" là câu trong `00_DIEU_PHOI_CHUNG\VIEC-CHO-GIAM-DOC.md` (vd. Chung H3 cử Đại diện ISO).
Căn cứ: HT-001 → HT-004; file nền HR 01–04; bảng điều khiển ISO (lộ trình GĐ0–GĐ5); báo cáo tiếp quản `HR-00_BaoCaoTiepQuan_2026-11-12.md`.
**Giả định khi Giám đốc chưa trả lời Q1–Q5:** lấy theo đề xuất của HR-00 (Q2 A: HĐLĐ, BHXH, huấn luyện an toàn trước 31/12/2026; Q3 A; Q4 đồng ý). Trả lời khác thì sửa kế hoạch.

> **ĐÍCH CUỐI CHUNG:** chứng nhận ISO 9001:2026 trước 30/11/2027.
> **Mốc riêng nhóm NS (HT-005, thay MT1 31/12):** **20/11/2026 nộp Giám đốc toàn bộ tài liệu hệ thống quản trị nhân sự.** 20–30/11 Giám đốc kiểm tra, áp dụng thử từng phần, báo kết quả. Việc thực tế (ký HĐLĐ, BHXH, huấn luyện an toàn) theo lịch riêng, không gộp vào mốc 20/11.
> **Mức "nộp 20/11" nghĩa là:** bản nháp v0.x đã qua rà soát độc lập (chất lượng; thêm pháp lý khi cần), có ghi rõ chỗ [CẦN XÁC NHẬN]. Chưa phải v1.0 ban hành: ban hành sau khi Giám đốc thử và duyệt.

---

## 1. Ai làm gì

| Vai | Ai | Làm | Không làm |
|---|---|---|---|
| Duyệt, ký, quyết định | Giám đốc | Cung cấp thông tin thật; chọn phương án; duyệt v1.0; ký; nộp hồ sơ cho cơ quan nhà nước | — |
| Điều tiết nhóm NS | Phiên `[HTQT·NS] HR-00` (Claude Code) | Lập lịch; mở và giao việc phiên con; nhận báo cáo; gom câu hỏi Giám đốc; nhắn HTQT-00, BM; giữ sổ quyết định NS và bảng tiến độ | Không soạn văn bản nghiệp vụ (giao phiên con); không duyệt thay Giám đốc |
| Soạn | Phiên con `[HTQT·NS] HR-xx <việc>` | Soạn nháp v0.x một việc; tự kiểm; ghi báo cáo nhanh | Không làm việc phiên khác; không sửa file nền |
| Rà soát độc lập | Phiên riêng `[HTQT·NS] HR-xx Rà soát <tài liệu>` | Chạy skill `vkg-hr-ra-soat-chat-luong`, thêm `vkg-hr-ra-soat-phap-ly` khi cần. Chỉ báo cáo | Không sửa bản nháp |
| Dựng biểu mẫu | Nhóm BM | Dựng, phát hành `NS-xx` ở `BIEU-MAU-VKG` theo phiếu yêu cầu của NS | — |
| Dùng kết quả | Nhóm ISO | Dẫn chiếu sơ đồ tổ chức (ST-04), JD, hồ sơ đào tạo làm bằng chứng | Không viết lại |
| Góp ý | Phó Giám đốc, 2 đội trưởng tổ SX, kế toán | Góp ý JD, nội quy, an toàn, lương, BHXH | Không ký văn bản nhân sự |

**Về "Claude chat":** HR-00 **điều phối được các phiên trên Claude Code**: mở phiên con, giao việc, nhận báo cáo, nhắn nhóm BM và ISO. HR-00 **không đọc, không nhắn được** các chat trong Project trên claude.ai. Theo HT-004, việc mới làm ở Claude Code; Project claude.ai chỉ để xem lại lịch sử.

---

## 2. Danh sách công việc (gói việc)

Mỗi gói một phiên con. Cột **ISO** là điều khoản ISO 9001 mà gói việc phục vụ. Cột **Pháp luật** là nghĩa vụ chính; phiên con phải tra lại bản hiện hành khi soạn.

| Gói | Phiên | Đầu ra (mã theo HT-002) | ISO | Pháp luật | Cần trước | Mốc đề xuất |
|---|---|---|---|---|---|---|
| **G0** Danh mục MT1, sổ QĐ NS, sửa file nền | HR-00 | Danh mục văn bản nền tảng; `VKG_HR_NhatKyQuyetDinh.md`; bộ nền v2.0 | 7.5 | — | Q1, Q3, Q4 | 20/11 |
| **G1** Hợp thức hóa HĐLĐ, BHXH, sổ quản lý lao động | HR-02 | Báo cáo rủi ro + lộ trình theo tuần; nội dung mẫu HĐLĐ (xác định và không xác định thời hạn); danh mục hồ sơ mỗi người; phiếu yêu cầu BM cho mẫu HĐLĐ (`NS-xx`) | 7.1.2 | BLLĐ 2019 Đ.13–14, 20, 24–27; Luật BHXH 2024; Luật Việc làm hiện hành (BHTN); Luật BHYT; Luật Công đoàn 2024 (kinh phí công đoàn); NĐ 145/2020 Đ.3–4 (sổ quản lý lao động, báo cáo lao động); NĐ 283/2026 (xử phạt, thay NĐ 12/2022 từ 10/9/2026 – HR-02 tra, chờ rà soát) | T2, HS-H3, HS-H6 | Nháp 27/11 · ký xong theo Q2 |
| **G2** An toàn, vệ sinh lao động **và PCCC** (PCCC nhận 13/11) | HR-06a | Kế hoạch ATVSLĐ và PCCC 2026–2027; nội quy PCCC, quyết định lập lực lượng PCCC tại chỗ, phân công PCCC theo chức danh; danh sách nhóm huấn luyện (số lượng, không tên); quy định ATVSLĐ tại xưởng (`VKG/HR/QĐ-…`); danh mục hướng dẫn an toàn từng máy (`HD-xx`); phiếu yêu cầu BM (sổ huấn luyện, sổ cấp bảo hộ) | 7.1.4 | Luật ATVSLĐ 2015; NĐ 39/2016, NĐ 44/2016 (sửa bởi NĐ 140/2018) – huấn luyện 6 nhóm, an toàn vệ sinh viên, người làm công tác ATVSLĐ; TT 06/2020 (công việc nghiêm ngặt); TT 36/2019 (máy phải kiểm định); TT 11/2020 (nghề nặng nhọc, độc hại); TT 25/2022 (bảo hộ); khám sức khỏe ≥ 1 lần/năm; Luật PCCC và CNCH 2024, NĐ 67/2023 bảo hiểm cháy nổ (tra lại) | T4, HS-H7, hiện trạng PCCC 2 xưởng | Nháp 27/11 · huấn luyện theo Q2 |
| **G3** Sơ đồ tổ chức, chức danh, trách nhiệm | HR-00b | Sơ đồ hiện tại (17) và theo định biên (26); danh mục chức danh (gốc của JD); ma trận trách nhiệm có Đại diện ISO, QC kiêm nhiệm, người làm công tác ATVSLĐ; QĐ ban hành (`VKG/HR/QĐ-…`). ISO dẫn chiếu làm **ST-04** | 5.3, 7.1.2 | BLLĐ 2019 (thẩm quyền ký: Giám đốc) | **HS-H1, T1**, Chung H3 (cử Đại diện ISO) | Nháp 25/11 · duyệt 30/11 |
| **G4** Nội quy lao động, đăng ký | HR-06b | Nội quy `VKG/HR/NQ-001/2026`; hồ sơ đăng ký; phiếu yêu cầu BM (đơn xin nghỉ, biên bản vi phạm…) | 7.1.4, 7.3 | BLLĐ 2019 Đ.118 (nội dung bắt buộc, lấy ý kiến tổ chức đại diện NLĐ nếu có), Đ.119 (từ 10 NLĐ phải đăng ký; nộp trong 10 ngày kể từ ban hành) | HS-H2, HS-H4, T3; chương an toàn lấy từ G2 | Nháp 08/12 · duyệt 15/12 · nộp hồ sơ ≤ 10 ngày sau ký |
| **G5** Quy chế lương, thang bảng lương | HR-03 | Quy chế `VKG/HR/QC-001/2026`; khung thang bảng lương theo nhóm chức danh (không lương cá nhân) | 7.1.2 | BLLĐ 2019 Đ.90–104 (Đ.93 thang bảng lương: lấy ý kiến tổ chức đại diện NLĐ nếu có, công bố công khai); NĐ 293/2025 (lương tối thiểu vùng I); làm thêm giờ Đ.98, 107 | HS-H3, T5; danh mục chức danh từ G3 | Nháp 12/12 · duyệt 22/12 |
| **G6** JD mọi vị trí | HR-01 | `JD-<vị trí>` cho từng chức danh, mỗi lượt 2–3 JD; ưu tiên thợ hàn, thợ laser, đội trưởng; JD có nhiệm vụ Đại diện ISO, QC kiêm nhiệm (dạng kiêm nhiệm) | 5.3, 7.2 a | BLLĐ 2019 (mô tả công việc khớp HĐLĐ); điều kiện làm việc khớp G2 | G3 đã duyệt | Từ 01/12, xong 24/12 |
| **G7** Đào tạo, ma trận tay nghề, nhận thức | HR-04 | Tiêu chuẩn năng lực từng chức danh; ma trận tay nghề; kế hoạch đào tạo 2027; nội dung đào tạo nhận thức ISO (chính sách, mục tiêu chất lượng); phiếu yêu cầu BM (hồ sơ đào tạo, phiếu thi tay nghề hàn) | **7.2, 7.3**, 7.1.6 | Luật ATVSLĐ (huấn luyện an toàn là một phần đào tạo); BLLĐ Đ.59–62 (đào tạo, hợp đồng đào tạo) | G6; ST-02, ST-05 của ISO | 01–02/2027 · **dùng có hồ sơ từ 01/04/2027** |
| **G8** Quy trình tuyển dụng, hội nhập | HR-01b | `QT-xx` tuyển dụng (xin HTQT-00 cấp số); quy trình hội nhập; kế hoạch tuyển 18/26 | 7.1.2, 7.2 | BLLĐ Đ.11 (tuyển dụng), Đ.24–27 (thử việc); Luật Bảo vệ dữ liệu cá nhân 2025 (hồ sơ ứng viên) | G6, H8 | 01/2027 |
| **G9** Tiếp nhận, nghỉ việc, hồ sơ nhân sự | HR-02b | `QT-xx` tiếp nhận, nghỉ việc; cấu trúc hồ sơ nhân sự số hóa (MT5) | 7.1.2, 7.5 | BLLĐ Đ.34–48 (chấm dứt HĐLĐ, trách nhiệm khi chấm dứt); Luật Bảo vệ dữ liệu cá nhân 2025 | G1 | 02/2027 |
| **G10** KPI | HR-05 | Khung KPI; `KPI-<bộ phận>`; KPI sản xuất lấy từ **ST-05 mục tiêu chất lượng** (giao đúng hạn, tỷ lệ lỗi…) | 6.2, 9.1 | Nếu KPI gắn lương: thể hiện trong quy chế lương (G5) | ST-05 của ISO; G6 | 03/2027 · kỳ đánh giá đầu hết quý 2/2027 |
| **G11** Đối thoại, dân chủ ở cơ sở | HR-06c | Quy chế dân chủ ở cơ sở tại nơi làm việc; lịch đối thoại định kỳ | 7.4 | BLLĐ Đ.63; NĐ 145/2020 (đối thoại định kỳ ≥ 1 lần/năm; quy chế dân chủ) – tra lại khi soạn | G4 | 01/2027 |

**Theo dõi chung:** HR-00 giữ bảng tiến độ ở mục 7, cập nhật mỗi khi phiên con báo.

---

## 2a. Giám đốc trả lời ngày 14/11 (HT-018) – áp cho mọi gói

| Câu | Trả lời | Việc nhóm NS |
|---|---|---|
| T2 | Cả 15 người ĐÃ đóng BHXH | G1 bỏ lộ trình đóng bù; chuyển sang kiểm mức lương đóng BHXH khớp lương trong HĐLĐ mới |
| H1 | Hiện **15 người** (không phải 17) | Sửa mọi tài liệu ghi 17 (sơ đồ, đào tạo, nhóm huấn luyện…). Việc mới G8: đánh giá cơ cấu 15 → 26, thứ tự vị trí cần tuyển đến 31/12/2026, kế hoạch tuyển, hồ sơ tuyển, phiếu tiêu chí NS-10, NS-11, đánh giá ứng viên; mức lương đề xuất theo quy chế lương (G5) – Giám đốc chốt số sau. Phần kế hoạch vào bộ 20/11 |
| Q5 | Chưa có chức danh chính thức; chỉ Giám đốc và Phó Giám đốc (chưa chính thức); mọi người kiêm nhiệm tự phát | G3 làm lại: (1) QĐ bổ nhiệm Phó Giám đốc Vũ Văn Tích (phạm vi ủy quyền theo phiếu A2); (2) lộ trình bổ nhiệm đội trưởng SX CN1, CN2, trưởng kỹ thuật, kế toán, Đại diện ISO, QC kiêm nhiệm, kèm nội dung công việc; (3) sơ đồ tách "hiện trạng" và "đề xuất chính thức"; (4) ma trận ai quyết, ai làm, ai được hỏi; (5) phụ cấp chức vụ, kiêm nhiệm vào quy chế lương (G5). Quyết định bổ nhiệm số tạm `VKG/HR/QĐ-007/2026` trở đi; khung có số, không quốc hiệu |
| H2 | CN1 là chi nhánh 0311563372-**001**, CN2 là chi nhánh 0311563372-**002**. **THAY bởi HT-020 (14/11, theo giấy tờ nhà nước cấp): CN1 Đông Hòa = Chi nhánh mã số 0311563372-002** (địa chỉ đăng ký 144/46 Thống Nhất, giao dịch thực tế 42A); **CN2 Phước Tân = Địa điểm kinh doanh 001, mã 00001**, trực thuộc công ty, không phải chi nhánh. Không còn mã -001. Lao động Phước Tân ký HĐLĐ, đóng BHXH theo công ty. HT-019 (-001/-002) bỏ. Không mở thư mục `00_TONG QUAN\04_GIAY_TO_PHAP_LY` (bản scan có số định danh cá nhân) | HĐLĐ ghi nơi làm việc theo chi nhánh; PCCC, nội quy xét lập theo từng chi nhánh. File 01 đang ghi khác (CN1 -002, CN2 địa điểm kinh doanh) – sửa khi Giám đốc trả lời Q3 |
| H3 | Cử Đại diện ISO chính thức trước 30/11; người dự kiến đang kiêm kỹ thuật, xây công việc bằng AI | JD-KN soạn sẵn vai này, khoảng 20–30% thời gian |
| H4, H5 | Đồng ý | HR-00 cấp số `VKG/HR/…` theo thứ tự Giám đốc ký; sổ quyết định NS `HR-QĐ-nn` (`00_TONG QUAN\VKG_HR_NhatKyQuyetDinh.md`), ghi bù |
| Q2 | Giữ mốc HĐLĐ, BHXH, huấn luyện an toàn trước 31/12/2026 | Như kế hoạch |
| BC-LĐ | Để sau; HTQT-00 nhắc lại 28/11 | Hạn luật vẫn trước 04/12 |

## 3. Lịch nước rút đến 20/11/2026 (thay lịch theo đợt của v0.2)

Bỏ giới hạn "tối đa 3 phiên cùng lúc": Giám đốc duyệt gộp một lần từ 20/11, không duyệt từng bản trong tuần.

### 3.1 Phiên và việc

| Phiên | Gói | Việc đến 20/11 | Trạng thái 13/11 |
|---|---|---|---|
| HR-02 (đang có) | G1 + **G5** | Sửa G1 lên v0.2 theo rà soát; soạn quy chế lương và khung thang bảng lương (bậc, hệ số; không số tiền từng người) | G1 nháp xong |
| HR-06 (đang có) | G2 + **G4 + G11** | Sửa G2 lên v0.2 theo rà soát; soạn nội quy lao động, quy chế dân chủ ở cơ sở, 3 hướng dẫn an toàn ưu tiên (laser, hàn, chấn và mài) | G2 nháp xong |
| HR-00b (mới) | **G3 + G6** | Sơ đồ tổ chức, danh mục chức danh, ma trận trách nhiệm (ST-04); JD mọi chức danh. Nếu 17/11 chưa có danh sách chức danh (Q5) thì dựng theo file 01 mục 3, phiếu A1–A3, ghi [CẦN XÁC NHẬN] | Chờ mở |
| HR-04 (mới) | **G7 + G10** | Tiêu chuẩn năng lực, ma trận tay nghề, kế hoạch đào tạo 2027, bài nhận thức ISO (dùng ST-02 bản ngắn); khung KPI, KPI sản xuất lấy từ ST-05 nháp (ISO-02 nộp 18/11 theo HT-008) | Chờ mở |
| HR-01 (mới) | **G8 + G9** | Quy trình tuyển dụng, hội nhập, tiếp nhận, nghỉ việc (`QT-xx`, xin HTQT-00 cấp số; mẫu trình bày theo ISO-02); cấu trúc hồ sơ nhân sự | Chờ mở |
| Rà soát (mới, mỗi gói một phiên) | G1, G2 ngay; các gói còn lại 18–19/11 | Chất lượng + pháp lý | G1, G2 chờ mở |
| HR-00 | G0 | Danh mục bộ 20/11; đóng gói, mục lục, bảng tình trạng rà soát; kế hoạch thử 20–30/11; nhật ký ngày | Đang làm |

### 3.2 Lịch từng ngày

| Ngày | Việc | Ai |
|---|---|---|
| 14/11 | Mở 3 phiên soạn mới và 2 phiên rà soát G1, G2. Giao HR-02 thêm G5, HR-06 thêm G4, G11 | HR-00 (cần Giám đốc bấm thẻ hoặc nhắn "mở hết") |
| 14–17/11 | Soạn nháp v0.1 mọi gói còn lại; G1, G2 sửa theo rà soát lên v0.2 | Phiên soạn |
| 17/11 | Hạn chót danh sách chức danh; quá hạn thì G3 dựng theo dữ liệu có sẵn | Giám đốc / HR-00b |
| 18/11 | ISO-02 nộp ST-02, ST-05 nháp (HT-008); HR-04 lắp vào G7, G10. Mở rà soát các gói G3–G11 | ISO-02, HR-00 |
| 18–19/11 | Rà soát độc lập; phiên soạn sửa theo rà soát | Phiên rà soát, phiên soạn |
| 19/11 | HR-00 kiểm từng file, đóng gói bộ tài liệu, lập kế hoạch thử | HR-00 |
| **20/11** | **Nộp Giám đốc** | HR-00 |
| 20–30/11 | Giám đốc kiểm tra, áp dụng thử (mục 3.4); HR-00 ghi kết quả hằng ngày | Giám đốc, đội trưởng |

**Điều kiện để kịp 20/11:** 5 phiên mới (3 soạn, 2 rà soát) phải chạy từ ngày 14/11. Nếu đến tối 15/11 chưa mở được, HR-00 báo ngay HTQT-00 là mốc 20/11 không đạt.

### 3.3 Bộ tài liệu nộp 20/11

| # | Tài liệu | Mã dự kiến | Gói | Rà soát chất lượng | Rà soát pháp lý | Kịp 20/11? |
|---|---|---|---|---|---|---|
| 1 | Danh mục bộ tài liệu, bảng tình trạng | — | G0 | — | — | Kịp |
| 2 | Sơ đồ tổ chức, danh mục chức danh, ma trận trách nhiệm (ST-04) | `VKG/HR/QĐ-…` | G3 | Có | Không cần | Kịp, có [CẦN XÁC NHẬN] nếu thiếu danh sách chức danh |
| 3 | JD mọi chức danh | `JD-<vị trí>` | G6 | Có | Có (vị trí xưởng) | Kịp bản nháp; người cụ thể chờ Giám đốc cử |
| 4 | Báo cáo rủi ro, lộ trình HĐLĐ, BHXH; nội dung mẫu HĐLĐ, phụ lục | NS-01, NS-02, NS-03 (nháp Word) | G1 | Có | Có | Kịp |
| 5 | Kế hoạch an toàn lao động và PCCC; nghĩa vụ; nhóm huấn luyện; phân công PCCC | — | G2 | Có | Có | Kịp |
| 6 | Quy định an toàn lao động tại xưởng; nội quy PCCC; quyết định cử người làm công tác ATVSLĐ, phân công người phụ trách PCCC | `VKG/HR/QĐ-…`, `NQ-…` | G2 | Có | Có | Kịp nháp; tên người chờ Giám đốc cử |
| 7 | 3 hướng dẫn an toàn ưu tiên (laser, hàn, chấn và mài) | `HD-xx` | G2 | Có | Có | Kịp 3/12; 9 hướng dẫn còn lại sau 30/11 |
| 8 | Nội quy lao động | `VKG/HR/NQ-001/2026` | G4 | Có | Có | Kịp nháp; giờ làm việc ghi [CẦN XÁC NHẬN] nếu chưa có HS-H2 |
| 9 | Quy chế lương, khung thang bảng lương | `VKG/HR/QC-001/2026` | G5 | Có | Có | **Một phần:** quy chế và bậc, hệ số kịp; mức tiền từng bậc chờ Giám đốc (cần HS-H3) |
| 10 | Quy chế dân chủ ở cơ sở | `VKG/HR/QC-…` | G11 | Có | Có | Kịp nháp |
| 11 | Tiêu chuẩn năng lực, ma trận tay nghề, kế hoạch đào tạo 2027, bài nhận thức ISO | — | G7 | Có | Không cần | Kịp nếu ST-02 có trước 18/11 |
| 12 | Khung KPI, KPI sản xuất | `KPI-<bộ phận>` | G10 | Có | Không cần (trừ khi gắn lương) | **Một phần:** khung và chỉ số kịp; mức chỉ tiêu ghi "theo ST-05" (ISO đo mốc 01–03/2027, chốt cuối 03/2027). Đợt thử 20–30/11 chỉ thử cách ghi số liệu |

**ST-02, ST-05 đã có (HTQT-00 báo 13/11, chưa duyệt – câu I7):** `D:\VKG_TECHNICAL\VIỆT KHOA\_VKG_SANG_LOC_CLAUDE\11_ISO_9001\ISO-02_NEN_TAI_LIEU\ST-02_Chinh-sach-chat-luong_v0.1.md` (phần B: bản ngắn 5 dòng cho thợ, dùng cho bài nhận thức G7) và `ST-05_Muc-tieu-chat-luong-2027_v0.3.md` (bản hiện hành từ 14/11; v0.1 đã chuyển `_BAN_CU`, v0.3 chỉ đổi dòng M2) (5 mục tiêu M1–M5, đủ 6 trường; G10 lấy làm KPI sản xuất, nhóm NS quyết tỷ trọng, thang điểm, gắn lương). Khi dẫn chiếu ghi "ST-02 v0.1 nháp", "ST-05 v0.1 nháp". "Người đo" ở ST-05 gắn với Đại diện ISO và QC kiêm nhiệm: JD của hai vai này (G6) phải có nhiệm vụ đo tương ứng.
| 13 | Quy trình tuyển dụng, hội nhập, tiếp nhận, nghỉ việc; cấu trúc hồ sơ nhân sự | `QT-xx` | G8, G9 | Có | Có | Kịp nếu HTQT-00 cấp số, ISO-02 có mẫu trình bày trước 17/11; không có thì dùng mã tạm |
| 14 | Biểu mẫu nhân sự bản nháp Word để in thử: mẫu HĐLĐ, sổ huấn luyện, sổ cấp bảo hộ, sổ kiểm tra PCCC, đơn xin nghỉ phép, biên bản vi phạm, phiếu đánh giá tay nghề, phiếu đề nghị tuyển dụng | NS-01 → NS-06 (đã cấp) + NS-xx (xin cấp) | Các gói | Có | Theo nội dung | Kịp (HT-007: bản chính thức nhóm BM dựng 09–12/12 sau khi thử) |

**Mã đã cấp (HTQT-00, 13/11/2026) – mọi phiên dùng ngay, bỏ mã tạm:**

| Mã | Tài liệu | Gói |
|---|---|---|
| QT-02 | Tuyển dụng (thay mã tạm QT-NS-A) | G8 |
| QT-03 | Hội nhập người mới (thay QT-NS-B) | G8 |
| QT-04 | Tiếp nhận nhân sự: hồ sơ, giấy tờ, ký HĐLĐ, BHXH (thay QT-NS-C) | G9 |
| QT-05 | Nghỉ việc (thay QT-NS-D) | G9 |
| NS-01, NS-02, NS-03 | HĐLĐ xác định thời hạn; không xác định thời hạn; phụ lục HĐLĐ | G1 |
| NS-04, NS-05, NS-06 | Sổ huấn luyện an toàn; sổ cấp bảo hộ; sổ kiểm tra phương tiện PCCC | G2 |
| NS-07 | Đơn xin nghỉ phép | G4 |
| NS-08 | Biên bản vi phạm kỷ luật lao động | G4 |
| NS-09 | Phiếu đánh giá tay nghề | G7 |
| NS-10 | Phiếu đề nghị tuyển dụng | G8 |
| NS-11 | Phiếu đánh giá ứng viên | G8 |
| NS-12 | Phiếu kiểm tra cuối ca: chỉ máy, an toàn, vệ sinh khi hết ca. Không kiểm sản phẩm (phần đó là QC trong SX-01 của nhóm ISO) | G2 |

| NS-13 | Sổ quản lý lao động | G1, G9 |
| NS-14 | Phiếu KPI sản xuất theo tuần | G10 |
| NS-15 | Danh sách bàn giao khi nghỉ việc | G9 |
| NS-16 | Phiếu đồng ý xử lý dữ liệu cá nhân | G8, G9 |
| NS-17 | Danh sách ký tên dự đào tạo | G7 |
| NS-18 | Hồ sơ đào tạo cá nhân (dùng thật từ 01/04/2027) | G7 |
| `NV-nnnn` | Mã nhân sự: theo thứ tự vào làm, không dùng lại, không ghi kèm CCCD (từ điển chung) | Mọi gói |
| X-01 → X-07 | Mã chỉ số KPI xưởng (từ điển chung). NS-14 lấy ngày hẹn, ngày giao từ sổ hồ sơ HS-01, không gõ lại (HTQT-00 đề xuất, nhóm BM đang xem) | G10 |
| VKG/HR/QĐ-001/2026 (tạm) | Ban hành sơ đồ tổ chức, chức danh, ma trận trách nhiệm | G3 |
| VKG/HR/QĐ-002/2026 (tạm) | Cử người làm công tác ATVSLĐ, an toàn vệ sinh viên (thay VB-01) | G2 |
| VKG/HR/QĐ-003/2026 (tạm) | Phân công người phụ trách PCCC (thay VB-02) | G2 |
| VKG/HR/QĐ-004/2026 (tạm) | Quy định ATVSLĐ tại xưởng (thay VB-04; phụ lục VB-07, VB-08, VB-09 không có mã riêng) | G2 |
| VKG/HR/QĐ-005/2026 (tạm) | Kế hoạch ATVSLĐ 2027 (thay VB-05) | G2 |
| VKG/HR/QĐ-006/2026 (tạm) | Kế hoạch đào tạo 2027 | G7 |
| VKG/HR/NQ-001/2026 (tạm) | Nội quy lao động | G4 |
| VKG/HR/NQ-002/2026 (tạm) | Nội quy PCCC (thay VB-03) | G2 |
| VKG/HR/QC-001/2026 (tạm) | Quy chế lương | G5 |
| VKG/HR/QC-002/2026 (tạm) | Quy chế dân chủ ở cơ sở | G11 |
| HD-01 → HD-08 | An toàn máy, thay HD-A1 → A8 cùng thứ tự: laser 6 kW, laser 12 kW, laser ống, chấn, đột, hàn laser, hàn TIG/MIG/điểm, mài | G2 |
| HD-09 → HD-12 | An toàn thiết bị, thay HD-B1 → B4: máy nén khí; chai khí; cầu trục, palăng, xe nâng; bốc xếp | G2 |
| HD-13 | Tiêu chuẩn năng lực, ma trận tay nghề | G7 |
| — | VB-06 phương án chữa cháy: mẫu nhà nước PC06, không cấp mã | G2 |

Số `VKG/HR/…` là số tạm cho tới khi Giám đốc trả lời câu H4. **HT-011:** mỗi máy tách 2 hướng dẫn: an toàn (nhóm NS, HD-01 → HD-12) và vận hành, tiêu chí kiểm (nhóm ISO, từ HD-14); tại máy in chung một tờ A5 hai mặt. **HD trong bộ 20/11:** bắt buộc HD-01, HD-04, HD-07, HD-08; thêm HD-02, HD-06 nếu kịp. `JD-<vị trí>`, `KPI-<bộ phận>` nhóm NS tự đặt, báo HTQT-00 ghi danh mục. Đổi hết mã tạm trước 19/11.

**HT-017 (14/11) – một lúc chỉ một phiên chạy Word, Excel tự động (gồm `ap-chuan-macro.ps1`, `dung-docx-iso.ps1`):** trước khi chạy ghi giữ khóa ở `C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md`, xong xóa khóa và ghi lịch sử; phiên khác đang giữ thì chờ, làm phần nội dung trước. Script phải đóng Office sạch; không tắt tiến trình của người khác. Không mở, không đọc file Giám đốc đang mở trên màn hình.

**Phong cách nhóm BM cho mọi tài liệu NS (HT-012 Giám đốc chỉ đạo 14/11; HT-013) – thay HT-007 phần "bản Word rời" và thay chân trang HT-009:**
- Phiếu, sổ thử (NS-04 → NS-15): Excel theo skill `vkg-bm-lap-bieu-mau` (`C:\Users\VINH\OneDrive\VKG\KHO-TRI-THUC-VKG\01-CLAUDE-SKILLS\vkg-bm-lap-bieu-mau\SKILL.md`): Arial 12, chữ và đường kẻ `#0A2E5C`, ô điền gạch chấm, logo bộ bàn giao đầu trang 1, header QĐ-120, footer QĐ-121/122.
- HĐLĐ NS-01 → NS-03, quy chế, nội quy: Word, cùng header, footer, màu, chữ.
- QT, HD: header QĐ-120; chân trang kiểu BM (trái: mã kèm ngày mã hóa; giữa: phiên bản; phải: số trang); ngày hiệu lực ghi ở khung đầu.
- Văn bản hành chính: giữ thể thức hành chính, thêm header và logo.
- Nháp lưu ở thư mục NS, không ghi vào thư mục BM. Làm giống mẫu thật trong `C:\Users\VINH\OneDrive\VKG\BIEU-MAU-VKG\01-DANG-DUNG` (SX-01, DH-01, NT…). **Nền chung (HT-014, 14/11):** Excel dùng bản trong skill: macro gốc `...\vkg-bm-lap-bieu-mau\scripts\mau-macro\VKG_goc-macro.xlsm`, gắn macro bằng `ap-chuan-macro.ps1` (kèm `ThisWorkbook.txt`, `header-vkg.png`), BẮT BUỘC truyền `-Nguon`, `-OutDir` là thư mục nháp NS, `-Ngay`; không ghi vào `BIEU-MAU-VKG`. Đọc mục "Chuẩn header khi tràn trang", "Lỗi đã gặp" của skill. Mã ngày = ngày công bố áp dụng, YY + chữ tháng (A=1 … H=8, J=9, K=10, L=11, M=12, bỏ I) + DD; bản nháp ghi `<mã>.NHAP`. Chân trang giữa: biểu mẫu là số chứng từ (QĐ-122); QT, HD, quy chế là phiên bản. Word (HĐLĐ NS-01 → 03, quy chế, nội quy, QT-02 → QT-05, sơ đồ, JD, quyết định): **khung chung đã có 14/11** – `D:\VKG_TECHNICAL\VIỆT KHOA\_VKG_SANG_LOC_CLAUDE\11_ISO_9001\ISO-02_NEN_TAI_LIEU\KHUNG-TAI-LIEU-VKG_v0.2.dotx` (kèm PDF trắng); dựng từ .md bằng `dung-docx-iso.ps1` cùng thư mục (chỉ đọc, không sửa). Header lặp mọi trang; chân trang `<mã>.NHAP · v<X.Y> · Trang x/y`; Arial, `#0A2E5C`. Dàn trang ngay, không chờ BM xem (BM trả lời 16/11; có điểm lệch thì sửa một lần). Lưu file ra thư mục NS. Sau khi dựng phải kiểm không còn tiến trình Word chạy ngầm. **HT-015 (14/11):** QT, HD, quy chế, nội quy dùng khung v0.2 ngay; **HĐLĐ NS-01 → 03 chờ khung v0.3** (chứng từ: chân trang theo QĐ-122, giữa là ô số hợp đồng), trong lúc chờ HR-02 hoàn thiện nội dung. **Chữ:** tên tài liệu, tiêu đề mục, dòng đầu bảng dùng **Saira**; thân, bảng, chân trang dùng Arial (thay phần chữ của HT-009). Máy dựng file phải có font Saira (máy chính đã cài, kiểm 14/11). **HT-016 (Giám đốc góp ý 14/11) – quốc hiệu:** CÓ ở NS-01, NS-02, NS-03 và mẫu nhà nước nộp cơ quan (PC02, PC04, PC06, báo cáo lao động – giữ nguyên mẫu). KHÔNG ở quy chế, nội quy, quyết định `VKG/HR/QĐ-…`, QT, HD, JD, KPI, mọi phiếu, sổ NS-04 → NS-15. Nếu cơ quan đăng ký yêu cầu quốc hiệu trên hồ sơ đăng ký nội quy thì thêm khi nộp. **Khung "văn bản có số" v0.4 (ISO-02 đang sửa):** quốc hiệu thành tùy chọn, mặc định KHÔNG. Dùng khung này, không quốc hiệu, cho QĐ-001 → QĐ-006, quy chế, nội quy; chỉ NS-01 → NS-03 bật quốc hiệu. Dựng lại khi khung v0.4 xong, Giám đốc đã tắt Word sót, có giữ khóa HT-017. **Script chung `dung-docx-iso.ps1` (ISO-02 sửa 14/11):** `-Loai VanBanCoSo` cho quyết định, quy chế, nội quy (không quốc hiệu, chân trang có số, khối ký 1 người); `-Loai HopDong` chỉ cho NS-01 → NS-03; tự báo "TIEN-TRINH-SOT" nếu Word chưa thoát. Thứ tự: (1) Giám đốc tắt Word sót; (2) ISO-02 chạy thử, HTQT-00 báo đạt; (3) HR-00b, HR-04, HR-01 dùng script chung, chuyển bản sao riêng `dung-docx-hr00b.ps1`, `dung-docx-hr04.ps1` vào `99_LUU TRU`; (4) script Excel của HR-04 giữ lại, vẫn giữ khóa khi chạy. HR-00 báo các phiên khi bước (2) đạt. Điều này thay quy định "quốc hiệu, tiêu ngữ" trong skill `vkg-hr-soan-van-ban`; skill sửa theo khi Giám đốc trả lời Q3. Rà soát pháp lý thấy văn bản nào luật bắt buộc quốc hiệu thì báo HR-00 kèm căn cứ. Gửi nhóm BM xem phong cách thì kèm PDF xuất qua macro. **Cập nhật 14/11 – script đã gắn được cho NS-xx:** `.\ap-chuan-macro.ps1 -Mau '<thư mục nháp>\NS-05_So-cap-phat.xlsx' -Ma NS-05 -OutDir '<thư mục nháp>\macro' -Chu 'Sổ số ' -So "'Sổ'!$B$3" -Bang '$A$6:$A$300'`. Bắt buộc `-Mau`, `-Ma`, `-OutDir`; bỏ trống `-Ngay` thì chân trang ghi NHAP (đúng cho bản nháp); `-Chu`, `-So` là chữ và ô số chứng từ giữa chân trang; `-Sheet` chọn sheet; `-Bang` cột STT của bảng dài để ngắt trang đúng; `-KhongHeader` khi mẫu đã tự có header. **KHÔNG đặt logo, địa chỉ vào ô** (script tự đặt ảnh header lên đầu trang in); đặt PrintTitleRows cho dòng tiêu đề bảng. Script từ chối ghi vào `BIEU-MAU-VKG`, `01-DANG-DUNG`. KHÔNG sửa script. Phiếu NS đầu tiên dựng xong: báo HR-00 để báo HTQT-00 và nhóm BM.

**Trình bày QT, HD (HT-009; phần chân trang đã thay bằng HT-013 ở trên):** chân trang `<mã> · v<X.Y> | Hiệu lực dd/mm/yyyy | Trang x/y`; khung đầu ghi chức danh; chữ Arial; logo nhỏ trang 1; bước đánh B1, B2…, rẽ nhánh B4a, B4b; quy trình tối đa 2 trang A4 với các mục: để làm gì, các bước, khi có sự cố, hồ sơ của quy trình, lịch sử. Văn bản hành chính nhân sự giữ thể thức hành chính của nhóm NS.

**Không kịp 20/11 và vì sao:**
- Mức tiền trong thang bảng lương: thuộc quyền Giám đốc, cần cách trả lương hiện tại (HS-H3).
- Chỉ tiêu số của KPI: cần số liệu thật; lấy từ đợt thử 20–30/11.
- 9 hướng dẫn an toàn máy còn lại: làm sau, theo thứ tự rủi ro.
- Tên người trong sơ đồ, JD, quyết định cử: Giám đốc cử (Q5, Chung H3, G2-Q2).
- Hồ sơ đăng ký nội quy: nộp sau khi Giám đốc ký bản chính thức (sau thử).
- Rà soát pháp lý chỉ là rà soát hỗ trợ, chưa thay ý kiến luật sư (G1-1).

### 3.4 Thử 20–30/11 và cách đo

| Phần thử | Ai thử, ở đâu | Cách đo | Đạt khi |
|---|---|---|---|
| Sơ đồ tổ chức, ma trận trách nhiệm | Giám đốc đọc cùng Phó Giám đốc, 2 đội trưởng | Số chỗ sai so với thực tế | ≤ 3 chỗ sai, sửa được ngay |
| JD 3 vị trí (thợ hàn, thợ laser, đội trưởng) | Đội trưởng đọc cùng người đang làm | % nhiệm vụ trong JD đúng với việc thật; số việc thật bị thiếu | ≥ 80% đúng |
| Nội quy lao động | Đọc phổ biến thử ở CN1 (1 buổi 30 phút) | Số câu hỏi, số điểm người lao động thấy không làm được | Mọi điểm "không làm được" có cách xử lý |
| Kiểm tra cuối ca PCCC, an toàn (phiếu in) | 2 đội trưởng, mỗi ca | Số ca có phiếu điền / số ca làm việc | ≥ 80% số ca |
| Sổ cấp bảo hộ (bản in) | Đội trưởng CN1 | Số lần cấp có ghi sổ | 100% lần cấp có ghi |
| Ma trận tay nghề | Đội trưởng chấm 10 thợ sản xuất | Thời gian chấm; số thợ 2 người chấm lệch nhau quá 1 bậc | ≤ 2 giờ; ≤ 2 thợ lệch |
| KPI sản xuất (giao đúng hạn, tỷ lệ làm lại) | Đội trưởng ghi 1 tuần ở CN1 | Số ngày có số liệu / số ngày làm việc | ≥ 5/6 ngày; có số để đặt chỉ tiêu |
| Quy trình tuyển dụng | Chạy cho 1 vị trí đang tuyển (thợ hàn) | Số bước làm được theo quy trình / tổng bước | Mọi bước có người làm |
| Đơn xin nghỉ phép, biên bản (bản in) | Văn phòng | Số đơn dùng mẫu / số lần nghỉ | 100% |
| Mẫu HĐLĐ | **Không ký thử.** Giám đốc và kế toán đọc đối chiếu; luật sư xem nếu thuê (G1-1) | Số điều khoản phải sửa | Ghi lại để gửi BM trước 05/12 |

Kết quả thử ghi vào nhật ký ngày trên bảng điều phối; HR-00 tổng hợp gửi HTQT-00 ngày 01/12.

### 3.5 Sau 30/11 (giữ lịch riêng)

| Việc | Mốc |
|---|---|
| Phiếu yêu cầu NS-01 → NS-06 gửi BM (đã sửa theo thử, nội dung HĐLĐ đã duyệt) | Trước 05/12 |
| Báo cáo tình hình sử dụng lao động gửi Sở Nội vụ (NĐ 145/2020 Đ.4 k.2; rà soát G2 xác nhận 14/11). 05/12/2026 là thứ Bảy → **nộp trước thứ Sáu 04/12**. Phạt ở NĐ 283/2026 Đ.11 là mức cá nhân; công ty gấp đôi (Đ.7 k.1) | Trước 04/12 |
| Kê khai diện tích, hạng xưởng (để biết có phải gửi báo cáo PCCC PC04) | 27/11 |
| Báo cáo tai nạn lao động năm 2026 (nơi nhận cần hỏi lại) | Trước 05/01/2027 |
| Báo cáo công tác ATVSLĐ năm 2026 (TT 07/2016 Đ.10 – rà soát G2 nêu) | Trước 10/01/2027 |
| BM dựng mẫu chính thức; Giám đốc duyệt nháp mẫu | 09–12/12 (duyệt 11/12) |
| Báo cáo PCCC (nếu thuộc diện) | Trước 15/12 |
| Ký HĐLĐ, đăng ký BHXH; huấn luyện an toàn | Theo Q2 (đề xuất trước 31/12) |
| Ban hành v1.0 các văn bản, nộp đăng ký nội quy | Sau khi Giám đốc duyệt kết quả thử |
| G7 hồ sơ đào tạo dùng thật | 01/04/2027 (GĐ3 ISO) |
| Kỳ KPI đầu tiên | Hết quý 2/2027 |

---

## 4. Quy tắc tự vận hành (áp cho mọi phiên nhóm NS)

### 4.0 Thẩm quyền của HR-00 (Giám đốc giao 13/11/2026: "tự điều phối và xác nhận các nội dung trong khả năng")

| Mức | Ai quyết | Gồm | Ghi lại |
|---|---|---|---|
| **A** | HR-00 tự quyết, làm luôn | Thứ tự công việc; mở, dừng phiên soạn; yêu cầu "cần ghi gì" gửi nhóm ISO, BM; áp quyết định đã có (HT-001 → HT-004); đổi đề xuất của chính HR-00; cách ghi, đặt tên trong tài liệu nhóm NS | Bảng điều phối, mục "Quyết định HR-00" |
| **B** | HR-00 quyết tạm, báo Giám đốc; Giám đốc đổi được bất cứ lúc nào | Nhận việc liên nhóm khi HTQT-00 đã đồng ý; phân công theo chức danh trong bản nháp; dời mốc nội bộ không vượt mốc Giám đốc đã chốt | Như trên |
| **C** | Chỉ Giám đốc | Lương, phụ cấp, giờ làm, kỷ luật, thời hạn hợp đồng; chi tiền; ký; nộp hồ sơ cơ quan nhà nước; cử người cụ thể; thông tin thật; đổi mục tiêu, mốc đã chốt; bất đồng giữa các nhóm | Việc chờ Giám đốc |

### 4.1 Phiên được tự làm, không cần hỏi
1. Đọc mọi file HR, sổ chung, báo cáo nhánh ISO, danh mục biểu mẫu BM.
2. Soạn nháp v0.x; tự kiểm theo phiếu C1–C7 (file 03) và cổng ở 4.3.
3. Tra cứu luật trên nguồn chính thống; ghi số hiệu, điều, ngày hiệu lực, ngày tra cứu.
4. Mở phiên rà soát độc lập khi bản nháp qua tự kiểm (HR-00 mở).
5. Nhắn điều tiết nhóm BM, ISO một yêu cầu cụ thể: cần gì, vì sao, điều ISO nào.
6. Ghi báo cáo nhanh `00_TONG QUAN\BAO_CAO_NHANH\HR-xx.md` cuối mỗi lượt.

### 4.2 Phải dừng lại hỏi Giám đốc (qua HR-00, gom vào đợt câu hỏi)
1. Nội dung chính sách: mức lương, phụ cấp, giờ làm, ca, hình thức kỷ luật, mức bồi thường, thời hạn hợp đồng.
2. Chọn giữa hai phương án có hệ quả tiền, pháp lý hoặc con người.
3. Thông tin thật chưa có trên file (T, H).
4. Chi tiền: đơn vị huấn luyện, khám sức khỏe, luật sư.
5. Duyệt v1.0, ký ban hành, nộp hồ sơ cơ quan nhà nước.
6. Bất đồng với nhóm BM, ISO: không tự chọn, đưa cả hai phương án lên HTQT-00.

**Cách hỏi:** mỗi đợt tối đa 3 câu (hoặc 5 nếu Giám đốc chọn ở Q3). Mỗi câu hỏi bằng việc thật, có phương án, đề xuất, căn cứ. HR-00 gom câu của các phiên con, không để phiên con hỏi Giám đốc riêng lẻ.

### 4.3 Bảy cổng của mỗi tài liệu

| Cổng | Đạt khi | Ai |
|---|---|---|
| C0 Đầu vào | Có đủ mục T, H cần thiết; thiếu thì ghi [CẦN XÁC NHẬN] và vẫn soạn | Phiên con |
| C1 Nháp v0.1 | Đủ cấu trúc theo file 03; đầu tài liệu có 3 dòng: **Phục vụ ISO điều …**, **Căn cứ pháp luật (tra ngày …)**, **Trạng thái đã viết/kiểm/duyệt**; cuối tài liệu có "Việc cần xác nhận" | Phiên con |
| C2 Rà soát chất lượng | Skill `vkg-hr-ra-soat-chat-luong` kết luận "Trình duyệt được", chạy ở phiên riêng | Phiên rà soát |
| C3 Rà soát pháp lý | Bắt buộc với HĐLĐ, lương, BHXH, kỷ luật, chấm dứt HĐLĐ, nội quy, ATVSLĐ, dữ liệu cá nhân. Kết luận "Đạt" hoặc "Đạt có điều kiện" | Phiên rà soát |
| C4 Góp ý | Đội trưởng, kế toán, Phó Giám đốc góp ý (Giám đốc chuyển, ghi lại ý kiến) | Giám đốc |
| C5 Duyệt v1.0 | Giám đốc duyệt, ghi sổ `HR-QĐ-nn` | Giám đốc, HR-00 |
| C6 Ban hành | Có số hiệu; ký; lưu đúng thư mục phân hệ; báo HTQT-00 ghi `DANH-MUC-TAI-LIEU-CHUNG`; biểu mẫu đi kèm đã gửi phiếu yêu cầu BM | Giám đốc, HR-00 |
| C7 Thực hiện | **Pháp luật:** đã nộp, đăng ký, báo cáo cơ quan (nếu có). **ISO:** có hồ sơ chứng minh đang làm (ký nhận, sổ, phiếu) | Giám đốc, đội trưởng |

"Hoàn thành" một hạng mục = qua C6 (văn bản) hoặc C7 (việc phải thực hiện như HĐLĐ, BHXH, huấn luyện, đăng ký nội quy).

### 4.4 Nhịp điều tiết
- **Cuối mỗi lượt phiên con:** báo cáo nhanh gồm đã làm gì, file nào, đã qua cổng nào, câu hỏi chờ, việc cho nhóm khác.
- **Khi phiên con dừng:** HR-00 đọc báo cáo, kiểm file (không tin báo cáo suông), cập nhật bảng tiến độ, chuyển yêu cầu chéo, mở phiên kế tiếp nếu đầu vào đủ.
- **Thứ Hai hằng tuần:** HR-00 gửi Giám đốc một bản tình hình (đã xong, trễ, chặn, ≤ 3 câu hỏi) và báo HTQT-00.
- **Cảnh báo:** gói việc trễ hơn 3 ngày so với mốc thì HR-00 đề xuất thu gọn hoặc đổi thứ tự. Gặp rủi ro pháp lý mức Cao thì đề xuất thuê luật sư theo vụ việc, kèm phạm vi công việc.

### 4.5 Không bao giờ
- Đưa dữ liệu cá nhân thật vào AI (CCCD, lương từng người, tài khoản, sức khỏe, đánh giá có tên).
- Ký thay, nộp hồ sơ thay, khẳng định thay luật sư hay cơ quan nhà nước.
- Sửa hồ sơ chung, 6 sổ chung, file nền của nhóm khác; tự đặt mã.
- Dựng file biểu mẫu phát hành (chỉ viết phiếu yêu cầu cho BM).
- Viết quy trình ISO thuộc nhóm ISO.

### 4.6 Khi nào "tự vận hành" dừng
Các phiên chỉ chạy khi có lượt: khi Giám đốc nhắn, khi phiên khác báo về, hoặc theo lịch nếu Giám đốc cho đặt lịch kiểm tra hằng tuần. Nhóm sẽ dừng chờ khi:
(a) cần thông tin thật hoặc quyết định của Giám đốc;
(b) cần ký, nộp, chi tiền;
(c) nhóm khác chưa giao đầu vào (ST-05 của ISO, biểu mẫu `NS-xx` của BM).

---

## 5. Ý kiến theo góc nhìn pháp luật (để Giám đốc cân nhắc thứ tự)

> Đây là ý kiến hỗ trợ, không thay luật sư. Số hiệu văn bản viết theo hiểu biết đến 13/11/2026; phiên con **phải tra lại bản hiện hành** khi soạn. Tháng 3/2025 Bộ LĐ-TB&XH đã hợp nhất vào Bộ Nội vụ, nên hồ sơ lao động nộp tại **Sở Nội vụ** – tra lại khi nộp.

| # | Nghĩa vụ | Hiện trạng VKG | Rủi ro | Ý kiến |
|---|---|---|---|---|
| L1 | HĐLĐ bằng văn bản với hợp đồng từ 1 tháng (BLLĐ Đ.14) | Chưa đủ | **Cao.** Bị phạt theo số người (NĐ 283/2026); không có căn cứ khi tranh chấp, kỷ luật, chấm dứt | Ký trước 31/12/2026. Mẫu HĐLĐ là việc đầu tiên của G1 |
| L2 | Đóng BHXH, BHYT, BHTN bắt buộc (Luật BHXH 2024 từ 01/07/2025) | Chưa đủ | **Cao.** Truy đóng kèm tiền lãi; trốn đóng có thể bị xử lý hình sự (BLHS Đ.216) | Đăng ký tham gia trong thời hạn luật định sau khi HĐLĐ có hiệu lực (tra lại). **Cách xử lý giai đoạn đã làm trước đây nên hỏi luật sư theo vụ việc** |
| L3 | Huấn luyện ATVSLĐ, an toàn vệ sinh viên, người làm công tác ATVSLĐ, khám sức khỏe (Luật ATVSLĐ 2015) | Chưa có | **Cao.** Nếu xảy ra tai nạn, doanh nghiệp chịu trách nhiệm nặng; xưởng có laser công suất lớn, hàn, chấn | Huấn luyện nhóm vận hành máy và hàn trước. Kiểm tra máy nén khí, bình khí, cầu trục, palăng có thuộc diện phải kiểm định (TT 36/2019) |
| L4 | Nội quy bằng văn bản và đăng ký (BLLĐ Đ.118–119) | Chưa có | **TB–Cao.** Chưa đăng ký thì **không được xử lý kỷ luật** theo nội quy | Ban hành trước 31/12, nộp đăng ký trong 10 ngày. CN2 ở Đồng Nai: gửi thêm bản đã đăng ký cho cơ quan nơi đặt CN2 (tra lại) |
| L5 | Thang bảng lương, quy chế lương (BLLĐ Đ.93); lương không thấp hơn tối thiểu vùng I (NĐ 293/2025) | Chưa có | TB. Là căn cứ mức đóng BHXH và ghi lương trong HĐLĐ | Làm song song G1: HĐLĐ dẫn chiếu quy chế lương |
| L6 | Sổ quản lý lao động, báo cáo tình hình thay đổi lao động (NĐ 145/2020 Đ.3–4) | Chưa thấy | **Cao (tới hạn)** | **Báo cáo năm 2026 gửi Sở Nội vụ trước 05/12/2026**; quá hạn không nhận (Sở Nội vụ TP.HCM nhắc bằng công văn 10/11/2026 – HR-02 tra 13/11, chờ rà soát). Giám đốc giao kế toán làm tuần 16–20/11 |
| L7 | Đối thoại tại nơi làm việc, quy chế dân chủ (BLLĐ Đ.63; NĐ 145/2020) | Chưa có | Thấp–TB | G11, GĐ2 |
| L8 | Kinh phí công đoàn (Luật Công đoàn 2024) | [CẦN XÁC NHẬN] | TB | Kế toán kiểm cùng BHXH (G1) |
| L9 | Bảo vệ dữ liệu cá nhân người lao động (Luật Bảo vệ dữ liệu cá nhân 2025, hiệu lực 01/01/2026 – tra lại) | Chưa có quy định | TB | Hồ sơ nhân sự thật chỉ để ở thư mục 02, 03 có phân quyền; G9 có điều khoản đồng ý xử lý dữ liệu |
| L10 | Phòng cháy chữa cháy tại xưởng (Luật PCCC và CNCH 2024: người đứng đầu cơ sở chịu trách nhiệm; lực lượng PCCC tại chỗ; nội quy, phương án, huấn luyện; bảo hiểm cháy nổ bắt buộc nếu thuộc diện – tra lại) | [CẦN XÁC NHẬN] hiện trạng 2 xưởng | TB–Cao (laser công suất lớn, khí, vụn kim loại) | **Nhóm NS nhận 13/11** (Giám đốc giao HR-00 phân bổ), gộp G2. Phân công theo chức danh ở bảng điều phối |

**Thứ tự theo pháp luật:** L1 + L2 (cùng lúc, cùng hồ sơ) → L3 → L4 → L5 → L6 → L7–L9.
**Đối chiếu ISO:** đánh giá viên ISO 9001 không chấm luật lao động. Tuy vậy, điều 4.2 (yêu cầu của các bên liên quan) và 7.1.4 (môi trường làm việc) cho phép họ hỏi. Thiếu HĐLĐ và an toàn lao động cũng làm hồ sơ năng lực (7.2) thiếu tin cậy.

---

## 6. Danh mục văn bản nền tảng MT1 – bản đề xuất (dùng nếu Q1 trả lời "chưa chốt")

> **Từ v0.3:** danh mục nộp 20/11 ở mục 3.3 thay cho bảng dưới. Bảng dưới giữ để thấy phần "bắt buộc pháp lý" trong bộ 20/11.

Chỉ gồm việc bắt buộc pháp lý và nền cho ISO, để kịp 31/12/2026.

| # | Văn bản | Mã | Gói |
|---|---|---|---|
| 1 | Quyết định ban hành sơ đồ tổ chức, chức danh, trách nhiệm (ST-04 dẫn chiếu) | `VKG/HR/QĐ-001/2026` | G3 |
| 2 | Mẫu HĐLĐ (2 loại) – nội dung do NS viết, bản trắng do BM phát hành | `NS-xx` | G1 |
| 3 | Nội quy lao động | `VKG/HR/NQ-001/2026` | G4 |
| 4 | Quy chế lương kèm thang bảng lương | `VKG/HR/QC-001/2026` | G5 |
| 5 | Quy định ATVSLĐ tại xưởng; kế hoạch ATVSLĐ | `VKG/HR/QĐ-…` | G2 |
| 6 | Quyết định cử người làm công tác ATVSLĐ, an toàn vệ sinh viên | `VKG/HR/QĐ-…` | G2 |
| 7 | JD mọi vị trí | `JD-<vị trí>` | G6 |

Số hiệu `VKG/HR/…` ở trên là dự kiến. Chưa cấp số cho tới khi Giám đốc trả lời H4 (ai cấp số).
**Chuyển sang 2027:** quy chế thưởng, quy trình tuyển dụng, đào tạo, KPI, quy chế dân chủ.

---

## 7. Bảng tiến độ (HR-00 cập nhật)

| Gói | Phiên | Cổng hiện tại | Phiên bản | Bị chặn bởi | Cập nhật |
|---|---|---|---|---|---|
| G0 | HR-00 | Đề xuất xong | — | Q1, Q3, Q4 | 13/11 |
| G1 | chưa mở | C0 | — | T2, H3, H6 (soạn được với [CẦN XÁC NHẬN]) | 13/11 |
| G2 | chưa mở | C0 | — | T4, H7 (soạn được với [CẦN XÁC NHẬN]) | 13/11 |
| G3 | chưa mở | C0 | — | **H1, T1** (không soạn được nếu thiếu) | 13/11 |
| G4–G11 | chưa mở | — | — | Theo lịch mục 3 | 13/11 |

---

## 8. Phụ thuộc với nhóm khác

| # | Cần | Từ | Khi nào | Rủi ro |
|---|---|---|---|---|
| P1 | Dựng, phát hành mẫu HĐLĐ và biểu mẫu nhân sự `NS-xx` | BM | Dựng 09–12/12/2026 | **Đổi đề xuất 13/11 (B4a phương án C):** giữ B4 của nhóm BM; NS xong nội dung, rà soát pháp lý, Giám đốc duyệt nội dung khoảng 05/12; BM dựng ngay sau đợt đánh giá 05–08/12; ký HĐLĐ 15–31/12. Nếu 12/12 chưa có mẫu thì xin miễn B4 (phương án A) |
| P1a | **Mã đã cấp (HTQT-00, 13/11):** NS-01 HĐLĐ xác định thời hạn · NS-02 HĐLĐ không xác định thời hạn · NS-03 phụ lục HĐLĐ · NS-04 sổ huấn luyện an toàn · NS-05 sổ cấp bảo hộ · NS-06 sổ kiểm tra phương tiện PCCC. **Điều kiện của nhóm BM:** (1) phiếu yêu cầu gửi **trước 05/12**, kèm nội dung đầy đủ; điều khoản HĐLĐ đã qua rà soát pháp lý và Giám đốc đã duyệt (BM chỉ trình bày); (2) HĐLĐ bằng Word (.dotx), 3 sổ bằng Excel – nhóm NS nhận theo cách này; (3) Giám đốc duyệt nháp trong ngày 11/12. Phiếu muộn hoặc sửa từ 2 vòng: HĐLĐ lùi 15–16/12, vẫn kịp ký trước 31/12 | BM | 09–12/12/2026 | Rà soát pháp lý G1 phải xong trước khoảng 01/12 để Giám đốc duyệt nội dung trước 05/12 |
| P2a, P2b | Nội dung đầu vào cho ST-02, ST-05 (HR-00 gửi yêu cầu 13/11): ST-05 mỗi mục tiêu có chỉ số, công thức, nguồn dữ liệu, tần suất, người đo, cấp áp dụng; ST-02 có bản ngắn ≤ 5 dòng cho đào tạo thợ | ISO | Nháp trước 15/12/2026 | HTQT-00 xếp lịch chính thức |
| P2 | ST-02 chính sách chất lượng, ST-05 mục tiêu chất lượng | ISO-02 | Trước 01/2027 (G7, G10) | ISO GĐ1 hạn 15/01/2027 |
| P3 | Cấp số `QT-xx`, `HD-xx`, `NS-xx` | HTQT-00 | Khi danh mục chốt | — |
| P4 | Mẫu trình bày QT, cách đặt tên file QT | ISO-02 | Trước G8 (01/2027) | — |
| P5 | Cử Đại diện ISO, QC kiêm nhiệm | Giám đốc (VIEC-CHO-GIAM-DOC H3) | Trước khi duyệt G3 | JD, sơ đồ thiếu tên người |

**HTQT-00 đã ghi vào sổ chung (13/11/2026):**
- P1 thành câu **B4a** trong `VIEC-CHO-GIAM-DOC.md` (xin miễn tạm dừng cho mẫu HĐLĐ, bản trắng trước 10/12). Lịch chung có mốc 10/12 (BM ← NS).
- P2: lịch chung có 2 mốc: ST-02, ST-05 trước 01/2027 (ISO → NS); hồ sơ đào tạo, tay nghề dùng thật từ 01/04/2027 (NS → ISO).
- L10 thành câu **N1**. HTQT-00 đồng ý đề xuất giao NS, gộp vào G2; chờ Giám đốc.
- Khi Giám đốc duyệt kế hoạch này, HR-00 báo HTQT-00 ghi mốc chính thức.

---

## Lịch sử phiên bản

| Phiên bản | Ngày | Nội dung | Người duyệt |
|---|---|---|---|
| v0.1 | 13/11/2026 | Lập mới theo yêu cầu Giám đốc: kế hoạch, quy tắc tự vận hành, ý kiến pháp luật, ánh xạ ISO | Chưa duyệt |
| v0.2 | 13/11/2026 | Thêm 4.0 thẩm quyền A/B/C (Giám đốc giao tự điều phối); PCCC vào G2; P1 đổi sang phương án C; thêm P2a, P2b; ký hiệu HS-H và Chung H; mở phiên G1, G2. Bản v0.1 lưu `99_LUU TRU\00_TONG QUAN_HR-00_2026-11`. Sửa thêm cùng ngày theo báo cáo HR-02, HR-06: NĐ 12/2022 → NĐ 283/2026; L6 lên mức Cao (hạn 05/12) | Chưa duyệt |
| v0.3 | 13/11/2026 | Lập lại theo HT-005 (nộp toàn bộ 20/11), HT-007 (thử bằng bản nháp Word), HT-008 (ST-02, ST-05 trước 18/11): mục 3 thay bằng lịch nước rút, bộ tài liệu 20/11, kế hoạch thử 20–30/11 và cách đo; bỏ giới hạn 3 phiên; mã NS-01 → NS-06 đã cấp. Bản v0.2 lưu `99_LUU TRU\00_TONG QUAN_HR-00_2026-11` | Chưa duyệt |
