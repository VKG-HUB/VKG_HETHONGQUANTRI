| QT-01 · KIỂM SOÁT TÀI LIỆU VÀ HỒ SƠ | Phiên bản **v0.1 (nháp)** · Hiệu lực: — |
|---|---|
| Soạn: Claude, nhánh ISO-02, 12/11/2026 · Kiểm: Đại diện ISO **[CẦN XÁC NHẬN]** · Duyệt: Giám đốc – ISO-QĐ-__ (chưa có số) | Theo phương án mã A, **chờ Giám đốc chọn** (`01_PHUONG-AN-MA-TAI-LIEU_v0.1.md`) |

## 1. Để làm gì, áp dụng cho ai

Ai trong công ty cũng **lấy đúng bản đang dùng**, bản cũ không lẫn vào sản xuất, và **giữ được bằng chứng** việc đã làm. Áp dụng cho mọi tài liệu và hồ sơ thuộc phạm vi ISO (gia công kim loại tấm theo bản vẽ, chế tạo thiết bị inox, CN1 và CN2). ISO 9001 điều 7.5.

## 2. Loại tài liệu và mã

| Cấp | Loại | Mã | Ai duyệt |
|---|---|---|---|
| 1 | Phạm vi, chính sách, bản đồ quá trình, sơ đồ tổ chức, mục tiêu, rủi ro | `ST-xx` | Giám đốc |
| 2 | Quy trình (≤ 2 trang) | `QT-xx` | Giám đốc |
| 3 | Hướng dẫn công việc, tiêu chí kiểm | `HD-xx` | Giám đốc **[CẦN XÁC NHẬN]** có giao Trưởng kỹ thuật duyệt HD không |
| 4 | Biểu mẫu, phiếu, thẻ | Mã nhóm theo bước công việc: BG, DH, SX, GH, TT, NT, GT (đang có) · CL chất lượng, MH mua hàng, NL nguồn lực (mới) | Giám đốc |

- Số chạy 2 chữ số, không dùng lại số đã bỏ. Biến thể thêm chữ: `BG-06A`.
- **Chỉ Đại diện ISO cấp mã mới** và ghi ngay vào Danh mục tài liệu. Biểu mẫu gửi khách vẫn do người phụ trách bộ biểu mẫu cấp như hiện nay, Đại diện ISO chép vào danh mục.
- Thêm nhóm mã mới: dò trùng với bảng "Mã đã dùng" trong Danh mục trước khi cấp. Không dùng `BM`, `QC`, `TB` (HR đang dùng).
- Văn bản nhân sự giữ mã HR (`VKG/HR/...`); tài liệu bên ngoài giữ mã gốc.

## 3. Tên file và phiên bản

- Tên file: `<mã>_<Ten-ngan-khong-dau>_v<X.Y>` → `QT-01_Kiem-soat-tai-lieu-va-ho-so_v1.0.pdf`. Không dùng "final", "moi", "sua lan 2".
- **v0.x** nháp · **v1.0** ban hành lần đầu · **v1.1** sửa câu chữ, không đổi cách làm · **v2.0** đổi cách làm.
- Khung đầu mỗi QT, HD, ST ghi: mã, tên, phiên bản, ngày hiệu lực, người soạn, người kiểm, người duyệt + số ISO-QĐ. Cuối tài liệu có bảng lịch sử: phiên bản, ngày, sửa gì, ai duyệt.
- Biểu mẫu in ghi mã có ngày ở chân trang theo QĐ-122: `CL-01.27A05`.

## 4. Soạn – duyệt – ban hành

| Bước | Ai | Làm gì | Ở đâu |
|---|---|---|---|
| 1 Soạn nháp | Nhánh ISO (Claude) cùng người làm việc đó | Viết, thử trên việc thật | `_VKG_SANG_LOC_CLAUDE\11_ISO_9001\<nhánh>` |
| 2 Kiểm | Đại diện ISO + người trực tiếp làm (tổ trưởng) | Đọc, góp ý: làm được không, có thừa không | |
| 3 Duyệt | Giám đốc | Duyệt nháp; chat điều tiết cấp số ISO-QĐ | `NHAT-KY-QUYET-DINH.md` |
| 4 Chép bản gốc | Đại diện ISO | Chép bản đã duyệt vào bản gốc sửa được (`.docx`, `.xlsx`) | `03_HE_THONG_TAI_LIEU\C1…C4` |
| 5 Ban hành | Đại diện ISO | Xuất PDF (QT, HD, ST) / file điền được (biểu mẫu) vào đúng thư mục; ghi Danh mục: phiên bản, ngày hiệu lực, số ISO-QĐ | `10_PHAT_HANH` (mục 5) |
| 6 Báo người dùng | Đại diện ISO | Nhắn nhóm Zalo xưởng liên quan: mã, tên, đổi gì; tài liệu mới thì hướng dẫn tại tổ, ký danh sách | `04_DAO_TAO_NHAN_THUC` |

Chép **một chiều**: sửa ở bản gốc, rồi phát hành lại; không sửa trong `10_PHAT_HANH` (giống QĐ-74 của kho biểu mẫu).

## 5. Thư mục `10_PHAT_HANH` – chỉ chứa bản đang dùng

```
10_PHAT_HANH\
├ 00_DANH_MUC_TAI_LIEU.xlsx   sheet: Tài liệu · Hồ sơ · Mã đã dùng · Tài liệu bên ngoài
├ C1_SO_TAY_CHINH_SACH\       ST-xx (PDF)
├ C2_QUY_TRINH\               QT-xx (PDF)
├ C3_HUONG_DAN_TIEU_CHI\      HD-xx (PDF)
└ C4_BIEU_MAU\                phiếu dùng trong xưởng (file điền được + PDF bản trắng)
```

Biểu mẫu gửi khách (BG, DH, NT, GT) **không chép sang đây**; Danh mục ghi đường dẫn tới `OneDrive\VKG\BIEU-MAU-VKG\01-DANG-DUNG`. **[CẦN XÁC NHẬN]** câu 2 đợt 1.

Quyền sửa `10_PHAT_HANH`: Giám đốc và Đại diện ISO; người khác chỉ xem **[CẦN XÁC NHẬN]** cài được quyền trên OneDrive.

## 6. Sửa đổi và thu hồi bản cũ

1. Ai thấy tài liệu sai, thừa, không làm được: báo Đại diện ISO (nói miệng, nhắn Zalo đều được).
2. Sửa theo mục 4, tăng phiên bản theo mục 3.
3. Ngày bản mới có hiệu lực, Đại diện ISO **chuyển nguyên file bản cũ** từ `10_PHAT_HANH\<Cx>` sang `99_LUU_TRU\<Cx>` (tên file đã có số phiên bản nên không đổi tên). Không xóa.
4. Danh mục: ghi ngày ngừng dùng của bản cũ.
5. Bản in đang treo ở xưởng: thu về, gạch chéo ghi "HẾT HIỆU LỰC" rồi bỏ, hoặc để lưu thì cất vào hồ sơ. **[CẦN XÁC NHẬN]** câu 4 đợt 1: xưởng có dùng bản in không.
6. Bỏ hẳn một tài liệu: làm như bước 3–4, số mã không cấp lại.

## 7. Tài liệu bên ngoài

Tiêu chuẩn, catalog vật liệu, hướng dẫn máy của hãng: lưu `01_TAI_LIEU_THAM_KHAO`, không sửa, ghi sheet "Tài liệu bên ngoài" (tên, bản/năm, nơi lưu). Bản vẽ và tài liệu khách gửi: kiểm soát theo quy trình của nhánh ISO-05 (chưa viết).

## 8. Hồ sơ (bằng chứng việc đã làm)

| Quy tắc | Cách làm |
|---|---|
| Hồ sơ nào phải giữ | Mỗi QT ghi ở mục cuối: tên hồ sơ, ai giữ, nơi lưu. Đại diện ISO gom vào sheet "Hồ sơ" |
| Dạng hồ sơ | Ưu tiên **ảnh chụp điện thoại**, PDF, file Excel. Không bắt chép tay sang máy |
| Nơi lưu | `05_HO_SO_VAN_HANH\<loại>\<yyyy-mm>\` · Hồ sơ theo đơn: thư mục con đặt tên **mã hồ sơ đơn hàng** (từ 01/12/2026, theo quy định chứng từ) |
| Ảnh trong nhóm Zalo | Đại diện ISO tải về cuối mỗi tháng (như đề xuất QC cuối của ISO-03). Zalo không được coi là nơi lưu chính |
| Thời gian giữ | Tối thiểu **3 năm** kể từ ngày lập **[CẦN XÁC NHẬN]** câu 5 đợt 1. Hồ sơ kế toán, thuế, lao động: theo luật riêng, do kế toán / HR giữ |
| Không sửa, không xóa | Hồ sơ sai thì lập bản đính chính, giữ cả bản cũ |
| Bảo vệ | Lưu trên OneDrive công ty; sao lưu ngoài OneDrive **[CẦN XÁC NHẬN]** ai làm, bao lâu một lần |

## 9. Hồ sơ của quy trình này

Danh mục tài liệu (`10_PHAT_HANH\00_DANH_MUC_TAI_LIEU.xlsx`) · Nhật ký quyết định ISO · Bản cũ trong `99_LUU_TRU` · Danh sách ký đào tạo khi ban hành.

## Lịch sử

| Phiên bản | Ngày | Nội dung | Duyệt |
|---|---|---|---|
| v0.1 | 12/11/2026 | Nháp đầu theo phương án mã A | Chưa |
