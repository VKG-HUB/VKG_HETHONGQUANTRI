# Wiki nhóm báo giá BG

Phân quyền: Mức 1 · Cập nhật: 2026-11-06 · Trạng thái: ban-nhap, Giám đốc yêu cầu đưa cho nhân sự (QĐ-113); mẫu mặc định theo QĐ-116

Quy tắc chung của cả bộ ở `00-WIKI-BO-BIEU-MAU.md`. Bài này chỉ nói riêng về báo giá.

## 1. Bối cảnh

Báo giá là tờ giấy đầu tiên khách cầm trong tay. Mỗi loại đơn, loại khách có một mẫu mặc định, tất cả 6 mẫu (QĐ-116, QĐ-119). Nhân viên kỹ thuật lập báo giá gia công nhỏ lẻ nắm BG-03, BG-01, BG-06A. Giám đốc, Phó Giám đốc lập báo giá dự án, đơn lớn, khách mới.

Người dùng: người lập báo giá, sau khi đã có đơn giá. Mẫu không tự tính đơn giá.

## 2. Cách thực hiện

1. Chọn mẫu theo mục 3.
2. Từ 01/12/2026, xin mã hồ sơ từ người cấp số. Ghi ở ô Số báo giá dạng `26110421-11-HGT`. Sửa báo giá thì giữ mã hồ sơ, đổi `11` thành `12`, `13`.
3. Nhấp đúp file `.xltm`. Có thanh vàng thì bấm Enable Content. Lưu ngay với tên `VKG_BaoGia_<số báo giá>_<tên khách>.xlsm`.
4. Điền ở sheet **Báo giá**: các ô gạch chấm và bảng hạng mục. Số thứ tự, thành tiền, thuế, tổng cộng, Bằng chữ, hạn hiệu lực tự tính.
5. Sửa hết chỗ `[__]` trong điều khoản. Bảo hành ghi theo từng sản phẩm.
6. Cần thêm dòng: sao chép một dòng trống, nhấn chuột phải, chọn Chèn ô đã sao chép, ở giữa bảng.
7. Khung vàng báo "Đủ thông tin, có thể xuất PDF" thì xuất PDF. Mở PDF xem lại rồi gửi khách.

Máy cần có Excel và font Saira. Logo chỉ thấy trong bản in hoặc PDF, không thấy trên ô Excel.

## 3. Vai trò từng file

| File | Dùng khi | Số dòng hàng |
|---|---|---|
| `BG-01_Tieu-chuan_v4.1.xltm` | Khách doanh nghiệp, đối tác, gồm cả đơn cắt, chấn. Đơn cắt, chấn trên 18 mục | 10, chèn thêm được |
| `BG-03_Cat-chan_v4.1.xltm` | Khách cơ sở gia công nhỏ, đơn cắt, chấn lẻ. Thân thiện, chỉ 1 trang | Tối đa 18, không chèn thêm |
| `BG-04_Thiet-bi-inox_v4.1.xltm` | Thiết bị inox, có cả hàng phân phối | 8 |
| `BG-05_Du-an-tron-goi_v4.1.xltm` | Dự án, bếp trọn gói, thanh toán nhiều đợt | Nhóm A 4, B 4, C 3 |
| `BG-06A_Theo-ban-ve-mot-trang_v2.1.xltm` | Sản phẩm theo bản vẽ, nhiều dòng quy cách, vừa 1 trang | 15 |
| `BG-06B_Theo-ban-ve-co-bang-ke_v2.1.xltm` | Sản phẩm theo bản vẽ, danh mục dài quá 1 trang | 14 ở trang 1, 40 ở Bảng kê |

| File, sheet khác | Vai trò |
|---|---|
| Sheet Báo giá | Nơi điền và in |
| Sheet Hướng dẫn | Cách dùng ngay trong file |
| Sheet ẩn DanhMuc | Danh sách cho ô chọn. Không mở, không sửa |
| `PDF\BG-01_Tieu-chuan_v4.1_ban-trang.pdf` | Bản trắng BG-01, in ra viết tay |
| `PDF\BG-03_Cat-chan_v4.1_ban-trang.pdf` | Bản trắng BG-03 |
| `PDF\BG-04_Thiet-bi-inox_v4.1_ban-trang.pdf` | Bản trắng BG-04 |
| `PDF\BG-05_Du-an-tron-goi_v4.1_ban-trang.pdf` | Bản trắng BG-05 |
| `PDF\BG-06A_Theo-ban-ve-mot-trang_v2.1_ban-trang.pdf` | Bản trắng BG-06A |
| `PDF\BG-06B_Theo-ban-ve-co-bang-ke_v2.1_ban-trang.pdf` | Bản trắng BG-06B |
| `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md` | Hướng dẫn nhờ AI, câu lệnh mẫu |
| `00-DUNG-VOI-AI\SKILL_chuyen-bao-gia-mau-chuan.md` | Quy trình cho AI chuyển báo giá cũ vào mẫu |
| `00-DUNG-VOI-AI\WIKI_vkg-cot-loi.md` | Thông tin công ty, đưa cho AI cùng skill |
| `04-HUONG-DAN\vi-du-bao-gia\` | PDF ví dụ từng mẫu. Số liệu giả, không gửi khách |
| `05-THAM-KHAO\BG-BAO-GIA\` | BG-02: vẫn dùng được nhưng không phải mẫu mặc định (QĐ-116) |

## 4. Được làm, không được làm

| Được làm | Không được làm |
|---|---|
| Chọn mẫu mặc định theo loại đơn | Điền đè lên file mẫu gốc |
| Chọn tay Loại đơn ở khung vàng khi cần | In số tiền tạm ứng dưới Tổng cộng |
| Tắt ưu đãi ở khung vàng khi hết chương trình | Áp ưu đãi cho đơn sản xuất, đơn có hàn, lắp ráp |
| Lập hai báo giá khi đơn có hai mức thuế | Gõ tên hàng ở cả hai nơi trên BG-06B. Chỉ điền ở Bảng kê |
| Dùng bản trắng khi cần viết tay | Chép điều khoản, số điện thoại, tài khoản của báo giá cũ vào mẫu |
| Gửi Excel khi khách yêu cầu | Dùng số báo giá cũ làm số mới |

## 5. Quy tắc bắt buộc

**Loại đơn.** Đơn vừa cắt, chấn vừa hàn, lắp ráp, hoàn thiện là Đơn sản xuất. BG-01, BG-03 tự đọc số thứ 7 của số báo giá: 1, 3 là Đơn sản xuất, 2 là Đơn cắt, chấn, 4 là Kết cấu thép, 5 là Hàng thương mại.

**Điều khoản mặc định, theo DK-01:**

| Loại đơn | Thanh toán | Hiệu lực |
|---|---|---|
| Đơn cắt, chấn | Tạm ứng 50%; 50% còn lại trước khi giao | 15 ngày |
| Đơn sản xuất | Tạm ứng 50%; 50% còn lại trong 07 ngày kể từ ngày xuất hóa đơn | 15 ngày |
| Dự án, trọn gói | Theo tiến độ | 15 ngày |
| Đơn kết cấu thép | Như đơn sản xuất, hoặc theo tiến độ khi có hợp đồng | 07 ngày |
| Hàng thương mại | Như đơn cắt, chấn | 15 ngày |

**Thuế GTGT.** Sản phẩm bao gồm vật tư 10%. Dịch vụ gia công không bao gồm vật tư 8%. BG-01, BG-03 tự đổi theo ô Vật tư. Mẫu khác sửa ở ô cạnh dòng Thuế GTGT.

**Ưu đãi.** Chỉ cho đơn cắt laser tấm, ống từ 5.000.000 đ trước thuế. Khách chọn giảm 10% hoặc miễn phí giao hàng trong 15 km quanh Dĩ An, Biên Hòa. Ngoài 15 km hỗ trợ phí vận chuyển tối đa 5% giá trị đơn. Chỉ BG-01, BG-03 có khối ưu đãi. BG-04, 05, 06A, 06B không có.

**Hàng phân phối.** Ở BG-04 ghi Nguồn là `Phân phối`. Thiết bị lạnh, thiết bị làm bánh, máy rửa chén là hàng phân phối, xếp sau hàng tự chế tạo.

**BG-03.** Chỉ cho khách cơ sở gia công nhỏ. Tối đa 18 mục, 1 trang, không chèn thêm dòng. Khung vàng báo khi vượt, hoặc khi tên mục dài có thể sang trang 2. Khách doanh nghiệp, đối tác không dùng mẫu này.

**BG-01.** Dài quá 1 trang thì tự sang trang 2: tên công ty ở đầu, chân trang, dòng tiêu đề bảng, ít nhất 1 dòng hàng, rồi tới phần tổng, điều khoản, chữ ký. Thông tin đơn hàng chỉ ở trang 1. Sau lần xuất PDF đầu, nếu sửa rồi xuất lại thì Excel không còn tự ngắt đúng chỗ: xem kỹ bản PDF, hoặc mở bản mới từ mẫu.

**BG-05.** Tỷ lệ các đợt thanh toán phải đủ 100%.

**BG-06A, BG-06B.** Mỗi ý một dòng. Dòng quy cách tối đa 32 ký tự, không gõ dấu gạch đầu dòng. Không sơn, mạ thì để trống Hoàn thiện và ghi `Lưu ý: không sơn.`

**Gõ đúng để tránh lỗi.** Ngày gõ dạng `2026-11-06`. Số điện thoại gõ có dấu cách `0900 000 000`.

## 6. Quy định mở cần thực hiện

| Nội dung | Tình trạng | Cần làm |
|---|---|---|
| Đơn không rõ thuộc loại nào | Tùy đơn | Hỏi Phó Giám đốc, người phụ trách bộ biểu mẫu |
| Số báo giá trước 01/12/2026 | Chưa có mã hồ sơ | Dùng số theo cách đang làm, chọn tay Loại đơn ở BG-01, BG-03 |
| Thời gian giao | Theo từng đơn | Điền vào `[__]` |
| Bảo hành | Theo từng sản phẩm | Người có thẩm quyền quyết định, không tự điền |
| Số ngày khách trả sau | Theo mã khách | Người cấp số báo, rồi sửa ở điều khoản |
| Đơn có cả hai mức thuế | Tùy đơn | Lập hai báo giá hoặc hỏi kế toán |
| Giá cũ quá hiệu lực | Tùy đơn | Xác nhận lại giá trước khi gửi |
| Đổi điều khoản so với mẫu | Tùy đơn | Hỏi người có thẩm quyền |
| Báo giá USD, song ngữ, doanh nghiệp chế xuất | Chưa có mẫu cho dùng | Hỏi Giám đốc. Ngoại tệ phải có kế toán xác nhận |
| Trang năng lực gửi kèm | Tùy khách | Xem `00-WIKI_GT-GIOI-THIEU-NANG-LUC.md` |

## 7. Skill hướng dẫn AI xử lý

Dùng `00-DUNG-VOI-AI\SKILL_chuyen-bao-gia-mau-chuan.md`, cùng `WIKI_vkg-cot-loi.md` và báo giá cũ. Câu lệnh mẫu ở `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md`.

AI trả về 5 phần: Kết luận, Phiếu ô cần điền, Bảng hàng để dán, Điểm khác, Đối chiếu số. AI không tính giá mới, không đặt số báo giá. Người lập điền vào Excel và chịu trách nhiệm.

Đã thử: điền đủ 7 mẫu theo skill, khung vàng báo đủ; 2 báo giá thật vào BG-06A khớp tổng tiền. Chưa thử trên ChatGPT, Gemini.
