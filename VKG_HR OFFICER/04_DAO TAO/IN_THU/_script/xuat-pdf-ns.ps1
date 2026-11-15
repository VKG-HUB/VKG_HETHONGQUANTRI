# Xuất PDF bản trắng từ .xltm (mở bản mới từ mẫu, bật macro, ẩn sheet Hướng dẫn, không lưu lại mẫu)
# HT-017: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md trước khi chạy; script đóng Excel sạch ở finally.
param([Parameter(Mandatory)][string]$Mau, [Parameter(Mandatory)][string]$Pdf)
$ErrorActionPreference = 'Stop'
$xl = $null; $wb = $null; $sh = $null; $nm = $null
try {
  $xl = New-Object -ComObject Excel.Application
  $xl.Visible = $false; $xl.DisplayAlerts = $false; $xl.AutomationSecurity = 1
  $wb = $xl.Workbooks.Add($Mau)
  foreach ($sh in $wb.Worksheets) { if ($sh.Name -eq 'Hướng dẫn') { $sh.Visible = 0 } }
  $wb.Worksheets.Item(1).Activate()
  $wb.ExportAsFixedFormat(0, $Pdf)
  "PDF=$Pdf"
  $nm = $wb.Names.Item('VKG_MACRO')
  "MACRO=" + $nm.RefersToRange.Value2
} finally {
  # Đóng sạch (HT-017): đóng bản mới không lưu, thoát Excel, giải phóng COM
  if ($wb) { try { $wb.Close($false) } catch {} }
  if ($xl) { try { $xl.Quit() } catch {} }
  foreach ($o in @($nm, $sh, $wb, $xl)) {
    if ($o -ne $null -and [Runtime.InteropServices.Marshal]::IsComObject($o)) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch {} }
  }
  $nm = $null; $sh = $null; $wb = $null; $xl = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
