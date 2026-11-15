# Chọn mẫu báo giá VK Group

> Mẫu gốc là file `.xltm`: nhấp đúp sẽ mở ra bản mới, file gốc không bị đổi. Mỗi loại đơn, loại khách một mẫu mặc định (QĐ-116, QĐ-119).

## Chọn mẫu nào

File ở `01-DANG-DUNG\BG-BAO-GIA\`. Chỉ cần trả lời hai câu: khách nào, đơn loại gì.

| Khách, đơn | Dùng mẫu | Ai thường lập |
|---|---|---|
| Khách cơ sở gia công nhỏ, đơn cắt, chấn lẻ, tối đa 18 mục | `BG-03_Cat-chan` | Nhân viên kỹ thuật |
| Khách doanh nghiệp, đối tác, đơn cắt, chấn, gia công. Đơn cắt, chấn trên 18 mục | `BG-01_Tieu-chuan` | Nhân viên kỹ thuật, Giám đốc, Phó Giám đốc |
| Sản phẩm theo bản vẽ, vừa 1 trang | `BG-06A_Theo-ban-ve-mot-trang` | Nhân viên kỹ thuật |
| Sản phẩm theo bản vẽ, danh mục hàng dài quá 1 trang | `BG-06B_Theo-ban-ve-co-bang-ke` | Giám đốc, Phó Giám đốc |
| Thiết bị inox, hàng phân phối | `BG-04_Thiet-bi-inox` | Giám đốc, Phó Giám đốc |
| Dự án, bếp trọn gói, thanh toán nhiều đợt | `BG-05_Du-an-tron-goi` | Giám đốc, Phó Giám đốc |

BG-06A, BG-06B tách đơn giá Sản xuất, Hoàn thiện và in sẵn thông tin chuyển khoản. BG-06B chỉ điền ở Bảng kê, bảng giá trang 1 tự lấy.

Không rõ đơn thuộc loại nào thì hỏi Phó Giám đốc, người phụ trách bộ biểu mẫu.

**BG-03** là mẫu thân thiện, chỉ 1 trang, không chèn thêm dòng. Khách doanh nghiệp, đối tác không dùng mẫu này, kể cả đơn cắt, chấn.

**BG-01** dài quá 1 trang thì tự sang trang 2: trang 2 có tên công ty ở đầu, chân trang, dòng tiêu đề bảng, ít nhất 1 dòng hàng, rồi tới phần tổng, điều khoản, chữ ký. Thông tin đơn hàng chỉ ở trang 1. Sau lần xuất PDF đầu, nếu sửa rồi xuất lại thì Excel không còn tự ngắt đúng chỗ: xem kỹ bản PDF, hoặc mở bản mới từ mẫu.

**Mẫu tham khảo:** `BG-02_Than-thien` ở `05-THAM-KHAO\BG-BAO-GIA\`, vẫn dùng được nhưng không phải mẫu mặc định.

## Số báo giá

Từ 01/12/2026, xin mã hồ sơ từ người cấp số (Phó Giám đốc kiêm Trưởng phòng Kinh doanh, Giám đốc), rồi ghi vào ô Số báo giá dạng `26110421-11-HGT`: `26110421` là mã hồ sơ, `11` là báo giá lượt 1, `HGT` là mã đối tác. Sửa báo giá thì giữ nguyên mã hồ sơ, đổi thành `12`, `13`. Áp dụng cho mọi mẫu, gồm BG-06A, BG-06B.

## Ưu đãi

- Chỉ áp cho **đơn cắt laser tấm, ống** từ 5.000.000 đ trước thuế, không áp cho đơn sản xuất.
- BG-01, BG-03 tự đọc loại đơn từ số thứ 7 của số báo giá: khối ưu đãi chỉ in với Đơn cắt, chấn. Khung vàng có ô chọn tay loại đơn và ô Bật, Tắt khi hết chương trình.
- BG-04, BG-05, BG-06A, BG-06B không có ưu đãi.

## Thanh toán, hiệu lực, thuế

- Điều khoản theo DK-01 (QĐ-86). BG-01, BG-03 tự đổi theo loại đơn: Đơn cắt, chấn, hàng thương mại 50% trước khi giao; đơn sản xuất, kết cấu thép 50% trong 07 ngày kể từ ngày xuất hóa đơn. Hiệu lực 15 ngày, kết cấu thép 07 ngày.
- Thuế GTGT: sản phẩm bao gồm vật tư 10%; dịch vụ gia công không bao gồm vật tư 8%. BG-01, BG-03 tự đổi theo ô Vật tư; các mẫu khác sửa ở ô cạnh dòng Thuế GTGT.
- Khách có thỏa thuận riêng về số ngày thanh toán: người cấp số báo cho người lập, sửa ở điều khoản.

## Trang năng lực gửi kèm báo giá

File ở `01-DANG-DUNG\GT-GIOI-THIEU-NANG-LUC\`.

- **Gửi:** lần báo giá đầu tiên cho doanh nghiệp mới, đơn gia công. Khi khách hỏi có xưởng không.
- **Cách gửi:** file `GT-01_..._v1.0.pdf` đi cùng báo giá. Trên Zalo, gửi thêm ảnh `_xem-nhanh.png` để khách xem ngay. Báo giá giấy thì in ở mặt sau.
- **Không cần gửi:** khách cũ, thợ lẻ, hộ gia đình.
- **Khách thiết bị inox, bếp, dự án:** trang này nói về gia công, chưa hợp, xin hỏi người phụ trách.

## Xác nhận đơn hàng (dùng thử 1 tháng, QĐ-102)

File `DH-01_Xac-nhan-don-hang` ở `01-DANG-DUNG\DH-DON-HANG-HOP-DONG\`. Dán báo giá vào sheet Từ báo giá, xem cách dùng ở sheet Hướng dẫn.

- Đơn từ 50 triệu trước thuế phải lập hợp đồng DH-02. DH-02 chưa cho dùng, nên gặp đơn này thì hỏi Giám đốc.
- Tài khoản nhận tiền: chỉ dùng ACB (QĐ-103).
- Trước 01/12/2026, số kiểu cũ thì khung vàng báo chưa đúng loại 2, Số không tự lên, chọn tay điều khoản thanh toán.

## Nghiệm thu, thanh lý, bảo hành (dùng thử 1 tháng, QĐ-97)

File ở `01-DANG-DUNG\NT-NGHIEM-THU-THANH-LY\`. Điền ở sheet Điền thông tin, xem cách dùng ở sheet Hướng dẫn.

| Trường hợp | Dùng mẫu |
|---|---|
| Nghiệm thu hàng hóa, thiết bị theo báo giá đã đặt hàng | `NT-01_Bien-ban-nghiem-thu` |
| Thanh lý hợp đồng sau nghiệm thu | `NT-02_Bien-ban-thanh-ly` |
| Cấp phiếu bảo hành cho Quý khách | `NT-03_Phieu-bao-hanh` |

- NT-02 dùng trước, chưa qua luật sư, kế toán. Chỉ lập khi hợp đồng chọn lập biên bản thanh lý (QĐ-100).
- Trong tháng dùng thử, thấy lỗi in hoặc lỗi câu chữ thì báo người phụ trách, không sửa trên mẫu.
- Trước 01/12/2026, báo giá dùng số kiểu cũ nên số chứng từ không tự lên: gõ tay, khung vàng có thể nhắc sai loại chứng từ nhưng vẫn in được.

## Nhờ AI lập nội dung vào mẫu

Thư mục `BG-BAO-GIA`, `GT-GIOI-THIEU-NANG-LUC`, `DH-DON-HANG-HOP-DONG`, `NT-NGHIEM-THU-THANH-LY` đều có thư mục con `00-DUNG-VOI-AI`. Trong đó có hướng dẫn, skill và wiki để nhờ ChatGPT, Gemini, Claude chuyển báo giá đang dùng trước đây vào mẫu chuẩn. Đọc `00-HUONG-DAN-SU-DUNG.md` trước khi dùng. AI chỉ lập nội dung, người lập điền vào Excel và kiểm trước khi gửi.

## Trong thư mục này

- `00-WIKI-BO-BIEU-MAU.md`: bối cảnh, cách làm, vai trò từng file, quy tắc của cả bộ. Mỗi thư mục mẫu có thêm file `00-WIKI_...md` riêng.
- `BG_so-sanh-mau-1-den-5.png`: xem nhanh mẫu 1 đến 5, bản màu và bản in đen trắng. Mẫu 2 nay là mẫu tham khảo.
- `BG-06_xem-nhanh.png`: xem nhanh BG-06A, BG-06B.
- `vi-du-bao-gia\`, `vi-du-don-hang\`, `vi-du-nghiem-thu\`: PDF ví dụ. Số liệu đều giả, không gửi khách.

Bản trắng in ra viết tay được nằm ở `01-DANG-DUNG\BG-BAO-GIA\PDF\`.
