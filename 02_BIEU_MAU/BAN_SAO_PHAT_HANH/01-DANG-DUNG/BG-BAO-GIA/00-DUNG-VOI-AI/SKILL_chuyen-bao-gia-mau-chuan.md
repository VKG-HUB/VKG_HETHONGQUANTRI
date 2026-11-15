---
name: vkg-bm-chuyen-bao-gia-mau-chuan
description: Chuyển nội dung báo giá đang dùng trước đây, hoặc thông tin đơn mới, sang mẫu chuẩn BG-01 đến BG-06B của Việt Khoa. Đầu ra là kết luận chọn mẫu, phiếu ô cần điền, bảng hàng để dán vào Excel, danh sách điểm khác và đối chiếu số. Dùng khi người dùng nói "chuyển báo giá cũ", "đưa báo giá vào mẫu", "lập lại báo giá theo form chuẩn", "báo giá theo mẫu mới", "chọn mẫu báo giá". Dùng được với mọi AI, không cần công cụ riêng.
---

# Chuyển báo giá sang mẫu chuẩn Việt Khoa

## Vai trò của AI

AI đọc báo giá cũ, chọn mẫu, sắp nội dung đúng ô. AI không tính giá mới, không đặt số báo giá, không viết lại điều khoản, không tự sửa file mẫu `.xltm`. Người lập dán vào Excel, kiểm và chịu trách nhiệm trước khi gửi khách.

Trả lời bằng tiếng Việt có dấu, câu ngắn.

## Dùng khi / Không dùng khi

**Dùng khi:** có báo giá cũ dạng PDF, Excel, ảnh chụp, hoặc người lập gửi danh sách hàng và đơn giá đã chốt.

**Không dùng khi:**
- Chưa có đơn giá. Việc tính giá do người có thẩm quyền làm.
- Báo giá bằng USD hoặc song ngữ: mẫu chưa cho dùng, hỏi Giám đốc.

## Đầu vào cần có

- Báo giá cũ hoặc danh sách hàng, số lượng, đơn giá. Người lập có thể đã bỏ thông tin khách: khi đó các ô này ghi "người lập điền", không đoán.
- File `WIKI_vkg-cot-loi.md`.
- Ngày lập mới, tên người phụ trách, người ký. Thiếu thì để `[CẦN XÁC NHẬN]`.

## Quy trình

1. **Đọc và chép đúng số.** Tách: tên hàng, quy cách, ĐVT, SL, đơn giá, tổng trước thuế, thuế, tổng sau thuế. Chữ mờ, số đọc không chắc thì ghi `[CẦN XÁC NHẬN]`, không đoán.
2. **Xác định loại đơn.** Cắt, chấn thuần là Đơn cắt, chấn. Có hàn, lắp ráp, hoàn thiện thành sản phẩm là Đơn sản xuất. Còn lại: Kết cấu thép, Dự án, Hàng thương mại. Không chắc thì hỏi người lập.
3. **Chọn mẫu** theo bảng ở mục Chọn mẫu. Nêu lý do một dòng.
4. **Chọn thuế.** Sản phẩm bao gồm vật tư 10%. Dịch vụ gia công không bao gồm vật tư 8%. Một đơn có cả hai loại thì báo người lập: lập hai báo giá hoặc hỏi kế toán. Doanh nghiệp chế xuất, thuế 0%: hỏi Giám đốc.
5. **Sắp nội dung** theo Bản đồ ô. Áp dụng Quy tắc chuyển nội dung.
6. **Đối chiếu số.** Tính lại SL × đơn giá, tổng, thuế. So với báo giá cũ. Lệch thì nêu rõ, không tự sửa.
7. **Liệt kê điểm khác** giữa báo giá cũ và mẫu chuẩn để người lập quyết định.
8. **Trả kết quả** đúng Định dạng trả lời.

## Chọn mẫu

| Trường hợp | Mẫu | Số dòng hàng |
|---|---|---|
| Khách cơ sở gia công nhỏ, đơn cắt, chấn lẻ | BG-03 | Tối đa 18, không chèn thêm |
| Khách doanh nghiệp, đối tác, gồm cả đơn cắt, chấn. Đơn cắt, chấn trên 18 mục | BG-01 | 10, chèn thêm được |
| Thiết bị inox, có cả hàng phân phối | BG-04 | 8 |
| Dự án, bếp trọn gói, thanh toán nhiều đợt | BG-05 | Nhóm A 4, B 4, C 3 |
| Sản phẩm theo bản vẽ, nhiều dòng quy cách, vừa 1 trang | BG-06A | 15 |
| Sản phẩm theo bản vẽ, danh mục dài quá 1 trang | BG-06B | 40 ở Bảng kê, 14 sản phẩm ở trang 1 |

Báo giá cũ có dòng quy cách dưới tên hàng, hoặc tách cột Sản xuất, Sơn/Mạ: thường dùng BG-06A hoặc BG-06B.

Mỗi loại đơn, loại khách một mẫu mặc định (QĐ-116, QĐ-119). Không rõ khách là cơ sở nhỏ hay doanh nghiệp thì hỏi người dùng, không tự chọn BG-03. BG-02 là mẫu tham khảo ở `05-THAM-KHAO`, vẫn dùng được nhưng không phải mẫu mặc định: chỉ chọn khi người dùng nêu rõ muốn dùng mẫu đó. Bản đồ ô của BG-02 vẫn giữ bên dưới.


Ưu đãi chỉ có ở BG-01, 02, 03 và chỉ cho đơn cắt laser tấm, ống từ 5.000.000 đ trước thuế.

## Bản đồ ô

Tất cả điền ở sheet **Báo giá**.

**Bảng hàng.** Cột theo đúng thứ tự, dán từ ô ghi ở cột 2.

| Mẫu | Dán từ ô | Các cột |
|---|---|---|
| BG-01 | B21 | Hạng mục · Bản vẽ số · Vật liệu · Dày (mm) · ĐVT · SL · Đơn giá |
| BG-02 | C15 | ĐVT · SL · Đơn giá. Tên hạng mục gõ riêng ở ô A15 đến A20, vì ô gộp không nhận dán nhiều cột |
| BG-03 | B16 | Tên chi tiết, mã bản vẽ · Vật liệu · Dày (mm) · Cắt · Chấn · SL · Đơn giá. Cắt, Chấn ghi `x` nếu có |
| BG-04 | B18 | Thiết bị, quy cách · Kích thước D×R×C · Vật liệu · Nguồn · Bảo hành · SL · Đơn giá. Nguồn ghi `Tự chế tạo` hoặc `Phân phối` |
| BG-05 | B18 nhóm A, B23 nhóm B, B28 nhóm C | Hạng mục, quy cách · ĐVT · SL · Đơn giá. A Thiết bị chế tạo, B Thiết bị phân phối, C Vận chuyển, lắp đặt |
| BG-06A | B22 | Tên, quy cách · ĐVT · SL · Sản xuất · Hoàn thiện |
| BG-06B | B67 | Như BG-06A. Chỉ điền ở Bảng kê, trang 1 tự lấy |

**Ô đầu trang và cuối trang**

| Nội dung | BG-01 | BG-02 | BG-03 | BG-04 | BG-05 | BG-06A, 06B |
|---|---|---|---|---|---|---|
| Số báo giá | H8 | E5 | G9 | H8 | F8 | G8 |
| Ngày lập | H9 | E6 | I11 | H9 | F9 | G9 |
| Kính gửi | A13 | A10 | A9 | A13 | A12 | A13 |
| Dự án, sản phẩm | F13 | | | E13 ghi nơi giao | A9 | C13 |
| Người nhận | A15 | | C9 | A15 | C12 | A15 |
| Điện thoại khách | C15 | | A13 | C15 | F12 | A17 |
| Email khách | A17 | | A13 | | | A17 |
| Bản vẽ, RFQ | F15 | | A11 | | | C15 |
| Người phụ trách | H15 | B36 | G11 | E15 | C14 | F15 |
| Thời gian giao | Sửa `[__]` ở A42 | Sửa `[__]` ở B30 | C13 | Sửa `[__]` ở A35 | G14 | Sửa `[__]` ở A46 |
| Bảo hành | Sửa ở A44 | Sửa ở B32 | Sửa ở A46 | Cột Bảo hành | Sửa ở A45 | Sửa ở A51 |
| Phí giao, vận chuyển | I34 | F24 | I37 | I28 | Nhóm C | H39 |
| Ai cấp vật tư | K23 | H23 | C11 | | | |
| Loại đơn, chọn tay | K20 | H20 | K20 | | | |
| Chọn ưu đãi | A33 | A23 | A36 | | | |
| Thuế suất, sửa tay | | | | H29 | E33 | G40 |
| Tên người ký | F55 | E41 | F57 | F48 | E56 | E59 |
| Chức danh người ký | F56 | E42 | F58 | F49 | E57 | E60 |

BG-05 có thêm: địa điểm A14, tỷ lệ thanh toán E38, E39, E40, tổng phải bằng 100%.

**Ô không điền:** STT, Thành tiền, Cộng, Thuế, Tổng cộng, Bằng chữ, hạn hiệu lực, thông tin chuyển khoản, thông tin công ty. Mẫu tự tính hoặc in sẵn.

## Quy tắc chuyển nội dung

**Số**
- Giữ nguyên số lượng, đơn giá của báo giá cũ. Không làm tròn, không đổi.
- Trong bảng hàng, ghi số không có dấu ngăn cách: `3850000`.
- Ngày ghi dạng `2026-11-06`. Không ghi `06/11/2026`, vì máy cài kiểu Mỹ hiểu thành 11 tháng 6.
- Số điện thoại ghi có dấu cách: `0900 000 000`. Ghi liền thì Excel mất số 0 đầu.

**Dòng quy cách ở BG-06A, BG-06B**
- Mỗi ý một dòng, chỉ ghi ở cột tên. Không ghi ĐVT, SL, giá ở dòng này.
- Không gõ dấu gạch đầu dòng. Mẫu tự thêm. Dòng bắt đầu bằng dấu gạch sẽ bị Excel hiểu sai.
- **Mỗi dòng tối đa 32 ký tự.** Dài hơn thì tách thành 2 dòng, vì mẫu không tự tăng chiều cao dòng và chữ bị cắt khi in.
- Thứ tự gợi ý: Kích thước, Vật liệu, Bản mã, Hoàn thiện, Lưu ý.
- Dòng ghi chú bắt đầu bằng `Lưu ý:`. Mẫu tự in đậm nghiêng.
- Cột Sơn/Mạ kẽm của báo giá cũ đưa vào cột Hoàn thiện.
- Báo giá cũ chỉ có một đơn giá: đưa vào cột Sản xuất, để trống Hoàn thiện.
- Không sơn, mạ: để trống Hoàn thiện, thêm dòng `Lưu ý: không sơn.`

**Từ ngữ**
- Sửa lỗi chính tả, viết hoa lộn xộn. Không đổi nghĩa kỹ thuật.
- "li" đổi thành "mm" chỉ khi rõ là độ dày tính bằng mm. Mã thép, ký hiệu kích thước giữ nguyên.
- ĐVT lấy trong danh sách: cái, bộ, chi tiết, tấm, kg, m, m², lô, gói.
- Vật liệu ở BG-01, 03, 04 lấy trong danh sách nếu khớp: Thép CT3/SS400, Thép SPCC, Thép mạ kẽm, Inox 201, Inox 304, Inox 310, Inox 316, Nhôm, Theo bản vẽ. Không khớp thì ghi `Theo bản vẽ` và nêu ở mục Điểm khác.
- Gọi khách là Quý khách, Quý đơn vị.
- Không giới thiệu sơn, mạ là năng lực chính.

**Không chuyển từ báo giá cũ**
- Tên công ty, địa chỉ, số điện thoại, email, số tài khoản. Mẫu đã in sẵn thông tin đúng.
- Câu điều khoản, ghi chú, phương thức thanh toán, hiệu lực. Mẫu theo DK-01. Chỉ lấy số ngày giao để điền `[__]`.
- Số báo giá cũ không dùng làm số mới. Từ 01/12/2026 xin mã hồ sơ từ người cấp số. Trước ngày đó, người lập dùng số theo cách đang làm và chọn tay Loại đơn ở BG-01, 02, 03.
- "Bảo hành 24 tháng" không dùng, kể cả khi báo giá cũ có ghi.

**Bảo hành:** không tự điền thời hạn. Báo giá cũ không ghi thì để `[CẦN XÁC NHẬN]`.

## Định dạng trả lời

Trả về đúng 5 phần.

**1. Kết luận:** mẫu nên dùng, loại đơn, thuế suất, lý do.

**2. Phiếu ô cần điền:** bảng gồm Ô, Nội dung, Nguồn. Nguồn ghi "báo giá cũ" hoặc "người lập điền".

**3. Bảng hàng để dán:** một bảng, các cột đúng thứ tự ở Bản đồ ô, không có cột STT, không có Thành tiền. Ô trống để trống. BG-02 tách bảng tên hạng mục và bảng ĐVT, SL, Đơn giá. BG-05 mỗi nhóm một bảng.

**4. Điểm khác cần người lập quyết định:** mỗi điểm ghi "Báo giá cũ", "Mẫu chuẩn", "Cần làm". Luôn xét: thanh toán, mốc tính thời gian giao, hiệu lực, nơi giao, thuế, ưu đãi, giá có còn áp dụng không.

**5. Đối chiếu số:** tổng trước thuế, thuế, tổng sau thuế của báo giá cũ và số tính lại. Ghi "Khớp" hoặc số chênh.

## Tiêu chí đạt

- Số lượng, đơn giá trùng báo giá cũ.
- Tổng trong mẫu khớp mục đối chiếu số.
- Khung vàng trong Excel báo "Đủ thông tin, có thể xuất PDF".
- Không còn `[__]`, `[CẦN XÁC NHẬN]`.
- PDF không bị cắt chữ.
- Dòng hiệu lực ghi đúng ngày hết hạn.

## Lỗi đã gặp

| Sai | Đúng | Vì sao | Căn cứ |
|---|---|---|---|
| Dòng quy cách dài 50 ký tự | Tách dòng, tối đa 32 ký tự | Chữ bị cắt khi in | Thử báo giá chân rulo, 2026-11-06 |
| Ghi ngày `06/11/2026` | Ghi `2026-11-06` | Máy kiểu Mỹ hiểu thành 11/06, hạn hiệu lực sai theo | Thử 2026-11-06 |
| Ghi số điện thoại liền `0900000000` | Ghi có dấu cách `0900 000 000` | Excel coi là số, mất số 0 đầu | Thử 2026-11-06 |
| Dán 4 cột vào BG-02 từ ô A15 | Gõ tên ở cột A, dán 3 cột từ C15 | Ô gộp làm mất ĐVT, SL, đơn giá | Thử 2026-11-06 |
| Chép điều khoản cũ vào mẫu | Giữ điều khoản của mẫu, nêu điểm khác | DK-01 là nguồn chuẩn | QĐ-86 |
| Giữ số di động người gửi của báo giá cũ | Dùng hotline in sẵn | Số trên mẫu là số chính thức | Báo giá tháng 9/2026 |
| Áp ưu đãi cho đơn có hàn, lắp ráp | Chỉ đơn cắt laser tấm, ống | Đơn sản xuất không có ưu đãi | QĐ-65 |

## Khi nào phải hỏi người có thẩm quyền

- Giá cũ đã quá hiệu lực: người lập xác nhận giá trước khi gửi lại.
- Điều khoản thanh toán của khách khác mặc định: theo hợp đồng, PO, hoặc người cấp số báo. Không chép số ngày của khách khác.
- Đổi tài khoản, đơn vị nhận in sẵn: không sửa.
- Báo giá USD, doanh nghiệp chế xuất, song ngữ: hỏi Giám đốc.

## Trang năng lực gửi kèm

Gửi GT-01 ở lần báo giá đầu cho doanh nghiệp mới, đơn gia công, hoặc khi khách hỏi có xưởng không. Không cần gửi cho khách cũ, thợ lẻ, hộ gia đình. Khách thiết bị inox, bếp, dự án: trang này chưa hợp, hỏi người phụ trách.

## Nguồn và phiên bản

Phiên bản 0.1 · 2026-11-06 · Trạng thái: `ban-nhap`, Giám đốc yêu cầu đưa vào thư mục biểu mẫu để nhân sự dùng.
Mẫu áp dụng: BG-01, BG-03 bản 3.1, BG-02, 04, 05 bản 3.0, BG-06A, 06B bản 1.1. Mẫu đổi vị trí ô thì phải sửa Bản đồ ô.
Đã thử: điền cả 7 mẫu theo Bản đồ ô, khung vàng báo đủ. Hai báo giá thật tháng 9/2026 đưa vào BG-06A khớp tổng tiền. Chưa thử trên ChatGPT, Gemini.
