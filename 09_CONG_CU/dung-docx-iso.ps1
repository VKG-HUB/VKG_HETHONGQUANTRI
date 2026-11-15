# Dựng .docx + .pdf từ bản nháp .md trên khung chung kiểu BM (HT-012 → HT-016). Script dùng chung cho NS, BM, ISO.
# TRƯỚC KHI CHẠY: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md (HT-017) – một lúc chỉ một phiên chạy Word/Excel tự động.
# Dùng: powershell -File dung-docx-iso.ps1 -Md <file.md> -Out <file.docx> -Ma <mã> -PhienBan <X.Y>
#         [-MaNgay NHAP|26L23] [-Loai TaiLieu|HopDong|VanBanCoSo] [-So <số chứng từ>] [-Khung <file.dotx>]
#   -MaNgay : ngày công bố áp dụng YY + chữ tháng (A–M, bỏ I) + DD; bản nháp chưa duyệt để NHAP (HT-014).
#   -Loai TaiLieu    : ST, QT, HD – chân trang (a): mã.mã ngày · phiên bản · Trang x/y; tên căn trái; không quốc hiệu.
#   -Loai HopDong    : hợp đồng lao động, hợp đồng kinh tế, phụ lục – chân trang (b) QĐ-122: mã.mã ngày · Số · Trang x/y;
#                      CÓ quốc hiệu + gạch ngắn (HT-016); tên, số căn giữa.
#   -Loai VanBanCoSo : quyết định, quy chế, nội quy có số hiệu – chân trang (b) như hợp đồng; KHÔNG quốc hiệu (HT-016); tên, số căn giữa.
#   -So : số chứng từ. Dòng "Số: [số]" trong .md thành ô điền liên kết với chân trang (điền một chỗ); -So gán vào nút dữ liệu chung.
# .md hỗ trợ: # tên tài liệu, ## tiêu đề mục, bảng | |, gạch đầu dòng -, đoạn thường, **đậm**, `mã` (bỏ dấu `).
#   Bảng đầu tiên của ST/QT/HD là khung đầu (không tô); các bảng sau tô nhạt dòng đầu, lặp khi sang trang. Máy cần font Saira (HT-015).
# Đóng Word: Close([ref]0); giải phóng COM mọi range, bảng, doc, app; sau Quit đợi tới 20 giây, Word do script mở còn sống
#   thì in TIEN-TRINH-SOT=<mã> (ghi vào KHOA-OFFICE.md), KHÔNG tự tắt (theo mẫu dung-docx-hr00b.ps1 của HR-00b, 14/11/2026).
# Sửa 15/11/2026 (ISO-02, theo HR-00 qua HTQT-00): mọi hàng bảng không bị chia đôi qua trang (AllowBreakAcrossPages = 0); hàng đầu các bảng (trừ khung đầu ST/QT/HD) vẫn lặp ở trang sau. Hàng cao hơn một trang vẫn phải chia.
param(
  [Parameter(Mandatory)][string]$Md,
  [Parameter(Mandatory)][string]$Out,
  [Parameter(Mandatory)][string]$Ma,
  [Parameter(Mandatory)][string]$PhienBan,
  [string]$MaNgay = 'NHAP',
  [ValidateSet('TaiLieu', 'HopDong', 'VanBanCoSo')][string]$Loai = 'TaiLieu',
  [string]$So,
  [string]$Khung
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $Khung) {
  $Khung = Join-Path $here $(switch ($Loai) { 'TaiLieu' { 'KHUNG-TAI-LIEU-VKG_v0.3.dotx' } 'HopDong' { 'KHUNG-HOP-DONG-VKG_v0.4.dotx' } 'VanBanCoSo' { 'KHUNG-VAN-BAN-CO-SO-VKG_v0.1.dotx' } })
}
if (-not (Test-Path -LiteralPath $Khung)) { throw "Không thấy khung: $Khung (dựng bằng dung-khung-dotx.ps1 -Loai $Loai)" }
$coSo = $Loai -ne 'TaiLieu'
$NSK = 'urn:vkg:khung'
$INK = 6041098; $LIGHT = 16248808
$lines = Get-Content -LiteralPath $Md -Encoding UTF8
function Tha($o) { if ($null -ne $o) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch { } } }

$truoc = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object { $_.Id })
$w = New-Object -ComObject Word.Application
$pidWord = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truoc -notcontains $_.Id } | ForEach-Object { $_.Id })
$w.Visible = $false; $w.DisplayAlerts = 0
$doc = $null; $part = $null
try {
  $doc = $w.Documents.Add($Khung)
  $ps = $doc.PageSetup
  $rong = [double]($ps.PageWidth - $ps.LeftMargin - $ps.RightMargin); Tha $ps
  $ct = $doc.Content; [void]$ct.Delete(); $ct.Style = 'VKG Thân'; Tha $ct
  $soBang = 0

  function Them-Doan([string]$text, [string]$style) {
    $c = $doc.Content; $e = $c.End - 1; Tha $c
    $r = $doc.Range($e, $e)
    $r.InsertAfter($text); $r.Style = $style
    # Đoạn chữ ngay sau bảng: cách bảng 6 pt (sửa 14/11/2026, trước đây dính sát bảng)
    if ($script:sauBang -and ($style -eq 'VKG Thân' -or $style -eq 'VKG Đầu dòng')) { $pf = $r.ParagraphFormat; if ($pf.SpaceBefore -lt 6) { $pf.SpaceBefore = 6 }; Tha $pf }
    $script:sauBang = $false
    $r.InsertParagraphAfter(); Tha $r
  }
  # Khối ``` (sơ đồ vẽ bằng ký tự khung): font Consolas đều chiều rộng, cỡ chữ tự tính để dòng dài nhất vừa khổ (thêm 14/11/2026, ST-03)
  function Them-Ma($dong) {
    $max = 10; foreach ($d in $dong) { $max = [Math]::Max($max, $d.Length) }
    $co = [Math]::Floor([Math]::Min(9.0, $rong / ($max * 0.56)) * 2) / 2
    $c = $doc.Content; $bd = $c.End - 1; Tha $c
    foreach ($d in $dong) { $tx = if ($d.Trim() -eq '') { [string][char]0xA0 } else { $d }; Them-Doan $tx 'VKG Thân' }
    $c = $doc.Content; $r = $doc.Range($bd, $c.End - 1); Tha $c
    $f = $r.Font; $f.Name = 'Consolas'; $f.Size = $co; $f.Bold = 0; Tha $f
    $pf = $r.ParagraphFormat; $pf.SpaceBefore = 0; $pf.SpaceAfter = 0; $pf.LineSpacingRule = 4; $pf.LineSpacing = $co * 1.2
    $pf.LeftIndent = 0; $pf.FirstLineIndent = 0; $pf.KeepWithNext = -1; Tha $pf; Tha $r
  }
  if ($coSo) { $parts = $doc.CustomXMLParts.SelectByNamespace($NSK); $part = $parts.Item(1); Tha $parts }
  if ($Loai -eq 'HopDong') {
    Them-Doan 'CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM' 'VKG Quốc hiệu'
    Them-Doan 'Độc lập – Tự do – Hạnh phúc' 'VKG Quốc hiệu'
    Them-Doan '' 'VKG Gạch quốc hiệu'
  }
  $kieuTen = if ($coSo) { 'VKG Tên hợp đồng' } else { 'VKG Tên tài liệu' }

  function Them-Bang($rows) {
    $nr = $rows.Count; $nc = $rows[0].Count
    $c = $doc.Content; $e = $c.End - 1; Tha $c
    $r = $doc.Range($e, $e)
    $t = $doc.Tables.Add($r, $nr, $nc); Tha $r
    $t.AllowAutoFit = $false; $tr = $t.Range; $tr.Style = 'VKG Bảng'
    for ($i = 0; $i -lt $nr; $i++) { for ($j = 0; $j -lt $nc; $j++) {
      $v = if ($j -lt $rows[$i].Count) { $rows[$i][$j] } else { '' }
      $cell = $t.Cell($i + 1, $j + 1); $cr = $cell.Range; $cr.Text = $v; Tha $cr; Tha $cell } }
    # Rộng cột theo chữ dài nhất mỗi cột (10–60 ký tự); tối thiểu đủ chỗ cho từ dài nhất (không ngắt giữa từ, ví dụ 12/11/2026) và ≥ 40 pt
    $do = @(); $tu = @(); for ($j = 0; $j -lt $nc; $j++) {
      $m = 10; $mt = 4; foreach ($row in $rows) { if ($j -lt $row.Count) {
        $txt = ($row[$j] -replace '\*\*|`', '')
        $m = [Math]::Max($m, [Math]::Min(60, $txt.Length))
        # Từ viết hoa liền 3 chữ trở lên (ví dụ [CẦN XÁC NHẬN]) rộng hơn chữ thường ~30%: tính nặng hơn để không bẻ "]" xuống dòng (sửa 15/11/2026, ST-06)
        foreach ($wd in ($txt -split '\s+')) { if ($wd.Length -le 14) { $wl = if ($wd -cmatch '\p{Lu}{3}') { [Math]::Ceiling($wd.Length * 1.3) } else { $wd.Length }; $mt = [Math]::Max($mt, $wl) } } } }
      $do += $m; $tu += $mt }
    $tong = 0; foreach ($x in $do) { $tong += $x }
    # Sửa 14/11/2026 (ST-05 9 cột): phần vượt khổ trước đây trừ hết vào 1 cột -> cột đó còn ~1 ký tự.
    # Nay: chia phần vượt theo tỷ lệ phần dư (rộng - tối thiểu) của mọi cột; tối thiểu cộng lại vẫn vượt khổ thì thu nhỏ đều.
    $rw = New-Object 'double[]' $nc; $mn = New-Object 'double[]' $nc
    for ($j = 0; $j -lt $nc; $j++) { $mn[$j] = [Math]::Max(40.0, $tu[$j] * 5.6 + 12); $rw[$j] = [Math]::Max($mn[$j], $rong * $do[$j] / $tong) }
    $sum = 0.0; $smn = 0.0; for ($j = 0; $j -lt $nc; $j++) { $sum += $rw[$j]; $smn += $mn[$j] }
    if ($smn -ge $rong) { for ($j = 0; $j -lt $nc; $j++) { $rw[$j] = $rong * $mn[$j] / $smn } }
    else { $du = $sum - $smn; $thua = $sum - $rong
      for ($j = 0; $j -lt $nc; $j++) { if ($du -gt 0) { $rw[$j] -= $thua * ($rw[$j] - $mn[$j]) / $du } } }
    $cols = $t.Columns
    for ($j = 0; $j -lt $nc; $j++) { $col = $cols.Item($j + 1); $col.Width = [single]$rw[$j]; Tha $col }
    Tha $cols
    $bd = $t.Borders; $bd.Enable = 1; $bd.InsideColor = $INK; $bd.OutsideColor = $INK; Tha $bd
    $t.TopPadding = 1; $t.BottomPadding = 1
    $rowsAll = $t.Rows; $rowsAll.AllowBreakAcrossPages = 0; Tha $rowsAll   # không chia hàng bảng qua trang (HR-00, 15/11/2026)
    $script:soBang++
    if ($script:soBang -gt 1 -or $coSo) {
      $rows1 = $t.Rows; $r1 = $rows1.Item(1); $r1r = $r1.Range
      $r1r.Style = 'VKG Đầu bảng'; $sh = $r1.Shading; $sh.BackgroundPatternColor = $LIGHT; $r1.HeadingFormat = -1
      Tha $sh; Tha $r1r; Tha $r1; Tha $rows1
    } else { $f0 = $tr.Font; $f0.Size = 10; Tha $f0 }
    Tha $tr; Tha $t
    $c = $doc.Content; $c.InsertParagraphAfter(); Tha $c
    $script:sauBang = $true
  }

  $bang = @(); $code = $false; $maDong = @(); $script:sauBang = $false
  foreach ($ln in $lines + @('')) {
    $s = $ln.TrimEnd()
    if ($s -match '^```') { if ($code) { Them-Ma $maDong; $maDong = @(); $code = $false } else { if ($bang.Count -gt 0) { Them-Bang $bang; $bang = @() }; $code = $true }; continue }
    if ($code) { $maDong += $s; continue }
    if ($s -match '^\|') {
      if ($s -match '^\|[\s\-:|]+\|$') { continue }
      $bang += ,@($s.Trim('|').Split('|') | ForEach-Object { $_.Trim() })
      continue
    }
    if ($bang.Count -gt 0) { Them-Bang $bang; $bang = @() }
    if ($s -eq '') { continue }
    if ($s -match '^#\s+(.*)$') { Them-Doan $matches[1] $kieuTen; continue }   # # = tên tài liệu (HT-015); văn bản có số căn giữa
    if ($coSo -and $s -match '^Số:\s*\[số\]\s*$') { Them-Doan 'Số: §' 'VKG Số hợp đồng'; continue }
    if ($s -match '^#{2,3}\s+(.*)$') { Them-Doan $matches[1] 'VKG Mục'; continue }
    if ($s -match '^-\s+(.*)$') { Them-Doan ([string][char]0x2022 + ' ' + $matches[1]) 'VKG Đầu dòng'; continue }
    # > trích dẫn: bỏ dấu >, lùi vào 14 pt (thêm 14/11/2026, ST-01 câu phạm vi)
    if ($s -match '^>\s?(.*)$') { $c = $doc.Content; $bd = $c.End - 1; Tha $c; Them-Doan $matches[1] 'VKG Thân'; $r = $doc.Range($bd, $bd + 1); $pf = $r.ParagraphFormat; $pf.LeftIndent = 14; Tha $pf; Tha $r; continue }
    Them-Doan $s 'VKG Thân'
  }

  # Bỏ đoạn trống thừa (sau bảng); giữ đoạn có viền dưới (gạch ngắn dưới quốc hiệu, HT-016)
  $pars = $doc.Paragraphs
  for ($k = $pars.Count; $k -ge 1; $k--) {
    $p = $pars.Item($k); $pr = $p.Range; $pb = $p.Borders; $pbb = $pb.Item(-3)
    if ($pr.Text -eq "`r" -and -not $pr.Information(12) -and $pbb.LineStyle -eq 0) {
      if ($k -lt $pars.Count) { [void]$pr.Delete() } else { $pf = $pr.Font; $pf.Size = 1; Tha $pf; $p.SpaceAfter = 0; $p.SpaceBefore = 0; $p.LineSpacingRule = 4; $p.LineSpacing = 1 }
    }
    Tha $pbb; Tha $pb; Tha $pr; Tha $p
  }
  Tha $pars

  # Đoạn chữ ngay sau mỗi bảng: cách bảng 6 pt (sửa lần 2, 14/11/2026: đặt sau khi bỏ đoạn trống, vì cách đặt lúc chèn không có tác dụng)
  $tbs = $doc.Tables
  for ($k = 1; $k -le $tbs.Count; $k++) {
    $tb = $tbs.Item($k); $tr2 = $tb.Range; $fin = $tr2.End; Tha $tr2
    $rr = $doc.Range($fin, $fin); $pp = $rr.Paragraphs.Item(1); $ppr = $pp.Range
    if (-not $ppr.Information(12) -and $ppr.Text -ne "`r") { $pp.SpaceBefore = 6 }
    Tha $ppr; Tha $pp; Tha $rr; Tha $tb
  }
  Tha $tbs

  # **đậm** và bỏ dấu `
  $c = $doc.Content; $f = $c.Find; $f.ClearFormatting(); $rp = $f.Replacement; $rp.ClearFormatting()
  [void]$f.Execute('`', $false, $false, $false, $false, $false, $true, 1, $false, '', 2); Tha $rp; Tha $f; Tha $c
  $c = $doc.Content; $f = $c.Find; $f.ClearFormatting(); $rp = $f.Replacement; $rp.ClearFormatting(); $rf = $rp.Font; $rf.Bold = $true
  [void]$f.Execute('\*\*(*)\*\*', $false, $false, $true, $false, $false, $true, 1, $true, '\1', 2); Tha $rf; Tha $rp; Tha $f; Tha $c

  # Chân trang: điền mã + mã ngày; (a) phiên bản; (b) ô Số liên kết sẵn trong khung
  $secs = $doc.Sections; $sec = $secs.Item(1); $fts = $sec.Footers; $ft = $fts.Item(1)
  $fr = $ft.Range; $ff = $fr.Find
  [void]$ff.Execute('[mã].[mã ngày]', $false, $false, $false, $false, $false, $true, 0, $false, "$Ma.$MaNgay", 2); Tha $ff; Tha $fr
  if (-not $coSo) {
    $fr = $ft.Range; $ff = $fr.Find
    [void]$ff.Execute('v[phiên bản]', $false, $false, $false, $false, $false, $true, 0, $false, "v$PhienBan", 2); Tha $ff; Tha $fr
  } else {
    # Ô "Số" trong thân: liên kết cùng nút dữ liệu với ô ở chân trang – điền một chỗ
    $sr = $doc.Content; $sf = $sr.Find
    if ($sf.Execute('§')) {
      $sr.Text = ''
      $ccs = $doc.ContentControls; $cc = $ccs.Add(1, $sr); $cc.Title = 'Số chứng từ'; $cc.Tag = 'SoChungTu'
      $xm = $cc.XMLMapping; [void]$xm.SetMapping('/v:vkg[1]/v:so[1]', "xmlns:v='$NSK'", $part); Tha $xm; Tha $cc; Tha $ccs
    }
    Tha $sf; Tha $sr
    if ($So) { $node = $part.SelectSingleNode("/*[local-name()='vkg']/*[local-name()='so']"); $node.Text = $So; Tha $node }
  }
  Tha $ft; Tha $fts; Tha $sec; Tha $secs
  $fl = $doc.Fields; [void]$fl.Update(); Tha $fl

  $doc.Repaginate()
  $trang = $doc.ComputeStatistics(2)
  $doc.SaveAs2($Out, 16)
  $pdf = [IO.Path]::ChangeExtension($Out, '.pdf')
  $doc.SaveAs2($pdf, 17)
  $doc.Close([ref]0); Tha $doc; $doc = $null
  "TRANG=$trang"; "DOCX=$Out"; "PDF=$pdf"
}
finally {
  # Thoát sạch, không để Word chạy ngầm giữ khóa file (lỗi đã gặp 14/11/2026)
  Tha $part
  if ($doc) { try { $doc.Close([ref]0) } catch { }; Tha $doc; $doc = $null }
  try { $nt = $w.NormalTemplate; $nt.Saved = $true; Tha $nt } catch { }
  $w.Quit([ref]0); Tha $w; $w = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
foreach ($id in $pidWord) {
  $pp = Get-Process -Id $id -ErrorAction SilentlyContinue
  if ($pp) { [void]$pp.WaitForExit(20000); if (-not $pp.HasExited) { "TIEN-TRINH-SOT=WINWORD $id (ghi vào KHOA-OFFICE.md mục Tiến trình sót, không tự tắt)" } }
}
