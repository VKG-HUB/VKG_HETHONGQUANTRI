# Wiki bộ biểu mẫu văn phòng VKG

Phân quyền: Mức 1 · Cập nhật: 2026-11-06 · Trạng thái: ban-nhap, Giám đốc yêu cầu đưa cho nhân sự (QĐ-113)

Đọc bài này trước. Sau đó đọc file `00-WIKI_...md` trong thư mục mẫu cần dùng.

## 1. Bối cảnh

Trước đây mỗi người tự soạn giấy tờ nên mỗi lần một kiểu. Bộ biểu mẫu giúp mọi giấy tờ gửi khách cùng nhận diện, cùng điều khoản, tính tiền không sai, in rõ cả trên máy trắng đen.

Giấy tờ đi theo đúng thứ tự một đơn hàng:

| Bước | Giấy tờ | Thư mục |
|---|---|---|
| 1. Báo giá | BG-01, BG-03, BG-04, BG-05, BG-06A, BG-06B | `BG-BAO-GIA` |
| 2. Giới thiệu năng lực, gửi kèm khi cần | GT-01 | `GT-GIOI-THIEU-NANG-LUC` |
| 3. Chốt đơn | DH-01 | `DH-DON-HANG-HOP-DONG` |
| 4. Nghiệm thu | NT-01 | `NT-NGHIEM-THU-THANH-LY` |
| 5. Thanh lý, nếu hợp đồng chọn lập | NT-02 | `NT-NGHIEM-THU-THANH-LY` |
| 6. Bảo hành | NT-03 | `NT-NGHIEM-THU-THANH-LY` |

**Trạng thái mẫu:**

| Trạng thái | Mẫu |
|---|---|
| Đang dùng | BG-01, BG-03 bản 3.1, BG-04, BG-05 bản 3.0, BG-06A, BG-06B bản 1.1, GT-01 bản 1.0 |
| Tham khảo, không mặc định (QĐ-116) | BG-02 bản 3.0, ở `05-THAM-KHAO` |
| Dùng thử 1 tháng từ 2026-11-06 | DH-01 bản 1.1, NT-01, NT-02, NT-03 bản 1.0 |
| Chưa cho dùng, không có trong bộ này | DH-02 Hợp đồng, TT-01D, TT-01B, Invoice, Packing List, báo giá song ngữ, lệnh sản xuất, biên bản giao nhận |

## 2. Cách thực hiện

1. Mở `00-DANH-MUC-BIEU-MAU.xlsx`, hoặc `04-HUONG-DAN\00-CHON-MAU.md`, để biết dùng mẫu nào.
2. Đọc `00-WIKI_...md` trong thư mục mẫu đó.
3. Từ 01/12/2026, xin mã hồ sơ từ người cấp số trước khi lập.
4. Nhấp đúp file `.xltm`. Có thanh vàng thì bấm Enable Content. Excel mở một bản mới, file mẫu không đổi. Lưu ngay với tên mới, ở thư mục làm việc của mình.
5. Điền các ô gạch chấm. Muốn nhờ AI thì làm theo mục 7.
6. Xem khung vàng bên phải. Khung này báo còn thiếu gì và không in ra.
7. Xuất PDF: Tệp, Xuất, PDF. Mở PDF xem lại rồi mới gửi khách.

## 3. Vai trò từng file

| File, thư mục | Vai trò |
|---|---|
| `00-WIKI-BO-BIEU-MAU.md` | Bài này. Nói chung cho cả bộ |
| `00-DANH-MUC-BIEU-MAU.xlsx` | Danh mục để tìm mẫu |
| `01-DANG-DUNG\` | Các mẫu được phép dùng, chia theo 4 thư mục |
| `...\00-WIKI_<tên thư mục>.md` | Wiki riêng của nhóm mẫu đó |
| `...\*.xltm` | File mẫu Excel. Nhấp đúp để mở bản mới |
| `...\PDF\*_ban-trang.pdf` | Bản trắng, in ra viết tay |
| `...\00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md` | Hướng dẫn nhờ AI, câu lệnh mẫu |
| `...\00-DUNG-VOI-AI\SKILL_...md` | Quy trình cho AI: chọn mẫu, ô nào điền gì, lỗi cần tránh |
| `...\00-DUNG-VOI-AI\WIKI_vkg-cot-loi.md` | Thông tin chuẩn của công ty, đưa cho AI cùng skill |
| `04-HUONG-DAN\00-CHON-MAU.md` | Bảng chọn mẫu theo trường hợp |
| `04-HUONG-DAN\*.png` | Ảnh xem nhanh các mẫu báo giá |
| `04-HUONG-DAN\vi-du-...\` | PDF ví dụ. Số liệu giả, không gửi khách |
| `05-THAM-KHAO\` | Mẫu còn dùng được nhưng không phải mẫu mặc định (QĐ-116) |

## 4. Được làm, không được làm

| Được làm | Không được làm |
|---|---|
| Mở `.xltm`, lưu bản mới, điền ô gạch chấm | Sửa, lưu đè file trong thư mục mẫu |
| Nhờ AI sắp nội dung, rồi tự điền và kiểm | Nhờ AI sửa thẳng file `.xltm` |
| Gửi khách bằng PDF | Gửi file Excel, trừ khi khách yêu cầu |
| Báo Phó Giám đốc, người phụ trách bộ biểu mẫu, khi thấy lỗi | Tự gỡ khóa, sửa công thức, chèn thêm logo, đổi font mặc định |
| Hỏi cấp trên khi điều khoản khác mẫu | Tự đổi điều khoản, tự đặt số chứng từ |
| Lưu giấy tờ đã lập ở thư mục làm việc | Lưu tên khách, giá thật vào thư mục mẫu |

## 5. Quy tắc bắt buộc

- Gọi khách là Quý khách, Quý khách hàng, Quý đơn vị, Đối tác. Không dùng "bạn".
- Lời văn thân thiện, mềm mỏng. Tránh chữ "nợ".
- Không ghi "bảo hành 24 tháng". Bảo hành ghi theo từng sản phẩm.
- Không nêu số lượng, giá trị đơn tối thiểu.
- Báo giá trong 4 giờ làm việc chỉ áp cho đơn cắt, chấn. Đơn sản xuất, dự án chỉ cam kết liên hệ lại trong 04 giờ làm việc.
- Xi mạ, sơn không ghi là năng lực chính. CO/CQ cấp khi khách yêu cầu.
- Chỉ dùng tài khoản ACB in sẵn trên mẫu. Không sửa số tài khoản, đơn vị nhận.
- Thứ tự áp điều khoản thanh toán: hợp đồng hoặc PO đã ký, rồi thỏa thuận theo mã khách, rồi mặc định theo loại đơn.
- Không chép số ngày thanh toán của khách này sang khách khác. Không tự cho trả sau.
- Không bịa số liệu. Chỗ chưa có ghi `[CẦN XÁC NHẬN]`, và phải xử lý hết trước khi gửi.
- Đơn từ 50 triệu trước thuế, hoặc khách yêu cầu hợp đồng, không dùng DH-01. Hỏi Giám đốc.
- AI chỉ dùng bằng tài khoản của công ty, đã tắt lưu dữ liệu. Không đưa lên AI: mật khẩu, tài khoản đăng nhập, số CCCD, bản vẽ hoặc dữ liệu khách có ghi không chuyển bên thứ ba.

## 6. Quy định mở cần thực hiện

Đây là những chỗ chưa chốt, hoặc thay đổi theo từng đơn. Không tự quyết, làm theo cột Cần làm.

| Nội dung | Tình trạng | Cần làm |
|---|---|---|
| Mã hồ sơ | Áp dụng cho hồ sơ mở từ 01/12/2026 | Trước ngày đó dùng số theo cách đang làm, chọn tay ở khung vàng |
| DH-01, NT-01, 02, 03 | Dùng thử 1 tháng từ 2026-11-06 | Thấy lỗi in, lỗi câu chữ thì báo người phụ trách, không sửa trên mẫu |
| Đơn cần hợp đồng | DH-02 chưa cho dùng | Hỏi Giám đốc |
| Số ngày khách trả sau | Theo từng khách | Người cấp số báo, lấy theo mã khách trong sổ hồ sơ |
| Thời hạn bảo hành | Theo từng sản phẩm | Người có thẩm quyền quyết định |
| Báo giá USD, song ngữ, doanh nghiệp chế xuất | Chưa có mẫu cho dùng | Hỏi Giám đốc. Ngoại tệ phải có kế toán xác nhận |
| Giấy tờ chưa có mẫu | Xem bảng trạng thái ở mục 1 | Hỏi người phụ trách, không tự soạn mẫu mới |
| Đơn cắt, chấn nhỏ cần giao nhận | Biên bản giao nhận chưa cho dùng | Hỏi người phụ trách |
| Số mảng cho Tự động hóa | `[CẦN XÁC NHẬN]` | Hỏi người cấp số |
| Tài khoản AI của công ty | Chưa chốt ai lập, ai giữ | Chưa được cấp thì chưa dùng AI với báo giá |

## 7. Skill hướng dẫn AI xử lý

| Việc | Skill trong `00-DUNG-VOI-AI` |
|---|---|
| Chuyển báo giá cũ sang mẫu chuẩn, trang năng lực | `SKILL_chuyen-bao-gia-mau-chuan.md` |
| Lập xác nhận đơn hàng | `SKILL_lap-xac-nhan-don.md` |
| Lập nghiệm thu, thanh lý, bảo hành | `SKILL_lap-nghiem-thu-bao-hanh.md` |

Cách dùng:

1. Đăng nhập tài khoản AI của công ty, kiểm đã tắt lưu dữ liệu, mở đoạn chat mới.
2. Đưa vào AI: file `SKILL_...md`, `WIKI_vkg-cot-loi.md`, tài liệu cần xử lý.
3. Dán câu lệnh mẫu trong `00-HUONG-DAN-SU-DUNG.md`.
4. Lấy kết quả, tự điền vào Excel, kiểm rồi mới gửi.

Skill đã thử trên Excel với mẫu báo giá. Chưa thử trên ChatGPT, Gemini. Kết quả AI luôn phải được người lập kiểm.
