# Ban sao cua dung-docx-iso.ps1 (ISO-02) cho phien HR-04: them -Ngang (A4 ngang), dong <<NGAT-TRANG>>, dong trong cao de viet tay, khong xuat PDF neu -KhongPdf.
param(
  [Parameter(Mandatory)][string]$Md,
  [Parameter(Mandatory)][string]$Out,
  [Parameter(Mandatory)][string]$Ma,
  [Parameter(Mandatory)][string]$PhienBan,
  [string]$HieuLuc = '—',
  [switch]$Ngang,
  [switch]$KhongPdf,
  [int]$CaoDong = 18,
  [int]$TranCot = 48,
  [string]$AnhHeader = '',
  [string]$MaNgay = '',
  [string]$Logo = 'C:\Users\VINH\OneDrive\VKG\WEBSITE DN\03-THIET-KE\THUONG-HIEU\LOGO\FILE-CHINH-THUC\VKG_K0_mauA_BanGiao\03_A-C_PNG\2048px\B-he1\VKG_K0_B_he1_viet-khoa_group-ky-thuat-co-khi_color_2048.png'
)
$ErrorActionPreference = 'Stop'
$mau = 10 + 46*256 + 92*65536
$lines = Get-Content -LiteralPath $Md -Encoding UTF8
# HT-017: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md trước khi chạy; script đóng Word sạch ở finally.
$w = $null; $doc = $null; $ps = $null; $st = $null; $sel = $null; $hdr = $null; $shp = $null; $ft = $null; $r = $null; $f = $null
try {
  $w = New-Object -ComObject Word.Application
  $w.Visible = $false
  $w.DisplayAlerts = 0
  $doc = $w.Documents.Add()
  $ps = $doc.PageSetup
  if ($Ngang) { $ps.Orientation = 1; $ps.PageWidth = 841.9; $ps.PageHeight = 595.3 } else { $ps.PageWidth = 595.3; $ps.PageHeight = 841.9 }
  $ps.TopMargin = 36; $ps.BottomMargin = 36; $ps.LeftMargin = 36; $ps.RightMargin = 36
  $ps.FooterDistance = 18
  $st = $doc.Styles.Item(-1)
  $st.Font.Name = 'Arial'; $st.Font.Size = 10; $st.Font.Color = $mau
  $st.ParagraphFormat.SpaceAfter = 3; $st.ParagraphFormat.SpaceBefore = 0
  $st.ParagraphFormat.LineSpacingRule = 0
  $sel = $w.Selection
  $script:soBang = 0
  $script:caoDong = $CaoDong
  $script:tran = $TranCot
  $rong = $ps.PageWidth - $ps.LeftMargin - $ps.RightMargin
  if (-not (Test-Path -LiteralPath $Logo)) { Write-Warning "Khong thay logo: $Logo" }

  function Them-Bang($rows) {
    $nr = $rows.Count; $nc = 0; foreach ($rw in $rows) { if ($rw.Count -gt $nc) { $nc = $rw.Count } }
    if ($script:vuaBang) { $sel.Font.Size = 4; $sel.TypeParagraph(); $sel.Font.Size = 10 }
    $t = $doc.Tables.Add($sel.Range, $nr, $nc)
    $t.Borders.Enable = $true
    $t.Borders.OutsideColor = $mau; $t.Borders.InsideColor = $mau
    $t.Range.Font.Size = 9
    $t.Range.ParagraphFormat.SpaceAfter = 0
    $t.TopPadding = 1; $t.BottomPadding = 1
    for ($i = 0; $i -lt $nr; $i++) {
      $trong = $true; $coTrong = $false
      for ($j = 0; $j -lt $nc; $j++) {
        $v = if ($j -lt $rows[$i].Count) { $rows[$i][$j] } else { '' }
        if ($j -gt 0 -and $v -ne '') { $trong = $false }
        if ($j -gt 0 -and $v -eq '') { $coTrong = $true }
        $t.Cell($i + 1, $j + 1).Range.Text = $v
      }
      if ($i -gt 0 -and $trong -and $nc -gt 2) { $t.Rows.Item($i + 1).HeightRule = 1; $t.Rows.Item($i + 1).Height = $script:caoDong }
      elseif ($i -gt 0 -and $coTrong) { $t.Rows.Item($i + 1).HeightRule = 1; $t.Rows.Item($i + 1).Height = 16 }
    }
    $t.AllowAutoFit = $false
    $do = @(); for ($j = 0; $j -lt $nc; $j++) {
      $m = 9; foreach ($row in $rows) { if ($j -lt $row.Count) { $m = [Math]::Max($m, [Math]::Min($script:tran, ($row[$j] -replace '\*\*|`', '').Length)) } }
      $do += $m }
    $tong = ($do | Measure-Object -Sum).Sum
    for ($j = 0; $j -lt $nc; $j++) { $t.Columns.Item($j + 1).Width = $rong * $do[$j] / $tong }
    $script:soBang++
    if ($script:soBang -gt 1) { $t.Rows.Item(1).Range.Font.Bold = $true; $t.Rows.Item(1).HeadingFormat = $true }
    else {
      if ((-not $AnhHeader) -and (Test-Path -LiteralPath $Logo)) {
        $r = $t.Cell(1, 1).Range; $r.Collapse(1)
        $pic = $doc.InlineShapes.AddPicture($Logo, $false, $true, $r)
        $pic.LockAspectRatio = -1; $pic.Height = 26
        $r2 = $t.Cell(1, 1).Range; $r2.Collapse(1); $r2.Move(1, 1) | Out-Null; $r2.InsertAfter([string][char]11)
      }
      $t.Range.Font.Size = 9.5
    }
    $sel.EndKey(6) | Out-Null
    $script:vuaBang = $true
  }

  $bang = @()
  foreach ($ln in $lines + @('')) {
    $s = $ln.TrimEnd()
    if ($s -match '^\|') {
      if ($s -match '^\|[\s:|]*-[\s\-:|]*\|$') { continue }
      $cells = $s.Trim().Substring(1, $s.Trim().Length - 2).Split('|') | ForEach-Object { $_.Trim() }
      $bang += ,@($cells)
      continue
    }
    if ($bang.Count -gt 0) { Them-Bang $bang; $bang = @() }
    if ($s -eq '') { continue }
    $script:vuaBang = $false
    if ($s -eq '<<NGAT-TRANG>>') { $sel.InsertBreak(7); continue }
    if ($s -match '^>\s*(.*)$') { $s = $matches[1] }
    if ($s -match '^#{1,3}\s+(.*)$') {
      $sel.Font.Bold = $true; $sel.Font.Size = 11
      $sel.ParagraphFormat.SpaceBefore = 6
      $sel.TypeText($matches[1]); $sel.TypeParagraph()
      $sel.Font.Bold = $false; $sel.Font.Size = 10; $sel.ParagraphFormat.SpaceBefore = 0
      continue
    }
    if ($s -match '^-\s+(.*)$') {
      $sel.ParagraphFormat.LeftIndent = 12; $sel.ParagraphFormat.FirstLineIndent = -9
      $sel.TypeText([string][char]0x2022 + ' ' + $matches[1]); $sel.TypeParagraph()
      $sel.ParagraphFormat.LeftIndent = 0; $sel.ParagraphFormat.FirstLineIndent = 0
      continue
    }
    $sel.TypeText($s); $sel.TypeParagraph()
  }

  $f = $doc.Content.Find
  $f.ClearFormatting(); $f.Replacement.ClearFormatting()
  $f.Execute('`', $false, $false, $false, $false, $false, $true, 1, $false, '', 2) | Out-Null
  $f = $doc.Content.Find
  $f.ClearFormatting(); $f.Replacement.ClearFormatting(); $f.Replacement.Font.Bold = $true
  $f.Execute('\*\*(*)\*\*', $false, $false, $true, $false, $false, $true, 1, $true, '\1', 2) | Out-Null

  if ($AnhHeader) {
    # Header QĐ-120: ảnh header nhóm BM ở mọi trang; lề trên đủ chỗ cho ảnh
    $ps.HeaderDistance = 20; $ps.TopMargin = 112
    Add-Type -AssemblyName System.Drawing
    $im = [Drawing.Image]::FromFile($AnhHeader); $caoAnh = [single]($rong * $im.Height / $im.Width); $im.Dispose()
    $hdr = $doc.Sections.Item(1).Headers.Item(1)
    $shp = $hdr.Shapes.AddPicture($AnhHeader, $false, $true, [single]0, [single]0, [single]$rong, $caoAnh, $hdr.Range)
    $shp.RelativeHorizontalPosition = 0; $shp.RelativeVerticalPosition = 1; $shp.Left = [single]$ps.LeftMargin; $shp.Top = [single]20
    $ps.TopMargin = [single](20 + $caoAnh + 14)
  }
  $ft = $doc.Sections.Item(1).Footers.Item(1).Range
  if ($MaNgay) { $ft.Text = "$MaNgay`tv$PhienBan`tTrang " }
  else { $ft.Text = "$Ma " + [char]0x00B7 + " v$PhienBan`tHi" + [char]0x1EC7 + "u l" + [char]0x1EF1 + "c $HieuLuc`tTrang " }
  $ft.Font.Size = 8; $ft.Font.Name = 'Arial'; $ft.Font.Color = $mau
  $ft.ParagraphFormat.TabStops.ClearAll()
  $ft.ParagraphFormat.TabStops.Add($rong / 2, 1) | Out-Null
  $ft.ParagraphFormat.TabStops.Add($rong, 2) | Out-Null
  $r = $doc.Sections.Item(1).Footers.Item(1).Range; $r.MoveEnd(1, -1) | Out-Null; $r.Collapse(0)
  $doc.Fields.Add($r, 33) | Out-Null
  $r = $doc.Sections.Item(1).Footers.Item(1).Range; $r.MoveEnd(1, -1) | Out-Null; $r.Collapse(0); $r.InsertAfter('/')
  $r = $doc.Sections.Item(1).Footers.Item(1).Range; $r.MoveEnd(1, -1) | Out-Null; $r.Collapse(0)
  $doc.Fields.Add($r, 26) | Out-Null
  $doc.Fields.Update() | Out-Null

  $doc.Repaginate()
  $trang = $doc.ComputeStatistics(2)
  $doc.SaveAs2($Out, 16)
  if (-not $KhongPdf) { $pdf = [IO.Path]::ChangeExtension($Out, '.pdf'); $doc.SaveAs2($pdf, 17); "PDF=$pdf" }
  $doc.Close([ref]0); [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($doc); $doc = $null
  "TRANG=$trang"
  "DOCX=$Out"
}
finally {
  # Đóng sạch (HT-017): văn bản chưa đóng thì đóng không lưu; không để Word hỏi lưu Normal.dotm
  if ($doc) { try { $doc.Close([ref]0) } catch {} }
  if ($w) {
    try { $w.NormalTemplate.Saved = $true } catch {}
    try { $w.Quit([ref]0) } catch {}
  }
  foreach ($o in @($r, $ft, $shp, $hdr, $sel, $st, $ps, $f, $doc, $w)) {
    if ($o -ne $null -and [Runtime.InteropServices.Marshal]::IsComObject($o)) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch {} }
  }
  $r = $null; $ft = $null; $shp = $null; $hdr = $null; $sel = $null; $st = $null; $ps = $null; $f = $null; $doc = $null; $w = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
