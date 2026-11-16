# Bộ hồ sơ sơn epoxy chung cho phần sắt VKG tự sơn

Lập 16/11/2026 theo PCCC-QĐ-04 (Giám đốc chọn "Lập bộ epoxy chung"). Trạng thái: **bản thảo v0.1, đã viết, đã tự kiểm, chưa duyệt**. Người duyệt: Giám đốc.

Bộ này **không thuộc hồ sơ tủ PCCC** (tủ sơn tĩnh điện, thuê ngoài). Nó tạm nằm trong thư mục dự án tủ PCCC vì phiên soạn chỉ được ghi ở đây; nơi đặt chính thức và mã chính thức (dãy HD, CL theo `00_DIEU_PHOI_CHUNG\QUY-TAC-MA-CHUNG.md`) chờ HTQT-00 và nhóm ISO quyết. Mã SE-xx là mã tạm.

## Danh mục

| Mã tạm | Tài liệu | File (.docx, .pdf; nguồn .md ở `_nguon_md\`) | Trang |
|---|---|---|---|
| SE-01 | Quy cách sơn epoxy cho phần sắt (tờ điền theo từng đơn hàng) | `SE-01_Quy-cach-son-epoxy-chung_v0.1` | 2 |
| SE-02 | Quy trình sơn và kiểm tra sơn epoxy | `SE-02_Quy-trinh-son-va-kiem-tra-son-epoxy_v0.1` | 3 |
| SE-F01 | Nhật ký điều kiện môi trường và thi công sơn | `SE-F01_Nhat-ky-moi-truong-va-thi-cong-son_v0.1` | 2 |
| SE-F02 | Biên bản kiểm chuẩn bị bề mặt | `SE-F02_Bien-ban-kiem-chuan-bi-be-mat_v0.1` | 1 |
| SE-F03 | Phiếu đo chiều dày màng sơn (ướt, khô) | `SE-F03_Phieu-do-chieu-day-mang-son_v0.1` | 2 |
| SE-F04 | Biên bản kiểm ngoại quan, đóng rắn, bám dính | `SE-F04_Kiem-ngoai-quan-dong-ran-bam-dinh_v0.1` | 2 |

Dùng chung với bộ tủ PCCC khi cần: phiếu không phù hợp (PCCC-F10), danh mục thiết bị đo (PCCC-F11), hồ sơ năng lực người kiểm tra (PCCC-F12).

## Nguồn của nội dung

- Hệ sơn (hãng, sản phẩm, số lớp, chiều dày, màu): **chưa có**, Giám đốc chưa nêu. Mọi ô số liệu để trống, điền theo TDS của hãng sơn được chọn.
- Cách làm và tiêu chí kiểm mặc định: lấy theo "Standard inspection procedure for painting" và bảng kiểm tra trong mẫu quy cách sơn của khách BVND (bản sao ở `01_DAU_VAO\KHACH_HANG\2026-11-16_mau-quy-cach-son\`), ghi nhãn [BVND] trong SE-02. Đây là yêu cầu của một khách, VKG dùng tạm làm mặc định; Giám đốc duyệt hoặc nới, siết.
- Vài điểm người soạn đề xuất theo thông lệ, ghi nhãn [VKG]: tần suất thử khí nén đầu ca, 1 tấm mẫu mỗi mẻ, số điểm đo chiều dày, người kiểm không kiểm mẻ mình sơn.

## Đã kiểm gì

- `tu-kiem-se.py`: 6/6 file .docx chữ khớp nguồn, 0 ký tự lỗi phông, A4 dọc, có PDF (kết quả: `_nguon_md\_script\tu-kiem-se_ket-qua.txt`).
- Xem hình SE-01 lần dựng đầu: thấy hai bảng ở mục 4 dính nhau, đã thêm dòng chữ ngăn giữa và dựng lại; **bản dựng lại chưa xem hình**.
- Không để sót tiến trình Word; đã trả khóa Office.

## Chưa kiểm được gì

- Chưa xem hình SE-02 và 4 biểu; chưa in thử.
- Chưa đối chiếu tiêu chuẩn với bản gốc (VKG chưa có).
- Chưa biết VKG có khu sơn, máy phun, thiết bị làm sạch bề mặt, dụng cụ đo nào (SE-02 mục 8 đều ghi "chưa rõ").
- Phần an toàn, môi trường khu sơn không thuộc phạm vi bộ này, chưa rà.

## Giám đốc cần cho biết để hoàn thiện

1. Hãng sơn và hệ sơn thường dùng (sản phẩm lót, phủ; số lớp; chiều dày; màu).
2. Loại nền thường sơn: thép đen, thép mạ kẽm; dùng trong nhà hay ngoài trời.
3. Cách làm sạch bề mặt VKG đang làm: phun hạt, mài, chà.
4. Thiết bị sơn và dụng cụ đo đang có; sơn ở CN1 hay CN2.
5. Ai sơn, ai kiểm.
6. Có giữ mức kiểm theo khách BVND làm mặc định cho mọi đơn không, hay chỉ áp khi khách yêu cầu.
