# Dựng nháp NS-09, NS-14 (.xlsx) theo kiểu biểu mẫu nhóm BM (skill vkg-bm-lap-bieu-mau), giống bản HR-06 đã làm cho NS-12.
# Dùng: powershell -File dung-ns-hr04.ps1 -Mau NS-09|NS-14 -Out <file.xlsx>
param([Parameter(Mandatory)][string]$Mau, [Parameter(Mandatory)][string]$Out)
$ErrorActionPreference = 'Stop'
$XANH = 6041098      # #0A2E5C
$NEN = 16249582      # nền tiêu đề bảng (rất nhạt), giống NS-12
# HT-017: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md trước khi chạy; script đóng Excel sạch ở finally.
$xl = $null; $wb = $null; $st = $null; $ws = $null

function Rg($ws, $a) { , $ws.Range($a) }
function O($ws, [string]$a, [string]$t, [double]$sz = 9, [bool]$b = $false, [bool]$it = $false, [string]$font = 'Arial', [int]$ngang = -4131) {
  $r = $ws.Range($a)
  if ($r.Cells.Count -gt 1) { $r.Merge() }
  $r.Cells.Item(1, 1).Value2 = $t
  $r.Font.Name = $font; $r.Font.Size = $sz; $r.Font.Bold = $b; $r.Font.Italic = $it; $r.Font.Color = $XANH
  $r.WrapText = $true; $r.VerticalAlignment = -4108; $r.HorizontalAlignment = $ngang
}
function Ke($ws, [string]$a) { $r = $ws.Range($a); foreach ($i in 7, 8, 9, 10, 11, 12) { $bd = $r.Borders.Item($i); $bd.LineStyle = 1; $bd.Weight = 2; $bd.Color = $XANH } }
function Cham($ws, [string]$a) { $bd = $ws.Range($a).Borders.Item(9); $bd.LineStyle = -4118; $bd.Weight = 2; $bd.Color = $XANH }
function TieuDeBang($ws, [string]$a) { $r = $ws.Range($a); $r.Interior.Color = $NEN; $r.Font.Name = 'Saira SemiBold'; $r.Font.Bold = $false; $r.Font.Size = 8.5; $r.HorizontalAlignment = -4108; $r.VerticalAlignment = -4108; $r.WrapText = $true; Ke $ws $a }
function Cot($ws, [double[]]$w) { for ($i = 0; $i -lt $w.Count; $i++) { $ws.Columns.Item($i + 1).ColumnWidth = [double]$w[$i] } }
function Cao($ws, [int]$r, [double]$h) { $ws.Range("$($r):$($r)").RowHeight = [double]$h }
function Trang($ws, [string]$vung, [int]$huong, [string]$lap = '') {
  $ps = $ws.PageSetup
  $ps.PaperSize = 9; $ps.Orientation = $huong; $ps.PrintArea = $vung
  $ps.LeftMargin = $xl.CentimetersToPoints(1.2); $ps.RightMargin = $xl.CentimetersToPoints(1.2); $ps.BottomMargin = $xl.CentimetersToPoints(1.5)
  $ps.Zoom = $false; $ps.FitToPagesWide = 1; $ps.FitToPagesTall = $false
  if ($lap) { $ps.PrintTitleRows = $lap }
}
function DauPhieu($ws, [string]$tieuDe, [string]$vungTieuDe, [string[]]$nhan, [string[]]$oNhan, [string[]]$oGiaTri, [string[]]$giaTri) {
  O $ws $vungTieuDe $tieuDe 15 $false $false 'Saira ExtraBold'
  for ($i = 0; $i -lt $nhan.Count; $i++) {
    O $ws $oNhan[$i] $nhan[$i] 8.5 $false $false 'Saira SemiBold' -4152
    O $ws $oGiaTri[$i] $giaTri[$i] 9.5 $true; Cham $ws $oGiaTri[$i]
  }
}
function HuongDan($ws, [string[]]$dong) {
  $ws.Columns.Item(1).ColumnWidth = 2; $ws.Columns.Item(2).ColumnWidth = 100
  for ($i = 0; $i -lt $dong.Count; $i++) {
    $c = $ws.Cells.Item($i + 2, 2); $c.Value2 = $dong[$i]; $c.WrapText = $true; $c.Font.Size = 10; $c.Font.Color = $XANH
    if ($i -eq 0) { $c.Font.Size = 12; $c.Font.Bold = $true } elseif ($i % 2 -eq 0 -and $i -gt 1) { $c.Font.Bold = $true }
  }
  $ws.PageSetup.Orientation = 1; $ws.PageSetup.Zoom = $false; $ws.PageSetup.FitToPagesWide = 1; $ws.PageSetup.FitToPagesTall = $false
}
$GHI_THU = 'Bản thử 20–30/11/2026, chưa phát hành. Mẫu chính thức dựng sau khi có kết quả thử.'

try {
  $xl = New-Object -ComObject Excel.Application
  $xl.Visible = $false; $xl.DisplayAlerts = $false
  $wb = $xl.Workbooks.Add()
  $st = $wb.Styles.Item('Normal'); $st.Font.Name = 'Arial'; $st.Font.Size = [double]12; $st.Font.Color = $XANH
if ($Mau -eq 'NS-09') {
  # ---------- Sheet 1: A. Ma trận tay nghề của tổ (A4 ngang) ----------
  $ws = $wb.Worksheets.Item(1); $ws.Name = 'A. Ma trận'
  $xl.ActiveWindow.DisplayGridlines = $false
  Cot $ws @(4, 8, 13, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 13)
  DauPhieu $ws 'PHIẾU ĐÁNH GIÁ TAY NGHỀ – A. MA TRẬN TAY NGHỀ CỦA TỔ' 'A1:N2' @('Xưởng', 'Đợt chấm') @('O1:P1', 'O2:P2') @('Q1:R1', 'Q2:R2') @('☐ CN1   ☐ CN2', '......./20.......')
  Cao $ws 1 18; Cao $ws 2 18
  O $ws 'A3:B3' 'Người chấm' 8.5 $false $false 'Saira SemiBold'
  O $ws 'C3:H3' '(chức danh) .......................................' 9; Cham $ws 'C3:H3'
  O $ws 'I3:M3' '☐ Người chấm 1     ☐ Người chấm 2' 9 $true
  O $ws 'N3:R3' 'Bắt đầu ......h......  ·  Xong ......h......' 9; Cham $ws 'N3:R3'
  Cao $ws 3 20
  O $ws 'A4:R4' 'Căn cứ HD-13. Ghi mức 0–4 vào từng ô; ghi "–" nếu người đó không làm việc này. Ghi mã nhân sự, không ghi số CCCD. Hai người chấm chấm riêng, không xem bản của nhau.' 8.5 $false $true
  Cao $ws 4 24
  $td = @('TT', 'Mã NV', 'Chức danh', 'K01 Bản vẽ', 'K02 Đo kiểm', 'K03 Laser tấm', 'K04 Laser ống', 'K05 Chấn', 'K06 Đột', 'K07 TIG', 'K08 MIG', 'K09 Hàn điểm', 'K10 Hàn laser', 'K11 Mài bóng', 'K12 Lắp inox', 'K13 Bốc xếp', 'K14 Tự kiểm', 'Ghi chú')
  for ($j = 0; $j -lt $td.Count; $j++) { $ws.Cells.Item(5, $j + 1).Value2 = $td[$j] }
  TieuDeBang $ws 'A5:R5'; Cao $ws 5 34
  for ($r = 6; $r -le 15; $r++) { $ws.Cells.Item($r, 1).Value2 = [double]($r - 5); Cao $ws $r 21 }
  $v = $ws.Range('A6:R15'); $v.Font.Size = 9; $v.VerticalAlignment = -4108; $ws.Range('A6:A15').HorizontalAlignment = -4108; $ws.Range('D6:Q15').HorizontalAlignment = -4108
  Ke $ws 'A6:R15'
  O $ws 'A16:R16' 'Mức: 0 chưa làm · 1 đang học, làm khi có người kèm · 2 làm độc lập việc thường · 3 làm độc lập việc khó · 4 kèm được người khác. Làm sai HD an toàn của máy thì kỹ năng máy đó tối đa mức 1.' 8.5 $true
  Cao $ws 16 26
  O $ws 'A17:C17' 'Người chấm ký' 8.5 $false $false 'Saira SemiBold'
  O $ws 'D17:J17' '' 9; Cham $ws 'D17:J17'
  O $ws 'K17:L17' 'Ngày' 8.5 $false $false 'Saira SemiBold' -4152
  O $ws 'M17:O17' '....../....../20......' 9; Cham $ws 'M17:O17'
  Cao $ws 17 24
  O $ws 'A18:R18' 'Ghi lại cho đợt thử 20–30/11 (đội trưởng ghi)' 8.5; TieuDeBang $ws 'A18:R18'; $ws.Range('A18').HorizontalAlignment = -4131
  O $ws 'A19:G19' 'Thời gian chấm hết 10 thợ (phút) · Kỹ năng nào khó chấm, vì sao' 8.5; O $ws 'H19:R19' '' 9; Ke $ws 'A19:R19'; Cao $ws 19 26
  O $ws 'A20:G20' '"Việc khó" của laser, chấn, hàn ở xưởng mình (độ dày, vật liệu) · Kỹ năng nào thừa, thiếu' 8.5; O $ws 'H20:R20' '' 9; Ke $ws 'A20:R20'; Cao $ws 20 26
  O $ws 'A21:R21' $GHI_THU 8 $false $true; Cao $ws 21 14
  Trang $ws '$A$1:$R$21' 2 '$5:$5'

  # ---------- Sheet 2: B. Đánh giá cá nhân (A4 đứng) ----------
  $ws = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)); $ws.Name = 'B. Đánh giá cá nhân'
  $xl.ActiveWindow.DisplayGridlines = $false
  Cot $ws @(24, 11, 11, 11, 11, 24)
  DauPhieu $ws 'PHIẾU ĐÁNH GIÁ TAY NGHỀ – B. ĐÁNH GIÁ CÁ NHÂN' 'A1:D2' @('Xưởng', 'Ngày') @('E1', 'E2') @('F1', 'F2') @('☐ CN1   ☐ CN2', '....../....../20......')
  Cao $ws 1 18; Cao $ws 2 18
  $nhan = @('Mã NV', 'Lý do đánh giá', '', 'Kỹ năng (K..) · mức đang có → mức xét', 'Bài thử: bản vẽ số / mã chi tiết', 'Vật liệu, độ dày · số lượng · máy dùng', 'Thời gian dự kiến · thực tế (phút)')
  $gt = @('', '☐ Tuyển    ☐ Hết thử việc    ☐ Xét nâng bậc    ☐ Giao máy, việc mới', '☐ Hai người chấm lệch    ☐ Sau kèm cặp    ☐ Sau nghỉ từ 6 tháng', 'K........  ·  mức ........  →  mức ........', '', '', '')
  for ($i = 0; $i -lt $nhan.Count; $i++) {
    $r = 4 + $i
    O $ws "A$r" $nhan[$i] 8.5 $false $false 'Saira SemiBold'
    if ($i -eq 0) {
      O $ws "B$($r):C$r" '' 9; Cham $ws "B$($r):C$r"
      O $ws "D$r" 'Chức danh' 8.5 $false $false 'Saira SemiBold' -4152
      O $ws "E$($r):F$r" '' 9; Cham $ws "E$($r):F$r"
    } else { O $ws "B$($r):F$r" $gt[$i] 9 ($gt[$i] -like '☐*'); if ($gt[$i] -notlike '☐*') { Cham $ws "B$($r):F$r" } }
    Cao $ws $r 21
  }
  $r0 = 12
  O $ws "A$($r0):C$r0" 'Tiêu chí' 8.5; O $ws "D$r0" 'Đạt' 8.5; O $ws "E$r0" 'Không đạt' 8.5; O $ws "F$r0" 'Số đo, ghi chú' 8.5
  TieuDeBang $ws "A$($r0):F$r0"; Cao $ws $r0 22
  $tc = @('Đọc đúng bản vẽ (hỏi khi thấy lạ)', 'Kích thước chính 1 (bản vẽ / đo được)', 'Kích thước chính 2 (bản vẽ / đo được)', 'Kích thước chính 3 (bản vẽ / đo được)', 'Bề mặt, ba via, trầy xước', 'Làm đúng HD an toàn của máy (bắt buộc đạt)', 'Tự kiểm trước khi giao', 'Trong thời gian dự kiến')
  for ($i = 0; $i -lt $tc.Count; $i++) { $r = $r0 + 1 + $i; O $ws "A$($r):C$r" $tc[$i] 9; O $ws "D$r" '☐' 11 $false $false 'Arial' -4108; O $ws "E$r" '☐' 11 $false $false 'Arial' -4108; Cao $ws $r 22 }
  Ke $ws "A$($r0 + 1):F$($r0 + $tc.Count)"
  $r = $r0 + $tc.Count + 2
  O $ws "A$($r):C$r" 'Kết luận: mức đạt ........ (0–4)' 9 $true; O $ws "D$($r):F$r" 'Cần kèm thêm:' 9 $true; Ke $ws "A$($r):F$r"; Cao $ws $r 30; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):C$r" 'Người chấm 1 (chức danh, ký)' 9; O $ws "D$($r):F$r" 'Người chấm 2 (chức danh, ký)' 9; Ke $ws "A$($r):F$r"; Cao $ws $r 48; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):C$r" 'Người lao động đã biết kết quả (ký)' 9; O $ws "D$($r):F$r" 'Ý kiến người lao động' 9; Ke $ws "A$($r):F$r"; Cao $ws $r 48; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):F$r" ('Căn cứ HD-13 Phần C. Dùng khi: tuyển, hết thử việc, xét nâng bậc, giao máy hay việc mới, hai người chấm lệch quá 1 mức, sau kèm cặp, sau nghỉ từ 6 tháng. ' + $GHI_THU) 8 $false $true; Cao $ws $r 26
  Trang $ws "`$A`$1:`$F`$$r" 1

  # ---------- Sheet 3: C. Thi mối hàn (A4 đứng) ----------
  $ws = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)); $ws.Name = 'C. Thi mối hàn'
  $xl.ActiveWindow.DisplayGridlines = $false
  Cot $ws @(24, 11, 11, 11, 11, 24)
  DauPhieu $ws 'PHIẾU ĐÁNH GIÁ TAY NGHỀ – C. THI MỐI HÀN' 'A1:D2' @('Xưởng', 'Ngày') @('E1', 'E2') @('F1', 'F2') @('☐ CN1   ☐ CN2', '....../....../20......')
  Cao $ws 1 18; Cao $ws 2 18
  $nhan = @('Mã NV', 'Quá trình hàn', 'Vật liệu (mác) · độ dày (mm)', 'Dạng mối', 'Tư thế', 'Que, dây · khí bảo vệ · dòng hàn (A)', 'Số mẫu · mã ảnh mẫu')
  $gt = @('', '☐ TIG      ☐ MIG/MAG      ☐ Hàn điểm      ☐ Hàn laser', '', '☐ Giáp mối      ☐ Góc      ☐ Chồng      ☐ Ống', '☐ Bằng      ☐ Ngang      ☐ Đứng      ☐ Trần', '', '')
  for ($i = 0; $i -lt $nhan.Count; $i++) {
    $r = 4 + $i
    O $ws "A$r" $nhan[$i] 8.5 $false $false 'Saira SemiBold'
    if ($i -eq 0) {
      O $ws "B$($r):C$r" '' 9; Cham $ws "B$($r):C$r"
      O $ws "D$r" 'Chức danh' 8.5 $false $false 'Saira SemiBold' -4152
      O $ws "E$($r):F$r" '' 9; Cham $ws "E$($r):F$r"
    } else { O $ws "B$($r):F$r" $gt[$i] 9 ($gt[$i] -like '☐*'); if ($gt[$i] -notlike '☐*') { Cham $ws "B$($r):F$r" } }
    Cao $ws $r 21
  }
  $r0 = 12
  O $ws "A$($r0):C$r0" 'Kiểm ngoại quan' 8.5; O $ws "D$r0" 'Đạt' 8.5; O $ws "E$r0" 'Không đạt' 8.5; O $ws "F$r0" 'Ghi chú' 8.5
  TieuDeBang $ws "A$($r0):F$r0"; Cao $ws $r0 22
  $tc = @('Kích thước mối, chân mối đúng bản vẽ', 'Không nứt', 'Không rỗ khí nhìn thấy', 'Không cháy chân, lẹm quá mức', 'Ngấu đều, không cháy thủng', 'Bắn tóe đã làm sạch', 'Biến dạng trong dung sai', 'Màu nhiệt inox đã xử lý (nếu yêu cầu)', 'Kiểm phá mẫu (nếu có): ☐ bẻ, uốn   ☐ cắt ngang xem ngấu')
  for ($i = 0; $i -lt $tc.Count; $i++) { $r = $r0 + 1 + $i; O $ws "A$($r):C$r" $tc[$i] 9; O $ws "D$r" '☐' 11 $false $false 'Arial' -4108; O $ws "E$r" '☐' 11 $false $false 'Arial' -4108; Cao $ws $r 22 }
  Ke $ws "A$($r0 + 1):F$($r0 + $tc.Count)"
  $r = $r0 + $tc.Count + 1
  O $ws "A$($r):F$r" 'Tiêu chí: theo tiêu chí kiểm mối hàn của nhóm ISO khi có (HD-14 trở đi). Trong thử 20–30/11: theo bản vẽ và đánh giá của 2 người chấm, ghi lý do ở cột ghi chú.' 8 $false $true; Cao $ws $r 24
  $r++; O $ws "A$($r):C$r" 'Kết luận:  ☐ Đạt   ☐ Không đạt  ·  Mức hàn: K....... mức .......' 9 $true; O $ws "D$($r):F$r" 'Cần kèm thêm:' 9 $true; Ke $ws "A$($r):F$r"; Cao $ws $r 30; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):C$r" 'Người chấm 1 (chức danh, ký)' 9; O $ws "D$($r):F$r" 'Người chấm 2 (chức danh, ký)' 9; Ke $ws "A$($r):F$r"; Cao $ws $r 48; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):C$r" 'Người thi đã biết kết quả (ký)' 9; O $ws "D$($r):F$r" 'Ý kiến' 9; Ke $ws "A$($r):F$r"; Cao $ws $r 48; $ws.Range("A$($r):F$r").VerticalAlignment = -4160
  $r++; O $ws "A$($r):F$r" $GHI_THU 8 $false $true; Cao $ws $r 14
  Trang $ws "`$A`$1:`$F`$$r" 1

  # ---------- Hướng dẫn ----------
  $ws = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)); $ws.Name = 'Hướng dẫn'
  $xl.ActiveWindow.DisplayGridlines = $false
  HuongDan $ws @('Hướng dẫn: NS-09 Phiếu đánh giá tay nghề (3 phần)', $GHI_THU,
    'Căn cứ', 'HD-13 Tiêu chuẩn năng lực theo chức danh, ma trận tay nghề (14 kỹ năng K01–K14, thang 0–4).',
    'Phần A – Ma trận của tổ', 'Đợt đầu 01/2027, sau đó 6 tháng/lần (01, 07). Đội trưởng chấm, người chấm thứ hai chấm riêng. Lệch quá 1 mức ở ô nào thì làm Phần B cho ô đó trong 5 ngày làm việc.',
    'Phần B – Đánh giá cá nhân', 'Khi tuyển, hết thử việc, xét nâng bậc, giao máy hay việc mới, sau kèm cặp, sau nghỉ từ 6 tháng.',
    'Phần C – Thi mối hàn', 'Thợ hàn khi tuyển, nâng bậc, nuôi thợ hàn từ trong xưởng. Ảnh mẫu hàn lưu theo mã ảnh ghi trên phiếu.',
    'Lưu', 'Bản có tên chỉ lưu ở 02_HO SO NHAN SU (quyền hạn chế). Không đưa vào AI.',
    'Đo khi thử 20–30/11', 'Đội trưởng CN1 chấm 10 thợ: chấm xong trong 2 giờ; không quá 2 thợ có ô lệch quá 1 mức giữa hai người chấm.')
} elseif ($Mau -eq 'NS-14') {
  $ws = $wb.Worksheets.Item(1); $ws.Name = 'Phiếu tuần'
  $xl.ActiveWindow.DisplayGridlines = $false
  Cot $ws @(4, 20, 10, 10, 9, 10, 11, 15, 10, 19)
  DauPhieu $ws 'PHIẾU KPI SẢN XUẤT THEO TUẦN' 'A1:H2' @('Xưởng', 'Tuần') @('I1', 'I2') @('J1', 'J2') @('☐ CN1   ☐ CN2', '....../...... – ....../....../20......')
  Cao $ws 1 18; Cao $ws 2 18
  O $ws 'A3:B3' 'Người ghi (chức danh)' 8.5 $false $false 'Saira SemiBold'
  O $ws 'C3:F3' '' 9; Cham $ws 'C3:F3'; Cao $ws 3 20
  O $ws 'A4:J4' 'Căn cứ KPI-SX, ST-05 (nhóm ISO). Đội trưởng ghi mỗi ngày, cộng tuần, nộp sáng thứ Hai. Không ghi tên thợ. Chưa có sổ HS-01: ghi số lệnh SX hoặc tên đơn tạm.' 8.5 $false $true
  Cao $ws 4 24
  O $ws 'A5:J5' 'A. ĐƠN GIAO TRONG TUẦN (mỗi đơn một dòng)' 10 $false $false 'Saira SemiBold'; Cao $ws 5 18
  # Phần A (theo nhóm BM, 14/11): tuần thử GIỮ TẠM 3 cột ngày hẹn, ngày giao, đúng hẹn; khi HS-01 chạy thì bỏ 3 cột này
  $td = @('TT', 'Mã hồ sơ đơn', 'Ngày hẹn giao', 'Ngày giao thực tế', 'Đúng hẹn (Đ/T)', 'Ảnh QC cuối (C/K)', 'Làm lại do xưởng (C/K)', 'Công đoạn gây lỗi', 'Khách phản ánh (C/K)', 'Ghi chú')
  for ($j = 0; $j -lt $td.Count; $j++) { $ws.Cells.Item(6, $j + 1).Value2 = $td[$j] }
  TieuDeBang $ws 'A6:J6'; Cao $ws 6 34
  for ($r = 7; $r -le 18; $r++) { $ws.Cells.Item($r, 1).Value2 = [double]($r - 6); Cao $ws $r 21 }
  $v = $ws.Range('A7:J18'); $v.Font.Size = 9; $v.VerticalAlignment = -4108; $ws.Range('A7:A18').HorizontalAlignment = -4108; $ws.Range('C7:G18').HorizontalAlignment = -4108; $ws.Range('I7:I18').HorizontalAlignment = -4108
  Ke $ws 'A7:J18'
  O $ws 'A19:J19' 'Công đoạn gây lỗi: cắt, chấn, hàn, hoàn thiện, khác. Đúng hẹn: ngày giao thực tế không muộn hơn ngày đã hẹn khách; khách tự dời ngày thì ghi ngày mới, ghi chú "khách dời". Ba cột ngày hẹn, ngày giao, đúng hẹn chỉ dùng tạm khi chưa có sổ HS-01; khi HS-01 chạy (01/12 hoặc 23/11) bỏ 3 cột này, Phó Giám đốc lọc số đơn giao, đơn đúng hẹn từ HS-01 sáng thứ Hai (không nối công thức sang HS-01).' 8 $false $true
  Cao $ws 19 34
  Cao $ws 19 24
  # Trang 2
  O $ws 'A20:J20' 'B. THEO NGÀY' 10 $false $false 'Saira SemiBold'; Cao $ws 20 18
  O $ws 'A21:B21' 'Ngày' 8.5; O $ws 'C21' 'Số ca làm việc' 8.5; O $ws 'D21' 'Ca có phiếu cuối ca NS-12' 8.5; O $ws 'E21:F21' 'Tai nạn lao động (số vụ)' 8.5
  # Cột I hẹp nên tiêu đề dài bị ngắt xấu (nhóm BM, 14/11): nới cột I lên 14 và rút chữ "Hàng lỗi phát hiện (lần)"; cột I phần A (Khách phản ánh) cũng rộng ra, không ảnh hưởng
  O $ws 'G21:H21' 'Sự cố không ai bị thương (số vụ, ghi ngắn)' 8.5; O $ws 'I21' 'Hàng lỗi phát hiện (lần)' 8.5; O $ws 'J21' 'Ghi xong trong ngày (ký nháy)' 8.5
  $ws.Columns.Item(9).ColumnWidth = [double]14; $ws.Columns.Item(10).ColumnWidth = [double]16
  TieuDeBang $ws 'A21:J21'; Cao $ws 21 40
  $thu = @('Thứ Hai', 'Thứ Ba', 'Thứ Tư', 'Thứ Năm', 'Thứ Sáu', 'Thứ Bảy')
  for ($i = 0; $i -lt 6; $i++) { $r = 22 + $i; O $ws "A$($r):B$r" ($thu[$i] + '   ....../......') 9; O $ws "E$($r):F$r" '' 9; O $ws "G$($r):H$r" '' 9; Cao $ws $r 22 }
  Ke $ws 'A22:J27'
  # R4-05: ghi ở NS-14 không thay khai báo TNLĐ, sự cố
  O $ws 'A28:J28' 'Ghi ở đây không thay khai báo tai nạn lao động, sự cố theo QĐ-004.' 8 $false $true; Cao $ws 28 14
  O $ws 'A29:J29' 'C. CỘNG TUẦN (đội trưởng cộng sáng thứ Hai; 12 số chép vào sheet NhapTuan của bảng tính KPI-SX, cùng thứ tự)' 10 $false $false 'Saira SemiBold'; Cao $ws 29 18
  $dem = @('(1) Đơn đã giao', '(2) Đơn giao đúng hẹn', '(3) Đơn giao có ảnh QC cuối', '(4) Đơn hoàn thành', '(5) Đơn có hàng lỗi do xưởng', '(6) Lần khách phản ánh', '(7) Số ca làm việc', '(8) Ca có phiếu NS-12', '(9) Tai nạn lao động (vụ)', '(10) Sự cố không ai bị thương (vụ)', '(11) Ngày có ghi NS-14', '(12) Ngày làm việc')
  for ($i = 0; $i -lt 6; $i++) {
    $r = 30 + $i
    O $ws "A$($r):D$r" $dem[$i] 9; O $ws "E$r" '' 9
    O $ws "F$($r):I$r" $dem[$i + 6] 9; O $ws "J$r" '' 9
    Cao $ws $r 20
  }
  Ke $ws 'A30:J35'
  O $ws 'A37:C37' 'Khó khăn khi ghi tuần này (cột nào không ghi được, vì sao)' 8.5; O $ws 'D37:J37' '' 9; Ke $ws 'A37:J37'; Cao $ws 37 30
  O $ws 'A38:C38' 'Thời gian ghi mỗi ngày (phút, ước)' 8.5; O $ws 'D38:J38' '' 9; Ke $ws 'A38:J38'; Cao $ws 38 22
  O $ws 'A40:D40' 'Người ghi (chức danh, ký)' 9; O $ws 'E40:G40' 'Người nhận (Đại diện ISO / Giám đốc, ký)' 9; O $ws 'H40:J40' 'Ngày nhận ....../....../20......' 9
  Ke $ws 'A40:J40'; Cao $ws 40 48; $ws.Range('A40:J40').VerticalAlignment = -4160
  O $ws 'A41:J41' $GHI_THU 8 $false $true; Cao $ws 41 14
  Trang $ws '$A$1:$J$41' 2
  $ws.ResetAllPageBreaks(); [void]$ws.HPageBreaks.Add($ws.Range('A20'))

  $ws = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)); $ws.Name = 'Hướng dẫn'
  $xl.ActiveWindow.DisplayGridlines = $false
  HuongDan $ws @('Hướng dẫn: NS-14 Phiếu KPI sản xuất theo tuần', $GHI_THU,
    'Căn cứ', 'KPI-SX Bộ KPI sản xuất (nhóm Nhân sự), ST-05 Mục tiêu chất lượng 2027 (nhóm ISO). Số đếm dùng cho KPI xưởng X-01 → X-06.',
    'Ai ghi, khi nào', 'Đội trưởng mỗi xưởng ghi trong ngày; sáng thứ Hai cộng tuần, nộp Đại diện ISO (khi cử) hoặc Giám đốc.',
    'Không ghi', 'Tên thợ. KPI xưởng đếm theo đơn và công đoạn, không theo người (Khung KPI mục 8).',
    'Từ 01/12/2026', 'Mã hồ sơ đơn theo sổ HS-01. Tuần thử 20–30/11 giữ tạm 3 cột ngày hẹn, ngày giao, đúng hẹn. Khi HS-01 chạy (01/12 hoặc 23/11): bỏ 3 cột này; đội trưởng chỉ ghi mã hồ sơ và các cột của xưởng; Phó Giám đốc lọc số đơn giao, đơn đúng hẹn từ HS-01 sáng thứ Hai, ghi vào ô (1), (2) Phần C. Không nối công thức sang HS-01.',
    'Đo khi thử 20–30/11', 'Đội trưởng CN1 ghi 1 tuần: đạt khi có số liệu từ 5/6 ngày làm việc và có số để Giám đốc thấy mức hiện tại.')
} else { throw "Mau khong ho tro: $Mau" }

  $wb.Worksheets.Item(1).Activate()
  if (Test-Path -LiteralPath $Out) { Remove-Item -LiteralPath $Out }
  $wb.SaveAs($Out, 51)
  "XLSX=$Out"
} catch { "LOI dong $($_.InvocationInfo.ScriptLineNumber): $($_.InvocationInfo.Line.Trim())"; throw } finally {
  # Đóng sạch (HT-017)
  if ($wb) { try { $wb.Close($false) } catch {} }
  if ($xl) { try { $xl.Quit() } catch {} }
  foreach ($o in @($ws, $st, $wb, $xl)) {
    if ($o -ne $null -and [Runtime.InteropServices.Marshal]::IsComObject($o)) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch {} }
  }
  $ws = $null; $st = $null; $wb = $null; $xl = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
