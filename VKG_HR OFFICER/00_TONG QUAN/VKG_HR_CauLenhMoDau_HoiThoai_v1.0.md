# CÂU LỆNH MỞ ĐẦU CÁC HỘI THOẠI – BƯỚC 6

> **Phiên bản: v1.0 – 2026-11-02** · Bổ sung cho bước 6 file `VKG_HR_HuongDan_TaoProject.md`.
> Mỗi hội thoại mở **trong Project VKG_HR OFFICER**. Copy nguyên khối câu lệnh, gửi kèm tài liệu ở mục "Chuẩn bị".
> Mã T1–T7, H1–H9 là các mục trong `VKG_HR_HoSoCanCungCap.md`. Thiếu mục nào thì Claude ghi [CẦN XÁC NHẬN] và vẫn soạn tiếp.

## Thứ tự nên mở

| # | Hội thoại | Vì sao ở vị trí này | Cần có trước |
|---|---|---|---|
| 1 | `[HR-02] Hồ sơ – Hợp thức hóa HĐLĐ & BHXH` | Rủi ro pháp lý lớn nhất | T2 (gấp), H3, H6 |
| 2 | `[HR-06] ATVSLĐ – Huấn luyện & khám sức khỏe` | Bắt buộc, 60% là lao động sản xuất | T4, H7 |
| 3 | `[HR-00] Tổ chức – Sơ đồ tổ chức` | Nền cho JD, nội quy, quy chế lương | T1, H1 (gấp) |
| 4 | `[HR-06] Nội quy – Nội quy lao động & đăng ký` | Bắt buộc từ 10 lao động | H2 (gấp), H4, T3 |
| 5 | `[HR-03] Lương – Quy chế lương` | Khó khăn #2; HĐLĐ cần dẫn chiếu | H3 (gấp), T5 |
| 6 | `[HR-01] JD – Mô tả công việc các vị trí` | MT3; cần sơ đồ tổ chức trước | Sơ đồ tổ chức đã duyệt, H1, T6 |

Hội thoại 1 và 2 có thể mở song song. Hội thoại 6 chỉ mở sau khi sơ đồ tổ chức (hội thoại 3) được duyệt.

---

## 1. `[HR-02] Hồ sơ – Hợp thức hóa HĐLĐ & BHXH`

**Chuẩn bị:** T2 (số người đã đóng BHXH), H3 (cách trả lương, không cần số liệu từng người), H6 (mẫu hợp đồng cũ, nếu có). **Không** dán tên, CCCD, lương thật.

```
Mở hội thoại [HR-02] Hồ sơ – Hợp thức hóa HĐLĐ & BHXH. Đọc Hồ sơ chung, file 01–04 và VKG_HR_HoSoCanCungCap.md.

Bối cảnh: VKG có 17 lao động, chưa ký HĐLĐ đầy đủ, chưa đóng BHXH đầy đủ. CN2 đóng BHXH qua công ty mẹ. [Dán T2, H3 hoặc ghi "chưa có".]

Yêu cầu:
1. Đánh giá rủi ro pháp lý hiện tại: nghĩa vụ ký HĐLĐ, đóng BHXH/BHYT/BHTN, các khoản có thể bị truy đóng, mức xử phạt. Tra cứu văn bản hiện hành, ghi số hiệu, điều khoản, ngày tra cứu.
2. Đề xuất lộ trình hợp thức hóa theo tuần (đến 31/12/2026): nhóm lao động ưu tiên, việc cần làm, ai làm, hồ sơ cần chuẩn bị. Nêu 2 phương án nếu có lựa chọn quan trọng (ví dụ thời điểm bắt đầu đóng BHXH, xử lý giai đoạn đã làm việc trước đó).
3. Soạn nháp mẫu HĐLĐ (xác định thời hạn và không xác định thời hạn) theo skill vkg-hr-soan-van-ban. Phần tiền lương ghi theo cách trả hiện tại, dẫn chiếu quy chế lương sẽ ban hành sau. Địa điểm làm việc ghi CN1/CN2 theo file 04 mục 8.
4. Danh mục hồ sơ nhân sự bắt buộc mỗi người cần có.
5. Rủi ro nào nên thuê luật sư theo vụ việc, ước phạm vi công việc cần thuê.

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** báo cáo rủi ro, lộ trình theo tuần, mẫu HĐLĐ v0.1, danh mục hồ sơ.
**Rà soát:** bắt buộc cả `vkg-hr-ra-soat-chat-luong` và `vkg-hr-ra-soat-phap-ly`.

---

## 2. `[HR-06] ATVSLĐ – Huấn luyện & khám sức khỏe`

**Chuẩn bị:** T4 (thời hạn huấn luyện xong), H7 (máy móc, công việc nguy cơ cao, đồ bảo hộ đang cấp ở từng xưởng).

```
Mở hội thoại [HR-06] ATVSLĐ – Huấn luyện & khám sức khỏe. Đọc Hồ sơ chung, file 01–04 và VKG_HR_HoSoCanCungCap.md.

Bối cảnh: 2 xưởng cơ khí (CN1: laser 6 kW, laser ống, chấn, đột, hàn laser, chế tạo inox; CN2: laser 12 kW tấm khổ lớn, thép dày, kết cấu). Chưa huấn luyện ATVSLĐ, chưa khám sức khỏe định kỳ. [Dán T4, H7 hoặc ghi "chưa có".]

Yêu cầu:
1. Liệt kê nghĩa vụ ATVSLĐ bắt buộc của VKG theo Luật ATVSLĐ 2015 và văn bản hướng dẫn hiện hành: huấn luyện theo nhóm đối tượng, khám sức khỏe, trang bị bảo hộ, người làm công tác ATVSLĐ, máy móc có yêu cầu nghiêm ngặt, công việc nặng nhọc độc hại nguy hiểm. Ghi căn cứ và ngày tra cứu.
2. Phân nhóm đối tượng huấn luyện theo chức danh hiện có (dùng số lượng, không dùng tên).
3. Lập kế hoạch ATVSLĐ đến hạn MT7: huấn luyện, khám sức khỏe, cấp bảo hộ; ai làm, thời hạn, chi phí cần trình duyệt (ước tính, ghi [CẦN XÁC NHẬN]).
4. Đề xuất danh mục tài liệu cần ban hành (quy định ATVSLĐ tại xưởng, nội quy an toàn từng máy, sổ theo dõi) và thứ tự soạn.
5. Nêu phương án ít tốn kém (đơn vị huấn luyện bên ngoài hay tự tổ chức có điều kiện).

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** danh sách nghĩa vụ, kế hoạch ATVSLĐ, danh mục tài liệu cần soạn.
**Rà soát:** bắt buộc cả 2 skill rà soát.

---

## 3. `[HR-00] Tổ chức – Sơ đồ tổ chức`

**Chuẩn bị:** H1 (chức danh hiện có của 17 người, chỉ chức danh, bộ phận, xưởng), T1 (số lao động sản xuất CN2), T6 (nếu đã có).

```
Mở hội thoại [HR-00] Tổ chức – Sơ đồ tổ chức. Đọc Hồ sơ chung, file 01–04 và VKG_HR_HoSoCanCungCap.md.

[Dán H1, T1 hoặc ghi "chưa có".]

Yêu cầu:
1. Vẽ sơ đồ tổ chức hiện tại (17 người) và sơ đồ theo định biên 26 người, chia theo 5 bộ phận ở file 01 và theo xưởng CN1/CN2. Dùng chức danh, không dùng tên.
2. Lập bảng danh mục chức danh: mã chức danh, tên, bộ phận, xưởng, báo cáo cho ai, số hiện có / định biên. Bảng này là gốc để làm JD.
3. Ghi rõ tuyến báo cáo và phân quyền: Giám đốc ký mọi văn bản nhân sự; Phó Giám đốc không được ủy quyền ký văn bản nhân sự.
4. Đề xuất 2 phương án về nơi đặt chức năng nhân sự khi đủ 26 người (kiêm nhiệm kế toán hay quản lý), nêu ưu nhược điểm.
5. Nêu những điểm chưa rõ trong cơ cấu hiện tại cần Giám đốc quyết định.

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** sơ đồ tổ chức (2 bản), bảng danh mục chức danh.
**Rà soát:** `vkg-hr-ra-soat-chat-luong`.

---

## 4. `[HR-06] Nội quy – Nội quy lao động & đăng ký`

**Chuẩn bị:** H2 (thời giờ làm việc từng xưởng), H4 (quy định đang áp dụng bằng miệng), T3 (mã địa điểm kinh doanh CN2).

```
Mở hội thoại [HR-06] Nội quy – Nội quy lao động & đăng ký. Đọc Hồ sơ chung, file 01–04 và VKG_HR_HoSoCanCungCap.md.

[Dán H2, H4, T3 hoặc ghi "chưa có".]

Yêu cầu:
1. Soạn nháp Nội quy lao động theo skill vkg-hr-soan-van-ban, đủ nội dung bắt buộc theo Điều 118 BLLĐ 2019 và văn bản hướng dẫn hiện hành. Áp dụng cho cả CN1 và CN2; phần khác nhau giữa hai xưởng (giờ làm, ca) ghi rõ.
2. Đưa các quy định đang áp dụng bằng miệng (H4) vào đúng chương; chỉ ra điểm nào trái luật cần bỏ hoặc sửa.
3. Phần an toàn lao động và vận hành máy: khớp với kế hoạch ATVSLĐ (nếu đã có ở hội thoại [HR-06] ATVSLĐ).
4. Hướng dẫn thủ tục đăng ký nội quy theo Điều 119: hồ sơ, cơ quan tiếp nhận (lưu ý CN2 ở Đồng Nai), thời hạn, thời điểm có hiệu lực, việc lấy ý kiến tổ chức đại diện người lao động (nếu có). Tra cứu và ghi ngày tra cứu.
5. Danh sách biểu mẫu đi kèm cần tạo (mã BM).

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** Nội quy lao động v0.1, hướng dẫn đăng ký, danh sách biểu mẫu.
**Rà soát:** bắt buộc cả 2 skill rà soát.

---

## 5. `[HR-03] Lương – Quy chế lương`

**Chuẩn bị:** H3 (cách trả lương hiện tại, các khoản phụ cấp, thưởng, ngày trả lương; **không** số liệu từng người), T5 (người phụ trách kế toán). Nếu cần mặt bằng lương, chỉ nêu khoảng theo nhóm chức danh.

```
Mở hội thoại [HR-03] Lương – Quy chế lương. Đọc Hồ sơ chung, file 01–04 và VKG_HR_HoSoCanCungCap.md.

[Dán H3, T5 hoặc ghi "chưa có".]

Yêu cầu:
1. Tóm tắt các quy định bắt buộc về tiền lương: lương tối thiểu vùng I hiện hành, thang bảng lương, hình thức trả lương, làm thêm giờ, làm đêm, khấu trừ, tiền lương đóng BHXH, thuế TNCN. Tra cứu văn bản hiện hành, ghi căn cứ và ngày tra cứu.
2. Đề xuất 2 phương án cấu trúc lương cho VKG (ví dụ lương cơ bản + phụ cấp + thưởng hiệu suất; lương theo sản phẩm cho thợ), nêu ưu nhược điểm, tác động đến chi phí BHXH.
3. Đề xuất khung thang bảng lương theo nhóm chức danh ở sơ đồ tổ chức (dùng bậc, hệ số hoặc khoảng; không dùng lương cá nhân).
4. Soạn nháp Quy chế lương theo skill vkg-hr-soan-van-ban: nguyên tắc, cấu trúc, cách tính, tăng lương, ngày trả, trách nhiệm.
5. Chỉ ra điểm liên kết với HĐLĐ, KPI (GĐ3) và quy chế thưởng sau này.

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** 2 phương án, khung thang bảng lương, Quy chế lương v0.1.
**Rà soát:** bắt buộc cả 2 skill rà soát.

---

## 6. `[HR-01] JD – Mô tả công việc các vị trí`

**Chuẩn bị:** bảng danh mục chức danh đã duyệt (từ hội thoại 3), T6 (nếu cần), mô tả công việc thực tế của từng vị trí (nói bằng lời cũng được).

```
Mở hội thoại [HR-01] JD – Mô tả công việc các vị trí. Đọc Hồ sơ chung, file 01–04 và bảng danh mục chức danh đính kèm.

Yêu cầu:
1. Lập danh sách JD cần làm theo bảng danh mục chức danh, gộp các vị trí giống nhau, sắp thứ tự ưu tiên (vị trí sản xuất và thợ hàn trước). Ghi mã JD dự kiến.
2. Soạn nháp JD theo skill vkg-hr-xay-dung-jd, mỗi lượt 2–3 JD. Bắt đầu với: [ghi vị trí, ví dụ Thợ hàn, Thợ vận hành laser, Đội trưởng tổ sản xuất].
3. Phần KPI trong JD: ghi KPI dự kiến, đánh dấu [CẦN XÁC NHẬN] vì bộ KPI làm ở GĐ3.
4. Phần điều kiện làm việc: khớp với kế hoạch ATVSLĐ.
5. Lập bảng theo dõi tiến độ JD (vị trí, mã, phiên bản, trạng thái, hạn) để đạt MT3 trước 31/12/2026.

Hỏi tối đa 3 câu nếu thiếu thông tin quan trọng. Cuối hội thoại tóm tắt "Đã chốt / Chưa chốt / Việc tiếp theo".
```

**Kết quả mong đợi:** danh sách JD, các JD v0.1 theo lượt, bảng theo dõi tiến độ.
**Rà soát:** `vkg-hr-ra-soat-chat-luong`; thêm `vkg-hr-ra-soat-phap-ly` cho JD vị trí xưởng có yếu tố ATVSLĐ.

---

## Câu lệnh dùng chung: hội thoại rà soát độc lập

Mở hội thoại riêng, tên `[HR-<mã>] Rà soát – <Tên tài liệu> v0.x`, đính kèm bản nháp:

```
Rà soát độc lập bản nháp đính kèm theo skill vkg-hr-ra-soat-chat-luong.
[Nếu có HĐLĐ, lương, BHXH, kỷ luật, nội quy, ATVSLĐ hoặc dữ liệu cá nhân: thêm "và skill vkg-hr-ra-soat-phap-ly".]
Bạn không tham gia soạn bản này. Chỉ báo cáo, không sửa. Kết luận: Trình duyệt được / Cần sửa rồi trình / Làm lại.
```

## Sau mỗi hội thoại
1. Lưu tài liệu vào đúng thư mục phân hệ, tên file theo file 04.
2. Đánh `[x]` các mục T/H đã cung cấp trong `VKG_HR_HoSoCanCungCap.md`, tải lại lên Project.
3. Ghi Nhật ký quyết định những gì đã chốt.

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11-02 | Lập mới: câu lệnh mở đầu 6 hội thoại bước 6, thứ tự mở, câu lệnh rà soát dùng chung | Giám đốc Đỗ Việt Khoa |
