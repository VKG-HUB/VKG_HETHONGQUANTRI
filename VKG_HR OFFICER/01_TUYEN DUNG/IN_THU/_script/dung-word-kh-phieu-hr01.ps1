$ErrorActionPreference = 'Continue'
$HR = 'C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\VKG_HR OFFICER'
$ISO = 'C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\09_CONG_CU\dung-docx-iso.ps1'
$MAC = 'C:\Users\VINH\OneDrive\VKG\KHO-TRI-THUC-VKG\01-CLAUDE-SKILLS\vkg-bm-lap-bieu-mau\scripts\mau-macro\ap-chuan-macro.ps1'
$SCR = "$HR\01_TUYEN DUNG\IN_THU\_script\dung-ns-hr01.ps1"
$SP = Join-Path $env:TEMP 'vkg-hr01-kiem-trang'
New-Item -ItemType Directory -Force $SP | Out-Null
$truocX = @(Get-Process EXCEL -ErrorAction SilentlyContinue | ForEach-Object Id)
$truocW = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object Id)
# ---- kế hoạch tuyển dụng
$src = "$HR\01_TUYEN DUNG\01_KE HOACH TUYEN DUNG\G8_KeHoachTuyenDung_den-31-12-2026_v0.2.md"
$t = Get-Content -LiteralPath $src -Encoding UTF8
$i = [Array]::FindIndex($t, [Predicate[string]] { param($l) $l -like '**Căn cứ*' })
$cut = [Array]::FindIndex($t, [Predicate[string]] { param($l) $l -match '^## Phần làm việc nội bộ' }); if ($cut -lt 0) { $cut = $t.Count }
$dau = @('# KẾ HOẠCH TUYỂN DỤNG ĐẾN 31/12/2026', '', '| Mã: **không có mã riêng** (tài liệu kèm) | Phiên bản **v0.2 (nháp)** · Hiệu lực: — |', '|---|---|', '| Soạn: Nhóm nhân sự (dự thảo) · Kiểm: — · Duyệt: Giám đốc | ISO 9001 điều 7.1.2, 7.2, 5.3 · Nhóm chủ: NS |', '', '**BẢN NHÁP TRÌNH DUYỆT – CHƯA KÝ**')
($dau + ($t[$i..($cut - 1)] | Where-Object { $_ -ne '---' } | ForEach-Object { ($_ -replace '^>\s?', '') -replace '~~[^~]*~~\s*', '' })) | Set-Content -LiteralPath "$SP\G8_KHTD_in.md" -Encoding UTF8
"== KH docx"; powershell -NoProfile -ExecutionPolicy Bypass -File $ISO -Md "$SP\G8_KHTD_in.md" -Out ([IO.Path]::ChangeExtension($src, '.docx')) -Ma 'Kế hoạch tuyển dụng (gói G8, nháp)' -MaNgay ' ' -PhienBan 0.2 -Loai TaiLieu 2>&1 | Select-String 'TRANG|measurement|Exception'
# ---- 2 phiếu yêu cầu biểu mẫu
$pyc = @(
  @('G8P', "$HR\01_TUYEN DUNG\G8_PhieuYeuCauBieuMau_NS-10_NS-11_v0.2.md", 'PHIẾU YÊU CẦU BIỂU MẪU NS-10, NS-11', 'Phiếu yêu cầu dựng mẫu NS-10, NS-11 (không có mã riêng; tài liệu kèm)', 'Phiếu yêu cầu dựng mẫu NS-10, NS-11'),
  @('G9P', "$HR\02_HO SO NHAN SU\G9_PhieuYeuCauBieuMau_NS-07_NS-15_v0.2.md", 'PHIẾU YÊU CẦU BIỂU MẪU NS-07, NS-15, NS-16', 'Phiếu yêu cầu dựng mẫu NS-07, NS-15, NS-16 (không có mã riêng; tài liệu kèm)', 'Phiếu yêu cầu dựng mẫu NS-07, NS-15, NS-16')
)
foreach ($p in $pyc) {
  $t = Get-Content -LiteralPath $p[1] -Encoding UTF8
  $cut = [Array]::FindIndex($t, [Predicate[string]] { param($l) $l -match '^## Phần làm việc nội bộ' }); if ($cut -lt 0) { $cut = $t.Count }
  $dau = @("# $($p[2])", '', "| Mã: **$($p[3])** | Phiên bản **v0.2 (nháp)** · Hiệu lực: — |", '|---|---|', '| Soạn: Nhóm nhân sự (dự thảo) · Kiểm: — · Duyệt: Giám đốc | Gửi nhóm biểu mẫu · Nhóm chủ: NS |', '', '**BẢN NHÁP TRÌNH DUYỆT – CHƯA KÝ**')
  ($dau + ($t[1..($cut - 1)] | Where-Object { $_ -ne '---' } | ForEach-Object { $_ -replace '^>\s?', '' })) | Set-Content -LiteralPath "$SP\$($p[0])_in.md" -Encoding UTF8
  "== $($p[0]) docx"; powershell -NoProfile -ExecutionPolicy Bypass -File $ISO -Md "$SP\$($p[0])_in.md" -Out ([IO.Path]::ChangeExtension($p[1], '.docx')) -Ma $p[4] -MaNgay ' ' -PhienBan 0.2 -Loai TaiLieu 2>&1 | Select-String 'TRANG|measurement|Exception'
}
Start-Sleep 2
$moiW = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truocW -notcontains $_.Id }); "Word moi con lai: $($moiW.Count) $($moiW.Id -join ',')"
$moiX = @(Get-Process EXCEL -ErrorAction SilentlyContinue | Where-Object { $truocX -notcontains $_.Id }); "Excel moi con lai: $($moiX.Count) $($moiX.Id -join ',')"
