# Dựng nháp NS-10, NS-11, NS-13, NS-15 (.xlsx) theo kiểu biểu mẫu nhóm BM (skill vkg-bm-lap-bieu-mau; HT-012 → HT-016),
# cùng kiểu với bản HR-04 (NS-09, NS-14) và HR-06 (NS-04 → NS-08, NS-12). Phiên HR-01, 14/11/2026.
# Dùng:  powershell -File dung-ns-hr01.ps1 -Mau NS-10|NS-11|NS-13|NS-15 -Out <file.xlsx>
#        powershell -File dung-ns-hr01.ps1 -Xltm <file.xltm> -Pdf <file.pdf>      (xuất PDF bản trắng qua macro)
# HT-017: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md trước khi chạy. Script tự đóng Excel của chính nó (theo PID).
# Không quốc hiệu (HT-016). Không đặt logo, địa chỉ vào ô (ap-chuan-macro.ps1 đặt header). Không dữ liệu người thật.
param([string]$Mau, [string]$Out, [string]$Xltm, [string]$Pdf)
$ErrorActionPreference = 'Stop'
$XANH = 6041098      # #0A2E5C
$NEN = 16249582      # nền tiêu đề bảng rất nhạt (giống NS-09, NS-12)
$GHI_THU = 'Bản thử 20–30/11/2026, chưa phát hành. Mẫu chính thức do nhóm BM dựng sau khi có kết quả thử.'

Add-Type -Namespace W -Name U -MemberDefinition '[DllImport("user32.dll")] public static extern int GetWindowThreadProcessId(System.IntPtr h, out int p);'
$xl = New-Object -ComObject Excel.Application
$xl.Visible = $false; $xl.DisplayAlerts = $false
$pidXl = 0; [void][W.U]::GetWindowThreadProcessId([IntPtr]$xl.Hwnd, [ref]$pidXl)
$wb = $null

function O($ws, [string]$a, [string]$t, [double]$sz = 9, [bool]$b = $false, [bool]$it = $false, [string]$font = 'Arial', [int]$ngang = -4131) {
  $r = $ws.Range($a)
  if ($r.Cells.Count -gt 1) { $r.Merge() }
  $r.Cells.Item(1, 1).Value2 = $t
  $r.Font.Name = $font; $r.Font.Size = $sz; $r.Font.Bold = $b; $r.Font.Italic = $it; $r.Font.Color = $XANH
  $r.WrapText = $true; $r.VerticalAlignment = -4108; $r.HorizontalAlignment = $ngang
}
function Ke($ws, [string]$a) { $r = $ws.Range($a); foreach ($i in 7, 8, 9, 10, 11, 12) { $bd = $r.Borders.Item($i); $bd.LineStyle = 1; $bd.Weight = 2; $bd.Color = $XANH } }
function Cham($ws, [string]$a) { $bd = $ws.Range($a).Borders.Item(9); $bd.LineStyle = -4118; $bd.Weight = 2; $bd.Color = $XANH }
function TieuDeBang($ws, [string]$a) { $r = $ws.Range($a); $r.Interior.Color = $NEN; $r.Font.Name = 'Saira SemiBold'; $r.Font.Size = 8.5; $r.Font.Color = $XANH; $r.HorizontalAlignment = -4108; $r.VerticalAlignment = -4108; $r.WrapText = $true; Ke $ws $a }
function Cot($ws, [double[]]$w) { for ($i = 0; $i -lt $w.Count; $i++) { $ws.Columns.Item($i + 1).ColumnWidth = [double]$w[$i] } }
function Cao($ws, [int]$r, [double]$h) { $ws.Range("$($r):$($r)").RowHeight = [double]$h }
function Muc($ws, [int]$r, [string]$cuoi, [string]$t) { O $ws "A$($r):$cuoi$r" $t 10 $false $false 'Saira SemiBold'; Cao $ws $r 20 }
function Nhan($ws, [string]$a, [string]$t) { O $ws $a $t 8.5 $false $false 'Saira SemiBold' }
function Dien($ws, [string]$a, [string]$t = '') { O $ws $a $t 9 ($t -like '☐*'); if ($t -notlike '☐*') { Cham $ws $a } }
function DauPhieu($ws, [string]$tieuDe, [string]$vung, [string[]]$nhan, [string[]]$oNhan, [string[]]$oGt, [string[]]$gt) {
  O $ws $vung $tieuDe 15 $false $false 'Saira ExtraBold'
  for ($i = 0; $i -lt $nhan.Count; $i++) { O $ws $oNhan[$i] $nhan[$i] 8.5 $false $false 'Saira SemiBold' -4152; O $ws $oGt[$i] $gt[$i] 9.5 $true; Cham $ws $oGt[$i] }
}
function Ky($ws, [int]$r, [string[]]$vung, [string[]]$chu, [double]$h = 50) {
  for ($i = 0; $i -lt $vung.Count; $i++) { O $ws ($vung[$i] -f $r) $chu[$i] 9; Ke $ws ($vung[$i] -f $r); $ws.Range(($vung[$i] -f $r)).VerticalAlignment = -4160 }
  Cao $ws $r $h
}
function Trang($ws, [string]$vung, [int]$huong, [string]$lap = '') {
  $ps = $ws.PageSetup
  $ps.PaperSize = 9; $ps.Orientation = $huong; $ps.PrintArea = $vung
  $ps.LeftMargin = $xl.CentimetersToPoints(1.2); $ps.RightMargin = $xl.CentimetersToPoints(1.2); $ps.BottomMargin = $xl.CentimetersToPoints(1.5)
  $ps.Zoom = $false; $ps.FitToPagesWide = 1; $ps.FitToPagesTall = $false
  if ($lap) { $ps.PrintTitleRows = $lap }
}
function HuongDan($ws, [string[]]$dong) {
  $ws.Columns.Item(1).ColumnWidth = 2; $ws.Columns.Item(2).ColumnWidth = 100
  for ($i = 0; $i -lt $dong.Count; $i++) {
    $c = $ws.Cells.Item($i + 2, 2); $c.Value2 = $dong[$i]; $c.WrapText = $true; $c.Font.Size = 10; $c.Font.Color = $XANH
    if ($i -eq 0) { $c.Font.Size = 12; $c.Font.Bold = $true } elseif ($i % 2 -eq 0 -and $i -gt 1) { $c.Font.Bold = $true }
  }
  $ws.PageSetup.Orientation = 1; $ws.PageSetup.Zoom = $false; $ws.PageSetup.FitToPagesWide = 1; $ws.PageSetup.FitToPagesTall = $false
}
function SheetMoi([string]$ten) { $s = $wb.Worksheets.Add([Type]::Missing, $wb.Worksheets.Item($wb.Worksheets.Count)); $s.Name = $ten; $xl.ActiveWindow.DisplayGridlines = $false; , $s }
# Bảng: tiêu đề ở dòng $r0, $n dòng trống có STT ở cột A
function Bang($ws, [int]$r0, [string]$cuoi, [string[]]$tieuDe, [string[]]$oTd, [int]$n, [double]$cao = 22) {
  for ($j = 0; $j -lt $tieuDe.Count; $j++) { O $ws $oTd[$j] $tieuDe[$j] 8.5 }
  TieuDeBang $ws "A$($r0):$cuoi$r0"; Cao $ws $r0 30
  for ($k = 1; $k -le $n; $k++) {
    $r = $r0 + $k
    for ($j = 0; $j -lt $oTd.Count; $j++) { $a = ($oTd[$j] -replace '\d+', "$r"); if ($ws.Range($a).Cells.Count -gt 1) { $ws.Range($a).Merge() } }
    $ws.Cells.Item($r, 1).Value2 = [double]$k; $ws.Cells.Item($r, 1).HorizontalAlignment = -4108; Cao $ws $r $cao
  }
  $v = $ws.Range("A$($r0 + 1):$cuoi$($r0 + $n)"); $v.Font.Size = 9; $v.Font.Color = $XANH; $v.VerticalAlignment = -4108
  Ke $ws "A$($r0 + 1):$cuoi$($r0 + $n)"
}

try {
if ($Xltm) {
  # ---------- Xuất PDF bản trắng: mở bản mới từ mẫu, bật macro, ẩn Hướng dẫn, không lưu ----------
  $xl.AutomationSecurity = 1
  $wb = $xl.Workbooks.Add($Xltm)
  foreach ($w in $wb.Worksheets) { if ($w.Name -eq 'Hướng dẫn') { $w.Visible = 0 } }
  $wb.Worksheets.Item(1).Activate()
  $wb.ExportAsFixedFormat(0, $Pdf)
  "PDF=$Pdf"
  try { "MACRO=" + $wb.Names.Item('VKG_MACRO').RefersToRange.Value2 } catch { 'MACRO=(khong doc duoc ten VKG_MACRO)' }
} else {
  $wb = $xl.Workbooks.Add()
  $st = $wb.Styles.Item('Normal'); $st.Font.Name = 'Arial'; $st.Font.Size = [double]12
  $ws = $wb.Worksheets.Item(1)
  $xl.ActiveWindow.DisplayGridlines = $false

if ($Mau -eq 'NS-10') {
  # ================= NS-10 PHIẾU ĐỀ NGHỊ TUYỂN DỤNG (A4 đứng, 1 trang) =================
  $ws.Name = 'Phiếu'
  Cot $ws @(22, 13, 13, 13, 13, 22)
  DauPhieu $ws 'PHIẾU ĐỀ NGHỊ TUYỂN DỤNG' 'A1:D2' @('Số phiếu', 'Ngày lập') @('E1', 'E2') @('F1', 'F2') @('', '....../....../20......')
  Cao $ws 1 20; Cao $ws 2 20
  Nhan $ws 'A3' 'Xưởng'; Dien $ws 'B3:F3' '☐ CN1      ☐ CN2      ☐ Văn phòng'; Cao $ws 3 20
  O $ws 'A4:F4' 'Dùng ở QT-02 B1, B2. Không ghi điều kiện giới tính, tuổi, hôn nhân, quê quán (BLLĐ 2019 Đ.8). Không ghi tên người đang làm hay đã nghỉ.' 8.5 $false $true; Cao $ws 4 24
  Muc $ws 5 'F' 'A. NGƯỜI ĐỀ NGHỊ GHI'
  $r = 6
  Nhan $ws "A$r" 'Người đề nghị (chức danh)'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Vị trí cần tuyển'; Dien $ws "B$($r):F$r" '(theo danh mục chức danh)  ....................................................'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Số người'; Dien $ws "B$($r):C$r"; Nhan $ws "D$r" 'Ngày cần có người'; Dien $ws "E$($r):F$r" '....../....../20......'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Lý do'; Dien $ws "B$($r):F$r" '☐ Thay người nghỉ    ☐ Thêm theo định biên    ☐ Đơn hàng tăng    ☐ Khác: .................'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Định biên vị trí / hiện có'; Dien $ws "B$($r):F$r" '.......... người  /  .......... người'; Cao $ws $r 21; $r++
  $r++; Muc $ws $r 'F' 'B. YÊU CẦU CÔNG VIỆC'; $r++
  Nhan $ws "A$r" 'Máy, việc phải làm được'
  O $ws "B$($r):F$r" '☐ Laser tấm 6 kW   ☐ Laser tấm 12 kW   ☐ Laser ống   ☐ Chấn CNC   ☐ Đột CNC' 9 $true; Cao $ws $r 20; $r++
  O $ws "B$($r):F$r" '☐ Hàn laser   ☐ Hàn TIG   ☐ Hàn MIG   ☐ Hàn điểm   ☐ Mài, đánh bóng' 9 $true; Cao $ws $r 20; $r++
  O $ws "B$($r):F$r" '☐ Lắp ráp inox   ☐ Đọc bản vẽ   ☐ Vẽ CAD (AutoCAD, SolidWorks)   ☐ Khác: ..................' 9 $true; Cao $ws $r 20; $r++
  Nhan $ws "A$r" 'Kinh nghiệm tối thiểu'; Dien $ws "B$($r):C$r" '.......... năm'; Nhan $ws "D$r" 'Chứng chỉ nghề cần có'; Dien $ws "E$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Bài thi tay nghề đề xuất'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Làm thêm giờ, đi lắp đặt tại khách'; Dien $ws "B$($r):F$r" '☐ Có      ☐ Không'; Cao $ws $r 21; $r++
  $r++; Muc $ws $r 'F' 'C. GIÁM ĐỐC DUYỆT (trong 2 ngày làm việc)'; $r++
  Dien $ws "A$($r):F$r" '☐ Đồng ý      ☐ Không đồng ý'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Lý do (nếu không đồng ý)'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Khoảng lương'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Loại HĐLĐ dự kiến'; Dien $ws "B$($r):F$r" '☐ Xác định thời hạn ......... tháng      ☐ Không xác định thời hạn'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Thử việc dự kiến'; Dien $ws "B$($r):F$r" '.......... ngày  (BLLĐ Đ.25: công nhân kỹ thuật ≤ 30 ngày; cao đẳng trở lên ≤ 60 ngày; việc giản đơn ≤ 6 ngày làm việc)'; Cao $ws $r 24; $r++
  $r++; Ky $ws $r @('A{0}:B{0}', 'C{0}:D{0}', 'E{0}:F{0}') @('Người đề nghị (chức danh, ký)', 'Giám đốc (ký)', 'Ngày duyệt  ....../....../20......'); $r++
  $r++; Muc $ws $r 'F' 'D. THEO DÕI (người phụ trách nhân sự ghi)'; $r++
  Nhan $ws "A$r" 'Ngày đăng tin'; Dien $ws "B$($r):C$r" '....../....../20......'; Nhan $ws "D$r" 'Ngày vào làm'; Dien $ws "E$($r):F$r" '....../....../20......'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Số ngày tuyển'; Dien $ws "B$($r):F$r" '.......... ngày  (từ ngày duyệt đến ngày vào làm; mục tiêu ≤ 90 ngày)'; Cao $ws $r 21; $r++
  O $ws "A$($r):F$r" $GHI_THU 8 $false $true; Cao $ws $r 14
  Trang $ws "`$A`$1:`$F`$$r" 1
  $ws = SheetMoi 'Hướng dẫn'
  HuongDan $ws @('Hướng dẫn: NS-10 Phiếu đề nghị tuyển dụng', $GHI_THU,
    'Căn cứ', 'QT-02 Tuyển dụng v0.1 (B1, B2); phiếu yêu cầu G8. BLLĐ 2019 Đ.8, 11, 25.',
    'Ai ghi, khi nào', 'Đội trưởng hoặc trưởng bộ phận ghi phần A, B khi cần người. Giám đốc duyệt phần C trong 2 ngày làm việc. Người phụ trách nhân sự ghi phần D.',
    'Lưu', '01_TUYEN DUNG\01_KE HOACH TUYEN DUNG\<năm>. Giữ 3 năm (đề xuất).',
    'Đo khi thử 20–30/11', 'Chạy cho 1 vị trí thợ hàn: mọi bước của QT-02 có người làm; ghi lại ô nào thừa, thiếu.')
}
elseif ($Mau -eq 'NS-11') {
  # ================= NS-11 PHIẾU ĐÁNH GIÁ ỨNG VIÊN (A4 đứng, 2 trang) =================
  $ws.Name = 'Phiếu'
  Cot $ws @(24, 12, 9, 9, 9, 24)
  DauPhieu $ws 'PHIẾU ĐÁNH GIÁ ỨNG VIÊN' 'A1:D2' @('Số phiếu', 'Ngày') @('E1', 'E2') @('F1', 'F2') @('', '....../....../20......')
  Cao $ws 1 20; Cao $ws 2 20
  $r = 3
  Nhan $ws "A$r" 'Theo phiếu NS-10 số'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Xưởng'; Dien $ws "F$r" '☐ CN1   ☐ CN2'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Vị trí'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Người phỏng vấn (chức danh)'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Người chấm tay nghề'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  $r++; Muc $ws $r 'F' 'A. ỨNG VIÊN'; $r++
  Nhan $ws "A$r" 'Mã ứng viên'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Họ tên'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Năm sinh'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Điện thoại'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Kinh nghiệm (năm, nơi làm)'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Máy đã chạy'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Chứng chỉ nghề'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  O $ws "A$($r):F$r" 'Không ghi số căn cước, địa chỉ chi tiết, sức khỏe, gia đình. Không hỏi về hôn nhân, mang thai, con cái (BLLĐ 2019 Đ.8).' 8 $false $true; Cao $ws $r 14; $r++
  $r++; Muc $ws $r 'F' 'B. PHỎNG VẤN'; $r++
  $r0 = $r
  O $ws "A$($r):B$r" 'Tiêu chí' 8.5; O $ws "C$r" 'Chưa đạt' 8.5; O $ws "D$r" 'Đạt' 8.5; O $ws "E$r" 'Tốt' 8.5; O $ws "F$r" 'Nhận xét (1 dòng)' 8.5
  TieuDeBang $ws "A$($r):F$r"; Cao $ws $r 22
  $tc = @('Hiểu việc của vị trí', 'Đọc bản vẽ', 'Ý thức an toàn (kể được cách làm an toàn ở máy đã chạy)', 'Tác phong, giờ giấc', 'Sẵn sàng làm ở CN1, CN2; tăng ca khi cần')
  foreach ($t in $tc) { $r++; O $ws "A$($r):B$r" $t 9; foreach ($c in 'C', 'D', 'E') { O $ws "$c$r" '☐' 11 $false $false 'Arial' -4108 }; O $ws "F$r" '' 9; Cao $ws $r 24 }
  Ke $ws "A$($r0 + 1):F$r"; $r++
  $r++; Muc $ws $r 'F' 'C. THI TAY NGHỀ TẠI XƯỞNG'; $r++
  Nhan $ws "A$r" 'Bài thi (vật liệu, độ dày, việc làm)'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Thời gian làm (phút)'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Ảnh mẫu thi, mã ảnh'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Kết quả kiểm'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" '(kích thước, bề mặt, mối hàn…)'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Thợ hàn'; Dien $ws "B$($r):F$r" '☐ Chấm theo NS-09 phần C (thi mối hàn), phiếu NS-09 số ..........'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'An toàn khi thi'; Dien $ws "B$($r):F$r" '☐ Đã được hướng dẫn an toàn tại máy (ứng viên ký xác nhận ở dòng ký bên dưới)'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" ''; Dien $ws "B$($r):F$r" '☐ Mặc đủ bảo hộ    ☐ Thao tác đúng    ☐ Có người kèm (không thi laser, cầu trục)'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Kết quả thi'; Dien $ws "B$($r):F$r" '☐ Chưa đạt      ☐ Đạt      ☐ Tốt'; Cao $ws $r 21; $r++
  $r++; Muc $ws $r 'F' 'D. KẾT LUẬN CỦA NGƯỜI CHẤM'; $r++
  Dien $ws "A$($r):F$r" '☐ Đề xuất nhận      ☐ Dự bị      ☐ Không nhận'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Lý do'; Dien $ws "B$($r):F$r"; Cao $ws $r 21; $r++
  Ky $ws $r @('A{0}:C{0}', 'D{0}:F{0}') @('Người phỏng vấn (chức danh, ký)', 'Người chấm tay nghề (chức danh, ký)') 46; $r++
  $ngat = $r + 1
  $r++; Muc $ws $r 'F' 'E. GIÁM ĐỐC QUYẾT (trong 2 ngày làm việc sau khi thi)'; $r++
  Dien $ws "A$($r):F$r" '☐ Nhận      ☐ Không nhận'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Lương thử việc'; Dien $ws "B$($r):C$r"; Nhan $ws "D$($r):E$r" 'Lương chính thức'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Thời gian thử việc'; Dien $ws "B$($r):F$r" '.......... ngày'; Cao $ws $r 21; $r++
  O $ws "A$($r):F$r" 'Thử việc 1 lần; lương thử việc ≥ 85% lương chính thức; tối đa: công nhân kỹ thuật, trung cấp 30 ngày · cao đẳng trở lên 60 ngày · việc giản đơn 6 ngày làm việc (BLLĐ 2019 Đ.24–26).' 8 $false $true; Cao $ws $r 24; $r++
  Nhan $ws "A$r" 'Loại HĐLĐ'; Dien $ws "B$($r):F$r" '☐ Xác định thời hạn ......... tháng      ☐ Không xác định thời hạn'; Cao $ws $r 21; $r++
  Nhan $ws "A$r" 'Ngày vào làm'; Dien $ws "B$($r):C$r" '....../....../20......'; Nhan $ws "D$($r):E$r" 'Xưởng'; Dien $ws "F$r" '☐ CN1   ☐ CN2'; Cao $ws $r 21; $r++
  Ky $ws $r @('A{0}:C{0}', 'D{0}:F{0}') @('Giám đốc (ký)', 'Ngày  ....../....../20......') 46; $r++
  $r++; Muc $ws $r 'F' 'F. ĐỒNG Ý LƯU HỒ SƠ (ứng viên ghi)'; $r++
  O $ws "A$($r):F$r" 'Nếu không trúng tuyển, tôi   ☐ đồng ý   ☐ không đồng ý   để Công ty lưu hồ sơ tối đa 12 tháng, chỉ để mời lần tuyển sau. Không đồng ý thì hồ sơ được xóa sau 30 ngày. Tôi có thể yêu cầu xem, xóa hồ sơ hoặc rút lại đồng ý bất cứ lúc nào qua 0911 365 365 (Luật Bảo vệ dữ liệu cá nhân 2025 Đ.25).' 9; Cao $ws $r 46; $r++
  Ky $ws $r @('A{0}:C{0}', 'D{0}:F{0}') @('Ứng viên (ký, ghi họ tên)', 'Hoặc: đồng ý qua Zalo ngày ....../....../20......') 40; $r++
  O $ws "A$($r):F$r" $GHI_THU 8 $false $true; Cao $ws $r 14
  Trang $ws "`$A`$1:`$F`$$r" 1
  $ws.ResetAllPageBreaks(); [void]$ws.HPageBreaks.Add($ws.Range("A$ngat"))
  $ws = SheetMoi 'Hướng dẫn'
  HuongDan $ws @('Hướng dẫn: NS-11 Phiếu đánh giá ứng viên', $GHI_THU,
    'Căn cứ', 'QT-02 Tuyển dụng v0.1 (B5, B6, B8); phiếu yêu cầu G8. BLLĐ 2019 Đ.8, 24–26; Luật Bảo vệ dữ liệu cá nhân 91/2025/QH15 Đ.25.',
    'Ai ghi', 'Phần A, B: người phụ trách nhân sự cùng đội trưởng. Phần C: đội trưởng (thợ hàn chấm thêm NS-09 phần C). Phần E: Giám đốc. Phần F: ứng viên.',
    'Lưu', 'Trúng tuyển: hồ sơ nhân sự, thư mục 01 (QT-04 phụ lục). Không trúng: xóa sau 30 ngày, trừ khi ứng viên đồng ý lưu (tối đa 12 tháng).',
    'Thang chấm', 'Chưa đạt / Đạt / Tốt: tạm, chờ thống nhất với thang của NS-09 (HR-04).')
}
elseif ($Mau -eq 'NS-15') {
  # ================= NS-15 DANH SÁCH BÀN GIAO KHI NGHỈ VIỆC (A4 đứng) =================
  $ws.Name = 'Phiếu'
  Cot $ws @(5, 24, 14, 8, 20, 20)
  DauPhieu $ws 'DANH SÁCH BÀN GIAO KHI NGHỈ VIỆC' 'A1:D2' @('Số', 'Ngày lập') @('E1', 'E2') @('F1', 'F2') @('', '....../....../20......')
  Cao $ws 1 20; Cao $ws 2 20
  $r = 3
  Nhan $ws "A$($r):B$r" 'Mã nhân sự · Họ tên'; Dien $ws "C$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$($r):B$r" 'Chức danh'; Dien $ws "C$($r):D$r"; Nhan $ws "E$r" 'Xưởng'; Dien $ws "F$r" '☐ CN1   ☐ CN2'; Cao $ws $r 21; $r++
  Nhan $ws "A$($r):B$r" 'Ngày làm việc cuối'; Dien $ws "C$($r):D$r" '....../....../20......'; Nhan $ws "E$r" 'Người nhận bàn giao'; Dien $ws "F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$($r):B$r" 'Loại chấm dứt'; Dien $ws "C$($r):F$r" '☐ Xin nghỉ   ☐ Thỏa thuận   ☐ Hết hạn HĐ   ☐ Không đạt thử việc   ☐ Khác'; Cao $ws $r 21; $r++
  $r++; Muc $ws $r 'F' 'A. VIỆC DỞ DANG'; $r++
  Bang $ws $r 'F' @('TT', 'Lệnh sản xuất / việc', 'Tình trạng', 'File, bản vẽ liên quan (nơi lưu)', 'Người nhận ký') @("A$r", "B$($r):C$r", "D$r", "E$r", "F$r") 5
  $r += 6
  $r++; Muc $ws $r 'F' 'B. ĐỒ NGHỀ, DỤNG CỤ ĐO, TÀI SẢN (máy cầm tay, chìa khóa, thẻ, điện thoại, máy tính…)'; $r++
  Bang $ws $r 'F' @('TT', 'Tên', 'Số lượng', 'Tình trạng', 'Người nhận ký') @("A$r", "B$($r):C$r", "D$r", "E$r", "F$r") 6
  for ($k = 1; $k -le 6; $k++) { O $ws "E$($r + $k)" '☐ Tốt  ☐ Hỏng  ☐ Mất' 8.5 }
  Ke $ws "A$($r + 1):F$($r + 6)"; $r += 7
  $r++; Muc $ws $r 'F' 'C. BẢO HỘ LAO ĐỘNG'; $r++
  Bang $ws $r 'F' @('TT', 'Tên', 'Số lượng', 'Xử lý', 'Người nhận ký') @("A$r", "B$($r):C$r", "D$r", "E$r", "F$r") 3
  for ($k = 1; $k -le 3; $k++) { O $ws "E$($r + $k)" '☐ Trả lại  ☐ Không phải trả' 8.5 }
  Ke $ws "A$($r + 1):F$($r + 3)"; $r += 4
  $ngat = $r + 1
  $r++; Muc $ws $r 'F' 'D. FILE, TÀI KHOẢN, BẢO MẬT BẢN VẼ'; $r++
  $ds = @('☐ Đã giao file chương trình máy, bản vẽ đang dùng. Nơi lưu: ........................................................', '☐ Đã rời nhóm Zalo công việc', '☐ Đã khóa email, máy tính, OneDrive, phần mềm máy CNC', '☐ Đã đổi mật khẩu dùng chung')
  foreach ($t in $ds) { O $ws "A$($r):F$r" $t 9; Cao $ws $r 21; $r++ }
  O $ws "A$($r):F$r" 'Cam kết: Tôi đã xóa bản vẽ, file của khách hàng trên điện thoại, máy cá nhân và không giữ bản nào.' 9 $true; Cao $ws $r 21; $r++
  Ky $ws $r @('A{0}:C{0}', 'D{0}:F{0}') @('Người nghỉ việc (ký)', 'Người phụ trách nhân sự (ký)') 40; $r++
  $r++; Muc $ws $r 'F' 'E. TÀI CHÍNH (kế toán ghi)'; $r++
  Nhan $ws "A$($r):B$r" 'Tạm ứng chưa hoàn'; Dien $ws "C$($r):F$r"; Cao $ws $r 21; $r++
  Nhan $ws "A$($r):B$r" 'Thiếu, hỏng đề nghị bồi thường'; Dien $ws "C$($r):F$r" 'Số biên bản: ..............  ·  Giám đốc đã duyệt: ☐ Có  ☐ Chưa'; Cao $ws $r 21; $r++
  Nhan $ws "A$($r):B$r" 'Ngày phép năm chưa nghỉ'; Dien $ws "C$($r):F$r" '.......... ngày'; Cao $ws $r 21; $r++
  O $ws "A$($r):F$r" 'Chỉ trừ khoản bồi thường khi đã có biên bản, theo trình tự nội quy và Giám đốc duyệt; khấu trừ không quá 30% lương thực trả của tháng (BLLĐ 2019 Đ.102 k3, 129, 130). Thanh toán đủ trong 14 ngày làm việc kể từ ngày chấm dứt (Đ.48).' 8 $false $true; Cao $ws $r 36; $r++
  $r++
  Ky $ws $r @('A{0}:B{0}', 'C{0}:D{0}', 'E{0}:F{0}') @('Người bàn giao (ký)', 'Người nhận (ký)', 'Đội trưởng (ký)') 48; $r++
  Ky $ws $r @('A{0}:D{0}', 'E{0}:F{0}') @('Giám đốc xác nhận (khi có phần thiếu, hỏng, mất)', 'Ngày  ....../....../20......') 48; $r++
  O $ws "A$($r):F$r" $GHI_THU 8 $false $true; Cao $ws $r 14
  Trang $ws "`$A`$1:`$F`$$r" 1
  $ws.ResetAllPageBreaks(); [void]$ws.HPageBreaks.Add($ws.Range("A$ngat"))
  $ws = SheetMoi 'Hướng dẫn'
  HuongDan $ws @('Hướng dẫn: NS-15 Danh sách bàn giao khi nghỉ việc', $GHI_THU,
    'Căn cứ', 'QT-05 Nghỉ việc v0.1 (B4, B5, B6); phiếu yêu cầu G9. BLLĐ 2019 Đ.48, 129.',
    'Ai ghi, khi nào', 'Đội trưởng lập cùng người nghỉ trước ngày làm việc cuối; người phụ trách nhân sự làm phần D; kế toán làm phần E.',
    'Lưu', 'Hồ sơ nhân sự, thư mục 09_NGHI-VIEC (QT-04 phụ lục).')
}
elseif ($Mau -eq 'NS-13') {
  # ================= NS-13 SỔ QUẢN LÝ LAO ĐỘNG (A4 ngang, bảng dài) =================
  # Cột theo NĐ 145/2020/NĐ-CP Đ.3 và G1 (HR-02) mục N7 – HR-02 đối chiếu lại.
  $ws.Name = 'Sổ'
  Cot $ws @(4, 8, 16, 9, 5, 16, 11, 12, 13, 6, 9, 12, 10, 9, 11, 10, 9, 14)
  DauPhieu $ws 'SỔ QUẢN LÝ LAO ĐỘNG' 'A1:K2' @('Nơi lập sổ', 'Năm') @('N1:O1', 'N2:O2') @('P1:R1', 'P2:R2') @('☐ Trụ sở  ☐ CN1  ☐ CN2', '20......')
  Cao $ws 1 20; Cao $ws 2 20
  Nhan $ws 'A3:C3' 'Người lập, giữ sổ (chức danh)'; Dien $ws 'D3:H3'; Nhan $ws 'I3:K3' 'Ngày lập sổ'; Dien $ws 'L3:R3' '....../....../20......'; Cao $ws 3 21
  O $ws 'A4:R4' 'Ghi từ ngày người lao động bắt đầu làm việc (NĐ 145/2020 Đ.3). Mỗi người một dòng; thay đổi (lương, chức danh, HĐ, kỷ luật, tai nạn lao động, đào tạo) ghi ở sheet "Diễn biến". Sổ có dữ liệu cá nhân: chỉ Giám đốc, người phụ trách nhân sự, kế toán mở; không đưa vào AI.' 8 $false $true; Cao $ws 4 26
  $td = @('TT', 'Mã nhân sự', 'Họ tên', 'Ngày sinh', 'Giới tính', 'Nơi cư trú', 'Số định danh cá nhân', 'Trình độ chuyên môn, kỹ năng nghề', 'Vị trí việc làm', 'Xưởng', 'Loại HĐLĐ (XĐ…th / KXĐ)', 'Thử việc: ☐ NS-19 riêng ☐ trong HĐLĐ ☐ không · từ–đến ngày', 'Ngày HĐLĐ chính thức có hiệu lực', 'Ngày bắt đầu làm việc', 'Mã số BHXH · ngày đăng ký', 'Tiền lương theo HĐ', 'Ngày chấm dứt HĐLĐ', 'Lý do chấm dứt')
  for ($j = 0; $j -lt $td.Count; $j++) { $ws.Cells.Item(5, $j + 1).Value2 = $td[$j] }
  TieuDeBang $ws 'A5:R5'; Cao $ws 5 44
  for ($r = 6; $r -le 45; $r++) { $ws.Cells.Item($r, 1).Value2 = [double]($r - 5); Cao $ws $r 22 }
  $v = $ws.Range('A6:R45'); $v.Font.Size = 9; $v.Font.Color = $XANH; $v.VerticalAlignment = -4108; $ws.Range('A6:A45').HorizontalAlignment = -4108
  Ke $ws 'A6:R45'
  O $ws 'A46:R46' $GHI_THU 8 $false $true; Cao $ws 46 14
  Trang $ws '$A$1:$R$46' 2 '$5:$5'
  # Sheet Diễn biến
  $ws = SheetMoi 'Diễn biến'
  Cot $ws @(4, 11, 10, 22, 50, 22, 14)
  DauPhieu $ws 'SỔ QUẢN LÝ LAO ĐỘNG – DIỄN BIẾN' 'A1:E2' @('Năm') @('F1') @('G1') @('20......')
  Cao $ws 1 20; Cao $ws 2 20
  O $ws 'A3:G3' 'Loại: nâng bậc, nâng lương · đổi chức danh, điều chuyển CN1 ↔ CN2 · ký, đổi HĐLĐ, phụ lục · nghỉ hằng năm, nghỉ không lương (tổng năm) · làm thêm giờ (tổng năm) · học nghề, đào tạo · kỷ luật, trách nhiệm vật chất · tai nạn lao động, bệnh nghề nghiệp.' 8 $false $true; Cao $ws 3 26
  $td = @('TT', 'Ngày', 'Mã nhân sự', 'Loại thay đổi', 'Nội dung', 'Căn cứ (số QĐ, phụ lục, biên bản)', 'Người ghi')
  for ($j = 0; $j -lt $td.Count; $j++) { $ws.Cells.Item(4, $j + 1).Value2 = $td[$j] }
  TieuDeBang $ws 'A4:G4'; Cao $ws 4 30
  for ($r = 5; $r -le 34; $r++) { $ws.Cells.Item($r, 1).Value2 = [double]($r - 4); Cao $ws $r 22 }
  $v = $ws.Range('A5:G34'); $v.Font.Size = 9; $v.Font.Color = $XANH; $v.VerticalAlignment = -4108; $ws.Range('A5:A34').HorizontalAlignment = -4108
  Ke $ws 'A5:G34'
  O $ws 'A35:G35' $GHI_THU 8 $false $true; Cao $ws 35 14
  Trang $ws '$A$1:$G$35' 2 '$4:$4'
  $ws = SheetMoi 'Hướng dẫn'
  HuongDan $ws @('Hướng dẫn: NS-13 Sổ quản lý lao động', $GHI_THU,
    'Căn cứ', 'BLLĐ 2019 Đ.12; NĐ 145/2020/NĐ-CP Đ.3 (lập sổ giấy hoặc điện tử tại trụ sở, chi nhánh; ghi từ ngày bắt đầu làm việc; xuất trình khi cơ quan yêu cầu). Cột lấy theo bộ hồ sơ hợp đồng lao động; đối chiếu nguyên văn Đ.3 trước khi dùng. Hai cột thử việc: ghi thử việc bằng hợp đồng thử việc riêng (NS-19), thử việc trong HĐLĐ hoặc không thử việc; BHXH tính từ ngày HĐLĐ chính thức có hiệu lực.',
    'Ai ghi', 'Người phụ trách nhân sự (hoặc kế toán được giao): QT-04 B4 khi người mới vào; QT-04 B9 khi thay đổi; QT-05 B8 khi nghỉ.',
    'Bảo mật', 'Sổ chứa số định danh, lương: chỉ Giám đốc, người phụ trách nhân sự, kế toán mở; không đưa vào AI (quy tắc chung 9).',
    'Liên quan', 'Báo cáo tình hình thay đổi lao động (trước 05/6, 05/12) lấy số từ sổ này. Mã nhân sự NV-nnnn.')
}
else { throw "Mau khong ho tro: $Mau" }

  $wb.Worksheets.Item(1).Activate()
  if (Test-Path -LiteralPath $Out) { Remove-Item -LiteralPath $Out }
  $wb.SaveAs($Out, 51)
  "XLSX=$Out"
}
} catch { "LOI dong $($_.InvocationInfo.ScriptLineNumber): $($_.InvocationInfo.Line.Trim()) :: $($_.Exception.Message)"; $loi = $true }
finally {
  if ($wb) { try { $wb.Close($false) } catch {} }
  try { $xl.Quit() } catch {}
  [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($xl); $xl = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
  Start-Sleep -Seconds 2
  if ($pidXl -gt 0 -and (Get-Process -Id $pidXl -ErrorAction SilentlyContinue)) { Stop-Process -Id $pidXl -Force; "EXCEL $pidXl (cua script nay) da dong bang Stop-Process" } else { "EXCEL $pidXl da thoat" }
}
if ($loi) { exit 1 }
