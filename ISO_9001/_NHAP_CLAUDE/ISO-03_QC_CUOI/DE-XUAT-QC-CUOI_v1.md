# Đề xuất: QC cuối khi không có nhân sự văn phòng làm QC

Phiên bản v1 · 12/11/2026 · Trạng thái: **đã viết, chưa kiểm, chưa duyệt** · Nhánh ISO-03 · Người duyệt: Giám đốc
Điều ISO liên quan: 8.5.1, 8.6 (thông qua sản phẩm), 8.7 (sản phẩm không phù hợp), 7.1.5 (dụng cụ đo), 10.2.

> **ĐÍCH CUỐI:** Chứng nhận ISO 9001:2026 trước 30/11/2027. Mục tiêu của nhánh này: **100% đơn hàng có bằng chứng QC trước khi rời xưởng** từ 04/2027.

---

## 1. Vấn đề

- Đa số đơn giao đi không có bước kiểm tra cuối, vì không có người văn phòng làm QC.
- ISO 9001 điều 8.6 **không bắt phải có phòng QC**. Nó chỉ bắt: (1) đã định trước kiểm gì; (2) có bằng chứng hàng đạt; (3) biết ai cho phép xuất hàng. Vậy giải pháp không phải là tuyển thêm, mà là **đưa việc kiểm vào xưởng và dùng điện thoại làm hồ sơ**.

## 2. Nguyên tắc

1. **Người làm tự kiểm, công đoạn sau kiểm công đoạn trước.** Chấn nhận tấm cắt thì kiểm tấm cắt; hàn nhận chi tiết chấn thì kiểm chi tiết chấn. Phát hiện sớm rẻ hơn phát hiện ở cuối.
2. **QC cuối do thợ giỏi kiêm nhiệm, không do người làm ra sản phẩm đó.** Mỗi xưởng cử 1–2 người được Giám đốc giao quyền ký "ĐẠT".
3. **Không có tem ĐẠT thì không xuất xưởng.** Người giao hàng / tài xế là chốt chặn cuối: thấy thiếu tem thì không chở.
4. **Hồ sơ = ảnh chụp.** Không bắt ai nhập liệu vào máy tính.
5. **Kiểm nhiều hay ít tuỳ rủi ro của đơn**, không kiểm đều mọi đơn như nhau.

## 3. Phân loại đơn theo mức kiểm

| Mức | Loại đơn | Kiểm gì | Ai ký xuất |
|---|---|---|---|
| **A** | Thiết bị, máy, dự án; khách mới; đơn lớn (ngưỡng giá trị **[CẦN XÁC NHẬN]**); hàng đi xa / lắp đặt | Đủ checklist + đo kích thước quan trọng + chạy thử (nếu có điện, cơ cấu) + ảnh tổng thể | QC kiêm nhiệm + Trưởng kỹ thuật |
| **B** | Gia công lô theo bản vẽ (cắt, chấn, đột, hàn lô) | Kiểm **chi tiết đầu – giữa – cuối lô** + đếm số lượng + ảnh | QC kiêm nhiệm |
| **C** | Cắt, chấn đơn giản, khách lẻ, lấy ngay | Người làm tự kiểm theo thẻ 5 điểm + 1 ảnh | Người làm (tự ký) |

Phân loại ghi ngay trên lệnh sản xuất khi nhận đơn (A/B/C), người nhận đơn ghi.

## 4. Công cụ đề xuất

| Công cụ | Mô tả | Chi phí |
|---|---|---|
| **Thẻ checklist A5 ép plastic** | Mỗi loại sản phẩm một thẻ: cắt laser, chấn, hàn, thiết bị inox, kết cấu. Tối đa 8 dòng tick. Treo tại máy | In ấn |
| **Dưỡng kiểm cắt bằng laser** | Tự cắt dưỡng góc chấn (90°, 135°…), dưỡng lỗ, dưỡng kiểm vị trí lỗ cho hàng lặp lại. Tận dụng chính máy laser của xưởng | Phôi thừa |
| **Đánh dấu kích thước quan trọng trên bản vẽ** | Kỹ thuật đánh ký hiệu ◆ vào 3–5 kích thước bắt buộc đo. Kích thước khác kiểm bằng mắt / dưỡng | Không |
| **Tem ĐẠT / tem đỏ KHÔNG ĐẠT** | Tem dán có ô: mã đơn, ngày, người ký. Tem đỏ "HÀNG LỖI – KHÔNG DÙNG" cho hàng lỗi | In ấn |
| **Nhóm Zalo "QC-CN1", "QC-CN2"** | Mỗi đơn gửi ảnh: hàng + thước đo + tem + thẻ checklist đã tick, ghi mã đơn. Đây là hồ sơ QC | Không |
| **Nhóm Zalo "HÀNG LỖI"** | Ảnh hàng lỗi + mã đơn + lỗi gì + ai phát hiện | Không |
| **Sổ dụng cụ đo** | Danh sách thước kẹp, thước cuộn, thước góc; mỗi tháng đối chiếu với 1 thước chuẩn có giấy kiểm định; dán nhãn ngày kiểm | 1 bộ chuẩn **[CẦN XÁC NHẬN]** chi phí |

**Lưu ý hồ sơ Zalo:** để ISO chấp nhận, cuối tháng Đại diện ISO tải ảnh về `ISO_9001\05_HO_SO_VAN_HANH\QC_KIEM_TRA\<yyyy-mm>`. Giai đoạn sau có thể thay bằng biểu mẫu điện thoại (Google Form / app) – **ngoài phạm vi đề xuất này**, mở nhánh riêng nếu cần.

## 5. Luồng QC cuối

```
Nhận đơn → ghi mức A/B/C trên lệnh SX
   ↓
Sản xuất: mỗi công đoạn tự kiểm + kiểm công đoạn trước
   ↓
QC cuối (theo mức) → tick thẻ → chụp ảnh gửi nhóm QC
   ├─ ĐẠT  → dán tem ĐẠT → đóng gói → giao hàng (tài xế kiểm có tem)
   └─ LỖI  → tem đỏ, để khu riêng → ảnh vào nhóm HÀNG LỖI
              → quyết định: sửa / làm lại / hỏi khách chấp nhận / huỷ
              → nếu lỗi lặp lại: tìm nguyên nhân, sửa gốc (phiếu NCR)
```

Họp 15 phút mỗi thứ Hai: Giám đốc + 2 tổ trưởng xem nhóm HÀNG LỖI tuần trước, chọn 1 lỗi lặp lại để sửa gốc.

## 6. Chỉ số

| Chỉ số | Cách đo | Mục tiêu |
|---|---|---|
| Tỷ lệ đơn có ảnh QC cuối | Số đơn có ảnh / số đơn giao (đếm từ phiếu giao hàng) | CN1: 80% sau 1 tháng thí điểm · cả 2 xưởng: 100% từ 04/2027 |
| Số lần khách phản ánh lỗi | Đếm theo tháng | Giảm dần, mốc ban đầu đo trong tháng thí điểm |
| Tỷ lệ làm lại | Số đơn phải làm lại / số đơn | Đo mốc trước, đặt mục tiêu sau |

## 7. Nhân sự

- Cử QC kiêm nhiệm: CN1 **[CẦN XÁC NHẬN]**, CN2 **[CẦN XÁC NHẬN]**. Bổ sung nhiệm vụ vào mô tả công việc (dùng skill `vkg-hr-xay-dung-jd`) và phụ cấp kiêm nhiệm **[CẦN XÁC NHẬN]** mức.
- Khi đủ 26 người theo kế hoạch: cân nhắc 1 người kiêm QC + Đại diện ISO.

## 8. Thí điểm

| Tuần | Việc |
|---|---|
| 1 (từ khi duyệt) | Cử QC kiêm nhiệm CN1; in thẻ checklist cắt laser + chấn; lập nhóm Zalo; in tem |
| 2 | Chạy mức B, C tại CN1; đo mốc tỷ lệ |
| 3 | Thêm mức A (thiết bị inox); cắt dưỡng kiểm cho 2–3 mã hàng lặp lại |
| 4 | Họp rút kinh nghiệm, sửa thẻ → quyết định mở rộng sang CN2 |

## 9. Câu hỏi chờ Giám đốc (để nhánh ISO-03 làm tiếp)

1. Ai đang đo kích thước trước khi giao hàng hiện nay (nếu có), ở mỗi xưởng?
2. Ngưỡng giá trị đơn nào thì coi là mức A?
3. Ai được cử QC kiêm nhiệm ở CN1, CN2? Có phụ cấp không?
4. Đồng ý dùng nhóm Zalo làm hồ sơ QC giai đoạn đầu không?
5. Ba loại sản phẩm làm nhiều nhất để làm thẻ checklist trước?
