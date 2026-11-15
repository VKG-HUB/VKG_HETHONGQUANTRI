# Kiểm công thức bảng tính KPI-SX: mở bằng Excel, tính lại, đếm ô lỗi, nhập thử số giả (KHÔNG lưu), in điểm. HT-017: giữ khóa trước khi chạy.
param([Parameter(Mandatory)][string]$Xlsx)
$ErrorActionPreference = 'Stop'
$xl = $null; $wb = $null; $cx = $null; $th = $null; $ws = $null
try {
  $xl = New-Object -ComObject Excel.Application
  $xl.Visible = $false; $xl.DisplayAlerts = $false
  $wb = $xl.Workbooks.Open($Xlsx, 0, $true)
  $xl.CalculateFull()
  $loi = 0
  foreach ($ws in $wb.Worksheets) { foreach ($c in $ws.UsedRange.Cells) { if ($c.HasFormula -and ($c.Text -like '#*')) { $loi++; "LOI $($ws.Name)!$($c.Address(0,0)) => $($c.Text)" } } }
  "So o loi: $loi"
  $cx = $wb.Worksheets.Item('ChamXuong')
  "X-05 truoc khi nhap: KQ=$($cx.Range('F9').Text) cham=$($cx.Range('I9').Text) diem=$($cx.Range('K9').Text)"
  # nhap thu (file mo chi doc, khong luu): TNLĐ = 0 va 1
  $th = $wb.Worksheets.Item('NhapTuan'); $th.Range('J5').Value2 = [double]0; $th.Range('J6').Value2 = [double]0; $th.Range('J7').Value2 = [double]0; $th.Range('J8').Value2 = [double]0; $th.Range('K5').Value2 = [double]3; $xl.CalculateFull()
  "TNLD=0, su co khong bi thuong=3: X-05 diem=$($cx.Range('K9').Text) (can 100); X-P3=$($cx.Range('F17').Text)"
  $th.Range('J5').Value2 = [double]1; $xl.CalculateFull()
  "TNLD=1: X-05 diem=$($cx.Range('K9').Text) (can 0)"
  "Kiem tong ty trong: $($cx.Range('H13').Text)"
} finally {
  if ($wb) { try { $wb.Close($false) } catch {} }
  if ($xl) { try { $xl.Quit() } catch {} }
  foreach ($o in @($ws, $th, $cx, $wb, $xl)) { if ($o -ne $null -and [Runtime.InteropServices.Marshal]::IsComObject($o)) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch {} } }
  $ws = $null; $th = $null; $cx = $null; $wb = $null; $xl = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
