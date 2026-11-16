# Cập nhật hằng ngày tab "Sản phẩm" của bảng Điều hành HTQT

Bảng: https://claude.ai/artifact/M6h1N4c6rCwo3jPgdrAZyw · Script: `09_CONG_CU\quet-san-pham.ps1` · Chunk: `00_DIEU_PHOI_CHUNG\_BANG\san_pham\` (D).

**Trạng thái 16/11/2026:** tab Sản phẩm đã nạp lần đầu 422 sản phẩm (13 chunk). Giám đốc cho tạo tác vụ hằng ngày (trả lời đánh giá viên 16/11: "Có, tạo đi"): tác vụ `htqt-cap-nhat-san-pham` chạy khoảng 6:44 mỗi sáng, làm đúng 5 bước dưới đây; phiên HTQT-00 không phải chạy tay hằng ngày (chỉ chạy tay khi cần số mới ngay).

## Các bước (tác vụ hoặc chạy tay)
1. Chạy `powershell -NoProfile -ExecutionPolicy Bypass -File "09_CONG_CU\quet-san-pham.ps1"`. Script ghi `_changed.txt` (chunk đổi), `_gone.txt` (chunk bỏ), `_tom-tat.json`, `_hash_moi.json`. Script không ghi gì vào thư mục sản phẩm.
2. Với mỗi chunk trong `_changed.txt`: `ArtifactData set` collection `san_pham`, doc_id = id chunk, `file_path` = chunk JSON. Chunk đã tồn tại thì `get` kèm `out_dir` để lấy `version` rồi `set` với `if_version`. Gộp bằng `batch`.
3. Mỗi chunk trong `_gone.txt`: `delete` (cần version).
4. Ghi `meta/san_pham` = {luc, tong, chua_vao_dm, luu_tru_bo_qua} từ `_tom-tat.json`.
5. Chỉ khi 2–4 thành công: đổi tên `_hash_moi.json` thành `_hash.json`. Lỗi thì không đổi tên, lần sau script đẩy lại.

## Giới hạn đã biết
- "Đã kiểm" chưa tự nhận; "Đã duyệt" lấy từ mục 3c của `BANG-DIEU-KHIEN-HTQT.md` theo mã tài liệu (HTQT-00 cập nhật 3c khi nhóm báo duyệt).
- NS nhiều file đặt tên theo gói (G1, G5…), không có mã chung nên hiện "chưa vào DM".
- Chưa thử liên kết OneDrive mở file từ web; trang chỉ có nút chép đường dẫn.
- Script không đọc nội dung file; loại trừ thư mục lưu trữ, báo cáo nhanh/ngày, và thư mục dữ liệu cá nhân.