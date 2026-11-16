# quet-san-pham.ps1 - quét ổ đĩa lấy danh sách sản phẩm HTQT cho tab "Sản phẩm" của bảng Điều hành HTQT.
# Chạy:  powershell -NoProfile -ExecutionPolicy Bypass -File quet-san-pham.ps1
# Không ghi gì vào thư mục sản phẩm. Chỉ ghi vào 00_DIEU_PHOI_CHUNG\_BANG\san_pham\ (chunk JSON, _hash.json, _changed.txt, _tom-tat.json).
# Không đọc nội dung file, chỉ tên, ngày sửa, đường dẫn. Loại trừ: _KHONG-CHO-AI-DOC, THONG TIN NHAN SU BHXH, HO_SO_THAT, .git, ~$*, lưu trữ.
# Trạng thái tự nhận được: "Phát hành" (nằm trong thư mục phát hành), "Đã duyệt" (mã có trong mục 3c bảng điều khiển), "Đã viết" (còn lại).
# CHƯA tự nhận "Đã kiểm" (không có dấu hiệu máy đọc được ổn định).
param([int]$ChunkSize = 40)
$ErrorActionPreference = 'Stop'
$enc = New-Object System.Text.UTF8Encoding($false)
$base = Split-Path -Parent $PSScriptRoot
$chung = Join-Path $base '00_DIEU_PHOI_CHUNG'
$out = Join-Path $chung '_BANG\san_pham'
New-Item -ItemType Directory -Force -Path $out | Out-Null
$web = 'C:\Users\VINH\OneDrive\VKG\WEBSITE DN\03-THIET-KE\THUONG-HIEU\AN-PHAM'
$roots = @(
  @{ nhom='NS';  path=(Join-Path $base 'VKG_HR OFFICER') },
  @{ nhom='ISO'; path=(Join-Path $base 'ISO_9001') },
  @{ nhom='ISO'; path='D:\VKG_TECHNICAL\VIỆT KHOA\_VKG_SANG_LOC_CLAUDE\11_ISO_9001' },
  @{ nhom='BM';  path=(Join-Path $base '02_BIEU_MAU') },
  @{ nhom='BM';  path=$web },
  @{ nhom='Chung'; path=$chung },
  @{ nhom='Chung'; path=(Join-Path $base '04_HO_SO_CONG_TY') }
)
$skipDir = '_KHONG-CHO-AI-DOC|THONG TIN NHAN SU BHXH|HO_SO_THAT|\\\.git(\\|$)|\\_BANG(\\|$)|BAO_CAO_NHANH|BAO_CAO_NGAY|\\node_modules(\\|$)'
$archDir = '99_LUU_TRU|_BAN_CU|03-NGUNG-DUNG|\\BACKUP(\\|$)|99_LUU'
$ext = '.docx','.pdf','.xlsx','.xlsm','.xltm','.md'

# mã có trong danh mục chung
$dm = Join-Path $chung 'DANH-MUC-TAI-LIEU-CHUNG.md'
$codeRx = '\b([A-Z]{2,3}-\d{1,3}[A-Z]?)\b'
$inDm = @{}
if (Test-Path -LiteralPath $dm) { foreach ($m in [regex]::Matches([IO.File]::ReadAllText($dm), $codeRx)) { $inDm[$m.Groups[1].Value] = $true } }
# mã đã duyệt (mục 3c)
$approved = @{}
$bd = Join-Path $chung 'BANG-DIEU-KHIEN-HTQT.md'
if (Test-Path -LiteralPath $bd) {
  $on = $false
  foreach ($line in [IO.File]::ReadAllLines($bd)) {
    if ($line -match '^## 3c\.') { $on = $true; continue }
    if ($on -and $line -match '^## ') { break }
    if ($on -and $line.StartsWith('|') -and $line -notmatch '^\|[-\s|]+$' -and $line -notmatch 'Ngày duyệt') {
      $cells = $line.Split('|')
      $muc = if ($cells.Count -gt 3) { $cells[3].Trim() } else { '' }
      foreach ($m in [regex]::Matches($cells[2], $codeRx)) { $approved[$m.Groups[1].Value] = $muc }
    }
  }
}

$rows = @{}
$luuTru = 0
foreach ($r in $roots) {
  if (-not (Test-Path -LiteralPath $r.path)) { continue }
  $rp = (Resolve-Path -LiteralPath $r.path).Path
  $ndisk = if ($rp.StartsWith('D:')) { 'D' } else { 'OneDrive' }
  Get-ChildItem -LiteralPath $rp -Recurse -File -ErrorAction SilentlyContinue | ForEach-Object {
    $f = $_
    if ($f.Name.StartsWith('~$')) { return }
    if ($ext -notcontains $f.Extension.ToLower()) { return }
    $full = $f.FullName
    if ($full -match $skipDir) { return }
    if ($full -match $archDir) { $script:luuTru++; return }
    $rel = $full.Substring($rp.Length).TrimStart('\')
    $parts = $rel.Split('\')
    $nhanh = if ($parts.Count -gt 1) { $parts[0] } else { '' }
    $stem = [IO.Path]::GetFileNameWithoutExtension($f.Name)
    $ver = ''; $vkey = 0.0
    if ($stem -match '_v(\d+)(?:\.(\d+))?') { $ver = 'v' + $Matches[1] + $(if ($Matches[2]) { '.' + $Matches[2] } else { '' }); $vkey = [double]($Matches[1] + '.' + $(if ($Matches[2]) { $Matches[2].PadLeft(3,'0') } else { '000' })) }
    $name = ($stem -replace '_v\d+(\.\d+)*', '' -replace '_NHAP$', '')
    $code = ''
    if ($stem -match '^([A-Z]{2,3}-\d{1,3}[A-Z]?)') { $code = $Matches[1] }
    elseif ($stem -match '^(?:[A-Za-z]+\d*_)?([A-Z]{2,3}-\d{1,3}[A-Z]?)') { $code = $Matches[1] }
    $key = $r.nhom + '|' + $nhanh + '|' + $name.ToLower()
    $item = [pscustomobject]@{ f = $f; ver = $ver; vkey = $vkey; ext = $f.Extension.ToLower().TrimStart('.'); full = $full; disk = $ndisk }
    if (-not $rows.ContainsKey($key)) { $rows[$key] = @{ nhom = $r.nhom; nhanh = $nhanh; name = $name; code = $code; items = New-Object System.Collections.ArrayList } }
    [void]$rows[$key].items.Add($item)
  }
}

$pref = 'docx','xlsm','xltm','xlsx','pdf','md'
$list = New-Object System.Collections.ArrayList
foreach ($k in $rows.Keys) {
  $g = $rows[$k]
  $maxv = ($g.items | Measure-Object -Property vkey -Maximum).Maximum
  $latest = @($g.items | Where-Object { $_.vkey -eq $maxv })
  $exts = @($latest | ForEach-Object { $_.ext } | Sort-Object -Unique)
  $primary = $null
  foreach ($p in $pref) { $primary = $latest | Where-Object { $_.ext -eq $p } | Select-Object -First 1; if ($primary) { break } }
  $mt = ($latest | ForEach-Object { $_.f.LastWriteTime } | Measure-Object -Maximum).Maximum
  $code = $g.code
  $ten = $g.name
  $tt = 'Đã viết'; $muc = ''
  if ($primary.full -match '10_PHAT_HANH|01-DANG-DUNG') { $tt = 'Phát hành' }
  elseif ($code -and $approved.ContainsKey($code)) {
    $muc = ($approved[$code] -split ';')[0].Trim(); if ($muc.Length -gt 70) { $muc = $muc.Substring(0, 70) + '…' }
    $tt = if ($muc -match '^Phát hành') { 'Phát hành' } else { 'Đã duyệt' }
  }
  $vd = [string](($latest | Select-Object -First 1).ver)
  [void]$list.Add([ordered]@{
    ma = $code; ten = $ten; nhom = $g.nhom; nhanh = $g.nhanh
    loai = ($exts -join ', '); trang_thai = $tt; muc_duyet = $muc
    ngay_sua = $mt.ToString('yyyy-MM-dd HH:mm'); phien_ban = $vd; so_ban = $g.items.Count
    duong_dan = $primary.full; o_dia = $primary.disk
    co_pdf = ($exts -contains 'pdf'); trong_dm = [bool]($code -and $inDm.ContainsKey($code))
  })
}
$sorted = $list | Sort-Object @{e={$_.nhom}}, @{e={$_.nhanh}}, @{e={$_.ten}}

# chia chunk theo nhóm
$hashFile = Join-Path $out '_hash.json'
$old = @{}
if (Test-Path -LiteralPath $hashFile) { $o = Get-Content -LiteralPath $hashFile -Raw | ConvertFrom-Json; $o.PSObject.Properties | ForEach-Object { $old[$_.Name] = $_.Value } }
$new = [ordered]@{}; $changed = New-Object System.Collections.ArrayList; $files = New-Object System.Collections.ArrayList
foreach ($grp in ($sorted | Group-Object { $_['nhom'] })) {
  $arr = @($grp.Group); $n = 0
  for ($i = 0; $i -lt $arr.Count; $i += $ChunkSize) {
    $n++
    $id = ($grp.Name.ToLower() + $n.ToString('00'))
    $slice = @($arr[$i..([Math]::Min($i + $ChunkSize, $arr.Count) - 1)])
    $json = ($slice | ConvertTo-Json -Depth 5 -Compress)
    $sha = [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash($enc.GetBytes($json))).Replace('-', '')
    $new[$id] = $sha
    $doc = '{"nhom":"' + $grp.Name + '","stt":' + $n + ',"so_dong":' + $slice.Count + ',"h":"' + $sha + '","rows":' + $json + '}'
    if ($slice.Count -eq 1) { $doc = '{"nhom":"' + $grp.Name + '","stt":' + $n + ',"so_dong":1,"h":"' + $sha + '","rows":[' + $json + ']}' }
    [IO.File]::WriteAllText((Join-Path $out ($id + '.json')), $doc, $enc)
    [void]$files.Add($id)
    if (-not $old.ContainsKey($id) -or $old[$id] -ne $sha) { [void]$changed.Add($id) }
  }
}
# chunk cũ không còn
$gone = @($old.Keys | Where-Object { -not $new.Contains($_) })
foreach ($g2 in $gone) { Remove-Item -LiteralPath (Join-Path $out ($g2 + '.json')) -ErrorAction SilentlyContinue }
[IO.File]::WriteAllText((Join-Path $out '_changed.txt'), (($changed -join "`r`n") + "`r`n"), $enc)
[IO.File]::WriteAllText((Join-Path $out '_gone.txt'), (($gone -join "`r`n") + "`r`n"), $enc)
$tom = [ordered]@{
  luc = (Get-Date).ToString('yyyy-MM-dd HH:mm'); tong = $list.Count; luu_tru_bo_qua = $luuTru
  chua_vao_dm = @($list | Where-Object { -not $_['trong_dm'] }).Count
  theo_nhom = @($sorted | Group-Object { $_['nhom'] } | ForEach-Object { @{ nhom = $_.Name; so = $_.Count } })
  chunk = $files.Count; chunk_doi = $changed.Count
}
[IO.File]::WriteAllText((Join-Path $out '_tom-tat.json'), ($tom | ConvertTo-Json -Depth 4), $enc)
# hash CHỈ ghi sau khi đã đẩy lên bảng: script chỉ ghi _hash_moi.json; việc đẩy xong thì đổi tên thành _hash.json (xem SKILL tác vụ)
[IO.File]::WriteAllText((Join-Path $out '_hash_moi.json'), ($new | ConvertTo-Json), $enc)
"Tổng $($list.Count) sản phẩm; chunk $($files.Count), đổi $($changed.Count), bỏ lưu trữ $luuTru; chưa vào danh mục $($tom.chua_vao_dm)"
