# Hậu xử lý .docx đã dựng bằng 09_CONG_CU\dung-docx-iso.ps1 (nhóm Nhân sự, HR-04, 15/11/2026; theo R4-22, R4-29).
# Việc làm: (1) ngắt trang trước mục "Phần làm việc nội bộ" (bản trình duyệt: phần nội bộ nằm trang riêng);
#           (2) không cho dòng bảng ngắt ngang qua hai trang; (3) giữ tiêu đề và đoạn dẫn cùng trang với bảng ngay sau nó.
#           -BoNoiBo: BẢN KÝ – cắt bỏ từ mục "Phần làm việc nội bộ" tới cuối và dòng "BẢN NHÁP TRÌNH DUYỆT – CHƯA KÝ" (chỉ dùng khi HR-00 ra lệnh dựng bản ký).
# Dùng: powershell -File hau-xu-ly-docx-hr04.ps1 -Docx <file.docx> [-BoNoiBo]   (ghi lại .docx và .pdf cùng tên)
# TRƯỚC KHI CHẠY: giữ khóa ở 00_DIEU_PHOI_CHUNG\KHOA-OFFICE.md (HT-017). Đóng Word sạch ở finally; nếu còn tiến trình sót thì in TIEN-TRINH-SOT, không tự tắt.
param([Parameter(Mandatory)][string]$Docx, [switch]$BoNoiBo)
$ErrorActionPreference = 'Stop'
function Tha($o) { if ($null -ne $o) { try { [void][Runtime.InteropServices.Marshal]::FinalReleaseComObject($o) } catch { } } }
$truoc = @(Get-Process WINWORD -ErrorAction SilentlyContinue | ForEach-Object { $_.Id })
$w = New-Object -ComObject Word.Application
$pidWord = @(Get-Process WINWORD -ErrorAction SilentlyContinue | Where-Object { $truoc -notcontains $_.Id } | ForEach-Object { $_.Id })
$w.Visible = $false; $w.DisplayAlerts = 0
$doc = $null
try {
  $docs = $w.Documents; $doc = $docs.Open($Docx, $false, $false); Tha $docs
  $pars = $doc.Paragraphs; $n = $pars.Count
  # 1. tìm mục nội bộ
  $idxNoiBo = 0
  for ($k = 1; $k -le $n; $k++) {
    $p = $pars.Item($k); $pr = $p.Range
    if ($pr.Text -like 'Phần làm việc nội bộ*') { $idxNoiBo = $k; Tha $pr; Tha $p; break }
    Tha $pr; Tha $p
  }
  if ($idxNoiBo -gt 0) {
    $p = $pars.Item($idxNoiBo)
    if ($BoNoiBo) {
      $c = $doc.Content; $r = $doc.Range($p.Range.Start, $c.End - 1); Tha $c
      [void]$r.Delete(); Tha $r
    } else {
      $pf = $p.Format; $pf.PageBreakBefore = -1; Tha $pf
    }
    Tha $p
  }
  if ($BoNoiBo) {
    $p1 = $doc.Paragraphs.Item(1); $r1 = $p1.Range
    if ($r1.Text -like 'BẢN NHÁP TRÌNH DUYỆT*') { [void]$r1.Delete() }
    Tha $r1; Tha $p1
  }
  Tha $pars
  # 2. bảng: không ngắt dòng qua trang; hàng đầu dính hàng sau
  $tbs = $doc.Tables
  for ($i = 1; $i -le $tbs.Count; $i++) {
    $t = $tbs.Item($i)
    $rs = $t.Rows; $rs.AllowBreakAcrossPages = 0
    $r1 = $rs.Item(1); $r1r = $r1.Range; $r1pf = $r1r.ParagraphFormat; $r1pf.KeepWithNext = -1
    Tha $r1pf; Tha $r1r; Tha $r1; Tha $rs
    # 3. đoạn đứng ngay trước bảng (tối đa 3 đoạn ngắn, ngoài bảng) dính với bảng
    $tr = $t.Range; $bd = $tr.Start; Tha $tr
    $pos = $bd - 1
    for ($m = 0; $m -lt 3 -and $pos -gt 0; $m++) {
      $rr = $doc.Range($pos, $pos); $pp = $rr.Paragraphs.Item(1); $ppr = $pp.Range
      if ($ppr.Information(12) -or $ppr.Text.Length -gt 320) { Tha $ppr; Tha $pp; Tha $rr; break }
      $ppf = $pp.Format; $ppf.KeepWithNext = -1; Tha $ppf
      $pos = $ppr.Start - 1
      Tha $ppr; Tha $pp; Tha $rr
    }
    Tha $t
  }
  Tha $tbs
  $fl = $doc.Fields; [void]$fl.Update(); Tha $fl
  $doc.Repaginate()
  $trang = $doc.ComputeStatistics(2)
  $doc.Save()
  $pdf = [IO.Path]::ChangeExtension($Docx, '.pdf')
  $doc.SaveAs2($pdf, 17)
  $doc.Close([ref]0); Tha $doc; $doc = $null
  "TRANG=$trang"; "DOCX=$Docx"; "PDF=$pdf"
}
finally {
  if ($doc) { try { $doc.Close([ref]0) } catch { }; Tha $doc; $doc = $null }
  try { $nt = $w.NormalTemplate; $nt.Saved = $true; Tha $nt } catch { }
  $w.Quit([ref]0); Tha $w; $w = $null
  [GC]::Collect(); [GC]::WaitForPendingFinalizers(); [GC]::Collect()
}
foreach ($id in $pidWord) {
  $pp = Get-Process -Id $id -ErrorAction SilentlyContinue
  if ($pp) { [void]$pp.WaitForExit(20000); if (-not $pp.HasExited) { "TIEN-TRINH-SOT=WINWORD $id (ghi vào KHOA-OFFICE.md mục Tiến trình sót, không tự tắt)" } }
}