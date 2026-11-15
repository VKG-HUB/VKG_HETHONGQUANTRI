# Hướng dẫn dùng biểu mẫu với AI

Phân quyền: Mức 1 · Cập nhật: 2026-11-06 · Xác nhận bởi: Giám đốc yêu cầu đưa vào thư mục biểu mẫu ngày 2026-11-06 · Trạng thái: ban-nhap

## Việc này là gì, vì sao công ty làm theo cách này

Mỗi thư mục mẫu có thư mục con `00-DUNG-VOI-AI`. Trong đó có 3 file để nhờ AI lập nội dung vào mẫu chuẩn. Công ty dùng Gemini hoặc ChatGPT bản miễn phí (QĐ-109).

AI giúp đọc báo giá cũ, chọn mẫu, sắp nội dung đúng ô. **Người lập vẫn điền vào Excel, kiểm và chịu trách nhiệm.** AI không sửa trực tiếp file mẫu, vì dễ làm hỏng logo, công thức và khung kiểm tra.

## Trong thư mục có gì

| File | Dùng để |
|---|---|
| `00-HUONG-DAN-SU-DUNG.md` | Bài này |
| `SKILL_...md` | Quy trình cho AI: cách chọn mẫu, ô nào điền gì, lỗi cần tránh |
| `WIKI_vkg-cot-loi.md` | Thông tin chuẩn của công ty |

| Thư mục mẫu | File skill |
|---|---|
| `BG-BAO-GIA` | `SKILL_chuyen-bao-gia-mau-chuan.md` |
| `GT-GIOI-THIEU-NANG-LUC` | `SKILL_chuyen-bao-gia-mau-chuan.md`, xem mục Trang năng lực gửi kèm |
| `DH-DON-HANG-HOP-DONG` | `SKILL_lap-xac-nhan-don.md` |
| `NT-NGHIEM-THU-THANH-LY` | `SKILL_lap-nghiem-thu-bao-hanh.md` |

File `.md` mở được bằng Notepad. AI không nhận file `.md` thì mở Notepad, chép toàn bộ rồi dán vào khung chat.

## Trước khi đưa tài liệu lên AI

Bản miễn phí có thể dùng nội dung chat để huấn luyện AI. Với Gemini, người của Google có thể đọc nội dung chat. Vì vậy phải làm đủ các việc dưới đây.

1. **Chỉ dùng tài khoản AI của công ty (QĐ-108).** Không dùng tài khoản cá nhân. Chưa được cấp tài khoản thì hỏi cấp trên, chưa dùng AI với báo giá.
2. **Tắt lưu dữ liệu trước khi dùng:**
   - ChatGPT: Cài đặt, Kiểm soát dữ liệu, tắt "Cải thiện mô hình cho mọi người".
   - Gemini: tắt Giữ hoạt động (Keep Activity), hoặc dùng Trò chuyện tạm thời.
3. **Thông tin khách:** không bắt buộc bỏ tên, liên hệ của khách (QĐ-110). Được gửi cả file báo giá cũ. AI không cần các thông tin này, nên chỉ chép phần bảng hàng, số tiền, ghi chú thì càng tốt.
4. **Không đưa lên AI:** mật khẩu, tài khoản đăng nhập, số CCCD, bản vẽ hoặc dữ liệu khách có ghi không chuyển bên thứ ba.
5. **Không bấm thích, không thích trên câu trả lời có dữ liệu báo giá.** Gửi phản hồi có thể làm cả đoạn chat được dùng để cải thiện AI, kể cả khi đã tắt lưu dữ liệu.
6. Chưa rõ tài liệu có được đưa lên không thì hỏi cấp trên trước.

**Giới hạn bản miễn phí, có thể thay đổi:**

| AI | Giới hạn | Cách làm |
|---|---|---|
| Gemini | Đính kèm được nhiều file trong một lần hỏi | Đính kèm SKILL, WIKI và báo giá cũ. Dùng được nhiều lần trong ngày tùy hạn mức |
| ChatGPT | Khoảng 3 file mỗi ngày | Mở SKILL và WIKI bằng Notepad, chép dán vào khung chat. Chỉ đính kèm báo giá cũ, để dành lượt |

AI báo hết lượt thì đợi hoặc đổi sang AI còn lại. Không chuyển sang tài khoản cá nhân.

## Các bước

1. Mở `00-DANH-MUC-BIEU-MAU.xlsx` hoặc `04-HUONG-DAN\00-CHON-MAU.md` nếu chưa biết dùng mẫu nào.
2. Đăng nhập tài khoản AI của công ty, kiểm đã tắt lưu dữ liệu, mở đoạn chat mới.
3. Đưa file `SKILL_...md`, `WIKI_vkg-cot-loi.md` vào theo bảng giới hạn ở trên.
4. Đưa báo giá cũ hoặc tài liệu cần chuyển vào. Dán câu lệnh mẫu ở cuối bài, điền phần trong dấu `< >`.
5. Đọc phần **Điểm khác** AI trả về. Việc nào cần quyết định thì hỏi người có thẩm quyền.
6. Nhấp đúp file mẫu `.xltm`. Có thanh vàng thì bấm Enable Content. Excel mở một bản mới, file gốc không đổi. Lưu ngay với tên mới.
7. Điền các ô theo phiếu AI trả về.
8. Dán bảng hàng:
   - Bôi đen các dòng dữ liệu trong bảng AI trả về, **không chọn dòng tiêu đề**.
   - Trong Excel, bấm vào ô AI ghi. Nhấn chuột phải, chọn Dán, biểu tượng **Giữ định dạng đích** hoặc **Chỉ giữ văn bản**.
   - Bảng lệch cột thì gõ tay, không cố dán lại nhiều lần.
9. Kiểm theo mục dưới đây.
10. Xuất PDF: Tệp, Xuất, PDF. Mở PDF xem lại rồi gửi khách.

## Thế nào là đạt

- Khung vàng bên phải báo "Đủ thông tin, có thể xuất PDF". Khung này không in ra.
- Số lượng, đơn giá trùng tài liệu gốc.
- Tổng tiền trong Excel khớp phần đối chiếu số của AI.
- Dòng hiệu lực ghi đúng ngày hết hạn. Sai ngày là do Excel hiểu nhầm ngày, gõ lại dạng `2026-11-06`.
- Không còn `[__]`, `[CẦN XÁC NHẬN]`.
- PDF rõ logo, đủ dấu tiếng Việt, không bị cắt chữ.

## Lỗi đã gặp và cách tránh

| Lỗi | Cách tránh |
|---|---|
| Chữ quy cách bị cắt khi in | Mỗi dòng tối đa 32 ký tự. Nếu vẫn dài, tách thành 2 dòng |
| Hạn hiệu lực sai | Ghi ngày dạng `2026-11-06` |
| Số điện thoại mất số 0 đầu | Gõ có dấu cách: `0900 000 000` |
| BG-02 mất ĐVT, SL, đơn giá khi dán | Gõ tên hạng mục ở cột A, dán 3 cột còn lại từ ô C15 |
| Nhờ AI sửa thẳng file `.xltm` | Không làm. Chỉ lấy nội dung rồi tự điền |
| Tin AI, gửi khách ngay | Luôn kiểm trước khi gửi |
| Dán cả dòng tiêu đề | Chỉ chọn dòng dữ liệu |

## Khi nào phải hỏi cấp trên

- Giá cũ đã quá hiệu lực.
- Điều khoản khách muốn khác mẫu.
- Đơn từ 50 triệu trước thuế, hoặc khách yêu cầu hợp đồng.
- Báo giá USD, song ngữ, doanh nghiệp chế xuất.
- Thấy thông tin in sẵn trên mẫu có vẻ sai.

Không sửa file trong thư mục `BIEU-MAU-VKG`. Thấy lỗi thì báo người giữ biểu mẫu.

## Câu lệnh mẫu để dán vào AI bất kỳ

**Chuyển báo giá cũ sang mẫu chuẩn.** Đưa vào: `SKILL_chuyen-bao-gia-mau-chuan.md`, `WIKI_vkg-cot-loi.md`, báo giá cũ.

```text
Tôi làm ở Việt Khoa Group. Hãy làm đúng theo SKILL tôi đưa, dùng WIKI làm thông tin công ty.
Tài liệu cần chuyển: báo giá cũ tôi đưa kèm. Thông tin khách không có thì ghi "người lập điền", không đoán.
Ngày lập mới: <2026-11-06>. Người phụ trách: <họ tên>. Người ký: <họ tên, chức danh>.
Không tự đổi số. Không đọc được chỗ nào thì ghi [CẦN XÁC NHẬN].
Trả về đúng 5 phần: Kết luận, Phiếu ô cần điền, Bảng hàng để dán, Điểm khác cần người lập quyết định, Đối chiếu số.
```

**Lập xác nhận đơn hàng.** Đính kèm: `SKILL_lap-xac-nhan-don.md`, `WIKI_vkg-cot-loi.md`, báo giá hoặc PO, tin nhắn chốt đơn.

```text
Tôi làm ở Việt Khoa Group. Hãy làm đúng theo file SKILL đính kèm, dùng file WIKI làm thông tin công ty.
Đơn đã chốt qua: <báo giá, PO, Zalo, email>. Số chứng từ: <số do người cấp số báo, chưa có thì ghi chưa có>.
Trước hết kiểm đơn có dùng được DH-01 không. Không tự đổi tỷ lệ, số ngày thanh toán.
```

**Lập nghiệm thu, thanh lý, bảo hành.** Đính kèm: `SKILL_lap-nghiem-thu-bao-hanh.md`, `WIKI_vkg-cot-loi.md`, báo giá, hợp đồng, biên bản cũ nếu có.

```text
Tôi làm ở Việt Khoa Group. Hãy làm đúng theo file SKILL đính kèm, dùng file WIKI làm thông tin công ty.
Việc cần lập: <nghiệm thu, thanh lý, phiếu bảo hành>. Tài liệu đính kèm: <liệt kê>.
Không tự ghi kết quả nghiệm thu, không tự chọn thời hạn bảo hành. Chỗ thiếu ghi [CẦN XÁC NHẬN].
```
