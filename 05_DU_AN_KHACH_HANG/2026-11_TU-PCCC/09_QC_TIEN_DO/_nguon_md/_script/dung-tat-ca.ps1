# Dựng .docx + .pdf cho bộ hồ sơ tủ PCCC từ .md nguồn bằng script chung 09_CONG_CU\dung-docx-iso.ps1 (khung KHUNG-TAI-LIEU-VKG).
# TRƯỚC KHI CHẠY: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md (HT-017).
# Dùng: powershell -File dung-tat-ca.ps1 [-Loc 'PCCC-F05*']   (-Loc: chỉ dựng file .md khớp mẫu tên)
param([string]$Loc = 'PCCC-*')
$ErrorActionPreference = 'Continue'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$src = Split-Path -Parent $here
$out = Split-Path -Parent $src
$goc = (Resolve-Path (Join-Path $out '..\..\..')).Path
$tool = Join-Path $goc '09_CONG_CU\dung-docx-iso.ps1'
$log = Join-Path $here 'dung-tat-ca.log'
"== $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') bat dau, loc $Loc" | Out-File -LiteralPath $log -Encoding utf8 -Append
foreach ($f in (Get-ChildItem -LiteralPath $src -Filter "$Loc.md" | Sort-Object Name)) {
  $ma = ($f.BaseName -split '_')[0]
  $pb = if ($f.BaseName -match '_v(\d+\.\d+)$') { $matches[1] } else { '0.1' }
  $docx = Join-Path $out ($f.BaseName + '.docx')
  $r = & powershell -NoProfile -ExecutionPolicy Bypass -File $tool -Md $f.FullName -Out $docx -Ma $ma -PhienBan $pb -MaNgay 'NHAP' -Loai TaiLieu 2>&1 | Out-String
  $dong = "$(Get-Date -Format 'HH:mm:ss') $($f.BaseName): " + (($r -split "`r?`n" | Where-Object { $_ -match 'TRANG=|TIEN-TRINH-SOT|rror|Exception|throw|At ' }) -join ' | ')
  $dong | Out-File -LiteralPath $log -Encoding utf8 -Append
  $dong
}
"== $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') xong" | Out-File -LiteralPath $log -Encoding utf8 -Append
