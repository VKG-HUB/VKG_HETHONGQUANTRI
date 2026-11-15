---
name: vkg-bm-lap-nghiem-thu-bao-hanh
description: Lập nội dung Biên bản nghiệm thu NT-01, Biên bản thanh lý NT-02, Phiếu bảo hành NT-03 của Việt Khoa từ báo giá, hợp đồng, biên bản cũ. Đầu ra là kết luận dùng mẫu nào và phiếu ô cần điền theo sheet Điền thông tin. Dùng khi người dùng nói "nghiệm thu", "thanh lý hợp đồng", "phiếu bảo hành", "NT-01", "NT-02", "NT-03". Dùng được với mọi AI, không cần công cụ riêng.
---

# Lập nghiệm thu, thanh lý, bảo hành

Mẫu NT-01, NT-02, NT-03 bản 1.0 đang **dùng thử 1 tháng từ 2026-11-06** (QĐ-97). NT-02 chưa qua luật sư, kế toán xem.

## Vai trò của AI

AI chọn mẫu, sắp nội dung vào sheet Điền thông tin, nêu chỗ thiếu. AI không đặt số chứng từ, không tự ghi kết quả nghiệm thu, không tự chọn thời hạn bảo hành, không tự sửa file mẫu.

Trả lời bằng tiếng Việt có dấu, câu ngắn.

## Chọn mẫu

| Trường hợp | Mẫu | Ai ký bên Việt Khoa |
|---|---|---|
| Đơn sản xuất, dự án. Đơn cắt, chấn nhỏ chỉ dùng khi Quý khách yêu cầu | NT-01 Biên bản nghiệm thu | Người phụ trách kỹ thuật và Phó Giám đốc |
| Đơn có hợp đồng ký và hợp đồng chọn lập biên bản thanh lý. Lập sau nghiệm thu | NT-02 Biên bản thanh lý | Giám đốc |
| Cấp phiếu bảo hành cho Quý khách | NT-03 Phiếu bảo hành | Phó Giám đốc |

## Đầu vào cần có

- Báo giá đã đặt hàng. NT-01, NT-03 tự lấy hàng khi dán vào sheet **Từ báo giá**.
- Hợp đồng, số hợp đồng nếu có.
- Biên bản cũ để lấy nội dung, nếu có.
- File `WIKI_vkg-cot-loi.md`.

## Quy trình

1. Chọn mẫu theo bảng trên.
2. Có báo giá Excel theo mẫu chuẩn: nhắc người lập dán giá trị sheet Báo giá vào ô A1 của sheet Từ báo giá. Báo giá cũ không theo mẫu: chuyển sang mẫu chuẩn trước bằng skill `vkg-bm-chuyen-bao-gia-mau-chuan`.
3. Lập phiếu ô cho sheet Điền thông tin theo Bản đồ ô.
4. Chỗ không có dữ liệu ghi `[CẦN XÁC NHẬN]`. Không suy ra ngày, tên người đại diện, mã số thuế.
5. Trả kết quả đúng Định dạng trả lời.

## Bản đồ ô

Chỉ điền ở sheet **Điền thông tin**, cột giá trị ngay cạnh nhãn. Trang in tự lên chữ và đã khóa.

**NT-01**

| Dòng | Nội dung |
|---|---|
| 8 đến 11 | Số biên bản, Ngày nghiệm thu, Nơi nghiệm thu, Số hợp đồng, đơn hàng |
| 13 đến 17 | Tên Quý khách, Địa chỉ, Mã số thuế, Đại diện 1, Đại diện 2 |
| 19, 20 | Người phụ trách kỹ thuật, Phó Giám đốc |
| 22, 23 | Bật hoặc Tắt: Vật liệu, bề mặt, mối hàn; Lắp đặt, chạy thử, hồ sơ |
| 24 đến 26 | Nội dung khác 1, 2; Tồn tại, thời hạn sửa |

Sheet Biên bản chỉ gõ được SL thực tế, Kết quả, Ghi chú. Các ô này do người kiểm ghi, AI không điền. Đơn trên 7 dòng hàng: in thêm sheet Bảng kê.

**NT-02**

| Dòng | Nội dung |
|---|---|
| 8 đến 15 | Số biên bản, Ngày lập, Nơi lập, Số hợp đồng, Ngày ký, Số biên bản nghiệm thu, Ngày nghiệm thu, Số phiếu bảo hành |
| 17 đến 20 | Tên Quý khách đúng trên hợp đồng, Địa chỉ, Mã số thuế, Đại diện |
| 22 đến 26 | Giá trị hợp đồng, Phát sinh tăng, Giảm trừ, Bên A đã thanh toán, Thời hạn thanh toán phần còn lại |

Giá trị ghi bằng đồng, gồm thuế GTGT. Giá trị thanh lý, phần còn lại, bằng chữ tự tính. Viết nhẹ nhàng, tránh chữ "nợ".

**NT-03**

| Dòng | Nội dung |
|---|---|
| 8 đến 14 | Số phiếu, Ngày phát hành, Số biên bản nghiệm thu, Tên Quý khách, Địa chỉ, Dự án, Phó Giám đốc |
| 16 đến 18 | Tính từ ngày giao hàng hoặc ngày xuất hóa đơn; Ngày đó là; Lấy từ dòng số |
| 20 đến 27 | Bật hoặc Tắt các trường hợp không bảo hành, trường hợp khác |
| Từ 30 | Từng sản phẩm: In phiếu, Tháng, Phạm vi bảo hành, Nguồn |

- Mặc định 12 tháng, đổi được từng sản phẩm. Người có thẩm quyền quyết định thời hạn, AI chỉ chép khi báo giá hoặc hợp đồng có ghi.
- Không ghi "bảo hành 24 tháng".
- Vật tư Quý khách cấp: bật dòng "Lỗi từ vật tư do Quý khách cấp".
- Hàng phân phối: Nguồn chọn Phân phối, phiếu tự ghi Theo hãng.
- Dòng không bảo hành, ví dụ vận chuyển: chọn Tắt ở cột In phiếu.
- Đơn trên 14 sản phẩm: lập thêm phiếu, nhập Lấy từ dòng số.

Ngày ghi dạng `2026-11-06`. Không ghi `06/11/2026`, vì máy kiểu Mỹ hiểu thành 11 tháng 6.

## Số chứng từ

Dạng `26110421-61-HGT` cho nghiệm thu, `-71-` thanh lý, `-81-` bảo hành. Người cấp số báo, AI không đặt. Trước 01/12/2026 số không tự lên: gõ tay, khung vàng có thể nhắc sai loại nhưng vẫn in được.

## Định dạng trả lời

**1. Kết luận:** dùng mẫu nào, lý do.

**2. Phiếu ô cần điền:** bảng gồm Dòng, Nội dung, Giá trị, Nguồn.

**3. Chỗ còn thiếu.**

**4. Việc người lập phải làm:** dán báo giá, xin số, kiểm khung vàng, in, ký.

## Tiêu chí đạt

Khung vàng không còn báo thiếu. Tên, hàng, số lượng khớp báo giá và hợp đồng. Kết quả nghiệm thu do người kiểm ghi.

## Lỗi đã gặp

| Sai | Đúng | Vì sao | Căn cứ |
|---|---|---|---|
| Lập NT-02 cho mọi hợp đồng | Chỉ khi hợp đồng chọn lập biên bản | Mặc định hợp đồng tự thanh lý khi xong nghĩa vụ | QĐ-100 |
| Ghi một thời hạn bảo hành chung | Ghi từng sản phẩm | Quy tắc chung của công ty | QĐ-12, QĐ-27 |
| Điền trên trang in | Điền ở sheet Điền thông tin | Trang in đã khóa | QĐ-94 |

## Khi nào phải hỏi người có thẩm quyền

NT-02 có phần giá trị chưa khớp, thời hạn bảo hành khác báo giá, Quý khách yêu cầu thêm điều khoản, Phó Giám đốc ký có cần giấy ủy quyền không.

Trong tháng dùng thử, thấy lỗi in hoặc lỗi câu chữ thì báo người phụ trách, không sửa trên mẫu.

## Nguồn và phiên bản

Phiên bản 0.1 · 2026-11-06 · Trạng thái: `ban-nhap`. Theo NT-01, 02, 03 bản 1.0, QĐ-91, QĐ-94, QĐ-95, QĐ-97, QĐ-100. Chưa thử trên đơn thật, chưa thử trên ChatGPT, Gemini.
