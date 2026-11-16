# Bộ thư mục dự án: Tủ PCCC - hồ sơ kiểm soát chất lượng

Tạo ngày 16/11/2026 bằng skill vkg-chung-khoi-tao-du-an (tao-thu-muc-du-an.ps1).

Đánh số theo thứ tự công việc: đầu vào → phân tích → dự toán → mã hoá → 3D → bản vẽ → DXF → BOM/LSX → QC → lắp đặt → phát hành.

| Thư mục | Chứa gì |
|---|---|
| `00_QUAN_LY_DU_AN` | Bảng điều khiển, kế hoạch, bảng quyết định, tiến độ, biên bản họp. |
| `01_DAU_VAO` | Hồ sơ nhận từ đối tác hoặc khách (STEP, PDF, yêu cầu). Mỗi lần nhận một thư mục <yyyy-mm-dd>_<tên>. Không sửa file ở đây. |
| `02_PHAN_TICH_KY_THUAT` | Hiểu biết hệ thống, câu hỏi và bảng xác minh với đối tác, hình minh hoạ. |
| `03_DU_TOAN_BAO_GIA` | Dự toán, báo giá theo phiên bản v1, v2… |
| `04_MA_HOA_CAY_SP` | Bảng đổi mã, phân cụm, cây sản phẩm, item master. |
| `05_MO_HINH_3D` | SolidWorks dựng lại theo <module>\<cụm>. Mã dùng chung ở _CHUNG, STEP con ở _STEP_CUM, bộ mẫu ở _MAU. |
| `06_BAN_VE` | SLDDRW, PDF in (bìa + mục lục), bản vẽ chấn A4. |
| `07_FILE_CAT_DXF` | DXF cắt laser có vạch chấn, khắc mã (TEXT font iso.shx). Đã group: một chi tiết một group, file xếp tấm mỗi chi tiết một group. Tên <mã>_<vật liệu>-<bề mặt>_<dày>mm_sl<nn>.dxf. |
| `08_BOM_LSX` | BOM, lệnh sản xuất, lệnh đặt vật tư, phiếu giao việc. |
| `09_QC_TIEN_DO` | Phiếu kiểm từng khâu, theo dõi tiến độ, NCR. |
| `10_LAP_DAT` | Layout, giao diện ghép máy, hướng dẫn lắp đặt, nghiệm thu. |
| `11_PHAT_HANH` | Bộ chốt R0, R1… (baseline + PDF/DXF). Chỉ ghi khi Giám đốc duyệt phát hành. |
| `99_LUU_TRU` | Bản cũ, bản thay thế. Không xoá, chuyển vào đây. |

## Quy tắc
- File gốc nhận từ đối tác/khách để nguyên trong `01_DAU_VAO`, không sửa, không đổi tên.
- Bản làm việc của Claude ở `_VKG_SANG_LOC_CLAUDE`; chỉ chép sang đây khi anh/chị duyệt.
- Không xoá; bản cũ chuyển vào `99_LUU_TRU`.
