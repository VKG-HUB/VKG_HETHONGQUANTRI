# Wiki nghiệm thu, thanh lý, bảo hành NT

Phân quyền: Mức 1 · Cập nhật: 2026-11-06 · Trạng thái: ban-nhap, Giám đốc yêu cầu đưa cho nhân sự (QĐ-113)

Quy tắc chung của cả bộ ở `00-WIKI-BO-BIEU-MAU.md`. Bài này chỉ nói riêng về nhóm NT.

## 1. Bối cảnh

Đây là các giấy tờ cuối đơn hàng. NT-01 ghi hàng đã giao đúng và được nghiệm thu. NT-02 khép lại hợp đồng về giá trị. NT-03 là cam kết bảo hành cho từng sản phẩm.

Cả 3 mẫu bản 1.0 đang dùng thử 1 tháng từ 2026-11-06.

## 2. Cách thực hiện

1. Chọn mẫu theo mục 3.
2. Xin số chứng từ từ người cấp số. Dạng `26110421-61-HGT` cho nghiệm thu, `-71-` thanh lý, `-81-` bảo hành.
3. Nhấp đúp file `.xltm`. Có thanh vàng thì bấm Enable Content. Lưu ngay với tên mới.
4. NT-01, NT-03: có báo giá Excel theo mẫu chuẩn thì dán giá trị vào ô A1 sheet **Từ báo giá**, hàng tự lên.
5. Điền ở sheet **Điền thông tin**, cột giá trị ngay cạnh nhãn. Trang in tự lên chữ và đã khóa.
6. NT-01: người kiểm ghi SL thực tế, Kết quả, Ghi chú ở sheet Biên bản. Đơn trên 7 dòng hàng thì in thêm sheet Bảng kê.
7. NT-03: mỗi sản phẩm chọn In phiếu, Tháng, Phạm vi bảo hành, Nguồn. Đơn trên 14 sản phẩm thì lập thêm phiếu, nhập Lấy từ dòng số.
8. Khung vàng không còn báo thiếu thì in, ký.

## 3. Vai trò từng file

| File | Dùng khi | Người ký bên Việt Khoa |
|---|---|---|
| `NT-01_Bien-ban-nghiem-thu_v2.1.xltm` | Đơn sản xuất, dự án. Đơn cắt, chấn nhỏ chỉ dùng khi Quý khách yêu cầu | Người phụ trách kỹ thuật và Phó Giám đốc |
| `NT-02_Bien-ban-thanh-ly_v2.1.xltm` | Đơn có hợp đồng ký và hợp đồng chọn lập biên bản thanh lý. Lập sau nghiệm thu | Giám đốc |
| `NT-03_Phieu-bao-hanh_v2.0.xltm` | Cấp phiếu bảo hành cho Quý khách | Phó Giám đốc |

| File, sheet khác | Vai trò |
|---|---|
| Sheet Điền thông tin | Nơi điền chính |
| Sheet Biên bản, Phiếu bảo hành | Trang in, đã khóa. Biên bản NT-01 chỉ gõ được SL thực tế, Kết quả, Ghi chú |
| Sheet Bảng kê (NT-01) | In thêm khi đơn trên 7 dòng hàng |
| Sheet Từ báo giá (NT-01, NT-03) | Nơi dán giá trị báo giá vào ô A1 |
| Sheet Hướng dẫn | Cách dùng ngay trong file |
| Sheet ẩn TachBG, DanhMuc | Mẫu tự dùng. Không mở, không sửa |
| `PDF\NT-01_Bien-ban-nghiem-thu_v2.1_ban-trang.pdf` | Bản trắng NT-01, in ra viết tay |
| `PDF\NT-02_Bien-ban-thanh-ly_v2.1_ban-trang.pdf` | Bản trắng NT-02 |
| `PDF\NT-03_Phieu-bao-hanh_v2.0_ban-trang.pdf` | Bản trắng NT-03 |
| `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md` | Hướng dẫn nhờ AI, câu lệnh mẫu |
| `00-DUNG-VOI-AI\SKILL_lap-nghiem-thu-bao-hanh.md` | Quy trình cho AI lập nội dung NT |
| `00-DUNG-VOI-AI\WIKI_vkg-cot-loi.md` | Thông tin công ty, đưa cho AI cùng skill |
| `04-HUONG-DAN\vi-du-nghiem-thu\` | PDF ví dụ. Số liệu giả, không gửi khách |

## 4. Được làm, không được làm

| Được làm | Không được làm |
|---|---|
| Điền ở sheet Điền thông tin | Điền trên trang in đã khóa |
| Bật, Tắt trường hợp không bảo hành theo hàng hóa | Ghi một thời hạn bảo hành chung cho mọi sản phẩm |
| Tắt In phiếu ở dòng không bảo hành, ví dụ vận chuyển | Tự ghi kết quả nghiệm thu thay người kiểm |
| Báo lỗi cho người phụ trách trong tháng dùng thử | Lập NT-02 cho mọi hợp đồng |

## 5. Quy tắc bắt buộc

- Đơn sản xuất, dự án có nghiệm thu. Chỉ đơn có hợp đồng ký mới thanh lý.
- Kết quả nghiệm thu do người kiểm ghi.
- Tên, hàng, số lượng phải khớp báo giá và hợp đồng.
- NT-02: tên Quý khách đúng trên hợp đồng. Giá trị ghi bằng đồng, gồm thuế GTGT. Viết nhẹ nhàng, tránh chữ "nợ".
- NT-03: mặc định 12 tháng, đổi được từng sản phẩm, tính từ ngày giao hàng hoặc ngày xuất hóa đơn do người lập chọn. Đây là mặc định trên phiếu, không phải thời hạn chung của công ty.
- Không ghi "bảo hành 24 tháng".
- Vật tư Quý khách cấp: bật dòng "Lỗi từ vật tư do Quý khách cấp".
- Hàng phân phối: Nguồn chọn Phân phối, phiếu tự ghi Theo hãng.
- Ngày gõ dạng `2026-11-06`.

## 6. Quy định mở cần thực hiện

| Nội dung | Tình trạng | Cần làm |
|---|---|---|
| NT-02 | Dùng trước, chưa qua luật sư, kế toán | Có phần giá trị chưa khớp thì hỏi người có thẩm quyền |
| Phó Giám đốc ký | Chưa chốt có cần giấy ủy quyền không | Hỏi người có thẩm quyền |
| Thời hạn bảo hành từng sản phẩm | Theo sản phẩm | Người có thẩm quyền quyết định. Khác báo giá thì hỏi |
| Dùng thử 3 mẫu | 1 tháng từ 2026-11-06, in máy thật kiểm trong lúc dùng | Thấy lỗi in, lỗi câu chữ thì báo người phụ trách |
| Số chứng từ trước 01/12/2026 | Số không tự lên | Gõ tay. Khung vàng có thể nhắc sai loại nhưng vẫn in được |
| Đơn cắt, chấn nhỏ cần giao nhận | Biên bản giao nhận chưa cho dùng | Hỏi người phụ trách |
| Quý khách yêu cầu thêm điều khoản | Tùy đơn | Hỏi người có thẩm quyền |

## 7. Skill hướng dẫn AI xử lý

Dùng `00-DUNG-VOI-AI\SKILL_lap-nghiem-thu-bao-hanh.md`, cùng `WIKI_vkg-cot-loi.md` và báo giá, hợp đồng, biên bản cũ nếu có. Câu lệnh mẫu ở `00-DUNG-VOI-AI\00-HUONG-DAN-SU-DUNG.md`.

AI chọn mẫu, lập phiếu ô cho sheet Điền thông tin, nêu chỗ thiếu. AI không đặt số chứng từ, không ghi kết quả nghiệm thu, không chọn thời hạn bảo hành.

Skill này chưa thử trên đơn thật, chưa thử trên ChatGPT, Gemini.
