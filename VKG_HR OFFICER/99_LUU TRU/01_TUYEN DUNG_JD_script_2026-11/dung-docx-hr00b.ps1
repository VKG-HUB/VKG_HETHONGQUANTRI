# BAN SAO CUA HR-00b (14/11/2026) tu dung-docx-iso.ps1 cua ISO-02 (khong sua file goc). Them dong sach Word theo yeu cau HTQT-00 (HT-017):
# Close([ref]0); FinalReleaseComObject cho doc, bang, range, app; ghi PID Word, sau Quit doi toi 20 giay, con song thi bao TIEN-TRINH-SOT (khong tu tat).
# -Khung truyen duong dan day du toi KHUNG-*.dotx cua ISO-02.
# Dựng .docx + .pdf cho ST, QT, HD từ bản nháp .md, trên khung chung KHUNG-TAI-LIEU-VKG (HT-013, HT-014).
# Header QĐ-120 và chân trang nằm sẵn trong khung; script chỉ điền mã, mã ngày, phiên bản và dựng thân.
# TRƯỚC KHI CHẠY: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md (HT-017) – một lúc chỉ một phiên chạy Word/Excel tự động.
# Dùng: powershell -File dung-docx-iso.ps1 -Md <file.md> -Out <file.docx> -Ma QT-01 -PhienBan 0.4 [-MaNgay NHAP|26L23]
#   -MaNgay: ngày công bố áp dụng dạng YY + chữ tháng (A–M, bỏ I) + DD; bản nháp chưa duyệt để NHAP (HT-014).
# Hỗ trợ trong .md: # tên tài liệu (Saira ExtraBold, dòng riêng dưới thanh xanh đỏ), ## tiêu đề mục, bảng | |,
#   gạch đầu dòng -, đoạn thường, **đậm**, `mã` (bỏ dấu `). Máy cần cài font Saira (HT-015).
# Bảng đầu tiên là khung đầu (không tô dòng đầu); các bảng sau tô nhạt, đậm dòng tiêu đề, lặp khi sang trang.
param(
  [Parameter(Mandatory)][string]$Md,
  [Parameter(Mandatory)][string]$Out,
  [Parameter(Mandatory)][string]$Ma,
  [Parameter(Mandatory)][string]$PhienBan,
  [string]$MaNgay = 'NHAP',
  [ValidateSet('TaiLieu', 'HopDong')][string]$Loai = 'TaiLieu',
  [string]$So,
  [string]$Khung
)
$ErrorActionPreference = 'Stop'
# -Loai TaiLieu: khung chân trang (a), giữa là phiên bản.
# -Loai HopDong: khung (b), giữa là "Số: <số chứng từ>" (QĐ-122). Thân tự có quốc hiệu + gạch ngắn (HT-016); tên căn giữa;
#   dòng "Số: [số]" trong .md thành ô điền liên kết với chân trang (điền một chỗ). -So gán số vào nút dữ liệu chung; để trống thì giữ gạch chấm.
if (-not $Khung) { $Khung = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) $(if ($Loai -eq 'TaiLieu') { 'KHUNG-TAI-LIEU-VKG_v0.3.dotx' } else { 'KHUNG-HOP-DONG-VKG_v0.4.dotx' }) }
$NSK = 'urn:vkg:khung'
$INK = 6041098; $LIGHT = 16248808
$lines = Get-Content -LiteralPath $Md -Encoding UTF8

$truoc = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object { $_.Id })
$w = New-Object -ComObject Word.Application
$pidWord = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truoc -notcontains $_.Id } | ForEach-Object { $_.Id })
$doc = $null
$w.Visible = $false; $w.DisplayAlerts = 0
try {
  $doc = $w.Documents.Add($Khung)
  $ps = $doc.PageSetup
  $rong = [double]($ps.PageWidth - $ps.LeftMargin - $ps.RightMargin)
  $doc.Content.Delete() | Out-Null
  $doc.Content.Style = 'VKG Thân'
  $soBang = 0

  function Them-Doan([string]$text, [string]$style) {
    $e = $doc.Content.End - 1; $r = $doc.Range($e, $e)
    $r.InsertAfter($text); $r.Style = $style; $r.InsertParagraphAfter(); [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($r)
  }
  $part = $null
  if ($Loai -eq 'HopDong') {
    $part = $doc.CustomXMLParts.SelectByNamespace($NSK).Item(1)
    Them-Doan 'CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM' 'VKG Quốc hiệu'
    Them-Doan 'Độc lập – Tự do – Hạnh phúc' 'VKG Quốc hiệu'
    Them-Doan '' 'VKG Gạch quốc hiệu'
  }
  $kieuTen = if ($Loai -eq 'HopDong') { 'VKG Tên hợp đồng' } else { 'VKG Tên tài liệu' }

  function Them-Bang($rows) {
    $nr = $rows.Count; $nc = $rows[0].Count
    $e = $doc.Content.End - 1
    $t = $doc.Tables.Add($doc.Range($e, $e), $nr, $nc)
    $t.AllowAutoFit = $false; $t.Range.Style = 'VKG Bảng'
    for ($i = 0; $i -lt $nr; $i++) { for ($j = 0; $j -lt $nc; $j++) {
      $v = if ($j -lt $rows[$i].Count) { $rows[$i][$j] } else { '' }
      $t.Cell($i + 1, $j + 1).Range.Text = $v } }
    # Rộng cột theo chữ dài nhất mỗi cột (10–60 ký tự), tối thiểu 40 pt, tổng đúng bề rộng trang
    # Tối thiểu mỗi cột: đủ chỗ cho từ dài nhất trong cột (không ngắt giữa từ, ví dụ ngày 12/11/2026)
    $do = @(); $tu = @(); for ($j = 0; $j -lt $nc; $j++) {
      $m = 10; $mt = 4; foreach ($row in $rows) { if ($j -lt $row.Count) {
        $txt = ($row[$j] -replace '\*\*|`', '')
        $m = [Math]::Max($m, [Math]::Min(60, $txt.Length))
        foreach ($wd in ($txt -split '\s+')) { if ($wd.Length -le 14) { $mt = [Math]::Max($mt, $wd.Length) } } } }
      $do += $m; $tu += $mt }
    $tong = 0; foreach ($x in $do) { $tong += $x }
    $rw = New-Object 'double[]' $nc; $lon = 0
    for ($j = 0; $j -lt $nc; $j++) { $rw[$j] = [Math]::Max([Math]::Max(40.0, $tu[$j] * 5.6 + 12), $rong * $do[$j] / $tong); if ($rw[$j] -gt $rw[$lon]) { $lon = $j } }
    $sum = 0.0; foreach ($x in $rw) { $sum += $x }; $rw[$lon] -= ($sum - $rong)
    for ($j = 0; $j -lt $nc; $j++) { $t.Columns.Item($j + 1).Width = [single]$rw[$j] }
    $t.Borders.Enable = 1; $t.Borders.InsideColor = $INK; $t.Borders.OutsideColor = $INK
    $t.TopPadding = 1; $t.BottomPadding = 1
    $script:soBang++
    if ($script:soBang -gt 1) {
      $t.Rows.Item(1).Range.Style = 'VKG Đầu bảng'; $t.Rows.Item(1).Shading.BackgroundPatternColor = $LIGHT; $t.Rows.Item(1).HeadingFormat = -1
    } else { $t.Range.Font.Size = 10 }
    $doc.Content.InsertParagraphAfter()
    [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($t)
  }

  $bang = @()
  foreach ($ln in $lines + @('')) {
    $s = $ln.TrimEnd()
    if ($s -match '^\|') {
      if ($s -match '^\|[\s\-:|]+\|$') { continue }
      $bang += ,@($s.Trim('|').Split('|') | ForEach-Object { $_.Trim() })
      continue
    }
    if ($bang.Count -gt 0) { Them-Bang $bang; $bang = @() }
    if ($s -eq '') { continue }
    if ($s -match '^#\s+(.*)$') { Them-Doan $matches[1] $kieuTen; continue }   # # = tên tài liệu (HT-015); hợp đồng căn giữa
    if ($Loai -eq 'HopDong' -and $s -match '^Số:\s*\[số\]\s*$') { Them-Doan 'Số: §' 'VKG Số hợp đồng'; continue }
    if ($s -match '^#{2,3}\s+(.*)$') { Them-Doan $matches[1] 'VKG Mục'; continue }
    if ($s -match '^-\s+(.*)$') { Them-Doan ([string][char]0x2022 + ' ' + $matches[1]) 'VKG Đầu dòng'; continue }
    Them-Doan $s 'VKG Thân'
  }
  # Bỏ đoạn trống thừa (đoạn trống ngay sau bảng)
  for ($k = $doc.Paragraphs.Count; $k -ge 1; $k--) {
    $p = $doc.Paragraphs.Item($k)
    if ($p.Range.Text -eq "`r" -and -not $p.Range.Information(12)) {
      if ($k -lt $doc.Paragraphs.Count) { $p.Range.Delete() | Out-Null } else { $p.Range.Font.Size = 1; $p.SpaceAfter = 0; $p.SpaceBefore = 0; $p.LineSpacingRule = 4; $p.LineSpacing = 1 }
    }
  }

  # **đậm** và bỏ dấu `
  $f = $doc.Content.Find; $f.ClearFormatting(); $f.Replacement.ClearFormatting()
  $f.Execute('`', $false, $false, $false, $false, $false, $true, 1, $false, '', 2) | Out-Null
  $f = $doc.Content.Find; $f.ClearFormatting(); $f.Replacement.ClearFormatting(); $f.Replacement.Font.Bold = $true
  $f.Execute('\*\*(*)\*\*', $false, $false, $true, $false, $false, $true, 1, $true, '\1', 2) | Out-Null

  # Chân trang: điền mã + mã ngày, phiên bản
  $fr = $doc.Sections.Item(1).Footers.Item(1).Range
  $fr.Find.Execute('[mã].[mã ngày]', $false, $false, $false, $false, $false, $true, 0, $false, "$Ma.$MaNgay", 2) | Out-Null
  $fr = $doc.Sections.Item(1).Footers.Item(1).Range
  if ($Loai -eq 'TaiLieu') { $fr.Find.Execute('v[phiên bản]', $false, $false, $false, $false, $false, $true, 0, $false, "v$PhienBan", 2) | Out-Null }
  else {
    # Ô "Số" trong thân: liên kết cùng nút dữ liệu với ô ở chân trang (khung v0.4) – điền một chỗ
    $sr = $doc.Content
    if ($sr.Find.Execute('§')) {
      $sr.Text = ''
      $cc = $doc.ContentControls.Add(1, $sr); $cc.Title = 'Số hợp đồng'; $cc.Tag = 'SoChungTu'
      [void]$cc.XMLMapping.SetMapping('/v:vkg[1]/v:so[1]', "xmlns:v='$NSK'", $part)
    }
    if ($So) { $part.SelectSingleNode("/*[local-name()='vkg']/*[local-name()='so']").Text = $So }
  }
  $doc.Fields.Update() | Out-Null

  $doc.Repaginate()
  $trang = $doc.ComputeStatistics(2)
  $doc.SaveAs2($Out, 16)
  $pdf = [IO.Path]::ChangeExtension($Out, '.pdf')
  $doc.SaveAs2($pdf, 17)
  $doc.Close([ref]0); [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($doc); $doc = $null
  "TRANG=$trang"; "DOCX=$Out"; "PDF=$pdf"
}
finally {
  # Thoát sạch, không để Word chạy ngầm giữ khoá file (lỗi đã gặp 14/11/2026)
  if ($doc) { try { $doc.Close([ref]0) } catch { }; try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($doc) } catch { }; $doc = $null }
  try { $w.NormalTemplate.Saved = $true } catch { }
  $w.Quit([ref]0); [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($w); [GC]::Collect(); [GC]::WaitForPendingFinalizers()
}
# Kiem Word da thoat (khong tat tien trinh, chi bao)
foreach ($id in $pidWord) { $p = Get-Process -Id $id -ErrorAction SilentlyContinue; if ($p) { [void]$p.WaitForExit(20000); if (-not $p.HasExited) { "TIEN-TRINH-SOT=WINWORD $id (ghi vao KHOA-OFFICE.md, khong tu tat)" } } }


