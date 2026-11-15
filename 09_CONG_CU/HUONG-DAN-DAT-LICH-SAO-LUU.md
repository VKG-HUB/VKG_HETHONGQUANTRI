# Hướng dẫn đặt lịch sao lưu ổ cứng (Giám đốc tự làm)

Script: `sao-luu-o-cung.ps1` cùng thư mục này. Chép gốc HTQT sang `D:\VKG_BACKUP\HTQT\`, không xoá gì ở đích, bỏ qua thư mục `_KHONG-CHO-AI-DOC` và `THONG TIN NHAN SU BHXH`. Log ở `D:\VKG_BACKUP\HTQT_LOG\`. Claude không tự tạo lịch Windows (HT-023).

## Thử chạy tay một lần trước

1. Mở thư mục `09_CONG_CU`.
2. Chuột phải `sao-luu-o-cung.ps1` → **Run with PowerShell**.
3. Thấy dòng xanh "Sao lưu xong" là được. Lần đầu có thể mất vài phút (OneDrive tải file về nếu đang để chế độ chỉ trên mạng).

Nếu Windows báo chặn script: mở PowerShell, gõ một lần `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`, rồi chạy lại.

## Đặt lịch trong Task Scheduler (đề xuất: mỗi ngày 22:00)

1. Bấm Start, gõ **Task Scheduler**, mở.
2. Cột phải chọn **Create Basic Task...**
3. Name: `VKG sao luu HTQT`. Next.
4. Trigger: **Daily**, Start 22:00, Recur every 1 days. Next.
5. Action: **Start a program**. Next.
6. Program/script: `powershell.exe`
7. Add arguments (dán nguyên dòng, đổi đường dẫn nếu OneDrive của máy khác):

```
-NoProfile -ExecutionPolicy Bypass -File "C:\Users\VINH\OneDrive\VKG\HỆ THỐNG QUẢN TRỊ DOANH NGHIỆP\09_CONG_CU\sao-luu-o-cung.ps1"
```

8. Next → tích **Open the Properties dialog...** → Finish.
9. Trong Properties, tab **General**: tích **Run whether user is logged on or not** nếu muốn chạy cả khi khóa máy; tab **Settings**: tích **Run task as soon as possible after a scheduled start is missed** (máy tắt lúc 22:00 thì bật lên sẽ chạy bù).
10. OK, nhập mật khẩu Windows nếu được hỏi.

## Kiểm tra

- Chuột phải tác vụ trong Task Scheduler → **Run** → xem có file log mới trong `D:\VKG_BACKUP\HTQT_LOG\`.
- Cuối log có dòng "Copied / Skipped / FAILED": số FAILED phải là 0.

## Lưu ý

- Sao lưu này chỉ là bản chép sang ổ D cùng máy. Máy hỏng hoặc mất thì mất cả hai. Nên có thêm bản thứ hai ở ổ rời hoặc GitHub riêng tư (xem kế hoạch HT-023).
- Dữ liệu thật (`_KHONG-CHO-AI-DOC`, BHXH) không nằm trong bản sao lưu này; Giám đốc tự sao riêng.
- Bản sao ở ổ D chứa mọi file đã từng có kể cả file đã xoá. Muốn dọn thì tự xoá tay thư mục con trong `D:\VKG_BACKUP\HTQT\`.
