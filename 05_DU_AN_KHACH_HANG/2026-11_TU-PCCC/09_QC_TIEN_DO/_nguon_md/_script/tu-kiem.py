# Tự kiểm bộ hồ sơ tủ PCCC. Chạy: python -I tu-kiem.py <thư mục dự án>
# 1) Mỗi mã yêu cầu trong BANG-YEU-CAU-KHACH có mục ITP và biểu mẫu; mục ITP đó có thật trong PCCC-02; biểu đó có file.
# 2) Mỗi mã yêu cầu (trừ nhóm F, và mã ghi "—") xuất hiện trong PCCC-02.
# 3) Mỗi .docx: có file .pdf đi kèm, chữ trong .docx khớp chữ nguồn .md (so chuỗi chữ đã bỏ khoảng trắng), không có ký tự lỗi phông, khổ A4.
# 4) Mọi Q-nn dùng trong bộ hồ sơ đều có trong PCCC-00.
import sys, os, re, io, zipfile, glob
import xml.etree.ElementTree as ET
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')
G = sys.argv[1]
QC = os.path.join(G, '09_QC_TIEN_DO'); SRC = os.path.join(QC, '_nguon_md')
W = '{http://schemas.openxmlformats.org/wordprocessingml/2006/main}'
rd = lambda p: io.open(p, encoding='utf-8').read()
loi = []

req = rd(sorted(glob.glob(os.path.join(G, '02_PHAN_TICH_KY_THUAT', 'XAC_MINH', 'BANG-YEU-CAU-KHACH_v*.md')))[-1])
itp = rd(sorted(glob.glob(os.path.join(SRC, 'PCCC-02_ITP_v*.md')))[-1])
itp_items = set(re.findall(r'^\| (\d\.\d+) \|', itp, re.M))
files = [os.path.basename(f) for f in glob.glob(os.path.join(QC, '*.docx'))]
codes = {}
for line in req.splitlines():
    m = re.match(r'^\| ([A-E]-\d+[ab]?) \|', line)
    if not m: continue
    cells = [c.strip() for c in line.strip('|').split('|')]
    codes[m.group(1)] = (cells[-2], cells[-1])
print('Số yêu cầu A–E:', len(codes), '· số mục ITP:', len(itp_items))

def expand(s):
    out = []
    for part in re.split(r',\s*', s):
        m = re.match(r'(\d)\.(\d+)[–-](\d)\.(\d+)$', part)
        if m: out += ['%s.%d' % (m.group(1), i) for i in range(int(m.group(2)), int(m.group(4)) + 1)]
        elif re.match(r'\d\.\d+$', part): out.append(part)
    return out

def in_itp(code):
    if code in itp: return True
    # dải "B-01 đến B-05", "E-24 đến E-26"
    L, n = code.split('-'); n = int(re.sub(r'\D', '', n))
    for a, b in re.findall(L + r'-(\d+) đến ' + L + r'-(\d+)', itp):
        if int(a) <= n <= int(b): return True
    return False

khong_itp = []
for c, (i, b) in sorted(codes.items()):
    if i in ('—', ''):
        khong_itp.append(c)
    else:
        for it in expand(i):
            if it not in itp_items: loi.append('%s: mục ITP %s không có trong PCCC-02' % (c, it))
        if not expand(i): loi.append('%s: cột ITP không đọc được: %s' % (c, i))
        if not in_itp(c.rstrip('ab')) and not in_itp(c): loi.append('%s: không thấy mã này trong PCCC-02' % c)
    if b not in ('—', ''):
        for f in re.findall(r'PCCC-(?:F?\d+)|\bF\d\d\b', b):
            key = f if f.startswith('PCCC') else 'PCCC-' + f
            if not any(x.startswith(key + '_') for x in files): loi.append('%s: không có file cho %s' % (c, key))
    elif i not in ('—', ''):
        loi.append('%s: có mục ITP nhưng không có biểu mẫu' % c)
print('Yêu cầu không đưa vào ITP (ghi "—" có lý do trong bảng):', ', '.join(khong_itp))

q00 = set(re.findall(r'Q-\d\d', rd(sorted(glob.glob(os.path.join(SRC, 'PCCC-00_*.md')))[-1])))
allq = set()
for f in glob.glob(os.path.join(SRC, '*.md')) + [os.path.join(G, '02_PHAN_TICH_KY_THUAT', 'XAC_MINH', x) for x in ('BANG-YEU-CAU-KHACH_v0.2.md', 'KIEM-CHEO-TIEU-CHUAN_v0.1.md')] + glob.glob(os.path.join(G, '00_QUAN_LY_DU_AN', '*.md')):
    for q in set(re.findall(r'Q-\d\d', rd(f))):
        allq.add(q)
        if q not in q00: loi.append('%s dùng %s nhưng PCCC-00 không có' % (os.path.basename(f), q))
print('Câu hỏi trong PCCC-00:', len(q00), '· câu được dẫn ở tài liệu khác:', len(allq & q00), '· chưa được dẫn:', ', '.join(sorted(q00 - allq)) or 'không')

norm = lambda s: re.sub(r'[\s •`*|#>\-_]+', '', s)
print('\nFile | trang A4 | chữ khớp nguồn | ký tự lỗi | pdf')
for f in sorted(files):
    p = os.path.join(QC, f)
    z = zipfile.ZipFile(p)
    root = ET.fromstring(z.read('word/document.xml'))
    txt = ''.join((t.text or '') for t in root.iter(W + 't'))
    sz = root.find('.//' + W + 'pgSz')
    w, h = int(sz.get(W + 'w')), int(sz.get(W + 'h'))
    a4 = abs(w - 11906) < 20 and abs(h - 16838) < 20
    md = rd(os.path.join(SRC, f[:-5] + '.md'))
    # bỏ dòng phân cách bảng và dấu ``` của md trước khi so
    mdl = [l for l in md.splitlines() if not re.match(r'^\|[\s\-:|]+\|$', l) and not l.startswith('```')]
    a, b = norm(txt), norm('\n'.join(mdl))
    # chữ nguồn phải nằm đủ trong docx: so theo từng ô, từng dòng
    thieu = 0
    for l in mdl:
        for cell in (l.strip('|').split('|') if l.startswith('|') else [l]):
            c = norm(re.sub(r'^-\s+', '', cell.strip()))
            if len(c) > 3 and c not in a: thieu += 1
    bad = len(re.findall(r'[�□]|\?{3,}', txt))
    pdf = os.path.exists(p[:-5] + '.pdf') and os.path.getsize(p[:-5] + '.pdf') > 20000
    print('%s | %s | thiếu %d đoạn | %d | %s' % (f, 'A4 dọc' if a4 else '%dx%d' % (w, h), thieu, bad, 'có' if pdf else 'KHÔNG'))
    if not a4: loi.append(f + ': không phải A4 dọc')
    if thieu: loi.append('%s: %d đoạn nguồn không thấy trong docx' % (f, thieu))
    if bad: loi.append('%s: %d ký tự lỗi phông' % (f, bad))
    if not pdf: loi.append(f + ': thiếu pdf')
print('\nSố file docx:', len(files))
print('LỖI:' if loi else 'KHÔNG CÓ LỖI')
for l in loi: print(' -', l)
