# Dung bang tinh KPI-SX v0.1 (phien HR-04). Du lieu mau la DU LIEU GIA. Khong dat chi tieu.
import sys
from openpyxl import Workbook
from openpyxl.styles import Font, Alignment, PatternFill, Border, Side
from openpyxl.worksheet.datavalidation import DataValidation
from openpyxl.formatting.rule import FormulaRule

OUT = sys.argv[1]
XANH = "0A2E5C"
f_tieude = Font(name="Arial", bold=True, size=12, color=XANH)
f_dam = Font(name="Arial", bold=True, size=10, color=XANH)
f_thuong = Font(name="Arial", size=10, color=XANH)
f_gia = Font(name="Arial", size=10, color="7F7F7F", italic=True)
nen_dau = PatternFill("solid", fgColor="DCE6F2")
nen_nhap = PatternFill("solid", fgColor="FFF2CC")
mong = Side(style="thin", color=XANH)
vien = Border(left=mong, right=mong, top=mong, bottom=mong)
wrap = Alignment(wrap_text=True, vertical="top")

wb = Workbook()

def ke(ws, r1, r2, c1, c2):
    for r in range(r1, r2 + 1):
        for c in range(c1, c2 + 1):
            cell = ws.cell(r, c)
            cell.border = vien
            cell.alignment = wrap
            if cell.font != f_dam and cell.font != f_gia:
                pass

def dong(ws, r, vals, font=f_thuong, fill=None):
    for i, v in enumerate(vals, 1):
        c = ws.cell(r, i, v)
        c.font = font
        c.alignment = wrap
        if fill:
            c.fill = fill

# ---------- Sheet HuongDan ----------
hd = wb.active
hd.title = "HuongDan"
hd.column_dimensions["A"].width = 110
noi_dung = [
    ("KPI-SX · BỘ KPI SẢN XUẤT · v0.2 nháp · 14/11/2026 · nhóm Nhân sự", f_tieude),
    ("Trạng thái: bản nháp, chưa duyệt. Đi kèm Bộ KPI sản xuất (KPI-SX) và Khung KPI của Công ty.", f_thuong),
    ("", f_thuong),
    ("1. Các sheet", f_dam),
    ("NhapTuan: đội trưởng (hoặc Đại diện ISO) chép số đếm từ phiếu NS-14 mỗi tuần, ô nền vàng. Dòng TỔNG THÁNG tự cộng.", f_thuong),
    ("ChamXuong: 7 KPI xưởng. Tử số, mẫu số lấy tự động từ NhapTuan (X-01, 02, 03, 05, 06); X-04, X-07 nhập tay (ô vàng). Cột Chỉ tiêu để trống tới khi Giám đốc chốt cuối 03/2027.", f_thuong),
    ("ChamTho: 5 KPI thợ (phương án A). Mã NV001… là mã giả. T-01 lấy tổng điểm xưởng; điểm T-01 của kỳ quý là trung bình điểm xưởng của 3 tháng trong quý (ghi tay vào ô T-01, vì file chỉ chứa số liệu một tháng).", f_thuong),
    ("Mỗi xưởng một file: CN1 và CN2 dùng hai bản sao riêng (ghi tên xưởng ở ô NhapTuan!E1). Không nhập số hai xưởng vào cùng một file.", f_thuong),
    ("ViecCanXacNhan: các điểm còn chờ.", f_thuong),
    ("", f_thuong),
    ("2. Cách tính điểm (Khung KPI mục 5)", f_dam),
    ("Càng cao càng tốt: Điểm = KQ ÷ Chỉ tiêu × 100, tối đa 120.", f_thuong),
    ("Càng thấp càng tốt: KQ = 0 → 120; còn lại Điểm = Chỉ tiêu ÷ KQ × 100, tối đa 120.", f_thuong),
    ("Mục tiêu bằng 0 (an toàn): 0 vụ tai nạn lao động → 100; có tai nạn lao động → 0. Sự cố không ai bị thương không trừ điểm, chỉ theo dõi ở X-P3.", f_thuong),
    ("KPI chưa có chỉ tiêu hoặc chưa có số liệu: ghi 'Chưa chấm', tỷ trọng tự chia lại cho KPI còn lại (cột Tỷ trọng dùng).", f_thuong),
    ("Nếu các KPI chấm được cộng lại dưới 50% tỷ trọng: không ra tổng điểm, không xếp loại (đề xuất).", f_thuong),
    ("Xếp loại (đề xuất): A ≥ 90 · B 75 đến dưới 90 · C 60 đến dưới 75 · D dưới 60.", f_thuong),
    ("", f_thuong),
    ("3. Quy tắc", f_dam),
    ("Không nhập tay vào ô có công thức (nền trắng). Chỉ nhập ô nền vàng.", f_thuong),
    ("Không ghi tên người thật vào file này nếu file nằm ngoài thư mục 02_HO SO NHAN SU. Dùng mã nhân sự.", f_thuong),
    ("Số trong file là DỮ LIỆU GIẢ để thử công thức. Xoá trước khi dùng thật.", f_thuong),
    ("Kỳ 01–03/2027: chỉ đo mốc, không chấm điểm. Kỳ chấm đầu: quý 2/2027. Kỳ đầu không gắn tiền (đề xuất).", f_thuong),
    ("Ô kiểm tổng tỷ trọng ở ChamXuong và ChamTho phải hiện 'Đúng 100%'.", f_thuong),
    ("Mở bằng Excel và nhấn Lưu sau khi nhập số, để Excel tính lại và lưu kết quả công thức (trình xem ngoài Excel có thể hiện ô trống).", f_thuong),
]
for i, (t, f) in enumerate(noi_dung, 1):
    c = hd.cell(i, 1, t); c.font = f; c.alignment = wrap
    # chiều cao dòng đặt rõ để dòng dài không bị cắt chữ khi in (15/11/2026)
    hd.row_dimensions[i].height = max(15, 14.5 * (-(-len(t) // 95)) + 2)

# ---------- Sheet NhapTuan ----------
nt = wb.create_sheet("NhapTuan")
nt["A1"] = "NHẬP SỐ ĐẾM TỪ PHIẾU NS-14 – Xưởng:"; nt["A1"].font = f_tieude
nt["E1"] = "CN1"; nt["E1"].fill = nen_nhap; nt["E1"].font = f_dam
nt["F1"] = "Tháng:"; nt["F1"].font = f_dam
nt["G1"] = "01/2027"; nt["G1"].fill = nen_nhap; nt["G1"].font = f_dam
nt["A2"] = "DỮ LIỆU GIẢ – xoá trước khi dùng"; nt["A2"].font = f_gia
cot = ["Tuần", "Đơn đã giao", "Đơn giao đúng hẹn", "Đơn giao có ảnh QC cuối", "Đơn hoàn thành", "Đơn có hàng lỗi do xưởng",
       "Lần khách phản ánh", "Số ca làm việc", "Ca có phiếu NS-12", "Tai nạn lao động (vụ)", "Sự cố không ai bị thương", "Ngày có ghi NS-14", "Ngày làm việc"]
dong(nt, 4, cot, f_dam, nen_dau)
gia = [
    [5, 4, 3, 6, 1, 0, 6, 6, 0, 0, 6, 6],
    [6, 5, 4, 5, 0, 1, 6, 5, 0, 1, 5, 6],
    [4, 4, 4, 4, 1, 0, 6, 6, 0, 0, 6, 6],
    [7, 6, 5, 7, 0, 0, 6, 4, 0, 0, 5, 6],
    [None] * 12,
]
for i, row in enumerate(gia):
    r = 5 + i
    nt.cell(r, 1, f"Tuần {i + 1}").font = f_thuong
    for j, v in enumerate(row):
        c = nt.cell(r, 2 + j, v)
        c.fill = nen_nhap
        c.font = f_gia if v is not None else f_thuong
nt.cell(10, 1, "TỔNG THÁNG").font = f_dam
for j in range(2, 14):
    col = nt.cell(4, j).column_letter
    c = nt.cell(10, j, f"=SUM({col}5:{col}9)")
    c.font = f_dam
nt.cell(11, 1, "Tỷ lệ ngày có số liệu (X-P2)").font = f_thuong
nt.cell(11, 12, '=IF(M10=0,"",L10/M10)').number_format = "0%"
ke(nt, 4, 11, 1, 13)
for j, w in enumerate([12, 10, 12, 13, 11, 13, 11, 10, 11, 12, 12, 11, 10], 1):
    nt.column_dimensions[nt.cell(4, j).column_letter].width = w

# ---------- Sheet ChamXuong ----------
cx = wb.create_sheet("ChamXuong")
cx["A1"] = "CHẤM KPI XƯỞNG (đội trưởng) – KPI-SX mục 2"; cx["A1"].font = f_tieude
cx["A2"] = '="Xưởng: "&NhapTuan!E1&" · Tháng: "&NhapTuan!G1'; cx["A2"].font = f_dam
hdr = ["Mã", "Tên KPI", "Kiểu", "Tử số", "Mẫu số", "Kết quả (KQ)", "Chỉ tiêu (CT)", "Tỷ trọng đề xuất", "Chấm được (1/0)", "Tỷ trọng dùng", "Điểm (0–120)", "Điểm × tỷ trọng", "Ghi chú"]
dong(cx, 4, hdr, f_dam, nen_dau)
kpi = [
    ("X-01", "Giao đúng hẹn (ST-05 M1)", "Cao", "=NhapTuan!C10", "=NhapTuan!B10", 0.25, "Tử: đơn đúng hẹn; mẫu: đơn đã giao. CT theo ST-05"),
    ("X-02", "Không giao hàng chưa kiểm (ST-05 M2)", "Cao", "=NhapTuan!D10", "=NhapTuan!B10", 0.20, "Tử: đơn có ảnh QC; mẫu: đơn đã giao. CT theo ST-05"),
    ("X-03", "Ít làm lại (ST-05 M3)", "Thấp", "=NhapTuan!F10", "=NhapTuan!E10", 0.25, "Tử: đơn có hàng lỗi do xưởng; mẫu: đơn hoàn thành. CT theo ST-05"),
    ("X-04", "Sửa gốc, không lặp lại (ST-05 M5, quý)", "Cao", None, None, 0.10, "Nhập tay theo quý: phiếu khắc phục đóng đúng hạn / phiếu mở. CT theo ST-05"),
    ("X-05", "An toàn lao động (chỉ tính TNLĐ)", "Bằng 0", "=NhapTuan!J10", None, 0.10, "Tử: số vụ tai nạn lao động. Sự cố không ai bị thương không trừ điểm (X-P3). Không cần CT"),
    ("X-06", "Kiểm tra cuối ca NS-12", "Cao", "=NhapTuan!I10", "=NhapTuan!H10", 0.05, "Tử: ca có phiếu; mẫu: số ca. CT [CẦN XÁC NHẬN]"),
    ("X-07", "Thợ đạt mức tay nghề yêu cầu (6 tháng)", "Cao", None, None, 0.05, "Nhập tay: thợ đạt mức yêu cầu / số thợ (NS-09). CT [CẦN XÁC NHẬN]"),
]
r0 = 5
for i, (ma, ten, kieu, tu, mau, tt, gc) in enumerate(kpi):
    r = r0 + i
    cx.cell(r, 1, ma); cx.cell(r, 2, ten); cx.cell(r, 3, kieu)
    ct = cx.cell(r, 4, tu); cm = cx.cell(r, 5, mau)
    if tu is None:
        ct.fill = nen_nhap; cm.fill = nen_nhap
    cx.cell(r, 7).fill = nen_nhap  # chi tieu: de trong
    cx.cell(r, 8, tt).number_format = "0%"
    if kieu == "Bằng 0":
        # R4-04 (14/11/2026): chỉ tính tai nạn lao động; sự cố không ai bị thương KHÔNG trừ điểm (xem KPI phụ X-P3)
        cx.cell(r, 6, f'=IF(D{r}="","",D{r}&" vụ TNLĐ")')
        # R4-18: chấm X-05 khi tuần nào đó có nhập số vụ TNLĐ (kể cả 0); ô trống cả tháng thì chưa chấm
        cx.cell(r, 9, '=IF(COUNT(NhapTuan!J5:J9)>0,1,0)')
        cx.cell(r, 11, f'=IF(I{r}=1,IF(D{r}>0,0,100),"Chưa chấm")')
    else:
        cx.cell(r, 6, f'=IF(OR(D{r}="",E{r}="",E{r}=0),"",D{r}/E{r})').number_format = "0.0%"
        cx.cell(r, 7).number_format = "0.0%"
        cx.cell(r, 9, f'=IF(AND(F{r}<>"",G{r}<>""),1,0)')
        if kieu == "Cao":
            cx.cell(r, 11, f'=IF(I{r}=1,IF(G{r}=0,0,MIN(F{r}/G{r},1.2)*100),"Chưa chấm")')
        else:
            cx.cell(r, 11, f'=IF(I{r}=1,IF(F{r}=0,120,IF(G{r}=0,0,MIN(G{r}/F{r},1.2)*100)),"Chưa chấm")')
    r1, r2 = r0, r0 + len(kpi) - 1
    cx.cell(r, 10, f'=IF(I{r}=1,H{r}/SUMPRODUCT($H${r1}:$H${r2},$I${r1}:$I${r2}),0)').number_format = "0.0%"
    cx.cell(r, 11).number_format = "0.0"
    cx.cell(r, 12, f'=IF(I{r}=1,K{r}*J{r},0)').number_format = "0.0"
    cx.cell(r, 13, gc)
    for c in range(1, 14):
        cx.cell(r, c).font = f_thuong if cx.cell(r, c).font != f_dam else f_dam
rt = r0 + len(kpi)
cx.cell(rt, 2, "TỔNG").font = f_dam
cx.cell(rt, 8, f"=SUM(H{r0}:H{rt-1})").number_format = "0%"
cx.cell(rt, 9, f"=SUM(I{r0}:I{rt-1})")
cx.cell(rt, 12, f'=IF(SUMPRODUCT(H{r0}:H{rt-1},I{r0}:I{rt-1})<0.5,"Chưa đủ KPI để chấm (dưới 50% tỷ trọng)",SUM(L{r0}:L{rt-1}))').number_format = "0.0"
cx.cell(rt + 1, 2, "Kiểm tổng tỷ trọng").font = f_dam
cx.cell(rt + 1, 8, f'=IF(ROUND(H{rt},4)=1,"Đúng 100%","SAI: tổng khác 100%")')
cx.cell(rt + 2, 2, "Xếp loại").font = f_dam
cx.cell(rt + 2, 12, f'=IF(ISNUMBER(L{rt}),IF(L{rt}>=90,"A",IF(L{rt}>=75,"B",IF(L{rt}>=60,"C","D"))),"—")')
cx.cell(rt + 3, 2, "KPI phụ X-P1 – Phàn nàn của khách (chỉ theo dõi)").font = f_thuong
cx.cell(rt + 3, 6, "=NhapTuan!G10")
cx.cell(rt + 4, 2, "KPI phụ X-P2 – Tỷ lệ ngày có số liệu (chỉ theo dõi)").font = f_thuong
cx.cell(rt + 4, 6, "=NhapTuan!L11").number_format = "0%"
cx.cell(rt + 5, 2, "KPI phụ X-P3 – Sự cố không ai bị thương đã báo (chỉ theo dõi, không trừ điểm)").font = f_thuong
cx.cell(rt + 5, 6, "=NhapTuan!K10")
ke(cx, 4, rt + 5, 1, 13)
for c, w in zip("ABCDEFGHIJKLM", [8, 34, 9, 9, 9, 14, 11, 11, 10, 11, 11, 12, 48]):
    cx.column_dimensions[c].width = w
cx.conditional_formatting.add(f"H{rt+1}", FormulaRule(formula=[f'LEFT(H{rt+1},3)="SAI"'], fill=PatternFill("solid", fgColor="F4CCCC")))
cx.cell(rt + 7, 1, "Ô nền vàng: nhập tay. Chỉ tiêu (cột G) để trống tới khi Giám đốc chốt cuối 03/2027 (theo ST-05). Tỷ trọng (cột H) là đề xuất của nhóm Nhân sự, Giám đốc chốt.").font = f_gia

# ---------- Sheet ChamTho ----------
th = wb.create_sheet("ChamTho")
th["A1"] = "CHẤM KPI THỢ – phương án A (KPI-SX mục 4) · mã NV giả"; th["A1"].font = f_tieude
th["A2"] = "DỮ LIỆU GIẢ – xoá trước khi dùng"; th["A2"].font = f_gia
# hang 4: ten KPI, hang 5: kieu, hang 6: chi tieu, hang 7: ty trong
nhom = [("T-01 Kết quả tổ", "Lấy điểm", None, 0.40),
        ("T-02 Tay nghề", "Cao", "", 0.20),
        ("T-03 Tự kiểm, ghi phiếu", "Cao", "", 0.15),
        ("T-04 An toàn, 5S tại máy", "Cao", "", 0.15),
        ("T-05 Báo lỗi, góp ý sửa", "Cao", "", 0.10)]
th.cell(4, 1, "Mục").font = f_dam
th.cell(5, 1, "Kiểu").font = f_dam
th.cell(6, 1, "Chỉ tiêu (CT)").font = f_dam
th.cell(7, 1, "Tỷ trọng đề xuất").font = f_dam
# cot nhap KQ: B..F (T-01..T-05), cot diem: G..K, cot diem*tt: L..P, cot tt dung: Q..U
for k, (ten, kieu, ct, tt) in enumerate(nhom):
    ckq = 2 + k; cdiem = 7 + k
    th.cell(4, ckq, "KQ " + ten).font = f_dam; th.cell(4, ckq).fill = nen_dau
    th.cell(4, cdiem, "Điểm " + ten[:4]).font = f_dam; th.cell(4, cdiem).fill = nen_dau
    th.cell(5, ckq, kieu).font = f_thuong
    if ct is not None:
        th.cell(6, ckq).fill = nen_nhap
        th.cell(6, ckq).number_format = "0%" if k < 4 else "0"
    else:
        th.cell(6, ckq, "—")
    th.cell(7, ckq, tt).number_format = "0%"
th.cell(7, 7, "=SUM(B7:F7)").number_format = "0%"
th.cell(7, 8, '=IF(ROUND(G7,4)=1,"Đúng 100%","SAI: tổng khác 100%")')
for k in range(5):
    th.cell(4, 12 + k, f"Điểm×TT T-0{k+1}").font = f_dam
    th.cell(4, 17 + k, f"TT dùng T-0{k+1}").font = f_dam
th.cell(4, 22, "Mã NV").font = f_dam
th.cell(4, 23, "TỔNG ĐIỂM").font = f_dam
th.cell(4, 24, "Xếp loại").font = f_dam
th.cell(4, 1, "Mã NV (giả)").font = f_dam
nv = [("NV001", 0.75, 0.90, 0.95, 4), ("NV002", 0.50, None, 1.00, 1), ("NV003", 1.00, 0.80, 0.85, 6)]
for i, (ma, t2, t3, t4, t5) in enumerate(nv):
    r = 8 + i
    th.cell(r, 1, ma).font = f_gia
    th.cell(r, 2, "=ChamXuong!L12").number_format = "0.0"
    for k, v in enumerate([t2, t3, t4, t5]):
        c = th.cell(r, 3 + k, v); c.fill = nen_nhap; c.font = f_gia
        c.number_format = "0%" if k < 3 else "0"
    # diem
    th.cell(r, 7, f'=IF(ISNUMBER(B{r}),MIN(B{r},120),"Chưa chấm")')
    for k in range(1, 5):
        kq = th.cell(r, 2 + k).column_letter
        ctc = th.cell(6, 2 + k).column_letter
        th.cell(r, 7 + k, f'=IF(AND(ISNUMBER({kq}{r}),ISNUMBER({ctc}$6)),IF({ctc}$6=0,0,MIN({kq}{r}/{ctc}$6,1.2)*100),"Chưa chấm")')
    for k in range(5):
        d = th.cell(r, 7 + k).column_letter
        ttc = th.cell(7, 2 + k).column_letter
        th.cell(r, 12 + k, f'=IF(ISNUMBER({d}{r}),{d}{r}*{ttc}$7,0)')
        th.cell(r, 17 + k, f'=IF(ISNUMBER({d}{r}),{ttc}$7,0)')
    th.cell(r, 22, f"=A{r}")
    th.cell(r, 23, f'=IF(SUM(Q{r}:U{r})<0.5,"Chưa đủ KPI để chấm",SUM(L{r}:P{r})/SUM(Q{r}:U{r}))').number_format = "0.0"
    th.cell(r, 24, f'=IF(ISNUMBER(W{r}),IF(W{r}>=90,"A",IF(W{r}>=75,"B",IF(W{r}>=60,"C","D"))),"—")')
    for c in range(7, 22):
        th.cell(r, c).number_format = "0.0"
ke(th, 4, 10, 1, 24)
th.column_dimensions["A"].width = 16
for c in range(2, 25):
    th.column_dimensions[th.cell(4, c).column_letter].width = 12
th.cell(12, 1, "Cột L–U là cột phụ để chia lại tỷ trọng khi KPI chưa chấm được; không nhập. T-03 để trống khi chưa có nguồn (phiếu công đoạn SX-01 chưa có ô tự kiểm).").font = f_gia
th.cell(13, 1, "Chỉ tiêu (hàng 6) để trống tới khi Giám đốc chốt. T-05 nhập số lần; chỉ tiêu là số lần trong kỳ.").font = f_gia
th.conditional_formatting.add("H7", FormulaRule(formula=['LEFT(H7,3)="SAI"'], fill=PatternFill("solid", fgColor="F4CCCC")))

# ---------- Sheet ViecCanXacNhan ----------
vx = wb.create_sheet("ViecCanXacNhan")
dong(vx, 1, ["#", "Nội dung", "Ai"], f_dam, nen_dau)
viec = [
    ("X1", "Tỷ trọng 7 KPI xưởng và 5 KPI thợ", "Giám đốc"),
    ("X2", "Phương án A cho KPI thợ", "Giám đốc"),
    ("X3", "Người đo X-01 → X-04 (ST-05 đang chờ)", "Giám đốc qua nhóm ISO"),
    ("X4", "Chỉ tiêu mọi KPI: chốt cuối 03/2027 sau 3 tháng đo mốc", "Giám đốc"),
    ("X5", "Nguồn T-03: phiếu công đoạn SX-01 có ô tự kiểm không", "Nhóm ISO, nhóm BM"),
    ("X6", "NS-14 và HS-01 ghi trùng ngày – đã chốt 14/11: thử giữ 3 cột ngày; khi HS-01 chạy bỏ cột, Phó Giám đốc lọc từ HS-01", "Xong"),
    ("X7", "Thang điểm, trần 120, mức A–D", "Giám đốc"),
]
for i, v in enumerate(viec, 2):
    dong(vx, i, list(v))
ke(vx, 1, len(viec) + 1, 1, 3)
vx.column_dimensions["A"].width = 6; vx.column_dimensions["B"].width = 70; vx.column_dimensions["C"].width = 26

for ws in wb.worksheets:
    ws.sheet_view.showGridLines = False
# Trang in: ngang, vừa 1 trang theo chiều rộng, để cột không bị cắt sang trang khác (15/11/2026)
from openpyxl.worksheet.properties import PageSetupProperties
for _ws in wb.worksheets:
    _ws.page_setup.orientation = "landscape"
    _ws.page_setup.fitToWidth = 1
    _ws.page_setup.fitToHeight = 0
    _ws.sheet_properties.pageSetUpPr = PageSetupProperties(fitToPage=True)
wb.save(OUT)
print("OK", OUT)
