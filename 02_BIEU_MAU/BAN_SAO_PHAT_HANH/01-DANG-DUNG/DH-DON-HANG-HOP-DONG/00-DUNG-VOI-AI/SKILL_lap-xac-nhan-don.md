---
name: vkg-bm-lap-xac-nhan-don
description: Lập nội dung Xác nhận đơn hàng DH-01 của Việt Khoa từ báo giá đã chốt, PO, Zalo hoặc email. Đầu ra là kết luận có dùng được DH-01 không, phiếu ô cần điền và bảng hàng để dán. Dùng khi người dùng nói "xác nhận đơn hàng", "DH-01", "khách đã chốt đơn", "lập đơn từ báo giá". Dùng được với mọi AI, không cần công cụ riêng.
---

# Lập Xác nhận đơn hàng DH-01

Mẫu DH-01 bản 1.1 đang **dùng thử 1 tháng từ 2026-11-06** (QĐ-102, QĐ-103).

## Vai trò của AI

AI kiểm đơn có dùng được DH-01 không, sắp nội dung đúng ô, nêu điểm khác với báo giá. AI không đặt số chứng từ, không đổi tỷ lệ, số ngày thanh toán, không tự sửa file mẫu.

Trả lời bằng tiếng Việt có dấu, câu ngắn.

## Dùng khi / Không dùng khi

**Dùng khi:** đơn đã chốt qua báo giá, PO, Zalo, email, cần chốt bản vẽ, số lượng, ngày giao.

**Không dùng DH-01 khi:**
- Đơn từ 50 triệu trước thuế.
- Quý khách yêu cầu hợp đồng.

Hai trường hợp này phải lập hợp đồng DH-02. DH-02 chưa cho dùng, nên dừng lại và báo người lập hỏi Giám đốc.

## Đầu vào cần có

- Báo giá đã đặt hàng, hoặc PO, tin nhắn chốt đơn.
- File `WIKI_vkg-cot-loi.md`.
- Số chứng từ do người cấp số báo. Thiếu thì để `[CẦN XÁC NHẬN]`.

## Quy trình

1. **Kiểm giá trị đơn.** Lấy tổng trước thuế. Từ 50 triệu thì dừng theo mục trên.
2. **Có báo giá bằng file Excel theo mẫu chuẩn:** không cần AI chép hàng. Người lập mở DH-01, vào sheet **Từ báo giá**, dán giá trị sheet Báo giá vào ô A1. Mẫu tự nhận BG-01 đến BG-06.
3. **Có báo giá cũ, PO, tin nhắn:** AI lập bảng hàng cho sheet **Bảng kê**. Đơn vừa có báo giá cũ thì tốt nhất chuyển sang mẫu chuẩn trước bằng skill `vkg-bm-chuyen-bao-gia-mau-chuan`.
4. **So đơn với báo giá.** Có điểm khác thì nêu để ghi ở ô Điểm khác. Tỷ lệ, số ngày không tự đổi.
5. **Xác định thanh toán** theo thứ tự: hợp đồng hoặc PO đã ký → thỏa thuận theo mã khách trong sổ hồ sơ → mặc định theo loại đơn.
6. **Xác định thuế.** Việt Khoa cấp vật tư 10%. Quý khách cấp vật tư 8%. Doanh nghiệp chế xuất chọn 0% ở khung vàng.
7. **Quý khách cấp vật tư:** nhắc lấy Quý khách ký xác nhận trên mẫu hoặc xác nhận bằng email. Pháp luật yêu cầu hợp đồng gia công lập bằng văn bản, ở mọi giá trị.
8. **Trả kết quả** đúng Định dạng trả lời.

## Bản đồ nhập

| Sheet | Nhập gì |
|---|---|
| Từ báo giá | Dán giá trị báo giá vào ô A1 |
| Xác nhận | Các ô gạch chấm, khung vàng bên phải: số, thanh toán, chức danh người ký |
| Bảng kê | Khi không có báo giá: dán từ ô B12, 5 cột liền nhau: Tên hàng · Quy cách · ĐVT · SL · Đơn giá. Tối đa 40 dòng |

Công thức, câu điều khoản, thông tin công ty đã khóa. Không gỡ khóa.

Khung thanh toán:
- Để Theo loại đơn: mẫu tự chọn theo số mảng trong số chứng từ.
- Khách trả sau: chọn TT4 hoặc TT5, ghi số ngày lấy ở sổ hồ sơ.
- Hợp đồng, PO ghi riêng: chọn TT3.

Trước 01/12/2026, số kiểu cũ thì khung vàng báo chưa đúng loại 2, Số không tự lên, chọn tay điều khoản thanh toán.

## Định dạng trả lời

**1. Kết luận:** dùng được DH-01 hay phải hỏi Giám đốc, lý do.

**2. Cách lấy hàng:** dán từ báo giá hay nhập Bảng kê.

**3. Phiếu ô cần điền:** bảng gồm Nội dung, Giá trị, Nguồn.

**4. Bảng hàng để dán,** nếu cần.

**5. Điểm khác với báo giá.**

**6. Việc người lập phải làm:** xin số, kiểm khung vàng, xuất PDF, ghi số vào sổ hồ sơ.

## Tiêu chí đạt

Khung vàng không còn báo thiếu. Số tiền khớp báo giá. Thanh toán đúng thứ tự ưu tiên. Gửi Quý khách bằng PDF.

## Lỗi đã gặp

| Sai | Đúng | Vì sao | Căn cứ |
|---|---|---|---|
| Dùng DH-01 cho đơn từ 50 triệu | Hỏi Giám đốc | Đơn này cần hợp đồng, DH-02 chưa cho dùng | QĐ-87, QĐ-102 |
| Dán báo giá bằng Ctrl+V thường | Dán đặc biệt, chọn Giá trị | Mẫu cần giá trị, không cần công thức | Hướng dẫn DH-01 |
| Chép số ngày thanh toán của khách khác | Lấy theo mã khách trong sổ | Mỗi khách một thỏa thuận | QĐ-71 |
| Chọn ngân hàng khác | Chỉ dùng ACB | Vietinbank, Eximbank đã bỏ | QĐ-103 |

## Khi nào phải hỏi người có thẩm quyền

Đơn từ 50 triệu, Quý khách yêu cầu hợp đồng, đổi điều khoản so với báo giá, khách xin trả sau mà chưa có trong sổ.

Trong tháng dùng thử, thấy lỗi in hoặc lỗi câu chữ thì báo người phụ trách, không sửa trên mẫu.

## Nguồn và phiên bản

Phiên bản 0.1 · 2026-11-06 · Trạng thái: `ban-nhap`. Theo DH-01 bản 1.1, QĐ-87, QĐ-102, QĐ-103. Chưa thử trên đơn thật, chưa thử trên ChatGPT, Gemini.
