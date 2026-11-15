# [HTQT·NS] G10 – KPI-SX Bộ KPI sản xuất (xưởng CN1, CN2 và thợ sản xuất)

> **Phục vụ ISO điều:** 6.2 (mục tiêu chất lượng chia xuống xưởng), 9.1.1, 9.1.3 (đo, phân tích), 7.2 (đánh giá năng lực, kết quả làm việc), 7.1.4 (môi trường làm việc an toàn).
> **Căn cứ pháp luật (tra ngày 14/11/2026):** không bắt buộc. Chưa gắn lương, thưởng; khi gắn phải ghi trong quy chế lương, thưởng (BLLĐ Đ.93, 104) và rà soát pháp lý (Khung KPI mục 7).
> **Trạng thái:** đã viết, đã tự kiểm, chưa rà soát độc lập, chưa duyệt.

Phiên bản v0.1 – 14/11/2026 · Mã `KPI-SX` (NS đặt theo HT-002, chờ HTQT-00 ghi danh mục) · Người viết: phiên HR-04 (gói G10) · Người duyệt: Giám đốc
**Cách dùng:** đọc cùng Khung KPI (`VKG_HR_KhungKPI_v0.1_2026-11.md`) – thang điểm, kỳ đo, nguyên tắc. Bảng tính: `VKG_HR_KPI-SX_SanXuat_v0.1_2026-11.xlsx`. Phiếu ghi tuần: NS-14.

**Nguồn chỉ số:** ST-05 Mục tiêu chất lượng 2027 **v0.3 nháp** (nhóm ISO, chưa duyệt – câu I7). Chỉ số, công thức, nguồn, tần suất, người đo **chép nguyên từ ST-05**; chỗ ST-05 ghi [CẦN XÁC NHẬN] thì ở đây cũng vậy. NS chỉ thêm: tách theo xưởng khi ST-05 ghi cấp công ty, KPI an toàn và đào tạo, tỷ trọng, cách tính điểm. **Không đặt mức chỉ tiêu.**

---

## 1. Áp cho ai

| Tầng | Ai | Số hiện có (file 01) |
|---|---|---|
| Xưởng | Tổ sản xuất CN1, tổ sản xuất CN2 – **đội trưởng mỗi xưởng chịu** | 2 tổ, 2 đội trưởng |
| Cá nhân | Thợ sản xuất (laser, chấn, đột, hàn, mài, lắp ráp, phụ việc) | Công ty 15 người (HT-018); số thợ mỗi xưởng [CẦN XÁC NHẬN – chờ G3] |

KPI của đội trưởng = KPI xưởng (mục 2). JD đội trưởng (G6) dẫn chiếu mục này.
**Mã từng KPI:** X-01 → X-07 (xưởng), X-P1, X-P2 (phụ), T-01 → T-05 (thợ). Không dùng "SX-01…" để khỏi trùng biểu mẫu SX-01 Lệnh sản xuất của nhóm BM.

## 2. KPI xưởng (đội trưởng) – 7 KPI chính

| Mã | Tên | Nhóm | Công thức | Đơn vị | Nguồn dữ liệu | Tần suất | Người đo | Chỉ tiêu | Tỷ trọng (đề xuất) | Kiểu tính điểm | Từ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| X-01 | Giao đúng hẹn | Khách hàng | Số đơn giao đúng hoặc sớm hơn ngày hẹn ÷ tổng số đơn đã giao trong tháng × 100% | % | Ngày hẹn: DH-01 / hợp đồng / HS-01; ngày giao: GH-02 [CẦN XÁC NHẬN đơn lấy ngay]. Tuần thử 20–30/11: đội trưởng ghi ngày ở NS-14 Phần A. **Khi HS-01 chạy (01/12 hoặc 23/11):** NS-14 bỏ 3 cột ngày; Phó Giám đốc lọc số đơn giao, đơn đúng hẹn từ HS-01 sáng thứ Hai; không nối công thức sang HS-01 (nhóm BM, HTQT-00 đồng ý 14/11) | Tháng | Theo ST-05 [CẦN XÁC NHẬN] – đề xuất người giữ sổ HS-01 | **Theo ST-05** | 25% | Càng cao càng tốt | ST-05 M1 (tách CN1, CN2 – ST-05 có) |
| X-02 | Không giao hàng chưa kiểm | Quy trình | Số đơn đã giao có ảnh QC cuối kèm mã hồ sơ ÷ tổng số đơn đã giao trong tháng × 100% | % | Ảnh QC `ISO_9001\05_HO_SO_VAN_HANH\QC_KIEM_TRA\<yyyy-mm>\<mã hồ sơ>`; danh sách đơn giao GH-02 / HS-01. Hằng tuần: NS-14 Phần A | Tháng | Theo ST-05 – đề xuất Đại diện ISO | **Theo ST-05** (ST-05 ghi 100% từ 04/2027, chưa duyệt) | 20% | Càng cao càng tốt | ST-05 M2 (cấp xưởng – ST-05 có) |
| X-03 | Ít làm lại | Tài chính | Số đơn có ít nhất 1 phiếu hàng lỗi do xưởng gây ra ÷ tổng số đơn hoàn thành trong tháng × 100% | % | Phiếu hàng lỗi `CL-xx` (chưa có); trước đó nhóm Zalo "HÀNG LỖI". Hằng tuần: NS-14 Phần A | Tháng | Theo ST-05 – đề xuất đội trưởng đếm, Đại diện ISO tổng hợp | **Theo ST-05** | 25% | Càng thấp càng tốt | ST-05 M3 (cấp xưởng, tổ theo công đoạn – ST-05 có) |
| X-04 | Sửa gốc, không lặp lại | Học hỏi | Số phiếu khắc phục đã đóng đúng hạn ÷ số phiếu khắc phục mở trong kỳ × 100%, **chỉ tính phiếu giao cho xưởng** | % | Phiếu khắc phục (chưa có mẫu); họp thứ Hai | **Quý** | Theo ST-05 – đề xuất Đại diện ISO | **Theo ST-05** | 10% | Càng cao càng tốt | ST-05 M5 (ST-05 ghi cấp công ty; **tách xưởng là đề xuất NS**). Nếu Giám đốc bỏ M5 (I7 c): bỏ X-04, cộng 10% vào X-03 |
| X-05 | An toàn lao động | Quy trình | Số vụ tai nạn lao động; số sự cố không ai bị thương trong tháng | vụ | Sổ, phiếu báo cáo sự cố (G2 – **cần xây dựng nguồn**, dự kiến 01/2027); NS-14 Phần B | Tháng | Đội trưởng ghi; người làm công tác ATVSLĐ xác nhận | Mục tiêu 0 vụ (MT7, file 02) | 10% | Mục tiêu bằng 0 | **NS thêm** (MT7; ISO 7.1.4) |
| X-06 | Kiểm tra cuối ca | Quy trình | Số ca có phiếu kiểm tra cuối ca NS-12 điền đủ ÷ số ca làm việc × 100% | % | NS-12 (G2); NS-14 Phần B | Tháng | Đội trưởng | [CẦN XÁC NHẬN] | 5% | Càng cao càng tốt | **NS thêm** (G2; thử 20–30/11 đích ≥ 80% số ca) |
| X-07 | Đào tạo tay nghề đúng kế hoạch | Học hỏi | Số thợ trong tổ đạt mức tay nghề yêu cầu của chức danh (HD-13) ÷ số thợ của tổ × 100% | % | Ma trận tay nghề NS-09 Phần A | 6 tháng (01, 07) | Đội trưởng + người chấm thứ hai | [CẦN XÁC NHẬN] | 5% | Càng cao càng tốt | **NS thêm** (G7; ISO 7.2) |
| | **Tổng** | | | | | | | | **100%** | | |

**KPI phụ (chỉ theo dõi, không cộng trừ điểm):**

| Mã | Tên | Công thức | Nguồn | Tần suất | Vì sao chỉ theo dõi |
|---|---|---|---|---|---|
| X-P1 | Phàn nàn của khách | Đếm số lần khách phản ánh hàng lỗi hoặc giao trễ trong tháng (mỗi lần một dòng sổ) | Sổ khiếu nại – **chưa có** (chủ sổ: QT bán hàng, nhóm ISO); NS-14 cột "khách phản ánh" | Tháng | ST-05 M4 ở cấp công ty; nhiều lỗi không do xưởng (giao, bán hàng). Tách được theo xưởng thì xét thành KPI chính |
| X-P2 | Đủ số liệu | Số ngày có ghi NS-14 ÷ số ngày làm việc | NS-14 | Tuần | Để biết số liệu tin được chưa; thử 20–30/11 đích ≥ 5/6 ngày |

## 3. Ghi chú đếm (theo ST-05)

- "Đơn" tính theo mã hồ sơ đơn hàng (HS-01, từ 01/12/2026). **Trong thử 20–30/11 chưa có HS-01:** ghi số lệnh sản xuất hoặc tên đơn tạm.
- "Đúng hẹn": ngày giao thực tế ≤ ngày đã hẹn khách; khách tự dời ngày thì lấy ngày mới đã thống nhất [CẦN XÁC NHẬN – ST-05].
- Đơn có hàng của **cả hai xưởng**: tính cho xưởng giao cuối cùng [CẦN XÁC NHẬN – đề xuất NS, ST-05 chưa nói].
- Lỗi "do xưởng gây ra" tách theo công đoạn (cắt, chấn, hàn, hoàn thiện) để biết đào tạo chỗ nào; **không ghi tên người** vào số liệu KPI (Khung KPI mục 8).

## 4. KPI cá nhân thợ (phương án A – đề xuất)

| Mã | Tên | Công thức | Nguồn | Tần suất | Chỉ tiêu | Tỷ trọng | Kiểu |
|---|---|---|---|---|---|---|---|
| T-01 | Kết quả của tổ | Tổng điểm KPI xưởng (mục 2) của tổ mình | Bảng tính KPI-SX | Quý | — (lấy điểm) | 40% | Lấy nguyên điểm, tối đa 120 |
| T-02 | Tay nghề | Số kỹ năng đạt mức yêu cầu (HD-13) ÷ số kỹ năng chức danh yêu cầu × 100% | NS-09 Phần A | 6 tháng | [CẦN XÁC NHẬN] | 20% | Càng cao càng tốt |
| T-03 | Tự kiểm và ghi phiếu | Số phiếu công đoạn mình làm có ghi tự kiểm ÷ số phiếu công đoạn mình làm × 100% | Phiếu công đoạn SX-01 (BM, chưa phát hành) – **cần xây dựng nguồn**: phiếu cần ô "người làm tự kiểm" [CẦN XÁC NHẬN với ISO-03, BM] | Tháng | [CẦN XÁC NHẬN] | 15% | Càng cao càng tốt |
| T-04 | An toàn, 5S tại máy | Số ca máy của mình đạt kiểm tra cuối ca ÷ số ca làm × 100% | NS-12 (ghi theo máy) | Tháng | [CẦN XÁC NHẬN] | 15% | Càng cao càng tốt |
| T-05 | Báo lỗi, góp ý sửa | Số lần báo lỗi hoặc góp cách sửa được ghi nhận (nhóm "HÀNG LỖI", họp thứ Hai) | Nhóm Zalo "HÀNG LỖI"; biên bản họp thứ Hai | Quý | [CẦN XÁC NHẬN] | 10% | Càng cao càng tốt |
| | **Tổng** | | | | | **100%** | |

**Vì sao chọn phương án A:** thợ ít, việc liên hoàn (laser → chấn → hàn → mài), số liệu ST-05 đếm theo đơn, không theo người. Phương án B (KPI cá nhân theo số lỗi mình gây ra) **không đề xuất**: phải ghi tên người vào phiếu lỗi, trái cam kết ST-02 "báo lỗi không bị trách" mà Giám đốc đã chốt (I7 a); thợ sẽ giấu lỗi.
**T-05 dễ bị "báo cho có":** đội trưởng chỉ ghi lần báo có ảnh hoặc có nội dung thật. Sau quý 2/2027 xem lại.
**Chưa có nguồn (T-03):** không chấm, tỷ trọng tự chia lại cho T-01, T-02, T-04, T-05 (Khung KPI mục 5).

## 5. Thử 20–30/11/2026 (kế hoạch NS v0.3 mục 3.4)

| Thử gì | Ai, ở đâu | Đo | Đạt khi |
|---|---|---|---|
| Ghi NS-14 bằng bản in từ nháp NS-14.NHAP | Đội trưởng CN1, 1 tuần (6 ngày làm việc [CẦN XÁC NHẬN ngày làm việc – G4]) | Số ngày có số liệu ÷ số ngày làm việc; thời gian ghi mỗi ngày; cột nào không ghi được | ≥ 5/6 ngày; **có số để Giám đốc thấy mức hiện tại** của X-01, X-02 (nếu đã thí điểm QC), X-03 |

Không chấm điểm trong đợt thử. Kết quả về HR-00 để sửa NS-14 và bảng tính.

---

## Việc cần xác nhận

| # | Nội dung | Ai |
|---|---|---|
| X1 | Tỷ trọng 7 KPI xưởng (25/20/25/10/10/5/5) và 5 KPI thợ (40/20/15/15/10) | Giám đốc |
| X2 | Phương án A cho KPI thợ | Giám đốc |
| X3 | Người đo X-01 → X-04 (ST-05 đang [CẦN XÁC NHẬN]) | Giám đốc qua nhóm ISO |
| X4 | Đơn của cả hai xưởng tính cho xưởng nào | Giám đốc, nhóm ISO |
| X5 | Phiếu công đoạn SX-01 có ô "người làm tự kiểm" không (nguồn T-03) | Nhóm ISO (ISO-03), nhóm BM |
| X6 | ~~NS-14 và HS-01 ghi trùng ngày~~ – đã chốt 14/11: thử giữ 3 cột ngày; khi HS-01 chạy bỏ cột, Phó Giám đốc lọc từ HS-01. **Ghi vào KPI-SX bản sau 30/11** | Xong (chờ bản sau 30/11) |
| X7 | Giữ hay bỏ M5 (I7 c) – ảnh hưởng X-04 | Giám đốc |

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung | Người duyệt |
|---|---|---|---|
| v0.1 | 14/11/2026 | Lập mới (gói G10, phiên HR-04) từ ST-05 v0.2. Cùng ngày: dẫn chiếu ST-05 v0.3 (các trường KPI dùng không đổi); X-01: thử ghi ngày ở NS-14, khi HS-01 chạy Phó Giám đốc lọc từ HS-01 (nhóm BM, HTQT-00 14/11) | Chưa duyệt |
