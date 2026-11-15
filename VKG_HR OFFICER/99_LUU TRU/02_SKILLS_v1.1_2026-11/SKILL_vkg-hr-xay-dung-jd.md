---
name: vkg-hr-xay-dung-jd
description: Xây dựng mô tả công việc (JD) chuẩn VKG cho từng vị trí, có nhiệm vụ theo tỷ trọng, quyền hạn, tiêu chuẩn năng lực và KPI chính. Dùng khi tạo hoặc chuẩn hóa JD.
---

# Xây dựng mô tả công việc (JD) VKG

**Phiên bản: v1.1 – 2026-11-02** · Lịch sử thay đổi ở cuối file.

## Đầu vào
Tên vị trí, phòng ban, cấp bậc, báo cáo cho ai, quản lý ai; nhiệm vụ hiện tại (nếu có).

## Cấu trúc JD
1. Thông tin vị trí: mã JD, chức danh, bộ phận, cấp bậc, báo cáo trực tiếp, quản lý trực tiếp, nơi làm việc.
2. Mục đích công việc (1–2 câu).
3. Nhiệm vụ chính: 5–8 nhiệm vụ, mỗi nhiệm vụ có tỷ trọng %, tổng 100%.
4. Quyền hạn.
5. Mối quan hệ công việc (bên trong / bên ngoài).
6. Tiêu chuẩn: học vấn, kinh nghiệm, kiến thức, kỹ năng, phẩm chất (gắn với giá trị cốt lõi **Tâm · Tín · Trung thực**).
7. KPI: **5–7 KPI chính**, thêm **3–5 KPI phụ nếu cần**, lấy theo bộ KPI vị trí (skill `vkg-hr-xay-dung-kpi`). Nếu chưa có bộ KPI, ghi KPI dự kiến và đánh dấu [CẦN XÁC NHẬN].
8. Điều kiện làm việc.
9. Việc cần xác nhận.

## Quy tắc
- **Bộ phận** dùng thống nhất theo file `01_BOI_CANH_DU_AN.md`: Ban giám đốc · Quản lý cấp trung (đội trưởng tổ SX) · Kỹ thuật · Sản xuất · Kế toán.
- **Nơi làm việc** ghi theo mục 8 file `04_QUY_TAC_VAN_HANH.md`: CN1 (42A Thống Nhất, P. Đông Hòa, TP.HCM) và/hoặc CN2 (Phước Tân, Đồng Nai). Ghi rõ nếu có điều động giữa hai xưởng.
- **Điều kiện làm việc** của vị trí sản xuất, kỹ thuật tại xưởng phải nêu: yếu tố nguy hiểm, có hại (laser, chấn, hàn, mài, tiếng ồn, bụi, nhiệt…), trang bị bảo hộ, yêu cầu huấn luyện ATVSLĐ và khám sức khỏe. Nếu có khả năng thuộc danh mục công việc nặng nhọc, độc hại, nguy hiểm, ghi [CẦN XÁC NHẬN] và đối chiếu danh mục hiện hành.
- Nhiệm vụ bắt đầu bằng động từ, đo lường được.
- Không đưa nội dung phân biệt đối xử (giới tính, tuổi, vùng miền…) vào tiêu chuẩn tuyển dụng nếu không có lý do chính đáng theo luật.
- Tên file: `VKG_HR_JD-<Số>_<ViTri>_v0.1_<YYYY-MM>`.

## Kiểm tra trước khi giao
1. Chạy phiếu tự kiểm C1–C7 trong `03_TIEU_CHI_THUC_HIEN_NGHIEM_THU.md`.
2. Nhắc người dùng **rà soát độc lập (bắt buộc)** bằng skill `vkg-hr-ra-soat-chat-luong` trước khi trình duyệt. Nếu JD có nội dung ATVSLĐ hoặc công việc nặng nhọc, độc hại: thêm skill `vkg-hr-ra-soat-phap-ly`. Nên chạy rà soát trong một hội thoại riêng.
3. Khi JD được duyệt (v1.0), nhắc ghi **Nhật ký quyết định** (`00_TONG QUAN`).

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | KPI đổi từ 3–5 sang 5–7 KPI chính + 3–5 KPI phụ nếu cần (Giám đốc chốt); thống nhất bộ phận theo file 01; nơi làm việc theo CN1/CN2; điều kiện làm việc bổ sung ATVSLĐ; thêm phiếu tự kiểm, rà soát độc lập, ghi Nhật ký quyết định. Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
