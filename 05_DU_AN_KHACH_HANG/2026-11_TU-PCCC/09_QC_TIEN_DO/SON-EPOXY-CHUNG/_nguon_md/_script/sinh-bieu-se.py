# Sinh nguồn .md cho 4 biểu SE-F01..F04 (bộ sơn epoxy chung, nháp v0.1, 16/11/2026).
# Chạy: python -I sinh-bieu-se.py <thư mục ra>
import sys, os, io
OUT = sys.argv[1]

def head(code, title):
    return (f"# {title}\n\n"
            f"| Mã biểu: **{code}** (mã tạm, chờ HTQT-00 cấp mã chính thức) | Phiên bản **v0.1 (nháp)** · Số phiếu: ________ |\n|---|---|\n"
            f"| Khách hàng, đơn hàng: ________ · Lệnh sản xuất: ________ | Ngày: ________ · Mẻ sơn: ________ · Tờ SE-01 số: ________ |\n\n")

def table(cols, rows=None, blank=0):
    s = "| " + " | ".join(cols) + " |\n|" + "---|" * len(cols) + "\n"
    for r in rows or []:
        r = list(r) + [""] * (len(cols) - len(r)); s += "| " + " | ".join(r) + " |\n"
    for i in range(blank):
        s += "| " + " | ".join([str(i + 1)] + [""] * (len(cols) - 1)) + " |\n"
    return s + "\n"

def sign(roles):
    return "## Ký xác nhận\n\n" + table(["Ký xác nhận"] + roles, [["Họ tên"], ["Chữ ký"], ["Ngày"]])

KQ = "Đạt / Không đạt"
S = ["Người sơn", "Người kiểm tra (QC)", "Khách hàng (nếu chứng kiến)"]
F = {}

F["SE-F01_Nhat-ky-moi-truong-va-thi-cong-son"] = head("SE-F01", "NHẬT KÝ ĐIỀU KIỆN MÔI TRƯỜNG VÀ THI CÔNG SƠN EPOXY") + (
    "Dùng cho SE-02 mục 5, 6 và mục 7 dòng 1, 6. Mỗi mẻ sơn một tờ.\n\n"
    "## 1. Sơn nhận về\n\n"
    + table(["Lớp", "Tên sản phẩm, màu", "Số lô phần A", "Số lô phần B", "Hạn dùng", "Niêm phong, nhãn đủ", "Có TDS, chứng chỉ lô", KQ], [["1"], ["2"], ["3"]])
    + "## 2. Điều kiện môi trường (đo trước mỗi ca và mỗi 4 giờ)\n\n"
    + table(["Số", "Giờ", "Thời tiết", "Nhiệt độ không khí (°C)", "Độ ẩm (%)", "Điểm sương (°C)", "Nhiệt độ bề mặt (°C)", "Bề mặt trừ điểm sương (°C)", KQ, "Người đo"], blank=5)
    + "Tiêu chí (SE-02 mục 5): bề mặt cao hơn điểm sương ít nhất 3 °C; không dưới 10 °C; bề mặt không ẩm, không mưa, gió bụi. Giới hạn theo TDS: độ ẩm tối đa ________ %; nhiệt độ bề mặt tối đa ________ °C. Không đạt thì không sơn.\n\n"
    "Thiết bị đo, mã: ________ · Thử khí nén đầu ca (giấy thấm, ASTM D4285): ☐ không dầu, không nước ☐ có dầu hoặc nước, đã xả lọc và thử lại lúc ________\n\n"
    "## 3. Pha sơn và thi công\n\n"
    + table(["Mục", "Lớp 1", "Lớp 2", "Lớp 3"], [
        ["Tỷ lệ pha theo TDS / thực tế"], ["Khuấy máy (trên 5 lít không khuấy tay)"], ["Dung môi, tỷ lệ pha (không quá mức TDS)"],
        ["Giờ pha; thời gian sống theo TDS"], ["Phương pháp thi công"], ["Sơn dặm cạnh, góc, mối hàn, lỗ trước khi phủ"],
        ["Giờ bắt đầu, kết thúc"], ["Thời gian từ khi làm sạch xong (sau phun hạt: không quá 4 giờ)"],
        ["Thời gian từ lớp trước (trong khoảng tối thiểu, tối đa của TDS)"], ["Gần đó không phun hạt, mài, hàn"], ["Chiều dày màng khô mục tiêu (µm), theo SE-01"]])
    + "Ghi chú, sự cố: ________\n\n" + sign(S))

F["SE-F02_Bien-ban-kiem-chuan-bi-be-mat"] = head("SE-F02", "BIÊN BẢN KIỂM CHUẨN BỊ BỀ MẶT TRƯỚC KHI SƠN EPOXY") + (
    "Dùng cho SE-02 mục 4 và mục 7 dòng 2 đến 5. Điểm dừng: chưa có chữ ký người kiểm tra thì chưa sơn.\n\n"
    "Chi tiết, số lượng: ________ · Vật liệu nền: ________ · Cách chuẩn bị bề mặt đã chọn ở SE-01: ________\n\n"
    + table(["Số", "Hạng mục", "Phương pháp, tiêu chí", "Kết quả, vị trí kiểm", KQ], [
        ["1", "Dầu, mỡ, chất bẩn", "Mắt thường 100 %; SSPC SP1; không còn dầu mỡ"],
        ["2", "Bắn tóe, xỉ, thuốc hàn", "Đã loại hết"],
        ["3", "Cạnh sắc, mối hàn, khuyết tật bề mặt", "ISO 8501-3, cấp ghi ở SE-01: ________; đã bo, vát, mài"],
        ["4", "Che bề mặt không sơn", "Ren, mặt lắp ghép, bảng tên, chi tiết inox, đồng đã che"],
        ["5", "Cấp làm sạch sau xử lý", "Mắt thường 100 %; ISO 8501-1; đạt cấp ghi ở SE-01: ________"],
        ["6", "Bụi, hạt mài sót, độ khô", "Đã hút hoặc thổi sạch; bề mặt khô"],
        ["7", "Độ nhám Rz (µm), chỉ khi phun hạt", "ISO 8503; theo TDS sơn lót: ________ µm"],
        ["8", "Muối hòa tan (mg/m²), pH, chỉ khi đơn hàng yêu cầu", "ISO 8502-6; tiêu chí theo đơn hàng: ________"],
        ["9", "Giờ làm sạch xong", "Sơn lót trong 4 giờ sau phun hạt"],
        ["10", "Bề mặt khuất sau khi lắp", "Đã xác định, sẽ sơn trước khi lắp"]])
    + "Kết luận: ☐ Cho sơn ☐ Làm lại · Số phiếu không phù hợp (nếu có): ________\n\n" + sign(S))

F["SE-F03_Phieu-do-chieu-day-mang-son"] = head("SE-F03", "PHIẾU ĐO CHIỀU DÀY MÀNG SƠN EPOXY (MÀNG ƯỚT, MÀNG KHÔ)") + (
    "Dùng cho SE-02 mục 7 dòng 7, 8. Đo từng lớp, trước khi sơn lớp kế.\n\n"
    "Lớp đang đo: ________ · Chiều dày màng khô quy định theo SE-01: lớp này ________ µm; cộng dồn tới lớp này ________ µm; tối đa theo TDS ________ µm\n\n"
    "Máy đo, mã, số chứng chỉ hiệu chuẩn: ________ · Nền: ☐ thép đen ☐ thép mạ kẽm (cách trừ lớp kẽm: ________)\n\n"
    "## 1. Kiểm máy trên lá chuẩn (ít nhất 2 lần mỗi ngày)\n\n"
    + table(["Lần", "Giờ", "Lá chuẩn (µm)", "Số đọc (µm)", "Sai lệch (µm)", "Người kiểm"], blank=3)
    + "## 2. Chiều dày màng ướt (trong lúc sơn)\n\n"
    + table(["Số", "Chi tiết, vị trí", "Giờ", "Màng ướt mục tiêu (µm)", "Màng ướt đo (µm)", KQ], blank=4)
    + "Màng ướt mục tiêu tính từ chiều dày màng khô và hàm lượng rắn theo thể tích của TDS (có tính phần dung môi pha thêm).\n\n"
    "## 3. Chiều dày màng khô\n\n"
    + table(["Số", "Chi tiết, mặt, vị trí", "Số đọc 1", "Số đọc 2", "Số đọc 3", "Số đọc 4", "Số đọc 5", "Trung bình (µm)", KQ], blank=12)
    + "Tiêu chí (SE-02 mục 7): không thấp hơn giá trị quy định ở SE-01, không vượt tối đa của TDS. Số điểm đo mỗi chi tiết theo đơn hàng; nếu đơn hàng không nêu, đo mỗi mặt chính ít nhất 5 điểm, có điểm ở cạnh và mối hàn (đề xuất của người soạn, chờ duyệt). Không đạt: sửa, sơn thêm hoặc sơn lại.\n\n" + sign(S))

F["SE-F04_Kiem-ngoai-quan-dong-ran-bam-dinh"] = head("SE-F04", "BIÊN BẢN KIỂM NGOẠI QUAN, ĐÓNG RẮN VÀ BÁM DÍNH LỚP SƠN EPOXY") + (
    "Dùng cho SE-02 mục 7 dòng 9, 10, 11. Điểm dừng: chưa có chữ ký người kiểm tra thì chưa giao sang lắp ráp, đóng gói.\n\n"
    "## 1. Ngoại quan (100 % bề mặt sau mỗi lớp)\n\n"
    "Màu quy định ở SE-01: ________ · Mẫu màu đối chiếu: ________\n\n"
    + table(["Số", "Chi tiết", "Lớp", "Màu đồng nhất", "Mặt chính", "Cạnh, góc, mối hàn", "Khuyết tật (mã), vị trí", KQ], blank=8)
    + "Mã khuyết tật: 1 thiếu sơn · 2 lỗ kim · 3 chảy · 4 võng · 5 bong · 6 da cam · 7 bụi sơn quá mức · 8 phun khô · 9 nhăn · 10 nứt · 11 trầy, móp. Tiêu chí: không có khuyết tật mã 1 đến 10. Không đạt: sửa, kiểm lại.\n\n"
    "## 2. Đóng rắn lớp lót (chà dung môi, ASTM D5402; kiểm điểm trước khi sơn lớp kế)\n\n"
    "Dung môi: ________ · Số lần chà kép: ________ (theo khuyến nghị hãng sơn)\n\n"
    + table(["Số", "Chi tiết hoặc tấm mẫu, vị trí", "Giờ thử", "Hao chiều dày (Có, Không)", "Cặn sơn trên khăn (Có, Không)", KQ], blank=3)
    + "Tiêu chí: không hao chiều dày, không có cặn sơn trên khăn. Không đạt: kéo dài thời gian đóng rắn, kiểm điều kiện.\n\n"
    "## 3. Bám dính (cắt ô, ISO 2409; trên tấm mẫu sơn cùng mẻ)\n\n"
    "Dụng cụ cắt, mã: ________ · Bước cắt (mm): ________ (chọn theo chiều dày màng theo ISO 2409) · Băng dính: ________ · Ngày sơn: ________ · Ngày thử: ________\n\n"
    + table(["Số", "Tấm mẫu số hoặc chi tiết, vị trí", "Chiều dày màng khô tại chỗ thử (µm)", "Cấp ISO 2409 (0–5)", "Ảnh số", KQ], blank=3)
    + "Tiêu chí: cấp 2 hoặc tốt hơn (cấp 0, 1, 2). Không đạt: kiểm lại trên sản phẩm; loại lớp sơn. Chỗ thử trên sản phẩm phải sửa sơn theo hướng dẫn hãng sơn.\n\n"
    "Kết luận: ☐ Đạt, cho chuyển bước kế ☐ Không đạt · Số phiếu không phù hợp (nếu có): ________\n\n" + sign(S))

os.makedirs(OUT, exist_ok=True)
for name, text in F.items():
    with io.open(os.path.join(OUT, name + "_v0.1.md"), "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print(name)
