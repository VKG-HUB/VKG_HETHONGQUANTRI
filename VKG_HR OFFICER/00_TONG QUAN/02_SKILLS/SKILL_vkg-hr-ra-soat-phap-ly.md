---
name: vkg-hr-ra-soat-phap-ly
description: Rà soát văn bản, quy trình, hợp đồng nhân sự VKG theo pháp luật lao động Việt Nam hiện hành; chỉ ra rủi ro, căn cứ và đề xuất sửa. Dùng trước khi trình duyệt văn bản HR.
---

# Rà soát pháp lý nhân sự

**Phiên bản: v1.4 – 2026-11-14** · Lịch sử thay đổi ở cuối file.

> **Phạm vi:** Dùng trong Project VKG_HR OFFICER. Nếu không đọc được file 01–04 và Hồ sơ chung doanh nghiệp, báo người dùng và ghi [CẦN XÁC NHẬN], không tự điền.

Skill này thay cho agent `hr-phap-ly` trong file 03 mục 3.

## Khi nào dùng
Bắt buộc trước khi trình duyệt tài liệu có nội dung: nội quy, hợp đồng lao động, quy chế lương thưởng, **BHXH**, quy trình kỷ luật / chấm dứt HĐLĐ, **ATVSLĐ** (huấn luyện, bảo hộ, khám sức khỏe, công việc nặng nhọc độc hại), chính sách dữ liệu nhân sự.

## Bối cảnh pháp lý VKG (theo file 01)
- 15 lao động (Giám đốc xác nhận 14/11), từ 10 người trở lên: nội quy phải bằng văn bản và đăng ký (Điều 118, 119 BLLĐ 2019).
- Khoảng 60% là lao động sản xuất (laser, chấn, hàn, mài): áp dụng chặt Luật ATVSLĐ 2015.
- Chưa có HĐLĐ đầy đủ, huấn luyện ATVSLĐ, khám sức khỏe định kỳ: rủi ro pháp lý lớn nhất. **BHXH đã đóng cho cả 15 người** (14/11); việc cần kiểm là mức lương đóng BHXH khớp lương ghi trong HĐLĐ.
- Hai xưởng cùng vùng I lương tối thiểu. Theo giấy tờ (HT-020): CN1 Đông Hòa là **Chi nhánh mã số 0311563372-002** (TP.HCM; địa chỉ đăng ký 144/46 Thống Nhất, giao dịch thực tế 42A); CN2 Phước Tân là **Địa điểm kinh doanh 001, mã 00001** (Đồng Nai), trực thuộc công ty – lao động ký HĐLĐ, đóng BHXH theo công ty. Nội quy, PCCC xét theo từng nơi (đăng ký nội quy với chi nhánh khác tỉnh/địa điểm kinh doanh: tra lại).
- Mức phạt trong NĐ 283/2026 là mức với cá nhân; tổ chức gấp đôi (Đ.7 k.1) – theo rà soát G1, G2 ngày 14/11.
- Không có tư vấn pháp lý thường xuyên; thuê luật sư theo vụ việc.

## Cách làm
1. Xác định các quy định áp dụng: BLLĐ 2019 và nghị định hướng dẫn, **Luật ATVSLĐ 2015** và văn bản hướng dẫn, Luật BHXH, Luật Việc làm, Luật Thuế TNCN, quy định bảo vệ dữ liệu cá nhân, lương tối thiểu vùng.
2. **Tra cứu bản hiện hành** của mọi con số và mức có thể thay đổi từ nguồn chính thống; ghi văn bản, điều khoản, ngày hiệu lực, đường dẫn, ngày tra cứu.
3. Đối chiếu từng điều khoản của văn bản cần rà soát. Phân biệt: quy định bắt buộc / khuyến nghị / thông lệ doanh nghiệp.
4. Với tình trạng chưa hợp thức hóa (chưa HĐLĐ đầy đủ, chưa huấn luyện ATVSLĐ, chưa khám sức khỏe; BHXH đã đóng nhưng cần kiểm mức đóng): nêu rủi ro, khoản có thể phải truy đóng phần chênh, lộ trình khắc phục đề xuất; không kết luận thay cơ quan nhà nước.

## Đầu ra
| STT | Điều khoản trong văn bản | Vấn đề | Căn cứ pháp lý | Mức rủi ro (Cao / TB / Thấp) | Đề xuất sửa |

- Danh sách nguồn đã tra cứu và ngày tra cứu.
- Kết luận: Đạt / Đạt có điều kiện / Không đạt.

## Giới hạn
- Đây là rà soát hỗ trợ, không thay ý kiến luật sư. Với rủi ro Cao, tranh chấp hoặc truy đóng BHXH, khuyến nghị thuê luật sư theo vụ việc, kèm phạm vi công việc cần thuê.
- Nếu không tra được văn bản mới nhất, nói rõ và không khẳng định.
- Không ghi, không yêu cầu dữ liệu cá nhân thật.
- Không sửa trực tiếp tài liệu; chỉ báo cáo.

## Đồng bộ thông tin
Thông tin doanh nghiệp trong skill này chép từ Hồ sơ chung và file 01 tại ngày 2026-11-14. Nếu khác với Hồ sơ chung hiện hành, **theo Hồ sơ chung** và báo người dùng cập nhật skill.

## Lịch sử phiên bản
| Phiên bản | Ngày | Nội dung thay đổi | Người duyệt |
|---|---|---|---|
| v1.0 | 2026-11 | Ban hành lần đầu | Giám đốc Đỗ Việt Khoa |
| v1.1 | 2026-11-02 | Bổ sung BHXH, ATVSLĐ vào phạm vi; thêm Luật ATVSLĐ 2015; thêm bối cảnh pháp lý VKG và nguyên tắc từ agent `hr-phap-ly` (nguồn tra cứu, phân loại quy định, xử lý tình trạng chưa hợp thức hóa); ghi rõ skill thay agent `hr-phap-ly`. Bản v1.0 lưu tại `99_LUU TRU/02_SKILLS_v1.0_2026-11` | Giám đốc Đỗ Việt Khoa |
| v1.2 | 2026-11-02 | Thêm câu phạm vi: chỉ dùng trong Project VKG_HR OFFICER; không đọc được file căn cứ thì báo người dùng và ghi [CẦN XÁC NHẬN] (Giám đốc chọn đề xuất A). Skill có chép thông tin doanh nghiệp: khi Hồ sơ chung thay đổi phải rà lại skill này (file 04 mục 8). Bản v1.1 lưu tại `99_LUU TRU/02_SKILLS_v1.1_2026-11` | Giám đốc Đỗ Việt Khoa |
| v1.3 | 2026-11-14 | Đồng bộ bối cảnh pháp lý theo Hồ sơ chung mới (file 04 mục 8): 15 người; BHXH đã đóng cho cả 15 người (kiểm mức đóng thay vì truy đóng toàn bộ); Chi nhánh Đông Hòa -001, Chi nhánh Phước Tân -002 (HT-018, HT-019); thêm ghi chú mức phạt NĐ 283/2026 cá nhân / tổ chức gấp đôi. Câu phạm vi chưa đổi (chờ câu Q3). Bản v1.2 lưu tại `99_LUU TRU/02_SKILLS_v1.2_2026-11`. **Cần Giám đốc lưu lại skill vào tài khoản Claude** | Theo quyết định Giám đốc (HT-018, HT-019); HR-00 sửa |
| v1.4 | 2026-11-14 | Đơn vị phụ thuộc theo giấy tờ (HT-020, thay HT-019): CN1 Chi nhánh 0311563372-002, CN2 Địa điểm kinh doanh 001 mã 00001 trực thuộc công ty; bỏ mã -001. Bản v1.3 lưu `99_LUU TRU/02_SKILLS_v1.3_2026-11`. **Cần Giám đốc lưu lại skill vào tài khoản Claude** | Theo giấy tờ Giám đốc gửi (HT-020); HR-00 sửa |
