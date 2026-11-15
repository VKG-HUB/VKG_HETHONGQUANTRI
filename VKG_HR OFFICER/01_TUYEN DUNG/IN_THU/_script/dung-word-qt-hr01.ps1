param([string[]]$Ma = @('QT-02', 'QT-03', 'QT-04', 'QT-05'))
$ErrorActionPreference = 'Continue'
$HR = 'C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\VKG_HR OFFICER'
$ISO = 'C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\09_CONG_CU\dung-docx-iso.ps1'
$SP = Join-Path $env:TEMP 'vkg-hr01-kiem-trang'
New-Item -ItemType Directory -Force $SP | Out-Null
$truocW = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object Id)
$qt = @(
  @('QT-02', "$HR\01_TUYEN DUNG\QT-02_Tuyen-dung_v0.3.md", '0.3'),
  @('QT-03', "$HR\01_TUYEN DUNG\QT-03_Hoi-nhap-nguoi-moi_v0.2.md", '0.2'),
  @('QT-04', "$HR\02_HO SO NHAN SU\QT-04_Tiep-nhan-nhan-su_v0.3.md", '0.3'),
  @('QT-05', "$HR\02_HO SO NHAN SU\QT-05_Nghi-viec_v0.2.md", '0.2')
)
foreach ($q in $qt) {
  if ($Ma -notcontains $q[0]) { continue }
  $t = Get-Content -LiteralPath $q[1] -Encoding UTF8; $o = @(); foreach ($l in $t) { if ($l -match '^## Phần làm việc nội bộ') { break }; $o += $l }
  $tam = "$SP\$($q[0])_in.md"; $o | Set-Content -LiteralPath $tam -Encoding UTF8
  "== $($q[0]) docx"; powershell -NoProfile -ExecutionPolicy Bypass -File $ISO -Md $tam -Out ([IO.Path]::ChangeExtension($q[1], '.docx')) -Ma $q[0] -PhienBan $q[2] -Loai TaiLieu 2>&1 | Select-String 'TRANG|measurement|Exception'
}
Start-Sleep 2
$moiW = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truocW -notcontains $_.Id }); "Word moi con lai: $($moiW.Count) $($moiW.Id -join ',')"
