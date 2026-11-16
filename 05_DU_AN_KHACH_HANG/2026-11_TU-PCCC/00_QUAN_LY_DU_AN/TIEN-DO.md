# Tiến độ và danh mục – Hồ sơ kiểm soát chất lượng tủ PCCC

Cập nhật 16/11/2026 (sau PCCC-QĐ-03) · Mọi tài liệu ở trạng thái **bản thảo: đã viết, đã tự kiểm, chưa duyệt, chưa gửi ai**. Người duyệt: Giám đốc.

Gốc dự án: `C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\05_DU_AN_KHACH_HANG\2026-11_TU-PCCC\`

## 0. Quyết định đang có hiệu lực

Sổ: `00_QUAN_LY_DU_AN\QUYET_DINH\NHAT-KY-QUYET-DINH.md`.

- **PCCC-QĐ-03 (Giám đốc, 16/11/2026):** mọi tủ PCCC sơn tĩnh điện, thuê đơn vị ngoài. Sơn dầu VKG tự làm là cho phần sắt chung, không thuộc bộ hồ sơ tủ. (PCCC-QĐ-01 đã bị thay; PCCC-QĐ-02 được làm rõ bởi QĐ-03.)
- **PCCC-QĐ-04 (Giám đốc, 16/11/2026):** lập bộ hồ sơ sơn epoxy chung cho phần sắt VKG tự sơn. Đã lập bản thảo v0.1 ở `09_QC_TIEN_DO\SON-EPOXY-CHUNG\` (SE-01, SE-02, SE-F01 đến F04); danh mục, nguồn, đã kiểm gì, chưa kiểm gì ghi ở `SON-EPOXY-CHUNG\00_README.md`. Bộ này không thuộc hồ sơ tủ; ô số liệu hệ sơn còn trống.

## 1. Danh mục tài liệu hiện hành

Cột "Căn cứ": **KH** = suy ra trực tiếp từ mẫu của khách; **VKG** = VKG bổ sung theo thông lệ chế tạo, khách chưa yêu cầu; **KH + VKG** = phần sơn theo khách, phần còn lại VKG bổ sung.
Mã PCCC-xx là **mã tạm của dự án**; mã chính thức theo `00_DIEU_PHOI_CHUNG\QUY-TAC-MA-CHUNG.md` chờ phiên điều tiết HTQT-00 cấp (gợi ý loại mã ở cột cuối, chưa xin).

| Mã tạm | Tài liệu | File (trong `09_QC_TIEN_DO\`, có .docx, .pdf; nguồn .md ở `_nguon_md\`) | Trang | Song ngữ | Căn cứ | Loại mã gợi ý |
|---|---|---|---|---|---|---|
| — | Bảng yêu cầu của khách (81 yêu cầu A–E, 3 dòng F) | `02_PHAN_TICH_KY_THUAT\XAC_MINH\BANG-YEU-CAU-KHACH_v0.2.md` | — | Không | KH | — |
| — | Kiểm chéo tiêu chuẩn (14 tiêu chuẩn, 15 chỗ lệch) | `02_PHAN_TICH_KY_THUAT\XAC_MINH\KIEM-CHEO-TIEU-CHUAN_v0.1.md` | — | Không | VKG | — |
| — | Việc Giám đốc quyết và chuẩn bị | `00_QUAN_LY_DU_AN\VIEC-GIAM-DOC-QUYET-VA-CHUAN-BI_v0.4.md` | — | Không | VKG | — |
| PCCC-00 | Danh sách câu hỏi làm rõ gửi khách (22 câu) | `PCCC-00_Cau-hoi-lam-ro-gui-khach_v0.4` | 6 | Có | VKG | — |
| PCCC-01 | Kế hoạch chất lượng (lưu đồ, trách nhiệm, truy xuất) | `PCCC-01_Ke-hoach-chat-luong_v0.4` | 4 | Có | VKG | HD |
| PCCC-02 | Kế hoạch kiểm tra và thử nghiệm ITP (34 mục, H/W/R) | `PCCC-02_ITP_v0.4` | 13 | Có | KH + VKG | HD |
| PCCC-03 | Quy cách sơn tĩnh điện | `PCCC-03_Quy-cach-son-tinh-dien_v0.1` | 4 | Có | KH (mẫu F1) | HD |
| PCCC-05 | Quy trình kiểm tra sơn | `PCCC-05_Quy-trinh-kiem-tra-son_v0.2` | 4 | Có | KH (F4, bảng kiểm F1) | HD |
| PCCC-06 | Kiểm soát nhà thầu phụ sơn tĩnh điện, mạ kẽm | `PCCC-06_Kiem-soat-nha-thau-phu-son-tinh-dien_v0.4` | 3 | Có | VKG | HD hoặc MH |
| PCCC-07 | Danh mục hồ sơ bàn giao theo lô | `PCCC-07_Danh-muc-ho-so-ban-giao_v0.2` | 2 | Có | VKG | CL |
| PCCC-F01 | Phiếu kiểm vật tư đầu vào | `PCCC-F01_Kiem-vat-tu-dau-vao_v0.2` | 2 | Có | KH + VKG | MH |
| PCCC-F02 | Biên bản kiểm kích thước, ngoại quan gia công | `PCCC-F02_Kiem-kich-thuoc-ngoai-quan-gia-cong_v0.1` | 2 | Có | VKG | CL |
| PCCC-F03 | Nhật ký điều kiện môi trường và khí nén | `PCCC-F03_Nhat-ky-dieu-kien-moi-truong_v0.4` | 1 | Có | KH | CL |
| PCCC-F04 | Biên bản kiểm chuẩn bị bề mặt | `PCCC-F04_Bien-ban-kiem-chuan-bi-be-mat_v0.2` | 2 | Có | KH | CL |
| PCCC-F05 | Phiếu đo chiều dày màng sơn khô (DFT) | `PCCC-F05_Phieu-do-chieu-day-mang-son_v0.2` | 2 | Có | KH | CL |
| PCCC-F06 | Biên bản thử bám dính | `PCCC-F06_Bien-ban-thu-bam-dinh_v0.2` | 2 | Có | KH | CL |
| PCCC-F07 | Nhật ký lò sấy và thử chà dung môi | `PCCC-F07_Nhat-ky-lo-say-va-thu-cha-dung-moi_v0.4` | 2 | Có | KH | CL |
| PCCC-F08 | Biên bản kiểm ngoại quan lớp sơn và ghi chữ | `PCCC-F08_Kiem-ngoai-quan-lop-son-va-ghi-chu_v0.2` | 2 | Có | KH | CL |
| PCCC-F09 | Biên bản kiểm cuối và cho phép xuất xưởng | `PCCC-F09_Bien-ban-kiem-cuoi-va-xuat-xuong_v0.2` | 2 | Có | VKG | CL |
| PCCC-F10 | Phiếu không phù hợp và hành động khắc phục | `PCCC-F10_Phieu-khong-phu-hop-va-khac-phuc_v0.1` | 1 | Có | VKG | CL |
| PCCC-F11 | Danh mục thiết bị đo và hiệu chuẩn | `PCCC-F11_Danh-muc-thiet-bi-do-va-hieu-chuan_v0.2` | 2 | Có | KH + VKG | NL |
| PCCC-F12 | Hồ sơ năng lực người kiểm tra | `PCCC-F12_Ho-so-nang-luc-nguoi-kiem-tra_v0.1` | 2 | Có | VKG | NS |
| PCCC-F13 | Nhật ký phun bột | `PCCC-F13_Nhat-ky-thi-cong-son_v0.4` | 1 | Có | KH | CL |

**Đã rút khỏi bộ hồ sơ tủ:** PCCC-04 Quy cách sơn lỏng (theo mẫu F2 của khách), giữ nguyên ở `09_QC_TIEN_DO\_CHO_QUYET_son-long\PCCC-04_Quy-cach-son-long_v0.1` (.md, .docx, .pdf), chờ G-17 và trả lời Q-18 của khách.

Bản cũ (không xóa): `99_LUU_TRU\v0.1_2026-11-16\`, `99_LUU_TRU\v0.2_2026-11-16\`, `99_LUU_TRU\truoc-QD-03_2026-11-16\`.
File mẫu gốc của khách (không sửa): `01_DAU_VAO\KHACH_HANG\2026-11-16_mau-quy-cach-son\` (4 file .docx).
Script: `09_QC_TIEN_DO\_nguon_md\_script\` gồm `sinh-bieu-mau.py`, `dung-tat-ca.ps1`, `tu-kiem.py`; kết quả tự kiểm gần nhất: `tu-kiem_ket-qua.txt`.

## 2. Đã kiểm gì

| Việc kiểm | Cách kiểm | Kết quả |
|---|---|---|
| Đọc đủ 4 file mẫu | Trích toàn bộ chữ và bảng (kể cả ô gộp, ô trống) từ từng file; 4 file không có header, footer, hình | Đã đọc hết; bảng yêu cầu lập từ bản trích này |
| Sao 4 file mẫu | So tên và dung lượng với bản ở Downloads | Khớp |
| Mỗi yêu cầu của khách có chỗ trong ITP và có biểu ghi nhận | `tu-kiem.py` trên bộ hiện hành | Không lỗi. 81 yêu cầu: 54 có mục ITP và biểu ghi nhận; 27 ghi "—" có lý do: 6 như bản đầu (A-05, A-06, B-09, B-10, B-12, E-23) và 21 yêu cầu sơn lỏng, phun hạt không còn áp cho tủ sau PCCC-QĐ-03 (liệt kê ở đầu bảng yêu cầu v0.2) |
| Câu hỏi | `tu-kiem.py`: mọi Q-nn dẫn trong các tài liệu đều có trong PCCC-00 | Không lỗi; 22 câu đều được dẫn |
| Chữ trong các file .docx khớp nguồn, lỗi phông, khổ A4, có PDF | `tu-kiem.py` | 20/20 file .docx: thiếu 0 đoạn, 0 ký tự lỗi, A4 dọc, có PDF (19:15, lưu ở `tu-kiem_ket-qua.txt`) |
| Không còn nội dung sơn lỏng trong bộ hồ sơ tủ | Tìm chữ "sơn lỏng", "liquid", "PCCC-04", "WFT", "airless", "phun quét" trong nguồn .md | Chỉ còn ở chỗ dẫn chiếu mẫu F2 của khách, câu hỏi gửi khách, bảng lịch sử, và dòng WFT của bảng kiểm tra khách (ghi "chờ khách xác nhận không áp dụng") |
| Xem hình PDF | Bản v0.1: PCCC-F03, PCCC-F05 (cả file), PCCC-03 trang 1–2, PCCC-02 trang 8 | Header VKG, khung đầu, chân trang đúng; bảng 10 cột vừa khổ |
| Tiến trình Word | Kiểm sau mỗi lượt dựng | Không để sót; đã trả khóa ở `00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md` |

## 3. Chưa kiểm được gì

- **Các file dựng lại sau PCCC-QĐ-03 chưa xem hình**, chỉ kiểm chữ, khổ trang, số trang. Máy không có công cụ tách trang PDF nên file trên 10 trang (ITP) không mở xem cả file được.
- **Chưa in thử ra giấy.**
- **Chưa đối chiếu với văn bản gốc của tiêu chuẩn:** VKG chưa có bản gốc; mô tả tiêu chuẩn theo hiểu biết chung và vài kết quả tra web, đã ghi nhãn trong bảng kiểm chéo.
- **Chưa có TDS chính thức của Jotun Facade 1407.** Con số 60–80 µm chỉ từ tra web, chỉ nêu trong câu hỏi Q-09.
- **Chưa có bản vẽ tủ**: tiêu chí kích thước, phụ kiện để "theo bản vẽ (chờ)".
- **Khách chưa xác nhận mọi tủ sơn tĩnh điện.** Khách có gửi mẫu sơn lỏng F2 cho tủ; việc bỏ F2 mới là quyết định phía VKG (Q-18).
- **Bản tiếng Anh do AI viết, chưa có người rà.**
- **Chưa đối chiếu nội dung với SX-01, GH-02** (hai biểu chưa phát hành).
- **Mức H/W/R của khách, số tấm mẫu, tần suất thử khí nén** là đề xuất của VKG.
- **Nhà thầu sơn tĩnh điện chưa được khảo sát**; hồ sơ VKG không ghi tên nhà thầu sơn nào.
- **Chưa cập nhật sổ chung của HTQT** (chỉ HTQT-00 ghi). **Chưa lưu vào git** (nhánh main dùng chung nhiều phiên).

## 4. Việc kế tiếp

1. Giám đốc cho số liệu hệ sơn epoxy thường dùng (6 điểm ở cuối `SON-EPOXY-CHUNG\00_README.md`); trả lời G-16 (đơn vị sơn tĩnh điện), G-03 (gửi câu hỏi cho khách).
2. Khảo sát nhà thầu sơn tĩnh điện theo PCCC-06 mục 2, làm mẻ thử.
3. Khi khách trả lời và gửi bản vẽ: cập nhật bảng yêu cầu, ITP, quy cách sơn; chạy lại `sinh-bieu-mau.py`, `dung-tat-ca.ps1` (giữ khóa Office), `tu-kiem.py`.
4. Khi nội dung ổn: chuyển HTQT-00 cấp mã chính thức, nhóm BM dựng bản phát hành.

## 5. Phát sinh ngoài phạm vi (ghi lại, không xử lý)

- Script chung `09_CONG_CU\dung-docx-iso.ps1` chỉ dựng trang dọc; ITP nhiều cột sẽ dễ đọc hơn ở trang ngang.
- Bộ sơn epoxy chung (SE-xx) tạm nằm trong thư mục dự án tủ PCCC; nơi đặt và mã chính thức chờ HTQT-00, nhóm ISO.
