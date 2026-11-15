# Wiki xác nhận đơn hàng DH

Phân quyền: Mức 1 · Cập nhật: 2026-11-06 · Trạng thái: ban-nhap, Giám đốc yêu cầu đưa cho nhân sự (QĐ-113)

Quy tắc chung của cả bộ ở `00-WIKI-BO-BIEU-MAU.md`. Bài này chỉ nói riêng về đơn hàng.

## 1. Bối cảnh

Khách chốt đơn qua báo giá, PO, Zalo hoặc email. DH-01 ghi lại bản vẽ, số lượng, ngày giao, thanh toán để hai bên cùng hiểu một cách.

DH-01 bản 1.1 đang dùng thử 1 tháng từ 2026-11-06.

Người dùng: người phụ trách đơn. Người ký: người được Giám đốc ủy quyền.

## 2. Cách thực hiện

1. Kiểm giá trị đơn. Từ 50 triệu trước thuế, hoặc khách yêu cầu hợp đồng, thì dừng và hỏi Giám đốc.
2. Xin số chứng từ từ người cấp số.
3. Nhấp đúp file `.xltm`. Có thanh vàng thì bấm Enable Content. Lưu ngay với tên mới.
4. Lấy hàng:
   - Có báo giá Excel theo mẫu chuẩn: vào sheet **Từ báo giá**, dán đặc biệt, chọn Giá trị, vào ô A1. Mẫu tự nhận BG-01 đến BG-06.
   - Không có báo giá theo mẫu: nhập ở sheet **Bảng kê**, dán từ ô B12, 5 cột: Tên hàng, Quy cách, ĐVT, SL, Đơn giá. Tối đa 40 dòng.
5. Điền sheet **Xác nhận**: các ô gạch chấm, khung vàng bên phải.
6. Chọn thanh toán ở khung vàng:
   - Để Theo loại đơn: mẫu tự chọn theo số mảng trong số chứng từ.
   - Khách trả sau: chọn TT4 hoặc TT5, ghi số ngày lấy ở sổ hồ sơ.
   - Hợp đồng, PO ghi riêng: chọn TT3.
7. Có khác báo giá thì ghi ở ô Điểm khác.
8. Khung vàng không còn báo thiếu thì xuất PDF, gửi Quý khách. Ghi số vào sổ hồ sơ theo cách người cấp số dặn.

## 3. Vai trò từng file

| File, sheet | Vai trò |
|---|---|
| `DH-01_Xac-nhan-don-hang_v2.1.xltm` | File mẫu Excel |
| Sheet Xác nhận | Trang điền và in |
| Sheet Bảng kê | Danh sách hàng khi không dán từ báo giá, hoặc đơn dài |
| Sheet Từ báo giá | Nơi dán giá trị báo giá vào ô A1 |
| Sheet Hướng dẫn | Cách dùng ngay trong file |
| Sheet ẩn TachBG, DanhMuc | Mẫu tự dùng. Không mở, không sửa |
| `PDF\DH-01_Xac-nhan-don-hang_v2.1_ban-trang.pdf` | Bản trắng, in ra viết tay |
| `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md` | Hướng dẫn nhờ AI, câu lệnh mẫu |
| `00-DUNG-VOI-AI\SKILL_lap-xac-nhan-don.md` | Quy trình cho AI lập nội dung DH-01 |
| `00-DUNG-VOI-AI\WIKI_vkg-cot-loi.md` | Thông tin công ty, đưa cho AI cùng skill |
| `04-HUONG-DAN\vi-du-don-hang\` | PDF ví dụ đơn thường, đơn dài. Số liệu giả, không gửi khách |

## 4. Được làm, không được làm

| Được làm | Không được làm |
|---|---|
| Dán đặc biệt, chọn Giá trị | Dán bằng Ctrl+V thường |
| Chọn TT3, TT4, TT5 khi đúng căn cứ | Chép số ngày thanh toán của khách khác |
| Ghi điểm khác với báo giá ở ô Điểm khác | Tự đổi tỷ lệ, số ngày thanh toán |
| Báo lỗi cho người phụ trách trong tháng dùng thử | Gỡ khóa công thức, câu điều khoản, thông tin công ty |
| Hỏi Giám đốc khi đơn cần hợp đồng | Dùng DH-01 thay hợp đồng cho đơn từ 50 triệu |

## 5. Quy tắc bắt buộc

- DH-01 chỉ dùng cho đơn dưới 50 triệu trước thuế và khách không yêu cầu hợp đồng.
- Thứ tự thanh toán: hợp đồng hoặc PO đã ký, rồi thỏa thuận theo mã khách trong sổ hồ sơ, rồi mặc định theo loại đơn.
- Thuế: Việt Khoa cấp vật tư 10%. Quý khách cấp vật tư 8%. Doanh nghiệp chế xuất chọn 0% ở khung vàng.
- Quý khách cấp vật tư: lấy Quý khách ký xác nhận trên mẫu hoặc xác nhận bằng email. Pháp luật yêu cầu hợp đồng gia công lập bằng văn bản, ở mọi giá trị.
- Tài khoản nhận tiền chỉ dùng ACB.
- Số tiền phải khớp báo giá. Gửi Quý khách bằng PDF.
- Điều khoản phạt, khiếu nại, hủy đơn, bất khả kháng, tranh chấp chỉ dùng trong DH-02. Không tự thêm vào DH-01.

## 6. Quy định mở cần thực hiện

| Nội dung | Tình trạng | Cần làm |
|---|---|---|
| Đơn từ 50 triệu, khách yêu cầu hợp đồng | DH-02 chưa cho dùng | Hỏi Giám đốc |
| Dùng thử DH-01 | 1 tháng từ 2026-11-06, in máy thật và đơn thật kiểm trong lúc dùng | Thấy lỗi in, lỗi câu chữ thì báo người phụ trách |
| Số chứng từ trước 01/12/2026 | Số kiểu cũ: khung vàng báo chưa đúng loại 2, Số không tự lên | Chọn tay điều khoản thanh toán |
| Khách xin trả sau, chưa có trong sổ | Chưa có thỏa thuận | Hỏi người có thẩm quyền |
| Đổi điều khoản so với báo giá | Tùy đơn | Hỏi người có thẩm quyền |

## 7. Skill hướng dẫn AI xử lý

Dùng `00-DUNG-VOI-AI\SKILL_lap-xac-nhan-don.md`, cùng `WIKI_vkg-cot-loi.md` và báo giá, PO hoặc tin nhắn chốt đơn. Câu lệnh mẫu ở `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md`.

AI kết luận đơn có dùng được DH-01 không, lập phiếu ô cần điền, nêu điểm khác. AI không đặt số chứng từ, không đổi điều khoản.

Báo giá cũ chưa theo mẫu thì tốt nhất chuyển sang mẫu chuẩn trước, bằng skill ở thư mục `BG-BAO-GIA`.

Skill này chưa thử trên đơn thật, chưa thử trên ChatGPT, Gemini.
