# Sinh file .md nguồn cho 13 biểu mẫu PCCC-F01..F13 (bản nháp v0.1, 16/11/2026).
# Chạy: python -I sinh-bieu-mau.py <thư mục ra>
# Hàng trống của bảng luôn có số thứ tự ở cột đầu (script dung-docx-iso.ps1 bỏ qua hàng chỉ có dấu | và khoảng trắng).
import sys, os, io

OUT = sys.argv[1]
CLIENT = "Khách hàng / Client: BVND TRADING JOINT STOCK COMPANY · Dự án / Project: ADJUSTMENT WORK FOR ETHANE MATERIAL"

VER = {'PCCC-F01': '0.2', 'PCCC-F03': '0.4', 'PCCC-F04': '0.2', 'PCCC-F05': '0.2', 'PCCC-F06': '0.2', 'PCCC-F07': '0.4', 'PCCC-F08': '0.2', 'PCCC-F09': '0.2', 'PCCC-F11': '0.2', 'PCCC-F13': '0.4'}  # v0.2: VKG tu son (PCCC-QD-01), cot ky doi thanh To son VKG

def head(code, title):
    return (f"# {title}\n\n"
            f"| Mã biểu / Form No: **{code}** (mã tạm của dự án, chờ cấp mã chính thức) | Phiên bản / Rev: **v{VER.get(code, '0.1')} (nháp / draft)** · Số phiếu / Record No: ________ |\n"
            f"|---|---|\n"
            f"| {CLIENT} | Lệnh sản xuất / Production order: ________ · Ngày / Date: ________ |\n\n")

def table(cols, rows=None, blank=0, start=1):
    s = "| " + " | ".join(cols) + " |\n|" + "---|" * len(cols) + "\n"
    for r in rows or []:
        r = list(r) + [""] * (len(cols) - len(r))
        s += "| " + " | ".join(r) + " |\n"
    for i in range(blank):
        s += "| " + " | ".join([str(start + i)] + [""] * (len(cols) - 1)) + " |\n"
    return s + "\n"

def sign(roles):
    cols = ["Ký xác nhận / Sign-off"] + roles
    rows = [["Họ tên / Name"], ["Chữ ký / Signature"], ["Ngày / Date"]]
    return "## Ký xác nhận / Sign-off\n\n" + table(cols, rows)

# Biểu mẫu không in bảng lịch sử (phiên bản đã ghi ở khung đầu và chân trang), để tờ ghi nhận không thừa trang.
HIST = ""

S3 = ["VKG (QC)", "Đơn vị sơn / Applicator", "Khách hàng / Client (W, H)"]
S2 = ["VKG (QC)", "Khách hàng / Client (nếu chứng kiến / if witnessed)"]
KQ = "Đạt / Không đạt (Pass / Fail)"

F = {}

F["PCCC-F01_Kiem-vat-tu-dau-vao"] = head("PCCC-F01", "PHIẾU KIỂM VẬT TƯ ĐẦU VÀO / INCOMING MATERIAL INSPECTION RECORD") + (
    "Dùng cho ITP 2.1 đến 2.4. Mỗi lần nhận hàng lập một phiếu. / For ITP 2.1 to 2.4. One record per receipt.\n\n"
    "Nhà cung cấp / Supplier: ________ · Số phiếu giao, hóa đơn / Delivery note, invoice: ________ · Ngày nhận / Received: ________\n\n"
    "## 1. Thép tấm, phụ kiện / Sheet, steel, accessories\n\n"
    + table(["Số / No.", "Tên vật tư, quy cách / Material, size", "Số lô, số cuộn / Lot, coil No.", "Số chứng chỉ (CO, CQ) / Certificate No.", "Số lượng / Qty", "Chiều dày đo (mm) / Measured thickness", "Bề mặt / Surface", KQ], blank=6)
    + "Tiêu chí / Criteria: tôn mạ kẽm điện phân 2 mm; thép chân đỡ 6 mm, mạ kẽm nhúng nóng (nguồn: F1, F2 của khách). Mác thép, tiêu chuẩn tôn, tiêu chuẩn và chiều dày lớp mạ: chờ khách (Q-03). Bề mặt: không gỉ trắng, không trầy sâu, không sót mạ. Phụ kiện: theo bản vẽ (chờ, Q-01). / 2 mm electro-galvanized sheet; 6 mm hot-dip galvanized stand (client F1, F2). Grade, standards, zinc thickness pending. Accessories per drawing (pending).\n\n"
    "## 2. Bột sơn, sơn ghi chữ, hóa chất tiền xử lý / Powder, marking paint, pre-treatment chemicals\n\n"
    + table(["Số / No.", "Tên sản phẩm, màu / Product, colour", "Hãng / Manufacturer", "Số lô / Batch No.", "Ngày sản xuất / Mfg date", "Hạn dùng / Expiry", "Niêm phong, nhãn / Seal, label", "TDS, chứng chỉ lô / TDS, batch cert.", KQ], blank=5)
    + "Tiêu chí / Criteria: hãng Jotun; sản phẩm đúng PCCC-03 (Jotun Facade 1407, RAL 3000); thùng, bao gốc còn niêm phong, nhãn đủ tên hãng, tên sản phẩm, số lô, ngày sản xuất; còn hạn dùng; kho khô, mát, thoáng theo TDS (F4 10.2 a, 11 g). / Jotun; product per PCCC-03; original sealed packing with full label; within shelf life; storage per TDS.\n\n"
    "Kết luận / Conclusion: ☐ Nhận / Accepted ☐ Nhận có điều kiện / Conditional ☐ Trả lại / Rejected · Số phiếu PCCC-F10 (nếu có) / NCR No.: ________\n\n"
    + sign(["Người kiểm / Inspected by (VKG)", "Thủ kho / Storekeeper", "Người duyệt / Approved by"]) + HIST)

F["PCCC-F02_Kiem-kich-thuoc-ngoai-quan-gia-cong"] = head("PCCC-F02", "BIÊN BẢN KIỂM KÍCH THƯỚC, NGOẠI QUAN GIA CÔNG / FABRICATION DIMENSIONAL AND VISUAL INSPECTION RECORD") + (
    "Dùng cho ITP 3.1 đến 3.5. Kích thước danh nghĩa và dung sai chép từ bản vẽ của khách; chưa có bản vẽ thì chưa dùng phiếu này (Q-01). / For ITP 3.1 to 3.5. Nominal dimensions and tolerances copied from the client drawing; not to be used before drawings are available.\n\n"
    "Loại tủ / Cabinet type: ________ · Bản vẽ số, bản / Drawing No., rev: ________ · Mã tủ / Cabinet No.: ________ · Công đoạn / Stage: ☐ Cắt, đột / Cutting ☐ Chấn / Bending ☐ Hàn / Welding ☐ Trước sơn / Before coating\n\n"
    "## 1. Kích thước / Dimensions\n\n"
    + table(["Số / No.", "Vị trí, kích thước kiểm / Feature", "Danh nghĩa (mm) / Nominal", "Dung sai (mm) / Tolerance", "Đo được (mm) / Measured", "Dụng cụ đo, mã / Instrument, ID", KQ], blank=10)
    + "Kích thước tối thiểu phải đo ở bước trước sơn (ITP 3.5): cao, rộng, sâu bao ngoài; hai đường chéo mặt trước; khe cửa; độ phẳng cánh cửa; vị trí lỗ lắp. / Minimum features before coating: overall height, width, depth; front diagonals; door gaps; door flatness; mounting holes.\n\n"
    "## 2. Ngoại quan / Visual\n\n"
    + table(["Số / No.", "Hạng mục / Item", "Tiêu chí / Criteria", KQ, "Ghi chú / Remarks"], rows=[
        ["1", "Mép cắt / Cut edges", "Không ba via / No burrs", "", ""],
        ["2", "Mép chấn / Bends", "Không nứt, không bong lớp mạ / No cracks, no zinc flaking", "", ""],
        ["3", "Mối hàn / Welds", "Liền, không nứt, không rỗ hở, không thủng; mức chấp nhận theo bản vẽ (chờ, Q-22) / Continuous, no cracks, open porosity, burn-through; level per drawing (pending)", "", ""],
        ["4", "Bắn tóe, xỉ, thuốc hàn / Spatter, slag, flux", "Đã loại hết (F4 9.2 b) / Removed", "", ""],
        ["5", "Cạnh sắc / Sharp edges", "Đã bo hoặc vát theo ISO 8501-3; cấp: chờ (Q-15) / Rounded or chamfered; grade pending", "", ""],
        ["6", "Chỗ mài mất lớp mạ / Ground areas without zinc", "Mài nhẵn (F4 9.4 c); phục hồi kẽm: chờ (Q-15) / Ground smooth; zinc restoration pending", "", ""],
        ["7", "Mã tủ / Identification", "Có mã tủ đúng quy tắc PCCC-01 mục 5 / Marked per PCCC-01 section 5", "", ""],
        ["8", "Lắp thử cửa / Trial fit of door", "Đóng mở được / Operates", "", ""],
        ["9", "Bề mặt khuất phải sơn trước khi lắp / Hidden surfaces to coat before assembly", "Đã xác định và ghi / Identified (F4 9.1 b)", "", ""],
    ])
    + "Kết luận / Conclusion: ☐ Cho chuyển sơn / Released to coating ☐ Sửa rồi kiểm lại / Rework and re-inspect · Số phiếu PCCC-F10 / NCR No.: ________\n\n"
    + sign(["Tổ trưởng / Foreman", "VKG (QC) – điểm dừng 3.5 / hold point", "Khách hàng / Client (W)"]) + HIST)

F["PCCC-F03_Nhat-ky-dieu-kien-moi-truong"] = head("PCCC-F03", "NHẬT KÝ ĐIỀU KIỆN MÔI TRƯỜNG VÀ KHÍ NÉN / ENVIRONMENTAL CONDITIONS AND COMPRESSED AIR LOG") + (
    "Dùng cho ITP 4.1, 4.7. Đo trước mỗi ca và mỗi 4 giờ khi phun hạt, sơn, đóng rắn (bảng kiểm tra F1, F2; F4 10.1). / For ITP 4.1, 4.7. Measured before each shift and every 4 hours during blasting, painting and curing.\n\n"
    "Nơi sơn / Location: ________ · Hệ sơn / System: sơn tĩnh điện / powder (PCCC-03) · Mẻ sơn / Coating batch: ________ · Thiết bị đo, mã / Instrument, ID: ________\n\n"
    "## 1. Điều kiện môi trường / Environmental conditions\n\n"
    + table(["Số / No.", "Giờ / Time", "Thời tiết / Weather", "Nhiệt độ không khí (°C) / Air temp.", "Độ ẩm (%) / RH", "Điểm sương (°C) / Dew point", "Nhiệt độ bề mặt (°C) / Surface temp.", "Chênh bề mặt – điểm sương (°C) / Difference", KQ, "Người đo / By"], blank=8)
    + "Tiêu chí / Criteria (F4 10.1; bảng kiểm tra F1, F2): theo TDS; nhiệt độ bề mặt cao hơn điểm sương ít nhất 3 °C; nhiệt độ không dưới 10 °C; không sương, mưa, bề mặt ẩm, gió bụi. Giới hạn độ ẩm và nhiệt độ bề mặt tối đa theo TDS: ________ (điền khi có TDS; chờ, Q-09, Q-10). Không đạt: không phun hạt, không sơn. / As TDS; surface at least 3 °C above dew point; not below 10 °C; no fog, rain, damp surface, wind or dust. RH and maximum surface temperature limits per TDS: to be filled in. If not met: no blasting or coating.\n\n"
    "## 2. Khí nén / Compressed air (ASTM D4285)\n\n"
    + table(["Số / No.", "Giờ / Time", "Điểm thử / Test point", "Thời gian thổi lên giấy thấm / Blotter exposure time", "Dầu / Oil (Có, Không / Yes, No)", "Nước / Water (Có, Không / Yes, No)", "Đã xả bẫy, lọc / Traps drained", KQ, "Người thử / By"], blank=3)
    + "Tiêu chí / Criteria: không thấy dầu, nước trên giấy thấm (F4 9.3 c). Tần suất: chờ khách (Q-11); đề xuất của VKG: đầu mỗi ca. / No oil or water on the blotter. Frequency pending; VKG proposes start of each shift.\n\n"
    + sign(S3) + HIST)

F["PCCC-F04_Bien-ban-kiem-chuan-bi-be-mat"] = head("PCCC-F04", "BIÊN BẢN KIỂM CHUẨN BỊ BỀ MẶT / SURFACE PREPARATION INSPECTION RECORD") + (
    "Dùng cho ITP 4.2 đến 4.6. Mỗi mẻ sơn lập một biên bản. / For ITP 4.2 to 4.6. One record per coating batch.\n\n"
    "Hệ sơn / System: sơn tĩnh điện / powder (PCCC-03) · Mẻ sơn / Coating batch: ________ · Mã tủ, chi tiết / Cabinet, part Nos.: ________ · Số lượng / Qty: ________\n\n"
    "## 1. Kiểm trước khi xử lý / Before pre-treatment (ITP 4.2)\n\n"
    + table(["Số / No.", "Hạng mục / Item", "Phương pháp, tiêu chí / Method, criteria", KQ, "Ghi chú / Remarks"], rows=[
        ["1", "Dầu, mỡ / Oil, grease", "Mắt thường 100 %; SSPC SP1; không dầu mỡ / 100 % visual; no oil or grease", "", ""],
        ["2", "Cạnh, mối hàn, khuyết tật / Edges, welds, imperfections", "ISO 8501-3 (cấp: chờ, Q-15); đã xử lý / prepared", "", ""],
        ["3", "Che chắn bề mặt không sơn / Masking", "Ren, bảng tên, chi tiết inox, đồng đã che (F4 9.1 c, d; 9.3 g) / Threads, name plates, stainless and brass parts masked", "", ""],
    ])
    + "## 2. Tiền xử lý hóa chất (sơn tĩnh điện) / Chemical pre-treatment (powder) (ITP 4.3)\n\n"
    + table(["Bước / Step", "Công đoạn / Operation", "Hóa chất, nồng độ / Chemical, concentration", "Nhiệt độ (°C) / Temp.", "Thời gian (phút) / Time (min)", "Giờ thực hiện / Clock time", KQ], rows=[
        ["1", "Tẩy dầu mỡ / Degreasing bath"], ["2", "Rửa nước sạch / Clean water rinse"], ["3", "Ăn mòn, phốt phát hóa / Etching, phosphating"], ["4", "Rửa nước ngọt / Fresh water rinse"], ["5", "Sấy khô / Drying oven"]])
    + "Thông số bể theo nhà cung cấp hóa chất, khách chưa quy định (Q-06). Đủ 5 bước theo PCCC-03. / Bath parameters per chemical supplier, not specified by client. All five steps of PCCC-03 required.\n\n"
    + "## 3. Kiểm sau làm sạch / After cleaning (ITP 4.4 đến 4.6)\n\n"
    + table(["Số / No.", "Phép thử / Test", "Phương pháp / Method", "Tiêu chí / Criteria", "Kết quả, vị trí đo / Result, location", KQ], rows=[
        ["1", "Ngoại quan bề mặt sạch / Cleaned surface", "Mắt thường 100 %; ISO 8501-1 (áp dụng trên nền mạ: chờ, Q-05, Q-06)", "Không dầu, gỉ trắng, cặn hàn, vết nước, bụi; khô hoàn toàn (F4 9.4 b) / Free of oil, white rust, weld residue, water marks, dust; completely dry", "", ""],
        ["2", "Độ nhám Rz (µm) / Roughness", "ISO 8503; kiểm điểm / spot checks", "Theo TDS sơn lót: ________ µm (khách để trống, Q-07); không áp cho sơn tĩnh điện nếu khách xác nhận / As primer TDS (blank); N/A for powder if confirmed", "", ""],
        ["3", "Muối hòa tan (mg/m²) / Soluble salts", "ISO 8502-6 (Bresle); tối thiểu 1 lần mỗi hạng mục; cách đo: chờ (Q-08)", "Nhỏ hơn 30 mg/m² / Less than 30 mg/m²", "", ""],
        ["4", "pH", "Cách đo: chờ (Q-08) / method pending", "Từ 6 đến 8 / Between 6 and 8", "", ""],
    ])
    + "Không đạt: làm sạch lại, rửa nước ngọt, thử lại tới khi đạt (bảng kiểm tra F1, F2). / If not met: re-clean, wash with fresh water and re-test until acceptable.\n\n"
    "Kết luận / Conclusion: ☐ Cho sơn / Released for coating ☐ Làm lại / Rework · Số phiếu PCCC-F10 / NCR No.: ________\n\n"
    + sign(["Đơn vị sơn / Applicator", "VKG (QC) – điểm dừng 4.4 / hold point", "Khách hàng / Client (W)"]) + HIST)

F["PCCC-F05_Phieu-do-chieu-day-mang-son"] = head("PCCC-F05", "PHIẾU ĐO CHIỀU DÀY MÀNG SƠN KHÔ (DFT) / DRY FILM THICKNESS RECORD (DFT)") + (
    "Dùng cho ITP 4.11, 5.3. / For ITP 4.11, 5.3.\n\n"
    "Hệ sơn / System: sơn tĩnh điện, 1 lớp 100 µm / powder, 1 coat 100 µm (nguồn: F1 của khách) · Mẻ sơn / Coating batch: ________\n\n"
    "Máy đo, mã, số chứng chỉ hiệu chuẩn / Gauge, ID, calibration certificate: ________\n\n"
    "## 1. Kiểm máy trên lá chuẩn (ít nhất 2 lần mỗi ngày) / Gauge verification on shims (at least twice daily)\n\n"
    + table(["Lần / No.", "Giờ / Time", "Lá chuẩn (µm) / Shim value", "Số đọc (µm) / Reading", "Sai lệch (µm) / Deviation", "Nền chỉnh không / Zero substrate", "Người kiểm / By"], blank=3)
    + "Nền chỉnh không và cách trừ lớp kẽm: chờ khách chấp thuận (Q-12). Ghi rõ cách đã dùng: ☐ chỉnh không trên nền mạ chưa sơn cùng lô ☐ đo lớp kẽm trước sơn rồi trừ: ________ µm. / Zero substrate and zinc deduction pending client acceptance. Method used: ☐ zero on unpainted galvanized substrate of the same lot ☐ zinc measured before coating and deducted.\n\n"
    "## 2. Chiều dày màng khô / Dry film thickness (ISO 19840)\n\n"
    + table(["Số / No.", "Mã tủ / Cabinet No.", "Mặt, vị trí / Face, location", "Số đọc 1", "Số đọc 2", "Số đọc 3", "Số đọc 4", "Số đọc 5", "Trung bình (µm) / Mean", KQ], blank=12)
    + "Mặt đo mỗi tủ / Faces per cabinet: cánh cửa ngoài, cánh cửa trong, hông trái, hông phải, nóc, đáy, lưng, chân đỡ. Số điểm đo mỗi mặt: chờ khách (Q-12); biểu để sẵn 5 số đọc mỗi dòng. / Door outside, door inside, left, right, top, bottom, back, stand. Number of readings per face pending; five readings per line provided.\n\n"
    "Tiêu chí / Criteria (bảng kiểm tra F1, F2): không thấp hơn DFT quy định; không vượt tối đa theo TDS: ________ µm (chờ TDS, Q-09). 100 % bề mặt. Không đạt: sửa, sơn thêm hoặc sơn lại. / Not less than the specified DFT and not more than the TDS maximum (pending). 100 % of surfaces. If not met: repair, additional coat or re-coat.\n\n"
    + sign(["Đơn vị sơn / Applicator", "VKG (QC) – điểm dừng 4.11 / hold point", "Khách hàng / Client (W)"]) + HIST)

F["PCCC-F06_Bien-ban-thu-bam-dinh"] = head("PCCC-F06", "BIÊN BẢN THỬ BÁM DÍNH / ADHESION TEST RECORD") + (
    "Dùng cho ITP 4.14. / For ITP 4.14.\n\n"
    "Hệ sơn / System: sơn tĩnh điện / powder (PCCC-03) · Mẻ sơn / Coating batch: ________ · Ngày sơn / Coating date: ________ · Ngày thử / Test date: ________ · Thời gian đóng rắn trước khi thử / Cure time before test: ________\n\n"
    "## 1. Thử cắt ô / Cross-cut test (ISO 2409)\n\n"
    "Dụng cụ cắt, mã / Cutting tool, ID: ________ · Bước cắt (mm) / Cut spacing: ________ · Loại băng dính / Tape: ________ · Bước cắt chọn theo chiều dày màng theo ISO 2409 (đối chiếu bản tiêu chuẩn khi có). / Spacing selected by film thickness per ISO 2409.\n\n"
    + table(["Số / No.", "Mẫu thử: tấm mẫu số hoặc mã tủ, vị trí / Specimen: panel No. or cabinet No., location", "DFT tại chỗ thử (µm) / DFT at test spot", "Cấp ISO 2409 (0–5) / Classification", "Ảnh số / Photo No.", KQ], blank=6)
    + "Tiêu chí / Criteria (bảng kiểm tra F1, F2): ISO 2409 cấp 2 (cấp 0, 1, 2 là đạt). Tấm mẫu sơn cùng lúc với sản phẩm; kiểm điểm thường xuyên; số tấm mẫu, tần suất: chờ khách (Q-16), đề xuất của VKG 1 tấm mỗi mẻ sơn. Không đạt: kiểm lại trên sản phẩm; từ chối lớp sơn. / ISO 2409 classification 2 (0, 1, 2 pass). Panels coated together with the items; number and frequency pending, VKG proposes 1 panel per batch. If not met: re-check on the item; coating rejected.\n\n"
    "## 2. Thử kéo bật (chỉ khi khách xác nhận áp dụng cho tủ, Q-16) / Pull-off test (ISO 4624, only if confirmed for cabinets)\n\n"
    "Máy kéo, mã, chứng chỉ hiệu chuẩn / Tester, ID, certificate: ________ · Đường kính đầu kéo (mm) / Dolly diameter: ________ · Keo / Adhesive: ________\n\n"
    + table(["Số / No.", "Mẫu thử / Specimen", "Lực bám (MPa) / Pull-off strength", "Kiểu phá hủy (nền, giữa lớp, keo) / Nature of failure", KQ], blank=3)
    + "Tiêu chí nêu trong F1 bản Anh: không nhỏ hơn 5 MPa (50 kg/cm²); F1 bản Việt và F2 không nêu. / Criterion in F1 English text: not less than 5 MPa (50 kg/cm²); not stated in F1 Vietnamese text or F2.\n\n"
    "Sửa điểm thử trên sản phẩm / Repair of test spot on item: ________ (cách sửa: chờ, Q-16)\n\n"
    + sign(["Người thử / Tested by", "VKG (QC) – điểm dừng 4.14 / hold point", "Khách hàng / Client (W)"]) + HIST)

F["PCCC-F07_Nhat-ky-lo-say-va-thu-cha-dung-moi"] = head("PCCC-F07", "NHẬT KÝ LÒ SẤY VÀ THỬ CHÀ DUNG MÔI / OVEN CURE LOG AND SOLVENT RUB TEST RECORD") + (
    "Dùng cho ITP 4.9, 4.12. / For ITP 4.9, 4.12.\n\n"
    "## 1. Nhật ký lò sấy (sơn tĩnh điện) / Oven cure log (powder)\n\n"
    "Lò số / Oven: ________ · Thiết bị ghi nhiệt, mã / Recorder or data logger, ID: ________ · Yêu cầu đóng rắn: nhiệt độ kim loại ________ °C trong ________ phút (theo PS-03 của khách và TDS; **chưa có, Q-09, Q-17**) / Required cure: metal temperature and time per client PS-03 and TDS (not yet available)\n\n"
    + table(["Mẻ lò / Oven batch", "Mã tủ, chi tiết, tấm mẫu / Items, panels", "Giờ vào / Time in", "Giờ ra / Time out", "Nhiệt độ lò đặt (°C) / Set temp.", "Nhiệt độ kim loại đo (°C) / Metal temp.", "Thời gian ở nhiệt độ (phút) / Time at temp.", "Biểu đồ nhiệt số / Chart No.", KQ], blank=6)
    + "Nhiệt độ lò ghi liên tục hoặc kiểm bằng bộ ghi dữ liệu theo chu kỳ ________ (khách để trống, Q-11). / Oven temperature recorded continuously or verified by data logger at intervals of ________ (blank in client document).\n\n"
    "## 2. Thử chà dung môi / Solvent rub test (ASTM D5402)\n\n"
    "Dung môi / Solvent: ________ · Số lần chà kép / Number of double rubs: ________ (khách để trống; theo khuyến nghị nhà sản xuất sơn, Q-11 / blank; per paint manufacturer) · Vải thử / Cloth: ________\n\n"
    + table(["Số / No.", "Mẻ lò / Oven batch", "Mẫu thử: tấm mẫu hoặc mã tủ, vị trí / Specimen, location", "Giờ thử / Time", "Sơn mềm, bong / Softening, removal (Có, Không / Yes, No)", "Cặn sơn trên khăn / Residue on cloth (Có, Không / Yes, No)", KQ], blank=6)
    + "Tiêu chí / Criteria (bảng kiểm tra F1). Mỗi mẻ lò: sơn không mềm, không bong, không để cặn nhìn thấy trên khăn; không đạt thì kéo dài thời gian hoặc chỉnh điều kiện đóng rắn theo nhà sản xuất bột. / Each oven batch: no softening, removal or visible residue on the cloth; otherwise extend or adjust cure per the powder manufacturer.\n\n"
    + sign(S3) + HIST)

F["PCCC-F08_Kiem-ngoai-quan-lop-son-va-ghi-chu"] = head("PCCC-F08", "BIÊN BẢN KIỂM NGOẠI QUAN LỚP SƠN VÀ GHI CHỮ / COATING VISUAL AND MARKING INSPECTION RECORD") + (
    "Dùng cho ITP 4.13, 4.15, 5.3. Kiểm 100 % bề mặt sau mỗi lớp. / For ITP 4.13, 4.15, 5.3. 100 % of surfaces after each coat.\n\n"
    "Hệ sơn / System: sơn tĩnh điện / powder (PCCC-03) · Mẻ sơn / Coating batch: ________ · Lớp / Coat: ________ · Mẫu màu đối chiếu / Colour reference: RAL 3000, mẫu số / panel No. ________ (mẫu duyệt: chờ, Q-13)\n\n"
    "## 1. Ngoại quan lớp sơn / Coating appearance\n\n"
    "Ghi Đ (đạt) hoặc K (không đạt) cho từng tủ; khuyết tật ghi mã ở cột cuối. / Enter Đ (pass) or K (fail) per cabinet; defect codes in the last column.\n\n"
    + table(["Số / No.", "Mã tủ / Cabinet No.", "Màu đồng nhất RAL 3000 / Uniform colour", "Mặt ngoài / External faces", "Mặt trong / Internal faces", "Cạnh, góc, mối hàn / Edges, corners, welds", "Chân đỡ / Stand", "Khuyết tật, vị trí / Defects, location", KQ], blank=10)
    + "Mã khuyết tật / Defect codes (bảng kiểm tra F1, F2; F4 10.3 g): 1 thiếu sơn / holiday · 2 lỗ kim / pinhole · 3 chảy / run · 4 võng / sag · 5 bong / flaking · 6 da cam / orange peel · 7 bụi sơn quá mức / excessive overspray · 8 phun khô / dry spray · 9 nhăn / wrinkling · 10 nứt / mud cracking · 11 trầy, móp / scratch, dent.\n\n"
    "Tiêu chí / Criteria: màu đồng nhất RAL 3000; không có khuyết tật mã 1 đến 10. Điều kiện quan sát, độ bóng: chờ khách (Q-13). Không đạt: sửa khuyết tật, kiểm lại. / Uniform RAL 3000; none of defects 1 to 10. Viewing conditions and gloss pending. If not met: repair and re-inspect.\n\n"
    "## 2. Ghi chữ, đánh dấu / Marking and lettering\n\n"
    + table(["Số / No.", "Hạng mục / Item", "Yêu cầu / Requirement", "Thực tế / Actual", KQ], rows=[
        ["1", "Loại sơn / Paint type", "Sơn Polyurethane (PU) / Polyurethane paint", "", ""],
        ["2", "Kiểu chữ / Letter style", "Gothic", "", ""],
        ["3", "Chiều cao chữ / Height", "50 mm", "", ""],
        ["4", "Khoảng cách giữa các chữ / Space between letters", "15 mm", "", ""],
        ["5", "Nội dung, màu, vị trí / Text, colour, position", "Chờ khách (Q-14) / Pending", "", ""],
    ])
    + sign(["Đơn vị sơn / Applicator", "VKG (QC) – điểm dừng 4.13 / hold point", "Khách hàng / Client (W)"]) + HIST)

F["PCCC-F09_Bien-ban-kiem-cuoi-va-xuat-xuong"] = head("PCCC-F09", "BIÊN BẢN KIỂM CUỐI VÀ CHO PHÉP XUẤT XƯỞNG / FINAL INSPECTION AND RELEASE RECORD") + (
    "Dùng cho ITP 5.1 đến 5.4. Kiểm 100 % tủ. / For ITP 5.1 to 5.4. 100 % of cabinets.\n\n"
    "Loại tủ / Cabinet type: ________ · Bản vẽ số, bản / Drawing No., rev: ________ · Lô giao / Delivery lot: ________ · Số lượng / Qty: ________ · Mã tủ từ … đến … / Cabinet Nos.: ________\n\n"
    "## 1. Kiểm từng tủ / Per cabinet\n\n"
    "Ghi Đ (đạt) hoặc K (không đạt). / Enter Đ (pass) or K (fail).\n\n"
    + table(["Số / No.", "Mã tủ / Cabinet No.", "Kích thước bao / Overall size", "Ngoại quan sơn / Coating", "DFT điểm (µm) / Spot DFT", "Cửa, bản lề, khóa / Door, hinge, lock", "Kính, gioăng, lưới / Glass, gasket, mesh", "Ghi chữ / Marking", "Đủ phụ kiện / Accessories", KQ], blank=10)
    + "Tiêu chí / Criteria: kích thước và phụ kiện theo bản vẽ (chờ, Q-01); lớp sơn theo PCCC-03; cửa đóng mở nhẹ, khóa hoạt động; phụ kiện lắp sau sơn không làm hỏng màng sơn (F4 11 f). / Dimensions and accessories per drawing (pending); coating per PCCC-03; doors and locks operate; accessories fitted after coating without damaging the film.\n\n"
    "## 2. Soát hồ sơ các bước trước / Review of previous records\n\n"
    + table(["Số / No.", "Hồ sơ / Record", "Đủ và đạt / Complete and acceptable (Có, Không / Yes, No)", "Ghi chú / Remarks"], rows=[
        ["1", "PCCC-F01 Vật tư đầu vào / Incoming materials"], ["2", "PCCC-F02 Gia công / Fabrication"], ["3", "PCCC-F03 Môi trường, khí nén / Environment, air"],
        ["4", "PCCC-F04 Chuẩn bị bề mặt / Surface preparation"], ["5", "PCCC-F13 Thi công sơn / Application"], ["6", "PCCC-F07 Lò sấy, chà dung môi / Cure, solvent rub"],
        ["7", "PCCC-F05 Chiều dày màng sơn / Film thickness"], ["8", "PCCC-F06 Bám dính / Adhesion"], ["9", "PCCC-F08 Ngoại quan, ghi chữ / Visual, marking"],
        ["10", "PCCC-F10 Mọi phiếu không phù hợp đã đóng / All NCRs closed"]])
    + "## 3. Đóng gói / Packing\n\n"
    + table(["Số / No.", "Hạng mục / Item", "Yêu cầu / Requirement", KQ], rows=[
        ["1", "Bọc bảo vệ bề mặt sơn / Coating protection", "Có lớp bọc chống trầy / Protected against scratches", ""],
        ["2", "Nhãn kiện / Package label", "Có mã tủ, số lệnh sản xuất / Cabinet No., production order", ""],
        ["3", "Quy cách đóng gói của khách / Client packing specification", "Chờ (Q-01) / Pending", ""]])
    + "Kết luận / Conclusion: ☐ Cho phép xuất xưởng / Released for delivery ☐ Giữ lại / On hold · Số phiếu PCCC-F10 / NCR No.: ________\n\n"
    + sign(["VKG (QC) – điểm dừng 5.2 / hold point", "Giám đốc hoặc người được giao / Director or delegate", "Khách hàng / Client (H, chờ Q-19 / pending)"]) + HIST)

F["PCCC-F10_Phieu-khong-phu-hop-va-khac-phuc"] = head("PCCC-F10", "PHIẾU KHÔNG PHÙ HỢP VÀ HÀNH ĐỘNG KHẮC PHỤC / NONCONFORMITY REPORT AND CORRECTIVE ACTION") + (
    "Dùng cho mọi điểm không đạt tiêu chí của ITP. Mỗi sự việc một phiếu; hàng không đạt gắn nhãn và để riêng. / For every failure against ITP criteria. One report per event; nonconforming items tagged and segregated.\n\n"
    "## 1. Mô tả / Description\n\n"
    + table(["Mục / Field", "Nội dung / Content"], rows=[
        ["Phát hiện tại công đoạn, mục ITP / Stage, ITP item", ""], ["Mã tủ, chi tiết, mẻ sơn, số lượng / Cabinet, part, batch, quantity", ""],
        ["Yêu cầu (tài liệu, điều khoản, giá trị) / Requirement (document, clause, value)", ""], ["Thực tế (giá trị đo, ảnh số) / Actual (measured value, photo No.)", ""],
        ["Người phát hiện, ngày / Raised by, date", ""]])
    + "## 2. Xử lý / Disposition\n\n"
    "☐ Sửa / Repair ☐ Làm lại / Rework, re-coat ☐ Loại bỏ / Reject ☐ Xin khách chấp nhận / Concession requested from client ☐ Trả nhà cung cấp, nhà thầu phụ / Return to supplier, subcontractor\n\n"
    + table(["Mục / Field", "Nội dung / Content"], rows=[
        ["Cách xử lý cụ thể (theo cột Consequence trong bảng kiểm tra của khách nếu là lỗi sơn) / Details (per client Consequence column for coating defects)", ""],
        ["Người quyết định, ngày / Decided by, date", ""], ["Ý kiến khách hàng (nếu cần), số văn bản / Client response, reference", ""],
        ["Kết quả kiểm lại sau xử lý, số biểu ghi nhận / Re-inspection result, record No.", ""]])
    + "## 3. Nguyên nhân và hành động khắc phục / Cause and corrective action\n\n"
    + table(["Mục / Field", "Nội dung / Content"], rows=[
        ["Nguyên nhân gốc / Root cause", ""], ["Hành động khắc phục để không lặp lại / Corrective action", ""],
        ["Người thực hiện, hạn / Responsible, due date", ""], ["Kiểm tra hiệu lực (ai, ngày, kết quả) / Effectiveness check (who, date, result)", ""]])
    + "Đóng phiếu / Closed: ☐ Có / Yes ☐ Chưa / No · Ngày / Date: ________\n\n"
    + sign(["Người lập / Raised by", "VKG (QC)", "Giám đốc / Director", "Khách hàng / Client (nếu có / if any)"]) + HIST)

F["PCCC-F11_Danh-muc-thiet-bi-do-va-hieu-chuan"] = head("PCCC-F11", "DANH MỤC THIẾT BỊ ĐO VÀ HIỆU CHUẨN / MEASURING EQUIPMENT AND CALIBRATION REGISTER") + (
    "Dùng cho ITP 1.3. Ghi cả thiết bị của VKG và của nhà thầu phụ dùng cho đơn hàng. Cột trống điền khi có thiết bị thật; hồ sơ VKG hiện chưa có danh mục dụng cụ đo (phiếu năng lực máy 11/2026 đang chờ Giám đốc điền). / For ITP 1.3. Covers VKG and subcontractor equipment used on the order. Blank columns to be filled in with actual equipment.\n\n"
    + table(["Số / No.", "Thiết bị / Equipment", "Dùng cho phép thử, mục ITP / Used for, ITP item", "Hãng, kiểu, số máy / Make, model, serial", "Chủ sở hữu / Owner", "Số chứng chỉ hiệu chuẩn / Certificate No.", "Ngày hiệu chuẩn / Calibrated", "Hạn / Due"], rows=[
        ["1", "Thước cặp, panme / Caliper, micrometer", "Kích thước, chiều dày tôn; 2.1, 3.1–3.5"],
        ["2", "Thước cuộn, thước lá, thước đo góc / Tape, rule, protractor", "Kích thước; 3.1–3.5, 5.2"],
        ["3", "Nhiệt ẩm kế, máy đo điểm sương / Hygrometer, dew point meter", "Điều kiện môi trường; 4.1"],
        ["4", "Nhiệt kế bề mặt / Surface thermometer", "Nhiệt độ bề mặt; 4.1"],
        ["5", "Giấy thấm, bộ thử khí nén / Blotter test kit", "ASTM D4285; 4.7"],
        ["6", "Bộ mẫu so nhám hoặc băng sao chép và đồng hồ / Roughness comparator or replica tape and gauge", "ISO 8503; 4.5 (nếu khách giữ yêu cầu, Q-07)"],
        ["7", "Bộ Bresle, máy đo độ dẫn, giấy hoặc bút pH / Bresle kit, conductivity meter, pH strips or meter", "ISO 8502-6; 4.6 (nếu khách giữ yêu cầu, Q-08)"],
        ["8", "Máy đo DFT từ tính và bộ lá chuẩn / Magnetic DFT gauge and shims", "ISO 19840; 2.2, 4.11, 5.2"],
        ["9", "Bộ ghi dữ liệu nhiệt lò hoặc máy ghi nhiệt / Oven data logger or recorder", "4.9"],
        ["10", "Bộ dao cắt ô và băng dính / Cross-cut tool and tape", "ISO 2409; 4.14"],
        ["11", "Máy kéo bám dính, đầu kéo / Pull-off tester, dollies", "ISO 4624; 4.14 (nếu khách xác nhận, Q-16)"],
        ["12", "Dung môi và vải thử chà / Solvent and cloth", "ASTM D5402; 4.12"],
        ["13", "Bảng màu RAL hoặc tấm mẫu màu duyệt / RAL chart or approved panel", "4.13"],
        ["14", "Kính lúp / Magnifier", "4.14"],
    ])
    + "Máy đo DFT: kiểm trên lá chuẩn ít nhất 2 lần mỗi ngày, ghi ở PCCC-F05 (bảng kiểm tra F1, F2). Thiết bị hết hạn hiệu chuẩn không được dùng để nghiệm thu. / DFT gauge verified on shims at least twice daily, recorded on PCCC-F05. Equipment out of calibration is not used for acceptance.\n\n"
    + sign(["Người lập / Prepared by", "VKG (QC)", "Người duyệt / Approved by"]) + HIST)

F["PCCC-F12_Ho-so-nang-luc-nguoi-kiem-tra"] = head("PCCC-F12", "HỒ SƠ NĂNG LỰC NGƯỜI KIỂM TRA / INSPECTOR QUALIFICATION RECORD") + (
    "Dùng cho ITP 1.3. Mỗi người kiểm tra (của VKG và của nhà thầu phụ) một tờ. Không ghi số giấy tờ tùy thân. Yêu cầu chứng chỉ của khách đối với người kiểm tra sơn: chờ (Q-20). / For ITP 1.3. One sheet per inspector (VKG and subcontractor). No personal identity numbers. Client qualification requirement for coating inspector: pending.\n\n"
    + table(["Mục / Field", "Nội dung / Content"], rows=[
        ["Họ tên / Name", ""], ["Đơn vị, chức danh / Company, position", ""], ["Phạm vi được giao kiểm (mục ITP) / Authorised scope (ITP items)", ""],
        ["Số năm kinh nghiệm liên quan / Relevant experience (years)", ""], ["Kiểm tra thị lực, phân biệt màu (ngày, kết quả) / Eyesight and colour vision check (date, result)", ""]])
    + "## Đào tạo, chứng chỉ / Training and certificates\n\n"
    + table(["Số / No.", "Khóa đào tạo, chứng chỉ / Course, certificate", "Đơn vị cấp / Issued by", "Số chứng chỉ / Certificate No.", "Ngày cấp / Issued", "Hạn / Valid until"], blank=4)
    + "## Đánh giá thực hành / Practical assessment\n\n"
    + table(["Số / No.", "Kỹ năng / Skill", "Người đánh giá / Assessor", "Ngày / Date", KQ], rows=[
        ["1", "Đọc bản vẽ, đo kích thước / Drawing reading, dimensional measurement"], ["2", "Đo nhiệt độ, độ ẩm, tính điểm sương / Climate measurement, dew point"],
        ["3", "Đo DFT, kiểm máy trên lá chuẩn / DFT measurement, gauge verification"], ["4", "Thử cắt ô ISO 2409, xếp cấp / Cross-cut test and classification"],
        ["5", "Thử chà dung môi ASTM D5402 / Solvent rub test"], ["6", "Nhận biết khuyết tật sơn / Recognition of coating defects"], ["7", "Ghi biểu PCCC-F01 đến F13 / Completing PCCC forms"]])
    + "Kết luận / Conclusion: ☐ Được giao kiểm tra theo phạm vi trên / Authorised ☐ Cần đào tạo thêm / Further training needed\n\n"
    + sign(["Người kiểm tra / Inspector", "Người đánh giá / Assessor", "Giám đốc / Director"]) + HIST)

F["PCCC-F13_Nhat-ky-thi-cong-son"] = head("PCCC-F13", "NHẬT KÝ THI CÔNG SƠN / COATING APPLICATION LOG") + (
    "Dùng cho ITP 4.8. Mỗi mẻ sơn một tờ. / For ITP 4.8. One sheet per coating batch.\n\n"
    "Đơn vị sơn / Applicator: ________ · Mẻ sơn / Coating batch: ________ · Mã tủ, chi tiết, tấm mẫu / Items and panels: ________ · Số biên bản PCCC-F04 / Surface preparation record No.: ________\n\n"
    "## 1. Phun bột / Powder application (PCCC-03)\n\n"
    + table(["Mục / Field", "Yêu cầu / Requirement", "Thực tế / Actual"], rows=[
        ["Sản phẩm, màu / Product, colour", "Jotun Facade 1407, RAL 3000 (F1)", ""], ["Số lô bột / Powder batch No.", "Ghi theo bao / As on bag", ""],
        ["Gá treo nối đất / Earthed jigs", "Có (F4 11 a) / Yes", ""], ["Điện áp súng (kV) / Gun voltage", "… (khách để trống, Q-11 / blank)", ""],
        ["Dòng (µA) / Current", "… (khách để trống, Q-11 / blank)", ""], ["Lưu lượng bột / Powder output", "… (khách để trống, Q-11 / blank)", ""],
        ["Phun hốc, góc trong, cạnh trước / Recesses, corners, edges first", "Có (F4 11 c) / Yes", ""], ["Giờ bắt đầu, kết thúc phun / Start, finish", "", ""],
        ["Số mẻ lò (ghi ở PCCC-F07) / Oven batch (see PCCC-F07)", "", ""]])
    + "## 2. Ghi chú, sự cố / Remarks, incidents\n\n"
    + table(["Số / No.", "Giờ / Time", "Nội dung / Description", "Xử lý / Action"], blank=3)
    + sign(S3) + HIST)

os.makedirs(OUT, exist_ok=True)
for name, text in F.items():
    with io.open(os.path.join(OUT, name + "_v" + VER.get(name.split("_")[0], "0.1") + ".md"), "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print(name)
