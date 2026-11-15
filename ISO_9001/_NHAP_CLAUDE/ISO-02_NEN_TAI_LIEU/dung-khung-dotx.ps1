# Dựng khung Word chung (.dotx) theo phong cách nhóm BM (HT-012 → HT-015).
#   -Loai TaiLieu : ST, QT, HD – chân trang (a): trái mã.mã ngày · giữa phiên bản · phải Trang x/y (HT-014)
#   -Loai HopDong : hợp đồng lao động, hợp đồng kinh tế, phụ lục (NS-01 → 03, DH-02) – chân trang (b) đúng QĐ-122: giữa là ô số chứng từ; CÓ quốc hiệu
#   -Loai VanBanCoSo : quyết định, quy chế, nội quy có số hiệu (VKG/HR/QĐ-…) – chân trang (b) như hợp đồng; KHÔNG quốc hiệu (HT-016)
# Đóng Word: Close([ref]0); giải phóng COM các đối tượng chính; GC; sau Quit đợi tới 20 giây, Word do script mở còn sống thì in
#   TIEN-TRINH-SOT=<mã> (ghi vào KHOA-OFFICE.md), KHÔNG tự tắt (theo mẫu dung-docx-hr00b.ps1 của HR-00b, 14/11/2026).
# Nền: cách làm của bản nháp DH-02 .dotx nhóm BM (chỉ đọc, không ghi vào thư mục BM).
# Header QĐ-120: ảnh do tao-anh-header.ps1 (skill vkg-bm-lap-bieu-mau) dựng, rộng 505 pt, lặp mọi trang.
# Chữ (HT-015): tên tài liệu Saira ExtraBold 17 pt một dòng riêng dưới thanh xanh đỏ; tiêu đề mục Saira đậm;
#   dòng đầu bảng Saira SemiBold; thân, bảng, chân trang Arial. MÁY CẦN CÀI FONT SAIRA.
# Dùng: powershell -File dung-khung-dotx.ps1 -Loai TaiLieu|HopDong|VanBanCoSo [-Out <khung.dotx>] [-Header <anh.png>]
# TRƯỚC KHI CHẠY: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md (HT-017) – một lúc chỉ một phiên chạy Word/Excel tự động.
param(
  [ValidateSet('TaiLieu', 'HopDong', 'VanBanCoSo')][string]$Loai = 'TaiLieu',
  [string]$Out,
  [string]$Header
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $Out) { $Out = Join-Path $here $(switch ($Loai) { 'TaiLieu' { 'KHUNG-TAI-LIEU-VKG_v0.3.dotx' } 'HopDong' { 'KHUNG-HOP-DONG-VKG_v0.4.dotx' } 'VanBanCoSo' { 'KHUNG-VAN-BAN-CO-SO-VKG_v0.1.dotx' } }) }
$coSo = $Loai -ne 'TaiLieu'
function Tha($o) { if ($null -ne $o) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch { } } }
if (-not $Header) { $Header = Join-Path $here '_tai-nguyen\header-QD120_rong505.png' }
$INK = 6041098; $LIGHT = 16248808   # #0A2E5C; nền rất nhạt như DH-02
Add-Type -AssemblyName System.Drawing
$coSaira = @((New-Object System.Drawing.Text.InstalledFontCollection).Families | Where-Object { $_.Name -in 'Saira', 'Saira ExtraBold', 'Saira SemiBold' }).Count -eq 3
if (-not $coSaira) { Write-Warning 'Máy chưa cài đủ font Saira (Saira, Saira ExtraBold, Saira SemiBold): Word sẽ thay font khác.' }
$g = [string][char]0x2026 * 6   # gạch chấm ô cần điền

$truoc = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object { $_.Id })
$wa = New-Object -ComObject Word.Application
$pidWord = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truoc -notcontains $_.Id } | ForEach-Object { $_.Id })
$wa.Visible = $false; $wa.DisplayAlerts = 0
$doc = $null; $part = $null
try {
  $doc = $wa.Documents.Add()
  $pg = $doc.PageSetup
  $pg.PaperSize = 7
  $pg.LeftMargin = 45; $pg.RightMargin = 45; $pg.TopMargin = 92; $pg.BottomMargin = 50
  $pg.HeaderDistance = 22; $pg.FooterDistance = 22
  $pg.DifferentFirstPageHeaderFooter = 0
  $TW = [single]($pg.PageWidth - 90)

  $nm = $doc.Styles.Item(-1)
  $nm.Font.Name = 'Arial'; $nm.Font.Size = 10.5; $nm.Font.Color = $INK; $nm.LanguageID = 1066
  $nm.ParagraphFormat.SpaceAfter = 3; $nm.ParagraphFormat.SpaceBefore = 0; $nm.ParagraphFormat.LineSpacingRule = 0
  function NewStyle($name, [string]$font, [double]$size, [bool]$bold, [double]$before, [double]$after, [bool]$keep = $false, [int]$align = 0) {
    $x = $doc.Styles.Add($name, 1); $x.BaseStyle = $nm
    $x.Font.Name = $font; $x.Font.Size = $size; $x.Font.Bold = [int]$bold; $x.Font.Color = $INK
    $x.ParagraphFormat.SpaceBefore = $before; $x.ParagraphFormat.SpaceAfter = $after; $x.ParagraphFormat.Alignment = $align
    if ($keep) { $x.ParagraphFormat.KeepWithNext = -1 }
  }
  NewStyle 'VKG Tên tài liệu' 'Saira ExtraBold' 17 $false 0 4 $true
  NewStyle 'VKG Mục' 'Saira' 11 $true 6 3 $true
  # Saira có độ cao dòng mặc định lớn (~1,6 lần cỡ chữ): đặt cách dòng cố định để không phình trang (thử QT-01 v0.5: 3 trang → 2 trang)
  foreach ($cd in @(@('VKG Tên tài liệu', 22), @('VKG Mục', 15))) { $x = $doc.Styles.Item($cd[0]); $x.ParagraphFormat.LineSpacingRule = 4; $x.ParagraphFormat.LineSpacing = $cd[1] }
  NewStyle 'VKG Thân' 'Arial' 10.5 $false 0 3
  NewStyle 'VKG Bảng' 'Arial' 9.5 $false 1 1
  NewStyle 'VKG Đầu bảng' 'Saira SemiBold' 9.5 $false 1 1
  $x = $doc.Styles.Item('VKG Đầu bảng'); $x.ParagraphFormat.LineSpacingRule = 4; $x.ParagraphFormat.LineSpacing = 12
  NewStyle 'VKG Nhỏ' 'Arial' 8 $false 0 0
  NewStyle 'VKG Quốc hiệu' 'Arial' 10.5 $true 0 0 $false 1
  # Kiểu riêng cho hợp đồng: tên, số căn giữa; gạch ngắn ~120 pt dưới quốc hiệu
  NewStyle 'VKG Tên hợp đồng' 'Saira ExtraBold' 17 $false 6 0 $true 1
  $x = $doc.Styles.Item('VKG Tên hợp đồng'); $x.ParagraphFormat.LineSpacingRule = 4; $x.ParagraphFormat.LineSpacing = 22
  NewStyle 'VKG Số hợp đồng' 'Arial' 10.5 $false 2 8 $false 1
  NewStyle 'VKG Gạch quốc hiệu' 'Arial' 2 $false 0 4 $false 1
  $x = $doc.Styles.Item('VKG Gạch quốc hiệu').ParagraphFormat
  $x.LeftIndent = [single](($TW - 120) / 2); $x.RightIndent = [single](($TW - 120) / 2)
  $bd = $x.Borders.Item(-3); $bd.LineStyle = 1; $bd.LineWidth = 6; $bd.Color = $INK
  $dd = $doc.Styles.Add('VKG Đầu dòng', 1); $dd.BaseStyle = 'VKG Thân'
  $dd.ParagraphFormat.LeftIndent = 12; $dd.ParagraphFormat.FirstLineIndent = -9

  # Header QĐ-120 (lặp mọi trang). Đặt cỡ ảnh ở thân rồi chép lên đầu trang (Word chạy ẩn đặt cỡ trong đầu trang bị lỗi – bài học DH-02)
  $p0 = $doc.InlineShapes.AddPicture($Header, $false, $true, $doc.Range(0, 0))
  $p0.LockAspectRatio = -1; $p0.Width = $TW
  $hr = $doc.Sections.Item(1).Headers.Item(1).Range
  $hr.FormattedText = $p0.Range.FormattedText
  $p0.Delete()
  $hr = $doc.Sections.Item(1).Headers.Item(1).Range
  $hr.ParagraphFormat.SpaceAfter = 0; $hr.ParagraphFormat.SpaceBefore = 0

  # Chân trang. (a) TaiLieu: [mã].[mã ngày] · v[phiên bản] · Trang x/y   (b) HopDong: [mã].[mã ngày] · Số: …… · Trang x/y
  # Số hợp đồng điền MỘT chỗ (góp ý BM 14/11): ô điền ở dòng "Số:" trong thân và ô ở chân trang cùng liên kết
  # tới một nút dữ liệu (CustomXML urn:vkg:khung /vkg/so) – sửa ô trong thân thì chân trang tự đổi. dung-docx-iso.ps1 -So gán vào nút này.
  $NSK = 'urn:vkg:khung'; $part = $null
  if ($coSo) { $part = $doc.CustomXMLParts.Add("<vkg xmlns=`"$NSK`"><so>$g$g</so></vkg>") }
  function GanSo($rng) {
    $cc = $doc.ContentControls.Add(1, $rng)   # ô chữ thường
    $cc.Title = 'Số hợp đồng'; $cc.Tag = 'SoChungTu'
    [void]$cc.XMLMapping.SetMapping('/v:vkg[1]/v:so[1]', "xmlns:v='$NSK'", $part)
  }
  $giua = if ($Loai -eq 'TaiLieu') { 'v[phiên bản]' } else { 'Số: §' }
  $ft = $doc.Sections.Item(1).Footers.Item(1)
  $rg = $ft.Range
  $rg.Text = "[mã].[mã ngày]`t$giua`tTrang "
  $rg.Style = 'VKG Nhỏ'
  $rg.ParagraphFormat.TabStops.ClearAll()
  [void]$rg.ParagraphFormat.TabStops.Add([single]($TW / 2), 1)
  [void]$rg.ParagraphFormat.TabStops.Add($TW, 2)
  $p1 = $ft.Range; $p1.SetRange($ft.Range.End - 1, $ft.Range.End - 1); [void]$ft.Range.Fields.Add($p1, 33)
  $p2 = $ft.Range; $p2.SetRange($ft.Range.End - 1, $ft.Range.End - 1); $p2.InsertAfter('/')
  $p3 = $ft.Range; $p3.SetRange($ft.Range.End - 1, $ft.Range.End - 1); [void]$ft.Range.Fields.Add($p3, 26)
  if ($coSo) { $fr = $ft.Range; if ($fr.Find.Execute('§')) { $fr.Text = ''; GanSo $fr }; Tha $fr }
  Tha $p1; Tha $p2; Tha $p3; Tha $rg; Tha $ft; Tha $hr; Tha $pg

  # Thân mẫu, ô cần điền là gạch chấm
  $doc.Content.Delete() | Out-Null
  $doc.Content.Style = 'VKG Thân'
  function P([string]$t, [string]$st) { $c = $doc.Content; $e = $c.End - 1; Tha $c; $r = $doc.Range($e, $e); $r.InsertAfter($t); $r.Style = $st; $r.InsertParagraphAfter(); Tha $r }
  function Bang($rows, [double[]]$wids, [bool]$dauBang) {
    $e = $doc.Content.End - 1
    $t = $doc.Tables.Add($doc.Range($e, $e), $rows.Count, $rows[0].Count)
    $t.AllowAutoFit = $false; $t.Range.Style = 'VKG Bảng'
    for ($j = 0; $j -lt $wids.Count; $j++) { $t.Columns.Item($j + 1).Width = [single]$wids[$j] }
    for ($i = 0; $i -lt $rows.Count; $i++) { for ($j = 0; $j -lt $rows[$i].Count; $j++) { $t.Cell($i + 1, $j + 1).Range.Text = [string]$rows[$i][$j] } }
    $t.Borders.Enable = 1; $t.Borders.InsideColor = $INK; $t.Borders.OutsideColor = $INK
    if ($dauBang) { $t.Rows.Item(1).Range.Style = 'VKG Đầu bảng'; $t.Rows.Item(1).Shading.BackgroundPatternColor = $LIGHT; $t.Rows.Item(1).HeadingFormat = -1 }
    Tha $t
    $c = $doc.Content; $c.InsertParagraphAfter(); Tha $c
  }
  if ($Loai -eq 'TaiLieu') {
    P "TÊN TÀI LIỆU $g" 'VKG Tên tài liệu'
    Bang @(@("Mã: $g", "Phiên bản v$g · Hiệu lực: $g"), @("Soạn: (chức danh) · Kiểm: (chức danh) · Duyệt: Giám đốc – (số quyết định)", "Điều ISO liên quan · Nhóm chủ")) @(($TW * 0.6), ($TW * 0.4)) $false
    P '1. Để làm gì, áp cho ai' 'VKG Mục'
    P $g 'VKG Thân'
    P 'Lịch sử' 'VKG Mục'
    Bang @(@('Phiên bản', 'Ngày', 'Nội dung', 'Duyệt'), @("v$g", $g, $g, $g)) @(60, 70, ($TW - 200), 70) $true
  } elseif ($Loai -eq 'VanBanCoSo') {
    # Văn bản có số không phải hợp đồng: KHÔNG quốc hiệu (HT-016); tên, số căn giữa
    P "TÊN VĂN BẢN $g" 'VKG Tên hợp đồng'
    P 'Số: §' 'VKG Số hợp đồng'
    $sr = $doc.Content; if ($sr.Find.Execute('§')) { $sr.Text = ''; GanSo $sr }; Tha $sr
    P "- Căn cứ $g" 'VKG Thân'
    P "Điều 1. $g" 'VKG Mục'
    P $g 'VKG Thân'
    P '(Chức danh người ký)' 'VKG Quốc hiệu'
    P '(Ký, ghi rõ họ tên, đóng dấu)' 'VKG Số hợp đồng'
    $np = $doc.Paragraphs; $cnt = $np.Count
    foreach ($k in @(($cnt - 2), ($cnt - 1))) { $pp = $np.Item($k); $pp.Alignment = 2; Tha $pp }; Tha $np
  } else {
    # Quốc hiệu chỉ ở hợp đồng (HT-016), gạch ngắn dưới; tên và số căn giữa cho cân (góp ý BM 14/11)
    P 'CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM' 'VKG Quốc hiệu'
    P 'Độc lập – Tự do – Hạnh phúc' 'VKG Quốc hiệu'
    P '' 'VKG Gạch quốc hiệu'
    P "HỢP ĐỒNG $g" 'VKG Tên hợp đồng'
    P 'Số: §' 'VKG Số hợp đồng'
    $sr = $doc.Content; if ($sr.Find.Execute('§')) { $sr.Text = ''; GanSo $sr }; Tha $sr
    P "- Căn cứ $g" 'VKG Thân'
    P "Hôm nay, ngày $g, tại $g, chúng tôi gồm:" 'VKG Thân'
    P "BÊN A: $g" 'VKG Mục'
    P "BÊN B: $g" 'VKG Mục'
    P "ĐIỀU 1. $g" 'VKG Mục'
    P $g 'VKG Thân'
    Bang @(@('ĐẠI DIỆN BÊN A', 'ĐẠI DIỆN BÊN B'), @('(Ký, ghi rõ họ tên, đóng dấu)', '(Ký, ghi rõ họ tên, đóng dấu)'), @('', '')) @(($TW / 2), ($TW / 2)) $true
    $ts = $doc.Tables.Item($doc.Tables.Count); $ts.Borders.Enable = 0; $ts.Range.ParagraphFormat.Alignment = 1
    $ts.Rows.Item(1).Shading.BackgroundPatternColor = -16777216; $ts.Rows.Item(3).HeightRule = 1; $ts.Rows.Item(3).Height = 72
  }

  $doc.SaveAs2($Out, 14)   # .dotx
  $doc.Close([ref]0); Tha $doc; $doc = $null
  "DOTX=$Out"
}
finally {
  # Thoát sạch, không để Word chạy ngầm giữ khóa file (lỗi đã gặp 14/11/2026)
  Tha $part; Tha $nm; Tha $x; Tha $dd; Tha $bd; Tha $p0
  if ($doc) { try { $doc.Close([ref]0) } catch { }; Tha $doc; $doc = $null }
  try { $nt = $wa.NormalTemplate; $nt.Saved = $true; Tha $nt } catch { }
  $wa.Quit([ref]0); Tha $wa; $wa = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
foreach ($id in $pidWord) {
  $pp = Get-Process -Id $id -ErrorAction SilentlyContinue
  if ($pp) { [void]$pp.WaitForExit(20000); if (-not $pp.HasExited) { "TIEN-TRINH-SOT=WINWORD $id (ghi vào KHOA-OFFICE.md mục Tiến trình sót, không tự tắt)" } }
}
