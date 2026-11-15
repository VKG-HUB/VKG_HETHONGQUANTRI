# [HTQT·NS] Kế hoạch triển khai nhóm Nhân sự và quy tắc tự vận hành

Phiên bản **v0.2 – 13/11/2026** · Trạng thái: **đã viết, chưa kiểm, chưa duyệt** · Người viết: phiên HR-00 · Người duyệt: Giám đốc
Bảng điều phối trực quan: https://claude.ai/artifact/T9HQBQKNE1hS8bcM9RNZru
**Ký hiệu:** "HS-H…" là mục hồ sơ trong `VKG_HR_HoSoCanCungCap.md` (vd. HS-H3 cách trả lương). "Chung H…" là câu trong `00_DIEU_PHOI_CHUNG\VIEC-CHO-GIAM-DOC.md` (vd. Chung H3 cử Đại diện ISO).
Căn cứ: HT-001 → HT-004; file nền HR 01–04; bảng điều khiển ISO (lộ trình GĐ0–GĐ5); báo cáo tiếp quản `HR-00_BaoCaoTiepQuan_2026-11-12.md`.
**Giả định khi Giám đốc chưa trả lời Q1–Q5:** lấy theo đề xuất của HR-00 (Q2 A: HĐLĐ, BHXH, huấn luyện an toàn trước 31/12/2026; Q3 A; Q4 đồng ý). Trả lời khác thì sửa kế hoạch.

> **ĐÍCH CUỐI CHUNG:** chứng nhận ISO 9001:2026 trước 30/11/2027.
> **Mốc riêng nhóm NS:** văn bản nền tảng và JD mọi vị trí trước 31/12/2026 (MT1, MT3). HĐLĐ, BHXH, huấn luyện an toàn: theo Q2.

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

## 3. Lịch theo đợt

Giám đốc là người duyệt duy nhất, nên **tối đa 3 phiên con soạn cùng lúc**.

| Đợt | Thời gian | Phiên chạy song song | Giám đốc cần làm |
|---|---|---|---|
| **Đợt 1** | 13/11 – 30/11/2026 | G1 HĐLĐ, BHXH · G2 ATVSLĐ · G3 Sơ đồ tổ chức. HR-00 làm G0 | Trả lời Q1–Q5; đưa T2 (cần kế toán), T4, H1, H3, H6, H7; cử Đại diện ISO (VIEC-CHO-GIAM-DOC H3); duyệt sơ đồ tổ chức |
| **Đợt 2** | 01/12 – 20/12/2026 | G4 Nội quy · G5 Quy chế lương · G6 JD (theo lượt) | Đưa H2, H4; góp ý qua đội trưởng; duyệt nội quy, quy chế lương; **ký HĐLĐ, đăng ký BHXH** (nếu Q2 A) |
| **Đợt 3** | 21/12 – 31/12/2026 | Rà soát độc lập còn lại, JD lượt cuối | Duyệt, ký ban hành; **nộp hồ sơ đăng ký nội quy**; tổ chức huấn luyện an toàn (đơn vị huấn luyện) |
| GĐ2 HR | 01 – 03/2027 | G7 Đào tạo, tay nghề · G8 Tuyển dụng · G9 Hồ sơ · G11 Đối thoại | Thi tay nghề, ghi hồ sơ; tuyển bổ sung (MT2 18/26 trước 28/02) |
| GĐ3 HR = GĐ3 ISO | 04 – 06/2027 | G10 KPI; ghi hồ sơ đào tạo, tay nghề, khám sức khỏe | Kỳ đánh giá KPI đầu tiên |
| GĐ4–5 ISO | 07 – 11/2027 | HR-00 hỗ trợ đánh giá nội bộ, xem xét lãnh đạo, đánh giá chứng nhận phần 5.3, 7.1.2, 7.1.4, 7.2, 7.3 | Trả lời đánh giá viên |

**Nguy cơ trễ MT1, MT3:** còn 48 ngày, 0% trên file. Nếu đến 30/11 G3 chưa duyệt, HR-00 đề xuất thu gọn danh mục MT1 (mục 6).

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
