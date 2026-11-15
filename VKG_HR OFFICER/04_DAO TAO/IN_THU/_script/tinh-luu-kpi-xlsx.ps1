# Mở bảng tính KPI-SX bằng Excel, tính lại, LƯU (để ô công thức có sẵn kết quả khi mở bằng trình xem), rồi kiểm: đếm ô lỗi, thử X-05 (R4-18). HT-017: giữ khóa trước khi chạy.
# Phần thử nhập số giả làm SAU khi đã lưu và đóng KHÔNG lưu, nên không làm bẩn file.
param([Parameter(Mandatory)][string]$Xlsx)
$ErrorActionPreference = 'Stop'
$xl = $null; $wb = $null; $cx = $null; $nt = $null; $ws = $null
try {
  $xl = New-Object -ComObject Excel.Application
  $xl.Visible = $false; $xl.DisplayAlerts = $false
  $wb = $xl.Workbooks.Open($Xlsx)
  $xl.CalculateFull()
  $loi = 0
  foreach ($ws in $wb.Worksheets) { foreach ($c in $ws.UsedRange.Cells) { if ($c.HasFormula -and ($c.Text -like '#*')) { $loi++; "LOI $($ws.Name)!$($c.Address(0,0)) => $($c.Text)" } } }
  "So o loi: $loi"
  $wb.Save()
  "DA LUU sau khi tinh lai"
  $cx = $wb.Worksheets.Item('ChamXuong'); $nt = $wb.Worksheets.Item('NhapTuan')
  "Du lieu mau: X-05 KQ=$($cx.Range('F9').Text) cham=$($cx.Range('I9').Text) diem=$($cx.Range('K9').Text) | tong tt: $($cx.Range('H13').Text)"
  # thu (không lưu): trống cả tháng -> chưa chấm
  foreach ($a in 'J5', 'J6', 'J7', 'J8', 'J9') { $nt.Range($a).ClearContents() | Out-Null }
  $xl.CalculateFull()
  "J5:J9 trong: X-05 cham=$($cx.Range('I9').Text) diem=$($cx.Range('K9').Text) (can 0 va Chua cham)"
  foreach ($a in 'J5', 'J6', 'J7', 'J8') { $nt.Range($a).Value2 = [double]0 }
  $xl.CalculateFull()
  "J5:J8 = 0: X-05 cham=$($cx.Range('I9').Text) diem=$($cx.Range('K9').Text) (can 1 va 100)"
  $nt.Range('J5').Value2 = [double]1; $xl.CalculateFull()
  "J5 = 1: X-05 diem=$($cx.Range('K9').Text) (can 0)"
} finally {
  if ($wb) { try { $wb.Close($false) } catch {} }
  if ($xl) { try { $xl.Quit() } catch {} }
  foreach ($o in @($ws, $nt, $cx, $wb, $xl)) { if ($o -ne $null -and [Runtime.InteropServices.Marshal]::IsComObject($o)) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch {} } }
  $ws = $null; $nt = $null; $cx = $null; $wb = $null; $xl = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
