# Kế hoạch chuyển đổi Việt Khoa sang vận hành theo ISO 9001:2026

Phiên bản v1 · 12/11/2026 · Trạng thái: **đã viết, chưa kiểm, chưa duyệt** · Người duyệt: Giám đốc
Sửa 12/11/2026 theo HT-001 → HT-004 (chương trình HTQT): mã theo quy tắc chung, ISO-04 không mở riêng, ISO-07 thu hẹp, bỏ R0/R1.
Căn cứ: ISO-QĐ-01 đến 04; hồ sơ chung doanh nghiệp (cập nhật 02/11/2026).

> **ĐÍCH CUỐI:** Đạt chứng nhận ISO 9001:2026 trước **30/11/2027**, phạm vi gia công kim loại tấm theo bản vẽ, chế tạo thiết bị inox và thiết kế, chế tạo máy theo yêu cầu (mở rộng theo ISO-QĐ-08, 14/11/2026), tại CN1 Đông Hòa và CN2 Phước Tân.

---

## 1. ISO 9001 nói gì, nói gọn cho Việt Khoa

ISO 9001 không bắt viết nhiều giấy. Nó yêu cầu 3 điều: **làm có kế hoạch, làm đúng như đã định, có bằng chứng đã làm, và sửa khi sai** (vòng Lập kế hoạch – Làm – Kiểm – Cải tiến).

Bản 2026 giữ nguyên khung 10 điều như bản 2015. Theo các bản dự thảo đã công bố, điểm mới chủ yếu là: nhấn mạnh văn hóa chất lượng và hành vi đạo đức của lãnh đạo, tách rõ rủi ro và cơ hội, xem xét biến đổi khí hậu khi xác định bối cảnh (đã có từ sửa đổi 2024). **[CẦN XÁC NHẬN]** đối chiếu với bản chính thức khi mua tiêu chuẩn.

| Điều | Nói bằng việc thật ở Việt Khoa | Hiện trạng (sơ bộ, chờ khảo sát ISO-01) |
|---|---|---|
| 4 Bối cảnh | Ai là khách, ai là đối thủ, mình nhận việc gì, không nhận việc gì; vẽ ra luồng việc từ báo giá đến giao hàng | Có hồ sơ chung DN; chưa có bản đồ quá trình |
| 5 Lãnh đạo | Giám đốc ký chính sách chất lượng, giao rõ ai chịu trách nhiệm gì | Có giá trị cốt lõi, cam kết KH; chưa có chính sách chất lượng |
| 6 Hoạch định | Mục tiêu đo được (giao đúng hạn, tỷ lệ làm lại…), danh sách rủi ro chính | Chưa có |
| 7 Hỗ trợ | Máy được bảo trì, thước được kiểm, thợ được đào tạo, tài liệu có mã và phiên bản | Đã có bộ biểu mẫu BM, quy chuẩn bản vẽ, wiki HR; chưa có hiệu chuẩn, ma trận tay nghề |
| 8 Vận hành | Báo giá → xác nhận đơn → thiết kế → mua vật tư → sản xuất → **kiểm tra** → giao → xử lý hàng lỗi | Làm được nhưng chủ yếu bằng kinh nghiệm; **thiếu QC cuối** |
| 9 Đánh giá | Đo KPI, hỏi ý kiến khách, tự kiểm tra nội bộ, Giám đốc họp xem xét | Chưa có |
| 10 Cải tiến | Hàng lỗi phải tìm nguyên nhân và sửa gốc, không chỉ sửa hàng | Sửa hàng, chưa ghi nguyên nhân |

**Điều khoản áp dụng cho phạm vi đã chốt** (đề xuất, chờ duyệt):
- **8.3 Thiết kế:** áp dụng cho chế tạo thiết bị theo yêu cầu (đội kỹ thuật tự thiết kế). Gia công theo bản vẽ của khách thì không thiết kế, chỉ kiểm soát bản vẽ nhận vào.
- **8.5.3 Tài sản của khách:** áp dụng. Bản vẽ khách gửi, vật tư khách giao gia công là tài sản của khách, phải giữ và báo khi hư hỏng.
- **7.1.5 Dụng cụ đo:** áp dụng. Thước kẹp, thước cuộn, thước đo góc dùng để quyết định đạt/không đạt phải được kiểm định kỳ.

---

## 2. Tổ chức thực hiện

| Vai trò | Ai | Thời gian dành ra |
|---|---|---|
| Chủ trì, người chốt | Giám đốc Đỗ Việt Khoa | 2 giờ/tuần (họp tuần 30 phút + duyệt) |
| Đại diện ISO (điều phối, giữ tài liệu) | **[CẦN XÁC NHẬN]** – đề xuất 1 người kỹ thuật hoặc kế toán có tính cẩn thận | 20–30% thời gian |
| Đầu mối CN1 / CN2 | Tổ trưởng mỗi xưởng **[CẦN XÁC NHẬN]** | 2–3 giờ/tuần |
| Đầu mối kỹ thuật – thiết kế | Trưởng kỹ thuật **[CẦN XÁC NHẬN]** | theo nhánh ISO-05 |
| Hỗ trợ soạn thảo | Claude (các đoạn chat nhánh) | — |
| Đánh giá viên nội bộ | 2 người được đào tạo ở giai đoạn 4 **[CẦN XÁC NHẬN]** | — |

Nguyên tắc: **tài liệu ngắn, biểu mẫu ít, hồ sơ bằng ảnh và điện thoại** – vì văn phòng thiếu người. Một quy trình không dài quá 2 trang; biểu mẫu ưu tiên tick và chụp ảnh.

---

## 3. Lộ trình 6 giai đoạn (12/11/2026 → 30/11/2027)

```
          T11 T12 T1  T2  T3  T4  T5  T6  T7  T8  T9  T10 T11
GĐ0 Khởi động   ██
GĐ1 Nền tảng        ████████
GĐ2 Quy trình           ████████████
  └ QC cuối thí điểm ██████████  (chạy sớm, "thắng nhanh")
GĐ3 Chạy có hồ sơ                   ████████████
GĐ4 Đánh giá nội bộ                             ████████
GĐ5 Chứng nhận                          (chọn TCCN)     ████████
```

### GĐ0 – Khởi động (12/11 – 30/11/2026)

| Việc | Đầu ra | Nhánh |
|---|---|---|
| Giám đốc duyệt kế hoạch này, cử Đại diện ISO | Quyết định cử người | ISO-00 |
| Họp phát động 30 phút với toàn bộ 15 người: vì sao làm ISO, mỗi người làm gì | Biên bản + danh sách ký | ISO-00 |
| Khảo sát hiện trạng theo 10 điều: đang làm gì, có giấy tờ gì, thiếu gì | Bảng khoảng cách (gap) có mức ưu tiên | **ISO-01** |
| Tải tài liệu nguồn mở về thư mục tham khảo | Thư mục `01_TAI_LIEU_THAM_KHAO` | ISO-00 |

**Cổng ra:** Giám đốc duyệt bảng khoảng cách.

### GĐ1 – Nền tảng hệ thống (01/12/2026 – 15/01/2027)

Đây là **việc nền**, các nhánh quy trình đều cần, nên làm trước.

| Việc | Đầu ra | Điều |
|---|---|---|
| Quy tắc mã tài liệu, phiên bản, ai duyệt, lưu ở đâu (dựa trên quy tắc BM đang có) | QT-01 Kiểm soát tài liệu và hồ sơ | 7.5 |
| Mẫu trình bày chung cho quy trình, hướng dẫn, biểu mẫu | Mẫu `.docx`/`.xlsx` có khung tên VKG | 7.5 |
| Phạm vi, bối cảnh, các bên liên quan | 1 trang | 4.1–4.3 |
| Bản đồ quá trình: các khâu từ báo giá đến bảo hành, đầu vào – đầu ra – người chịu trách nhiệm | 1 sơ đồ A3 | 4.4 |
| Chính sách chất lượng (gắn Tâm · Tín · Trung thực và cam kết Đúng kỹ thuật · Đúng tiến độ · Giá thành tối ưu) | 1 trang, Giám đốc ký | 5.2 |
| Sơ đồ tổ chức, bảng trách nhiệm | 1 trang | 5.3 |
| Mục tiêu chất lượng 2027 đo được + bảng rủi ro, cơ hội | 1 bảng mỗi loại | 6.1, 6.2 |

Nhánh: **ISO-02**. **Cổng ra:** Giám đốc duyệt nháp QT-01 và bản đồ quá trình → mở các nhánh GĐ2.

### GĐ2 – Viết quy trình theo luồng việc (15/12/2026 – 31/03/2027)

**Các nhánh chạy song song** (mỗi nhánh một đoạn chat, không sửa file của nhau):

| Nhánh | Nội dung | Điều | Tận dụng cái đã có | Bắt đầu |
|---|---|---|---|---|
| **ISO-03 QC cuối** | Tiêu chí kiểm, phiếu QC cuối, tem đạt, xử lý hàng lỗi (NCR), hiệu chuẩn thước | 8.6, 8.7, 7.1.5 | Đề xuất QC cuối v1 | **Ngay (thí điểm)** |
| ~~ISO-04 Bán hàng – hợp đồng~~ | **Không mở riêng (ISO-QĐ-06).** HTQT-00 viết 1 QT ngắn dựa trên chuỗi BG → DH → NT nhóm BM đã làm; tài sản của khách bổ sung vào DH-01 qua nhóm BM | 8.2, 8.5.3 | Bộ BM báo giá, DH-01, NT | Sau cổng GĐ1 |
| ISO-05 Thiết kế – bản vẽ | Đầu vào thiết kế, kiểm tra, phát hành, thay đổi bản vẽ, bản vẽ khách gửi | 8.3, 7.5 | Quy chuẩn bản vẽ SolidWorks, thư mục dự án chuẩn | Sau cổng GĐ1 |
| ISO-06 Mua hàng – nhà cung cấp | Danh sách NCC được duyệt, đánh giá NCC, kiểm vật tư đầu vào, CO/CQ, gia công ngoài (sơn, xi mạ) | 8.4 | Đề xuất vật tư, kho | Sau cổng GĐ1 |
| ISO-07 Máy móc | Danh mục máy, lịch bảo trì, môi trường làm việc. **Đào tạo, tay nghề, nhận thức chuyển nhóm NS (HR-04), ISO chỉ gửi yêu cầu điều 7.2, 7.3 (ISO-QĐ-06)** | 7.1.3, 7.1.4 | — | Sau cổng GĐ1 |

Kế hoạch sản xuất, lệnh sản xuất, nhận diện và truy xuất (8.5.1, 8.5.2) gộp vào ISO-03 nếu Giám đốc đồng ý, vì QC gắn chặt với lệnh sản xuất. **[CẦN XÁC NHẬN]**

**Cổng ra:** mỗi quy trình qua duyệt nháp → cho dùng thử.

### GĐ3 – Chạy thật có hồ sơ (01/04 – 30/06/2027)

- Ban hành bộ tài liệu v1.0 vào `10_PHAT_HANH` (biểu mẫu ở `BIEU-MAU-VKG`). Đào tạo từng tổ 30–60 phút, ký danh sách.
- Chạy đủ **3 tháng** có hồ sơ thật: phiếu QC, NCR, đánh giá NCC, bảo trì, đào tạo.
- Đo KPI hàng tháng (giao đúng hạn, tỷ lệ làm lại, khiếu nại).
- Sửa tài liệu theo góp ý → v1.1 / v2.0.
- **Tháng 6/2027:** chọn tổ chức chứng nhận, ký hợp đồng (nhánh ISO-09).

### GĐ4 – Tự kiểm tra (01/07 – 31/08/2027)

| Việc | Đầu ra | Điều |
|---|---|---|
| Đào tạo 2 đánh giá viên nội bộ (khoá ngắn bên ngoài hoặc tự học theo ISO 19011) | Chứng nhận khoá học / biên bản đào tạo | 7.2 |
| Đánh giá nội bộ toàn bộ hệ thống, chéo xưởng (người CN1 đánh giá CN2 và ngược lại) | Báo cáo + danh sách điểm chưa đạt | 9.2 |
| Khắc phục điểm chưa đạt | Phiếu khắc phục đã đóng | 10.2 |
| Họp xem xét của lãnh đạo | Biên bản xem xét | 9.3 |

Nhánh: **ISO-08**.

### GĐ5 – Chứng nhận (09 – 11/2027)

| Bước | Thời điểm | Ghi chú |
|---|---|---|
| Đánh giá giai đoạn 1 (xem tài liệu, sẵn sàng chưa) | 09/2027 | Tổ chức chứng nhận làm |
| Khắc phục sau giai đoạn 1 | 2–4 tuần | |
| Đánh giá giai đoạn 2 (xem hiện trường, hồ sơ) | 10/2027 | Cả CN1 và CN2 |
| Khắc phục lỗi (nếu có), cấp chứng chỉ | **trước 30/11/2027** | Chứng chỉ 3 năm, giám sát hằng năm |

Chọn tổ chức chứng nhận: phải được công nhận (Văn phòng Công nhận Chất lượng BoA hoặc thành viên IAF), tra được chứng chỉ trên IAF CertSearch. Chi phí: **[CẦN XÁC NHẬN]** lấy ít nhất 3 báo giá.

---

## 4. Thứ tự mở đoạn chat (nhánh)

| Thứ tự | Nhánh | Khi nào mở | Phụ thuộc |
|---|---|---|---|
| 0 | ISO-00 Điều tiết | Đang mở | — |
| 1 | ISO-01 Khảo sát hiện trạng | Ngay | — |
| 1 | ISO-02 Nền tài liệu | Ngay | Dùng kết quả ISO-01 khi có; quy tắc mã tài liệu làm được ngay |
| 1 | ISO-03 QC cuối (thí điểm) | Ngay | Mã tài liệu tạm ghi `[CẦN XÁC NHẬN]` đến khi ISO-02 chốt |
| 2 | ISO-04, 05, 06, 07 | Sau khi duyệt nháp QT-01 + bản đồ quá trình (~01/2027) | ISO-02 |
| 3 | ISO-08 Đánh giá nội bộ | 06/2027 | GĐ3 |
| 3 | ISO-09 Chứng nhận | 05/2027 | GĐ3 |

Mỗi đoạn chat đặt tên: `[ĐÍCH: ISO 9001 T11/2027] <mã> <tên việc>` để luôn nhắc đích cuối.

---

## 5. Chỉ số theo dõi dự án

| Chỉ số | Mục tiêu |
|---|---|
| Tiến độ theo lộ trình | Mỗi cổng không trễ quá 2 tuần |
| Tỷ lệ đơn có phiếu QC cuối | 100% từ 04/2027 (thí điểm CN1 từ 12/2026) |
| Số quy trình được duyệt | ~8–10 quy trình, mỗi cái ≤ 2 trang |
| Số tháng hồ sơ chạy thật trước đánh giá | ≥ 3 |
| Điểm chưa đạt nặng ở đánh giá nội bộ | 0 khi bước vào giai đoạn 1 |

## 6. Rủi ro chính của dự án

| Rủi ro | Cách giảm |
|---|---|
| Không có người giữ việc ISO vì văn phòng thiếu người | Cử Đại diện ISO ngay GĐ0; Claude soạn nháp; biểu mẫu tối giản |
| Viết nhiều tài liệu nhưng xưởng không làm theo | Viết cùng tổ trưởng, thử trên đơn thật trước khi ban hành |
| Hồ sơ không đủ 3 tháng | Bắt đầu QC cuối thí điểm ngay 12/2026 |
| Mùa cao điểm sản xuất lấn thời gian | Họp tuần 30 phút cố định; việc ISO gắn vào việc thật, không làm thêm |
| Chọn tổ chức chứng nhận không được công nhận | Kiểm trên BoA / IAF CertSearch trước khi ký |

## 7. Việc chờ Giám đốc

1. Duyệt nháp kế hoạch này.
2. Cử Đại diện ISO và đầu mối CN1, CN2, kỹ thuật.
3. Duyệt bố cục thư mục (ISO-QĐ-05).
4. Đồng ý gộp lệnh sản xuất, truy xuất vào nhánh ISO-03.
5. Duyệt nháp đề xuất QC cuối (`ISO-03_QC_CUOI\DE-XUAT-QC-CUOI_v1.md`) để thí điểm tại CN1.
