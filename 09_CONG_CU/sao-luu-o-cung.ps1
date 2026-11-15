<#
  SAO LƯU Ổ CỨNG – gốc HTQT -> D:\VKG_BACKUP\HTQT\   (HT-023, 14/11/2026)

  Làm gì:
    - Chép toàn bộ "HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP" (thư mục cha của 09_CONG_CU) sang ổ D.
    - Dùng robocopy /E: chép file mới, file đã sửa. KHÔNG xoá gì ở nơi đích
      (file đã xoá ở nguồn vẫn còn trong bản sao lưu).
    - Loại trừ thư mục _KHONG-CHO-AI-DOC và THONG TIN NHAN SU BHXH (dữ liệu thật, không sao lưu ở đây).
    - Ghi log vào D:\VKG_BACKUP\HTQT_LOG\sao-luu-<ngày>-<giờ>.log

  Không dùng Claude. Không gửi dữ liệu ra ngoài. Chạy tay: chuột phải file > Run with PowerShell,
  hoặc đặt lịch trong Task Scheduler (xem HUONG-DAN-DAT-LICH-SAO-LUU.md cùng thư mục).
#>

$ErrorActionPreference = 'Stop'

# Gốc HTQT = thư mục cha của thư mục chứa script này (09_CONG_CU)
$Nguon  = Split-Path -Parent $PSScriptRoot
$Dich   = 'D:\VKG_BACKUP\HTQT'
$ThuMucLog = 'D:\VKG_BACKUP\HTQT_LOG'
$Loai   = @('_KHONG-CHO-AI-DOC', 'THONG TIN NHAN SU BHXH')

if (-not (Test-Path -LiteralPath 'D:\')) {
    Write-Host 'Không thấy ổ D. Dừng, chưa sao lưu.' -ForegroundColor Red
    exit 2
}
if (-not (Test-Path -LiteralPath $Nguon)) {
    Write-Host "Không thấy thư mục nguồn: $Nguon" -ForegroundColor Red
    exit 2
}

New-Item -ItemType Directory -Force -Path $Dich      | Out-Null
New-Item -ItemType Directory -Force -Path $ThuMucLog | Out-Null

$Log = Join-Path $ThuMucLog ('sao-luu-{0}.log' -f (Get-Date -Format 'yyyyMMdd-HHmm'))

# Giữ 60 log gần nhất
Get-ChildItem -LiteralPath $ThuMucLog -Filter 'sao-luu-*.log' |
    Sort-Object LastWriteTime -Descending | Select-Object -Skip 60 |
    Remove-Item -Force -ErrorAction SilentlyContinue

Write-Host "Nguồn : $Nguon"
Write-Host "Đích  : $Dich"
Write-Host "Log   : $Log"

# /E      chép cả thư mục con (kể cả rỗng), KHÔNG xoá ở đích (không dùng /MIR, /PURGE)
# /XD     loại trừ thư mục dữ liệu thật
# /XF     bỏ file tạm của Office
# /FFT    chịu sai lệch giờ giữa hệ thống file
# /R /W   thử lại 2 lần, chờ 5 giây (file đang mở)
# /NP     không in % từng file; /UNILOG ghi log Unicode
$robocopyArgs = @($Nguon, $Dich, '/E', '/XD') + $Loai +
    @('/XF', '~$*', '*.tmp', '/FFT', '/R:2', '/W:5', '/NP', "/UNILOG:$Log", '/TEE')

& robocopy @robocopyArgs
$ma = $LASTEXITCODE

# Mã robocopy: 0-7 là thành công (0 không đổi gì, 1 có chép file, 2 có file thừa ở đích, ...); từ 8 trở lên là có lỗi
if ($ma -ge 8) {
    Write-Host "Sao lưu CÓ LỖI (mã $ma). Mở log: $Log" -ForegroundColor Red
    exit $ma
}
Write-Host "Sao lưu xong (mã $ma, bình thường). Log: $Log" -ForegroundColor Green
exit 0
